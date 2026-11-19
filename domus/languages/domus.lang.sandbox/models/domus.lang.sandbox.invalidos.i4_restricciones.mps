<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7f3196ce-f7f2-417b-b95b-9341ae591b65(domus.lang.sandbox.invalidos.i4_restricciones)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
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
        <child id="5903380446964765947" name="devices" index="1yJP76" />
        <child id="5903380446964765946" name="roles" index="1yJP77" />
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
  <node concept="1yJP74" id="3S1cLRl0cuX">
    <property role="TrG5h" value="CasaRestricciones" />
    <node concept="1yJP60" id="3S1cLRl0cuY" role="1yJP77">
      <property role="TrG5h" value="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRl0cuZ" role="1yJP77">
      <property role="TrG5h" value="Residente" />
      <ref role="1yJP7Y" node="3S1cLRl0cuY" resolve="Invitado" />
    </node>
    <node concept="1yJP7Z" id="3S1cLRl0cv0" role="1yJP76">
      <property role="TrG5h" value="Panel" />
      <node concept="1yJP63" id="3S1cLRl0cv1" role="1yJP7G">
        <property role="TrG5h" value="pulsar" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0cv2" role="1yJP7G">
        <property role="TrG5h" value="detectar" />
        <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
        <ref role="1yJP7V" node="3S1cLRl0cuZ" resolve="Residente" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cv3" role="1yJP7J">
        <property role="TrG5h" value="Reposo" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cv4" role="1yJP7J">
        <property role="TrG5h" value="Activo" />
        <property role="1yJP7O" value="true" />
      </node>
      <node concept="1yJP7X" id="3S1cLRl0cv5" role="1yJP7J">
        <property role="TrG5h" value="Alarma" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cv6" role="1yJP7J">
        <property role="TrG5h" value="2estado" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0cv7" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cv3" resolve="Reposo" />
        <ref role="1yJP7N" node="3S1cLRl0cv1" resolve="pulsar" />
        <ref role="1yJP7M" node="3S1cLRl0cv4" resolve="Activo" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0cv8" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cv4" resolve="Activo" />
        <ref role="1yJP7N" node="3S1cLRl0cv1" resolve="pulsar" />
        <ref role="1yJP7M" node="3S1cLRl0cv3" resolve="Reposo" />
      </node>
    </node>
  </node>
</model>

