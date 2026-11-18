# 02 — Especificación formal de Domus

> Fuente única de verdad del diseño. Claude Code y el equipo implementan **exactamente** esto.
> Si algo cambia, se cambia aquí primero (PR con `docs:`).

## 0. Módulos MPS

| Módulo | Tipo | Contenido |
|---|---|---|
| `domus.lang` | Language | Structure, Editor, Constraints, Behavior, Typesystem, Generator, Intentions |
| `domus.reasoner` | Solution (BaseLanguage) | Algoritmos del razonador sobre autómatas (independientes de MPS) |
| `domus.sandbox` | Solution | 3 modelos válidos + 3 inválidos (+ caso demo) |
| `domus.tests` | Solution con modelo `@tests` | Pruebas `jetbrains.mps.lang.test` y `jetbrains.mps.baseLanguage.unitTest` |

Proyecto MPS en la subcarpeta `domus/` del repositorio.

---

## 1. Sintaxis abstracta (Structure) — gramática de árboles

Notación: `C(a: T, …)`; `→X` es referencia; `X*` lista; `X?` opcional; `X+` uno o más.

```
HomeSystem   ::= HomeSystem(name, roles: Role*, devices: Device+, policies: Policy*, scenarios: Scenario*)
Role         ::= Role(name, parent: →Role?)
Device       ::= Device(name, events: Event+, states: State+, transitions: Transition*)
Event        ::= Event(name, kind: EventKind, requiredRole: →Role?)
EventKind    ::= COMMAND | SENSOR | TIMER
State        ::= State(name, initial: Bool, accepting: Bool)
               | AlarmState(name, initial: Bool, accepting: Bool)          -- AlarmState extends State
Transition   ::= Transition(source: →State, event: →Event, target: →State)
Policy       ::= Policy(name, device: →Device, mode: PolicyMode, expr: RegexExpr)
PolicyMode   ::= REQUIRED | FORBIDDEN
RegexExpr    ::= SymbolExpr(event: →Event) | EpsilonExpr | AnySymbolExpr
               | UnionExpr(left: RegexExpr, right: RegexExpr) | ConcatExpr(left, right)
               | StarExpr(operand: RegexExpr) | PlusExpr(operand) | OptionalExpr(operand) | ParenExpr(operand)
Scenario     ::= Scenario(name, device: →Device, actor: ActorRef, steps: ScenarioStep*)
ActorRef     ::= ActorRef(role: →Role)
ScenarioStep ::= ScenarioStep(event: →Event)
-- conceptos de tipo (solo los usa el typesystem):
RoleType     ::= RoleType(role: →Role)
AlphabetType ::= AlphabetType(device: →Device)
```

### 1.1 Tabla de conceptos (blueprint para `mps_mcp_alter_structure`)

