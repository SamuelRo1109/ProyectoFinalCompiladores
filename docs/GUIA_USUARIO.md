# Guía de usuario de Domus

Domus es un lenguaje para describir una casa inteligente: qué **dispositivos** tiene (cerradura, luz, alarma…), en qué **estados** puede estar cada uno, qué **eventos** lo hacen cambiar, qué **reglas de seguridad** (políticas) deben cumplirse y qué **personas** (roles) pueden hacer qué. Mientras escribes, Domus revisa todo y te avisa de errores y situaciones peligrosas.

Esta guía es para quien **nunca ha usado MPS**. No necesitas saber programar.

> Las marcas **[captura: …]** indican dónde irá una imagen de pantalla.

---

## 1. Instalación

### 1.1 Programas necesarios
1. **JetBrains MPS 2026.2** — exactamente la versión **Build #MPS-262.11879.701**. Descárgalo desde la página de JetBrains MPS (sección *Other versions* si ya hay una más nueva) e instálalo con las opciones por defecto. En Windows queda en `C:\Program Files\JetBrains\MPS 2026.2`.
2. **Git** — descárgalo de git-scm.com e instálalo con las opciones por defecto.

> ¿Por qué esa versión exacta? Los archivos del proyecto se guardan con el formato de esa versión; con otra, MPS puede pedir "migraciones" y modificar archivos.

### 1.2 Descargar el proyecto
1. Abre una terminal (en Windows: tecla Windows → escribe `PowerShell` → Enter).
2. Ve a la carpeta donde lo quieras guardar, por ejemplo:
   ```
   cd C:\
   git clone https://github.com/SamuelRo1109/ProyectoFinalCompiladores.git
   ```
   Se crea la carpeta `C:\ProyectoFinalCompiladores`.

> Evita rutas con espacios (por ejemplo, `C:\Mis Documentos\...`): algunas herramientas fallan con ellas.

### 1.3 Abrir el proyecto en MPS
1. Abre MPS. En la pantalla de bienvenida pulsa **Open**.
2. Elige la carpeta **`C:\ProyectoFinalCompiladores\domus`** (¡la subcarpeta `domus`, no la carpeta del repositorio!) y pulsa **OK**.
3. Si aparece **"Trust and Open Project?"**, pulsa **Trust Project**.
4. Espera a que termine la barra de progreso de abajo a la derecha (MPS está "indexando" el proyecto).

[captura: pantalla de bienvenida de MPS con el botón Open]
[captura: diálogo Trust Project]

### 1.4 Compilar el lenguaje: Rebuild Project (obligatorio la primera vez)
Menú **Build → Rebuild Project**. Tarda de 1 a 3 minutos. Espera a que termine.

**Si te lo saltas**, al abrir cualquier modelo verás **cientos de errores rojos** con mensajes como:
- «Concept 'State' was not found in the language 'domus.lang'»
- «Language domus.lang can't be loaded»

No es que el proyecto esté roto: el lenguaje simplemente no está compilado en tu computador (lo compilado no se guarda en Git). Haz **Build → Rebuild Project** y desaparecen.

[captura: menú Build → Rebuild Project]

### 1.5 Diálogos que pueden aparecer
- **"Add File to Git"** (al crear o guardar archivos): pulsa **Cancel** o **Don't Ask Again**. No hace falta añadir nada a Git para usar Domus.
- **Cualquier otra ventana emergente** (avisos de actualización, migraciones, consejos del día): ciérrala. Si MPS "no responde" a lo que haces, casi siempre es porque hay una ventana abierta escondida detrás.

---

## 2. Dónde están las cosas

- A la izquierda, el panel **Logical View** muestra el proyecto. Los ejemplos están en **`domus.lang.sandbox`**:
  - `validos` → `v1_cerradura`, `v2_alarma`, `v3_casa` (modelos correctos);
  - `invalidos` → `i1`…`i4` (modelos con errores a propósito);
  - `demo` → `caso_en_vivo` (el de la demo).
- Para abrir un ejemplo: despliega la carpeta y haz **doble clic** en el elemento con la "N" (por ejemplo `CasaSegura`).
- Arriba a la derecha del editor hay un indicador: **✓ verde** = sin errores.

[captura: Logical View con domus.lang.sandbox desplegado]

---

## 3. Crear tu propio modelo

