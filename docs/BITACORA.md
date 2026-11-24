# Bitácora de investigación — Domus

> Una entrada por sesión. Sirve para el documento técnico, para el video y para que los tres dominen todo el proyecto.
> Formato: qué se construyó · qué concepto de Teoría de la Computación materializa · qué fue difícil · qué decidimos y por qué.

## Sesión 0 — Diseño (17-nov-2026)
- Dominio: protocolos de dispositivos domóticos como autómatas finitos; políticas como expresiones regulares; roles jerárquicos.
- Pregunta de investigación: ver `01_ANALISIS_Y_PLAN.md` §4.
- Decisión: usar Claude Code conectado a MPS por el Projectional Agent Toolkit (MCP), nunca editando los `.mps` como texto.
- Decisión: prototipar los algoritmos del razonador en Java plano y luego importarlos a BaseLanguage con el parser de Java de MPS.

## Sesión 1 — Structure, Editor, Constraints, Typesystem y Sandbox (18-nov-2026)
- **Structure** (`domus.lang.structure`): 28 raíces (25 conceptos, 2 enums, 1 interfaz) en inglés con alias en español (`IDeviceElement`, `Device`, `State`/`AlarmState`, `Transition`, jerarquía `RegexExpr`, `Policy`, `Scenario`, `RoleType`, `AlphabetType`…). Materializa el **AST** y una gramática de árboles; la herencia (`AlarmState extends State`) es subtipado de producciones.
- **Behavior**: `Device.initialStates()`, `HomeSystem.allEvents()`, `Role.ancestors()` (clausura transitiva de `parent`, a prueba de ciclos), `IDeviceElement.getDevice()`. Son las consultas sobre el árbol que usan las demás reglas (recorrido de un AST).
- **Editor**: proyecciones textuales por concepto + `DomusEstilos`; →/◎ como banderas; intentions `AlternarEstadoInicial` y `AlternarEstadoDeAceptacion`. Al editar el árbol, la regex no tiene ambigüedad sintáctica (no hay precedencia que resolver).
- **Constraints**: scopes por dispositivo/sistema (Transition, ScenarioStep, Scenario, Policy, Role, Event, ActorRef, SymbolExpr) y validador de `name` con `IdentifierUtil` (ID = [A-Za-z_][A-Za-z0-9_]*). Es la **condición sensible al contexto**: una gramática libre de contexto no puede decir "este estado es de ESTE dispositivo". El validador es un autómata finito (Kleene aplicado al propio DSL).
- **Typesystem**: `RoleType` (con `supertypeOf_RoleType`, subtipado por `parent`) y `AlphabetType`; inferencia `typeof_*` y reglas `check_*` (R-INI, R-UNQ, R-ALM, R-SNS, R-ACY, nombres). Materializa **inferencia de tipos** y análisis estático.
- **Sandbox** (`domus.lang.sandbox`): v1–v3 válidos sin errores; i1–i4 inválidos con "Do not generate", cada uno demuestra su error.
- Difícil: la edición proyectiva (ver hallazgos de UX); error doble en nombres inválidos; diálogos modales de MPS que bloquean al agente.
- Decisión: el razonador (autómatas, Kleene, políticas) queda para S2; la tabla δ (A5) para S3, o S2 si el Hito 2 vence antes.


### Hallazgos de UX al escribir v1_cerradura a mano (insumo para Gaby, S3)
1. "hereda" (`Role.parent`) y "requiere" (`Event.requiredRole`) solo se pueden asignar desde el Inspector (Alt+2).
2. Enter al final de una `Transition` crea un `Device` nuevo; solución temporal: seleccionar la línea con Ctrl+W y luego Enter.
3. Las listas de políticas y escenarios de `HomeSystem` no muestran título ("politicas:", "escenarios:").
4. Para cambiar un valor de enumeración (REQUIRED→FORBIDDEN) hay que seleccionar la palabra completa antes de Ctrl+Espacio.
5. "." (`AnySymbolExpr`) y "·" (`ConcatExpr`) se confunden en el menú de completado.
6. Las regex se construyen de arriba hacia abajo (operador primero y luego los huecos); escribir "a | b" de corrido no funciona todavía (Fase 2 de la S3: side transforms).
7. Decisión de diseño: → y ◎ solo se muestran cuando `initial`/`accepting` son verdaderos; se alternan con Alt+Enter.

