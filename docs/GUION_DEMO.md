# Guion de la demo en vivo — Domus (≈ 5 minutos)

> **Para:** Erika (no hace falta saber MPS: el guion es clic por clic).
> **Modelo:** `domus.lang.sandbox.demo.caso_en_vivo` (sistema `CasaDemo`). En su estado guardado tiene **0 errores**.
> **Ensayado** el 23-nov-2026 vía MCP: cada mensaje entre comillas es el **texto literal** que muestra MPS.
> Lo marcado con ⚠️ son gestos de teclado que no se pudieron ensayar automáticamente: pruébalos una vez antes de grabar.

> **Antes de grabar, haz un ensayo completo una vez; los pasos ⚠️ tienen alternativa si el gesto no funciona.**

## Qué hay en `CasaDemo` (para orientarte)

```
sistema CasaDemo
  roles:  rol Invitado,  rol Residente hereda Invitado
  dispositivo Puerta
    eventos:  abrir : COMMAND requiere Residente,  cerrar : COMMAND
    estados:  → ◎ Cerrada,  Abierta
    transiciones:  | Cerrada | abrir  | Abierta |
                   | Abierta | cerrar | Cerrada |
  dispositivo Luz
    eventos:  encender : COMMAND,  apagar : COMMAND
    estados:  → ◎ Apagada,  Encendida
    transiciones:  | Apagada   | encender | Encendida |
                   | Encendida | apagar   | Apagada   |
  politica CicloPuerta [REQUIRED] sobre Puerta:      (abrir · cerrar)*
  politica NoAbrirDosVeces [FORBIDDEN] sobre Puerta: abrir · abrir
  escenario EntradaResidente sobre Puerta actor Residente: abrir, cerrar
```

## Cómo se ven los errores en MPS (léelo una vez)
- **Error:** subrayado ondulado **rojo** bajo el elemento, marca roja en el margen derecho y el indicador de la esquina superior derecha del editor deja de ser ✓ verde.
- **Para leer el mensaje:** deja el ratón quieto **sobre lo subrayado** ~1 segundo y aparece un recuadro con el texto.
- **Warning:** subrayado amarillo. **Info:** sin subrayado fuerte (se ve al pasar el ratón).
- **Deshacer:** `Ctrl+Z` deshace el último cambio, como en Word.

---

## 0. Preparación (antes de grabar, no cuenta en los 5 minutos)

1. Abre **MPS 2026.2**. En la pantalla de bienvenida: **Open** → elige la carpeta `C:\ProyectoFinalCompiladores\domus` → **OK**. Si pregunta si confías en el proyecto: **Trust Project**.
2. Espera a que termine la barra de progreso de abajo a la derecha (indexación).
3. Menú **Build → Rebuild Project**. Espera a que acabe (1–3 min). **Obligatorio en un clon nuevo:** sin esto, el lenguaje no está compilado y salen cientos de errores falsos.
4. En el panel izquierdo (**Logical View**) despliega `domus.lang.sandbox` → `demo` → `caso_en_vivo` y haz **doble clic en `CasaDemo`**. Se abre el editor.
5. Comprueba que arriba a la derecha del editor aparece el ✓ verde (0 errores).
6. Abre la terminal de MPS: menú **View → Tool Windows → Terminal** (o `Alt+F12`). Déjala abierta pero minimizada; se usa en el paso 5.
7. **JRE para ejecutar:** no hay que configurar nada en MPS. El módulo de la sandbox tiene desactivada la compilación dentro de MPS, así que el Java generado se ejecuta desde la terminal con el **JBR** (el Java que trae MPS en `C:\Program Files\JetBrains\MPS 2026.2\jbr`), que es Java 25. *(Nota de S2: si alguna vez se ejecuta con una "Run Configuration" de MPS y sale `UnsupportedClassVersionError`, en Edit Configurations se pone ese `jbr` como JRE.)*
8. Ensayo rápido de los gestos ⚠️: Enter al final de una línea, `Ctrl+W` para ampliar la selección, `Ctrl+Espacio` para completar. Luego `Ctrl+Z` hasta volver al ✓ verde.

