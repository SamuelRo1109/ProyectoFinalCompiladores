# SESIÓN 1 — Infraestructura + Structure + Editor básico + Constraints + Typesystem + Sandbox

> **Responsable:** Tú · **Rama:** `feature/s1-estructura-semantica` · **Revisor del PR:** Luis
> **Objetivo:** dejar el **Hito 2** funcionando (todo menos la tabla δ, que hace Gaby) y el relevo listo para Luis.
> **Teoría que defiendes en el video:** AST/gramáticas de árboles, sensibilidad al contexto (scoping), sistemas de tipos y subtipado.

## Prioridades (si se acaba el tiempo, corta por abajo)

| Prioridad | Fases | Si no alcanzas |
|---|---|---|
| **P0** (esta noche) | 0 Preparación · 1 Structure · 2 Behavior auxiliar · 3 Editores básicos · 4 Constraints · modelo `v1` a mano | — |
| **P1** (mañana temprano) | 5 Typesystem · 6 Modelos `v2`, `v3`, `i1`–`i4` | Se anota en `HANDOFF_S1.md` y Luis lo hace primero |
| **P2** | Pulir mensajes de error en español | Gaby lo revisa en S3 |
| Cierre | 7 Bitácora + handoff + PR | **Obligatorio**, aunque falten cosas |

## Cómo trabajar con Claude Code en esta sesión
- Abre Claude Code **en la raíz del repo** y **con MPS abierto** en el proyecto.
- Al empezar cada fase: `/clear` y pega el prompt de la fase. Así no gastas contexto de fases anteriores.
- Después de cada fase: **mira el resultado en MPS** (abre los nodos, ejecuta `Build → Rebuild`) y commitea.
- Si Claude falla dos veces en lo mismo, pídele: *"dame los pasos manuales exactos en la GUI de MPS"* y hazlo tú.
- Pídele siempre que explique qué creó: lo tienes que defender en el video.

---

## FASE 0 — Preparación (manual, ~45–60 min)

### 0.1 Instalar
1. **JetBrains MPS**: la última build estable 2026.1.x (≥ 2026.1.2) o 2026.2 si ya es estable, desde jetbrains.com/mps/download. **Anota el número exacto de build** (`Help → About`) en `README.md`: Luis y Gaby instalarán esa misma.
2. **Claude Code** en tu computador (el mismo donde corre MPS).
3. **Git** y **GitHub CLI**: `gh auth login`.

### 0.2 Crear el repositorio y GitFlow
```bash
# 1. Crea el repo en GitHub (público, o privado si tienes GitHub Pro / Student Pack)
gh repo create domus-dsl-mps --public --clone      # o --private
cd domus-dsl-mps

# 2. Copia aquí TODO el contenido del kit (incluidos los ocultos: .gitignore, .mcp.json, .claude/, .github/)

# 3. Primer commit en main
git add -A
git commit -m "chore: documentación, especificación formal y configuración inicial"
git push -u origin main

# 4. develop + rama por defecto + protección de ramas + colaboradores
bash scripts/configurar_github.sh <tu-usuario> domus-dsl-mps <usuario-luis> <usuario-gaby>

# 5. Tu rama de trabajo
git checkout develop && git pull
git checkout -b feature/s1-estructura-semantica
```
Luis y Gaby deben **aceptar la invitación** de colaboradores que les llega por correo/GitHub.

### 0.3 Crear el proyecto MPS (manual)
1. `File → New Project → Language Project`.
2. **Project name:** `Domus` · **Project location:** `<ruta-del-repo>/domus`
3. **Language namespace:** `domus.lang`
4. Marca **Create Sandbox Solution** → `domus.sandbox`.
5. `OK`. Espera a que termine de indexar.

### 0.4 Git dentro de MPS
1. `Ctrl+Shift+A` → busca **Install MPS VCS Add-ons** → marca el *merge driver* de Git y los *Git file attributes* → `Install`.
2. Esto crea/actualiza `.gitattributes`. Súbelo al repo.