## Sesión 2 — Razonador, generador y pruebas (Luis, 19-nov-2026)
- **Prototipo** Java (`prototipo-razonador/`) y luego solution `domus.reasoner` en BaseLanguage (modelo `domus.reasoner.automata`: 16 clases, fachada `Razonador`, `Hallazgo`; `selftest` con `TestMain` 87/87). Materializa **AFN/AFD** y la **equivalencia ER ⇔ autómata (Kleene)**.
- **Behavior**: `RegexExpr.toNfa` (Thompson, 9 conceptos), `Device.alphabet/toNfa/alarmStateIndices/stateName/eventName`, `Scenario.toWord`: traducción del AST a autómatas (semántica denotacional de la ER).
- **Reglas en vivo**: `check_Device_Razonador` (alcance, trampas, deadlocks, alarmas con traza mínima), `check_Policy_Razonador` (REQUIRED/FORBIDDEN con contraejemplo), `check_Scenario_Razonador` (simulador). Materializa **decidibilidad** de vacío, inclusión y equivalencia en lenguajes regulares.
- **Generador**: plantilla `GeneratedHomeSystem_Plantilla` (regla raíz `HomeSystem`) + `ReporteDomus`; produce Java ejecutable y reporte de verificación (**semántica operacional**: el simulador ejecuta δ paso a paso).
- **Pruebas**: `domus.tests`, 60 en verde (`ErroresDeReglas`, `AdvertenciasDelRazonador`, `ModelosSanos`, `InferenciasCerradura`, `RazonadorTest`).
- **Hallazgo del razonador**: la política `SesionCompleta` de v2 era más estricta que el dispositivo (contraejemplo `armar · disparar · tiempoEntrada · autoSilencio · disparar · desarmar`). Se corrigió SOLO la política, añadiendo `(disparar · tiempoEntrada · autoSilencio)*` tras `armar` (lema de Arden). Decisión tomada en S2 sin consulta; reversible en 1 commit si prefieren cambiar el destino de `autoSilencio`.
- Difícil: Java del sistema < 21 al correr pruebas (usar el JBR de MPS); conexión MCP en Windows (SSE).

### Tabla de complejidad (para el "Análisis crítico" del video)
| Algoritmo | Complejidad | Nota |
|---|---|---|
| Thompson (ER → AFN-ε) | O(\|r\|), ≤ 2\|r\| estados | construcción lineal |
| Subconjuntos (AFN → AFD) | O(2^n) peor caso | rara vez se alcanza en la práctica |
| Minimización de Moore | O(n²·\|Σ\|) | refinamiento de particiones |
| BFS: alcanzabilidad, co-alcanzabilidad, trampas, deadlocks | O(\|Q\|+\|δ\|) | recorrido de grafo |
| Producto de políticas | O(\|Q_d\|·\|Q_R\|·\|Σ\|) tras determinizar R | la inclusión entre AFN es PSPACE-completa: por eso solo se determiniza R |
| Eliminación de estados (AFD → ER, Kleene 2) | O(n³) operaciones; ER de tamaño hasta exponencial | |
| Simulador de escenarios | O(\|w\|·(\|Q\|+\|δ\|)) | w = palabra del escenario |

## Sesión 3 — (Gaby)