| # | Concepto | Extiende / implementa | Root | Alias (editor) | Propiedades | Hijos | Referencias |
|---|---|---|---|---|---|---|---|
| 1 | `HomeSystem` | `INamedConcept` | **sí** | `sistema` | — | `roles: Role[0..n]`, `devices: Device[1..n]`, `policies: Policy[0..n]`, `scenarios: Scenario[0..n]` | — |
| 2 | `Role` | `INamedConcept` | no | `rol` | — | — | `parent: Role[0..1]` |
| 3 | `Device` | `INamedConcept` | no | `dispositivo` | — | `events: Event[1..n]`, `states: State[1..n]`, `transitions: Transition[0..n]` | — |
| 4 | `EventKind` | enumeración | — | — | `COMMAND`, `SENSOR`, `TIMER` | — | — |
| 5 | `Event` | `INamedConcept`, `IDeviceElement` | no | `evento` | `kind: EventKind` | — | `requiredRole: Role[0..1]` |
| 6 | `IDeviceElement` | **interfaz de concepto** | — | — | — | — | — (behavior: `getDevice()`) |
| 7 | `State` | `INamedConcept`, `IDeviceElement` | no | `estado` | `initial: boolean`, `accepting: boolean` | — | — |
| 8 | `AlarmState` | **extends `State`** | no | `alarma` | — | — | — |
| 9 | `Transition` | `IDeviceElement` | no | `transicion` | — | — | `source: State[1]`, `event: Event[1]`, `target: State[1]` |
| 10 | `PolicyMode` | enumeración | — | — | `REQUIRED`, `FORBIDDEN` | — | — |
| 11 | `Policy` | `INamedConcept` | no | `politica` | `mode: PolicyMode` | `expr: RegexExpr[1]` | `device: Device[1]` |
| 12 | `RegexExpr` | **abstracto** | no | — | — | — | — |
| 13 | `SymbolExpr` | extends `RegexExpr` | no | (nombre del evento) | — | — | `event: Event[1]` |
| 14 | `EpsilonExpr` | extends `RegexExpr` | no | `eps` (muestra `ε`) | — | — | — |
| 15 | `AnySymbolExpr` | extends `RegexExpr` | no | `.` (cualquier evento) | — | — | — |
| 16 | `BinaryRegexExpr` | **abstracto**, extends `RegexExpr` | no | — | — | `left: RegexExpr[1]`, `right: RegexExpr[1]` | — |
| 17 | `UnionExpr` | extends `BinaryRegexExpr` | no | `\|` | — | — | — |
| 18 | `ConcatExpr` | extends `BinaryRegexExpr` | no | `·` | — | — | — |
| 19 | `UnaryRegexExpr` | **abstracto**, extends `RegexExpr` | no | — | — | `operand: RegexExpr[1]` | — |
| 20 | `StarExpr` | extends `UnaryRegexExpr` | no | `*` | — | — | — |
| 21 | `PlusExpr` | extends `UnaryRegexExpr` | no | `+` | — | — | — |
| 22 | `OptionalExpr` | extends `UnaryRegexExpr` | no | `?` | — | — | — |
| 23 | `ParenExpr` | extends `UnaryRegexExpr` | no | `(` | — | — | — |
| 24 | `Scenario` | `INamedConcept` | no | `escenario` | — | `actor: ActorRef[1]`, `steps: ScenarioStep[0..n]` | `device: Device[1]` |
| 25 | `ActorRef` | — | no | `actor` | — | — | `role: Role[1]` |
| 26 | `ScenarioStep` | — | no | `paso` | — | — | `event: Event[1]` |
| 27 | `RoleType` | concepto de tipo | no | — | — | — | `role: Role[1]` |
| 28 | `AlphabetType` | concepto de tipo | no | — | — | — | `device: Device[1]` |

Cumple: ≥ 10–15 conceptos de dominio, herencia (`AlarmState`, jerarquía `RegexExpr`), interfaz de concepto (`IDeviceElement`, `INamedConcept`), composición (hijos) y referencias.

---

## 2. Sintaxis concreta (Editor)

- Proyección textual por defecto con palabras clave en español (ver ejemplo).
- **Proyección no textual obligatoria**: dentro de `Device`, las transiciones se proyectan como **tabla δ** (`jetbrains.mps.lang.editor.table`): columnas `Origen | Evento | Destino`.
- Expresiones regulares en notación infija; los paréntesis son un nodo (`ParenExpr`) — **no hay ambigüedad posible porque el usuario edita el árbol, no texto** (edición proyectiva). La precedencia solo afecta la presentación.
- Estado inicial con `→`, estado de aceptación con `◎`, alarma en rojo.

Ejemplo de cómo debe verse un modelo:

```
sistema CasaSegura
  roles:
    rol Invitado
    rol Residente hereda Invitado
    rol Administrador hereda Residente
  dispositivo Cerradura
    eventos:  desbloquear : COMMAND requiere Residente
              abrir       : SENSOR
              cerrar      : SENSOR
              bloquear    : COMMAND requiere Residente
              forzar      : SENSOR
              desactivar  : COMMAND requiere Administrador
    estados:  → ◎ Bloqueada,  Desbloqueada,  Abierta,  alarma Intrusion
    transiciones (tabla δ):
      | Origen       | Evento      | Destino      |
      | Bloqueada    | desbloquear | Desbloqueada |
      | Desbloqueada | abrir       | Abierta      |
      | Abierta      | cerrar      | Desbloqueada |
      | Desbloqueada | bloquear    | Bloqueada    |
      | Bloqueada    | forzar      | Intrusion    |
      | Intrusion    | desactivar  | Bloqueada    |
  politica CicloCompleto [REQUIRED] sobre Cerradura:
      ((desbloquear · (abrir · cerrar)* · bloquear) | (forzar · desactivar))*
  politica NoBloquearAbierta [FORBIDDEN] sobre Cerradura:
      abrir · bloquear
  escenario EntradaNormal sobre Cerradura actor Residente:
      desbloquear, abrir, cerrar, bloquear
```

