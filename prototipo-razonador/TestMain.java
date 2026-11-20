import domus.reasoner.Alphabet;
import domus.reasoner.Dfa;
import domus.reasoner.Equivalence;
import domus.reasoner.GraphAnalysis;
import domus.reasoner.MooreMinimizer;
import domus.reasoner.Nfa;
import domus.reasoner.PolicyChecker;
import domus.reasoner.Regex;
import domus.reasoner.SimulationResult;
import domus.reasoner.Simulator;
import domus.reasoner.StateEliminator;
import domus.reasoner.SubsetConstruction;
import domus.reasoner.Thompson;
import domus.reasoner.Verdict;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

/**
 * Pruebas del prototipo del razonador (sin JUnit), sobre la Cerradura de la §2.
 *
 * Compilar y ejecutar desde prototipo-razonador/ :
 *   javac -encoding UTF-8 domus/reasoner/*.java TestMain.java
 *   java TestMain
 * Termina con código 0 si todas las aserciones pasan y 1 si alguna falla.
 */
public class TestMain {
  public static PrintStream out;
  public static int passed = 0;
  public static int failed = 0;

  /** Alfabeto de la Cerradura, en el orden de declaración de la §2. */
  public static Alphabet sigma;
  public static List<String> stateNames;

  public static final int BLOQUEADA = 0;
  public static final int DESBLOQUEADA = 1;
  public static final int ABIERTA = 2;
  public static final int INTRUSION = 3;

  public static void main(String[] args) throws Exception {
    out = new PrintStream(System.out, true, "UTF-8");

    sigma = new Alphabet();
    sigma.add("desbloquear");
    sigma.add("abrir");
    sigma.add("cerrar");
    sigma.add("bloquear");
    sigma.add("forzar");
    sigma.add("desactivar");

    stateNames = new ArrayList<String>();
    stateNames.add("Bloqueada");
    stateNames.add("Desbloqueada");
    stateNames.add("Abierta");
    stateNames.add("Intrusion");

    test01Consistencia();
    test02CicloCompleto();
    test03NoBloquearAbierta();
    test04RequiredViolada();
    test05BorradorBloqueaAbierta();
    test06BorradorAlarmaSinRecuperacion();
    test07Simulador();
    test08ThompsonSubconjuntos();
    test09IdaYVueltaKleene();
    test10MinimoDelDispositivo();
    test11EquivalenciaNegativa();
    test12NoDeterminismoYShortlex();
    test13OperadoresDerivados();
    test14CasosBorde();
    test15PropiedadesAleatorias();

    out.println();
    out.println("RESULTADO: " + passed + " aserciones OK, " + failed + " fallidas");
    if (failed > 0) {
      System.exit(1);
    }
  }

  // ---------------------------------------------------------------- utilidades

  public static void section(String title) {
    out.println();
    out.println(title);
  }

  public static void check(boolean condition, String description) {
    if (condition) {
      passed = passed + 1;
      out.println("  [OK]    " + description);
    } else {
      failed = failed + 1;
      out.println("  [FALLA] " + description);
    }
  }

  public static void checkEquals(Object expected, Object actual, String description) {
    boolean same = expected == null ? actual == null : expected.equals(actual);
    check(same, description);
    if (!same) {
      out.println("          esperado: " + expected);
      out.println("          obtenido: " + actual);
    }
  }

  public static List<String> names(String[] items) {
    List<String> result = new ArrayList<String>();
    for (int i = 0; i < items.length; i++) {
      result.add(items[i]);
    }
    return result;
  }

  public static List<Integer> word(String[] items) {
    return sigma.wordOf(names(items));
  }

  public static Set<Integer> setOf(int[] items) {
    Set<Integer> result = new TreeSet<Integer>();
    for (int i = 0; i < items.length; i++) {
      result.add(items[i]);
    }
    return result;
  }

  public static Nfa sym(String name) {
    return Thompson.symbol(sigma.indexOf(name), sigma.size());
  }

  public static Dfa compile(Nfa nfa) {
    return MooreMinimizer.minimize(SubsetConstruction.determinize(nfa));
  }