### Ajuste didáctico de `invalidos.i1_alcance` (23-nov-2026)
- **Qué cambió:** `accepting = true` (◎) en `Cerrada` (dispositivo `Cerradura`) y en `Apagada` (dispositivo `Luz`). No se tocó nada más del modelo.
- **Por qué:** dejar `i1` como un inválido **de contexto puro**. Antes, además de los 3 errores de alcance, el razonador marcaba los dos estados iniciales como deadlock (no tenían salidas en su propio dispositivo ni eran de reposo), lo que mezclaba el error de alcance con hallazgos del razonador.
- **Conteo:** antes 5 errores + 1 warning (3 "out of search scope" + 2 deadlocks + `Encendida` inalcanzable); ahora **3 errores + 1 warning** (3 "out of search scope" + `Encendida` inalcanzable). El resto de la sandbox no cambió: v1–v3 con 0 errores, i2 = 1E + 1W, i3 = 1E, i4 = 5E.
- **Pruebas:** ninguna prueba de `domus.tests` depende de `i1` (el modelo de pruebas no importa la sandbox; `ErroresDeReglas` usa su propia copia `ErrAlcance`).
- **Concepto:** la condición de alcance es **sensible al contexto** (la referencia es válida solo dentro de su dispositivo); deadlock y trampa son propiedades **decidibles** del autómata que dependen de F, el alcance no.

### Nota para clones nuevos: Rebuild Project antes de validar
En un clon nuevo no existe `classes_gen/` (no se sube a git). Si se valida o se hace un Make parcial sin compilar antes el lenguaje, el generador falla con `package IDeviceElement__BehaviorDescriptor does not exist` (`QueriesGenerated.java`), `domus.lang` queda "not deployed" y la sandbox muestra **cientos de errores falsos** ("Concept 'State' was not found…"). Solución: **Build → Rebuild Project** en MPS y luego validar.

### Observación del razonador: un deadlock no se reporta también como trampa
Verificado en `Razonador.analizarDispositivo` (lo invoca la regla `check_Device_Razonador`): cada estado recibe **a lo sumo un hallazgo**, elegido por una cadena `if / else if` en este orden de prioridad:
1. no alcanzable → warning "no se puede alcanzar desde el estado inicial";
2. alarma alcanzable → info con traza mínima (+ error "no tiene recuperación" si no es co-alcanzable);
3. sin salidas y no de aceptación → error de deadlock;
4. no co-alcanzable → warning de trampa ("ya no se puede volver a un estado de reposo (◎)").

Por eso un deadlock (que según §4.2 también está en `Reach \ CoReach`) solo se reporta como deadlock, y una alarma sin recuperación no se reporta además como trampa. Es una decisión razonable (evita mensajes redundantes); quedó anotada en §4.2 de la especificación.

### Fase 1 — Tabla δ (requisito A5) (23-nov-2026)
- **Qué se construyó:** las transiciones de `Device` se proyectan como tabla `Origen | Evento | Destino`, con encabezado en negrita, bordes por celda y «<sin transiciones>» cuando la lista está vacía. Cambios solo en el aspecto editor: `Device_Editor`, `Transition_Editor` y la clase auxiliar `TablaDelta`. Captura: `docs/img/tabla_delta_v1.png`.
- **Concepto:** es una **proyección no textual** del mismo AST. La tabla es literalmente la función de transición δ del autómata, una fila por par `(q, a) → q'`. Editar la tabla edita el árbol; no hay texto que parsear.
- **Opciones evaluadas:**
  - **A — `jetbrains.mps.lang.editor.table`** (lo que decía §2). Su `TableModel` pide un **nodo por casilla** (`getValueAt` devuelve un nodo y lo dibuja con su propio editor), y los encabezados también tendrían que ser nodos. `Transition` guarda `source`/`event`/`target` como **referencias**, así que habría que cambiar la estructura con envoltorios hijos. Eso implicaba migrar los 7 modelos de la sandbox y las pruebas, y tocar constraints, behavior, razonador y generador. Riesgo alto.
  - **B — rejilla con el lenguaje de editor normal** (elegida). Solo cambian dos editores; el completado y los scopes de `Transition_Constraints` siguen funcionando porque las celdas son las mismas referencias inteligentes. Se corrigió §2 de la especificación (la guía acepta "bloques o matriz").