---

## 3. Semántica estática

### 3.1 Scoping (Constraints) — condiciones sensibles al contexto

Sea `dev(n)` el `Device` ancestro de `n` y `sys(n)` el `HomeSystem` ancestro.

| Referencia | Ámbito válido |
|---|---|
| `Transition.source`, `Transition.target` | `States(dev(t))` |
| `Transition.event` | `Events(dev(t))` |
| `ScenarioStep.event` | `Events(s.device)` donde `s` es el `Scenario` ancestro |
| `Scenario.device`, `Policy.device` | `Devices(sys(n))` |
| `Role.parent` | `Roles(sys(r)) \ {r}` |
| `Event.requiredRole`, `ActorRef.role` | `Roles(sys(n))` |
| `SymbolExpr.event` | **todos** los eventos de `sys(n)` (intencionalmente amplio: el *tipo* decide la compatibilidad, ver 3.3) |

Restricción de propiedad: `name` de `Device`, `State`, `Event` y `Role` debe pertenecer al lenguaje regular
`ID = [A-Za-z_][A-Za-z0-9_]*` (el propio validador es un autómata finito: Kleene aplicado al DSL).

### 3.2 Reglas de verificación (checking rules)

| Regla | Formalización | Severidad |
|---|---|---|
| R-INI | `∀d ∈ Devices: |{q ∈ States(d) : q.initial}| = 1` | error |
| R-UNQ | nombres únicos: estados y eventos por dispositivo; dispositivos y roles por sistema | error |
| R-ALM | `∀q ∈ AlarmState: ¬q.accepting` | error |
| R-SNS | `e.kind ≠ COMMAND ⇒ e.requiredRole = ⊥` (los sensores y temporizadores no los dispara una persona) | error |
| R-ACY | la relación `parent` entre roles es acíclica (no existe `r` con `r →⁺ r`) | error |

### 3.3 Sistema de tipos (reglas de inferencia)

Tipos: `RoleType(r)` y `AlphabetType(d)`.

**Alfabetos (regex bien tipadas):**
```
              e ∈ Events(d)                         Γ ⊢ r₁ : Σ(d)    Γ ⊢ r₂ : Σ(d)
  (T-Sym) ─────────────────────────      (T-Bin) ───────────────────────────────── (⊕ ∈ {|, ·})
           Γ ⊢ SymbolExpr(e) : Σ(d)               Γ ⊢ r₁ ⊕ r₂ : Σ(d)

           Γ ⊢ r : Σ(d)                                p ∈ Policy   p.device = d
  (T-Un) ─────────────────── (∘ ∈ {*,+,?,()})  (T-Eps) ───────────────────────────────
          Γ ⊢ r∘ : Σ(d)                                Γ ⊢ ε : Σ(d),  Γ ⊢ . : Σ(d)

                  Γ ⊢ p.expr : Σ(d')    d' = p.device
  (T-Pol) ───────────────────────────────────────────────
                          p bien tipada
```
Implementación MPS: `typeof(SymbolExpr) :==: AlphabetType(dev(event))`; en binarias `typeof(left) :==: typeof(right)` y `typeof(this) :==: typeof(left)`; en `Policy` se exige `typeof(expr) :==: AlphabetType(device)`.
Error de dominio que atrapa: **mezclar eventos de dos dispositivos en una misma política** ("incompatibilidad de alfabetos").

