# CLAUDE.md — Proyecto Domus (DSL con razonador en JetBrains MPS)

## Contexto
Proyecto universitario de Teoría de la Computación. Equipo de 3 que trabaja en sesiones secuenciales:
S1 (Structure, Editor básico, Constraints, Typesystem, Sandbox) → S2 (razonador, generador, pruebas) → S3 (editor UX, tabla δ, QA, release).
- Diseño (fuente única de verdad): `docs/02_ESPECIFICACION_FORMAL.md`
- Plan y reglas del equipo: `docs/01_ANALISIS_Y_PLAN.md`
- Instrucciones de la sesión en curso: `docs/sesiones/SESION_<n>_MAESTRO.md` y el `HANDOFF_S<n-1>.md` más reciente
- Checklist de la guía del curso: `docs/03_TRAZABILIDAD_GUIA.md`
- El proyecto MPS está en la subcarpeta `domus/`. Módulos: `domus.lang`, `domus.reasoner`, `domus.sandbox`, `domus.tests`.

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
