<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ee09f137-7de7-4a2a-b455-bc2bd7e507c1(domus.lang.sandbox.validos.v2_alarma)">
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
  <node concept="1yJP74" id="3S1cLRl0cro">
    <property role="TrG5h" value="SistemaAlarma" />
    <node concept="1yJP60" id="3S1cLRl0crp" role="1yJP77">
      <property role="TrG5h" value="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRl0crq" role="1yJP77">
      <property role="TrG5h" value="Residente" />
      <ref role="1yJP7Y" node="3S1cLRl0crp" resolve="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRl0crr" role="1yJP77">
      <property role="TrG5h" value="Administrador" />
      <ref role="1yJP7Y" node="3S1cLRl0crq" resolve="Residente" />
    </node>
    <node concept="1yJP7Z" id="3S1cLRl0crs" role="1yJP76">
      <property role="TrG5h" value="Alarma" />
      <node concept="1yJP63" id="3S1cLRl0crt" role="1yJP7G">
        <property role="TrG5h" value="armar" />
        <ref role="1yJP7V" node="3S1cLRl0crq" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0cru" role="1yJP7G">
        <property role="TrG5h" value="desarmar" />
        <ref role="1yJP7V" node="3S1cLRl0crq" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0crv" role="1yJP7G">
        <property role="TrG5h" value="disparar" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0crw" role="1yJP7G">
        <property role="TrG5h" value="tiempoEntrada" />
        <property role="1yJP7S" value="5yIg7XjIeB5/TIMER" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0crx" role="1yJP7G">
        <property role="TrG5h" value="autoSilencio" />
        <property role="1yJP7S" value="5yIg7XjIeB5/TIMER" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0cry" role="1yJP7G">
        <property role="TrG5h" value="silenciar" />
        <ref role="1yJP7V" node="3S1cLRl0crr" resolve="Administrador" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0crz" role="1yJP7J">
        <property role="TrG5h" value="Desarmada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cr$" role="1yJP7J">
        <property role="TrG5h" value="Armada" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cr_" role="1yJP7J">
        <property role="TrG5h" value="Pendiente" />
      </node>
      <node concept="1yJP7X" id="3S1cLRl0crA" role="1yJP7J">
        <property role="TrG5h" value="Sonando" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0crB" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0crz" resolve="Desarmada" />
        <ref role="1yJP7N" node="3S1cLRl0crt" resolve="armar" />
        <ref role="1yJP7M" node="3S1cLRl0cr$" resolve="Armada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0crC" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cr$" resolve="Armada" />
        <ref role="1yJP7N" node="3S1cLRl0cru" resolve="desarmar" />
        <ref role="1yJP7M" node="3S1cLRl0crz" resolve="Desarmada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0crD" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cr$" resolve="Armada" />
        <ref role="1yJP7N" node="3S1cLRl0crv" resolve="disparar" />
        <ref role="1yJP7M" node="3S1cLRl0cr_" resolve="Pendiente" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0crE" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cr_" resolve="Pendiente" />
        <ref role="1yJP7N" node="3S1cLRl0cru" resolve="desarmar" />
        <ref role="1yJP7M" node="3S1cLRl0crz" resolve="Desarmada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0crF" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cr_" resolve="Pendiente" />
        <ref role="1yJP7N" node="3S1cLRl0crw" resolve="tiempoEntrada" />
        <ref role="1yJP7M" node="3S1cLRl0crA" resolve="Sonando" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0crG" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0crA" resolve="Sonando" />
        <ref role="1yJP7N" node="3S1cLRl0cry" resolve="silenciar" />
        <ref role="1yJP7M" node="3S1cLRl0crz" resolve="Desarmada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0crH" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0crA" resolve="Sonando" />
        <ref role="1yJP7N" node="3S1cLRl0crx" resolve="autoSilencio" />
        <ref role="1yJP7M" node="3S1cLRl0cr$" resolve="Armada" />
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRl0crI" role="1yJP71">
      <property role="TrG5h" value="SesionCompleta" />
      <ref role="1yJP7i" node="3S1cLRl0crs" resolve="Alarma" />
      <node concept="1yJP7y" id="3S1cLRl0crJ" role="1yJP7j">
        <node concept="1yJP7v" id="3S1cLRl0crK" role="1yJP7o">
          <node concept="1yJP7z" id="3S1cLRl0crL" role="1yJP7o">
            <node concept="1yJP7z" id="2y5ZLywcAtv" role="1yJP7u">
              <node concept="1yJP7B" id="2y5ZLywcAtw" role="1yJP7u">
                <ref role="1yJP7r" node="3S1cLRl0crt" resolve="armar" />
              </node>
              <node concept="1yJP7y" id="2y5ZLywcAtx" role="1yJP7p">
                <node concept="1yJP7v" id="2y5ZLywcAty" role="1yJP7o">
                  <node concept="1yJP7z" id="2y5ZLywcAtz" role="1yJP7o">
                    <node concept="1yJP7B" id="2y5ZLywcAt$" role="1yJP7u">
                      <ref role="1yJP7r" node="3S1cLRl0crv" resolve="disparar" />
                    </node>
                    <node concept="1yJP7z" id="2y5ZLywcAt_" role="1yJP7p">
                      <node concept="1yJP7B" id="2y5ZLywcAtA" role="1yJP7u">
                        <ref role="1yJP7r" node="3S1cLRl0crw" resolve="tiempoEntrada" />
                      </node>
                      <node concept="1yJP7B" id="2y5ZLywcAtB" role="1yJP7p">
                        <ref role="1yJP7r" node="3S1cLRl0crx" resolve="autoSilencio" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1yJP7v" id="3S1cLRl0crN" role="1yJP7p">
              <node concept="1yJP7w" id="3S1cLRl0crO" role="1yJP7o">
                <node concept="1yJP7B" id="3S1cLRl0crP" role="1yJP7u">
                  <ref role="1yJP7r" node="3S1cLRl0cru" resolve="desarmar" />
                </node>
                <node concept="1yJP7v" id="3S1cLRl0crQ" role="1yJP7p">
                  <node concept="1yJP7z" id="3S1cLRl0crR" role="1yJP7o">
                    <node concept="1yJP7B" id="3S1cLRl0crS" role="1yJP7u">
                      <ref role="1yJP7r" node="3S1cLRl0crv" resolve="disparar" />
                    </node>
                    <node concept="1yJP7v" id="3S1cLRl0crT" role="1yJP7p">
                      <node concept="1yJP7w" id="3S1cLRl0crU" role="1yJP7o">
                        <node concept="1yJP7B" id="3S1cLRl0crV" role="1yJP7u">
                          <ref role="1yJP7r" node="3S1cLRl0cru" resolve="desarmar" />
                        </node>
                        <node concept="1yJP7v" id="3S1cLRl0crW" role="1yJP7p">
                          <node concept="1yJP7z" id="3S1cLRl0crX" role="1yJP7o">
                            <node concept="1yJP7B" id="3S1cLRl0crY" role="1yJP7u">
                              <ref role="1yJP7r" node="3S1cLRl0crw" resolve="tiempoEntrada" />
                            </node>
                            <node concept="1yJP7v" id="3S1cLRl0crZ" role="1yJP7p">
                              <node concept="1yJP7w" id="3S1cLRl0cs0" role="1yJP7o">
                                <node concept="1yJP7B" id="3S1cLRl0cs1" role="1yJP7u">
                                  <ref role="1yJP7r" node="3S1cLRl0cry" resolve="silenciar" />
                                </node>
                                <node concept="1yJP7v" id="3S1cLRl0cs2" role="1yJP7p">
                                  <node concept="1yJP7z" id="3S1cLRl0cs3" role="1yJP7o">
                                    <node concept="1yJP7B" id="3S1cLRl0cs4" role="1yJP7u">
                                      <ref role="1yJP7r" node="3S1cLRl0crx" resolve="autoSilencio" />
                                    </node>
                                    <node concept="1yJP7B" id="3S1cLRl0cs5" role="1yJP7p">
                                      <ref role="1yJP7r" node="3S1cLRl0cru" resolve="desarmar" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRl0cs6" role="1yJP71">
      <property role="TrG5h" value="NoSonarSinDisparo" />
      <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
      <ref role="1yJP7i" node="3S1cLRl0crs" resolve="Alarma" />
      <node concept="1yJP7z" id="3S1cLRl0cs7" role="1yJP7j">
        <node concept="1yJP7B" id="3S1cLRl0cs8" role="1yJP7u">
          <ref role="1yJP7r" node="3S1cLRl0crt" resolve="armar" />
        </node>
        <node concept="1yJP7B" id="3S1cLRl0cs9" role="1yJP7p">
          <ref role="1yJP7r" node="3S1cLRl0crw" resolve="tiempoEntrada" />
        </node>
      </node>
    </node>
    <node concept="1yJP7h" id="3S1cLRl0csa" role="1yJP70">
      <property role="TrG5h" value="ArmadoNormal" />
      <ref role="1yJP78" node="3S1cLRl0crs" resolve="Alarma" />
      <node concept="1yJP7n" id="3S1cLRl0csb" role="1yJP7e">
        <ref role="1yJP7c" node="3S1cLRl0crq" resolve="Residente" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csc" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0crt" resolve="armar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csd" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0cru" resolve="desarmar" />
      </node>
    </node>
    <node concept="1yJP7h" id="3S1cLRl0cse" role="1yJP70">
      <property role="TrG5h" value="IntrusoYSilencio" />
      <ref role="1yJP78" node="3S1cLRl0crs" resolve="Alarma" />
      <node concept="1yJP7n" id="3S1cLRl0csf" role="1yJP7e">
        <ref role="1yJP7c" node="3S1cLRl0crr" resolve="Administrador" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csg" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0crt" resolve="armar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csh" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0crv" resolve="disparar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csi" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0crw" resolve="tiempoEntrada" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csj" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0cry" resolve="silenciar" />
      </node>
    </node>
    <node concept="1yJP7h" id="3S1cLRl0csk" role="1yJP70">
      <property role="TrG5h" value="SinRespuesta" />
      <ref role="1yJP78" node="3S1cLRl0crs" resolve="Alarma" />
      <node concept="1yJP7n" id="3S1cLRl0csl" role="1yJP7e">
        <ref role="1yJP7c" node="3S1cLRl0crq" resolve="Residente" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csm" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0crt" resolve="armar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csn" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0crv" resolve="disparar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cso" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0crw" resolve="tiempoEntrada" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csp" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0crx" resolve="autoSilencio" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0csq" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0cru" resolve="desarmar" />
      </node>
    </node>
  </node>
</model>

