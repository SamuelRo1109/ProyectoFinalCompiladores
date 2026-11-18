# CLAUDE.md — Proyecto Domus (DSL con razonador en JetBrains MPS)

## Contexto
Proyecto universitario de Teoría de la Computación. Equipo de 3 que trabaja en sesiones secuenciales:
S1 (Structure, Editor básico, Constraints, Typesystem, Sandbox) → S2 (razonador, generador, pruebas) → S3 (editor UX, tabla δ, QA, release).
- Diseño (fuente única de verdad): `docs/02_ESPECIFICACION_FORMAL.md`
- Plan y reglas del equipo: `docs/01_ANALISIS_Y_PLAN.md`
- Instrucciones de la sesión en curso: `docs/sesiones/SESION_<n>_MAESTRO.md` y el `HANDOFF_S<n-1>.md` más reciente
- Checklist de la guía del curso: `docs/03_TRAZABILIDAD_GUIA.md`
- El proyecto MPS está en la subcarpeta `domus/`. Módulos: `domus.lang`, `domus.reasoner`, `domus.lang.sandbox`, `domus.tests`.

## Reglas para trabajar con MPS (obligatorias)
1. Modifica modelos MPS **solo** con las herramientas `mps_mcp_*` del servidor MCP `mps`. **Nunca** edites `.mps`, `.mpl`, `.msd` ni `.devkit` como texto.
2. Antes de trabajar carga la skill `mps-mcp-workflow` y la skill del aspecto que vas a tocar (structure, editor, constraints, behavior, typesystem, generator, tests, baselanguage).
3. Pasos pequeños. Después de cada paso valida con `mps_mcp_check_root_node_problems`.
4. Después de cambiar typesystem, constraints o behavior, **reconstruye el lenguaje (MAKE)** antes de consultar tipos o validar modelos.
5. Si una escritura reporta éxito pero no tiene efecto, lee `mps_mcp_read_ide_log` (`sinceMinutes=2`, `minLevel="WARN"`).
6. Si la misma operación falla dos veces, **detente** y dale al humano los pasos manuales exactos en la GUI de MPS.
7. Si una llamada se cuelga, avisa: probablemente hay un diálogo modal abierto en MPS.
8. No toques `source_gen/`, `classes_gen/`, `test_gen/` (son generados).

## Convenciones del lenguaje
- Nombres de conceptos en inglés (como en la especificación); **alias, palabras clave y mensajes de error en español**.
- Los mensajes de error deben entenderse sin saber teoría y nombrar el elemento del modelo afectado.
- Código Java/BaseLanguage del razonador en estilo compatible con BaseLanguage: sin lambdas, streams, `var`, records, switch-expressions ni text blocks.

## Git
- Nunca trabajes sobre `main` ni `develop`: rama `feature/s<n>-…`.
- Commits pequeños en español con prefijo `feat:`, `fix:`, `docs:`, `test:`, `chore:`.
- No hagas `push` salvo que el humano lo pida.

## Enseñar mientras construyes
El equipo debe defender todo en un video. Al terminar cada fase, explica en ≤ 5 líneas qué creaste y qué concepto teórico (AST, gramática sensible al contexto, inferencia de tipos, Kleene, decidibilidad, semántica operacional) materializa. Al cerrar la sesión, resume en `docs/BITACORA.md`.

## Ahorro de contexto
- El humano hará `/clear` entre fases: relee este archivo y la fase indicada antes de actuar.
- Para inserciones grandes usa los scripts/mecanismos de las skills (blueprints, inserción masiva) en vez de pegar JSON enorme en el chat.

---
<!-- Projectional Agent Toolkit: fusionar debajo de esta línea el texto guía que devuelve mps_mcp_initialize_project_for_agents -->

# Guía de agentes para el proyecto MPS (texto de `mps_mcp_initialize_project_for_agents`)

Este es un proyecto de lenguaje JetBrains MPS: la fuente de verdad son los modelos MPS, las definiciones de lenguaje y los generadores. La integración MCP con MPS es experimental.

**Carga la skill `mps-mcp-workflow` al inicio de cada sesión MPS.** Si el runtime no confirma que las skills del proyecto se cargan solas, lee `.agents/skills/mps-mcp-workflow/SKILL.md` antes de cambiar artefactos MPS. Contiene las directivas críticas, el flujo de herramientas y el índice de skills complementarias. Si faltan las carpetas `mps-*` en `.agents/skills/` y `.claude/skills/`, el proyecto no está inicializado: avisa al usuario y ofrece ejecutar `mps_mcp_initialize_project_for_agents` (no lo ejecutes sin aprobación).

## ⚠️ Nunca leas archivos de modelo MPS en crudo
No abras, parsees ni edites `.mps`, `.mpl` u otros XML de MPS como texto. Usa las herramientas `mps_mcp_*`. Si el servidor MCP no está conectado, pide al usuario que inicie MPS y lo habilite.

## ⚠️ Mantén el conjunto completo de herramientas MPS MCP
No reduzcas, difieras ni filtres el catálogo `mps_mcp_*`: mantén todas las herramientas disponibles durante toda la sesión. Una herramienta filtrada no está "no disponible": restaura el servidor completo; no recurras a herramientas de archivo ni a XML crudo.

## Selección de herramientas
Usa las herramientas MPS MCP para todo lo relacionado con modelos (módulos, modelos, nodos, aspectos, navegación, edición, validación, generación, build). Las herramientas de archivo (Read, Grep, Glob) sirven para código generado, configuración no gestionada por MPS y documentación en texto plano.
Si las llamadas MCP fallan en toda la sesión con `java.net.URISyntaxException: Illegal character in path`, la ruta del proyecto tiene un espacio: no reintentes con rutas escapadas; pide mover el proyecto a una ruta sin espacios (ver `.agents/skills/mps-mcp-workflow/references/mcp-server-troubleshooting.md`).

## El código generado es de solo lectura
`source_gen/`, `source_gen_append/` y `classes_gen/` se recrean en cada Make/Rebuild: nunca los edites. Corrige el modelo, lenguaje o generador.

## Reglas para el trabajo con MPS
- Antes de editar un aspecto (typesystem, constraints, behavior, editor, generator, structure) carga también su skill `mps-aspect-*`.
- Antes de crear/editar modelos en un lenguaje con skill DSL local (`.agents/skills/<dsl>-dsl/` o `.claude/skills/<dsl>-dsl/`), cárgala. Refréscala con `mps-dsl-memory` al descubrir detalles nuevos.
- Pasa `projectPath` en **cada** llamada `mps_mcp_*`: aquí es `D:/ProyectoFinalCompiladores/domus` (nunca la raíz del repo).
- Si hay varios proyectos MPS abiertos y no es obvio cuál, pregunta al usuario.

## Skills
Viven en `.agents/skills/<skill>/SKILL.md` o `.claude/skills/<skill>/SKILL.md`; empieza por `mps-mcp-workflow`. Para reinstalar/refrescar ver `.agents/skills/mps-mcp-workflow/references/catalog-install-and-refresh.md`.
Antes de trabajo MPS sustancial compara `build` de `.claude/skills/MPS_MCP_SKILL_VERSION.txt` con `mpsBuild` de `mps_mcp_list_open_projects` (no llames al inicializador para saber la versión). Si difieren, avisa y pregunta antes de refrescar; un refresh borra solo las carpetas `mps-*` y preserva el resto de este archivo.