### 0.5 Ajustes de MPS para el agente
1. `Settings → Tools → MCP Server`: verifica que esté activo y **anota el puerto** (por defecto `64342`).
2. En **Exposed Tools**: desactiva las herramientas que **no** empiezan por `mps_mcp_`.
3. `Settings → Appearance & Behavior → System Settings`: desactiva las confirmaciones al salir y elige abrir proyectos sin preguntar (los diálogos modales bloquean al agente).

### 0.6 Conectar Claude Code a MPS
1. Si el puerto no es `64342`, cámbialo en `.mcp.json`.
2. En una terminal, en la raíz del repo: `claude`
3. Aprueba el servidor de proyecto `mps` cuando lo pregunte. Escribe `/mcp`: debe aparecer `mps` **conectado**.
   - Alternativa si no aparece: `claude mcp add --transport http mps http://localhost:64342/stream --scope project`
4. Prueba: *"Lista tus herramientas mps_mcp_ y dime qué proyecto MPS está abierto."*

### 0.7 Inicializar el proyecto para agentes (una sola vez)
**Prompt:**
```
Inicializa este proyecto MPS para agentes ejecutando mps_mcp_initialize_project_for_agents
como indica la descripción de la herramienta (instalar las skills incluidas y preparar AGENTS.md/CLAUDE.md
en la raíz del repositorio git). Ya existe un CLAUDE.md propio: NO lo reemplaces; fusiona el texto guía
que devuelva la herramienta en la sección marcada al final de CLAUDE.md. Luego dime qué skills mps-* quedaron
instaladas en .claude/skills.
```
**Commit:** `chore: proyecto MPS Domus + skills del Projectional Agent Toolkit`

---

## FASE 1 — Structure (P0)

**Prompt:**
```
Lee CLAUDE.md y docs/02_ESPECIFICACION_FORMAL.md §1 y §1.1. Carga las skills mps-mcp-workflow
y la skill de structure que corresponda.

Implementa en el lenguaje domus.lang TODOS los conceptos de la tabla §1.1, en este orden:
1) enumeraciones EventKind y PolicyMode; 2) interfaz de concepto IDeviceElement;
3) Role, Event, State, AlarmState (extends State), Transition, Device;
4) RegexExpr (abstracto), BinaryRegexExpr y UnaryRegexExpr (abstractos) y sus concretos;
5) Policy, ActorRef, ScenarioStep, Scenario; 6) HomeSystem (rootable);
7) RoleType y AlphabetType.
Respeta exactamente nombres, cardinalidades, abstract, rootable, alias e implementaciones.
Usa INamedConcept de jetbrains.mps.lang.core donde lo indica la tabla.

Trabaja en pasos pequeños: después de cada grupo valida con mps_mcp_check_root_node_problems.
Al final reconstruye el lenguaje (MAKE) y muéstrame una tabla con los conceptos creados y cualquier
diferencia frente a la especificación. Explícame en 5 líneas cómo esto materializa una gramática de árboles.
```
**Verificación humana:**
- [ ] En el árbol del proyecto, `domus.lang → structure` muestra los 28 nodos.
- [ ] Abre `AlarmState`: dice `extends State`. Abre `Event`: implementa `INamedConcept` e `IDeviceElement`.
- [ ] `Build → Rebuild Language 'domus.lang'` sin errores.

**Commit:** `feat(structure): metamodelo de Domus (28 conceptos)`

---

## FASE 2 — Behavior auxiliar (P0, pequeño)

**Prompt:**
```
Carga la skill mps-aspect-behavior. En domus.lang crea los métodos de comportamiento que necesitarán
los scopes y el typesystem:
- IDeviceElement.getDevice(): node<Device>  → ancestro Device.
- HomeSystem.allEvents(): sequence<node<Event>> → eventos de todos sus dispositivos.
- Role.ancestors(): sequence<node<Role>> → cadena de parent (debe detenerse si detecta ciclo).
- Device.initialStates(): sequence<node<State>>.
Reconstruye y valida. Explícame cada método en una línea.
```
**Commit:** `feat(behavior): utilidades de navegación del AST`

---

## FASE 3 — Editores básicos (P0)

