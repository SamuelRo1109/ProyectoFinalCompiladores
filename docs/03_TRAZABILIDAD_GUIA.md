# 03 — Matriz de trazabilidad con la guía del proyecto

> Cada fila es un requisito literal de la guía. Antes de cada release, Gaby marca la evidencia.
> Estado: ⬜ pendiente · 🟨 en curso · ✅ hecho (con evidencia)

## Pilar A — Expresividad del dominio

| ID | Requisito de la guía | Implementación en Domus | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| A1 | Mínimo 10–15 conceptos propios del dominio | 28 conceptos (`02_ESPECIFICACION_FORMAL.md` §1.1) | S1 | Modelo `domus.lang.structure`: 28 raíces = 25 conceptos + 2 enumeraciones (`EventKind`, `PolicyMode`) + 1 interfaz (`IDeviceElement`); recontado en la auditoría de la Fase 8 | ✅ |
| A2 | Uso de herencia (`extends`) | `AlarmState extends State`; jerarquía `RegexExpr` | S1 | En `domus.lang.structure`: `AlarmState` extiende `State`; `RegexExpr` (abstracto) → `BinaryRegexExpr` (`UnionExpr`, `ConcatExpr`) y `UnaryRegexExpr` (`StarExpr`, `PlusExpr`, `OptionalExpr`, `ParenExpr`), más `SymbolExpr`, `EpsilonExpr`, `AnySymbolExpr` | ✅ |
| A3 | Interfaces de concepto | `IDeviceElement` (+ `INamedConcept`) | S1 | Interfaz `IDeviceElement` en `domus.lang.structure` (implementada por `Event`, `State`, `Transition`) con `getDevice()` en `IDeviceElement_Behavior` (`domus.lang.behavior`); los conceptos con nombre implementan `INamedConcept` | ✅ |
| A4 | Relaciones de composición/referencia | Hijos de `Device`; refs de `Transition` | S1 | Hijos de `Device` y refs de `Transition` (`source`, `target`, `event`) en `domus.lang.structure` | ✅ |
| A5 | Al menos una proyección no textual (`jetbrains.mps.lang.editor.table`, bloques o matriz) | Tabla δ de transiciones en el editor de `Device` (rejilla `table-component`; ver §2 de la especificación) | S3 | `Device_Editor` y `Transition_Editor` (+ clase `TablaDelta`) en `domus.lang.editor`; captura `docs/img/tabla_delta_v1.png` (y `despues_estilos_v1.png`, `despues_estilos_v3.png`); agregar/editar/borrar filas verificado con teclado | ✅ |

## Pilar B — Semántica estática

| ID | Requisito | Implementación | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| B1 | Scoping: referencias solo a elementos válidos del contexto | 7 scopes (§3.1) | S1 | Regla `Transition_Constraints` (`domus.lang.constraints`) reporta el error; modelo `invalidos.i1_alcance`: 3 errores «The reference  … is out of search scope» + 1 warning del razonador (`Encendida` inalcanzable), revalidado en la Fase 8; pruebas `ErroresDeReglas` (caso `ErrAlcance`) y `ModelosSanos` (v1–v3 sin falsos positivos) en `domus.tests` | ✅ |
| B2 | Reglas de tipos (inference o checking) contra errores del dominio | `RoleType` con subtipado, `AlphabetType`; checking rules R-INI, R-UNQ, R-ALM, R-SNS, R-ACY | S1 | `domus.lang.typesystem`: inferencia `typeof_SymbolExpr`, `typeof_BinaryRegexExpr`, `typeof_UnaryRegexExpr`, `typeof_Policy`, `typeof_ActorRef`, `typeof_ScenarioStep`; subtipado `supertypeOf_RoleType`; checking `check_Device_EstadoInicialUnico` (R-INI), `check_*_NombreUnico` (R-UNQ), `check_AlarmState_NoAceptacion` (R-ALM), `check_Event_SensorSinRol` (R-SNS), `check_Role_SinCiclos` (R-ACY), `check_*_NombreValido`. Modelos `i2` (1 E + 1 W), `i3` (1 E), `i4` (5 E); pruebas `has error` en `ErroresDeReglas` | ✅ |
| B3 | Errores de dominio tipo "incompatibilidad de unidades o roles" | Rol sin privilegio (i2); alfabetos incompatibles (i3) | S1 | Mensajes literales «Error: Incompatibilidad de roles: el actor 'Invitado' no puede ejecutar el evento 'bloquear'…» (i2) y «Error: Incompatibilidad de alfabetos: el evento 'calentar' pertenece al dispositivo 'Termostato'…» (i3), revalidados en la Fase 8; pruebas `has error` en `ErroresDeReglas` | ✅ |