---

## 1. Escribir con la tabla δ (≈ 1:15)

**Hacer:**
1. En `dispositivo Luz`, línea `apagar : COMMAND`: haz clic justo **después de `COMMAND`** y pulsa **Enter**. Aparece una línea nueva de evento. Escribe **`atenuar`** (queda como `COMMAND` por defecto). ⚠️
2. En la línea `estados:` de Luz, haz clic justo **después de `Encendida`**, escribe una **coma `,`** y luego **`Atenuada`**. ⚠️
   - *Se verá* un subrayado amarillo en `Atenuada`: «Warning: El estado 'Atenuada' no se puede alcanzar desde el estado inicial 'Apagada'». Es normal: aún no hay ninguna transición que llegue a él.
3. En la **tabla de transiciones de Luz**, haz clic al final de la última celda (**`Apagada`** de la fila `Encendida | apagar | Apagada`) y pulsa **Enter**: aparece una fila vacía `<origen> <evento> <destino>`.
4. En `<origen>` pulsa **Ctrl+Espacio** y elige **Encendida**; `Tab` → en `<evento>` **Ctrl+Espacio** → **atenuar**; `Tab` → en `<destino>` **Ctrl+Espacio** → **Atenuada**.
   - *Se verá* (el warning desaparece y sale un error rojo en `Atenuada`): «Error: El estado 'Atenuada' es un bloqueo (deadlock): no tiene transiciones de salida y no es de reposo (◎), así que el dispositivo se quedaría atascado ahí».
5. Al final de esa fila nueva pulsa **Enter** otra vez y rellena: **Atenuada | apagar | Apagada**.
   - *Se verá:* el error desaparece y vuelve el ✓ verde.

**Decir:**
> "Esto no es un editor de texto: es **edición proyectiva**. No hay parser; edito directamente el árbol sintáctico, y la tabla es una proyección de ese árbol. Cada fila es un par de la **función de transición δ** del autómata. Fíjense que el completado solo me ofrece estados y eventos de *este* dispositivo, y que el razonador ya me avisó de un estado inalcanzable y de un bloqueo mientras escribía."

---

## 2. Errores de alcance y de tipos (≈ 1:00)

### 2a. Error de alcance (gramática sensible al contexto)
**Hacer:**
1. En la tabla de **Luz**, haz clic en la fila **`Encendida | apagar | Apagada`** y pulsa **Ctrl+W** varias veces hasta que quede seleccionada **la fila entera**. Pulsa **Ctrl+C**.
2. En la tabla de **Puerta**, haz clic en la última fila (`Abierta | cerrar | Cerrada`), selecciónala entera con **Ctrl+W** y pulsa **Ctrl+V**. ⚠️ (Debe añadirse la fila copiada debajo. Si en vez de eso reemplaza la fila, pulsa `Ctrl+Z` y prueba a pegar con el cursor al final de la última celda.)

**Se verá** (subrayado rojo en las tres celdas de la fila pegada):
- «The reference  Encendida (source) is out of search scope»
- «The reference  apagar (event) is out of search scope»
- «The reference  Apagada (target) is out of search scope»

*(Así, en inglés y con doble espacio: es el mensaje estándar de MPS para el ámbito.)*

**Decir:**
> "Pegué en la Puerta una transición de la Luz. Sintácticamente es correcta, pero **depende del contexto**: un estado solo vale dentro de su propio dispositivo. Esa condición no se puede expresar con una gramática libre de contexto; la expresamos con **reglas de alcance (scopes)**."

3. Pulsa **Ctrl+Z** para quitar la fila pegada (vuelve el ✓).

### 2b. Error de tipos (roles)
**Hacer:**
1. En la línea `escenario EntradaResidente sobre Puerta actor Residente:`, haz clic sobre **`Residente`** (el de después de `actor`), pulsa **Ctrl+Espacio** y elige **Invitado**.

**Se verá** (subrayado rojo en el paso `abrir` del escenario):
- «Error: Incompatibilidad de roles: el actor 'Invitado' no puede ejecutar el evento 'abrir' en el escenario 'EntradaResidente', porque ese evento requiere el rol 'Residente' (o un rol que herede de él).»