  // ---------------------------------------------------------------- modelos

  /** Estados y marcas de la Cerradura, sin transiciones. */
  public static Nfa cerraduraSinTransiciones() {
    Nfa nfa = new Nfa(sigma.size());
    nfa.addState();
    nfa.addState();
    nfa.addState();
    nfa.addState();
    nfa.initial = BLOQUEADA;
    nfa.accepting.add(BLOQUEADA);
    return nfa;
  }

  public static void transicion(Nfa nfa, int origen, String evento, int destino) {
    nfa.addTransition(origen, sigma.indexOf(evento), destino);
  }

  /** Las 5 transiciones comunes a todas las variantes (todas menos Intrusion --desactivar--> Bloqueada). */
  public static Nfa cerraduraSinRecuperacion() {
    Nfa nfa = cerraduraSinTransiciones();
    transicion(nfa, BLOQUEADA, "desbloquear", DESBLOQUEADA);
    transicion(nfa, DESBLOQUEADA, "abrir", ABIERTA);
    transicion(nfa, ABIERTA, "cerrar", DESBLOQUEADA);
    transicion(nfa, DESBLOQUEADA, "bloquear", BLOQUEADA);
    transicion(nfa, BLOQUEADA, "forzar", INTRUSION);
    return nfa;
  }

  /** La Cerradura de la §2 (tabla δ completa). */
  public static Nfa cerradura() {
    Nfa nfa = cerraduraSinRecuperacion();
    transicion(nfa, INTRUSION, "desactivar", BLOQUEADA);
    return nfa;
  }

  /** ((desbloquear · (abrir · cerrar)* · bloquear) | (forzar · desactivar))* */
  public static Nfa cicloCompleto() {
    Nfa visita = Thompson.star(Thompson.concat(sym("abrir"), sym("cerrar")));
    Nfa entrada = Thompson.concat(Thompson.concat(sym("desbloquear"), visita), sym("bloquear"));
    Nfa alarma = Thompson.concat(sym("forzar"), sym("desactivar"));
    return Thompson.star(Thompson.union(entrada, alarma));
  }

  /** abrir · bloquear */
  public static Nfa noBloquearAbierta() {
    return Thompson.concat(sym("abrir"), sym("bloquear"));
  }

  /** (desbloquear · abrir · cerrar · bloquear)* */
  public static Nfa siempreAbrir() {
    Nfa ciclo = Thompson.concat(Thompson.concat(sym("desbloquear"), sym("abrir")),
        Thompson.concat(sym("cerrar"), sym("bloquear")));
    return Thompson.star(ciclo);
  }

  // ---------------------------------------------------------------- pruebas 1 a 10

  public static void test01Consistencia() {
    section("1. Consistencia de la Cerradura");
    Nfa a = cerradura();
    checkEquals(0, GraphAnalysis.unreachable(a).size(), "0 estados inalcanzables");
    checkEquals(0, GraphAnalysis.traps(a).size(), "0 estados trampa");
    checkEquals(0, GraphAnalysis.deadlocks(a).size(), "0 deadlocks");
    check(GraphAnalysis.isDeterministic(a), "es determinista");
    int[] alarmas = {INTRUSION};
    checkEquals(0, GraphAnalysis.alarmsWithoutRecovery(a, setOf(alarmas)).size(), "0 alarmas sin recuperación");
    String[] esperada = {"forzar"};
    List<Integer> traza = GraphAnalysis.shortestTraceTo(a, setOf(alarmas));
    checkEquals(names(esperada), sigma.namesOf(traza), "traza mínima a la alarma = [forzar]");
  }

  public static void test02CicloCompleto() {
    section("2. Política CicloCompleto [REQUIRED]");
    Verdict verdict = PolicyChecker.checkRequired(cerradura(), cicloCompleto(), sigma);
    check(verdict.ok, "CicloCompleto se CUMPLE");
    checkEquals(0, verdict.counterexample.size(), "sin contraejemplo");
    Dfa minimal = compile(cicloCompleto());
    checkEquals(5, minimal.stateCount, "su AFD mínimo completo tiene 5 estados");
    check(minimal.sinkState() != -1, "uno de los 5 es el sumidero");
    checkEquals("AFD mínimo de 5 estados (4 útiles + sumidero)", MooreMinimizer.describe(minimal),
        "mensaje: " + MooreMinimizer.describe(minimal));
  }

