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

## Sesión 2 — (Luis)

## Sesión 3 — (Gaby)
