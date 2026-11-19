<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:037cada0-276d-4e13-b1a8-9fb755802dd5(domus.lang.sandbox.invalidos.i2_roles)">
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
        <child id="5903380446964765949" name="scenarios" index="1yJP70" />
        <child id="5903380446964765947" name="devices" index="1yJP76" />
        <child id="5903380446964765946" name="roles" index="1yJP77" />
      </concept>
      <concept id="5903380446964765932" name="domus.lang.structure.Scenario" flags="ng" index="1yJP7h">
        <reference id="5903380446964765941" name="device" index="1yJP78" />
        <child id="5903380446964765940" name="steps" index="1yJP79" />
        <child id="5903380446964765939" name="actor" index="1yJP7e" />
      </concept>
      <concept id="5903380446964765931" name="domus.lang.structure.ScenarioStep" flags="ng" index="1yJP7m">
        <reference id="5903380446964765938" name="event" index="1yJP7f" />
      </concept>
      <concept id="5903380446964765930" name="domus.lang.structure.ActorRef" flags="ng" index="1yJP7n">
        <reference id="5903380446964765937" name="role" index="1yJP7c" />
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
  <node concept="1yJP74" id="3S1cLRl0cun">
    <property role="TrG5h" value="CasaRolesIncorrectos" />
    <node concept="1yJP60" id="3S1cLRl0cuo" role="1yJP77">
      <property role="TrG5h" value="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRl0cup" role="1yJP77">
      <property role="TrG5h" value="Residente" />
      <ref role="1yJP7Y" node="3S1cLRl0cuo" resolve="Invitado" />
    </node>
    <node concept="1yJP60" id="3S1cLRl0cuq" role="1yJP77">
      <property role="TrG5h" value="Administrador" />
      <ref role="1yJP7Y" node="3S1cLRl0cup" resolve="Residente" />
    </node>
    <node concept="1yJP7Z" id="3S1cLRl0cur" role="1yJP76">
      <property role="TrG5h" value="Cerradura" />
      <node concept="1yJP63" id="3S1cLRl0cus" role="1yJP7G">
        <property role="TrG5h" value="desbloquear" />
        <ref role="1yJP7V" node="3S1cLRl0cup" resolve="Residente" />
      </node>
      <node concept="1yJP63" id="3S1cLRl0cut" role="1yJP7G">
        <property role="TrG5h" value="bloquear" />
        <ref role="1yJP7V" node="3S1cLRl0cup" resolve="Residente" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cuu" role="1yJP7J">
        <property role="TrG5h" value="Bloqueada" />
        <property role="1yJP7O" value="true" />
        <property role="1yJP7R" value="true" />
      </node>
      <node concept="1yJP62" id="3S1cLRl0cuv" role="1yJP7J">
        <property role="TrG5h" value="Desbloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0cuw" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cuu" resolve="Bloqueada" />
        <ref role="1yJP7N" node="3S1cLRl0cus" resolve="desbloquear" />
        <ref role="1yJP7M" node="3S1cLRl0cuv" resolve="Desbloqueada" />
      </node>
      <node concept="1yJP7W" id="3S1cLRl0cux" role="1yJP7I">
        <ref role="1yJP7K" node="3S1cLRl0cuv" resolve="Desbloqueada" />
        <ref role="1yJP7N" node="3S1cLRl0cut" resolve="bloquear" />
        <ref role="1yJP7M" node="3S1cLRl0cuu" resolve="Bloqueada" />
      </node>
    </node>
    <node concept="1yJP7h" id="3S1cLRl0cuy" role="1yJP70">
      <property role="TrG5h" value="IntentoDeInvitado" />
      <ref role="1yJP78" node="3S1cLRl0cur" resolve="Cerradura" />
      <node concept="1yJP7n" id="3S1cLRl0cuz" role="1yJP7e">
        <ref role="1yJP7c" node="3S1cLRl0cuo" resolve="Invitado" />
      </node>
      <node concept="1yJP7m" id="3S1cLRl0cu$" role="1yJP79">
        <ref role="1yJP7f" node="3S1cLRl0cut" resolve="bloquear" />
      </node>
    </node>
  </node>
</model>

