# Entrega final — guía para Erika

Hola, Erika. Esta guía te dice **qué está terminado** y **qué te toca a ti**: grabar el video, redactar el documento y coordinar la prueba con un usuario externo (D1). La parte técnica está terminada y probada: no tienes que programar ni arreglar nada.

---

## a) Qué es Domus, en 5 líneas
1. Domus es un **lenguaje para describir casas inteligentes**: dispositivos (cerradura, luz…), sus estados, los eventos que los hacen cambiar, reglas de seguridad y permisos de las personas.
2. Está hecho con **JetBrains MPS**, una herramienta donde no se escribe texto libre, sino que se rellenan los huecos de una estructura (edición proyectiva).
3. Mientras escribes, Domus **detecta errores** (cosas fuera de lugar, permisos que no alcanzan, reglas del lenguaje) y un **razonador** analiza cada dispositivo como un autómata: bloqueos, estados inalcanzables, alarmas y reglas violadas, con un contraejemplo.
4. Además **genera un programa Java** que imprime un reporte de verificación y simula escenarios paso a paso.
5. **Todo está terminado y verificado:** las 60 pruebas automáticas pasan, los modelos de ejemplo dan los resultados esperados y hay un caso preparado para la demo en vivo.

---

## b) Instalar y correr el proyecto (checklist)
Sigue `docs/GUIA_USUARIO.md`; aquí solo el orden:

- [ ] Instalar **MPS 2026.2 (Build #MPS-262.11879.701)** y **Git** → guía **§1.1**.
- [ ] Clonar el repositorio en una ruta **sin espacios** (p. ej. `C:\ProyectoFinalCompiladores`) → guía **§1.2**.
- [ ] Abrir la carpeta **`domus`** en MPS y pulsar **Trust Project** → guía **§1.3**.
- [ ] **Build → Rebuild Project**. **Obligatorio la primera vez**; si no, verás cientos de errores falsos («Concept … was not found») → guía **§1.4**.
- [ ] Si aparece **"Add File to Git"** u otra ventana emergente: **Cancel** / cerrarla. Si MPS no responde, busca una ventana escondida → guía **§1.5**.
- [ ] Generar y ejecutar el Java con la terminal y el **JBR** de MPS (no hay que configurar Java) → guía **§7**.
- [ ] (Opcional) Correr las 60 pruebas; si sale `UnsupportedClassVersionError`, poner como JRE `C:\Program Files\JetBrains\MPS 2026.2\jbr` → guía **§7.1**.

---

## c) Video (12–15 minutos)

> **Importante:** confirmar la **estructura obligatoria** y la **participación de todos los integrantes** con la guía oficial del curso antes de grabar. El plan original (`docs/01_ANALISIS_Y_PLAN.md` §8) decía que hablan todos; ajusten el reparto entre los cuatro.

**Haz un ensayo completo antes de grabar** (sobre todo la demo: `docs/GUION_DEMO.md` lo pide expresamente).

| Minutos | Bloque | Qué contar | De dónde sacarlo |
|---|---|---|---|
| 0:00–2:00 | **Problema y dominio** | Qué problema resuelve Domus, por qué un lenguaje propio, la pregunta de investigación | `docs/01_ANALISIS_Y_PLAN.md` §4; README (primer párrafo) |
| 2:00–4:00 | **Mapeo MPS ↔ Teoría de la Computación** | Structure = AST y gramática de árboles; Editor = sintaxis concreta y edición proyectiva; Constraints/Typesystem = gramática sensible al contexto e inferencia de tipos; Razonador/Generator = autómatas, Kleene, semántica operacional, decidibilidad | `docs/03_TRAZABILIDAD_GUIA.md`, tabla "Mapeo obligatorio MPS ↔ Teoría de la Computación" |
| 4:00–6:30 | **Arquitectura** | Los 4 módulos; los conceptos del lenguaje; reglas de alcance y de tipos; el razonador (autómata por dispositivo, políticas como expresiones regulares) | `docs/02_ESPECIFICACION_FORMAL.md` §0, §1, §3, §4; `docs/BITACORA.md` (Sesiones 1 y 2) |
| 6:30–11:30 | **Demo en vivo** | Escribir con la tabla δ, provocar errores de alcance y tipos, un bloqueo y una política violada con contraejemplo, corregir, generar y ejecutar | **`docs/GUION_DEMO.md`** (≈ 5 min, clic por clic, con lo que hay que decir) |
| 11:30–13:30 | **Análisis crítico** | Por qué todo es **decidible** (autómatas finitos) y dónde dejaría de serlo; costo de los algoritmos; limitaciones y decisiones aceptadas; lo que quedó fuera (escritura de regex "como texto", vista de resultados, pruebas de editor) | `docs/02_ESPECIFICACION_FORMAL.md` **§4.7** (decidibilidad) y **§7** (decisiones y limitaciones); tabla de complejidad en `docs/BITACORA.md` (Sesión 2); `docs/sesiones/HANDOFF_S3.md` §3 |
| 13:30–14:30 | **Cierre** | Resumen y trabajo futuro | Frase de cierre de `docs/GUION_DEMO.md`; `HANDOFF_S3.md` §3 |

---

## d) Documento técnico

> Confirmar con la guía oficial el formato y la extensión (el plan original decía **máx. 4 páginas, PDF**).

| Sección sugerida | De dónde sacarla |
|---|---|
| 1. Problema y justificación del DSL | `01_ANALISIS_Y_PLAN.md` §4 |
| 2. Pregunta de investigación | `01_ANALISIS_Y_PLAN.md` §4 |
| 3. Diseño del lenguaje (sintaxis abstracta y concreta, tabla δ) | `02_ESPECIFICACION_FORMAL.md` §1 y §2 |
| 4. Semántica estática (alcance, reglas, tipos) | `02_ESPECIFICACION_FORMAL.md` §3 |
| 5. Razonador (autómatas, Kleene 1 y 2, políticas, simulador) | `02_ESPECIFICACION_FORMAL.md` §4; tabla de complejidad en `BITACORA.md` (Sesión 2) |
| 6. Generación de código | `02_ESPECIFICACION_FORMAL.md` §5 |
| 7. Validación (modelos de ejemplo, pruebas 60/60, prueba D1) | `03_TRAZABILIDAD_GUIA.md` (filas B, C, D, H) y resultado de la prueba D1 |
| 8. Decisiones, limitaciones y decidibilidad | `02_ESPECIFICACION_FORMAL.md` §7 y §4.7 |
| 9. Proceso y roles del equipo | README (tabla de integrantes); `BITACORA.md` |

---

## e) Capturas
La lista completa está al final de `docs/03_TRAZABILIDAD_GUIA.md`. En Windows, **Windows + Shift + S** permite recortar una parte de la pantalla.

| Para | Captura | Estado / cómo tomarla |
|---|---|---|
| A5 | Tabla δ | ✅ `docs/img/tabla_delta_v1.png` |
| A5 / estilos | Editor antes y después de los estilos | ✅ `docs/img/antes_estilos_v3.png`, `despues_estilos_v1.png`, `despues_estilos_v3.png` |
| H3-2 / H3-3 | Pruebas en verde (60/60) | ✅ `docs/img/pruebas_verde.png` |
| A1–A3 | Conceptos del lenguaje | En Logical View despliega `domus.lang` → `structure` (se ven las 28 piezas). Haz doble clic en **`AlarmState`** (se ve que extiende `State`) y en **`IDeviceElement`** |
| B1 | Error de alcance | Abre `domus.lang.sandbox` → `invalidos` → `i1_alcance` → `Alcance`. En la tabla de **Cerradura**, deja el ratón sobre la fila subrayada en rojo hasta que salga el recuadro «The reference … is out of search scope» |
| B2 / B3 | Errores de tipos | `invalidos` → `i2_roles`: ratón sobre el paso subrayado del escenario («Incompatibilidad de roles…»). `invalidos` → `i3_alfabeto`: ratón sobre la política subrayada («Incompatibilidad de alfabetos…») |
| C1 / C2 | Bloqueo y política violada | Se obtienen al grabar o ensayar el **paso 3** del guion |
| C3 / D2 | Reporte y simulación en la terminal | Se obtiene en el **paso 5** del guion |

---

## f) Prueba con usuario externo (D1)
1. Busca a **una persona que no sea del equipo** (mejor si nunca ha usado MPS).
2. Instala el proyecto en su computador o usa el tuyo, ya con **Rebuild Project** hecho.
3. Dale `docs/GUIA_USUARIO.md` y pídele que haga el **ejercicio de la §8** («MiGaraje / Porton»). Dura unos 20 minutos. El ejercicio ya está comprobado: bien hecho, queda con el ✓ verde.
4. Mientras trabaja, **no le ayudes salvo que se atasque**. Rellena la **hoja de observación** de la §8: hora de inicio y fin por tarea, si lo logró solo, tropiezos y comentarios. Al final hazle las 4 preguntas.
5. **Envía la hoja rellenada a Gaby** (foto o texto) para registrarla en la bitácora y marcar D1 como hecho en la trazabilidad. Puedes resumir el resultado en el documento (sección de validación).

---

## g) Checklist final de entrega
- [ ] Proyecto instalado y **Rebuild Project** hecho en el PC donde se grabe.
- [ ] Ensayo completo de la demo (`docs/GUION_DEMO.md`), incluidos los pasos ⚠️.
- [ ] Estructura del video y participación de todos confirmadas con la guía oficial.
- [ ] Video grabado (12–15 min) y subido donde indique el curso.
- [ ] Capturas que faltan tomadas (sección e).
- [ ] Documento redactado con las secciones de la sección d) y exportado a PDF.
- [ ] Prueba D1 hecha y hoja enviada a Gaby.
- [ ] Después de grabar: `caso_en_vivo` dejado como estaba (`docs/GUION_DEMO.md`, último apartado).
- [ ] Avisar a Gaby para cerrar la release (merge a `develop` / `main` y tags).