1. En Logical View, **clic derecho sobre `domus.lang.sandbox`** (el elemento con la "S") → **New → Model**.
2. Escribe el nombre, por ejemplo **`domus.lang.sandbox.mio.prueba`**, y pulsa **OK**.
3. **Añade el lenguaje Domus al modelo:** clic derecho sobre tu modelo nuevo → **Model Properties**. En la pestaña **Used Languages** pulsa **+**, escribe **`domus.lang`**, selecciónalo y pulsa **OK** dos veces.
4. **Crea el sistema:** clic derecho sobre tu modelo → **New → domus.lang → sistema** (aparece como *HomeSystem*). Se abre el editor con `sistema <no name>`.
5. Haz clic en `<no name>` y escribe el nombre de tu casa, por ejemplo `MiCasa`.

[captura: menú New → Model sobre domus.lang.sandbox]
[captura: Model Properties, pestaña Used Languages con domus.lang]
[captura: menú New → domus.lang → sistema]

> Si tu modelo va a tener errores a propósito y no quieres que se genere código, en **Model Properties → Advanced** marca **Do not generate**.

---

## 4. Atajos de teclado imprescindibles

| Atajo | Qué hace |
|---|---|
| **Ctrl+Espacio** | Muestra lo que puedes escribir en ese lugar (estados, eventos, roles, palabras clave). Es el atajo más importante. |
| **Alt+Enter** | Muestra acciones rápidas sobre lo que tienes bajo el cursor: por ejemplo, marcar un estado como inicial (→) o de reposo (◎), o arreglar un error. |
| **Ctrl+Shift+T** | Muestra el "tipo" de lo que tienes bajo el cursor (por ejemplo, el rol de un actor). |
| **Ctrl+Z** | Deshace el último cambio. |
| **Ctrl+W** | Amplía la selección: púlsalo varias veces para pasar de una palabra a una línea entera o a una fila de la tabla. |
| **Enter** al final de un elemento de una lista | Crea un elemento nuevo debajo (un rol, un evento, una fila de la tabla…). |
| **Delete** con algo seleccionado | Lo borra. |
| **Alt+2** | Abre el **Inspector**, un panel con datos extra del elemento seleccionado. |

> Domus no es un editor de texto normal: no escribes letra a letra un archivo, sino que **rellenas huecos** de una estructura. Si algo no se deja escribir, prueba **Ctrl+Espacio**.

---

## 5. El lenguaje, pieza por pieza

### 5.1 Sistema y roles
```
sistema MiCasa
  roles:
    rol Invitado
    rol Residente hereda Invitado
    rol Administrador hereda Residente
```
- Un **rol** es un tipo de persona. **hereda** significa "puede todo lo que puede el otro, y más": un Residente puede hacer lo de un Invitado.
- Para añadir un rol: haz clic en `<agrega un rol>` (o al final del último rol y pulsa **Enter**) y escribe su nombre.
- Para poner **hereda**: selecciona el rol, abre el **Inspector (Alt+2)** y en `hereda:` pulsa **Ctrl+Espacio** para elegir el rol padre.

### 5.2 Dispositivo, eventos y estados
```
  dispositivo Cerradura
    eventos:
      desbloquear : COMMAND requiere Residente
      abrir : SENSOR
      forzar : SENSOR
    estados: → ◎ Bloqueada, Desbloqueada, Abierta, alarma Intrusion
```
- **Eventos** = lo que le puede pasar al dispositivo. Tipos:
  - **COMMAND**: lo ordena una persona (puede exigir un rol con **requiere**, que se pone desde el Inspector).
  - **SENSOR**: lo detecta un sensor.
  - **TIMER**: lo dispara un temporizador.
  Para cambiar el tipo: selecciona la palabra (`COMMAND`) y pulsa **Ctrl+Espacio**.
- **Estados** = situaciones en que puede estar. Se separan con comas (escribe una **coma** al final del último para añadir otro).
  - **→** marca el **estado inicial** (debe haber exactamente uno).
  - **◎** marca un **estado de reposo**: un punto donde es normal terminar.
  - **alarma** (en rojo) marca una situación anómala. Para crearla escribe `alarma` en la lista de estados. Una alarma nunca puede ser de reposo.
  - Para poner o quitar → y ◎: cursor sobre el estado y **Alt+Enter**, o desde el Inspector (Alt+2).

### 5.3 Tabla de transiciones (tabla δ)
```
    transiciones:
      | Origen       | Evento      | Destino      |
      | Bloqueada    | desbloquear | Desbloqueada |
      | Desbloqueada | abrir       | Abierta      |
      | Bloqueada    | forzar      | Intrusion    |
```
Cada fila dice: "si estoy en **Origen** y ocurre **Evento**, paso a **Destino**".
- **Agregar una fila:** clic al final de la última celda de una fila → **Enter**. Si la tabla está vacía, clic en `<sin transiciones>` → **Enter**.
- **Rellenar o cambiar una celda:** clic en la celda → **Ctrl+Espacio** → elige. Solo se ofrecen estados y eventos **de ese dispositivo**.
- **Moverse:** **Tab** o las flechas.
- **Borrar una fila:** clic en la fila → **Ctrl+W** hasta seleccionar la fila entera → **Delete**.

