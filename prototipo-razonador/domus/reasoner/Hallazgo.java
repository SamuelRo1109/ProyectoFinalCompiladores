package domus.reasoner;

/**
 * Un resultado del razonador listo para mostrarse en el editor: qué tan grave es, sobre qué
 * nodo del modelo va y el mensaje en español. Las checking rules de MPS solo traducen
 * (lugar, indice) al nodo concreto y emiten error / warning / info con el mensaje.
 */
public class Hallazgo {
  public static final int INFO = 0;
  public static final int WARNING = 1;
  public static final int ERROR = 2;

  /** El nodo al que se aplica la regla (Device, Policy o Scenario). */
  public static final int EN_NODO = 0;
  /** El estado número 'indice' del dispositivo (orden de declaración). */
  public static final int EN_ESTADO = 1;
  /** La transición número 'indice' del dispositivo (orden de declaración). */
  public static final int EN_TRANSICION = 2;
  /** El paso número 'indice' del escenario (contando desde 0). */
  public static final int EN_PASO = 3;

  public int severidad;
  public int lugar;
  public int indice;
  public String mensaje;

  public Hallazgo(int severidad, int lugar, int indice, String mensaje) {
    this.severidad = severidad;
    this.lugar = lugar;
    this.indice = indice;
    this.mensaje = mensaje;
  }

  public boolean esError() {
    return this.severidad == ERROR;
  }

  public boolean esWarning() {
    return this.severidad == WARNING;
  }

  public String toString() {
    String sev = "INFO";
    if (this.severidad == WARNING) {
      sev = "WARNING";
    }
    if (this.severidad == ERROR) {
      sev = "ERROR";
    }
    String donde = "nodo";
    if (this.lugar == EN_ESTADO) {
      donde = "estado " + this.indice;
    }
    if (this.lugar == EN_TRANSICION) {
      donde = "transicion " + this.indice;
    }
    if (this.lugar == EN_PASO) {
      donde = "paso " + this.indice;
    }
    return sev + " [" + donde + "] " + this.mensaje;
  }
}