**Decir:**
> "Ahora es un error de **tipos**. Cada rol es un tipo y la herencia es **subtipado**: Residente es subtipo de Invitado, pero no al revés. El typesystem **infiere** el tipo del actor y comprueba que sea subtipo del rol que exige `abrir`."

2. Pulsa **Ctrl+Z** (vuelve `actor Residente` y el ✓).

---

## 3. Deadlock y política violada (≈ 1:00)

**Hacer:**
1. En la tabla de **Luz**, selecciona la fila **`Atenuada | apagar | Apagada`** con **Ctrl+W** (fila entera) y pulsa **Delete**.
   - *Se verá* (rojo en `Atenuada`, en la línea de estados): «Error: El estado 'Atenuada' es un bloqueo (deadlock): no tiene transiciones de salida y no es de reposo (◎), así que el dispositivo se quedaría atascado ahí».
2. En `politica NoAbrirDosVeces [FORBIDDEN] sobre Puerta:` haz clic sobre el **segundo `abrir`**, pulsa **Ctrl+Espacio** y elige **cerrar** (el de Puerta). La política queda `abrir · cerrar`.
   - *Se verá* (rojo en el nombre de la política): «Error: Política violada: la traza 'abrir · cerrar' contiene el patrón prohibido».

**Decir:**
> "Cada dispositivo es un **autómata finito**. El bloqueo se detecta con un recorrido del grafo: `Atenuada` es alcanzable, no tiene salidas y no es estado de reposo. La política prohíbe el patrón `abrir · cerrar`; el razonador construye el **autómata producto** entre la Puerta y el patrón y, con una búsqueda en anchura, devuelve la **palabra mínima** que lo viola: `abrir · cerrar`. Ese es el **contraejemplo**."

---

## 4. Corregir y ver todo en verde (≈ 0:30)

**Hacer:**
1. Pulsa **Ctrl+Z** hasta que vuelva el ✓ verde, comprobando que las filas de `Atenuada` siguen en la tabla de Luz (si desaparecen, **Ctrl+Shift+Z**). Normalmente bastan dos: una deshace el cambio de la política y otra el borrado de la fila.
2. Comprueba el **✓ verde** arriba a la derecha. Pasa el ratón por `politica NoAbrirDosVeces` para enseñar el info: «Info: Política verificada: AFD mínimo de 4 estados (3 útiles + sumidero)».

**Decir:**
> "Todo vuelve a verde. Y esto es importante: todas estas comprobaciones **siempre terminan**, porque trabajamos con autómatas finitos: alcanzabilidad, vacuidad e inclusión de lenguajes regulares son **decidibles**. Si el lenguaje tuviera contadores sin límite, ya no podríamos garantizarlo."

---

## 5. Generar el Java, ejecutarlo y leer el reporte (≈ 1:00)

**Hacer:**
1. En **Logical View**, clic derecho sobre el modelo **`caso_en_vivo`** → **Generate Model** (si no aparece, **Make Model**). Espera a que termine (unos segundos).
2. Abre la **Terminal** (`Alt+F12`). Debe estar en la carpeta `C:\ProyectoFinalCompiladores\domus`. Pega estas líneas (PowerShell) y pulsa Enter:

```powershell
[Console]::OutputEncoding = [Text.Encoding]::UTF8
$J = "C:\Program Files\JetBrains\MPS 2026.2\jbr\bin"
& "$J\javac.exe" -encoding UTF-8 -d "$env:TEMP\domus_demo" "languages\domus.lang.sandbox\source_gen\domus\lang\sandbox\demo\caso_en_vivo\GeneratedHomeSystem_CasaDemo.java"
& "$J\java.exe" "-Dstdout.encoding=UTF-8" -cp "$env:TEMP\domus_demo" domus.lang.sandbox.demo.caso_en_vivo.GeneratedHomeSystem_CasaDemo
```

*(Estas cuatro líneas se ejecutaron tal cual en `powershell.exe` desde `C:\ProyectoFinalCompiladores\domus` el 23-nov-2026: compilan y ejecutan sin errores y las tildes y flechas salen bien. La carpeta `%TEMP%\domus_demo` se crea sola.)*

