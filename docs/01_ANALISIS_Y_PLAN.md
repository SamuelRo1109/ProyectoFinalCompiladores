# 01 — Análisis del proyecto y plan de trabajo

> Proyecto: **Domus**, un DSL con razonador formal para protocolos de dispositivos domóticos, en JetBrains MPS.
> Equipo: 3 integrantes. **Tú** (backend, Sesión 1) · **Luis** (backend, Sesión 2) · **Gaby** (UI/UX + QA, Sesión 3).
> Fecha del plan: 17-nov-2026.

---

## 1. Qué pide realmente la guía (resumen operativo)

| Bloque | Lo que exige | Dónde se cumple en Domus |
|---|---|---|
| A. Expresividad | 10–15 conceptos mínimo, `extends`, interfaces de concepto, composición y referencias; **al menos una proyección no textual** (tabla `jetbrains.mps.lang.editor.table`, bloques, matriz) | 28 conceptos (ver `02_ESPECIFICACION_FORMAL.md`), jerarquías `RegexExpr`/`State`, interfaz `IDeviceElement`, **tabla de transiciones δ** |
| B. Semántica estática | Scoping + reglas de tipos (inference o checking) que eviten errores del dominio | Scopes por dispositivo; tipos `RoleType` (con subtipado) y `AlphabetType`; checking rules |
| C. Razonador | Al menos uno: verificador de consistencia, motor de inferencia o simulador | **Los tres**: consistencia sobre grafos, verificación de políticas regulares (Kleene) con contraejemplos, simulador de escenarios |
| D. Generación | Usable en la Sandbox; salida tangible (código, JSON/XML o reporte) | Clase Java ejecutable por sistema + reporte estructurado de verificación |
| Hito 2 | Repo Git con Structure, Editor, Constraints, Typesystem + **3 modelos válidos y 3 inválidos** en la Sandbox | Sesión 1 (+ tabla en Sesión 3) |
| Hito 3 | Razonador, generador y **pruebas `jetbrains.mps.lang.test`** que validen errores e inferencias; video de 12–15 min | Sesiones 2 y 3; video al final |

La lista completa, requisito por requisito, está en `03_TRAZABILIDAD_GUIA.md`. Esa lista es la que revisa Gaby antes de cada release.

---

## 2. ¿Es cierto lo que dijo el docente? ("no copien y peguen código, la herramienta no va a funcionar")

**Veredicto: es cierto en lo esencial, pero hoy hay una vía oficial que lo matiza.**

### Lo que es cierto
1. **MPS no tiene parser.** Es un editor proyectivo: lo que "escribes" son nodos de un AST, no texto. Si pegas texto (de un tutorial, de un chat o de otro proyecto) dentro de una definición de *structure*, *editor*, *constraints* o *typesystem*, MPS no lo convierte en nodos. Esa es la razón técnica del comentario del docente.
2. **Los archivos `.mps` no se pueden escribir a mano ni con IA como texto.** Se guardan como XML lleno de identificadores (IDs de nodo, de concepto, de lenguaje). Copiar `.mps` de otro proyecto o generarlos como texto rompe referencias. Quienes desarrollan herramientas de IA para MPS reportan que dejar que un modelo de lenguaje edite ese XML funciona mucho peor de lo esperado.
3. **Los tutoriales viejos no aplican tal cual.** MPS 2026.1 pasó a JDK 25, IntelliJ Platform 2026.1, deshabilitó la UI clásica y cambió varios lenguajes. Copiar pasos de un tutorial de 2019 suele fallar.

### Lo que lo matiza (y que vamos a aprovechar)
1. **"Paste as Java"**: dentro de código BaseLanguage (el "Java" de MPS) sí existen acciones oficiales que parsean Java del portapapeles y lo convierten en nodos (`Paste as Java Statements`, `Paste as Java Class Content`, etc.). Esto sirve para los **algoritmos del razonador**, no para definir el lenguaje.
2. **Projectional Agent Toolkit (MPS 2026.1+)**: MPS trae un servidor MCP integrado al que se conecta **Claude Code**. El agente no pega texto: llama herramientas (`mps_mcp_*`) que crean y modifican nodos dentro del MPS abierto, respetando restricciones, y puede validar, compilar y ejecutar. Es la forma correcta de "trabajar con Claude Code" en MPS.
3. **Límite real del toolkit**: es experimental y su API puede cambiar. En la práctica funciona muy bien para explorar, crear estructura, validar y revisar, pero **implementar funcionalidades completas de punta a punta todavía no es confiable** según quienes lo usan profesionalmente.

### Conclusión para el equipo
- Claude Code será un **copiloto que opera MPS en vivo**, no un generador de archivos para pegar.
- Habrá trabajo manual en la GUI de MPS: crear el proyecto, revisar cada aspecto, ajustar editores y tablas, reconstruir, corregir lo que el agente no logre.
- Además, el 20 % de la nota (video) exige que **los tres dominen técnicamente todo**. Por eso cada sesión deja una entrada en `docs/BITACORA.md` explicando qué se hizo y qué concepto de Teoría de la Computación materializa.

