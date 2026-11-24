package domus.reasoner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Minimización de Moore (refinamiento de particiones): AFD completa -> AFD mínima COMPLETA.
 * 1) Se descartan los estados inalcanzables.
 * 2) Se parte de la partición {aceptan, no aceptan} y se refina: dos estados siguen juntos
 *    solo si con cada símbolo van a parar al mismo bloque. Se repite hasta el punto fijo.
 * El resultado conserva el sumidero (convención de §4.3): su número de estados es el índice
 * de la relación de Myhill-Nerode. Además sale en FORMA CANÓNICA: los bloques se numeran por
 * su palabra de acceso mínima (shortlex), así que dos AFD mínimas del mismo lenguaje son idénticas.
 */
public class MooreMinimizer {

  public static Dfa minimize(Dfa dfa) {
    int states = dfa.stateCount;
    int symbols = dfa.alphabetSize;

    // 1) Estados alcanzables, en orden BFS (símbolos en orden creciente).
    List<Integer> order = new ArrayList<Integer>();
    boolean[] seen = new boolean[states];
    seen[dfa.initial] = true;
    order.add(dfa.initial);
    int head = 0;
    while (head < order.size()) {
      int state = order.get(head);
      head = head + 1;
      for (int symbol = 0; symbol < symbols; symbol++) {
        int next = dfa.delta[state][symbol];
        if (!seen[next]) {
          seen[next] = true;
          order.add(next);
        }
      }
    }

    // 2) Partición inicial: aceptación. El bloque 0 es el del estado inicial.
    int[] block = new int[states];
    int blockCount = 1;
    boolean firstKind = dfa.accepting[dfa.initial];
    for (Integer state : order) {
      if (dfa.accepting[state] == firstKind) {
        block[state] = 0;
      } else {
        block[state] = 1;
        blockCount = 2;
      }
    }

    // 3) Refinamiento hasta el punto fijo. Como refinar solo divide bloques,
    //    si el número de bloques no cambia la partición ya es estable.
    boolean changed = true;
    while (changed) {
      Map<List<Integer>, Integer> signatures = new HashMap<List<Integer>, Integer>();
      int[] refined = new int[states];
      int refinedCount = 0;
      for (Integer state : order) {
        List<Integer> signature = new ArrayList<Integer>();
        signature.add(block[state]);
        for (int symbol = 0; symbol < symbols; symbol++) {
          signature.add(block[dfa.delta[state][symbol]]);
        }
        Integer number = signatures.get(signature);
        if (number == null) {
          number = refinedCount;
          refinedCount = refinedCount + 1;
          signatures.put(signature, number);
        }
        refined[state] = number;
      }
      changed = refinedCount != blockCount;
      block = refined;
      blockCount = refinedCount;
    }

    // 4) AFD cociente: un estado por bloque.
    Dfa minimal = new Dfa(blockCount, symbols);
    minimal.initial = block[dfa.initial];
    for (Integer state : order) {
      int number = block[state];
      minimal.accepting[number] = dfa.accepting[state];
      for (int symbol = 0; symbol < symbols; symbol++) {
        minimal.delta[number][symbol] = block[dfa.delta[state][symbol]];
      }
    }
    return minimal;
  }

  /** Mensaje del reporte según la convención de §4.3 (el tamaño cuenta el sumidero). */
  public static String describe(Dfa minimal) {
    String text = "AFD mínimo de " + minimal.stateCount + " estados";
    if (minimal.sinkState() != -1) {
      text = text + " (" + (minimal.stateCount - 1) + " útiles + sumidero)";
    }
    return text;
  }
}