**Prompt:**
```
Carga la skill mps-aspect-editor. Crea editores textuales legibles para todos los conceptos
concretos de domus.lang siguiendo el ejemplo de docs/02_ESPECIFICACION_FORMAL.md §2,
con palabras clave en español (sistema, roles, dispositivo, eventos, estados, transiciones,
politica, sobre, escenario, actor, requiere, hereda).
Por ahora las transiciones se muestran como lista vertical "origen --evento--> destino"
(la tabla δ la hará otra persona después; no la implementes).
Expresiones regulares en notación infija: | y · para binarios, *, +, ? como sufijo,
ParenExpr con paréntesis, EpsilonExpr como ε, AnySymbolExpr como ".".
Estado inicial con "→" y de aceptación con "◎" (property cells booleanas visibles).
Puedes partir de mps_mcp_scaffold_editor y luego ajustar. Reconstruye y valida.
```
**Verificación humana (importante para aprender):**
1. Clic derecho en `domus.sandbox` → `New → Model` → `validos.v1_cerradura`. En propiedades del modelo, añade el lenguaje usado `domus.lang`.
2. Dentro, `New → domus.lang → HomeSystem` y **escribe a mano** el ejemplo de la §2 de la especificación (usa `Ctrl+Space` para completar). Esto es lo que mostrarás en el video.
3. Anota en `docs/BITACORA.md` lo que se sintió raro del editor: es insumo para Gaby.

**Commit:** `feat(editor): proyecciones textuales básicas` y `test(sandbox): modelo válido v1_cerradura`

---

## FASE 4 — Constraints: scopes y propiedades (P0)

**Prompt:**
```
Carga la skill mps-aspect-constraints. Implementa en domus.lang los scopes de la tabla §3.1
de docs/02_ESPECIFICACION_FORMAL.md usando los métodos de behavior de la Fase 2:
Transition.source/target/event, ScenarioStep.event, Scenario.device, Policy.device,
Role.parent (excluyéndose a sí mismo), Event.requiredRole, ActorRef.role y SymbolExpr.event
(este último: TODOS los eventos del HomeSystem).
Agrega la restricción de propiedad para name en Device, State, Event y Role con la
expresión regular [A-Za-z_][A-Za-z0-9_]* (mensaje en español).
Reconstruye y valida contra el modelo validos.v1_cerradura (no debe tener errores).
Explícame la relación entre scoping y gramáticas sensibles al contexto en 5 líneas.
```
**Verificación humana:**
- [ ] En `v1`, en una transición, `Ctrl+Space` sobre el destino **solo** ofrece estados de `Cerradura`.
- [ ] Renombra un estado a `2estado`: aparece error. Deshaz.

**Commit:** `feat(constraints): scopes por dispositivo y validación de identificadores`

---

## FASE 5 — Typesystem (P1)

**Prompt:**
```
Carga la skill mps-aspect-typesystem. Implementa en domus.lang, según §3.2 y §3.3 de
docs/02_ESPECIFICACION_FORMAL.md:

A) Reglas de inferencia y subtipado:
 - typeof(SymbolExpr) :==: AlphabetType(device del evento)
 - BinaryRegexExpr: typeof(left) :==: typeof(right) y typeof(this) :==: typeof(left)
 - UnaryRegexExpr: typeof(this) :==: typeof(operand)
 - EpsilonExpr y AnySymbolExpr: AlphabetType(device de la Policy ancestro)
 - Policy: typeof(expr) debe ser AlphabetType(policy.device)  → error "incompatibilidad de alfabetos"
 - typeof(ActorRef) :==: RoleType(role)
 - Regla de subtipado para RoleType: supertipo = RoleType(role.parent) si existe
 - ScenarioStep: si event.requiredRole != null, typeof(actor del Scenario) :<=: RoleType(requiredRole)
   → error "incompatibilidad de roles"
B) Checking rules (errores en español): R-INI, R-UNQ, R-ALM, R-SNS, R-ACY.

Reconstruye el lenguaje (MAKE) ANTES de consultar tipos. Verifica en un modelo borrador
de la sandbox que cada regla dispara y luego borra el borrador.
Muéstrame una tabla regla → nombre del nodo MPS creado → mensaje de error.
```
**Verificación humana:**
- [ ] `v1` sigue sin errores.
- [ ] Con el cursor en un paso de escenario, `Ctrl+Shift+T` muestra el tipo.

