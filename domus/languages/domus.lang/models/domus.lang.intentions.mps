<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7db7f86b-a0d0-47ec-bffd-5565d15ec2a6(domus.lang.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="p4tm" ref="r:dbde8baf-0fe0-4595-838d-181b53f5988b(domus.lang.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
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
  <node concept="2S6QgY" id="4iWSnKEuOW2">
    <property role="TrG5h" value="AlternarEstadoInicial" />
    <property role="2ZfUl0" value="false" />
    <ref role="2ZfgGC" to="p4tm:57H1jONk_iZ" resolve="State" />
    <node concept="2S6ZIM" id="4iWSnKEvsDb" role="2ZfVej">
      <node concept="3clFbS" id="4iWSnKEvsDc" role="2VODD2">
        <node concept="3cpWs6" id="4iWSnKEvsDd" role="3cqZAp">
          <node concept="3K4zz7" id="4iWSnKEvsDe" role="3cqZAk">
            <node concept="2OqwBi" id="4iWSnKEvsDf" role="3K4Cdx">
              <node concept="2Sf5sV" id="4iWSnKEvsDg" role="2Oq$k0" />
              <node concept="3TrcHB" id="4iWSnKEvsDh" role="2OqNvi">
                <ref role="3TsBF5" to="p4tm:57H1jONk_j9" resolve="initial" />
              </node>
            </node>
            <node concept="Xl_RD" id="4iWSnKEvsDi" role="3K4E3e">
              <property role="Xl_RC" value="Quitar la marca de estado inicial (→)" />
            </node>
            <node concept="Xl_RD" id="4iWSnKEvsDj" role="3K4GZi">
              <property role="Xl_RC" value="Marcar como estado inicial (→)" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4iWSnKEvsDk" role="2ZfgGD">
      <node concept="3clFbS" id="4iWSnKEvsDl" role="2VODD2">
        <node concept="3clFbF" id="4iWSnKEvsDm" role="3cqZAp">
          <node concept="37vLTI" id="4iWSnKEvsDn" role="3clFbG">
            <node concept="2OqwBi" id="4iWSnKEvsDo" role="37vLTJ">
              <node concept="2Sf5sV" id="4iWSnKEvsDp" role="2Oq$k0" />
              <node concept="3TrcHB" id="4iWSnKEvsDq" role="2OqNvi">
                <ref role="3TsBF5" to="p4tm:57H1jONk_j9" resolve="initial" />
              </node>
            </node>
            <node concept="3fqX7Q" id="4iWSnKEvsDr" role="37vLTx">
              <node concept="2OqwBi" id="4iWSnKEvsDs" role="3fr31v">
                <node concept="2Sf5sV" id="4iWSnKEvsDt" role="2Oq$k0" />
                <node concept="3TrcHB" id="4iWSnKEvsDu" role="2OqNvi">
                  <ref role="3TsBF5" to="p4tm:57H1jONk_j9" resolve="initial" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4iWSnKEuOWn">
    <property role="TrG5h" value="AlternarEstadoDeAceptacion" />
    <property role="2ZfUl0" value="false" />
    <ref role="2ZfgGC" to="p4tm:57H1jONk_iZ" resolve="State" />
    <node concept="2S6ZIM" id="4iWSnKEvsDT" role="2ZfVej">
      <node concept="3clFbS" id="4iWSnKEvsDU" role="2VODD2">
        <node concept="3cpWs6" id="4iWSnKEvsDV" role="3cqZAp">
          <node concept="3K4zz7" id="4iWSnKEvsDW" role="3cqZAk">
            <node concept="2OqwBi" id="4iWSnKEvsDX" role="3K4Cdx">
              <node concept="2Sf5sV" id="4iWSnKEvsDY" role="2Oq$k0" />
              <node concept="3TrcHB" id="4iWSnKEvsDZ" role="2OqNvi">
                <ref role="3TsBF5" to="p4tm:57H1jONk_ja" resolve="accepting" />
              </node>
            </node>
            <node concept="Xl_RD" id="4iWSnKEvsE0" role="3K4E3e">
              <property role="Xl_RC" value="Quitar la marca de estado de aceptación (◎)" />
            </node>
            <node concept="Xl_RD" id="4iWSnKEvsE1" role="3K4GZi">
              <property role="Xl_RC" value="Marcar como estado de aceptación (◎)" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4iWSnKEvsE2" role="2ZfgGD">
      <node concept="3clFbS" id="4iWSnKEvsE3" role="2VODD2">
        <node concept="3clFbF" id="4iWSnKEvsE4" role="3cqZAp">
          <node concept="37vLTI" id="4iWSnKEvsE5" role="3clFbG">
            <node concept="2OqwBi" id="4iWSnKEvsE6" role="37vLTJ">
              <node concept="2Sf5sV" id="4iWSnKEvsE7" role="2Oq$k0" />
              <node concept="3TrcHB" id="4iWSnKEvsE8" role="2OqNvi">
                <ref role="3TsBF5" to="p4tm:57H1jONk_ja" resolve="accepting" />
              </node>
            </node>
            <node concept="3fqX7Q" id="4iWSnKEvsE9" role="37vLTx">
              <node concept="2OqwBi" id="4iWSnKEvsEa" role="3fr31v">
                <node concept="2Sf5sV" id="4iWSnKEvsEb" role="2Oq$k0" />
                <node concept="3TrcHB" id="4iWSnKEvsEc" role="2OqNvi">
                  <ref role="3TsBF5" to="p4tm:57H1jONk_ja" resolve="accepting" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