[captura: tabla δ de la Cerradura (ver docs/img/tabla_delta_v1.png)]

### 5.4 Políticas (reglas de seguridad)
```
  politica CicloCompleto [REQUIRED] sobre Cerradura:
    ((desbloquear · (abrir · cerrar)* · bloquear) | (forzar · desactivar))*
  politica NoBloquearAbierta [FORBIDDEN] sobre Cerradura:
    abrir · bloquear
```
Una política es un **patrón de eventos**:
- **REQUIRED** (obligatoria): toda sesión que termine en reposo debe seguir el patrón.
- **FORBIDDEN** (prohibida): el patrón no puede ocurrir nunca, en ningún momento.

Símbolos del patrón:

| Escribe | Significa | Ejemplo |
|---|---|---|
| nombre de evento | ese evento | `abrir` |
| `·` | "y después" | `abrir · cerrar` |
| `\|` | "o" | `abrir \| forzar` |
| `*` | "cero o más veces" | `(abrir · cerrar)*` |
| `+` | "una o más veces" | `abrir+` |
| `?` | "opcional" | `abrir?` |
| `(` | agrupar | `(abrir · cerrar)` |
| `eps` | "nada" (se ve ε) | |
| `.` | "cualquier evento" | `. · bloquear` |

> **Truco:** los patrones se escriben **de fuera hacia dentro**. Para `abrir · cerrar`, primero pon el operador `·` (Ctrl+Espacio → `·`) y luego rellena los dos huecos. Los eventos del patrón deben ser del dispositivo que dice `sobre`.

### 5.5 Escenarios (pruebas paso a paso)
```
  escenario EntradaNormal sobre Cerradura actor Residente:
    desbloquear, abrir, cerrar, bloquear
```
Un escenario es una secuencia de eventos que hace una persona. Domus la **simula** y te dice si se acepta y por qué estados pasa.

---

## 6. Cómo leer los mensajes

- **Rojo** (subrayado ondulado) = **error**: hay que corregirlo.
- **Amarillo** = **aviso** (*warning*): el modelo funciona, pero algo es sospechoso.
- **Info** = información útil (no es un problema).
- Para leer un mensaje, deja el ratón quieto **sobre lo subrayado** un segundo.

[captura: recuadro de mensaje al pasar el ratón sobre un error]

### 6.1 Errores de alcance (algo de otro sitio)
| Mensaje | Qué significa | Cómo corregirlo |
|---|---|---|
| «The reference  Apagada (source) is out of search scope» (también `(event)`, `(target)`) | Una transición usa un estado o evento que es **de otro dispositivo** (pasa al copiar y pegar filas entre tablas). | Cambia la celda con **Ctrl+Espacio** por un estado/evento de este dispositivo, o borra la fila. |

### 6.2 Errores de tipos
| Mensaje | Qué significa | Cómo corregirlo |
|---|---|---|
| «Error: Incompatibilidad de roles: el actor 'Invitado' no puede ejecutar el evento 'bloquear' en el escenario 'IntentoDeInvitado', porque ese evento requiere el rol 'Residente' (o un rol que herede de él).» | La persona del escenario no tiene permiso para ese evento. | Cambia el **actor** por un rol con permiso, o quita ese paso. |
| «Error: Incompatibilidad de alfabetos: el evento 'calentar' pertenece al dispositivo 'Termostato', pero la política 'MezclaDeDispositivos' está definida sobre el dispositivo 'Cerradura'. Una política solo puede usar eventos de su propio dispositivo.» | Una política mezcla eventos de dos dispositivos. | Usa solo eventos del dispositivo que dice `sobre`. |

