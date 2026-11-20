# Bitácora de investigación — Domus

> Una entrada por sesión. Sirve para el documento técnico, para el video y para que los tres dominen todo el proyecto.
> Formato: qué se construyó · qué concepto de Teoría de la Computación materializa · qué fue difícil · qué decidimos y por qué.

## Sesión 0 — Diseño (17-nov-2026)
- Dominio: protocolos de dispositivos domóticos como autómatas finitos; políticas como expresiones regulares; roles jerárquicos.
- Pregunta de investigación: ver `01_ANALISIS_Y_PLAN.md` §4.
- Decisión: usar Claude Code conectado a MPS por el Projectional Agent Toolkit (MCP), nunca editando los `.mps` como texto.
- Decisión: prototipar los algoritmos del razonador en Java plano y luego importarlos a BaseLanguage con el parser de Java de MPS.

## Sesión 1 — Structure, Editor, Constraints, Typesystem y Sandbox (18-nov-2026)
- **Structure** (`domus.lang.structure`): 28 raíces (25 conceptos, 2 enums, 1 interfaz) en inglés con alias en español (`IDeviceElement`, `Device`, `State`/`AlarmState`, `Transition`, jerarquía `RegexExpr`, `Policy`, `Scenario`, `RoleType`, `AlphabetType`…). Materializa el **AST** y una gramática de árboles; la herencia (`AlarmState extends State`) es subtipado de producciones.
- **Behavior**: `Device.initialStates()`, `HomeSystem.allEvents()`, `Role.ancestors()` (clausura transitiva de `parent`, a prueba de ciclos), `IDeviceElement.getDevice()`. Son las consultas sobre el árbol que usan las demás reglas (recorrido de un AST).
- **Editor**: proyecciones textuales por concepto + `DomusEstilos`; →/◎ como banderas; intentions `AlternarEstadoInicial` y `AlternarEstadoDeAceptacion`. Al editar el árbol, la regex no tiene ambigüedad sintáctica (no hay precedencia que resolver).
- **Constraints**: scopes por dispositivo/sistema (Transition, ScenarioStep, Scenario, Policy, Role, Event, ActorRef, SymbolExpr) y validador de `name` con `IdentifierUtil` (ID = [A-Za-z_][A-Za-z0-9_]*). Es la **condición sensible al contexto**: una gramática libre de contexto no puede decir "este estado es de ESTE dispositivo". El validador es un autómata finito (Kleene aplicado al propio DSL).
- **Typesystem**: `RoleType` (con `supertypeOf_RoleType`, subtipado por `parent`) y `AlphabetType`; inferencia `typeof_*` y reglas `check_*` (R-INI, R-UNQ, R-ALM, R-SNS, R-ACY, nombres). Materializa **inferencia de tipos** y análisis estático.
- **Sandbox** (`domus.lang.sandbox`): v1–v3 válidos sin errores; i1–i4 inválidos con "Do not generate", cada uno demuestra su error.
- Difícil: la edición proyectiva (ver hallazgos de UX); error doble en nombres inválidos; diálogos modales de MPS que bloquean al agente.
- Decisión: el razonador (autómatas, Kleene, políticas) queda para S2; la tabla δ (A5) para S3, o S2 si el Hito 2 vence antes.


### Hallazgos de UX al escribir v1_cerradura a mano (insumo para Gaby, S3)
1. "hereda" (`Role.parent`) y "requiere" (`Event.requiredRole`) solo se pueden asignar desde el Inspector (Alt+2).
2. Enter al final de una `Transition` crea un `Device` nuevo; solución temporal: seleccionar la línea con Ctrl+W y luego Enter.
3. Las listas de políticas y escenarios de `HomeSystem` no muestran título ("politicas:", "escenarios:").
4. Para cambiar un valor de enumeración (REQUIRED→FORBIDDEN) hay que seleccionar la palabra completa antes de Ctrl+Espacio.
5. "." (`AnySymbolExpr`) y "·" (`ConcatExpr`) se confunden en el menú de completado.
6. Las regex se construyen de arriba hacia abajo (operador primero y luego los huecos); escribir "a | b" de corrido no funciona todavía (Fase 2 de la S3: side transforms).
7. Decisión de diseño: → y ◎ solo se muestran cuando `initial`/`accepting` son verdaderos; se alternan con Alt+Enter.

## Sesión 2 — Razonador, generador y pruebas (Luis, 19-nov-2026)
- **Prototipo** Java (`prototipo-razonador/`) y luego solution `domus.reasoner` en BaseLanguage (modelo `domus.reasoner.automata`: 16 clases, fachada `Razonador`, `Hallazgo`; `selftest` con `TestMain` 87/87). Materializa **AFN/AFD** y la **equivalencia ER ⇔ autómata (Kleene)**.
- **Behavior**: `RegexExpr.toNfa` (Thompson, 9 conceptos), `Device.alphabet/toNfa/alarmStateIndices/stateName/eventName`, `Scenario.toWord`: traducción del AST a autómatas (semántica denotacional de la ER).
- **Reglas en vivo**: `check_Device_Razonador` (alcance, trampas, deadlocks, alarmas con traza mínima), `check_Policy_Razonador` (REQUIRED/FORBIDDEN con contraejemplo), `check_Scenario_Razonador` (simulador). Materializa **decidibilidad** de vacío, inclusión y equivalencia en lenguajes regulares.
- **Generador**: plantilla `GeneratedHomeSystem_Plantilla` (regla raíz `HomeSystem`) + `ReporteDomus`; produce Java ejecutable y reporte de verificación (**semántica operacional**: el simulador ejecuta δ paso a paso).
- **Pruebas**: `domus.tests`, 60 en verde (`ErroresDeReglas`, `AdvertenciasDelRazonador`, `ModelosSanos`, `InferenciasCerradura`, `RazonadorTest`).
- **Hallazgo del razonador**: la política `SesionCompleta` de v2 era más estricta que el dispositivo (contraejemplo `armar · disparar · tiempoEntrada · autoSilencio · disparar · desarmar`). Se corrigió SOLO la política, añadiendo `(disparar · tiempoEntrada · autoSilencio)*` tras `armar` (lema de Arden). Decisión tomada en S2 sin consulta; reversible en 1 commit si prefieren cambiar el destino de `autoSilencio`.
- Difícil: Java del sistema < 21 al correr pruebas (usar el JBR de MPS); conexión MCP en Windows (SSE).

### Tabla de complejidad (para el "Análisis crítico" del video)
| Algoritmo | Complejidad | Nota |
|---|---|---|
| Thompson (ER → AFN-ε) | O(\|r\|), ≤ 2\|r\| estados | construcción lineal |
| Subconjuntos (AFN → AFD) | O(2^n) peor caso | rara vez se alcanza en la práctica |
| Minimización de Moore | O(n²·\|Σ\|) | refinamiento de particiones |
| BFS: alcanzabilidad, co-alcanzabilidad, trampas, deadlocks | O(\|Q\|+\|δ\|) | recorrido de grafo |
| Producto de políticas | O(\|Q_d\|·\|Q_R\|·\|Σ\|) tras determinizar R | la inclusión entre AFN es PSPACE-completa: por eso solo se determiniza R |
| Eliminación de estados (AFD → ER, Kleene 2) | O(n³) operaciones; ER de tamaño hasta exponencial | |
| Simulador de escenarios | O(\|w\|·(\|Q\|+\|δ\|)) | w = palabra del escenario |

## Sesión 3 — (Gaby)
