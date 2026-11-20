package domus.reasoner;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/**
 * Autómata finito no determinista con transiciones ε: A = (Q, Σ, δ, q0, F).
 * Los estados son enteros 0..stateCount-1 y los símbolos son índices del Alphabet.
 * La transición ε se representa con el símbolo especial EPSILON (-1).
 * Se usan TreeMap/TreeSet para que todo recorrido sea en orden creciente (determinismo).
 */
public class Nfa {
  public static final int EPSILON = -1;

  public int alphabetSize;
  public int stateCount;
  public int initial;
  public Set<Integer> accepting;
  /** delta.get(q) : símbolo -> conjunto de estados destino. */
  public List<Map<Integer, Set<Integer>>> delta;

  public Nfa(int alphabetSize) {
    this.alphabetSize = alphabetSize;
    this.stateCount = 0;
    this.initial = 0;
    this.accepting = new TreeSet<Integer>();
    this.delta = new ArrayList<Map<Integer, Set<Integer>>>();
  }

  /** Crea un estado nuevo y devuelve su número. */
  public int addState() {
    this.delta.add(new TreeMap<Integer, Set<Integer>>());
    this.stateCount = this.stateCount + 1;
    return this.stateCount - 1;
  }

  public void addTransition(int from, int symbol, int to) {
    Map<Integer, Set<Integer>> row = this.delta.get(from);
    Set<Integer> targets = row.get(symbol);
    if (targets == null) {
      targets = new TreeSet<Integer>();
      row.put(symbol, targets);
    }
    targets.add(to);
  }

  public void addEpsilon(int from, int to) {
    this.addTransition(from, EPSILON, to);
  }

  /** δ(from, symbol). Devuelve un conjunto vacío si no hay transición. */
  public Set<Integer> targets(int from, int symbol) {
    Set<Integer> targets = this.delta.get(from).get(symbol);
    if (targets == null) {
      return new TreeSet<Integer>();
    }
    return targets;
  }

  /** ε-clausura: todos los estados alcanzables desde 'states' usando solo transiciones ε. */
  public Set<Integer> epsilonClosure(Set<Integer> states) {
    Set<Integer> closure = new TreeSet<Integer>(states);
    List<Integer> pending = new ArrayList<Integer>(states);
    int head = 0;
    while (head < pending.size()) {
      int state = pending.get(head);
      head = head + 1;
      for (Integer next : this.targets(state, EPSILON)) {
        if (closure.add(next)) {
          pending.add(next);
        }
      }
    }
    return closure;
  }

  /** ε-clausura de un solo estado. */
  public Set<Integer> closureOf(int state) {
    Set<Integer> single = new TreeSet<Integer>();
    single.add(state);
    return this.epsilonClosure(single);
  }

  /** Estados alcanzables desde 'states' consumiendo exactamente el símbolo (sin clausura). */
  public Set<Integer> move(Set<Integer> states, int symbol) {
    Set<Integer> result = new TreeSet<Integer>();
    for (Integer state : states) {
      result.addAll(this.targets(state, symbol));
    }
    return result;
  }

  /** Un paso de la función de transición extendida: ε-clausura(move(states, symbol)). */
  public Set<Integer> step(Set<Integer> states, int symbol) {
    return this.epsilonClosure(this.move(states, symbol));
  }

  public boolean containsAccepting(Set<Integer> states) {
    for (Integer state : states) {
      if (this.accepting.contains(state)) {
        return true;
      }
    }
    return false;
  }
}
