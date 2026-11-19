<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:51f3a819-0a02-47c9-8b10-c61eeb08ffc7(domus.lang.sandbox.invalidos.i3_alfabeto)">
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
        <reference id="5903380446964765894" name="requiredRole" index="1yJP7V" />
      </concept>
      <concept id="5903380446964765945" name="domus.lang.structure.HomeSystem" flags="ng" index="1yJP74">
        <child id="5903380446964765948" name="policies" index="1yJP71" />
        <child id="5903380446964765947" name="devices" index="1yJP76" />
        <child id="5903380446964765946" name="roles" index="1yJP77" />
      </concept>
      <concept id="5903380446964765929" name="domus.lang.structure.Policy" flags="ng" index="1yJP7k">
        <reference id="5903380446964765935" name="device" index="1yJP7i" />
        <child id="5903380446964765934" name="expr" index="1yJP7j" />
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
  <node concept="1yJP74" id="3S1cLRl0cu_">
    <property role="TrG5h" value="CasaAlfabetosMezclados" />
    <node concept="1yJP60" id="3S1cLRl0cuA" role="1yJP77">
      <property role="TrG5h" value="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRl0cuB" role="1yJP77">
      <property role="TrG5h" value="Residente" />
      <ref role="1yJP7Y" node="3S1cLRl0cuA" resolve="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRl0cuC" role="1yJP77">
      <property role="TrG5h" value="Administrador" />
      <ref role="1yJP7Y" node="3S1cLRl0cuB" resolve="Residente" />
    </node>
    <node concept="1yJP7Z" id="3S1cLRl0cuD" role="1yJP76">
      <property role="TrG5h" value="Cerradura" />
      <node concept="1yJP63" id="3S1cLRl0cuE" role="1yJP7G">
        <property role="TrG5h" value="desbloquear" />
        <ref role="1yJP7V" node="3S1cLRl0cuB" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0cuF" role="1yJP7G">
        <property role="TrG5h" value="bloquear" />
        <ref role="1yJP7V" node="3S1cLRl0cuB" resolve="Residente" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cuG" role="1yJP7J">
        <property role="TrG5h" value="Bloqueada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cuH" role="1yJP7J">
        <property role="TrG5h" value="Desbloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0cuI" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cuG" resolve="Bloqueada" />
        <ref role="1yJP7N" node="3S1cLRl0cuE" resolve="desbloquear" />
        <ref role="1yJP7M" node="3S1cLRl0cuH" resolve="Desbloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0cuJ" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cuH" resolve="Desbloqueada" />
        <ref role="1yJP7N" node="3S1cLRl0cuF" resolve="bloquear" />
        <ref role="1yJP7M" node="3S1cLRl0cuG" resolve="Bloqueada" />
      </node>
    </node>
    <node concept="1yJP7Z" id="3S1cLRl0cuK" role="1yJP76">
      <property role="TrG5h" value="Termostato" />
      <node concept="1yJP63" id="3S1cLRl0cuL" role="1yJP7G">
        <property role="TrG5h" value="calentar" />
        <ref role="1yJP7V" node="3S1cLRl0cuB" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0cuM" role="1yJP7G">
        <property role="TrG5h" value="detener" />
        <ref role="1yJP7V" node="3S1cLRl0cuB" resolve="Residente" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cuN" role="1yJP7J">
        <property role="TrG5h" value="Reposo" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cuO" role="1yJP7J">
        <property role="TrG5h" value="Calentando" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0cuP" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cuN" resolve="Reposo" />
        <ref role="1yJP7N" node="3S1cLRl0cuL" resolve="calentar" />
        <ref role="1yJP7M" node="3S1cLRl0cuO" resolve="Calentando" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0cuQ" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cuO" resolve="Calentando" />
        <ref role="1yJP7N" node="3S1cLRl0cuM" resolve="detener" />
        <ref role="1yJP7M" node="3S1cLRl0cuN" resolve="Reposo" />
      </node>
    </node>
    <node concept="1yJP7k" id="3S1cLRl0cuR" role="1yJP71">
      <property role="TrG5h" value="MezclaDeDispositivos" />
      <ref role="1yJP7i" node="3S1cLRl0cuD" resolve="Cerradura" />
      <node concept="1yJP7y" id="3S1cLRl0cuS" role="1yJP7j">
        <node concept="1yJP7v" id="3S1cLRl0cuT" role="1yJP7o">
          <node concept="1yJP7z" id="3S1cLRl0cuU" role="1yJP7o">
            <node concept="1yJP7B" id="3S1cLRl0cuV" role="1yJP7u">
              <ref role="1yJP7r" node="3S1cLRl0cuE" resolve="desbloquear" />
            </node>
            <node concept="1yJP7B" id="3S1cLRl0cuW" role="1yJP7p">
              <ref role="1yJP7r" node="3S1cLRl0cuL" resolve="calentar" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