  public static void test03NoBloquearAbierta() {
    section("3. Política NoBloquearAbierta [FORBIDDEN]");
    Verdict verdict = PolicyChecker.checkForbidden(cerradura(), noBloquearAbierta(), sigma);
    check(verdict.ok, "NoBloquearAbierta se CUMPLE");
  }

  public static void test04RequiredViolada() {
    section("4. REQUIRED (desbloquear·abrir·cerrar·bloquear)*");
    Verdict verdict = PolicyChecker.checkRequired(cerradura(), siempreAbrir(), sigma);
    check(!verdict.ok, "se VIOLA");
    String[] esperado = {"desbloquear", "bloquear"};
    checkEquals(names(esperado), verdict.counterexample, "contraejemplo exacto [desbloquear, bloquear]");
  }

  public static void test05BorradorBloqueaAbierta() {
    section("5. Borrador: Cerradura + Abierta --bloquear--> Bloqueada");
    Nfa borrador = cerradura();
    transicion(borrador, ABIERTA, "bloquear", BLOQUEADA);
    Verdict verdict = PolicyChecker.checkForbidden(borrador, noBloquearAbierta(), sigma);
    check(!verdict.ok, "NoBloquearAbierta se VIOLA");
    String[] esperado = {"desbloquear", "abrir", "bloquear"};
    checkEquals(names(esperado), verdict.counterexample, "contraejemplo exacto [desbloquear, abrir, bloquear]");
  }

  public static void test06BorradorAlarmaSinRecuperacion() {
    section("6. Borrador: Cerradura sin Intrusion --desactivar--> Bloqueada");
    Nfa borrador = cerraduraSinRecuperacion();
    int[] intrusion = {INTRUSION};
    checkEquals(setOf(intrusion), GraphAnalysis.traps(borrador), "Intrusion es trampa");
    checkEquals(setOf(intrusion), GraphAnalysis.alarmsWithoutRecovery(borrador, setOf(intrusion)),
        "Intrusion es alarma sin recuperación");
    checkEquals(setOf(intrusion), GraphAnalysis.deadlocks(borrador), "Intrusion es deadlock");
    checkEquals(0, GraphAnalysis.unreachable(borrador).size(), "sigue sin estados inalcanzables");
  }

  public static void test07Simulador() {
    section("7. Simulador");
    Nfa a = cerradura();
    String[] entradaNormal = {"desbloquear", "abrir", "cerrar", "bloquear"};
    SimulationResult ok = Simulator.run(a, word(entradaNormal));
    check(ok.accepted, "EntradaNormal se ACEPTA");
    checkEquals(0, ok.failedStep, "ningún paso falla");
    String esperada = "Bloqueada" + Simulator.ARROW + "Desbloqueada" + Simulator.ARROW + "Abierta"
        + Simulator.ARROW + "Desbloqueada" + Simulator.ARROW + "Bloqueada";
    checkEquals(esperada, Simulator.formatTrace(ok, stateNames), "traza: " + Simulator.formatTrace(ok, stateNames));

    String[] soloAbrir = {"abrir"};
    SimulationResult mal = Simulator.run(a, word(soloAbrir));
    check(!mal.accepted, "el escenario (abrir) se RECHAZA");
    checkEquals(1, mal.failedStep, "falla en el paso 1");
    checkEquals("Bloqueada", Simulator.formatTrace(mal, stateNames), "la traza se queda en Bloqueada");

    String[] aMedias = {"desbloquear", "abrir"};
    SimulationResult incompleto = Simulator.run(a, word(aMedias));
    check(!incompleto.accepted && incompleto.failedStep == 0,
        "(desbloquear, abrir) se RECHAZA sin paso fallido: termina en Abierta, que no es de aceptación");
  }

