package domus.reasoner;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/**
 * Fachada del razonador para el editor (§4.2, §4.4, §4.6): ejecuta los algoritmos sobre los
 * autómatas y devuelve los hallazgos con mensajes en español que se entienden sin teoría.
 * Las checking rules de MPS le pasan los datos del AST (nombres, índices) y reportan cada
 * hallazgo en el nodo indicado.
 */
public class Razonador {
  public static final String PUNTO = " · ";
  public static final String VACIA = "ε (sesión vacía)";

  /**
   * Consistencia del dispositivo (§4.2). 'origenes' y 'simbolos' describen cada transición
   * en orden de declaración (índice del estado origen e índice del evento) para poder marcar
   * las transiciones involucradas en un no determinismo.
   */
  public static List<Hallazgo> analizarDispositivo(Nfa nfa, Set<Integer> alarmas, List<String> estados, Alphabet sigma, List<Integer> origenes, List<Integer> simbolos) {
    List<Hallazgo> result = new ArrayList<Hallazgo>();
    if (nfa == null) {
      return result;
    }
    Set<Integer> alcanzables = GraphAnalysis.reachable(nfa);
    Set<Integer> coAlcanzables = GraphAnalysis.coReachable(nfa);
    String inicial = nombre(estados, nfa.initial);
    for (int q = 0; q < nfa.stateCount; q++) {
      String x = nombre(estados, q);
      boolean sinSalidas = nfa.delta.get(q).isEmpty();
      if (!alcanzables.contains(q)) {
        result.add(new Hallazgo(Hallazgo.WARNING, Hallazgo.EN_ESTADO, q, "El estado '" + x + "' no se puede alcanzar desde el estado inicial '" + inicial + "'"));
      } else if (alarmas.contains(q)) {
        Set<Integer> objetivo = new TreeSet<Integer>();
        objetivo.add(q);
        List<Integer> traza = GraphAnalysis.shortestTraceTo(nfa, objetivo);
        result.add(new Hallazgo(Hallazgo.INFO, Hallazgo.EN_ESTADO, q, "Alarma alcanzable. Traza mínima: " + unirNombres(sigma.namesOf(traza))));
        if (!coAlcanzables.contains(q)) {
          String mensaje = "La alarma '" + x + "' no tiene recuperación: una vez disparada, ya no se puede volver a un estado de reposo (◎)";
          if (sinSalidas) {
            mensaje = mensaje + " (no tiene transiciones de salida)";
          }
          result.add(new Hallazgo(Hallazgo.ERROR, Hallazgo.EN_ESTADO, q, mensaje));
        }
      } else if (sinSalidas && !nfa.accepting.contains(q)) {
        result.add(new Hallazgo(Hallazgo.ERROR, Hallazgo.EN_ESTADO, q, "El estado '" + x + "' es un bloqueo (deadlock): no tiene transiciones de salida y no es de reposo (◎), así que el dispositivo se quedaría atascado ahí"));
      } else if (!coAlcanzables.contains(q)) {
        result.add(new Hallazgo(Hallazgo.WARNING, Hallazgo.EN_ESTADO, q, "Desde '" + x + "' ya no se puede volver a un estado de reposo (◎)"));
      }
    }
    List<int[]> puntos = GraphAnalysis.nondeterminism(nfa);
    for (int p = 0; p < puntos.size(); p++) {
      int origen = puntos.get(p)[0];
      int simbolo = puntos.get(p)[1];
      if (simbolo == Nfa.EPSILON) {
        continue;
      }
      String destinos = "";
      for (Integer destino : nfa.targets(origen, simbolo)) {
        if (destinos.length() > 0) {
          destinos = destinos + ", ";
        }
        destinos = destinos + "'" + nombre(estados, destino) + "'";
      }
      String mensaje = "Desde '" + nombre(estados, origen) + "' el evento '" + sigma.nameOf(simbolo) + "' lleva a varios estados (" + destinos + ")";
      for (int t = 0; t < origenes.size(); t++) {
        if (origenes.get(t).intValue() == origen && simbolos.get(t).intValue() == simbolo) {
          result.add(new Hallazgo(Hallazgo.WARNING, Hallazgo.EN_TRANSICION, t, mensaje));
        }
      }
    }
    return result;
  }

