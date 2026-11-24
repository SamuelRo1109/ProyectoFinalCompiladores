<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:08667b45-8d2e-4936-8b7d-a09dd8708d0f(domus.lang.sandbox.invalidos.i1_alcance)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="cac7998d-8f0a-4a9f-9df9-7c2249914d64" name="domus.lang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="cac7998d-8f0a-4a9f-9df9-7c2249914d64" name="domus.lang">
      <concept id="5903380446964765887" name="domus.lang.structure.State" flags="ng" index="1yJP62">
        <property id="5903380446964765897" name="initial" index="1yJP7O" />
        <property id="5903380446964765898" name="accepting" index="1yJP7R" />
      </concept>
      <concept id="5903380446964765886" name="domus.lang.structure.Event" flags="ng" index="1yJP63" />
      <concept id="5903380446964765945" name="domus.lang.structure.HomeSystem" flags="ng" index="1yJP74">
        <child id="5903380446964765947" name="devices" index="1yJP76" />
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
  <node concept="1yJP74" id="3S1cLRl0cFD">
    <property role="TrG5h" value="Alcance" />
    <node concept="1yJP7Z" id="3S1cLRl0cFE" role="1yJP76">
      <property role="TrG5h" value="Cerradura" />
      <node concept="1yJP7W" id="3S1cLRl0cFM" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cFK" resolve="Apagada" />
        <ref role="1yJP7N" node="3S1cLRl0cFJ" resolve="encender" />
        <ref role="1yJP7M" node="3S1cLRl0cFL" resolve="Encendida" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0cFF" role="1yJP7G">
        <property role="TrG5h" value="bloquear" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cFG" role="1yJP7J">
        <property role="TrG5h" value="Cerrada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
    </node>
    <node concept="1yJP7Z" id="3S1cLRl0cFI" role="1yJP76">
      <property role="TrG5h" value="Luz" />
      <node concept="1yJP63" id="3S1cLRl0cFJ" role="1yJP7G">
        <property role="TrG5h" value="encender" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cFK" role="1yJP7J">
        <property role="TrG5h" value="Apagada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cFL" role="1yJP7J">
        <property role="TrG5h" value="Encendida" />
      </node>
    </node>
  </node>
</model>

