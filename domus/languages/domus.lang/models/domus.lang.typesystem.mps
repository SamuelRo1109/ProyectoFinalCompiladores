<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:aba7cc31-0cfb-46ef-9e11-1ba67d7fc46e(domus.lang.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="p4tm" ref="r:dbde8baf-0fe0-4595-838d-181b53f5988b(domus.lang.structure)" />
    <import index="qn6s" ref="r:c823ce89-c6b0-4efd-880d-e9237068d5b3(domus.lang.constraints)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096498176" name="jetbrains.mps.lang.typesystem.structure.PropertyMessageTarget" flags="ng" index="2ODE4t">
        <reference id="1227096521710" name="propertyDeclaration" index="2ODJFN" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643443" name="messageTarget" index="1urrC5" />
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="3S1cLRkYoaM">
    <property role="TrG5h" value="check_Device_NombreValido" />
    <node concept="1YaCAy" id="3S1cLRkYoaN" role="1YuTPh">
      <property role="TrG5h" value="device" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_j2" resolve="Device" />
    </node>
    <node concept="3clFbS" id="3S1cLRkYoaO" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkYoaP" role="3cqZAp">
        <node concept="3fqX7Q" id="3S1cLRkYoaQ" role="3clFbw">
          <node concept="2YIFZM" id="3S1cLRkYoaR" role="3fr31v">
            <ref role="1Pybhc" to="qn6s:3S1cLRkX7fs" resolve="IdentifierUtil" />
            <ref role="37wK5l" to="qn6s:3S1cLRkX7fA" resolve="isIdentifier" />
            <node concept="2OqwBi" id="3S1cLRkYoaS" role="37wK5m">
              <node concept="1YBJjd" id="3S1cLRkYoaT" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkYoaN" resolve="device" />
              </node>
              <node concept="3TrcHB" id="3S1cLRkYoaU" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkYoaV" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkYoaW" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkYoaX" role="2MkJ7o">
              <ref role="1Pybhc" to="qn6s:3S1cLRkX7fs" resolve="IdentifierUtil" />
              <ref role="37wK5l" to="qn6s:3S1cLRkYnm0" resolve="invalidNameMessage" />
              <node concept="Xl_RD" id="3S1cLRkYoaY" role="37wK5m">
                <property role="Xl_RC" value="dispositivo" />
              </node>
              <node concept="2OqwBi" id="3S1cLRkYoaZ" role="37wK5m">
                <node concept="1YBJjd" id="3S1cLRkYob0" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkYoaN" resolve="device" />
                </node>
                <node concept="3TrcHB" id="3S1cLRkYob1" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkYob2" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkYoaN" resolve="device" />
            </node>
            <node concept="2ODE4t" id="3S1cLRkYob3" role="1urrC5">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkYob4">
    <property role="TrG5h" value="check_State_NombreValido" />
    <node concept="1YaCAy" id="3S1cLRkYob5" role="1YuTPh">
      <property role="TrG5h" value="state" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_iZ" resolve="State" />
    </node>
    <node concept="3clFbS" id="3S1cLRkYob6" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkYob7" role="3cqZAp">
        <node concept="3fqX7Q" id="3S1cLRkYob8" role="3clFbw">
          <node concept="2YIFZM" id="3S1cLRkYob9" role="3fr31v">
            <ref role="1Pybhc" to="qn6s:3S1cLRkX7fs" resolve="IdentifierUtil" />
            <ref role="37wK5l" to="qn6s:3S1cLRkX7fA" resolve="isIdentifier" />
            <node concept="2OqwBi" id="3S1cLRkYoba" role="37wK5m">
              <node concept="1YBJjd" id="3S1cLRkYobb" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkYob5" resolve="state" />
              </node>
              <node concept="3TrcHB" id="3S1cLRkYobc" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkYobd" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkYobe" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkYobf" role="2MkJ7o">
              <ref role="1Pybhc" to="qn6s:3S1cLRkX7fs" resolve="IdentifierUtil" />
              <ref role="37wK5l" to="qn6s:3S1cLRkYnm0" resolve="invalidNameMessage" />
              <node concept="Xl_RD" id="3S1cLRkYobg" role="37wK5m">
                <property role="Xl_RC" value="estado" />
              </node>
              <node concept="2OqwBi" id="3S1cLRkYobh" role="37wK5m">
                <node concept="1YBJjd" id="3S1cLRkYobi" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkYob5" resolve="state" />
                </node>
                <node concept="3TrcHB" id="3S1cLRkYobj" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkYobk" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkYob5" resolve="state" />
            </node>
            <node concept="2ODE4t" id="3S1cLRkYobl" role="1urrC5">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkYobm">
    <property role="TrG5h" value="check_Event_NombreValido" />
    <node concept="1YaCAy" id="3S1cLRkYobn" role="1YuTPh">
      <property role="TrG5h" value="event" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_iY" resolve="Event" />
    </node>
    <node concept="3clFbS" id="3S1cLRkYobo" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkYobp" role="3cqZAp">
        <node concept="3fqX7Q" id="3S1cLRkYobq" role="3clFbw">
          <node concept="2YIFZM" id="3S1cLRkYobr" role="3fr31v">
            <ref role="1Pybhc" to="qn6s:3S1cLRkX7fs" resolve="IdentifierUtil" />
            <ref role="37wK5l" to="qn6s:3S1cLRkX7fA" resolve="isIdentifier" />
            <node concept="2OqwBi" id="3S1cLRkYobs" role="37wK5m">
              <node concept="1YBJjd" id="3S1cLRkYobt" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkYobn" resolve="event" />
              </node>
              <node concept="3TrcHB" id="3S1cLRkYobu" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkYobv" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkYobw" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkYobx" role="2MkJ7o">
              <ref role="1Pybhc" to="qn6s:3S1cLRkX7fs" resolve="IdentifierUtil" />
              <ref role="37wK5l" to="qn6s:3S1cLRkYnm0" resolve="invalidNameMessage" />
              <node concept="Xl_RD" id="3S1cLRkYoby" role="37wK5m">
                <property role="Xl_RC" value="evento" />
              </node>
              <node concept="2OqwBi" id="3S1cLRkYobz" role="37wK5m">
                <node concept="1YBJjd" id="3S1cLRkYob$" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkYobn" resolve="event" />
                </node>
                <node concept="3TrcHB" id="3S1cLRkYob_" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkYobA" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkYobn" resolve="event" />
            </node>
            <node concept="2ODE4t" id="3S1cLRkYobB" role="1urrC5">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkYobC">
    <property role="TrG5h" value="check_Role_NombreValido" />
    <node concept="1YaCAy" id="3S1cLRkYobD" role="1YuTPh">
      <property role="TrG5h" value="role" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_iX" resolve="Role" />
    </node>
    <node concept="3clFbS" id="3S1cLRkYobE" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkYobF" role="3cqZAp">
        <node concept="3fqX7Q" id="3S1cLRkYobG" role="3clFbw">
          <node concept="2YIFZM" id="3S1cLRkYobH" role="3fr31v">
            <ref role="1Pybhc" to="qn6s:3S1cLRkX7fs" resolve="IdentifierUtil" />
            <ref role="37wK5l" to="qn6s:3S1cLRkX7fA" resolve="isIdentifier" />
            <node concept="2OqwBi" id="3S1cLRkYobI" role="37wK5m">
              <node concept="1YBJjd" id="3S1cLRkYobJ" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkYobD" resolve="role" />
              </node>
              <node concept="3TrcHB" id="3S1cLRkYobK" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkYobL" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkYobM" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkYobN" role="2MkJ7o">
              <ref role="1Pybhc" to="qn6s:3S1cLRkX7fs" resolve="IdentifierUtil" />
              <ref role="37wK5l" to="qn6s:3S1cLRkYnm0" resolve="invalidNameMessage" />
              <node concept="Xl_RD" id="3S1cLRkYobO" role="37wK5m">
                <property role="Xl_RC" value="rol" />
              </node>
              <node concept="2OqwBi" id="3S1cLRkYobP" role="37wK5m">
                <node concept="1YBJjd" id="3S1cLRkYobQ" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkYobD" resolve="role" />
                </node>
                <node concept="3TrcHB" id="3S1cLRkYobR" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkYobS" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkYobD" resolve="role" />
            </node>
            <node concept="2ODE4t" id="3S1cLRkYobT" role="1urrC5">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