  public static void test08ThompsonSubconjuntos() {
    section("8. Thompson + subconjuntos sobre CicloCompleto");
    Nfa thompson = cicloCompleto();
    Dfa dfa = SubsetConstruction.determinize(thompson);
    String[][] aceptadas = {
        {},
        {"desbloquear", "bloquear"},
        {"desbloquear", "abrir", "cerrar", "bloquear"},
        {"forzar", "desactivar"},
        {"desbloquear", "abrir", "cerrar", "abrir", "cerrar", "bloquear", "forzar", "desactivar"}
    };
    String[][] rechazadas = {
        {"desbloquear"},
        {"abrir"},
        {"forzar"},
        {"desbloquear", "abrir", "bloquear"},
        {"desbloquear", "bloquear", "desactivar"},
        {"forzar", "desactivar", "desactivar"}
    };
    for (int i = 0; i < aceptadas.length; i++) {
      List<Integer> w = word(aceptadas[i]);
      check(dfa.accepts(w) && Simulator.run(thompson, w).accepted, "acepta  " + names(aceptadas[i]));
    }
    for (int i = 0; i < rechazadas.length; i++) {
      List<Integer> w = word(rechazadas[i]);
      check(!dfa.accepts(w) && !Simulator.run(thompson, w).accepted, "rechaza " + names(rechazadas[i]));
    }
  }

  public static void test09IdaYVueltaKleene() {
    section("9. Ida y vuelta de Kleene");
    Nfa a = cerradura();
    Regex regex = StateEliminator.toRegex(a);
    String text = StateEliminator.toRegexString(a, sigma);
    out.println("  ER(Cerradura) = " + text);
    // Orden de eliminación (menor entradas × salidas, empate al menor índice):
    // Abierta, Desbloqueada, Intrusion, Bloqueada. Sale la misma forma que CicloCompleto.
    checkEquals("(desbloquear · (abrir · cerrar)* · bloquear | forzar · desactivar)*", text,
        "la ER obtenida por eliminación de estados tiene la misma forma que CicloCompleto");
    Dfa ida = compile(regex.toNfa(sigma.size()));
    Dfa original = compile(a);
    check(Equivalence.equivalentes(ida, original), "equivalentes(min(det(Thompson(StateElim(A)))), min(det(A)))");
    check(Equivalence.isomorfos(ida, original), "y además los dos AFD mínimos son isomorfos");
    check(Equivalence.equivalentes(original, compile(cicloCompleto())), "L(Cerradura) = L(CicloCompleto)");
  }

  public static void test10MinimoDelDispositivo() {
    section("10. AFD mínimo completo de la Cerradura");
    Dfa minimal = compile(cerradura());
    checkEquals(5, minimal.stateCount, "tiene 5 estados (4 + sumidero)");
    check(minimal.sinkState() != -1, "incluye el sumidero");
    out.println("  " + MooreMinimizer.describe(minimal));
  }

  // ---------------------------------------------------------------- pruebas adicionales

  public static void test11EquivalenciaNegativa() {
    section("11. Equivalencia: caso negativo");
    Dfa ciclo = compile(cicloCompleto());
    Dfa estricta = compile(siempreAbrir());
    check(!Equivalence.equivalentes(ciclo, estricta), "CicloCompleto y (d·a·c·b)* NO son equivalentes");
    check(!Equivalence.isomorfos(ciclo, estricta), "ni isomorfos");
    String[] esperada = {"desbloquear", "bloquear"};
    checkEquals(names(esperada), sigma.namesOf(Equivalence.distinguishingWord(ciclo, estricta)),
        "palabra mínima que los distingue = [desbloquear, bloquear]");
    check(Equivalence.equivalentes(ciclo, ciclo.complement().complement()), "el doble complemento no cambia el lenguaje");
    check(!Equivalence.equivalentes(ciclo, ciclo.complement()), "una AFD no es equivalente a su complemento");
  }