**Commit:** `feat(typesystem): tipos de roles y alfabetos, reglas de verificación`

---

## FASE 6 — Modelos de la Sandbox (P1)

**Prompt:**
```
Según la tabla §6 de docs/02_ESPECIFICACION_FORMAL.md, crea en domus.sandbox los modelos
validos.v2_alarma, validos.v3_casa, invalidos.i2_roles, invalidos.i3_alfabeto e
invalidos.i4_restricciones, cada uno con un HomeSystem (usa mps_mcp_insert_root_node_from_json).
Cada modelo usa el lenguaje domus.lang. Marca los modelos invalidos.* con "do not generate".
Los válidos no deben tener ningún error; cada inválido debe mostrar SOLO el error que pretende
demostrar. NO crees invalidos.i1_alcance: ese lo haré yo a mano.
Al final, lista cada modelo con los errores que reporta mps_mcp_check_root_node_problems.
```
**Tú, a mano — `invalidos.i1_alcance`:**
1. Crea el modelo con un sistema de 2 dispositivos (`Cerradura` y `Luz`), cada uno con sus estados.
2. Crea una transición correcta en `Luz`, **córtala** (`Ctrl+X`) y **pégala** en las transiciones de `Cerradura`.
3. Debe marcarse en rojo la referencia fuera de alcance. Marca el modelo **Do not generate**.

**Commit:** `test(sandbox): 3 modelos válidos y 4 inválidos`

---

## FASE 7 — Cierre y relevo (OBLIGATORIO)

**Prompt:**
```
1) Agrega a docs/BITACORA.md una entrada de la Sesión 1: qué se construyó por aspecto
   y qué concepto de Teoría de la Computación materializa cada uno (máx. 25 líneas).
2) Crea docs/sesiones/HANDOFF_S1.md a partir de docs/sesiones/PLANTILLA_HANDOFF.md con:
   nombres REALES de conceptos, métodos de behavior y reglas creadas; lo que quedó pendiente
   (con prioridad); problemas conocidos; versión exacta de MPS; cómo verificar en 5 minutos.
3) Actualiza el estado de docs/03_TRAZABILIDAD_GUIA.md (A1–A4, B1–B3, H2-*).
4) Si algo del diseño cambió, refléjalo en docs/02_ESPECIFICACION_FORMAL.md y ajusta
   docs/sesiones/SESION_2_MAESTRO.md para que Luis no tropiece.
No hagas push: yo lo hago.
```
**Tú:**
```bash
git add -A
git commit -m "docs: bitácora y relevo de la Sesión 1"
git push -u origin feature/s1-estructura-semantica
gh pr create --base develop --title "S1: Structure, Editor básico, Constraints, Typesystem y Sandbox" \
  --body-file docs/sesiones/HANDOFF_S1.md --reviewer <usuario-luis>
```
Envíale a Luis: el enlace del PR y `docs/sesiones/SESION_2_MAESTRO.md`. **Su primer paso es revisar y aprobar tu PR.**

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| `/mcp` no muestra `mps` | MPS abierto con el proyecto; puerto correcto en `.mcp.json`; reinicia Claude Code |
| El agente dice "éxito" pero no ves cambios | Pídele `mps_mcp_read_ide_log` con `sinceMinutes=2` y `minLevel=WARN` |
| Las consultas de tipos no reflejan los cambios | Falta reconstruir: `Build → Rebuild` o que el agente haga MAKE |
| Una llamada se queda colgada | Hay un diálogo modal abierto en MPS: ciérralo |
| Conflicto en un `.mps` | No edites el XML. Usa el merge de MPS (VCS Add-ons) |
| Se acaba el límite de Claude Code | Sigue a mano con los pasos de la fase; documenta en el handoff dónde quedaste |