---

## 3. Viabilidad

**Viable**, con dos condiciones: acotar el lenguaje (ya está acotado en la especificación) y respetar el orden de las sesiones.

| Riesgo | Prob. | Mitigación |
|---|---|---|
| Curva de aprendizaje de MPS | Alta | Cada .md maestro trae pasos exactos y prompts; Claude Code explica cada nodo que crea |
| El agente falla en una tarea MPS | Media | Regla en `CLAUDE.md`: tras 2 fallos, el agente da los pasos manuales en la GUI |
| Versiones distintas de MPS entre los 3 | Media | **Los tres instalan la misma build** (ver §5) |
| Conflictos de merge en `.mps` | Baja | Sesiones secuenciales (nunca dos personas editando a la vez) + merge driver de MPS |
| Tabla con `jetbrains.mps.lang.editor.table` | Media | Asignada a Gaby con plan B documentado |
| Límites de uso de Claude Code | Media | Trabajar por fases, `/clear` entre fases, tool search activo, prototipar algoritmos en Java plano (barato) |
| Fecha de Hito 2 antes de la Sesión 3 | ✅ Resuelto | Sin fechas por hito; entrega final conjunta (24-nov-2026). La tabla δ es de la S3. |

**Realismo para hoy**: si empiezas pasadas las 11 p. m., lo alcanzable esta noche es el bloque P0 de la Sesión 1 (setup + structure + editores básicos + scopes). Los bloques P1 (typesystem y modelos inválidos) se pueden cerrar mañana temprano antes de pasarle el relevo a Luis. El .md maestro de la Sesión 1 marca las prioridades.

---

## 4. Dominio elegido y pregunta de investigación

**Dominio:** protocolos de dispositivos domóticos (cerraduras, alarmas, termostatos). Cada dispositivo es un **autómata finito** sobre su alfabeto de eventos; las reglas de seguridad se escriben como **expresiones regulares**; los usuarios tienen **roles jerárquicos**.

**Por qué este dominio:** conecta de forma directa con todos los temas de la asignatura:
- AST y gramáticas de árboles → metamodelo (Structure).
- Sensibilidad al contexto → scoping (una transición solo puede usar estados de su propio dispositivo).
- Sistemas de tipos → roles con subtipado y alfabetos compatibles.
- **Teorema de Kleene, parte 1** (ER → AF) → Thompson + construcción de subconjuntos + minimización.
- **Teorema de Kleene, parte 2** (AF → ER) → eliminación de estados.
- Decidibilidad → inclusión de lenguajes regulares mediante autómata producto (decidible), con contraejemplo.
- Semántica operacional → simulador paso a paso.

**Pregunta de investigación (propuesta):**
> ¿Cómo verificar de forma automática y decidible que el comportamiento de dispositivos domóticos, modelado como autómatas finitos, cumple políticas de seguridad expresadas como expresiones regulares, y cómo producir un contraejemplo mínimo cuando no las cumple?

Si el equipo prefiere otro dominio, la estructura del plan no cambia; solo hay que reescribir `02_ESPECIFICACION_FORMAL.md` **antes** de empezar la Sesión 1.

---

## 5. Herramientas y versiones (obligatorio para los 3)

| Herramienta | Versión | Nota |
|---|---|---|
| JetBrains MPS | **Misma build exacta para los 3**: la última estable 2026.1.x (≥ 2026.1.2) o 2026.2 si ya es estable | El toolkit para agentes existe desde 2026.1; las consultas al typesystem desde 2026.1.2. El número exacto queda anotado en `README.md` |
| Claude Code | Última | **Debe correr en el mismo computador donde está MPS abierto** (el servidor MCP es `localhost`). Claude Code en la web/nube no ve tu MPS |
| Git + GitHub CLI (`gh`) | Última | Para ramas, PRs y protección |
| RAM | 8 GB mínimo, 16 GB recomendado | MPS + Claude Code |

### Conexión Claude Code ↔ MPS (resumen; el detalle está en la Sesión 1)
1. MPS abierto con el proyecto → `Settings | Tools | MCP Server`: anotar el puerto (por defecto `64342`).
2. En `Exposed Tools`, desactivar las herramientas que **no** empiezan por `mps_mcp_`.
3. El repo ya trae `.mcp.json` apuntando a `http://localhost:64342/stream` (cambiar el puerto si MPS muestra otro).
4. Abrir Claude Code en la raíz del repo → `/mcp` para comprobar que aparece el servidor `mps`.
5. Una sola vez por repositorio: pedirle a Claude que ejecute `mps_mcp_initialize_project_for_agents` (instala las skills `mps-*` en `.claude/skills/` y `.agents/skills/`). **Se suben al repo**, así Luis y Gaby no repiten el paso si usan la misma build de MPS.

---

## 6. GitFlow y reglas del repositorio