### 6.3 Errores de reglas del lenguaje
| Mensaje | Cómo corregirlo |
|---|---|
| «Error: El dispositivo 'Panel' debe tener exactamente un estado inicial (marcado con →), pero tiene 2.» | Deja la → en un solo estado (Alt+Enter sobre el estado). |
| «Error: El estado de alarma 'Alarma' no puede ser de aceptación (◎): una alarma representa una situación anómala, nunca un final correcto.» | Quita el ◎ de la alarma. |
| «Error: El evento 'detectar' es de tipo SENSOR y no puede requerir el rol 'Residente': los sensores y temporizadores no los dispara una persona. Quite el rol o cambie el tipo a COMMAND.» | Quita el **requiere** (Inspector) o cambia el tipo a COMMAND. |
| «Error: El nombre '2estado' del estado no es válido: debe empezar con una letra (a-z o A-Z, sin tildes ni ñ) o '_' y seguir solo con letras, dígitos o '_', sin espacios.» (sale junto con «Property constraint violation for the property "name"») | Renombra: por ejemplo `Estado2`. |
| «Error: Nombre duplicado: el dispositivo 'Luz' ya tiene otro estado llamado 'Encendida'. Cada nombre debe ser único.» (igual para eventos, dispositivos y roles) | Cambia uno de los nombres. |
| «Error: Jerarquía de roles cíclica: el rol '…' termina heredando de sí mismo (hereda de '…'). Un rol no puede ser su propio ancestro.» | Quita uno de los **hereda** del círculo. |

### 6.4 Mensajes del razonador (análisis del comportamiento)
| Mensaje | Qué significa | Cómo corregirlo |
|---|---|---|
| «Error: El estado 'Atenuada' es un bloqueo (deadlock): no tiene transiciones de salida y no es de reposo (◎), así que el dispositivo se quedaría atascado ahí» | Se puede llegar a ese estado pero no salir de él, y no es un final válido. | Añade una fila que salga de él, o márcalo ◎ si es un final normal. |
| «Warning: El estado 'Encendida' no se puede alcanzar desde el estado inicial 'Apagada'» | Ninguna secuencia de eventos lleva a ese estado. | Añade una fila que llegue a él, o bórralo si sobra. |
| «Warning: Desde 'X' ya no se puede volver a un estado de reposo (◎)» | Estado **trampa**: una vez ahí, el dispositivo nunca vuelve a reposo. | Añade un camino de vuelta a un estado ◎. |
| «Warning: Desde 'X' el evento 'e' lleva a varios estados ('A', 'B')» | Dos filas con el mismo Origen y Evento van a destinos distintos: el comportamiento es ambiguo. | Deja una sola fila para ese Origen + Evento. |
| «Info: Alarma alcanzable. Traza mínima: forzar» | Te dice la secuencia **más corta** de eventos que dispara la alarma. Es información, no un error. | Nada, salvo que esa alarma no debiera poder dispararse. |
| «Error: La alarma 'X' no tiene recuperación: una vez disparada, ya no se puede volver a un estado de reposo (◎)» (a veces añade «(no tiene transiciones de salida)») | Si salta la alarma, el sistema nunca se recupera. | Añade una salida desde la alarma hacia un camino que vuelva a reposo (p. ej. `desactivar`). |
| «Error: Política violada: la traza 'abrir · cerrar' contiene el patrón prohibido» | Política **FORBIDDEN**: el dispositivo **sí** permite hacer el patrón prohibido. Lo que va entre comillas es el **contraejemplo**: la secuencia más corta que lo demuestra. | Cambia la tabla para que esa secuencia no sea posible, o revisa si la política está bien escrita. |
| «Error: Política violada: la sesión '…' termina en reposo pero no cumple el patrón» | Política **REQUIRED**: hay una sesión completa que no sigue el patrón. El texto entre comillas es el contraejemplo. | Ajusta la tabla o amplía el patrón. |
| «Info: Política verificada: AFD mínimo de 4 estados (3 útiles + sumidero)» | La política se cumple. El número es el tamaño del autómata más pequeño que reconoce el patrón. | Nada. |
| «Warning: Rechazado en el paso 1: desde 'Bloqueada' no hay transición con 'bloquear'» y «Info: Simulación rechazada en el paso 1. Traza hasta ahí: Bloqueada» | El escenario pide un evento que el dispositivo no permite en ese momento. | Corrige el orden de los pasos o la tabla. |
| «Warning: El escenario termina en 'X', que no es estado de reposo (◎)» | El escenario se queda a medias. | Añade los pasos que faltan para volver a reposo. |
| «Info: Simulación aceptada: Cerrada → Abierta → Cerrada» | El escenario funciona; se ven los estados por los que pasa. | Nada. |

---

## 7. Generar el código Java y ejecutarlo

Domus puede convertir tu sistema en un programa Java que imprime el **reporte de verificación** y simula los escenarios.

