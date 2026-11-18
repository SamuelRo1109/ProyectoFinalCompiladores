# SESIÓN 2 — Razonador + Generador + Pruebas automatizadas

> **Responsable:** Luis · **Rama:** `feature/s2-razonador-generador` · **Revisora del PR:** Gaby
> **Entrada:** PR de la Sesión 1 + `docs/sesiones/HANDOFF_S1.md` (léelo primero; manda sobre este archivo si hay diferencias).
> **Objetivo:** núcleo del **Hito 3**: razonador (consistencia + Kleene + políticas + simulador), generador y pruebas `jetbrains.mps.lang.test`.
> **Teoría que defiendes en el video:** Teorema de Kleene (partes 1 y 2), decidibilidad de la inclusión de lenguajes regulares, algoritmos sobre grafos, semántica operacional y denotacional, complejidad.

## Prioridades

| Prioridad | Fases |
|---|---|
| **P0** | 0 Preparación y revisión del PR S1 · 1 Pendientes de S1 · 2 Prototipo Java · 3 Solution `domus.reasoner` · 4 Puente AST → autómata · 5 Razonador en vivo · 7 Pruebas |
| **P1** | 6 Generador (Java ejecutable + reporte) |
| Cierre | 8 Bitácora + handoff + PR (**obligatorio**) |

> Si el Hito 2 vence antes de que Gaby trabaje, haz también la **Fase 1 de `SESION_3_MAESTRO.md`** (tabla δ) y abre `release/hito-2`.

---

## FASE 0 — Preparación y revisión (manual)

1. Instala **la misma build de MPS** que figura en `README.md`, Claude Code, Git y `gh` (`gh auth login`). Acepta la invitación al repo.
2. `git clone <repo> && cd domus-dsl-mps && git checkout develop`
3. Trae la rama de S1: `gh pr checkout <número-del-PR-S1>`
4. Abre en MPS la carpeta `domus/`. `Ctrl+Shift+A` → **Install MPS VCS Add-ons**.
5. `Settings → Tools → MCP Server`: anota el puerto; en **Exposed Tools** deja solo las `mps_mcp_*`. Si el puerto no es `64342`, cámbialo en `.mcp.json` **sin commitearlo** (o usa `claude mcp add --transport http mps http://localhost:<puerto>/stream --scope local`).
6. `claude` en la raíz → `/mcp` → `mps` conectado. Las skills `mps-*` ya vienen en `.claude/skills/`: **no** ejecutes la inicialización salvo que tu build de MPS sea distinta (en ese caso, pide refrescarlas).
7. **Revisa el PR de S1** con esta lista y apruébalo en GitHub (`gh pr review --approve`) o pide cambios:
   - [ ] `Build → Rebuild Project` sin errores (salvo los modelos `invalidos.*`, que tienen errores a propósito).
   - [ ] `validos.v1..v3` sin errores; `invalidos.*` muestran su error.
   - [ ] La estructura coincide con `02_ESPECIFICACION_FORMAL.md`.
   - **Prompt útil:** *"Revisa el estado del proyecto MPS: valida todos los modelos de domus.lang.sandbox y del lenguaje domus.lang y dame un resumen de problemas por modelo."*
8. Haz merge del PR en GitHub. Luego:
```bash
git checkout develop && git pull
git checkout -b feature/s2-razonador-generador
```

## FASE 1 — Pendientes de S1 (si los hay)
Haz primero lo que `HANDOFF_S1.md` deja en P1 (normalmente typesystem o modelos inválidos), usando los prompts de las fases 5 y 6 de `SESION_1_MAESTRO.md`.

---

## FASE 2 — Prototipo del razonador en Java plano (barato y rápido)

¿Por qué? Escribir y probar algoritmos como texto es lo que Claude Code hace mejor y gasta menos límite. Luego se importan a MPS como nodos (Fase 3) con el parser oficial de Java de MPS. **La versión que cuenta es la de MPS**; el prototipo queda en el repo como evidencia del proceso.

