package domus.reasoner;

import java.util.Map;
import java.util.Set;

/**
 * Eliminación de estados (Teorema de Kleene, parte 2: AF -> ER), Brzozowski-McCluskey.
 * Se construye un autómata generalizado (GNFA) cuyas aristas llevan expresiones regulares,
 * con un inicio nuevo q_s y un final nuevo q_f. Al eliminar el estado k, cada camino
 * i -> k -> j se reemplaza por la arista  R_ij | R_ik · R_kk* · R_kj.
 * Cuando solo quedan q_s y q_f, la arista entre ellos es la expresión del lenguaje.
 */
public class StateEliminator {

  /** Expresión regular equivalente, como texto con ε, |, ·, * y paréntesis. */
  public static String toRegexString(Nfa nfa, Alphabet alphabet) {
    return toRegex(nfa).toText(alphabet);
  }

  /** Expresión regular equivalente, como árbol. */
  public static Regex toRegex(Nfa nfa) {
    int states = nfa.stateCount;
    int start = states;
    int end = states + 1;
    int total = states + 2;

    Regex[][] edge = new Regex[total][total];
    for (int i = 0; i < total; i++) {
      for (int j = 0; j < total; j++) {
        edge[i][j] = Regex.empty();
      }
    }
    if (states > 0) {
      edge[start][nfa.initial] = Regex.epsilon();
    }
    for (Integer accept : nfa.accepting) {
      edge[accept][end] = Regex.epsilon();
    }
    for (int state = 0; state < states; state++) {
      Map<Integer, Set<Integer>> row = nfa.delta.get(state);
      for (Integer symbol : row.keySet()) {
        Regex label = Regex.epsilon();
        if (symbol != Nfa.EPSILON) {
          label = Regex.symbol(symbol);
        }
        for (Integer next : row.get(symbol)) {
          edge[state][next] = or(edge[state][next], label);
        }
      }
    }

    boolean[] eliminated = new boolean[total];
    for (int round = 0; round < states; round++) {
      int k = pickNext(edge, eliminated, states);
      Regex loop = closure(edge[k][k]);
      for (int i = 0; i < total; i++) {
        if (i == k || eliminated[i] || edge[i][k].kind == Regex.EMPTY) {
          continue;
        }
        for (int j = 0; j < total; j++) {
          if (j == k || eliminated[j] || edge[k][j].kind == Regex.EMPTY) {
            continue;
          }
          Regex detour = then(then(edge[i][k], loop), edge[k][j]);
          edge[i][j] = or(edge[i][j], detour);
        }
      }
      eliminated[k] = true;
    }
    return edge[start][end];
  }

  /**
   * Heurística de orden: se elimina primero el estado con menos caminos que lo atraviesan
   * (entradas × salidas); en empate, el de menor número. Cualquier orden da una expresión
   * equivalente; este da expresiones más cortas y legibles, y es determinista.
   */
  public static int pickNext(Regex[][] edge, boolean[] eliminated, int states) {
    int total = states + 2;
    int best = -1;
    int bestCost = 0;
    for (int k = 0; k < states; k++) {
      if (eliminated[k]) {
        continue;
      }
      int incoming = 0;
      int outgoing = 0;
      for (int other = 0; other < total; other++) {
        if (other == k || eliminated[other]) {
          continue;
        }
        if (edge[other][k].kind != Regex.EMPTY) {
          incoming = incoming + 1;
        }
        if (edge[k][other].kind != Regex.EMPTY) {
          outgoing = outgoing + 1;
        }
      }
      int cost = incoming * outgoing;
      if (best == -1 || cost < bestCost) {
        best = k;
        bestCost = cost;
      }
    }
    return best;
  }

  /** Unión simplificada: ∅ | r = r,  r | r = r,  ε | r* = r*. */
  public static Regex or(Regex left, Regex right) {
    if (left.kind == Regex.EMPTY) {
      return right;
    }
    if (right.kind == Regex.EMPTY) {
      return left;
    }
    if (left.sameAs(right)) {
      return left;
    }
    if (left.kind == Regex.EPSILON && right.kind == Regex.STAR) {
      return right;
    }
    if (right.kind == Regex.EPSILON && left.kind == Regex.STAR) {
      return left;
    }
    return Regex.union(left, right);
  }

  /** Concatenación simplificada: ∅ · r = ∅,  ε · r = r. */
  public static Regex then(Regex left, Regex right) {
    if (left.kind == Regex.EMPTY || right.kind == Regex.EMPTY) {
      return Regex.empty();
    }
    if (left.kind == Regex.EPSILON) {
      return right;
    }
    if (right.kind == Regex.EPSILON) {
      return left;
    }
    return Regex.concat(left, right);
  }

  /** Estrella simplificada: ∅* = ε,  ε* = ε,  (r*)* = r*. */
  public static Regex closure(Regex inner) {
    if (inner.kind == Regex.EMPTY || inner.kind == Regex.EPSILON) {
      return Regex.epsilon();
    }
    if (inner.kind == Regex.STAR) {
      return inner;
    }
    return Regex.star(inner);
  }
}
