package domus.reasoner;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/**
 * Verificador de consistencia (§4.2): el autómata visto como grafo dirigido.
 * Todas las propiedades son puntos fijos calculados con BFS, por eso siempre terminan.
 */
public class GraphAnalysis {

  /** Reach = estados alcanzables desde el inicial (BFS hacia adelante). */
  public static Set<Integer> reachable(Nfa nfa) {
    Set<Integer> seen = new TreeSet<Integer>();
    if (nfa.stateCount == 0) {
      return seen;
    }
    List<Integer> queue = new ArrayList<Integer>();
    seen.add(nfa.initial);
    queue.add(nfa.initial);
    int head = 0;
    while (head < queue.size()) {
      int state = queue.get(head);
      head = head + 1;
      Map<Integer, Set<Integer>> row = nfa.delta.get(state);
      for (Integer symbol : row.keySet()) {
        for (Integer next : row.get(symbol)) {
          if (seen.add(next)) {
            queue.add(next);
          }
        }
      }
    }
    return seen;
  }

  /** CoReach = estados desde los que se puede llegar a alguno de aceptación (BFS sobre el grafo invertido). */
  public static Set<Integer> coReachable(Nfa nfa) {
    List<List<Integer>> reverse = new ArrayList<List<Integer>>();
    for (int state = 0; state < nfa.stateCount; state++) {
      reverse.add(new ArrayList<Integer>());
    }
    for (int state = 0; state < nfa.stateCount; state++) {
      Map<Integer, Set<Integer>> row = nfa.delta.get(state);
      for (Integer symbol : row.keySet()) {
        for (Integer next : row.get(symbol)) {
          reverse.get(next).add(state);
        }
      }
    }
    Set<Integer> seen = new TreeSet<Integer>(nfa.accepting);
    List<Integer> queue = new ArrayList<Integer>(nfa.accepting);
    int head = 0;
    while (head < queue.size()) {
      int state = queue.get(head);
      head = head + 1;
      for (Integer previous : reverse.get(state)) {
        if (seen.add(previous)) {
          queue.add(previous);
        }
      }
    }
    return seen;
  }

  /** Inalcanzables = Q \ Reach. */
  public static Set<Integer> unreachable(Nfa nfa) {
    Set<Integer> reach = reachable(nfa);
    Set<Integer> result = new TreeSet<Integer>();
    for (int state = 0; state < nfa.stateCount; state++) {
      if (!reach.contains(state)) {
        result.add(state);
      }
    }
    return result;
  }

  /** Trampas = Reach \ CoReach: se puede entrar pero ya no se puede volver a un estado de reposo. */
  public static Set<Integer> traps(Nfa nfa) {
    Set<Integer> result = new TreeSet<Integer>(reachable(nfa));
    result.removeAll(coReachable(nfa));
    return result;
  }

  /** Deadlocks = estados alcanzables, que no aceptan y no tienen ninguna transición de salida. */
  public static Set<Integer> deadlocks(Nfa nfa) {
    Set<Integer> result = new TreeSet<Integer>();
    for (Integer state : reachable(nfa)) {
      if (!nfa.accepting.contains(state) && nfa.delta.get(state).isEmpty()) {
        result.add(state);
      }
    }
    return result;
  }

  /**
   * Puntos de no determinismo: pares {estado, símbolo} con más de un destino.
   * Una transición ε también cuenta (se reporta con símbolo Nfa.EPSILON).
   */
  public static List<int[]> nondeterminism(Nfa nfa) {
    List<int[]> result = new ArrayList<int[]>();
    for (int state = 0; state < nfa.stateCount; state++) {
      Map<Integer, Set<Integer>> row = nfa.delta.get(state);
      for (Integer symbol : row.keySet()) {
        if (symbol == Nfa.EPSILON || row.get(symbol).size() > 1) {
          int[] pair = new int[2];
          pair[0] = state;
          pair[1] = symbol;
          result.add(pair);
        }
      }
    }
    return result;
  }

  public static boolean isDeterministic(Nfa nfa) {
    return nondeterminism(nfa).isEmpty();
  }

  /** Alarmas sin recuperación = alarmas alcanzables desde las que no se puede volver a reposo. */
  public static Set<Integer> alarmsWithoutRecovery(Nfa nfa, Set<Integer> alarmStates) {
    Set<Integer> result = new TreeSet<Integer>(traps(nfa));
    result.retainAll(alarmStates);
    return result;
  }

  /**
   * Palabra mínima (shortlex) que lleva del estado inicial a algún estado de 'targets',
   * o null si ninguno es alcanzable. BFS con padres; los símbolos se exploran en orden
   * creciente de índice, por eso la primera vez que se descubre un estado es por su
   * palabra más corta y, a igual longitud, la lexicográficamente menor.
   */
  public static List<Integer> shortestTraceTo(Nfa nfa, Set<Integer> targets) {
    int states = nfa.stateCount;
    if (states == 0) {
      return null;
    }
    boolean[] visited = new boolean[states];
    int[] parent = new int[states];
    int[] parentSymbol = new int[states];
    List<Integer> queue = new ArrayList<Integer>();
    visited[nfa.initial] = true;
    parent[nfa.initial] = -1;
    parentSymbol[nfa.initial] = -1;
    queue.add(nfa.initial);
    int head = 0;
    while (head < queue.size()) {
      int state = queue.get(head);
      head = head + 1;
      // Las transiciones ε no consumen símbolos: se absorben con la ε-clausura.
      Set<Integer> closure = nfa.closureOf(state);
      for (Integer member : closure) {
        if (targets.contains(member)) {
          return rebuildWord(parent, parentSymbol, state);
        }
      }
      for (int symbol = 0; symbol < nfa.alphabetSize; symbol++) {
        for (Integer member : closure) {
          for (Integer next : nfa.targets(member, symbol)) {
            if (!visited[next]) {
              visited[next] = true;
              parent[next] = state;
              parentSymbol[next] = symbol;
              queue.add(next);
            }
          }
        }
      }
    }
    return null;
  }

  /** Reconstruye la palabra siguiendo los padres del BFS desde 'end' hasta la raíz. */
  public static List<Integer> rebuildWord(int[] parent, int[] parentSymbol, int end) {
    List<Integer> reversed = new ArrayList<Integer>();
    int node = end;
    while (parent[node] != -1) {
      reversed.add(parentSymbol[node]);
      node = parent[node];
    }
    List<Integer> word = new ArrayList<Integer>();
    for (int i = reversed.size() - 1; i >= 0; i--) {
      word.add(reversed.get(i));
    }
    return word;
  }
}
