# 03 — Matriz de trazabilidad con la guía del proyecto

> Cada fila es un requisito literal de la guía. Antes de cada release, Gaby marca la evidencia.
> Estado: ⬜ pendiente · 🟨 en curso · ✅ hecho (con evidencia)

## Pilar A — Expresividad del dominio

| ID | Requisito de la guía | Implementación en Domus | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| A1 | Mínimo 10–15 conceptos propios del dominio | 28 conceptos (`02_ESPECIFICACION_FORMAL.md` §1.1) | S1 | Modelo `domus.lang.structure`: 28 raíces (25 conceptos + 2 enums + 1 interfaz según `mps_mcp_get_project_structure`); falta captura de pantalla | ✅ |
| A2 | Uso de herencia (`extends`) | `AlarmState extends State`; jerarquía `RegexExpr` | S1 | `AlarmState`, `BinaryRegexExpr`/`UnaryRegexExpr` en `domus.lang.structure`; captura pendiente | ✅ |
| A3 | Interfaces de concepto | `IDeviceElement` (+ `INamedConcept`) | S1 | `IDeviceElement` (con `getDevice()` en behavior); captura pendiente | ✅ |
| A4 | Relaciones de composición/referencia | Hijos de `Device`; refs de `Transition` | S1 | Hijos de `Device` y refs de `Transition` (`source`, `target`, `event`) en `domus.lang.structure` | ✅ |
| A5 | Al menos una proyección no textual (`jetbrains.mps.lang.editor.table`, bloques o matriz) | Tabla δ de transiciones en el editor de `Device` | S3 (o S2 si vence el Hito 2) | Captura de la tabla en la Sandbox | ⬜ |

## Pilar B — Semántica estática

| ID | Requisito | Implementación | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| B1 | Scoping: referencias solo a elementos válidos del contexto | 7 scopes (§3.1) | S1 | Modelo `invalidos.i1_alcance` (3 errores "out of search scope" + 1 warning del razonador: `Encendida` inalcanzable); test automático en `domus.tests` (`ErroresDeReglas`: alcance; `ModelosSanos`: v1–v3 sin falsos positivos) | ✅ |
| B2 | Reglas de tipos (inference o checking) contra errores del dominio | `RoleType` con subtipado, `AlphabetType`; checking rules R-INI, R-UNQ, R-ALM, R-SNS, R-ACY | S1 | Modelos `i2`, `i3`, `i4` con sus errores; tests `has error` en `domus.tests` (`ErroresDeReglas`: roles, alfabeto, R-INI/R-UNQ/R-ALM/R-SNS/R-ACY; `ModelosSanos`) | ✅ |
| B3 | Errores de dominio tipo "incompatibilidad de unidades o roles" | Rol sin privilegio (i2); alfabetos incompatibles (i3) | S1 | Mensajes de i2 (rol) e i3 (alfabeto) verificados con `check_root_node_problems`; tests `has error` en `domus.tests` (`ErroresDeReglas`: roles y alfabeto; `ModelosSanos`) | ✅ |

## Pilar C — Razonador (núcleo)

| ID | Requisito | Implementación | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| C1 | Verificador de consistencia (ciclos, inalcanzables, deadlocks, contradicciones) | §4.2: inalcanzables, trampas, deadlocks, no determinismo, alarmas; ciclos de roles (R-ACY) | S2 | `check_Device_Razonador` y `check_Policy_Razonador` (errores/warnings en vivo); pruebas `ErroresDeReglas`, `AdvertenciasDelRazonador` y `RazonadorTest` en `domus.tests` | ✅ |
| C2 | Motor de inferencia (derivar conclusiones nuevas) | Traza mínima a alarma, contraejemplos de políticas, AFD mínimo, ER equivalente (Kleene 2) | S2 | `domus.reasoner` (`Razonador`: traza mínima, contraejemplo, AFD mínimo, Kleene 2) + reporte de `ReporteDomus`; `InferenciasCerradura` y `RazonadorTest` | ✅ |
| C3 | Simulador operacional (paso a paso) | §4.6 escenarios con traza de estados | S2 | `Scenario.toWord` + `check_Scenario_Razonador`; salida del `main` generado en `source_gen` (v1); `RazonadorTest` | ✅ |

## Pilar D — Uso práctico y generación

| ID | Requisito | Implementación | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| D1 | Un usuario externo escribe un modelo completo en la Sandbox y obtiene un resultado | Guía de usuario + caso demo | S3 | Prueba con alguien ajeno al equipo | ⬜ |
| D2 | Traducción a artefacto útil (código, JSON/XML o reporte) | Clase Java ejecutable + reporte de verificación | S2 | Plantilla `GeneratedHomeSystem_Plantilla` → Java ejecutable + reporte en `source_gen` (generar `v1_cerradura` y ejecutar); falta captura | ✅ |

## Hito 2

| ID | Requisito | Sesión | Evidencia | Estado |
|---|---|---|---|---|
| H2-1 | Repo Git con proyecto MPS funcional | S1 | Rama `feature/s1-estructura-semantica` + PR S1; tag `v0.2-hito2` pendiente | 🟨 |
| H2-2 | Structure, Editor, Constraints, Typesystem completos | S1 (+ tabla S3) | Structure, Editor, Constraints y Typesystem hechos; tabla δ queda para S3 | 🟨 |
| H2-3 | ≥ 3 modelos válidos en la Sandbox | S1 | `domus.lang.sandbox.validos.v1_cerradura`, `v2_alarma`, `v3_casa`: 0 errores | ✅ |
| H2-4 | ≥ 3 modelos inválidos que muestren errores de contexto y tipos | S1 | `domus.lang.sandbox.invalidos.i1_alcance`..`i4_restricciones`: i1 = 3 errores de alcance + 1 warning (inalcanzable); i2 = 1 error + 1 warning; i3 = 1 error; i4 = 5 errores | ✅ |

## Hito 3

| ID | Requisito | Sesión | Evidencia | Estado |
|---|---|---|---|---|
| H3-1 | Repositorio final con razonador y generador | S2 | Razonador y generador en rama `feature/s2-razonador-generador`; falta merge a `develop` y tag `v1.0-hito3` (S3) | 🟨 |
| H3-2 | Pruebas `jetbrains.mps.lang.test` que validen **errores detectados** | S2 | `NodesTestCase` con `has error` en `ErroresDeReglas` y `AdvertenciasDelRazonador` (solution `domus.tests`, 60 pruebas en verde) | ✅ |
| H3-3 | Pruebas que validen **inferencias generadas** | S2 | `InferenciasCerradura` (tipos, `has type`) y `RazonadorTest` (BTestCase) en `domus.tests` | ✅ |
| H3-4 | Video 12–15 min, los 3 participan, estructura obligatoria | Final | Video | ⬜ |

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
| `.gitignore` con `source_gen`, `classes_gen`, `.mps/workspace.xml` desde el día 1 | `.gitignore` incluido en el kit |