  public static void test12NoDeterminismoYShortlex() {
    section("12. No determinismo y orden shortlex");
    Alphabet ab = new Alphabet();
    ab.add("a");
    ab.add("b");

    // Rombo: 0 --b--> 1 --a--> 3   y   0 --a--> 2 --b--> 3 (agregadas en el orden "malo").
    Nfa rombo = new Nfa(2);
    rombo.addState();
    rombo.addState();
    rombo.addState();
    rombo.addState();
    rombo.accepting.add(3);
    rombo.addTransition(0, 1, 1);
    rombo.addTransition(1, 0, 3);
    rombo.addTransition(0, 0, 2);
    rombo.addTransition(2, 1, 3);
    int[] meta = {3};
    String[] ab1 = {"a", "b"};
    checkEquals(names(ab1), ab.namesOf(GraphAnalysis.shortestTraceTo(rombo, setOf(meta))),
        "entre [a, b] y [b, a] (misma longitud) la traza mínima es [a, b]");
    Verdict prohibida = PolicyChecker.checkForbidden(rombo, Thompson.any(2), ab);
    String[] soloA = {"a"};
    checkEquals(names(soloA), prohibida.counterexample, "FORBIDDEN '.' se viola con el contraejemplo mínimo [a]");
    Verdict vacia = PolicyChecker.checkRequired(rombo, Thompson.empty(2), ab);
    checkEquals(names(ab1), vacia.counterexample, "REQUIRED ∅ se viola con el contraejemplo mínimo [a, b]");

    // AFN: 0 --a--> 1 y 0 --a--> 2 ; 1 --b--> 1 ; 2 es de aceptación.
    Nfa afn = new Nfa(2);
    afn.addState();
    afn.addState();
    afn.addState();
    afn.accepting.add(2);
    afn.addTransition(0, 0, 1);
    afn.addTransition(0, 0, 2);
    afn.addTransition(1, 1, 1);
    List<int[]> choques = GraphAnalysis.nondeterminism(afn);
    check(!GraphAnalysis.isDeterministic(afn), "el AFN se detecta como no determinista");
    check(choques.size() == 1 && choques.get(0)[0] == 0 && choques.get(0)[1] == 0,
        "el único choque es (estado 0, símbolo a)");
    List<String> nombres = new ArrayList<String>();
    nombres.add("q0");
    nombres.add("q1");
    nombres.add("q2");
    SimulationResult paso = Simulator.run(afn, ab.wordOf(names(soloA)));
    check(paso.accepted, "el AFN acepta [a]");
    checkEquals("q0" + Simulator.ARROW + "{q1, q2}", Simulator.formatTrace(paso, nombres),
        "la traza muestra el conjunto de estados activos: " + Simulator.formatTrace(paso, nombres));
    SimulationResult sigue = Simulator.run(afn, ab.wordOf(names(ab1)));
    check(!sigue.accepted && sigue.failedStep == 0, "[a, b] se rechaza al final (queda activo solo q1)");
    String[] abb = {"b"};
    checkEquals(1, Simulator.run(afn, ab.wordOf(names(abb))).failedStep, "[b] falla en el paso 1");
  }

  public static void test13OperadoresDerivados() {
    section("13. Operadores +, ?, . y texto de expresiones");
    Alphabet ab = new Alphabet();
    ab.add("a");
    ab.add("b");
    List<Integer> vacia = new ArrayList<Integer>();
    List<Integer> a = new ArrayList<Integer>();
    a.add(0);
    List<Integer> aa = new ArrayList<Integer>();
    aa.add(0);
    aa.add(0);
    List<Integer> b = new ArrayList<Integer>();
    b.add(1);

    Dfa mas = compile(Thompson.plus(Thompson.symbol(0, 2)));
    check(!mas.accepts(vacia) && mas.accepts(a) && mas.accepts(aa) && !mas.accepts(b), "a+ : rechaza ε y b, acepta a y aa");
    checkEquals(3, mas.stateCount, "AFD mínimo de a+ sobre {a, b}: 3 estados (con sumidero)");
    Dfa masDirecto = compile(Thompson.concat(Thompson.symbol(0, 2), Thompson.star(Thompson.symbol(0, 2))));
    check(Equivalence.equivalentes(mas, masDirecto), "T(r+) = T(r · r*)");

    Dfa opcional = compile(Thompson.optional(Thompson.symbol(0, 2)));
    check(opcional.accepts(vacia) && opcional.accepts(a) && !opcional.accepts(aa), "a? : acepta ε y a, rechaza aa");

    Dfa cualquiera = compile(Thompson.any(2));
    check(!cualquiera.accepts(vacia) && cualquiera.accepts(a) && cualquiera.accepts(b) && !cualquiera.accepts(aa),
        ". : acepta exactamente las palabras de un símbolo");

    Dfa todo = compile(Thompson.star(Thompson.any(2)));
    checkEquals(1, todo.stateCount, "AFD mínimo de .* : 1 estado");
    checkEquals("AFD mínimo de 1 estados", MooreMinimizer.describe(todo), "sin sumidero el mensaje no lo menciona");

    Regex arbol = Regex.concat(Regex.star(Regex.union(Regex.symbol(0), Regex.symbol(1))),
        Regex.optional(Regex.plus(Regex.any())));
    checkEquals("(a | b)* · (.+)?", arbol.toText(ab), "paréntesis según precedencia: " + arbol.toText(ab));
    Dfa delArbol = compile(arbol.toNfa(2));
    check(Equivalence.equivalentes(delArbol, todo), "(a | b)* · (.+)? es equivalente a .*");
  }

