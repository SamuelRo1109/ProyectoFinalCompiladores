package domus.reasoner;

import java.util.List;

/**
 * Autómata finito determinista COMPLETO: δ es una función total Q × Σ -> Q.
 * Para que sea total, las transiciones "que no existen" van a un estado sumidero
 * explícito (no acepta y todas sus transiciones vuelven a él mismo).
 */
public class Dfa {
  public int alphabetSize;
  public int stateCount;
  public int initial;
  /** delta[q][a] = estado destino (siempre definido). */
  public int[][] delta;
  public boolean[] accepting;

  public Dfa(int stateCount, int alphabetSize) {
    this.stateCount = stateCount;
    this.alphabetSize = alphabetSize;
    this.initial = 0;
    this.delta = new int[stateCount][alphabetSize];
    this.accepting = new boolean[stateCount];
  }

  /** δ*(q0, word): estado en el que termina la lectura de la palabra. */
  public int run(List<Integer> word) {
    int state = this.initial;
    for (Integer symbol : word) {
      state = this.delta[state][symbol];
    }
    return state;
  }

  public boolean accepts(List<Integer> word) {
    return this.accepting[this.run(word)];
  }

  /** Complemento: mismo autómata con la aceptación invertida. Correcto solo porque la AFD es completa. */
  public Dfa complement() {
    Dfa result = new Dfa(this.stateCount, this.alphabetSize);
    result.initial = this.initial;
    for (int state = 0; state < this.stateCount; state++) {
      result.accepting[state] = !this.accepting[state];
      for (int symbol = 0; symbol < this.alphabetSize; symbol++) {
        result.delta[state][symbol] = this.delta[state][symbol];
      }
    }
    return result;
  }

  /**
   * Estado sumidero: no acepta y todas sus transiciones son bucles sobre sí mismo.
   * Devuelve -1 si no existe. En una AFD mínima hay como máximo uno.
   */
  public int sinkState() {
    for (int state = 0; state < this.stateCount; state++) {
      if (this.accepting[state]) {
        continue;
      }
      boolean allLoops = true;
      for (int symbol = 0; symbol < this.alphabetSize; symbol++) {
        if (this.delta[state][symbol] != state) {
          allLoops = false;
        }
      }
      if (allLoops) {
        return state;
      }
    }
    return -1;
  }

  /** La misma AFD vista como AFN (toda AFD es un caso particular de AFN). */
  public Nfa toNfa() {
    Nfa nfa = new Nfa(this.alphabetSize);
    for (int state = 0; state < this.stateCount; state++) {
      nfa.addState();
    }
    nfa.initial = this.initial;
    for (int state = 0; state < this.stateCount; state++) {
      if (this.accepting[state]) {
        nfa.accepting.add(state);
      }
      for (int symbol = 0; symbol < this.alphabetSize; symbol++) {
        nfa.addTransition(state, symbol, this.delta[state][symbol]);
      }
    }
    return nfa;
  }
}
