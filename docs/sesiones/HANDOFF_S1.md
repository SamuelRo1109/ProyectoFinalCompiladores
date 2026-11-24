# HANDOFF S1 → S2

**De:** Samuel · **Para:** Luis · **Fecha:** 18-nov-2026 · **Rama / PR:** `feature/s1-estructura-semantica` → `develop` (PR de S1)
**Build exacta de MPS usada:** MPS 2026.2 (MPS-262.11879.701)

> **El primer paso de Luis es revisar y aprobar el PR de S1.**

## 1. Qué quedó hecho
| Aspecto / fase | Estado | Nodos o archivos principales (nombres REALES) |
|---|---|---|
| Structure (F1) | ✅ | `domus.lang.structure`: enums `EventKind`, `PolicyMode`; interfaz `IDeviceElement`; `HomeSystem`, `Role`, `Device`, `State`, `AlarmState`, `Event`, `Transition`, `RegexExpr` > `BinaryRegexExpr` (`UnionExpr`, `ConcatExpr`), `UnaryRegexExpr` (`StarExpr`, `PlusExpr`, `OptionalExpr`), `SymbolExpr`, `EpsilonExpr`, `AnySymbolExpr`, `ParenExpr`; `Policy`, `Scenario`, `ScenarioStep`, `ActorRef`; tipos `RoleType`, `AlphabetType` |
| Behavior (F2) | ✅ | `Device.initialStates()`, `HomeSystem.allEvents()`, `Role.ancestors()` (corta ciclos), `IDeviceElement.getDevice()` |
| Editor (F3) | ✅ | `*_Editor` por concepto, `DomusEstilos`, componente `State_Banderas`; intentions `AlternarEstadoInicial`, `AlternarEstadoDeAceptacion` (modelo `domus.lang.intentions`) |
| Constraints (F4) | ✅ | `domus.lang.constraints`: `Transition_`, `ScenarioStep_`, `Scenario_`, `Policy_`, `Role_`, `Event_`, `ActorRef_`, `SymbolExpr_`, `Device_`, `State_Constraints`; clase `IdentifierUtil` |
| Typesystem (F5) | ✅ | Inferencia: `typeof_SymbolExpr`, `typeof_BinaryRegexExpr`, `typeof_UnaryRegexExpr`, `typeof_EpsilonExpr`, `typeof_AnySymbolExpr`, `typeof_Policy`, `typeof_ActorRef`, `typeof_ScenarioStep`; subtipado `supertypeOf_RoleType`; helper `AlfabetoUtil`. Checking: `check_{Device,State,Event,Role}_NombreValido`, `check_{Device,State,Event,Role}_NombreUnico` (R-UNQ), `check_Device_EstadoInicialUnico` (R-INI), `check_AlarmState_NoAceptacion` (R-ALM), `check_Event_SensorSinRol` (R-SNS), `check_Role_SinCiclos` (R-ACY) |
| Sandbox (F6) | ✅ | Solution `domus.lang.sandbox` (carpeta `domus/languages/domus.lang.sandbox`). Modelos `domus.lang.sandbox.validos.v1_cerradura` (`CasaSegura`), `.v2_alarma` (`SistemaAlarma`), `.v3_casa` (`CasaInteligente`); `.invalidos.i1_alcance` (`Alcance`), `.i2_roles` (`CasaRolesIncorrectos`), `.i3_alfabeto` (`CasaAlfabetosMezclados`), `.i4_restricciones` (`CasaRestricciones`), todos "Do not generate" |
| Tabla δ (A5), razonador, generador, pruebas | ⬜ | Fuera de S1 |

## 2. Cómo verificarlo en 5 minutos
1. `gh pr checkout <PR-S1>`, abre `domus/` en MPS, `Build → Rebuild Project` (sin errores salvo lo de `invalidos.*`).
2. Claude Code en la raíz (misma PC que MPS) → `/mcp` → `mps` conectado.
3. Prompt: *"Valida con mps_mcp_check_root_node_problems el módulo domus.lang.sandbox con perRoot=true."* Esperado: v1, v2, v3 con 0 errores; i1 = 3 (referencias fuera de alcance: source, event, target), i2 = 1 (rol), i3 = 1 (alfabeto), i4 = 5 (ver §4).
4. Abre `v1_cerradura`: `Ctrl+Shift+T` sobre un paso de escenario muestra el tipo.

## 3. Pendiente (en orden de prioridad)
| Prioridad | Tarea | Por qué quedó pendiente | Fase que la cubre |
|---|---|---|---|
| P0 | Pruebas automáticas (`domus.tests`, `has error`) de i1–i4 y reglas R-* | La solution `domus.tests` no existe aún | S2 Fase 7 |
| P1 | Tabla δ (A5, proyección no textual) | Fuera del alcance de S1 | S3 Fase 1 (hazla en S2 si el Hito 2 vence antes) |
| P1 | Mensaje de i1 en español | Es el mensaje por defecto de MPS ("out of search scope"); no es una regla propia | S3 (QA/UX) |
| P2 | Hallazgos de UX (ver `BITACORA.md`, Sesión 1) | Insumo para S3 | S3 Fases de editor |
| P2 | Tag `v0.2-hito2` y capturas de pantalla para A1–A4 | Se hace al mergear | Hito 2 |

## 4. Problemas conocidos y trucos
- **Error doble en nombres inválidos:** `2estado` dispara a la vez la restricción de propiedad de MPS ("Property constraint violation for the property name") y `check_State_NombreValido`. Por eso i4 cuenta 5 errores para 4 defectos. Decide en S3 si se quita el validador de propiedad o la regla.
- **Hallazgos de UX** del editor (hereda/requiere solo en el Inspector, Enter crea `Device`, regex de arriba hacia abajo…): detalle en `BITACORA.md`.
- **Diálogos modales de MPS bloquean al agente:** si una llamada MCP se cuelga, busca un diálogo abierto y ciérralo.
- **Diálogo "Add File to Git" de MPS:** marca "Don't ask again" + Cancel.
- Los nombres de modelo llevan prefijo: `domus.lang.sandbox.validos.v1_cerradura`, no `validos.v1_cerradura`.
- Tras cambiar typesystem/constraints/behavior: MAKE del lenguaje antes de validar.
- `blueprint.py` en Windows: usa `PYTHONUTF8=1` (símbolos →, ◎, ·).

## 5. Cambios al diseño (si los hubo)
- Ninguno en la especificación. Solo el prefijo `domus.lang.sandbox.` en los nombres de modelo (§6 de `02_ESPECIFICACION_FORMAL.md` sigue siendo válido como nombre corto).

## 6. Estado de la trazabilidad
Cambiaron: A1–A4 ✅, B1–B3 ✅, H2-3 ✅, H2-4 ✅, H2-1 y H2-2 🟨. A5 sigue ⬜. Los tests automáticos de B1–B3 llegan en S2.

## 7. Notas para Luis
- Claude Code debe correr **en la misma PC que MPS**; el servidor MCP está en `127.0.0.1:64342`.
- Las skills `mps-*` ya están en el repo (`.claude/skills/`); no ejecutes la inicialización salvo que tu build de MPS difiera.
- En MPS, en el diálogo "Add File to Git" marca "Don't ask again" y pulsa Cancel.

## 8. Checklist del PR
- [ ] Rebuild del proyecto sin errores (salvo `invalidos.*`)
- [ ] Pruebas existentes en verde (no hay aún: llegan en S2)
- [x] `docs/BITACORA.md` actualizado
- [ ] Sin archivos generados en el commit (`source_gen`, `classes_gen`, `test_gen`, `workspace.xml`)
