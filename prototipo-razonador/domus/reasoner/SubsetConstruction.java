package domus.reasoner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Construcción de subconjuntos (determinización): AFN-ε -> AFD completa.
 * Cada estado de la AFD es un CONJUNTO de estados de la AFN (los "activos" a la vez).
 * El conjunto vacío, si se alcanza, es el estado sumidero explícito.
 * Los estados se numeran en orden de descubrimiento BFS (símbolos en orden creciente),
 * así que el resultado es determinista. Peor caso: 2^n estados.
 */
public class SubsetConstruction {

  public static Dfa determinize(Nfa nfa) {
    int symbols = nfa.alphabetSize;
    List<Set<Integer>> subsets = new ArrayList<Set<Integer>>();
    Map<Set<Integer>, Integer> numbering = new HashMap<Set<Integer>, Integer>();
    List<int[]> rows = new ArrayList<int[]>();

    Set<Integer> start = nfa.closureOf(nfa.initial);
    subsets.add(start);
    numbering.put(start, 0);

    int current = 0;
    while (current < subsets.size()) {
      Set<Integer> subset = subsets.get(current);
      int[] row = new int[symbols];
      for (int symbol = 0; symbol < symbols; symbol++) {
        Set<Integer> next = nfa.step(subset, symbol);
        Integer number = numbering.get(next);
        if (number == null) {
          number = subsets.size();
          numbering.put(next, number);
          subsets.add(next);
        }
        row[symbol] = number;
      }
      rows.add(row);
      current = current + 1;
    }

    Dfa dfa = new Dfa(subsets.size(), symbols);
    dfa.initial = 0;
    for (int state = 0; state < subsets.size(); state++) {
      dfa.accepting[state] = nfa.containsAccepting(subsets.get(state));
      int[] row = rows.get(state);
      for (int symbol = 0; symbol < symbols; symbol++) {
        dfa.delta[state][symbol] = row[symbol];
      }
    }
    return dfa;
  }
}
