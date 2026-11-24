package domus.reasoner;

/**
 * Nodo del árbol de una expresión regular (espejo mínimo de los conceptos RegexExpr del lenguaje).
 * Lo produce StateEliminator; toText lo imprime y toNfa lo compila con Thompson,
 * lo que permite la prueba de ida y vuelta del Teorema de Kleene sin escribir un parser.
 * Los nodos son inmutables: nunca se modifican después de crearse.
 */
public class Regex {
  public static final int EMPTY = 0;
  public static final int EPSILON = 1;
  public static final int SYMBOL = 2;
  public static final int ANY = 3;
  public static final int UNION = 4;
  public static final int CONCAT = 5;
  public static final int STAR = 6;
  public static final int PLUS = 7;
  public static final int OPTIONAL = 8;

  public int kind;
  /** El índice del símbolo (solo si kind == SYMBOL). */
  public int symbol;
  /** Operando izquierdo, o el único operando de STAR, PLUS y OPTIONAL. */
  public Regex left;
  public Regex right;

  public Regex(int kind, int symbol, Regex left, Regex right) {
    this.kind = kind;
    this.symbol = symbol;
    this.left = left;
    this.right = right;
  }

  /** ∅: el lenguaje vacío (no confundir con ε). */
  public static Regex empty() {
    return new Regex(EMPTY, -1, null, null);
  }

  public static Regex epsilon() {
    return new Regex(EPSILON, -1, null, null);
  }

  public static Regex symbol(int symbol) {
    return new Regex(SYMBOL, symbol, null, null);
  }

  public static Regex any() {
    return new Regex(ANY, -1, null, null);
  }

  public static Regex union(Regex left, Regex right) {
    return new Regex(UNION, -1, left, right);
  }

  public static Regex concat(Regex left, Regex right) {
    return new Regex(CONCAT, -1, left, right);
  }

  public static Regex star(Regex inner) {
    return new Regex(STAR, -1, inner, null);
  }

  public static Regex plus(Regex inner) {
    return new Regex(PLUS, -1, inner, null);
  }

  public static Regex optional(Regex inner) {
    return new Regex(OPTIONAL, -1, inner, null);
  }

  /** Igualdad estructural (mismo árbol). */
  public boolean sameAs(Regex other) {
    if (other == null || this.kind != other.kind || this.symbol != other.symbol) {
      return false;
    }
    if (this.left != null && !this.left.sameAs(other.left)) {
      return false;
    }
    if (this.right != null && !this.right.sameAs(other.right)) {
      return false;
    }
    return true;
  }

  /** Precedencia para decidir paréntesis: unión 1 < concatenación 2 < posfijos 3 < átomos 4. */
  public int precedence() {
    if (this.kind == UNION) {
      return 1;
    }
    if (this.kind == CONCAT) {
      return 2;
    }
    if (this.kind == STAR || this.kind == PLUS || this.kind == OPTIONAL) {
      return 3;
    }
    return 4;
  }

  /** Texto en notación infija con ε, |, ·, * y los paréntesis estrictamente necesarios. */
  public String toText(Alphabet alphabet) {
    if (this.kind == EMPTY) {
      return "∅";
    }
    if (this.kind == EPSILON) {
      return "ε";
    }
    if (this.kind == SYMBOL) {
      return alphabet.nameOf(this.symbol);
    }
    if (this.kind == ANY) {
      return ".";
    }
    if (this.kind == UNION) {
      return this.left.toText(alphabet) + " | " + this.right.toText(alphabet);
    }
    if (this.kind == CONCAT) {
      return this.left.wrapped(alphabet, 2) + " · " + this.right.wrapped(alphabet, 2);
    }
    if (this.kind == STAR) {
      return this.left.wrapped(alphabet, 4) + "*";
    }
    if (this.kind == PLUS) {
      return this.left.wrapped(alphabet, 4) + "+";
    }
    return this.left.wrapped(alphabet, 4) + "?";
  }

  /** Texto de este nodo, entre paréntesis si su precedencia es menor que la mínima exigida. */
  public String wrapped(Alphabet alphabet, int minimumPrecedence) {
    String text = this.toText(alphabet);
    if (this.precedence() < minimumPrecedence) {
      return "(" + text + ")";
    }
    return text;
  }

  /** Compila el árbol a un AFN-ε con la construcción de Thompson. */
  public Nfa toNfa(int alphabetSize) {
    if (this.kind == EMPTY) {
      return Thompson.empty(alphabetSize);
    }
    if (this.kind == EPSILON) {
      return Thompson.epsilon(alphabetSize);
    }
    if (this.kind == SYMBOL) {
      return Thompson.symbol(this.symbol, alphabetSize);
    }
    if (this.kind == ANY) {
      return Thompson.any(alphabetSize);
    }
    if (this.kind == UNION) {
      return Thompson.union(this.left.toNfa(alphabetSize), this.right.toNfa(alphabetSize));
    }
    if (this.kind == CONCAT) {
      return Thompson.concat(this.left.toNfa(alphabetSize), this.right.toNfa(alphabetSize));
    }
    if (this.kind == STAR) {
      return Thompson.star(this.left.toNfa(alphabetSize));
    }
    if (this.kind == PLUS) {
      return Thompson.plus(this.left.toNfa(alphabetSize));
    }
    return Thompson.optional(this.left.toNfa(alphabetSize));
  }
}
