# HANDOFF S2 → S3

**De:** Luis · **Para:** Gaby · **Fecha:** 19-nov-2026 · **Rama / PR:** `feature/s2-razonador-generador` → `develop` (PR de S2)
**Build exacta de MPS usada:** MPS 2026.2 (MPS-262.11879.701)

> **El primer paso de Gaby es revisar y aprobar el PR de S2** (SESION_3_MAESTRO, Fase 0).

## 1. Qué quedó hecho
| Aspecto / fase | Estado | Nodos o archivos principales (nombres REALES) |
|---|---|---|
| Prototipo (F2) | ✅ | `prototipo-razonador/` (Java plano con pruebas) |
| Solution `domus.reasoner` (F3) | ✅ | Modelo `domus.reasoner.automata`: 16 clases, incl. la fachada `Razonador` y `Hallazgo`. Modelo `domus.reasoner.selftest` con `TestMain` (87/87) |
| Behavior (F4) | ✅ | `RegexExpr.toNfa` (en 9 conceptos), `Device.alphabet`, `Device.toNfa`, `Device.alarmStateIndices`, `Device.stateName`, `Device.eventName`, `Scenario.toWord` |
| Reglas del razonador (F5) | ✅ | `check_Device_Razonador`, `check_Policy_Razonador`, `check_Scenario_Razonador` |
| Generador (F6) | ✅ | Plantilla `GeneratedHomeSystem_Plantilla`, regla raíz `HomeSystem`, modelo `domus.lang.generator.util` con `ReporteDomus` |
| Pruebas (F7) | ✅ | Solution `domus.tests`: 60 pruebas en verde (`ErroresDeReglas`, `AdvertenciasDelRazonador`, `ModelosSanos`, `InferenciasCerradura`, `RazonadorTest`) |
| Tabla δ (A5), vista de resultados, intentions del razonador | ⬜ | Van en S3 |

## 2. Cómo verificarlo en 5 minutos
1. `gh pr checkout <PR-S2>`, abre `domus/` en MPS, `Build → Rebuild Project`.
2. Validar el módulo `domus.lang.sandbox` (por UUID, `perRoot=true`). Conteos esperados AHORA: v1, v2, v3 = **0 errores**; i1 = **5** (3 de alcance + 2 deadlocks reales que deja el corte), i2 = **1** (+1 warning de escenario rechazado), i3 = **1**, i4 = **5**. En v1 se esperan *infos* del razonador.
3. Generador: clic derecho en `v1_cerradura` → `Generate`; ejecuta la clase en `source_gen` y lee el reporte.
4. Pruebas: clic derecho en `domus.tests@tests` → `Run tests` (60 en verde).

## 3. Pendiente (en orden de prioridad)
| Prioridad | Tarea | Por qué quedó pendiente | Fase que la cubre |
|---|---|---|---|
| P0 | Tabla δ (A5, `jetbrains.mps.lang.editor.table`) | Fuera del alcance de S2 | S3 Fase 1 |
| P1 | Mensaje de i1 en español | Es el mensaje por defecto de MPS ("out of search scope") | S3 (QA/UX) |
| P1 | Decidir el error doble de `2estado` | Heredado de S1 (restricción de propiedad + `check_State_NombreValido`) | S3 |
| P2 | Intentions opcionales "Mostrar ER equivalente (Kleene 2)" en `Device` y "Mostrar AFD mínimo" en `Policy` | No se hicieron | S3 Fase 4 |
| P2 | Revisar la decisión sobre v2 (ver §5) | Se tomó en S2 sin consulta | S3 / equipo |

## 4. Problemas conocidos y trucos
- **Ejecutar generador/pruebas:** si el Java del sistema es < 21 aparece `UnsupportedClassVersionError` (class file 65). En *Edit Configurations* pon como JRE `C:\Program Files\JetBrains\MPS 2026.2\jbr`.
- **Conexión MCP en Windows:** el transporte `/stream` del `.mcp.json` falla con `InvalidHTTPResponse`. Usa SSE con la cabecera `IJ_MCP_SERVER_PROJECT_PATH` vía `claude mcp add --scope local` (ya documentado en `CLAUDE.md`). En *Exposed Tools* deja solo `mps_mcp_*`, sin router-only.
- Los problemas conocidos del HANDOFF S1 que sigan vigentes (diálogos modales, error doble de nombres, hallazgos de UX en `BITACORA.md`).
- i1 queda con 2 deadlocks reales además de los 3 errores de alcance: es el comportamiento correcto del razonador sobre el modelo cortado.

## 5. Cambios al diseño (si los hubo)
- Convención del AFD mínimo con sumidero (§4.3).
- El N de las políticas FORBIDDEN es el tamaño del AFD mínimo de R.
- El reporte es una **constante calculada en tiempo de generación** (macros que llaman a `domus.reasoner`).
- El Java generado usa `String[]` en vez de enums.
- **Decisión sobre v2 (sin consulta):** el razonador detectó que la política `SesionCompleta` de v2 era más estricta que el dispositivo (contraejemplo `armar · disparar · tiempoEntrada · autoSilencio · disparar · desarmar`). Se corrigió SOLO la política, añadiendo `(disparar · tiempoEntrada · autoSilencio)*` tras `armar` (lema de Arden). Reversible en 1 commit si prefieren cambiar el destino de `autoSilencio` (commit `fb4d3d5`).
- `docs/02_ESPECIFICACION_FORMAL.md` ya refleja los puntos anteriores (§4.3, §4.4 y §5).

## 6. Estado de la trazabilidad
Cambiaron: C1–C3 ✅, D2 ✅, H3-2 ✅, H3-3 ✅, H3-1 🟨 (falta el tag `v1.0-hito3`). Detalle en `docs/03_TRAZABILIDAD_GUIA.md`.

## 7. Checklist del PR
- [ ] Rebuild del proyecto sin errores (salvo `invalidos.*`)
- [x] Pruebas existentes en verde (60/60 en `domus.tests`; 87/87 en `TestMain`)
- [x] `docs/BITACORA.md` actualizado
- [ ] Sin archivos generados en el commit (`source_gen`, `classes_gen`, `test_gen`, `workspace.xml`) — verificar antes del PR
