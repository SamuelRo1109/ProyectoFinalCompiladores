package domus.reasoner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Alfabeto Σ de un dispositivo: biyección entre nombres de eventos e índices enteros.
 * El orden de declaración define el índice (el primer símbolo agregado es el 0).
 * Ese orden es el que usa todo el razonador para explorar símbolos, y por eso
 * fija el orden lexicográfico de los contraejemplos (shortlex).
 */
public class Alphabet {
  public List<String> names;
  public Map<String, Integer> indices;

  public Alphabet() {
    this.names = new ArrayList<String>();
    this.indices = new HashMap<String, Integer>();
  }

  /** Agrega un símbolo y devuelve su índice. Si ya existía devuelve el índice que tenía. */
  public int add(String name) {
    Integer existing = this.indices.get(name);
    if (existing != null) {
      return existing;
    }
    int index = this.names.size();
    this.names.add(name);
    this.indices.put(name, index);
    return index;
  }

  /** Devuelve el índice del símbolo, o -1 si no pertenece al alfabeto. */
  public int indexOf(String name) {
    Integer index = this.indices.get(name);
    if (index == null) {
      return -1;
    }
    return index;
  }

  public String nameOf(int index) {
    return this.names.get(index);
  }

  public int size() {
    return this.names.size();
  }

  /** Traduce una palabra de índices a la lista de nombres de eventos. */
  public List<String> namesOf(List<Integer> word) {
    List<String> result = new ArrayList<String>();
    for (Integer symbol : word) {
      result.add(this.names.get(symbol));
    }
    return result;
  }

  /** Traduce una lista de nombres de eventos a la palabra de índices. */
  public List<Integer> wordOf(List<String> symbolNames) {
    List<Integer> result = new ArrayList<Integer>();
    for (String name : symbolNames) {
      result.add(this.indexOf(name));
    }
    return result;
  }
}