**Prompt:**
```
Lee CLAUDE.md y docs/02_ESPECIFICACION_FORMAL.md §4 completo.
En la carpeta prototipo-razonador/ (Java plano, SIN Maven/Gradle, SIN dependencias) implementa el paquete
domus.reasoner con estas clases, en estilo compatible con BaseLanguage de MPS:
SIN lambdas, SIN streams, SIN var, SIN records, SIN switch-expressions, SIN text blocks;
solo java.util y genéricos clásicos; una clase pública por archivo.

- Alphabet (nombres de símbolos ↔ índices int)
- Nfa (estados int, transiciones con ε, inicial, aceptación) y Dfa (completa, con estado sumidero)
- Thompson: symbol(a), any(Σ), epsilon(), union, concat, star, plus, optional
- SubsetConstruction (con ε-clausura) → Dfa
- MooreMinimizer → Dfa mínimo
- GraphAnalysis: reachable, coReachable, deadlocks, traps, nondeterminism,
  shortestTraceTo(conjunto de estados) con BFS y padres
- PolicyChecker: checkRequired (L(A) ⊆ L(R)) y checkForbidden (Tr(A) ∩ L(Σ*RΣ*) = ∅)
  mediante autómata producto; devuelven Verdict { boolean ok; List<String> counterexample }
- StateEliminator: Nfa → String de expresión regular (Kleene parte 2)
- Simulator: run(Nfa, List<Integer> palabra) → lista de pasos (conjunto de estados activos) y veredicto
- Equivalence: equivalentes(Dfa, Dfa) por minimización + isomorfismo o por producto

Agrega prototipo-razonador/TestMain.java con aserciones propias (sin JUnit) que cubran:
el ejemplo Cerradura de §2, Thompson+subconjuntos aceptan/rechazan palabras conocidas,
la minimización da el número esperado de estados, una política REQUIRED violada devuelve
el contraejemplo más corto, una FORBIDDEN, el simulador, y la ida y vuelta de Kleene:
equivalentes(min(det(Thompson(StateElim(A)))), min(det(A))) == true.
Compila y ejecuta con javac/java y corrige hasta que todo pase. Explícame la complejidad de cada clase.
```
**Commit:** `feat(reasoner): prototipo Java del razonador con pruebas`

---

## FASE 3 — Solution `domus.reasoner` en MPS

**Prompt:**
```
Carga las skills mps-mcp-workflow y mps-baselanguage.
1) Crea una solution domus.reasoner con un modelo domus.reasoner.automata
   (usa mps_mcp_create_module / mps_mcp_create_model).
2) Inserta cada clase de prototipo-razonador/domus/reasoner/*.java en ese modelo usando
   mps_mcp_parse_java_and_insert (una clase por llamada, en orden de dependencias).
3) Valida cada root con mps_mcp_check_root_node_problems y reconstruye la solution.
4) Si una construcción no se importa bien, reescríbela en Java más simple en el prototipo,
   vuelve a correr TestMain y reintenta.
```
**Plan B manual** (si el parser por MCP falla): crea la clase vacía en MPS, ponte dentro y usa clic derecho → **Paste as Java Class Content** con el código copiado del prototipo.

**Commit:** `feat(reasoner): solution domus.reasoner en BaseLanguage`

---

## FASE 4 — Puente AST → autómata (semántica denotacional)

**Prompt:**
```
Carga la skill mps-aspect-behavior.
1) Agrega a domus.lang una dependencia hacia la solution domus.reasoner (y la importación del
   modelo en los aspectos behavior y typesystem).
2) En RegexExpr declara el método virtual abstracto toNfa(Thompson b, Alphabet sigma): Nfa
   e impleméntalo en CADA concepto concreto (SymbolExpr, EpsilonExpr, AnySymbolExpr, UnionExpr,
   ConcatExpr, StarExpr, PlusExpr, OptionalExpr, ParenExpr): esto es la semántica denotacional
   composicional de §4.3.
3) Device.alphabet(): Alphabet y Device.toNfa(): Nfa (estados, δ, q0, F) según §4.1.
4) Scenario.toWord(): List<Integer>.
Reconstruye y valida.
```
**Commit:** `feat(behavior): traducción del AST a autómatas`

---

## FASE 5 — Razonador en vivo (errores y deducciones en el editor)

**Prompt:**
```
Carga la skill mps-aspect-typesystem. Crea checking rules (non-typesystem rules) en domus.lang
que invoquen domus.reasoner y reporten sobre el nodo correcto, con mensajes en español:
- Device: estados inalcanzables (warning en el State), trampas (warning), deadlocks (error),
  no determinismo (warning en la Transition), alarma alcanzable (info con la traza mínima
  "forzar → Intrusion"), alarma sin recuperación (error).
- Policy: si se viola, error en la Policy con el contraejemplo más corto ("desbloquear · abrir · bloquear").
  Si se cumple, info "Política verificada: AFD mínimo de N estados".
- Scenario: info con la traza de simulación; warning si se rechaza en el paso k (marca ese ScenarioStep).
Reconstruye y comprueba sobre validos.v1_cerradura y sobre un borrador con violaciones.
```
**Opcional (recomendado para la demo):** una *intention* en `Device` "Mostrar ER equivalente (Kleene 2)" y otra en `Policy` "Mostrar AFD mínimo".

