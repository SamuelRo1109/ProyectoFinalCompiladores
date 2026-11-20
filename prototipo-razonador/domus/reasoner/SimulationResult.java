package domus.reasoner;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Resultado de simular un escenario.
 * steps.get(0) es la configuración inicial y steps.get(k) el conjunto de estados activos
 * después de consumir el k-ésimo evento (en un AFD cada conjunto tiene un solo estado).
 */
public class SimulationResult {
  public List<Set<Integer>> steps;
  public boolean accepted;
  /** Paso k (contando desde 1) cuyo evento no tenía transición; 0 si ningún paso falló. */
  public int failedStep;

  public SimulationResult() {
    this.steps = new ArrayList<Set<Integer>>();
    this.accepted = false;
    this.failedStep = 0;
  }
}