**Se verá** (salida real del ensayo, con `Atenuada` añadida en el paso 1):

```
============================================================
REPORTE DE VERIFICACIÓN del sistema CasaDemo
(calculado en tiempo de generación por domus.reasoner)
============================================================

--- Consistencia de dispositivos (§4.2) y ER equivalente (Kleene 2, §4.5) ---

Dispositivo Puerta
  2 estados, 2 eventos, 2 transiciones
  Estados inalcanzables: 0
  Bloqueos (deadlocks): 0
  ...
  ER equivalente (Kleene 2, eliminación de estados): (abrir · cerrar)*

Dispositivo Luz
  3 estados, 3 eventos, 4 transiciones
  ...
  ER equivalente (Kleene 2, eliminación de estados): (encender · (apagar | atenuar · apagar))*

--- Políticas (§4.4) y AFD mínimo de cada política (§4.3) ---

Política CicloPuerta [REQUIRED] sobre Puerta
  Veredicto: CUMPLE
  AFD mínimo de 3 estados (2 útiles + sumidero)

Política NoAbrirDosVeces [FORBIDDEN] sobre Puerta
  Veredicto: CUMPLE
  AFD mínimo de 4 estados (3 útiles + sumidero)

SIMULACIÓN DE ESCENARIOS (semántica operacional de pasos pequeños)

Escenario EntradaResidente sobre Puerta:
  Cerrada → Abierta → Cerrada
  ACEPTADO
```

**Decir** (señalando cada parte):
> "El generador produjo Java ejecutable. Arriba está el **reporte del razonador**, calculado al generar. Las políticas son expresiones regulares que se compilan a autómatas: **Kleene, parte 1**, con su AFD mínimo, contando el estado sumidero. Y al revés, cada dispositivo se convierte en una expresión regular equivalente por eliminación de estados: **Kleene, parte 2**; miren cómo aparece `atenuar · apagar`, lo que acabo de escribir. Abajo, la **semántica operacional**: el escenario se ejecuta paso a paso, Cerrada → Abierta → Cerrada, y se acepta."

*Plan B si la terminal falla:* en MPS, menú **File → Open**, abre `domus\languages\domus.lang.sandbox\source_gen\domus\lang\sandbox\demo\caso_en_vivo\GeneratedHomeSystem_CasaDemo.java` y muestra la constante `REPORTE` (es el mismo texto).

---

## Cierre (≈ 0:15)
> "En resumen: un DSL proyectivo con alcance sensible al contexto, tipos con subtipado, y un razonador sobre autómatas que verifica, da contraejemplos y genera código. Todo decidible."

**Duración total:** 0:20 de introducción opcional + 1:15 + 1:00 + 1:00 + 0:30 + 1:00 + 0:15 ≈ **5 min**.

---

## Dejar el modelo como estaba (después de grabar)

El modelo debe volver al estado guardado (0 errores, sin `atenuar` ni `Atenuada`). Dos formas:

**A. Desde MPS (recomendada):**
1. En la tabla de Luz, selecciona con **Ctrl+W** la fila `Atenuada | apagar | Apagada` → **Delete**; lo mismo con `Encendida | atenuar | Atenuada`.
2. En `estados:` de Luz, selecciona `Atenuada` (doble clic) → **Delete** (borra también la coma si queda).
3. En `eventos:` de Luz, selecciona la línea `atenuar : COMMAND` con **Ctrl+W** → **Delete**.
4. Comprueba el ✓ verde y que Luz vuelve a tener 2 eventos, 2 estados y 2 transiciones.

**B. Con Git (si algo quedó raro):** cierra MPS y en una terminal, desde `C:\ProyectoFinalCompiladores`:
```
git checkout -- domus/languages/domus.lang.sandbox/models/domus.lang.sandbox.demo.caso_en_vivo.mps
```
Vuelve a abrir MPS.

No hace falta borrar `%TEMP%\domus_demo` ni los archivos generados (`source_gen` no se sube a Git).
