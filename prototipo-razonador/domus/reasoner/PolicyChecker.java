package domus.reasoner;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Verificación de políticas (§4.4) con autómata producto y contraejemplo mínimo.
 * Solo se determiniza la política (pequeña); el dispositivo se recorre como AFN.
 * Es decidible: el producto tiene |Q_d| · |Q_R| estados y el BFS siempre termina.
 */
public class PolicyChecker {

  /** REQUIRED: toda sesión completa del dispositivo debe pertenecer a la política, L(A) ⊆ L(R). */
  public static Verdict checkRequired(Nfa device, Nfa policy, Alphabet alphabet) {
    Dfa minimal = MooreMinimizer.minimize(SubsetConstruction.determinize(policy));
    return checkRequiredDfa(device, minimal, alphabet);
  }

  /** Igual que checkRequired, con la política ya compilada a AFD completa. */
  public static Verdict checkRequiredDfa(Nfa device, Dfa policy, Alphabet alphabet) {
    // L(A) ⊆ L(R)  <=>  L(A) ∩ complemento(L(R)) = ∅
    Dfa complement = policy.complement();
    List<Integer> word = searchProduct(device, complement, true);
    return toVerdict(word, alphabet);
  }

  /** FORBIDDEN: el patrón nunca ocurre dentro de una traza ejecutable, Tr(A) ∩ L(Σ*·R·Σ*) = ∅. */
  public static Verdict checkForbidden(Nfa device, Nfa pattern, Alphabet alphabet) {
    Dfa minimal = MooreMinimizer.minimize(SubsetConstruction.determinize(containing(pattern)));
    return checkForbiddenDfa(device, minimal, alphabet);
  }

  /** Igual que checkForbidden, con Σ*·R·Σ* ya compilado a AFD completa. */
  public static Verdict checkForbiddenDfa(Nfa device, Dfa containingPattern, Alphabet alphabet) {
    // En Tr(A) todos los estados del dispositivo "aceptan": basta con que la traza sea ejecutable.
    List<Integer> word = searchProduct(device, containingPattern, false);
    return toVerdict(word, alphabet);
  }

  /** Autómata de Σ*·R·Σ*: palabras que contienen al patrón como fragmento contiguo. */
  public static Nfa containing(Nfa pattern) {
    int symbols = pattern.alphabetSize;
    Nfa prefix = Thompson.star(Thompson.any(symbols));
    Nfa suffix = Thompson.star(Thompson.any(symbols));
    return Thompson.concat(prefix, Thompson.concat(pattern, suffix));
  }

  public static Verdict toVerdict(List<Integer> word, Alphabet alphabet) {
    if (word == null) {
      return new Verdict(true, new ArrayList<String>());
    }
    return new Verdict(false, alphabet.namesOf(word));
  }

  /**
   * BFS sobre el autómata producto dispositivo × AFD. Un estado del producto es el par (p, s),
   * codificado como p * |Q_AFD| + s. Devuelve la palabra mínima (shortlex) que llega a un par
   * donde la AFD acepta (y, si deviceMustAccept, también el dispositivo), o null si no existe.
   */
  public static List<Integer> searchProduct(Nfa device, Dfa dfa, boolean deviceMustAccept) {
    if (device.stateCount == 0) {
      return null;
    }
    int width = dfa.stateCount;
    int total = device.stateCount * width;
    boolean[] visited = new boolean[total];
    int[] parent = new int[total];
    int[] parentSymbol = new int[total];

    // Las transiciones ε del dispositivo se absorben con la ε-clausura de cada estado.
    List<Set<Integer>> closures = new ArrayList<Set<Integer>>();
    for (int state = 0; state < device.stateCount; state++) {
      closures.add(device.closureOf(state));
    }

    List<Integer> queue = new ArrayList<Integer>();
    int start = device.initial * width + dfa.initial;
    visited[start] = true;
    parent[start] = -1;
    parentSymbol[start] = -1;
    queue.add(start);
    int head = 0;
    while (head < queue.size()) {
      int current = queue.get(head);
      head = head + 1;
      int deviceState = current / width;
      int dfaState = current % width;
      Set<Integer> closure = closures.get(deviceState);
      boolean deviceOk = !deviceMustAccept || device.containsAccepting(closure);
      if (deviceOk && dfa.accepting[dfaState]) {
        return GraphAnalysis.rebuildWord(parent, parentSymbol, current);
      }
      for (int symbol = 0; symbol < device.alphabetSize; symbol++) {
        int nextDfaState = dfa.delta[dfaState][symbol];
        for (Integer member : closure) {
          for (Integer nextDeviceState : device.targets(member, symbol)) {
            int next = nextDeviceState * width + nextDfaState;
            if (!visited[next]) {
              visited[next] = true;
              parent[next] = current;
              parentSymbol[next] = symbol;
              queue.add(next);
            }
          }
        }
      }
    }
    return null;
  }
}
