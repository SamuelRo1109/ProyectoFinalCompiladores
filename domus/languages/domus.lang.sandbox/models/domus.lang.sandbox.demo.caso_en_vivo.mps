<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d6e87e07-d9e7-449a-b428-640b36903ff0(domus.lang.sandbox.demo.caso_en_vivo)">
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
  <node concept="1yJP74" id="2gqgbOB412D">
    <property role="TrG5h" value="CasaDemo" />
    <node concept="1yJP60" id="2gqgbOB412E" role="1yJP77">
      <property role="TrG5h" value="Invitado" />
    </node>
    <node concept="1yJP60" id="2gqgbOB412F" role="1yJP77">
      <property role="TrG5h" value="Residente" />
      <ref role="1yJP7Y" node="2gqgbOB412E" resolve="Invitado" />
    </node>
    <node concept="1yJP7Z" id="2gqgbOB412G" role="1yJP76">
      <property role="TrG5h" value="Puerta" />
      <node concept="1yJP63" id="2gqgbOB412H" role="1yJP7G">
        <property role="TrG5h" value="abrir" />
        <ref role="1yJP7V" node="2gqgbOB412F" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="2gqgbOB412I" role="1yJP7G">
        <property role="TrG5h" value="cerrar" />
      </node>
      <node concept="1yJP62" id="2gqgbOB412J" role="1yJP7J">
        <property role="TrG5h" value="Cerrada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="2gqgbOB412K" role="1yJP7J">
        <property role="TrG5h" value="Abierta" />
      </node>
      <node concept="1yJP7W" id="2gqgbOB412L" role="1yJP7I">
        <ref role="1yJP7K" node="2gqgbOB412J" resolve="Cerrada" />
        <ref role="1yJP7N" node="2gqgbOB412H" resolve="abrir" />
        <ref role="1yJP7M" node="2gqgbOB412K" resolve="Abierta" />
      </node>
      <node concept="1yJP7W" id="2gqgbOB412M" role="1yJP7I">
        <ref role="1yJP7K" node="2gqgbOB412K" resolve="Abierta" />
        <ref role="1yJP7N" node="2gqgbOB412I" resolve="cerrar" />
        <ref role="1yJP7M" node="2gqgbOB412J" resolve="Cerrada" />
      </node>
    </node>
    <node concept="1yJP7Z" id="2gqgbOB412N" role="1yJP76">
      <property role="TrG5h" value="Luz" />
      <node concept="1yJP63" id="2gqgbOB412O" role="1yJP7G">
        <property role="TrG5h" value="encender" />
      </node>
      <node concept="1yJP63" id="2gqgbOB412P" role="1yJP7G">
        <property role="TrG5h" value="apagar" />
      </node>
      <node concept="1yJP62" id="2gqgbOB412Q" role="1yJP7J">
        <property role="TrG5h" value="Apagada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="2gqgbOB412R" role="1yJP7J">
        <property role="TrG5h" value="Encendida" />
      </node>
      <node concept="1yJP7W" id="2gqgbOB412S" role="1yJP7I">
        <ref role="1yJP7K" node="2gqgbOB412Q" resolve="Apagada" />
        <ref role="1yJP7N" node="2gqgbOB412O" resolve="encender" />
        <ref role="1yJP7M" node="2gqgbOB412R" resolve="Encendida" />
      </node>
      <node concept="1yJP7W" id="2gqgbOB412T" role="1yJP7I">
        <ref role="1yJP7K" node="2gqgbOB412R" resolve="Encendida" />
        <ref role="1yJP7N" node="2gqgbOB412P" resolve="apagar" />
        <ref role="1yJP7M" node="2gqgbOB412Q" resolve="Apagada" />
      </node>
    </node>
    <node concept="1yJP7k" id="2gqgbOB412U" role="1yJP71">
      <property role="TrG5h" value="CicloPuerta" />
      <ref role="1yJP7i" node="2gqgbOB412G" resolve="Puerta" />
      <node concept="1yJP7y" id="2gqgbOB412V" role="1yJP7j">
        <node concept="1yJP7v" id="2gqgbOB412W" role="1yJP7o">
          <node concept="1yJP7z" id="2gqgbOB412X" role="1yJP7o">
            <node concept="1yJP7B" id="2gqgbOB412Y" role="1yJP7u">
              <ref role="1yJP7r" node="2gqgbOB412H" resolve="abrir" />
            </node>
            <node concept="1yJP7B" id="2gqgbOB412Z" role="1yJP7p">
              <ref role="1yJP7r" node="2gqgbOB412I" resolve="cerrar" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1yJP7k" id="2gqgbOB4130" role="1yJP71">
      <property role="TrG5h" value="NoAbrirDosVeces" />
      <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
      <ref role="1yJP7i" node="2gqgbOB412G" resolve="Puerta" />
      <node concept="1yJP7z" id="2gqgbOB4131" role="1yJP7j">
        <node concept="1yJP7B" id="2gqgbOB4132" role="1yJP7u">
          <ref role="1yJP7r" node="2gqgbOB412H" resolve="abrir" />
        </node>
        <node concept="1yJP7B" id="2gqgbOB4133" role="1yJP7p">
          <ref role="1yJP7r" node="2gqgbOB412H" resolve="abrir" />
        </node>
      </node>
    </node>
    <node concept="1yJP7h" id="2gqgbOB4134" role="1yJP70">
      <property role="TrG5h" value="EntradaResidente" />
      <ref role="1yJP78" node="2gqgbOB412G" resolve="Puerta" />
      <node concept="1yJP7n" id="2gqgbOB4135" role="1yJP7e">
        <ref role="1yJP7c" node="2gqgbOB412F" resolve="Residente" />
      </node>
      <node concept="1yJP7m" id="2gqgbOB4136" role="1yJP79">
        <ref role="1yJP7f" node="2gqgbOB412H" resolve="abrir" />
      </node>
      <node concept="1yJP7m" id="2gqgbOB4137" role="1yJP79">
        <ref role="1yJP7f" node="2gqgbOB412I" resolve="cerrar" />
      </node>
    </node>
  </node>
</model>

