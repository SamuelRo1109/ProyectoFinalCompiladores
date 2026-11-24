# Domus — DSL con razonador formal para protocolos domóticos (JetBrains MPS)

Lenguaje de dominio específico para describir dispositivos domóticos como **autómatas finitos**, sus políticas de seguridad como **expresiones regulares** y los permisos de usuarios como **roles jerárquicos**. Su razonador verifica consistencia, comprueba políticas de forma decidible con contraejemplos (Teorema de Kleene, partes 1 y 2) y simula escenarios paso a paso.

Proyecto de la asignatura de Teoría de la Computación.

| Integrante | Rol | Sesión |
|---|---|---|
| Samuel | Backend: Structure, Constraints, Typesystem | 1 |
| Luis | Backend: razonador, generador, pruebas | 2 |
| Gaby | UI/UX del editor proyectivo, QA y release | 3 |

## Versión de herramientas (la misma para los 3)
- JetBrains MPS: **2026.2 (Build #MPS-262.11879.701)**
- Claude Code conectado al Projectional Agent Toolkit de MPS (`.mcp.json`)

## Estructura
```
domus/                      Proyecto MPS (domus.lang, domus.reasoner, domus.lang.sandbox, domus.tests)
prototipo-razonador/        Prototipo Java plano de los algoritmos (Sesión 2)
docs/01_ANALISIS_Y_PLAN.md  Análisis, viabilidad, GitFlow y plan de sesiones
docs/02_ESPECIFICACION_FORMAL.md  Gramática abstracta, tipos y semántica del razonador
docs/03_TRAZABILIDAD_GUIA.md      Requisito de la guía → implementación → evidencia
docs/sesiones/              .md maestros de cada sesión y relevos (handoff)
docs/BITACORA.md            Bitácora de investigación
```

## Flujo de trabajo
GitFlow con `main` y `develop` protegidas (PR + 1 aprobación). Detalle en `docs/01_ANALISIS_Y_PLAN.md` §6.

## Inicio rápido
1. Instala **JetBrains MPS 2026.2 (Build #MPS-262.11879.701)** y **Git**.
2. Clona el repo: `git clone https://github.com/SamuelRo1109/ProyectoFinalCompiladores.git` (ruta sin espacios).
3. En MPS: **Open** → carpeta **`domus/`** → **Trust Project**.
4. **Build → Rebuild Project** (obligatorio la primera vez; si no, salen cientos de errores «Concept … was not found»).
5. Abre un ejemplo: Logical View → `domus.lang.sandbox` → `validos` → `v1_cerradura` → doble clic en `CasaSegura`.
6. Atajo clave: **Ctrl+Espacio** para completar; **Enter** al final de una fila agrega otra en la tabla δ.
7. Para generar y ejecutar el Java, usa la terminal con el JBR de MPS (sección 7 de la guía).

Guía completa para principiantes: [`docs/GUIA_USUARIO.md`](docs/GUIA_USUARIO.md) · Guion de la demo: [`docs/GUION_DEMO.md`](docs/GUION_DEMO.md)

**Entrega final (video, documento y prueba D1):** [`docs/ENTREGA_ERIKA.md`](docs/ENTREGA_ERIKA.md) · Relevo de la Sesión 3: [`docs/sesiones/HANDOFF_S3.md`](docs/sesiones/HANDOFF_S3.md)
