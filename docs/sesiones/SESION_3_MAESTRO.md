# SESIÓN 3 — Editor proyectivo de calidad (UI/UX) + tabla δ + QA end-to-end + release

> **Responsable:** Gaby · **Rama:** `feature/s3-editor-ux-qa` · **Revisor del PR:** Tú
> **Entrada:** PR de la Sesión 2 + `docs/sesiones/HANDOFF_S2.md` (manda sobre este archivo si hay diferencias).
> **Objetivo:** que un usuario externo pueda escribir un modelo completo sin ayuda, cumplir la proyección no textual, validar todo el sistema y publicar la versión final.
> **Teoría que defiendes en el video:** sintaxis concreta vs. abstracta, edición proyectiva y eliminación de ambigüedad; demo en vivo.

## Prioridades

| Prioridad | Fases |
|---|---|
| **P0** | 0 Preparación y revisión del PR S2 · 1 Tabla δ · 3 Estilos y legibilidad · 6 Caso demo · 8 QA end-to-end · 9 Release |
| **P1** | 2 Escritura fluida de expresiones regulares · 4 Vista de resultados del razonador · 7 Guía de usuario |
| **P2** | 5 Pruebas de editor |

---

## FASE 0 — Preparación y revisión del PR S2

1. Instala **la misma build de MPS** de `README.md`, Claude Code, Git y `gh`. Acepta la invitación al repo.
2. `git clone <repo> && cd domus-dsl-mps && gh pr checkout <número-del-PR-S2>`
3. Abre `domus/` en MPS → `Ctrl+Shift+A` → **Install MPS VCS Add-ons**.
4. `Settings → Tools → MCP Server`: puerto y solo herramientas `mps_mcp_*` expuestas. `claude` en la raíz → `/mcp`.
5. **Revisa el PR S2 como usuaria** (no solo como técnica):
   - [ ] `Rebuild Project` sin errores; `domus.tests → Run tests` todo en verde.
   - [ ] En `validos.v1_cerradura`: rompe algo (borra una transición) y mira si el mensaje del razonador se entiende sin saber teoría. Anota cada mensaje confuso.
   - [ ] Genera `v1` y ejecuta el `main`: ¿la salida se entiende?
   - Aprueba (`gh pr review --approve`) o pide cambios. Merge. Luego:
```bash
git checkout develop && git pull
git checkout -b feature/s3-editor-ux-qa
```

---

## FASE 1 — Tabla δ de transiciones (P0, requisito obligatorio de la guía)

**Prompt:**
```
Lee CLAUDE.md y docs/02_ESPECIFICACION_FORMAL.md §2. Carga las skills mps-mcp-workflow y
mps-aspect-editor.
En el editor de Device reemplaza la lista de transiciones por una TABLA usando el lenguaje
jetbrains.mps.lang.editor.table (agrégalo como used language del aspecto editor y la dependencia
jetbrains.mps.lang.editor.table.runtime): encabezados "Origen | Evento | Destino", una fila por
Transition, celdas editables con completado (respetando los scopes existentes), poder agregar
una fila nueva con Enter al final y borrar una fila.
Reconstruye y muéstrame el resultado en validos.v1_cerradura.
Si el lenguaje de tablas exige un TableModel en BaseLanguage, impleméntalo y explícame cada método.
```
**Plan B** (si después de 2 intentos no funciona): la guía también acepta "bloques estructurados o notación matricial". Pide a Claude una **matriz de transición** estados × eventos (solo lectura, calculada con celdas de consulta) **más** la lista editable, y documenta la decisión en la bitácora. Avísale al equipo, porque el docente nombra explícitamente `jetbrains.mps.lang.editor.table`.

**Verificación:** agregar, editar y borrar transiciones **solo con teclado**.
**Commit:** `feat(editor): tabla δ de transiciones`

> Si el Hito 2 aún no se ha entregado: haz el release del Hito 2 ahora (ver Fase 9, con `release/hito-2` y tag `v0.2-hito2`).

---

## FASE 2 — Escritura fluida de expresiones regulares (P1)

Problema típico de los editores proyectivos: el usuario quiere escribir `a | b` "como texto".

**Prompt:**
```
Con la skill mps-aspect-editor, mejora la edición de RegexExpr en domus.lang:
- side transformations: escribir "|" o "." (concatenación) a la derecha de una expresión la envuelve
  en UnionExpr/ConcatExpr; escribir "*", "+" o "?" la envuelve en el unario correspondiente;
  escribir "(" a la izquierda la envuelve en ParenExpr.
- al borrar un operador binario, conservar el operando izquierdo.
- completado de eventos mostrando "Dispositivo.evento".
Reconstruye y pruébalo escribiendo ((desbloquear · (abrir · cerrar)* · bloquear) | (forzar · desactivar))*
desde cero, solo con teclado.
```
**Commit:** `feat(editor): edición fluida de expresiones regulares`

---

## FASE 3 — Estilos y legibilidad (P0)