```
main ────●───────────────────────●──────────────  (solo releases: v0.2-hito2, v1.0-hito3)
          \                     / \
release    \       release/hito-2   release/hito-3
            \                 /           /
develop ─────●────●──────────●────●──────●─────  (integración; rama por defecto)
                   \        /      \    /
feature             feature/s1-…    feature/s2-…  feature/s3-…
```

**Reglas**
- `main` y `develop` **protegidas**: solo por Pull Request, **mínimo 1 aprobación**, aprobaciones obsoletas se descartan si hay nuevos commits, sin force-push, aplica también a administradores.
- Nadie aprueba su propio PR. **El relevo de cada sesión es la revisión del PR anterior**: Luis revisa y aprueba el PR de la Sesión 1; Gaby el de la Sesión 2; tú el de la Sesión 3.
- Ramas: `feature/s1-estructura-semantica`, `feature/s2-razonador-generador`, `feature/s3-editor-ux-qa`, `release/hito-2`, `release/hito-3`, `hotfix/*`.
- **Nota:** la rama `release/hito-2` ya no se usa (no hay release separada del Hito 2); los tags `v0.2-hito2` y `v1.0-hito3` los pone Gaby en la release final (S3).
- Commits en español con prefijo: `feat:`, `fix:`, `docs:`, `test:`, `chore:`.
- **Repositorio privado + protección de ramas** exige GitHub Pro/Team. Opciones: (a) repo público, o (b) activar GitHub Pro gratis con el **GitHub Student Developer Pack** del dueño del repo. El script `scripts/configurar_github.sh` aplica todo.
- **MPS y Git**: instalar los *MPS VCS Add-ons* (acción `Install MPS VCS Add-ons`, se busca con `Ctrl+Shift+A`). Eso registra el merge driver de modelos y crea el `.gitattributes`. **Nunca** resolver un conflicto de `.mps` editando el XML.
- Los modelos inválidos de la Sandbox se marcan con **"Do not generate"** en sus propiedades de modelo, para que no bloqueen la generación.

---

## 7. Plan de trabajo: 3 sesiones

| | **Sesión 1 — Tú** | **Sesión 2 — Luis** | **Sesión 3 — Gaby** |
|---|---|---|---|
| Rama | `feature/s1-estructura-semantica` | `feature/s2-razonador-generador` | `feature/s3-editor-ux-qa` |
| Objetivo | Infraestructura + **Hito 2** (excepto la tabla) | **Razonador + generador + pruebas** (Hito 3 backend) | **Editor proyectivo de calidad + tabla δ + QA end-to-end + release** |
| Aspectos MPS | Structure, Editor básico, Constraints, Typesystem, Sandbox 3+3 | Solution `domus.reasoner` (BaseLanguage), Behavior, checking rules del razonador, Generator/TextGen, `jetbrains.mps.lang.test` | Editor (tabla, estilos, notación regex, inspector, vista de resultados), Editor tests, guía de usuario, caso demo |
| Teoría que materializa | AST/gramática de árboles, sensibilidad al contexto, tipos y subtipado | Kleene 1 y 2, decidibilidad de inclusión, grafos, semántica operacional/denotacional | Sintaxis concreta, edición proyectiva sin ambigüedad |
| Entrada | Este kit | `HANDOFF_S1.md` + PR de S1 | `HANDOFF_S2.md` + PR de S2 |
| Salida | PR → `develop` + `HANDOFF_S1.md` | PR → `develop` + `HANDOFF_S2.md` | PR → `develop`, `release/hito-3` → `main`, tag `v1.0-hito3` |
| Release | Sin release separada del Hito 2; Gaby pone los tags `v0.2-hito2` y `v1.0-hito3` en la release final (S3). | — | Release final |

**Definition of Done común a todas las sesiones**
- `Rebuild` del proyecto sin errores (los modelos inválidos sí tienen errores, a propósito).
- Model checker sin errores en modelos válidos.
- Todas las pruebas existentes en verde.
- `docs/BITACORA.md` actualizado (qué se hizo + qué concepto teórico materializa).
- `HANDOFF_Sx.md` escrito a partir de `PLANTILLA_HANDOFF.md`.
- PR abierto hacia `develop` con la plantilla completa.

---

## 8. Después de las 3 sesiones: documento (Hito 1) y video

- **Documento técnico (máx. 4 páginas, PDF)**: sale casi directo de `02_ESPECIFICACION_FORMAL.md` (problema, justificación del DSL, pregunta de investigación, gramática abstracta, reglas del razonador, roles).
- **Video (12–15 min, los 3 hablan)**, reparto sugerido:
  - 0:00–3:00 — **Tú**: dominio, pregunta de investigación, mapa MPS ↔ teoría.
  - 3:00–7:00 — **Tú** (Structure/Constraints/Typesystem) + **Luis** (razonador).
  - 7:00–12:00 — **Gaby**: demo en vivo en la Sandbox (detectar, deducir, generar).
  - 12:00–15:00 — **Luis**: complejidad y límites; **Gaby**: trabajo futuro y cierre.