**Verificación humana:** en `v1`, rompe el modelo (borra la transición `Intrusion → Bloqueada`): debe aparecer "alarma sin recuperación". Deshaz.

**Commit:** `feat(reasoner): verificación en vivo de consistencia, políticas y escenarios`

---

## FASE 6 — Generador (P1)

**Prompt:**
```
Carga la skill del aspecto generator. En domus.lang crea un generador que, para cada HomeSystem,
produzca una clase Java ejecutable GeneratedHomeSystem_<Nombre> autocontenida (sin depender de
domus.reasoner en tiempo de ejecución) con: un enum de estados y uno de eventos por dispositivo,
un método step(estado, evento), y un main que ejecute cada Scenario e imprima la traza de estados
y si se acepta o se rechaza.
Además genera el REPORTE de verificación (docs/02 §5): puede ser una constante String
calculada en tiempo de generación por macros que llaman a domus.reasoner, impresa por main,
o un archivo de texto/JSON vía TextGen. Elige la opción más robusta y justifícala.
Genera validos.v1_cerradura, compila y ejecuta el main; muéstrame la salida.
```
**Verificación humana:** clic derecho en el modelo `v1` → `Generate`; abre `source_gen`; ejecuta la clase (`Run`).

**Commit:** `feat(generator): Java ejecutable y reporte de verificación`

---

## FASE 7 — Pruebas `jetbrains.mps.lang.test` (P0)

**Prompt:**
```
Carga la skill mps-tests. Crea la solution domus.tests con un modelo de pruebas (@tests)
que use jetbrains.mps.lang.test, jetbrains.mps.baseLanguage.unitTest y domus.lang.

A) NodesTestCase de ERRORES (uno por regla), con anotaciones "has error"/"has typesystem error"
   sobre el nodo exacto: alcance (i1), roles (i2), alfabeto (i3), R-INI, R-ALM, R-SNS, R-ACY,
   identificador inválido, deadlock, alarma sin recuperación, política REQUIRED violada,
   política FORBIDDEN violada.
B) NodesTestCase de modelos SANOS: el sistema Cerradura completo sin errores
   (check "for error messages").
C) Pruebas de INFERENCIAS: tipos (has type RoleType/AlphabetType) y BTestCase sobre
   domus.reasoner: contraejemplo exacto, número de estados del AFD mínimo, traza mínima a la
   alarma, traza del simulador, ida y vuelta de Kleene (equivalencia).
Ejecuta todas las pruebas y corrige hasta verde. Dame la tabla prueba → qué valida → resultado.
```
**Verificación humana:** clic derecho en `domus.tests` → `Run tests`. Captura de pantalla para el documento.

**Commit:** `test: pruebas de errores, inferencias y razonador`

---

## FASE 8 — Cierre y relevo (OBLIGATORIO)

**Prompt:**
```
1) Entrada en docs/BITACORA.md de la Sesión 2 (qué se hizo y qué teoría materializa, máx. 25 líneas),
   incluyendo una tabla de complejidad de cada algoritmo para el bloque "Análisis crítico" del video.
2) docs/sesiones/HANDOFF_S2.md desde la plantilla: qué existe, nombres reales de reglas/intentions,
   cómo ejecutar generador y pruebas, pendientes con prioridad, problemas conocidos.
3) Actualiza docs/03_TRAZABILIDAD_GUIA.md (C1–C3, D2, H3-1..H3-3).
4) Ajusta docs/sesiones/SESION_3_MAESTRO.md si algo cambió.
No hagas push.
```
```bash
git add -A && git commit -m "docs: bitácora y relevo de la Sesión 2"
git push -u origin feature/s2-razonador-generador
gh pr create --base develop --title "S2: Razonador, generador y pruebas" \
  --body-file docs/sesiones/HANDOFF_S2.md --reviewer <usuario-gaby>
```
Envíale a Gaby el enlace del PR y `docs/sesiones/SESION_3_MAESTRO.md`.