1. Tu modelo no debe tener errores (✓ verde) ni estar marcado como *Do not generate*.
2. En Logical View, **clic derecho sobre tu modelo → Generate Model** (si no aparece, **Make Model**). Espera unos segundos.
3. Abre la terminal de MPS: **View → Tool Windows → Terminal** (o **Alt+F12**). Debe estar en `C:\ProyectoFinalCompiladores\domus`.
4. Pega estas líneas cambiando la ruta y el nombre según tu modelo (el ejemplo es el de la demo, `caso_en_vivo` con el sistema `CasaDemo`):
   ```powershell
   [Console]::OutputEncoding = [Text.Encoding]::UTF8
   $J = "C:\Program Files\JetBrains\MPS 2026.2\jbr\bin"
   & "$J\javac.exe" -encoding UTF-8 -d "$env:TEMP\domus_demo" "languages\domus.lang.sandbox\source_gen\domus\lang\sandbox\demo\caso_en_vivo\GeneratedHomeSystem_CasaDemo.java"
   & "$J\java.exe" "-Dstdout.encoding=UTF-8" -cp "$env:TEMP\domus_demo" domus.lang.sandbox.demo.caso_en_vivo.GeneratedHomeSystem_CasaDemo
   ```
   - **Ruta:** cada punto del nombre del modelo es una carpeta. `domus.lang.sandbox.mio.prueba` → `languages\domus.lang.sandbox\source_gen\domus\lang\sandbox\mio\prueba\`.
   - **Archivo:** se llama `GeneratedHomeSystem_<nombre de tu sistema>.java`.
   - Se usa el Java que trae MPS (`jbr`), así que no hay que instalar ni configurar Java aparte.
5. Verás el reporte: estados inalcanzables, bloqueos, trampas, alarmas, el veredicto de cada política, la expresión regular equivalente a cada dispositivo y el resultado de cada escenario. El ejemplo completo está en `docs/GUION_DEMO.md`, paso 5.

[captura: menú Generate Model]
[captura: terminal con el reporte impreso]

---

## 8. Ejercicio para la prueba de usuario (D1)

**Duración prevista:** unos 20 minutos. **Objetivo:** comprobar que una persona nueva puede describir un dispositivo y una regla con ayuda solo de esta guía.

### Enunciado
Crea un modelo nuevo (sección 3) con un sistema **`MiGaraje`** que tenga:
1. Dos roles: `Visita` y `Dueno hereda Visita`.
2. Un dispositivo **`Porton`** con:
   - eventos: `abrir : COMMAND requiere Dueno`, `cerrar : COMMAND`, `obstaculo : SENSOR`;
   - estados: `Cerrado` (inicial → y de reposo ◎), `Abriendo`, `Abierto`, `Detenido`;
   - transiciones (tabla δ):

     | Origen | Evento | Destino |
     |---|---|---|
     | Cerrado | abrir | Abriendo |
     | Abriendo | abrir | Abierto |
     | Abriendo | obstaculo | Detenido |
     | Detenido | cerrar | Cerrado |
     | Abierto | cerrar | Cerrado |
3. Una política **`NoAbrirTrasObstaculo` [FORBIDDEN] sobre Porton**: `obstaculo · abrir` (después de detectar un obstáculo no se puede volver a abrir sin cerrar antes).
4. (Opcional) Un escenario `SalidaDueno sobre Porton actor Dueno: abrir, abrir, cerrar`.

**Al terminar** el indicador debe estar en ✓ verde. (Pista: si aparece un error que no esperas, léelo con la sección 6.)

### Hoja de observación (la rellena quien observa)

| # | Tarea | Hora inicio | Hora fin | ¿Lo logró sin ayuda? (sí / con pista / no) | Tropiezos observados | Comentarios del usuario |
|---|---|---|---|---|---|---|
| 1 | Crear el modelo y añadir `domus.lang` | | | | | |
| 2 | Crear el sistema y los 2 roles (con hereda) | | | | | |
| 3 | Crear el dispositivo, los 3 eventos y el `requiere` | | | | | |
| 4 | Crear los 4 estados y marcar → y ◎ | | | | | |
| 5 | Rellenar las 5 filas de la tabla δ | | | | | |
| 6 | Escribir la política FORBIDDEN | | | | | |
| 7 | (Opcional) Escenario | | | | | |
| 8 | Leer y entender un mensaje de error o aviso | | | | | |

**Tiempo total:** ______ min   **¿Terminó con ✓ verde?** sí / no

**Preguntas finales al usuario:**
1. ¿Qué fue lo más fácil?
2. ¿Qué fue lo más difícil o confuso?
3. ¿Entendiste los mensajes de error? ¿Alguno no?
4. Del 1 al 5, ¿qué tan cómodo te resultó editar sin escribir texto libre?