  /**
   * Verificación de una política (§4.4). REQUIRED: L(A) ⊆ L(R); FORBIDDEN: Tr(A) ∩ L(Σ*RΣ*) = ∅.
   * Si se cumple, informa el tamaño del AFD mínimo completo de la política (convención §4.3).
   */
  public static Hallazgo verificarPolitica(Nfa dispositivo, Nfa patron, Alphabet sigma, boolean prohibida) {
    Dfa minimo = MooreMinimizer.minimize(SubsetConstruction.determinize(patron));
    Verdict veredicto;
    if (prohibida) {
      veredicto = PolicyChecker.checkForbidden(dispositivo, patron, sigma);
    } else {
      veredicto = PolicyChecker.checkRequiredDfa(dispositivo, minimo, sigma);
    }
    if (veredicto.ok) {
      return new Hallazgo(Hallazgo.INFO, Hallazgo.EN_NODO, -1, "Política verificada: " + MooreMinimizer.describe(minimo));
    }
    String palabra = citar(unirNombres(veredicto.counterexample), veredicto.counterexample.isEmpty());
    if (prohibida) {
      return new Hallazgo(Hallazgo.ERROR, Hallazgo.EN_NODO, -1, "Política violada: la traza " + palabra + " contiene el patrón prohibido");
    }
    return new Hallazgo(Hallazgo.ERROR, Hallazgo.EN_NODO, -1, "Política violada: la sesión " + palabra + " termina en reposo pero no cumple el patrón");
  }

  /** true si todos los índices de la palabra son eventos del alfabeto (-1 sería ε en el Nfa). */
  public static boolean palabraValida(List<Integer> palabra) {
    for (int i = 0; i < palabra.size(); i++) {
      if (palabra.get(i).intValue() < 0) {
        return false;
      }
    }
    return true;
  }

  /** Simulación operacional de un escenario (§4.6). */
  public static List<Hallazgo> simularEscenario(Nfa nfa, List<Integer> palabra, List<String> estados, Alphabet sigma) {
    List<Hallazgo> result = new ArrayList<Hallazgo>();
    if (nfa == null || !palabraValida(palabra)) {
      return result;
    }
    SimulationResult simulacion = Simulator.run(nfa, palabra);
    String traza = Simulator.formatTrace(simulacion, estados);
    if (simulacion.failedStep > 0) {
      int k = simulacion.failedStep;
      String desde = conjunto(simulacion.steps.get(k - 1), estados);
      String evento = sigma.nameOf(palabra.get(k - 1).intValue());
      result.add(new Hallazgo(Hallazgo.WARNING, Hallazgo.EN_PASO, k - 1, "Rechazado en el paso " + k + ": desde '" + desde + "' no hay transición con '" + evento + "'"));
      result.add(new Hallazgo(Hallazgo.INFO, Hallazgo.EN_NODO, -1, "Simulación rechazada en el paso " + k + ". Traza hasta ahí: " + traza));
    } else if (simulacion.accepted) {
      result.add(new Hallazgo(Hallazgo.INFO, Hallazgo.EN_NODO, -1, "Simulación aceptada: " + traza));
    } else {
      String fin = conjunto(simulacion.steps.get(simulacion.steps.size() - 1), estados);
      result.add(new Hallazgo(Hallazgo.WARNING, Hallazgo.EN_NODO, -1, "El escenario termina en '" + fin + "', que no es estado de reposo (◎)"));
      result.add(new Hallazgo(Hallazgo.INFO, Hallazgo.EN_NODO, -1, "Simulación: " + traza));
    }
    return result;
  }

  public static String nombre(List<String> estados, int q) {
    if (q < 0 || q >= estados.size()) {
      return "#" + q;
    }
    return estados.get(q);
  }

  /** Eventos unidos con " · "; la palabra vacía se escribe "ε (sesión vacía)". */
  public static String unirNombres(List<String> nombres) {
    if (nombres.isEmpty()) {
      return VACIA;
    }
    String text = "";
    for (int i = 0; i < nombres.size(); i++) {
      if (i > 0) {
        text = text + PUNTO;
      }
      text = text + nombres.get(i);
    }
    return text;
  }

  public static String citar(String palabra, boolean vacia) {
    if (vacia) {
      return palabra;
    }
    return "'" + palabra + "'";
  }

  /** Un estado activo se escribe por su nombre; varios (AFN) como {A, B}. */
  public static String conjunto(Set<Integer> activos, List<String> estados) {
    String names = "";
    for (Integer q : activos) {
      if (names.length() > 0) {
        names = names + ", ";
      }
      names = names + nombre(estados, q.intValue());
    }
    if (activos.size() == 1) {
      return names;
    }
    return "{" + names + "}";
  }
}
