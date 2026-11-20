package domus.reasoner;

import java.util.Map;
import java.util.Set;

/**
 * Construcción de Thompson (Teorema de Kleene, parte 1: ER -> AF).
 * Cada operador de las expresiones regulares tiene una construcción que combina
 * los autómatas de sus operandos con transiciones ε (semántica denotacional composicional).
 * Las funciones no modifican sus argumentos: copian los fragmentos en un autómata nuevo.
 * Cada construcción agrega como máximo 2 estados, así que el resultado tiene <= 2|r| estados.
 */
public class Thompson {

  /** T(∅): no acepta nada (dos estados sin transiciones). */
  public static Nfa empty(int alphabetSize) {
    Nfa nfa = new Nfa(alphabetSize);
    int start = nfa.addState();
    int end = nfa.addState();
    nfa.initial = start;
    nfa.accepting.add(end);
    return nfa;
  }

  /** T(ε): acepta solo la palabra vacía. */
  public static Nfa epsilon(int alphabetSize) {
    Nfa nfa = empty(alphabetSize);
    nfa.addEpsilon(0, 1);
    return nfa;
  }

  /** T(a): acepta solo la palabra de un símbolo. */
  public static Nfa symbol(int symbol, int alphabetSize) {
    Nfa nfa = empty(alphabetSize);
    nfa.addTransition(0, symbol, 1);
    return nfa;
  }

  /** T(.) = unión de T(a) para todo a en Σ: acepta cualquier palabra de un símbolo. */
  public static Nfa any(int alphabetSize) {
    Nfa nfa = empty(alphabetSize);
    for (int symbol = 0; symbol < alphabetSize; symbol++) {
      nfa.addTransition(0, symbol, 1);
    }
    return nfa;
  }

  /** T(r1 | r2). */
  public static Nfa union(Nfa left, Nfa right) {
    Nfa nfa = new Nfa(left.alphabetSize);
    int start = nfa.addState();
    int leftOffset = embed(nfa, left);
    int rightOffset = embed(nfa, right);
    int end = nfa.addState();
    nfa.initial = start;
    nfa.accepting.add(end);
    nfa.addEpsilon(start, leftOffset + left.initial);
    nfa.addEpsilon(start, rightOffset + right.initial);
    for (Integer accept : left.accepting) {
      nfa.addEpsilon(leftOffset + accept, end);
    }
    for (Integer accept : right.accepting) {
      nfa.addEpsilon(rightOffset + accept, end);
    }
    return nfa;
  }

  /** T(r1 · r2). */
  public static Nfa concat(Nfa left, Nfa right) {
    Nfa nfa = new Nfa(left.alphabetSize);
    int leftOffset = embed(nfa, left);
    int rightOffset = embed(nfa, right);
    nfa.initial = leftOffset + left.initial;
    for (Integer accept : left.accepting) {
      nfa.addEpsilon(leftOffset + accept, rightOffset + right.initial);
    }
    for (Integer accept : right.accepting) {
      nfa.accepting.add(rightOffset + accept);
    }
    return nfa;
  }

  /** T(r*): cero o más repeticiones. */
  public static Nfa star(Nfa inner) {
    Nfa nfa = plus(inner);
    // La única diferencia con r+ es poder saltarse el cuerpo (cero repeticiones).
    for (Integer accept : nfa.accepting) {
      nfa.addEpsilon(nfa.initial, accept);
    }
    return nfa;
  }

  /** T(r+) = T(r · r*): una o más repeticiones (construcción directa, mismo lenguaje). */
  public static Nfa plus(Nfa inner) {
    Nfa nfa = new Nfa(inner.alphabetSize);
    int start = nfa.addState();
    int offset = embed(nfa, inner);
    int end = nfa.addState();
    nfa.initial = start;
    nfa.accepting.add(end);
    nfa.addEpsilon(start, offset + inner.initial);
    for (Integer accept : inner.accepting) {
      nfa.addEpsilon(offset + accept, offset + inner.initial);
      nfa.addEpsilon(offset + accept, end);
    }
    return nfa;
  }

  /** T(r?) = T(r | ε). */
  public static Nfa optional(Nfa inner) {
    return union(inner, epsilon(inner.alphabetSize));
  }

  /**
   * Copia los estados y transiciones de 'source' dentro de 'target' y devuelve el
   * desplazamiento: el estado q de 'source' pasa a ser (desplazamiento + q) en 'target'.
   * No copia ni el estado inicial ni los de aceptación.
   */
  public static int embed(Nfa target, Nfa source) {
    int offset = target.stateCount;
    for (int state = 0; state < source.stateCount; state++) {
      target.addState();
    }
    for (int state = 0; state < source.stateCount; state++) {
      Map<Integer, Set<Integer>> row = source.delta.get(state);
      for (Integer symbol : row.keySet()) {
        for (Integer next : row.get(symbol)) {
          target.addTransition(offset + state, symbol, offset + next);
        }
      }
    }
    return offset;
  }
}
