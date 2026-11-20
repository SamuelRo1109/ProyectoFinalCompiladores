package domus.reasoner;

import java.util.ArrayList;
import java.util.List;

/**
 * Equivalencia de lenguajes regulares (decidible) entre dos AFD completas sobre el mismo alfabeto.
 */
public class Equivalence {

  /** L(a) = L(b): no existe ningún par alcanzable del producto donde una acepte y la otra no. */
  public static boolean equivalentes(Dfa a, Dfa b) {
    return distinguishingWord(a, b) == null;
  }

  /**
   * Palabra mínima (shortlex) que una AFD acepta y la otra no, o null si son equivalentes.
   * BFS sobre el producto a × b; el par (p, q) se codifica como p * |Q_b| + q.
   */
  public static List<Integer> distinguishingWord(Dfa a, Dfa b) {
    if (a.alphabetSize != b.alphabetSize) {
      throw new IllegalArgumentException("Las dos AFD deben tener el mismo alfabeto");
    }
    int width = b.stateCount;
    int total = a.stateCount * width;
    boolean[] visited = new boolean[total];
    int[] parent = new int[total];
    int[] parentSymbol = new int[total];
    List<Integer> queue = new ArrayList<Integer>();
    int start = a.initial * width + b.initial;
    visited[start] = true;
    parent[start] = -1;
    parentSymbol[start] = -1;
    queue.add(start);
    int head = 0;
    while (head < queue.size()) {
      int current = queue.get(head);
      head = head + 1;
      int p = current / width;
      int q = current % width;
      if (a.accepting[p] != b.accepting[q]) {
        return GraphAnalysis.rebuildWord(parent, parentSymbol, current);
      }
      for (int symbol = 0; symbol < a.alphabetSize; symbol++) {
        int next = a.delta[p][symbol] * width + b.delta[q][symbol];
        if (!visited[next]) {
          visited[next] = true;
          parent[next] = current;
          parentSymbol[next] = symbol;
          queue.add(next);
        }
      }
    }
    return null;
  }

  /**
   * Isomorfismo: las dos AFD son la misma salvo el nombre de los estados. Se construye la
   * biyección recorriendo ambas a la vez desde los iniciales. Entre AFD mínimas completas,
   * isomorfas <=> mismo lenguaje (unicidad del AFD mínimo, Myhill-Nerode).
   */
  public static boolean isomorfos(Dfa a, Dfa b) {
    if (a.alphabetSize != b.alphabetSize || a.stateCount != b.stateCount) {
      return false;
    }
    int[] image = new int[a.stateCount];
    int[] preimage = new int[b.stateCount];
    for (int state = 0; state < a.stateCount; state++) {
      image[state] = -1;
      preimage[state] = -1;
    }
    List<Integer> queue = new ArrayList<Integer>();
    image[a.initial] = b.initial;
    preimage[b.initial] = a.initial;
    queue.add(a.initial);
    int head = 0;
    while (head < queue.size()) {
      int p = queue.get(head);
      head = head + 1;
      int q = image[p];
      if (a.accepting[p] != b.accepting[q]) {
        return false;
      }
      for (int symbol = 0; symbol < a.alphabetSize; symbol++) {
        int nextP = a.delta[p][symbol];
        int nextQ = b.delta[q][symbol];
        if (image[nextP] == -1 && preimage[nextQ] == -1) {
          image[nextP] = nextQ;
          preimage[nextQ] = nextP;
          queue.add(nextP);
        } else if (image[nextP] != nextQ) {
          return false;
        }
      }
    }
    // Todos los estados deben haber quedado emparejados (no se admiten inalcanzables).
    return queue.size() == a.stateCount;
  }
}