**Roles (subtipado):**
```
            r.parent = p                                  Γ ⊢ a : RoleType(x)   e.requiredRole = q   RoleType(x) <: RoleType(q)
  (S-Par) ────────────────────────────     (T-Step) ─────────────────────────────────────────────────────────────────────
          RoleType(r) <: RoleType(p)                         Γ ⊢ ScenarioStep(e) bien tipado bajo el actor a
```
`<:` es la clausura reflexiva-transitiva de `S-Par` (bien definida gracias a R-ACY).
Implementación MPS: *inference rule* `typeof(ActorRef) :==: RoleType(role)`; *subtyping rule* para `RoleType` que devuelve `RoleType(role.parent)`; en `ScenarioStep`, si el evento exige rol, inecuación `typeof(scenario.actor) :<=: RoleType(requiredRole)`.
Error de dominio que atrapa: **un actor sin privilegios ejecuta un comando restringido** ("incompatibilidad de roles").

---

## 4. Semántica del razonador

### 4.1 Cada dispositivo es un autómata finito

`A_d = (Q, Σ, δ, q₀, F)` con `Q = States(d)`, `Σ = Events(d)`, `δ(q,a) = {t.target | t ∈ Transitions(d), t.source = q, t.event = a}`, `q₀` el estado inicial y `F = {q : q.accepting}`.

- Lenguaje de sesiones completas: `L(A_d) = {w ∈ Σ* | δ*(q₀,w) ∩ F ≠ ∅}`.
- Trazas ejecutables (prefijo-cerrado): `Tr(A_d) = {w ∈ Σ* | δ*(q₀,w) ≠ ∅}`.

### 4.2 Verificador de consistencia (grafos, punto fijo)

| Propiedad | Definición | Algoritmo | Costo |
|---|---|---|---|
| Alcanzables | `Reach = μX. {q₀} ∪ {q' : q ∈ X, q' ∈ δ(q,a)}` | BFS | `O(|Q| + |δ|)` |
| Inalcanzables | `Q \ Reach` → warning | — | — |
| Co-alcanzables | `CoReach = μX. F ∪ {q : δ(q,a) ∩ X ≠ ∅}` | BFS inverso | `O(|Q| + |δ|)` |
| Estados trampa | `Reach \ CoReach` (no pueden volver a reposo) → warning | — | — |
| Deadlock | `q ∈ Reach \ F` con `∀a: δ(q,a) = ∅` → error | — | `O(|Q|·|Σ|)` |
| No determinismo | `∃q,a: |δ(q,a)| > 1` → warning | — | `O(|δ|)` |
| Alarma alcanzable (deducción) | `∃w: δ*(q₀,w) ∩ AlarmStates ≠ ∅` → **info** con la traza `w` mínima que dispara la alarma | BFS con padres | `O(|Q| + |δ|)` |
| Alarma sin recuperación | `q ∈ AlarmStates ∩ Reach` y `q ∉ CoReach` (desde la alarma no se puede volver a reposo) → error | Reach ∩ ¬CoReach | `O(|Q| + |δ|)` |

Un modelo es **válido** si no tiene errores estáticos (§3) ni errores del razonador; los warnings e infos son deducciones permitidas.

### 4.3 Teorema de Kleene, parte 1 (ER → AF): compilar políticas

1. **Thompson** (semántica denotacional composicional: cada concepto `RegexExpr` implementa `toNfa`):
   `T(a)`, `T(ε)`, `T(.) = ⋃_{a∈Σ} T(a)`, `T(r₁|r₂)`, `T(r₁·r₂)`, `T(r*)`, `T(r+) = T(r·r*)`, `T(r?) = T(r|ε)`, `T((r)) = T(r)`. Tamaño: `≤ 2|r|` estados.
2. **Construcción de subconjuntos** con ε-clausura → AFD. Peor caso `O(2^n)` estados.
3. **Minimización** (Moore, refinamiento de particiones) → AFD mínimo, `O(n²·|Σ|)`.

### 4.4 Verificación de políticas (decidible) con contraejemplo

- `REQUIRED`: `L(A_d) ⊆ L(R)` ⇔ `L(A_d) ∩ (Σ* \ L(R)) = ∅`.
  Se construye `M_R` (AFD mínimo completo de `R`), su complemento, y el **autómata producto** `A_d × ¬M_R`. Si existe un estado `(p, s)` alcanzable con `p ∈ F` y `s ∉ F_R`, la política se viola; el BFS devuelve la **palabra mínima** `w` como contraejemplo.
