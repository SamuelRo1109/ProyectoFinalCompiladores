# 03 — Matriz de trazabilidad con la guía del proyecto

> Cada fila es un requisito literal de la guía. Antes de cada release, Gaby marca la evidencia.
> Estado: ⬜ pendiente · 🟨 en curso · ✅ hecho (con evidencia)

## Pilar A — Expresividad del dominio

| ID | Requisito de la guía | Implementación en Domus | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| A1 | Mínimo 10–15 conceptos propios del dominio | 28 conceptos (`02_ESPECIFICACION_FORMAL.md` §1.1) | S1 | Captura del modelo `structure` | ⬜ |
| A2 | Uso de herencia (`extends`) | `AlarmState extends State`; jerarquía `RegexExpr` | S1 | Captura de `AlarmState` y `BinaryRegexExpr` | ⬜ |
| A3 | Interfaces de concepto | `IDeviceElement` (+ `INamedConcept`) | S1 | Captura | ⬜ |
| A4 | Relaciones de composición/referencia | Hijos de `Device`; refs de `Transition` | S1 | Captura | ⬜ |
| A5 | Al menos una proyección no textual (`jetbrains.mps.lang.editor.table`, bloques o matriz) | Tabla δ de transiciones en el editor de `Device` | S3 (o S2 si vence el Hito 2) | Captura de la tabla en la Sandbox | ⬜ |

## Pilar B — Semántica estática

| ID | Requisito | Implementación | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| B1 | Scoping: referencias solo a elementos válidos del contexto | 7 scopes (§3.1) | S1 | Modelo `invalidos.i1_alcance` + test | ⬜ |
| B2 | Reglas de tipos (inference o checking) contra errores del dominio | `RoleType` con subtipado, `AlphabetType`; checking rules R-INI, R-UNQ, R-ALM, R-SNS, R-ACY | S1 | Modelos `i2`, `i3`, `i4` + tests | ⬜ |
| B3 | Errores de dominio tipo "incompatibilidad de unidades o roles" | Rol sin privilegio (i2); alfabetos incompatibles (i3) | S1 | Tests `has error` | ⬜ |

## Pilar C — Razonador (núcleo)

| ID | Requisito | Implementación | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| C1 | Verificador de consistencia (ciclos, inalcanzables, deadlocks, contradicciones) | §4.2: inalcanzables, trampas, deadlocks, no determinismo, alarmas; ciclos de roles (R-ACY) | S2 | Errores/warnings en vivo en el editor + tests | ⬜ |
| C2 | Motor de inferencia (derivar conclusiones nuevas) | Traza mínima a alarma, contraejemplos de políticas, AFD mínimo, ER equivalente (Kleene 2) | S2 | Reporte generado + tests | ⬜ |
| C3 | Simulador operacional (paso a paso) | §4.6 escenarios con traza de estados | S2 | Salida del `main` generado + tests | ⬜ |

## Pilar D — Uso práctico y generación

| ID | Requisito | Implementación | Sesión | Evidencia | Estado |
|---|---|---|---|---|---|
| D1 | Un usuario externo escribe un modelo completo en la Sandbox y obtiene un resultado | Guía de usuario + caso demo | S3 | Prueba con alguien ajeno al equipo | ⬜ |
| D2 | Traducción a artefacto útil (código, JSON/XML o reporte) | Clase Java ejecutable + reporte de verificación | S2 | Archivos en `source_gen` + ejecución | ⬜ |

## Hito 2

| ID | Requisito | Sesión | Evidencia | Estado |
|---|---|---|---|---|
| H2-1 | Repo Git con proyecto MPS funcional | S1 | Enlace + tag `v0.2-hito2` | ⬜ |
| H2-2 | Structure, Editor, Constraints, Typesystem completos | S1 (+ tabla S3) | Rebuild limpio | ⬜ |
| H2-3 | ≥ 3 modelos válidos en la Sandbox | S1 | `validos.v1..v3` | ⬜ |
| H2-4 | ≥ 3 modelos inválidos que muestren errores de contexto y tipos | S1 | `invalidos.i1..i4` | ⬜ |

## Hito 3

| ID | Requisito | Sesión | Evidencia | Estado |
|---|---|---|---|---|
| H3-1 | Repositorio final con razonador y generador | S2 | Tag `v1.0-hito3` | ⬜ |
| H3-2 | Pruebas `jetbrains.mps.lang.test` que validen **errores detectados** | S2 | `NodesTestCase` con `has error` | ⬜ |
| H3-3 | Pruebas que validen **inferencias generadas** | S2 | Tests del razonador y del reporte | ⬜ |
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
