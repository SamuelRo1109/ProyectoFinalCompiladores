# HANDOFF S3 → Entrega final (Erika)

**De:** Gaby · **Para:** Erika (video, documento y prueba D1) y equipo · **Fecha:** 23-nov-2026 · **Rama / PR:** `feature/s3-editor-ux-qa` → `develop` (PR de S3)
**Build exacta de MPS usada:** MPS 2026.2 (Build #MPS-262.11879.701)

## 1. Qué quedó hecho
| Aspecto / fase | Estado | Nodos o archivos principales (nombres REALES) |
|---|---|---|
| Fase 0 — Preparación y revisión del PR S2 | ✅ | Diagnóstico de la sandbox; `invalidos.i1_alcance` ajustado como inválido de contexto puro (3 E + 1 W); prioridad de hallazgos del razonador anotada en `02_ESPECIFICACION_FORMAL.md` §4.2 |
| Fase 1 — Tabla δ (A5) | ✅ | `Device_Editor`, `Transition_Editor` y clase `TablaDelta` en `domus.lang.editor`; captura `docs/img/tabla_delta_v1.png` |
| Fase 2 — Escritura fluida de regex | ⬜ fuera de alcance | Ver §3 |
| Fase 3 — Estilos y legibilidad | ✅ | Hoja `DomusEstilos` (clases `PalabraClave`, `NombreDestacado`, `ValorSecundario`), secciones plegables y textos guía en listas vacías; capturas `docs/img/antes_estilos_v3.png`, `despues_estilos_v1.png`, `despues_estilos_v3.png` |
| Fase 4 — Vista de resultados del razonador | ⬜ fuera de alcance | Ver §3 |
| Fase 5 — Pruebas de editor | ⬜ fuera de alcance | Ver §3 |
| Fase 6 — Caso demo | ✅ | Modelo `domus.lang.sandbox.demo.caso_en_vivo` (`CasaDemo`, 0 errores, generable); `docs/GUION_DEMO.md` ensayado vía MCP y en `powershell.exe` |
| Fase 7 — Guía de usuario | ✅ | `docs/GUIA_USUARIO.md` (instalación, atajos, lenguaje, mensajes literales, generación, pruebas §7.1, ejercicio D1 §8); README con "Inicio rápido" |
| Fase 8 — QA y auditoría | ✅ | `domus.tests` 60/60 (`docs/img/pruebas_verde.png`); sandbox revalidada; v1 generado y ejecutado; clon limpio sin archivos generados; `03_TRAZABILIDAD_GUIA.md` auditada; decisiones en `02_ESPECIFICACION_FORMAL.md` §7 |
| Fase 9 — Cierre y relevo | 🟨 | Este handoff y `docs/ENTREGA_ERIKA.md` hechos. Faltan el push, el PR hacia `develop` y los tags (gh no estaba instalado en la PC de Gaby) |

## 2. Cómo verificarlo en 5 minutos
1. Clona la rama, abre `domus/` en MPS 2026.2 → **Trust Project** → **Build → Rebuild Project** (obligatorio en un clon nuevo).
2. Abre `domus.lang.sandbox` → `validos` → `v1_cerradura` → `CasaSegura`: la tabla δ debe verse alineada, con encabezado en negrita y bordes, y arriba a la derecha el ✓ verde.
3. Validación esperada de la sandbox:

   | Modelo | Errores | Warnings |
   |---|---|---|
   | v1, v2, v3 y `demo.caso_en_vivo` | 0 | 0 |
   | `i1_alcance` | 3 | 1 |
   | `i2_roles` | 1 | 1 |
   | `i3_alfabeto` | 1 | 0 |
   | `i4_restricciones` | 5 | 0 |
4. Pruebas: clic derecho en `domus.tests@tests` → **Run Tests** → «Tests passed: 60 of 60».
5. Generación: clic derecho en `caso_en_vivo` → **Generate Model** y luego los comandos de `docs/GUION_DEMO.md`, paso 5 (PowerShell con el JBR de MPS). Debe imprimirse el reporte y el escenario ACEPTADO.

## 3. Pendiente (en orden de prioridad)
| Prioridad | Tarea | Por qué quedó pendiente | Responsable |
|---|---|---|---|
| P0 | Push de la rama, PR hacia `develop` y merge | gh no estaba instalado/autenticado en la PC de Gaby | Gaby (con gh) |
| P0 | Tags `v0.2-hito2` y `v1.0-hito3` (H2-1, H3-1) | Se ponen al hacer merge de la release | Equipo |
| P0 | Video de 12–15 min (H3-4) | Fuera del trabajo técnico | Erika (ver `docs/ENTREGA_ERIKA.md`) |
| P0 | Documento técnico | Fuera del trabajo técnico | Erika |
| P1 | Prueba con usuario externo (D1) | Requiere una persona ajena al equipo | Erika (hoja en `GUIA_USUARIO.md` §8) |
| P1 | Capturas que faltan para el documento | Se toman al grabar o abriendo MPS | Erika (lista en `03_TRAZABILIDAD_GUIA.md`) |
| — | Fase 2: escribir regex "como texto" (side transforms) | Fuera de alcance. Era P1; el requisito obligatorio de la guía (proyección no textual) ya lo cumple la tabla δ, y la edición de arriba hacia abajo funciona y está explicada en la guía (§5.4). Tocar los menús del editor a última hora arriesgaba el editor ya verificado | — |
| — | Fase 4: vista de resultados del razonador | Fuera de alcance. Los resultados ya se ven en vivo como errores/warnings/infos y en el reporte generado (requisitos C1–C3 y D2 cumplidos). Un concepto nuevo exigía tocar la estructura | — |
| — | Fase 5: pruebas de editor (`EditorTestCase`) | Fuera de alcance (P2). Dependían de las fases 2 y 4. La tabla δ se verificó a mano con teclado; las 60 pruebas cubren errores e inferencias (H3-2, H3-3) | — |

## 4. Problemas conocidos y trucos
- **Clon nuevo:** sin **Rebuild Project** salen cientos de errores falsos («Concept … was not found», «Language domus.lang can't be loaded») y el generador falla con `IDeviceElement__BehaviorDescriptor`. La sesión S3 fue la prueba real de esto en una PC nueva.
- **Diálogos modales** de MPS (p. ej. "Add File to Git") bloquean al agente MCP: hay que cerrarlos.
- **Ejecutar el Java generado:** la sandbox tiene la compilación dentro de MPS desactivada (`compile="off"`). Se ejecuta desde la terminal con el `javac`/`java` del JBR de MPS (`docs/GUION_DEMO.md`, paso 5).
- **Pruebas:** la configuración «Pruebas Domus» se guarda en `domus/.mps/workspace.xml` (local, no se versiona). Ver `GUIA_USUARIO.md` §7.1.
- **Tabla δ:** se alinea rellenando con espacios y depende de la fuente monoespaciada del editor. Una fila recién creada se ve desalineada hasta rellenarla.
- **Conexión MCP en Windows:** usar SSE (ver `CLAUDE.md`).

## 5. Cambios al diseño
- §2: la tabla δ es una **rejilla `table-component`**, no `jetbrains.mps.lang.editor.table` (exige un nodo por casilla y `Transition` usa referencias).
- §4.2: **prioridad de hallazgos** del razonador: un hallazgo por estado (inalcanzable > alarma > deadlock > trampa).
- §7 (nuevo): decisiones y limitaciones aceptadas por el equipo:
  - mensaje de alcance en inglés (limitación de MPS);
  - error doble de nombres (decisión de diseño);
  - intentions opcionales fuera de alcance;
  - política `SesionCompleta` de v2 aceptada.
- `invalidos.i1_alcance`: `Cerrada` y `Apagada` marcados ◎ para que sea un inválido de contexto puro.

`docs/02_ESPECIFICACION_FORMAL.md` ya refleja todo lo anterior.

## 6. Estado de la trazabilidad
- Pasaron a ✅ en S3: A5, H2-2, H3-2, H3-3 (re-ejecutadas: 60/60). Toda la evidencia se auditó fila por fila en la Fase 8.
- Quedan 🟨: D1 (prueba con usuario externo, Erika), H3-4 (video, Erika), H2-1 y H3-1 (tags al cerrar la release).
- Lista "Capturas para el documento" al final de `03_TRAZABILIDAD_GUIA.md`.

## 7. Checklist del PR
- [x] Rebuild del proyecto sin errores (salvo `invalidos.*`)
- [x] Pruebas existentes en verde (60/60 en `domus.tests`)
- [x] `docs/BITACORA.md` actualizado (Sesión 3: fases 0, 1, 3, 6, 7 y 8)
- [x] Sin archivos generados en el commit (verificado con un clon limpio)