- **Problema de alineación:** en el primer intento había una rejilla vertical (`CellLayout_VerticalGrid` + `table-component`) con el encabezado y, dentro, la lista de transiciones como otra rejilla. Las filas salían debajo del encabezado, pero **las rejillas anidadas no comparten columnas**: cada fila tomaba el ancho de su contenido.
- **Cómo se resolvió (segundo intento):** se quitó el anidamiento; la lista es ahora la rejilla (`gridLayout`). Como el encabezado no puede vivir dentro de la lista y el *padding* de MPS solo admite valores fijos, cada celda muestra el nombre **relleno con espacios hasta el ancho de su columna**. Ese ancho es el del nombre más largo de estados o eventos del dispositivo, con mínimo 7/6 por "Destino"/"Evento", y se aplica al encabezado y a las tres celdas. Con la fuente monoespaciada del editor todo cuadra.
- **Limitaciones conocidas:** depende de una fuente monoespaciada; una fila nueva se ve desalineada hasta rellenarla (`<origen>`, `<evento>`, `<destino>`); una referencia fuera de alcance (`i1`) usa los anchos del otro dispositivo.
- **Verificación:** Rebuild de `domus.lang` correcto. Conteos de la sandbox sin cambios (v1–v3 = 0 E; i1 = 3 E + 1 W; i2 = 1 E + 1 W; i3 = 1 E; i4 = 5 E). Verificado a mano en MPS solo con teclado: agregar fila (Enter al final de una fila), rellenar y editar celdas (Ctrl+Espacio, que solo ofrece elementos del dispositivo), borrar fila (Ctrl+W hasta seleccionarla + Delete) y deshacer (Ctrl+Z).

