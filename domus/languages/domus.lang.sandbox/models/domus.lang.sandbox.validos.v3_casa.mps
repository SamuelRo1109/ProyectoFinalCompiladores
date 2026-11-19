<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a65f17f6-23eb-42a5-8123-d32abc656088(domus.lang.sandbox.validos.v3_casa)">
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
  <node concept="1yJP74" id="3S1cLRl0csr">
    <property role="TrG5h" value="CasaInteligente" />
    <node concept="1yJP60" id="3S1cLRl0css" role="1yJP77">
      <property role="TrG5h" value="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRl0cst" role="1yJP77">
      <property role="TrG5h" value="Residente" />
      <ref role="1yJP7Y" node="3S1cLRl0css" resolve="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRl0csu" role="1yJP77">
      <property role="TrG5h" value="Administrador" />
      <ref role="1yJP7Y" node="3S1cLRl0cst" resolve="Residente" />
    </node>
    <node concept="1yJP7Z" id="3S1cLRl0csv" role="1yJP76">
      <property role="TrG5h" value="Cerradura" />
      <node concept="1yJP63" id="3S1cLRl0csw" role="1yJP7G">
        <property role="TrG5h" value="desbloquear" />
        <ref role="1yJP7V" node="3S1cLRl0cst" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0csx" role="1yJP7G">
        <property role="TrG5h" value="abrir" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0csy" role="1yJP7G">
        <property role="TrG5h" value="cerrar" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0csz" role="1yJP7G">
        <property role="TrG5h" value="bloquear" />
        <ref role="1yJP7V" node="3S1cLRl0cst" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0cs$" role="1yJP7G">
        <property role="TrG5h" value="forzar" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0cs_" role="1yJP7G">
        <property role="TrG5h" value="desactivar" />
        <ref role="1yJP7V" node="3S1cLRl0csu" resolve="Administrador" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0csA" role="1yJP7J">
        <property role="TrG5h" value="Bloqueada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0csB" role="1yJP7J">
        <property role="TrG5h" value="Desbloqueada" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0csC" role="1yJP7J">
        <property role="TrG5h" value="Abierta" />
      </node>
      <node concept="1yJP7X" id="3S1cLRl0csD" role="1yJP7J">
        <property role="TrG5h" value="Intrusion" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0csE" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csA" resolve="Bloqueada" />
        <ref role="1yJP7N" node="3S1cLRl0csw" resolve="desbloquear" />
        <ref role="1yJP7M" node="3S1cLRl0csB" resolve="Desbloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0csF" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csB" resolve="Desbloqueada" />
        <ref role="1yJP7N" node="3S1cLRl0csx" resolve="abrir" />
        <ref role="1yJP7M" node="3S1cLRl0csC" resolve="Abierta" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0csG" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csC" resolve="Abierta" />
        <ref role="1yJP7N" node="3S1cLRl0csy" resolve="cerrar" />
        <ref role="1yJP7M" node="3S1cLRl0csB" resolve="Desbloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0csH" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csB" resolve="Desbloqueada" />
        <ref role="1yJP7N" node="3S1cLRl0csz" resolve="bloquear" />
        <ref role="1yJP7M" node="3S1cLRl0csA" resolve="Bloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0csI" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csA" resolve="Bloqueada" />
        <ref role="1yJP7N" node="3S1cLRl0cs$" resolve="forzar" />
        <ref role="1yJP7M" node="3S1cLRl0csD" resolve="Intrusion" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0csJ" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csD" resolve="Intrusion" />
        <ref role="1yJP7N" node="3S1cLRl0cs_" resolve="desactivar" />
        <ref role="1yJP7M" node="3S1cLRl0csA" resolve="Bloqueada" />
      </node>
    </node>
    <node concept="1yJP7Z" id="3S1cLRl0csK" role="1yJP76">
      <property role="TrG5h" value="Luz" />
      <node concept="1yJP63" id="3S1cLRl0csL" role="1yJP7G">
        <property role="TrG5h" value="encenderLuz" />
        <ref role="1yJP7V" node="3S1cLRl0css" resolve="Invitado" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0csM" role="1yJP7G">
        <property role="TrG5h" value="apagarLuz" />
        <ref role="1yJP7V" node="3S1cLRl0css" resolve="Invitado" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0csN" role="1yJP7G">
        <property role="TrG5h" value="detectarMovimiento" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0csO" role="1yJP7J">
        <property role="TrG5h" value="Apagada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0csP" role="1yJP7J">
        <property role="TrG5h" value="Encendida" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0csQ" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csO" resolve="Apagada" />
        <ref role="1yJP7N" node="3S1cLRl0csL" resolve="encenderLuz" />
        <ref role="1yJP7M" node="3S1cLRl0csP" resolve="Encendida" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0csR" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csP" resolve="Encendida" />
        <ref role="1yJP7N" node="3S1cLRl0csM" resolve="apagarLuz" />
        <ref role="1yJP7M" node="3S1cLRl0csO" resolve="Apagada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0csS" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csP" resolve="Encendida" />
        <ref role="1yJP7N" node="3S1cLRl0csN" resolve="detectarMovimiento" />
        <ref role="1yJP7M" node="3S1cLRl0csP" resolve="Encendida" />
      </node>
    </node>
    <node concept="1yJP7Z" id="3S1cLRl0csT" role="1yJP76">
      <property role="TrG5h" value="Termostato" />
      <node concept="1yJP63" id="3S1cLRl0csU" role="1yJP7G">
        <property role="TrG5h" value="calentar" />
        <ref role="1yJP7V" node="3S1cLRl0cst" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0csV" role="1yJP7G">
        <property role="TrG5h" value="enfriar" />
        <ref role="1yJP7V" node="3S1cLRl0cst" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0csW" role="1yJP7G">
        <property role="TrG5h" value="detener" />
        <ref role="1yJP7V" node="3S1cLRl0cst" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0csX" role="1yJP7G">
        <property role="TrG5h" value="sobrecalentar" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0csY" role="1yJP7G">
        <property role="TrG5h" value="apagarEmergencia" />
        <ref role="1yJP7V" node="3S1cLRl0csu" resolve="Administrador" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0csZ" role="1yJP7J">
        <property role="TrG5h" value="Reposo" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0ct0" role="1yJP7J">
        <property role="TrG5h" value="Calentando" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0ct1" role="1yJP7J">
        <property role="TrG5h" value="Enfriando" />
      </node>
      <node concept="1yJP7X" id="3S1cLRl0ct2" role="1yJP7J">
        <property role="TrG5h" value="Sobrecalentamiento" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0ct3" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csZ" resolve="Reposo" />
        <ref role="1yJP7N" node="3S1cLRl0csU" resolve="calentar" />
        <ref role="1yJP7M" node="3S1cLRl0ct0" resolve="Calentando" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0ct4" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0ct0" resolve="Calentando" />
        <ref role="1yJP7N" node="3S1cLRl0csW" resolve="detener" />
        <ref role="1yJP7M" node="3S1cLRl0csZ" resolve="Reposo" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0ct5" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0csZ" resolve="Reposo" />
        <ref role="1yJP7N" node="3S1cLRl0csV" resolve="enfriar" />
        <ref role="1yJP7M" node="3S1cLRl0ct1" resolve="Enfriando" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0ct6" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0ct1" resolve="Enfriando" />
        <ref role="1yJP7N" node="3S1cLRl0csW" resolve="detener" />
        <ref role="1yJP7M" node="3S1cLRl0csZ" resolve="Reposo" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0ct7" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0ct0" resolve="Calentando" />
        <ref role="1yJP7N" node="3S1cLRl0csX" resolve="sobrecalentar" />
        <ref role="1yJP7M" node="3S1cLRl0ct2" resolve="Sobrecalentamiento" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0ct8" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0ct2" resolve="Sobrecalentamiento" />
        <ref role="1yJP7N" node="3S1cLRl0csY" resolve="apagarEmergencia" />
        <ref role="1yJP7M" node="3S1cLRl0csZ" resolve="Reposo" />
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRl0ct9" role="1yJP71">
      <property role="TrG5h" value="CicloCompleto" />
      <ref role="1yJP7i" node="3S1cLRl0csv" resolve="Cerradura" />
      <node concept="1yJP7y" id="3S1cLRl0cta" role="1yJP7j">
        <node concept="1yJP7v" id="3S1cLRl0ctb" role="1yJP7o">
          <node concept="1yJP7w" id="3S1cLRl0ctc" role="1yJP7o">
            <node concept="1yJP7v" id="3S1cLRl0ctd" role="1yJP7u">
              <node concept="1yJP7z" id="3S1cLRl0cte" role="1yJP7o">
                <node concept="1yJP7B" id="3S1cLRl0ctf" role="1yJP7u">
                  <ref role="1yJP7r" node="3S1cLRl0csw" resolve="desbloquear" />
                </node>
                <node concept="1yJP7z" id="3S1cLRl0ctg" role="1yJP7p">
                  <node concept="1yJP7y" id="3S1cLRl0cth" role="1yJP7u">
                    <node concept="1yJP7v" id="3S1cLRl0cti" role="1yJP7o">
                      <node concept="1yJP7z" id="3S1cLRl0ctj" role="1yJP7o">
                        <node concept="1yJP7B" id="3S1cLRl0ctk" role="1yJP7u">
                          <ref role="1yJP7r" node="3S1cLRl0csx" resolve="abrir" />
                        </node>
                        <node concept="1yJP7B" id="3S1cLRl0ctl" role="1yJP7p">
                          <ref role="1yJP7r" node="3S1cLRl0csy" resolve="cerrar" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1yJP7B" id="3S1cLRl0ctm" role="1yJP7p">
                    <ref role="1yJP7r" node="3S1cLRl0csz" resolve="bloquear" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1yJP7v" id="3S1cLRl0ctn" role="1yJP7p">
              <node concept="1yJP7z" id="3S1cLRl0cto" role="1yJP7o">
                <node concept="1yJP7B" id="3S1cLRl0ctp" role="1yJP7u">
                  <ref role="1yJP7r" node="3S1cLRl0cs$" resolve="forzar" />
                </node>
                <node concept="1yJP7B" id="3S1cLRl0ctq" role="1yJP7p">
                  <ref role="1yJP7r" node="3S1cLRl0cs_" resolve="desactivar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRl0ctr" role="1yJP71">
      <property role="TrG5h" value="NoBloquearAbierta" />
      <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
      <ref role="1yJP7i" node="3S1cLRl0csv" resolve="Cerradura" />
      <node concept="1yJP7z" id="3S1cLRl0cts" role="1yJP7j">
        <node concept="1yJP7B" id="3S1cLRl0ctt" role="1yJP7u">
          <ref role="1yJP7r" node="3S1cLRl0csx" resolve="abrir" />
        </node>
        <node concept="1yJP7B" id="3S1cLRl0ctu" role="1yJP7p">
          <ref role="1yJP7r" node="3S1cLRl0csz" resolve="bloquear" />
        </node>
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRl0ctv" role="1yJP71">
      <property role="TrG5h" value="LuzCicloSimple" />
      <ref role="1yJP7i" node="3S1cLRl0csK" resolve="Luz" />
      <node concept="1yJP7y" id="3S1cLRl0ctw" role="1yJP7j">
        <node concept="1yJP7v" id="3S1cLRl0ctx" role="1yJP7o">
          <node concept="1yJP7z" id="3S1cLRl0cty" role="1yJP7o">
            <node concept="1yJP7B" id="3S1cLRl0ctz" role="1yJP7u">
              <ref role="1yJP7r" node="3S1cLRl0csL" resolve="encenderLuz" />
            </node>
            <node concept="1yJP7z" id="3S1cLRl0ct$" role="1yJP7p">
              <node concept="1yJP7y" id="3S1cLRl0ct_" role="1yJP7u">
                <node concept="1yJP7B" id="3S1cLRl0ctA" role="1yJP7o">
                  <ref role="1yJP7r" node="3S1cLRl0csN" resolve="detectarMovimiento" />
                </node>
              </node>
              <node concept="1yJP7B" id="3S1cLRl0ctB" role="1yJP7p">
                <ref role="1yJP7r" node="3S1cLRl0csM" resolve="apagarLuz" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRl0ctC" role="1yJP71">
      <property role="TrG5h" value="NoApagarDosVeces" />
      <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
      <ref role="1yJP7i" node="3S1cLRl0csK" resolve="Luz" />
      <node concept="1yJP7z" id="3S1cLRl0ctD" role="1yJP7j">
        <node concept="1yJP7B" id="3S1cLRl0ctE" role="1yJP7u">
          <ref role="1yJP7r" node="3S1cLRl0csM" resolve="apagarLuz" />
        </node>
        <node concept="1yJP7B" id="3S1cLRl0ctF" role="1yJP7p">
          <ref role="1yJP7r" node="3S1cLRl0csM" resolve="apagarLuz" />
        </node>
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRl0ctG" role="1yJP71">
      <property role="TrG5h" value="TermostatoSeguro" />
      <ref role="1yJP7i" node="3S1cLRl0csT" resolve="Termostato" />
      <node concept="1yJP7y" id="3S1cLRl0ctH" role="1yJP7j">
        <node concept="1yJP7v" id="3S1cLRl0ctI" role="1yJP7o">
          <node concept="1yJP7w" id="3S1cLRl0ctJ" role="1yJP7o">
            <node concept="1yJP7v" id="3S1cLRl0ctK" role="1yJP7u">
              <node concept="1yJP7z" id="3S1cLRl0ctL" role="1yJP7o">
                <node concept="1yJP7v" id="3S1cLRl0ctM" role="1yJP7u">
                  <node concept="1yJP7w" id="3S1cLRl0ctN" role="1yJP7o">
                    <node concept="1yJP7B" id="3S1cLRl0ctO" role="1yJP7u">
                      <ref role="1yJP7r" node="3S1cLRl0csU" resolve="calentar" />
                    </node>
                    <node concept="1yJP7B" id="3S1cLRl0ctP" role="1yJP7p">
                      <ref role="1yJP7r" node="3S1cLRl0csV" resolve="enfriar" />
                    </node>
                  </node>
                </node>
                <node concept="1yJP7B" id="3S1cLRl0ctQ" role="1yJP7p">
                  <ref role="1yJP7r" node="3S1cLRl0csW" resolve="detener" />
                </node>
              </node>
            </node>
            <node concept="1yJP7v" id="3S1cLRl0ctR" role="1yJP7p">
              <node concept="1yJP7z" id="3S1cLRl0ctS" role="1yJP7o">
                <node concept="1yJP7B" id="3S1cLRl0ctT" role="1yJP7u">
                  <ref role="1yJP7r" node="3S1cLRl0csU" resolve="calentar" />
                </node>
                <node concept="1yJP7z" id="3S1cLRl0ctU" role="1yJP7p">
                  <node concept="1yJP7B" id="3S1cLRl0ctV" role="1yJP7u">
                    <ref role="1yJP7r" node="3S1cLRl0csX" resolve="sobrecalentar" />
                  </node>
                  <node concept="1yJP7B" id="3S1cLRl0ctW" role="1yJP7p">
                    <ref role="1yJP7r" node="3S1cLRl0csY" resolve="apagarEmergencia" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRl0ctX" role="1yJP71">
      <property role="TrG5h" value="NoEnfriarYSobrecalentar" />
      <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
      <ref role="1yJP7i" node="3S1cLRl0csT" resolve="Termostato" />
      <node concept="1yJP7z" id="3S1cLRl0ctY" role="1yJP7j">
        <node concept="1yJP7B" id="3S1cLRl0ctZ" role="1yJP7u">
          <ref role="1yJP7r" node="3S1cLRl0csV" resolve="enfriar" />
        </node>
        <node concept="1yJP7B" id="3S1cLRl0cu0" role="1yJP7p">
          <ref role="1yJP7r" node="3S1cLRl0csX" resolve="sobrecalentar" />
        </node>
      </node>
    </node>
    <node concept="1yJP7h" id="3S1cLRl0cu1" role="1yJP70">
      <property role="TrG5h" value="EntradaNormal" />
      <ref role="1yJP78" node="3S1cLRl0csv" resolve="Cerradura" />
      <node concept="1yJP7n" id="3S1cLRl0cu2" role="1yJP7e">
        <ref role="1yJP7c" node="3S1cLRl0cst" resolve="Residente" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cu3" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csw" resolve="desbloquear" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cu4" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csx" resolve="abrir" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cu5" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csy" resolve="cerrar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cu6" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csz" resolve="bloquear" />
      </node>
    </node>
    <node concept="1yJP7h" id="3S1cLRl0cu7" role="1yJP70">
      <property role="TrG5h" value="LuzDePasillo" />
      <ref role="1yJP78" node="3S1cLRl0csK" resolve="Luz" />
      <node concept="1yJP7n" id="3S1cLRl0cu8" role="1yJP7e">
        <ref role="1yJP7c" node="3S1cLRl0css" resolve="Invitado" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cu9" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csL" resolve="encenderLuz" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cua" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csN" resolve="detectarMovimiento" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cub" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csM" resolve="apagarLuz" />
      </node>
    </node>
    <node concept="1yJP7h" id="3S1cLRl0cuc" role="1yJP70">
      <property role="TrG5h" value="CicloTermico" />
      <ref role="1yJP78" node="3S1cLRl0csT" resolve="Termostato" />
      <node concept="1yJP7n" id="3S1cLRl0cud" role="1yJP7e">
        <ref role="1yJP7c" node="3S1cLRl0cst" resolve="Residente" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cue" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csU" resolve="calentar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cuf" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csW" resolve="detener" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cug" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csV" resolve="enfriar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cuh" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csW" resolve="detener" />
      </node>
    </node>
    <node concept="1yJP7h" id="3S1cLRl0cui" role="1yJP70">
      <property role="TrG5h" value="Emergencia" />
      <ref role="1yJP78" node="3S1cLRl0csT" resolve="Termostato" />
      <node concept="1yJP7n" id="3S1cLRl0cuj" role="1yJP7e">
        <ref role="1yJP7c" node="3S1cLRl0csu" resolve="Administrador" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cuk" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csU" resolve="calentar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cul" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csX" resolve="sobrecalentar" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cum" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0csY" resolve="apagarEmergencia" />
      </node>
    </node>
  </node>
</model>