## Pilar C — Razonador (núcleo)

| ID | Requisito | Implementación | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| C1 | Verificador de consistencia (ciclos, inalcanzables, deadlocks, contradicciones) | §4.2: inalcanzables, trampas, deadlocks, no determinismo, alarmas; ciclos de roles (R-ACY) | S2 | Regla `check_Device_Razonador` → `Razonador.analizarDispositivo` (`domus.reasoner.automata`; prioridad de hallazgos en §4.2); `check_Policy_Razonador`; `check_Role_SinCiclos`. Ejemplos vivos: inalcanzable y deadlock en el ensayo de `demo.caso_en_vivo` (`docs/GUION_DEMO.md`, pasos 1 y 3); pruebas `ErroresDeReglas`, `AdvertenciasDelRazonador`, `RazonadorTest` | ✅ |
| C2 | Motor de inferencia (derivar conclusiones nuevas) | Traza mínima a alarma, contraejemplos de políticas, AFD mínimo, ER equivalente (Kleene 2) | S2 | `domus.reasoner` (`Razonador`: traza mínima, contraejemplo, AFD mínimo, Kleene 2) + `ReporteDomus` (`domus.lang.generator.util`). Ejemplos: «Info: Alarma alcanzable. Traza mínima: forzar» (v1); «Error: Política violada: la traza 'abrir · cerrar' contiene el patrón prohibido» (ensayo de la demo); ER equivalente de la Cerradura en el reporte de v1; pruebas `InferenciasCerradura` y `RazonadorTest` | ✅ |
| C3 | Simulador operacional (paso a paso) | §4.6 escenarios con traza de estados | S2 | `Scenario.toWord` + `check_Scenario_Razonador` («Info: Simulación aceptada: …»); `main` generado de v1 ejecutado en PowerShell en la Fase 8: «Bloqueada → Desbloqueada → Abierta → Desbloqueada → Bloqueada · ACEPTADO»; `RazonadorTest` | ✅ |

## Pilar D — Uso práctico y generación

| ID | Requisito | Implementación | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| D1 | Un usuario externo escribe un modelo completo en la Sandbox y obtiene un resultado | Guía de usuario + caso demo | S3 | Pendiente: prueba con usuario externo a cargo de Erika (hoja en `GUIA_USUARIO.md` §8, ejercicio D1). El ejercicio se construyó y validó en MPS (0 errores) | 🟨 |
| D2 | Traducción a artefacto útil (código, JSON/XML o reporte) | Clase Java ejecutable + reporte de verificación | S2 | Plantilla `GeneratedHomeSystem_Plantilla` (configuración `main` en `domus.lang.generator.templates@generator`) + `ReporteDomus`; `v1_cerradura` y `demo.caso_en_vivo` generados y ejecutados con el JBR en `powershell.exe` (Fase 8 y guion, paso 5); salida documentada en `docs/GUION_DEMO.md` | ✅ |

## Hito 2

| ID | Requisito | Sesión | Evidencia | Estado |
|---|---|---|---|---|
| H2-1 | Repo Git con proyecto MPS funcional | S1 | Repo `SamuelRo1109/ProyectoFinalCompiladores`; clon limpio de `feature/s3-editor-ux-qa` verificado en la Fase 8 (sin archivos generados versionados; todos los docs presentes). Pendiente: tags al cerrar la release (Fase 9) | 🟨 |
| H2-2 | Structure, Editor, Constraints, Typesystem completos | S1 (+ tabla S3) | Structure, Editor (con tabla δ, S3), Constraints y Typesystem completos | ✅ |
| H2-3 | ≥ 3 modelos válidos en la Sandbox | S1 | `domus.lang.sandbox.validos.v1_cerradura`, `v2_alarma`, `v3_casa`: 0 errores (revalidado en la Fase 8); además `demo.caso_en_vivo`: 0 errores | ✅ |
| H2-4 | ≥ 3 modelos inválidos que muestren errores de contexto y tipos | S1 | `domus.lang.sandbox.invalidos.i1_alcance`..`i4_restricciones`: i1 = 3 errores de alcance + 1 warning (inalcanzable); i2 = 1 error + 1 warning; i3 = 1 error; i4 = 5 errores (revalidado en la Fase 8) | ✅ |

