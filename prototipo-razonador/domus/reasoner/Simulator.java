package domus.reasoner;

import java.util.List;
import java.util.Set;

/**
 * Simulador operacional (§4.6): semántica de pasos pequeños.
 * Configuración <q, w>; regla <q, a·w> -> <q', w> si q' ∈ δ(q, a).
 * En un AFN se lleva el conjunto de estados activos (todas las ejecuciones a la vez).
 */
public class Simulator {
  /** Separador de la traza impresa: " → ". */
  public static final String ARROW = " → ";

  /**
   * Ejecuta la palabra. Se ACEPTA si se consume completa y queda activo algún estado de
   * aceptación. Se RECHAZA en el paso k si el k-ésimo evento no tiene transición desde
   * ningún estado activo (failedStep = k), o al final si ningún estado activo acepta
   * (failedStep = 0).
   */
  public static SimulationResult run(Nfa nfa, List<Integer> word) {
    SimulationResult result = new SimulationResult();
    Set<Integer> active = nfa.closureOf(nfa.initial);
    result.steps.add(active);
    for (int k = 0; k < word.size(); k++) {
      Set<Integer> next = nfa.step(active, word.get(k));
      if (next.isEmpty()) {
        result.accepted = false;
        result.failedStep = k + 1;
        return result;
      }
      result.steps.add(next);
      active = next;
    }
    result.accepted = nfa.containsAccepting(active);
    return result;
  }

  /** Traza legible: "Bloqueada → Desbloqueada → ..."; un conjunto de varios estados se imprime {A, B}. */
  public static String formatTrace(SimulationResult result, List<String> stateNames) {
    String text = "";
    for (int k = 0; k < result.steps.size(); k++) {
      if (k > 0) {
        text = text + ARROW;
      }
      Set<Integer> active = result.steps.get(k);
      String names = "";
      for (Integer state : active) {
        if (names.length() > 0) {
          names = names + ", ";
        }
        names = names + stateNames.get(state);
      }
      if (active.size() == 1) {
        text = text + names;
      } else {
        text = text + "{" + names + "}";
      }
    }
    return text;
  }
}
