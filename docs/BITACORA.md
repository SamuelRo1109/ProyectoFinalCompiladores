# Bitácora de investigación — Domus

> Una entrada por sesión. Sirve para el documento técnico, para el video y para que los tres dominen todo el proyecto.
> Formato: qué se construyó · qué concepto de Teoría de la Computación materializa · qué fue difícil · qué decidimos y por qué.

## Sesión 0 — Diseño (17-nov-2026)
- Dominio: protocolos de dispositivos domóticos como autómatas finitos; políticas como expresiones regulares; roles jerárquicos.
- Pregunta de investigación: ver `01_ANALISIS_Y_PLAN.md` §4.
- Decisión: usar Claude Code conectado a MPS por el Projectional Agent Toolkit (MCP), nunca editando los `.mps` como texto.
- Decisión: prototipar los algoritmos del razonador en Java plano y luego importarlos a BaseLanguage con el parser de Java de MPS.

## Sesión 1 — (Tú)

### Hallazgos de UX al escribir v1_cerradura a mano (insumo para Gaby, S3)
1. "hereda" (`Role.parent`) y "requiere" (`Event.requiredRole`) solo se pueden asignar desde el Inspector (Alt+2).
2. Enter al final de una `Transition` crea un `Device` nuevo; solución temporal: seleccionar la línea con Ctrl+W y luego Enter.
3. Las listas de políticas y escenarios de `HomeSystem` no muestran título ("politicas:", "escenarios:").
4. Para cambiar un valor de enumeración (REQUIRED→FORBIDDEN) hay que seleccionar la palabra completa antes de Ctrl+Espacio.
5. "." (`AnySymbolExpr`) y "·" (`ConcatExpr`) se confunden en el menú de completado.
6. Las regex se construyen de arriba hacia abajo (operador primero y luego los huecos); escribir "a | b" de corrido no funciona todavía (Fase 2 de la S3: side transforms).
7. Decisión de diseño: → y ◎ solo se muestran cuando `initial`/`accepting` son verdaderos; se alternan con Alt+Enter.

## Sesión 2 — (Luis)

## Sesión 3 — (Gaby)
