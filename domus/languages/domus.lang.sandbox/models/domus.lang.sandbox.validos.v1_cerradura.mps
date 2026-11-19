<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2c879da1-6ab0-421e-bbb0-e5522a63b3be(domus.lang.sandbox.validos.v1_cerradura)">
  <persistence version="9" />
  <languages>
    <use id="cac7998d-8f0a-4a9f-9df9-7c2249914d64" name="domus.lang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="cac7998d-8f0a-4a9f-9df9-7c2249914d64" name="domus.lang">
      <concept id="5903380446964765885" name="domus.lang.structure.Role" flags="ng" index="1yJP60">
        <reference id="5903380446964765891" name="parent" index="1yJP7Y" />
      </concept>
      <concept id="5903380446964765887" name="domus.lang.structure.State" flags="ng" index="1yJP62">
        <property id="5903380446964765897" name="initial" index="1yJP7O" />
        <property id="5903380446964765898" name="accepting" index="1yJP7R" />
      </concept>
      <concept id="5903380446964765886" name="domus.lang.structure.Event" flags="ng" index="1yJP63">
        <property id="5903380446964765893" name="kind" index="1yJP7S" />
        <reference id="5903380446964765894" name="requiredRole" index="1yJP7V" />
      </concept>
      <concept id="5903380446964765945" name="domus.lang.structure.HomeSystem" flags="ng" index="1yJP74">
        <child id="5903380446964765949" name="scenarios" index="1yJP70" />
        <child id="5903380446964765948" name="policies" index="1yJP71" />
        <child id="5903380446964765947" name="devices" index="1yJP76" />
        <child id="5903380446964765946" name="roles" index="1yJP77" />
      </concept>
      <concept id="5903380446964765932" name="domus.lang.structure.Scenario" flags="ng" index="1yJP7h">
        <reference id="5903380446964765941" name="device" index="1yJP78" />
        <child id="5903380446964765940" name="steps" index="1yJP79" />
        <child id="5903380446964765939" name="actor" index="1yJP7e" />
      </concept>
      <concept id="5903380446964765929" name="domus.lang.structure.Policy" flags="ng" index="1yJP7k">
        <property id="5903380446964765933" name="mode" index="1yJP7g" />
        <reference id="5903380446964765935" name="device" index="1yJP7i" />
        <child id="5903380446964765934" name="expr" index="1yJP7j" />
      </concept>
      <concept id="5903380446964765931" name="domus.lang.structure.ScenarioStep" flags="ng" index="1yJP7m">
        <reference id="5903380446964765938" name="event" index="1yJP7f" />
      </concept>
      <concept id="5903380446964765930" name="domus.lang.structure.ActorRef" flags="ng" index="1yJP7n">
        <reference id="5903380446964765937" name="role" index="1yJP7c" />
      </concept>
      <concept id="5903380446964765922" name="domus.lang.structure.ParenExpr" flags="ng" index="1yJP7v" />
      <concept id="5903380446964765917" name="domus.lang.structure.UnionExpr" flags="ng" index="1yJP7w" />
      <concept id="5903380446964765919" name="domus.lang.structure.StarExpr" flags="ng" index="1yJP7y" />
      <concept id="5903380446964765918" name="domus.lang.structure.ConcatExpr" flags="ng" index="1yJP7z" />
      <concept id="5903380446964765913" name="domus.lang.structure.UnaryRegexExpr" flags="ng" index="1yJP7$">
        <child id="5903380446964765925" name="operand" index="1yJP7o" />
      </concept>
      <concept id="5903380446964765912" name="domus.lang.structure.BinaryRegexExpr" flags="ng" index="1yJP7_">
        <child id="5903380446964765924" name="right" index="1yJP7p" />
        <child id="5903380446964765923" name="left" index="1yJP7u" />
      </concept>
      <concept id="5903380446964765914" name="domus.lang.structure.SymbolExpr" flags="ng" index="1yJP7B">
        <reference id="5903380446964765926" name="event" index="1yJP7r" />
      </concept>
      <concept id="5903380446964765889" name="domus.lang.structure.Transition" flags="ng" index="1yJP7W">
        <reference id="5903380446964765901" name="source" index="1yJP7K" />
        <reference id="5903380446964765903" name="target" index="1yJP7M" />
        <reference id="5903380446964765902" name="event" index="1yJP7N" />
      </concept>
      <concept id="5903380446964765888" name="domus.lang.structure.AlarmState" flags="ng" index="1yJP7X" />
      <concept id="5903380446964765890" name="domus.lang.structure.Device" flags="ng" index="1yJP7Z">
        <child id="5903380446964765905" name="events" index="1yJP7G" />
        <child id="5903380446964765907" name="transitions" index="1yJP7I" />
        <child id="5903380446964765906" name="states" index="1yJP7J" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1yJP74" id="3S1cLRkVnvF">
    <property role="TrG5h" value="CasaSegura" />
    <node concept="1yJP60" id="3S1cLRkVnvJ" role="1yJP77">
      <property role="TrG5h" value="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRkVnvK" role="1yJP77">
      <property role="TrG5h" value="Residente" />
      <ref role="1yJP7Y" node="3S1cLRkVnvJ" resolve="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRkVnvL" role="1yJP77">
      <property role="TrG5h" value="Administrador" />
      <ref role="1yJP7Y" node="3S1cLRkVnvK" resolve="Residente" />
    </node>
    <node concept="1yJP7Z" id="3S1cLRkVnvG" role="1yJP76">
      <property role="TrG5h" value="Cerradura" />
      <node concept="1yJP63" id="3S1cLRkVnvH" role="1yJP7G">
        <property role="TrG5h" value="desbloquear" />
        <ref role="1yJP7V" node="3S1cLRkVnvK" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRkVnvM" role="1yJP7G">
        <property role="TrG5h" value="abrir" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
      </node>
      <node concept="1yJP63" id="3S1cLRkVnvN" role="1yJP7G">
        <property role="TrG5h" value="cerrar" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
      </node>
      <node concept="1yJP63" id="3S1cLRkVnvO" role="1yJP7G">
        <property role="TrG5h" value="bloquear" />
        <ref role="1yJP7V" node="3S1cLRkVnvK" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRkVnvP" role="1yJP7G">
        <property role="TrG5h" value="forzar" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
      </node>
      <node concept="1yJP63" id="3S1cLRkVnvQ" role="1yJP7G">
        <property role="TrG5h" value="desactivar" />
        <ref role="1yJP7V" node="3S1cLRkVnvL" resolve="Administrador" />
      </node>
      <node concept="1yJP62" id="3S1cLRkVnvI" role="1yJP7J">
        <property role="TrG5h" value="Bloqueada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRkVnvT" role="1yJP7J">
        <property role="TrG5h" value="Desbloqueada" />
      </node>
      <node concept="1yJP62" id="3S1cLRkVnvU" role="1yJP7J">
        <property role="TrG5h" value="Abierta" />
      </node>
      <node concept="1yJP7X" id="3S1cLRkVnvW" role="1yJP7J">
        <property role="TrG5h" value="Intrusion" />
      </node>
      <node concept="1yJP7W" id="3S1cLRkVnw2" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRkVnvI" resolve="Bloqueada" />
        <ref role="1yJP7N" node="3S1cLRkVnvH" resolve="desbloquear" />
        <ref role="1yJP7M" node="3S1cLRkVnvT" resolve="Desbloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRkVnw9" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRkVnvT" resolve="Desbloqueada" />
        <ref role="1yJP7N" node="3S1cLRkVnvM" resolve="abrir" />
        <ref role="1yJP7M" node="3S1cLRkVnvU" resolve="Abierta" />
      </node>
      <node concept="1yJP7W" id="3S1cLRkVnwa" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRkVnvU" resolve="Abierta" />
        <ref role="1yJP7N" node="3S1cLRkVnvN" resolve="cerrar" />
        <ref role="1yJP7M" node="3S1cLRkVnvT" resolve="Desbloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRkVnwb" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRkVnvT" resolve="Desbloqueada" />
        <ref role="1yJP7N" node="3S1cLRkVnvO" resolve="bloquear" />
        <ref role="1yJP7M" node="3S1cLRkVnvI" resolve="Bloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRkVnwc" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRkVnvI" resolve="Bloqueada" />
        <ref role="1yJP7N" node="3S1cLRkVnvP" resolve="forzar" />
        <ref role="1yJP7M" node="3S1cLRkVnvW" resolve="Intrusion" />
      </node>
      <node concept="1yJP7W" id="3S1cLRkVnwd" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRkVnvW" resolve="Intrusion" />
        <ref role="1yJP7N" node="3S1cLRkVnvQ" resolve="desactivar" />
        <ref role="1yJP7M" node="3S1cLRkVnvI" resolve="Bloqueada" />
      </node>
    </node>
    <node concept="1yJP7h" id="3S1cLRkVnwf" role="1yJP70">
      <property role="TrG5h" value="EntradaNormal" />
      <ref role="1yJP78" node="3S1cLRkVnvG" resolve="Cerradura" />
      <node concept="1yJP7n" id="3S1cLRkVnwg" role="1yJP7e">
        <ref role="1yJP7c" node="3S1cLRkVnvK" resolve="Residente" />
      </node>
      <node concept="1yJP7m" id="3S1cLRkVnwh" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRkVnvH" resolve="desbloquear" />
      </node>
      <node concept="1yJP7m" id="3S1cLRkVnwi" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRkVnvM" resolve="abrir" />
      </node>
      <node concept="1yJP7m" id="3S1cLRkVnwj" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRkVnvN" resolve="cerrar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRkVnwk" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRkVnvO" resolve="bloquear" />
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRkVnwl" role="1yJP71">
      <property role="TrG5h" value="NoBloquearAbierta" />
      <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
      <ref role="1yJP7i" node="3S1cLRkVnvG" resolve="Cerradura" />
      <node concept="1yJP7z" id="3S1cLRkVnwn" role="1yJP7j">
        <node concept="1yJP7B" id="3S1cLRkVnwv" role="1yJP7u">
          <ref role="1yJP7r" node="3S1cLRkVnvM" resolve="abrir" />
        </node>
        <node concept="1yJP7B" id="3S1cLRkVnwx" role="1yJP7p">
          <ref role="1yJP7r" node="3S1cLRkVnvO" resolve="bloquear" />
        </node>
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRkVnwt" role="1yJP71">
      <property role="TrG5h" value="CicloCompleto" />
      <ref role="1yJP7i" node="3S1cLRkVnvG" resolve="Cerradura" />
      <node concept="1yJP7y" id="3S1cLRkVnwB" role="1yJP7j">
        <node concept="1yJP7v" id="3S1cLRkVnwF" role="1yJP7o">
          <node concept="1yJP7w" id="3S1cLRkVnwJ" role="1yJP7o">
            <node concept="1yJP7v" id="3S1cLRkVnwP" role="1yJP7u">
              <node concept="1yJP7z" id="3S1cLRkVnwT" role="1yJP7o">
                <node concept="1yJP7B" id="3S1cLRkVnwZ" role="1yJP7u">
                  <ref role="1yJP7r" node="3S1cLRkVnvH" resolve="desbloquear" />
                </node>
                <node concept="1yJP7z" id="3S1cLRkVnx1" role="1yJP7p">
                  <node concept="1yJP7y" id="3S1cLRkVnx7" role="1yJP7u">
                    <node concept="1yJP7v" id="3S1cLRkVnxb" role="1yJP7o">
                      <node concept="1yJP7z" id="3S1cLRkVnxf" role="1yJP7o">
                        <node concept="1yJP7B" id="3S1cLRkVnxl" role="1yJP7u">
                          <ref role="1yJP7r" node="3S1cLRkVnvM" resolve="abrir" />
                        </node>
                        <node concept="1yJP7B" id="3S1cLRkVnxn" role="1yJP7p">
                          <ref role="1yJP7r" node="3S1cLRkVnvN" resolve="cerrar" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1yJP7B" id="3S1cLRkVnxp" role="1yJP7p">
                    <ref role="1yJP7r" node="3S1cLRkVnvO" resolve="bloquear" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1yJP7v" id="3S1cLRkVnxr" role="1yJP7p">
              <node concept="1yJP7z" id="3S1cLRkVnxv" role="1yJP7o">
                <node concept="1yJP7B" id="3S1cLRkVnx_" role="1yJP7u">
                  <ref role="1yJP7r" node="3S1cLRkVnvP" resolve="forzar" />
                </node>
                <node concept="1yJP7B" id="3S1cLRkVnxB" role="1yJP7p">
                  <ref role="1yJP7r" node="3S1cLRkVnvQ" resolve="desactivar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