  public static void test14CasosBorde() {
    section("14. Casos borde");
    Alphabet ab = new Alphabet();
    ab.add("a");
    ab.add("b");

    // Dispositivo sin estados de aceptación alcanzables: lenguaje vacío.
    Nfa mudo = new Nfa(2);
    mudo.addState();
    mudo.addState();
    mudo.addTransition(0, 0, 1);
    checkEquals("∅", StateEliminator.toRegexString(mudo, ab), "la ER de un lenguaje vacío es ∅");
    checkEquals(1, compile(mudo).stateCount, "y su AFD mínimo es solo el sumidero");
    check(PolicyChecker.checkRequired(mudo, Thompson.empty(2), ab).ok, "L = ∅ cumple cualquier REQUIRED");
    int[] uno = {1};
    checkEquals(setOf(uno), GraphAnalysis.deadlocks(mudo), "el estado 1 es deadlock");

    // Estado inalcanzable.
    Nfa isla = new Nfa(2);
    isla.addState();
    isla.addState();
    isla.accepting.add(0);
    isla.addTransition(1, 0, 0);
    checkEquals(setOf(uno), GraphAnalysis.unreachable(isla), "el estado 1 es inalcanzable");
    check(GraphAnalysis.shortestTraceTo(isla, setOf(uno)) == null, "no hay traza hacia un estado inalcanzable");
    checkEquals("ε", StateEliminator.toRegexString(isla, ab), "su ER es ε (solo acepta la sesión vacía)");

    // Transiciones ε en el dispositivo: 0 --ε--> 1 --a--> 2.
    Nfa conEpsilon = new Nfa(2);
    conEpsilon.addState();
    conEpsilon.addState();
    conEpsilon.addState();
    conEpsilon.accepting.add(2);
    conEpsilon.addEpsilon(0, 1);
    conEpsilon.addTransition(1, 0, 2);
    int[] dos = {2};
    String[] soloA = {"a"};
    checkEquals(names(soloA), ab.namesOf(GraphAnalysis.shortestTraceTo(conEpsilon, setOf(dos))),
        "las transiciones ε no aportan símbolos a la traza");
    checkEquals(0, GraphAnalysis.shortestTraceTo(conEpsilon, setOf(uno)).size(), "un estado en la ε-clausura del inicial se alcanza con ε");
    check(!GraphAnalysis.isDeterministic(conEpsilon), "una transición ε cuenta como no determinismo");
    Verdict requerida = PolicyChecker.checkRequired(conEpsilon, Thompson.symbol(1, 2), ab);
    checkEquals(names(soloA), requerida.counterexample, "el producto absorbe las ε del dispositivo");

    // Contraejemplo vacío: la sesión vacía ya viola la política.
    Verdict vacio = PolicyChecker.checkRequired(isla, Thompson.symbol(0, 2), ab);
    check(!vacio.ok && vacio.counterexample.isEmpty(), "REQUIRED 'a' sobre un dispositivo que acepta ε: se viola con contraejemplo []");
  }

