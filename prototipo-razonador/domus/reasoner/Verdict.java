package domus.reasoner;

import java.util.List;

/**
 * Veredicto de una política. Si ok == false, 'counterexample' es la secuencia mínima
 * (shortlex) de eventos que la viola. Si ok == true, 'counterexample' es una lista vacía.
 * Ojo: una violación también puede tener contraejemplo vacío (la palabra ε); por eso
 * siempre hay que mirar primero 'ok'.
 */
public class Verdict {
  public boolean ok;
  public List<String> counterexample;

  public Verdict(boolean ok, List<String> counterexample) {
    this.ok = ok;
    this.counterexample = counterexample;
  }

  public String toString() {
    if (this.ok) {
      return "CUMPLE";
    }
    return "VIOLA, contraejemplo " + this.counterexample;
  }
}