### Fase 3 — Estilos y legibilidad (23-nov-2026)
- **Qué se aplicó** (solo aspecto editor; se mantiene la sintaxis de §2):
  - **Palabras clave** (`PalabraClave`): ya estaban en negrita; el color pasó de `darkBlue` a `blue`. En tema oscuro `darkBlue` se ve #3D6DAC, con contraste ≈3:1; `blue` es #0000FF en claro y #589DF6 en oscuro, ambos ≥4.5:1.
  - **Nombres de dispositivos, políticas y escenarios** (`NombreDestacado`): negrita con el color normal del tema. Máximo contraste y se distinguen de las palabras clave azules.
  - **Tipo de evento y modo de política** (`ValorSecundario`): cursiva en `gray` (#808080 en ambos temas, ≈4:1). Se descartó `darkGray`: en tema oscuro (#C0C0C0) casi no se distinguía del texto normal.
  - **Secciones plegables:** `roles:`, cada dispositivo, la lista de políticas y la de escenarios (desde el margen izquierdo).
  - **Textos guía en listas vacías** (gris, se puede escribir encima): «<agrega un evento>», «<agrega un estado>», «<agrega un rol>», «<sin políticas>», «<sin escenarios>». La tabla δ ya tenía «<sin transiciones>».
  - **Solo verificado:** `alarma` en rojo (`Alarma`); `→` y `◎` en verde (`Marcador`) en `State` y `AlarmState`.
- **Tabla δ intacta:** no se cambió fuente, tamaño ni negrita de sus celdas; los anchos por columna siguen iguales (en v1: 12/11/12 caracteres).
- **Qué se omitió y por qué:**
  - **Inspector:** ninguna línea está sobrecargada (la más larga, `desbloquear : COMMAND requiere Residente`, se lee bien); `hereda` y `requiere` ya estaban también en el Inspector desde S1.
  - **Íconos:** no hay ningún `TextIcon` de ejemplo en el proyecto ni en las librerías para copiar. Habría que construir las capas a mano en la estructura de 5 conceptos y reconstruirla, así que no era sencillo. Queda como mejora opcional (íconos PNG).
- **Verificación:** Rebuild de `domus.lang` correcto; conteos de la sandbox sin cambios (v1–v3 = 0 E; i1 = 3 E + 1 W; i2 = 1 E + 1 W; i3 = 1 E; i4 = 5 E); revisión visual en MPS de v1 y v3.
- **Capturas:** antes `docs/img/antes_estilos_v3.png`; después `docs/img/despues_estilos_v1.png` y `docs/img/despues_estilos_v3.png`.
- **Concepto:** la **sintaxis concreta** es solo una proyección del AST. Cambiar colores, plegado o textos guía no toca la sintaxis abstracta ni la semántica, por eso los conteos de validación no se mueven.

### Fase 6 — Caso demo y guion (23-nov-2026)
- **Modelo nuevo** `domus.lang.sandbox.demo.caso_en_vivo` (sistema `CasaDemo`), guardado en estado correcto (**0 errores**) y generable (sin "Do not generate"):
  - 2 roles (`Residente hereda Invitado`);
  - 2 dispositivos: Puerta y Luz, con 2 estados y 2 transiciones cada uno;
  - 2 políticas: `CicloPuerta` [REQUIRED] `(abrir · cerrar)*` y `NoAbrirDosVeces` [FORBIDDEN] `abrir · abrir`;
  - 1 escenario: `EntradaResidente`, actor Residente.
- **Guion** `docs/GUION_DEMO.md` para Erika, clic por clic, ≈ 5 min, en cinco pasos:
  1. escribir con la tabla δ (evento `atenuar`, estado `Atenuada`, dos filas);
  2. error de alcance (pegar una fila de Luz en Puerta) y error de tipos (actor `Invitado`);
  3. deadlock (borrar la salida de `Atenuada`) y política violada (`abrir · cerrar`) con su contraejemplo;
  4. corregir con Ctrl+Z;
  5. generar, ejecutar con el JBR de MPS y leer el reporte.

  Incluye la preparación, qué decir en cada paso (enlazado con la teoría) y cómo dejar el modelo como estaba.
- **Ensayo vía MCP:** se aplicó cada cambio que rompe el modelo, se validó, se copió el mensaje literal al guion y se revirtió. Mensajes obtenidos: 3 × "out of search scope", "Incompatibilidad de roles…", "El estado 'Atenuada' es un bloqueo (deadlock)…", "Política violada: la traza 'abrir · cerrar' contiene el patrón prohibido". Al terminar, `caso_en_vivo` = 0 errores y el resto de la sandbox sin cambios.
- **Generación y ejecución:** Make del modelo correcto. El `main` se compiló y ejecutó con el `javac`/`java` del JBR de MPS (Java 25); la salida real está en el guion (ER equivalentes por Kleene 2, AFD mínimos, simulación ACEPTADO).
  - No se ejecuta desde MPS porque el módulo `domus.lang.sandbox` tiene la compilación en MPS desactivada (`compile="off"`).
  - El ensayo de la terminal se hizo con Git Bash; los comandos del guion son su equivalente en PowerShell.
- **Pendiente para Erika:** probar una vez los gestos marcados con ⚠️ en el guion (Enter para añadir evento, coma para añadir estado, Ctrl+V de una fila entre tablas). No se pueden ensayar por MCP.

### Fase 7 — Guía de usuario (23-nov-2026)
- **`docs/GUIA_USUARIO.md`** para quien nunca usó MPS (prueba de usuario D1 e instalación de Erika). Contenido:
  - **Instalación:** MPS 2026.2 build 262.11879.701 y Git; clonar; abrir `domus/`; Trust Project; **Rebuild Project obligatorio** con el síntoma si se olvida («Concept … was not found»); cerrar diálogos como "Add File to Git".
  - **Crear un modelo** en la sandbox con `domus.lang` como used language.
  - **Atajos:** Ctrl+Espacio, Alt+Enter, Ctrl+Shift+T, Ctrl+Z, Ctrl+W, Enter en listas y tabla δ, Alt+2.
  - **Cada construcción con un ejemplo:** sistema, roles, dispositivo, eventos, estados →/◎/alarma, tabla δ, políticas con tabla de operadores, escenarios.
  - **Cómo leer los mensajes:** alcance, tipos, reglas y razonador, con los **textos literales** del código del lenguaje y del razonador y cómo corregir cada uno.
  - **Generar y ejecutar el Java** con el JBR de MPS.
  - **Ejercicio D1** (`MiGaraje` / `Porton`, ≈20 min) con hoja de observación.
- **README:** sección "Inicio rápido" (7 pasos) con enlaces a la guía y al guion de la demo.
- **Marcadores [captura: …]:** 11, a completar con pantallazos antes de la prueba D1.
- **Concepto:** la guía traduce cada error a lenguaje cotidiano, como pedía la convención del proyecto: mensajes entendibles sin saber teoría y que nombran el elemento afectado.