  // ---------------------------------------------------------------- pruebas con autómatas aleatorios

  public static Nfa randomNfa(Random random, int symbols) {
    int states = 1 + random.nextInt(5);
    Nfa nfa = new Nfa(symbols);
    for (int i = 0; i < states; i++) {
      nfa.addState();
    }
    for (int i = 0; i < states; i++) {
      if (random.nextInt(3) == 0) {
        nfa.accepting.add(i);
      }
    }
    int transitions = random.nextInt(2 * states + 2);
    for (int i = 0; i < transitions; i++) {
      int symbol = random.nextInt(symbols);
      if (random.nextInt(6) == 0) {
        symbol = Nfa.EPSILON;
      }
      nfa.addTransition(random.nextInt(states), symbol, random.nextInt(states));
    }
    return nfa;
  }

  /** Todas las palabras de longitud <= maxLength, en orden shortlex. */
  public static List<List<Integer>> wordsUpTo(int symbols, int maxLength) {
    List<List<Integer>> result = new ArrayList<List<Integer>>();
    List<List<Integer>> level = new ArrayList<List<Integer>>();
    level.add(new ArrayList<Integer>());
    for (int length = 0; length <= maxLength; length++) {
      result.addAll(level);
      List<List<Integer>> next = new ArrayList<List<Integer>>();
      for (List<Integer> prefix : level) {
        for (int symbol = 0; symbol < symbols; symbol++) {
          List<Integer> longer = new ArrayList<Integer>(prefix);
          longer.add(symbol);
          next.add(longer);
        }
      }
      level = next;
    }
    return result;
  }

  /** Fuerza bruta: ¿algún fragmento contiguo de w pertenece a L(pattern)? */
  public static boolean containsFactor(Nfa pattern, List<Integer> w) {
    for (int from = 0; from <= w.size(); from++) {
      for (int to = from; to <= w.size(); to++) {
        if (Simulator.run(pattern, w.subList(from, to)).accepted) {
          return true;
        }
      }
    }
    return false;
  }

  public static boolean violatesRequired(Nfa device, Nfa policy, List<Integer> w) {
    return Simulator.run(device, w).accepted && !Simulator.run(policy, w).accepted;
  }

  public static boolean violatesForbidden(Nfa device, Nfa pattern, List<Integer> w) {
    SimulationResult run = Simulator.run(device, w);
    return run.steps.size() == w.size() + 1 && containsFactor(pattern, w);
  }

  /**
   * Compara el veredicto del razonador con la fuerza bruta: 'brute' es la primera palabra
   * (shortlex, hasta longitud maxLength) que viola la política, o null si no hay ninguna.
   */
  public static boolean agrees(Verdict verdict, List<Integer> brute, boolean reallyViolates, int maxLength, Alphabet alphabet) {
    if (brute != null) {
      return !verdict.ok && verdict.counterexample.equals(alphabet.namesOf(brute));
    }
    if (verdict.ok) {
      return true;
    }
    // La fuerza bruta no encontró nada corto: el contraejemplo debe ser largo y genuino.
    return verdict.counterexample.size() > maxLength && reallyViolates;
  }