## Hito 3

| ID | Requisito | Sesión | Evidencia | Estado |
|---|---|---|---|---|
| H3-1 | Repositorio final con razonador y generador | S2 | Razonador y generador integrados en `develop` (PR #2, commit `07d7dc0`); trabajo de S3 en `feature/s3-editor-ux-qa`. Pendiente: tags al cerrar la release (Fase 9) | 🟨 |
| H3-2 | Pruebas `jetbrains.mps.lang.test` que validen **errores detectados** | S2 | `NodesTestCase` con `has error` en `ErroresDeReglas` y `AdvertenciasDelRazonador` (solution `domus.tests`); re-ejecución de la Fase 8: 60 de 60 en verde (Tests passed: 60 of 60, exit code 0) con la configuración «Pruebas Domus»; captura `docs/img/pruebas_verde.png` | ✅ |
| H3-3 | Pruebas que validen **inferencias generadas** | S2 | `InferenciasCerradura` (tipos, `has type`) y `RazonadorTest` (BTestCase) en `domus.tests`; re-ejecución de la Fase 8: 60 de 60 en verde (Tests passed: 60 of 60, exit code 0) con la configuración «Pruebas Domus»; captura `docs/img/pruebas_verde.png` | ✅ |
| H3-4 | Video 12–15 min, los 3 participan, estructura obligatoria | Final | A cargo de Erika; guion de la demo en vivo en `docs/GUION_DEMO.md` | 🟨 |

## Mapeo obligatorio MPS ↔ Teoría de la Computación (para documento y video)

| Aspecto MPS | Fundamento | En Domus |
|---|---|---|
| Structure | AST y gramáticas de árboles | Gramática de árboles de §1 |
| Editor | Sintaxis concreta, eliminación de ambigüedad (edición proyectiva) | Regex sin ambigüedad porque se edita el árbol; tabla δ |
| Constraints & Typesystem | Gramáticas sensibles al contexto, análisis estático, inferencia de tipos | Scopes por dispositivo; reglas T-Sym, T-Bin, S-Par, T-Step |
| Razonador & Generator | Semántica operacional/denotacional, autómatas, lógica, decidibilidad | Kleene 1 y 2, producto de autómatas, simulador, generación Java |

## Recomendaciones de la guía

| Recomendación | Cumplimiento |
|---|---|
| Lenguaje pequeño con razonador profundo | Alcance cerrado en `02_ESPECIFICACION_FORMAL.md` |
| `.gitignore` con `source_gen`, `classes_gen`, `.mps/workspace.xml` desde el día 1 | `.gitignore` incluido en el kit; verificado en el clon limpio de la Fase 8 (ningún archivo generado versionado) |

## Capturas para el documento

Capturas que conviene incluir en el documento técnico (las existentes están en `docs/img/`):

| Requisito | Qué capturar | Dónde | ¿Existe? |
|---|---|---|---|
| A1–A3 | Árbol de `domus.lang.structure` en Logical View (28 raíces) y la declaración de `AlarmState` e `IDeviceElement` | `domus.lang` → `structure` | No |
| A5 | Tabla δ | `docs/img/tabla_delta_v1.png` | Sí |
| A5 / estilos | Editor con estilos (antes / después) | `docs/img/antes_estilos_v3.png`, `despues_estilos_v1.png`, `despues_estilos_v3.png` | Sí |
| B1 | Los 3 errores «out of search scope» de `i1_alcance` con el recuadro de mensaje | `invalidos.i1_alcance` | No |
| B2 / B3 | Error de roles (`i2_roles`) y de alfabetos (`i3_alfabeto`) | `invalidos.i2_roles`, `invalidos.i3_alfabeto` | No |
| C1 | Mensaje de deadlock sobre `Atenuada` | guion, paso 3 | No (sale al grabar) |
| C2 | Política violada con contraejemplo `abrir · cerrar` | guion, paso 3 | No (sale al grabar) |
| C3 / D2 | Terminal con el reporte y la simulación | guion, paso 5 | No (sale al grabar) |
| H3-2 / H3-3 | Resultados de `domus.tests` en verde (60/60) | `docs/img/pruebas_verde.png` | Sí |