- `FORBIDDEN`: `Tr(A_d) ∩ L(Σ*·R·Σ*) = ∅` (el patrón `R` nunca ocurre como subsecuencia contigua de una traza). Producto `A_d^{Tr} × M_{Σ*RΣ*}`.
- Costo: `O(|Q_d| · |Q_R| · |Σ|)` tras determinizar `R`. Contexto teórico: la inclusión entre AFN es PSPACE-completa; por eso solo se determiniza la política (normalmente pequeña) y nunca el producto completo de AFN.

### 4.5 Teorema de Kleene, parte 2 (AF → ER)

**Eliminación de estados** (GNFA, Brzozowski–McCluskey): se agrega `q_s` y `q_f`, se elimina cada estado `k` reemplazando `R_ij ← R_ij | R_ik · R_kk* · R_kj`. El reporte muestra la ER equivalente a cada dispositivo.
**Prueba de ida y vuelta (test)**: `L(Thompson(StateElim(A))) = L(A)`, verificado por equivalencia de AFD mínimos (isomorfismo). Esto demuestra computacionalmente ambas partes del teorema.

### 4.6 Simulador operacional (semántica de pasos pequeños)

Configuración `⟨q, w⟩`. Regla: `⟨q, a·w⟩ → ⟨q', w⟩` si `q' ∈ δ(q,a)`. Un escenario se **acepta** si llega a `⟨q, ε⟩` con `q ∈ F`; se **rechaza** en el paso `k` si `δ(q,a_k) = ∅`. La salida es la secuencia de estados `q₀ → q₁ → …` (en un AFN, el conjunto de estados activos).

### 4.7 Decidibilidad

Todas las propiedades anteriores son **decidibles** porque los modelos son autómatas finitos: alcanzabilidad, vacuidad, inclusión y equivalencia de lenguajes regulares terminan siempre. Límite consciente del diseño: no se modelan contadores ni variables no acotadas; con ellas (máquinas de 2 contadores) la alcanzabilidad sería indecidible. Esto alimenta el bloque de "Análisis crítico" del video.

---

## 5. Generación

| Salida | Tecnología MPS | Contenido |
|---|---|---|
| `GeneratedHomeSystem_<Nombre>.java` | Generator (plantillas BaseLanguage) | `enum` de estados y eventos por dispositivo, método `step`, `main` que ejecuta cada escenario e imprime la traza |
| `reporte_<Nombre>` (texto estructurado o JSON) | TextGen o código generado que lo imprime | Resultado del razonador: inalcanzables, deadlocks, trampas, alarmas, veredicto de cada política con contraejemplo, tamaño del AFD mínimo, ER equivalente (Kleene 2) |

---

## 6. Modelos de la Sandbox (Hito 2)

Cada uno es un **modelo MPS separado** en `domus.sandbox` (literal a la guía).

| Modelo | Tipo | Qué demuestra |
|---|---|---|
| `validos.v1_cerradura` | válido | El ejemplo de la §2 completo |
| `validos.v2_alarma` | válido | Sistema de alarma con TIMER y jerarquía de 3 roles |
| `validos.v3_casa` | válido | 3 dispositivos, varias políticas y escenarios |
| `invalidos.i1_alcance` | inválido (**contexto**) | Transición que apunta a un estado de otro dispositivo (se crea cortando/pegando una transición entre dispositivos) → error de alcance |
| `invalidos.i2_roles` | inválido (**tipos**) | Actor `Invitado` ejecuta `bloquear`, que requiere `Residente` → error de tipo de rol |
| `invalidos.i3_alfabeto` | inválido (**tipos**) | Política sobre `Cerradura` que usa un evento de `Termostato` → incompatibilidad de alfabetos |
| `invalidos.i4_restricciones` | inválido (**contexto**) | Dos estados iniciales, alarma de aceptación, sensor con rol, nombre `2estado` |

Los modelos `invalidos.*` llevan activado **Do not generate**.