  public static void test15PropiedadesAleatorias() {
    section("15. Propiedades sobre 400 autómatas aleatorios (semilla fija) contra fuerza bruta");
    Random random = new Random(20261119L);
    Alphabet abc = new Alphabet();
    abc.add("a");
    abc.add("b");
    abc.add("c");
    int cases = 400;
    int maxLength = 5;

    boolean wordsAgree = true;
    boolean minimalEquivalent = true;
    boolean minimalNotBigger = true;
    boolean minimalCanonical = true;
    boolean kleeneRoundTrip = true;
    boolean requiredAgrees = true;
    boolean forbiddenAgrees = true;
    boolean traceAgrees = true;
    int violatedRequired = 0;
    int violatedForbidden = 0;

    for (int i = 0; i < cases; i++) {
      int symbols = 2 + (i % 2);
      Nfa device = randomNfa(random, symbols);
      Nfa policy = randomNfa(random, symbols);
      List<List<Integer>> words = wordsUpTo(symbols, maxLength);

      Dfa det = SubsetConstruction.determinize(device);
      Dfa min = MooreMinimizer.minimize(det);
      Nfa back = StateEliminator.toRegex(device).toNfa(symbols);
      Dfa minBack = compile(back);

      minimalEquivalent = minimalEquivalent && Equivalence.equivalentes(det, min);
      minimalNotBigger = minimalNotBigger && min.stateCount <= det.stateCount;
      minimalCanonical = minimalCanonical && Equivalence.isomorfos(min, MooreMinimizer.minimize(min))
          && Equivalence.isomorfos(min, compile(min.toNfa()));
      kleeneRoundTrip = kleeneRoundTrip && Equivalence.equivalentes(minBack, min) && Equivalence.isomorfos(minBack, min);

      List<Integer> bruteRequired = null;
      List<Integer> bruteForbidden = null;
      List<Integer> bruteTrace = null;
      Set<Integer> goal = new TreeSet<Integer>();
      goal.add(device.stateCount - 1);
      for (List<Integer> w : words) {
        SimulationResult run = Simulator.run(device, w);
        boolean expected = run.accepted;
        if (det.accepts(w) != expected || min.accepts(w) != expected || Simulator.run(back, w).accepted != expected) {
          wordsAgree = false;
        }
        if (bruteRequired == null && violatesRequired(device, policy, w)) {
          bruteRequired = w;
        }
        if (bruteForbidden == null && violatesForbidden(device, policy, w)) {
          bruteForbidden = w;
        }
        if (bruteTrace == null && run.steps.size() == w.size() + 1 && run.steps.get(w.size()).contains(device.stateCount - 1)) {
          bruteTrace = w;
        }
      }

      Verdict required = PolicyChecker.checkRequired(device, policy, abc);
      boolean requiredReal = !required.ok && violatesRequired(device, policy, abc.wordOf(required.counterexample));
      requiredAgrees = requiredAgrees && agrees(required, bruteRequired, requiredReal, maxLength, abc);
      if (!required.ok) {
        violatedRequired = violatedRequired + 1;
      }

      Verdict forbidden = PolicyChecker.checkForbidden(device, policy, abc);
      boolean forbiddenReal = !forbidden.ok && violatesForbidden(device, policy, abc.wordOf(forbidden.counterexample));
      forbiddenAgrees = forbiddenAgrees && agrees(forbidden, bruteForbidden, forbiddenReal, maxLength, abc);
      if (!forbidden.ok) {
        violatedForbidden = violatedForbidden + 1;
      }

      // Un autómata de n <= 5 estados alcanza cualquier estado alcanzable con una palabra de longitud < n <= maxLength.
      List<Integer> trace = GraphAnalysis.shortestTraceTo(device, goal);
      boolean sameTrace = bruteTrace == null ? trace == null : bruteTrace.equals(trace);
      traceAgrees = traceAgrees && sameTrace;
      boolean reachableGoal = GraphAnalysis.reachable(device).contains(device.stateCount - 1);
      traceAgrees = traceAgrees && (reachableGoal == (trace != null));
    }

    check(wordsAgree, "Simulador(AFN) = AFD = AFD mínima = Thompson(StateElim) en todas las palabras de longitud <= " + maxLength);
    check(minimalEquivalent, "min(det(A)) es equivalente a det(A)");
    check(minimalNotBigger, "min(det(A)) nunca tiene más estados que det(A)");
    check(minimalCanonical, "minimizar es idempotente y canónico (isomorfismo)");
    check(kleeneRoundTrip, "ida y vuelta de Kleene: equivalentes e isomorfos");
    check(requiredAgrees, "checkRequired coincide con la fuerza bruta, contraejemplo shortlex incluido (" + violatedRequired + " violaciones)");
    check(forbiddenAgrees, "checkForbidden coincide con la fuerza bruta, contraejemplo shortlex incluido (" + violatedForbidden + " violaciones)");
    check(traceAgrees, "shortestTraceTo coincide con la fuerza bruta y con reachable");
  }
}