**Prompt:**
```
Con la skill mps-aspect-editor, aplica un estilo coherente a domus.lang:
- palabras clave en negrita y un color; nombres de dispositivos destacados;
- AlarmState en rojo; estado inicial con "→" y de aceptación con "◎";
- secciones plegables (roles, dispositivos, políticas, escenarios) y textos vacíos guía
  ("<agrega un evento>", "<sin transiciones>");
- propiedades secundarias en el Inspector cuando sobrecarguen la línea;
- íconos para HomeSystem, Device, State, Policy y Scenario si es posible.
Mantén la sintaxis de docs/02 §2. Reconstruye y muéstrame v1 y v3.
```
**Tú:** revisa contraste y orden de lectura. Captura de pantalla antes/después para el documento.
**Commit:** `feat(editor): estilos y legibilidad`

---

## FASE 4 — Vista de resultados del razonador (P1)

**Prompt:**
```
Diseña en domus.lang un concepto raíz VerificationView con referencia a un HomeSystem
y un editor de SOLO LECTURA que muestre, llamando al comportamiento/razonador existente:
por dispositivo (alcanzables, inalcanzables, deadlocks, trampas, alarma y su traza mínima,
ER equivalente por Kleene 2) y por política (veredicto ✔/✘, contraejemplo, tamaño del AFD mínimo)
y por escenario (traza de estados). Usa una tabla o bloques. Agrega una intention en HomeSystem:
"Crear vista de verificación". Actualiza docs/02 (nuevo concepto) en el mismo commit.
```
**Commit:** `feat(editor): vista de resultados del razonador`

---

## FASE 5 — Pruebas de editor (P2)

**Prompt:**
```
Con la skill mps-tests, crea EditorTestCase en domus.tests para: envolver con "|" y "*",
agregar una fila a la tabla δ y la intention "Crear vista de verificación". Ejecuta y corrige.
```
**Commit:** `test(editor): pruebas de edición`

---

## FASE 6 — Caso demo para el video (P0)

**Prompt:**
```
Crea el modelo domus.lang.sandbox demo.caso_en_vivo con un HomeSystem pequeño (2 dispositivos)
y escribe docs/GUION_DEMO.md: guion de 5 minutos para mostrar en vivo, paso a paso,
(1) escribir un dispositivo con la tabla δ, (2) un error de alcance y uno de tipos atrapados,
(3) el razonador detectando un deadlock y una política violada con contraejemplo,
(4) corregir el modelo y ver todo en verde, (5) generar y ejecutar el Java y leer el reporte.
Incluye qué decir en cada paso y cuánto dura.
```
**Tú:** ensaya el guion 2 veces cronometrando.
**Commit:** `docs: caso y guion de la demo en vivo`

---

## FASE 7 — Guía de usuario (P1)

**Prompt:**
```
Escribe docs/GUIA_USUARIO.md para alguien que nunca usó MPS: instalar, abrir el proyecto,
crear un modelo en la sandbox, atajos clave (Ctrl+Space, Alt+Enter, Ctrl+Shift+T, Ctrl+Z),
cada construcción del lenguaje con ejemplo, cómo leer los errores del razonador,
cómo generar y ejecutar. Deja marcadores [captura: …] donde yo pondré pantallazos.
Actualiza README.md con un "inicio rápido" de 10 líneas.
```
**Tú:** agrega las capturas a `docs/img/`.
**Commit:** `docs: guía de usuario`

---

## FASE 8 — QA end-to-end (P0)

1. **Clon limpio** en otra carpeta → abrir → `Rebuild Project` → `Run tests` → generar `v1` → ejecutar. Anota cualquier fallo.
2. **Prueba con un usuario externo** (requisito D1): alguien ajeno al equipo, con `GUIA_USUARIO.md`, escribe un dispositivo y una política. Anota tiempo y tropiezos en `docs/BITACORA.md`.
3. **Trazabilidad**: recorre `docs/03_TRAZABILIDAD_GUIA.md` fila por fila y marca ✅ con evidencia (ruta del archivo o captura). Todo lo que no esté ✅ va al handoff como bloqueo.
4. **Prompt de auditoría:**
```
Audita el proyecto contra docs/03_TRAZABILIDAD_GUIA.md: valida todos los módulos, ejecuta las pruebas
y lista cada requisito con evidencia concreta (nodo, regla, prueba o archivo) o "FALTA".
```

---

## FASE 9 — Cierre, release y relevo final (OBLIGATORIO)

```bash
# 1. PR de la Sesión 3
git add -A && git commit -m "docs: bitácora y QA de la Sesión 3"
git push -u origin feature/s3-editor-ux-qa
gh pr create --base develop --title "S3: Editor UX, tabla δ, QA y documentación" \
  --body-file docs/sesiones/HANDOFF_S3.md --reviewer <tu-usuario>
# 2. Cuando esté aprobado y fusionado: release final
git checkout develop && git pull
git checkout -b release/hito-3 && git push -u origin release/hito-3
gh pr create --base main --head release/hito-3 --title "Release Hito 3 (v1.0)" --reviewer <usuario-luis>
# 3. Tras aprobar y fusionar en main
git checkout main && git pull
git tag -a v1.0-hito3 -m "Hito 3: razonador, generador y pruebas" && git push origin v1.0-hito3
# 4. Devolver main a develop si hubo cambios en la release
gh pr create --base develop --head main --title "Sincronizar main → develop"
```
Escribe `docs/sesiones/HANDOFF_S3.md` (con la plantilla) con el estado final y lo que falta para el **documento** y el **video**.
