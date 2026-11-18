<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2c32a4b5-80b0-4f3d-94fb-d555afa685a8(domus.lang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="p4tm" ref="r:dbde8baf-0fe0-4595-838d-181b53f5988b(domus.lang.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="4iWSnKEtE3A">
    <property role="TrG5h" value="Event_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_iY" resolve="Event" />
    <node concept="3EZMnI" id="4iWSnKEvsCE" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEvsCF" role="2iSdaV" />
      <node concept="3F0A7n" id="4iWSnKEvsCG" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEvsCH" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="4iWSnKEvsCI" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_j5" resolve="kind" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEvsCJ" role="3EZMnx">
        <property role="3F0ifm" value="requiere" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
        <node concept="pkWqt" id="4iWSnKEvsCK" role="pqm2j">
          <node concept="3clFbS" id="4iWSnKEvsCL" role="2VODD2">
            <node concept="3clFbF" id="4iWSnKEvsCM" role="3cqZAp">
              <node concept="2OqwBi" id="4iWSnKEvsCN" role="3clFbG">
                <node concept="2OqwBi" id="4iWSnKEvsCO" role="2Oq$k0">
                  <node concept="pncrf" id="4iWSnKEvsCP" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4iWSnKEvsCQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_j6" resolve="requiredRole" />
                  </node>
                </node>
                <node concept="3x8VRR" id="4iWSnKEvsCR" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="4iWSnKEvsCS" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="p4tm:57H1jONk_j6" resolve="requiredRole" />
        <node concept="1sVBvm" id="4iWSnKEvsCT" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEvsCU" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="4iWSnKEvsCV" role="6VMZX">
      <node concept="l2Vlx" id="4iWSnKEvsCW" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEvsCX" role="3EZMnx">
        <property role="3F0ifm" value="requiere:" />
      </node>
      <node concept="1iCGBv" id="4iWSnKEvsCY" role="3EZMnx">
        <property role="1$x2rV" value="&lt;ningún rol&gt;" />
        <ref role="1NtTu8" to="p4tm:57H1jONk_j6" resolve="requiredRole" />
        <node concept="1sVBvm" id="4iWSnKEvsCZ" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEvsD0" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="4iWSnKEtE40">
    <property role="TrG5h" value="DomusEstilos" />
    <node concept="14StLt" id="4iWSnKEtE41" role="V601i">
      <property role="TrG5h" value="PalabraClave" />
      <node concept="Vb9p2" id="4iWSnKEtE42" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="4iWSnKEtE43" role="3F10Kt">
        <property role="Vb096" value="g1_eI4o/darkBlue" />
      </node>
    </node>
    <node concept="14StLt" id="4iWSnKEtE44" role="V601i">
      <property role="TrG5h" value="Marcador" />
      <node concept="Vb9p2" id="4iWSnKEtE45" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="4iWSnKEtE46" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/darkGreen" />
      </node>
    </node>
    <node concept="14StLt" id="4iWSnKEtE47" role="V601i">
      <property role="TrG5h" value="Alarma" />
      <node concept="Vb9p2" id="4iWSnKEtE48" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
      <node concept="VechU" id="4iWSnKEtE49" role="3F10Kt">
        <property role="Vb096" value="fLwANPn/red" />
      </node>
    </node>
    <node concept="14StLt" id="4iWSnKEtE4a" role="V601i">
      <property role="TrG5h" value="Operador" />
      <node concept="VechU" id="4iWSnKEtE4b" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/darkMagenta" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="4iWSnKEtE8e">
    <property role="TrG5h" value="State_Banderas" />
    <ref role="1XX52x" to="p4tm:57H1jONk_iZ" resolve="State" />
    <node concept="3EZMnI" id="4iWSnKEvsAz" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEvsA$" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEvsA_" role="3EZMnx">
        <property role="3F0ifm" value="inicial (→):" />
      </node>
      <node concept="3F0A7n" id="4iWSnKEvsAA" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_j9" resolve="initial" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEvsAB" role="3EZMnx">
        <property role="3F0ifm" value="de aceptación (◎):" />
        <node concept="pVoyu" id="4iWSnKEvsAC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="4iWSnKEvsAD" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_ja" resolve="accepting" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtE8m">
    <property role="TrG5h" value="HomeSystem_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
    <node concept="3EZMnI" id="4iWSnKEtE8n" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtE8o" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEtE8p" role="3EZMnx">
        <property role="3F0ifm" value="sistema" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
      </node>
      <node concept="3F0A7n" id="4iWSnKEtE8q" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="4iWSnKEtE8t" role="3EZMnx">
        <node concept="l2Vlx" id="4iWSnKEtE8w" role="2iSdaV" />
        <node concept="3F0ifn" id="4iWSnKEtE8x" role="3EZMnx">
          <property role="3F0ifm" value="roles:" />
          <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
        </node>
        <node concept="3F2HdR" id="4iWSnKEtE8y" role="3EZMnx">
          <ref role="1NtTu8" to="p4tm:57H1jONk_jU" resolve="roles" />
          <node concept="l2Vlx" id="4iWSnKEtE8$" role="2czzBx" />
          <node concept="pVoyu" id="4iWSnKEtE8_" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="4iWSnKEtE8A" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="4iWSnKEtE8B" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pVoyu" id="4iWSnKEtE8C" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4iWSnKEtE8D" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4iWSnKEtE8E" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jV" resolve="devices" />
        <node concept="l2Vlx" id="4iWSnKEtE8G" role="2czzBx" />
        <node concept="pVoyu" id="4iWSnKEtE8H" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4iWSnKEtE8I" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="4iWSnKEtE8J" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4iWSnKEtE8K" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jW" resolve="policies" />
        <node concept="l2Vlx" id="4iWSnKEtE8M" role="2czzBx" />
        <node concept="pVoyu" id="4iWSnKEtE8N" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4iWSnKEtE8O" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="4iWSnKEtE8P" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4iWSnKEtE8Q" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jX" resolve="scenarios" />
        <node concept="l2Vlx" id="4iWSnKEtE8S" role="2czzBx" />
        <node concept="pVoyu" id="4iWSnKEtE8T" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4iWSnKEtE8U" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="4iWSnKEtE8V" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtE8W">
    <property role="TrG5h" value="Role_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_iX" resolve="Role" />
    <node concept="3EZMnI" id="4iWSnKEvsAG" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEvsAH" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEvsAI" role="3EZMnx">
        <property role="3F0ifm" value="rol" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
      </node>
      <node concept="3F0A7n" id="4iWSnKEvsAJ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEvsAK" role="3EZMnx">
        <property role="3F0ifm" value="hereda" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
        <node concept="pkWqt" id="4iWSnKEvsAL" role="pqm2j">
          <node concept="3clFbS" id="4iWSnKEvsAM" role="2VODD2">
            <node concept="3clFbF" id="4iWSnKEvsAN" role="3cqZAp">
              <node concept="2OqwBi" id="4iWSnKEvsAO" role="3clFbG">
                <node concept="2OqwBi" id="4iWSnKEvsAP" role="2Oq$k0">
                  <node concept="pncrf" id="4iWSnKEvsAQ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4iWSnKEvsAR" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_j3" resolve="parent" />
                  </node>
                </node>
                <node concept="3x8VRR" id="4iWSnKEvsAS" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="4iWSnKEvsAT" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="p4tm:57H1jONk_j3" resolve="parent" />
        <node concept="1sVBvm" id="4iWSnKEvsAU" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEvsAV" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="4iWSnKEvsAW" role="6VMZX">
      <node concept="l2Vlx" id="4iWSnKEvsAX" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEvsAY" role="3EZMnx">
        <property role="3F0ifm" value="hereda:" />
      </node>
      <node concept="1iCGBv" id="4iWSnKEvsAZ" role="3EZMnx">
        <property role="1$x2rV" value="&lt;ningún rol&gt;" />
        <ref role="1NtTu8" to="p4tm:57H1jONk_j3" resolve="parent" />
        <node concept="1sVBvm" id="4iWSnKEvsB0" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEvsB1" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtE9j">
    <property role="TrG5h" value="Device_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_j2" resolve="Device" />
    <node concept="3EZMnI" id="4iWSnKEuOVk" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEuOVl" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEuOVm" role="3EZMnx">
        <property role="3F0ifm" value="dispositivo" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
      </node>
      <node concept="3F0A7n" id="4iWSnKEuOVn" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="4iWSnKEuOVo" role="3EZMnx">
        <node concept="l2Vlx" id="4iWSnKEuOVr" role="2iSdaV" />
        <node concept="3F0ifn" id="4iWSnKEuOVs" role="3EZMnx">
          <property role="3F0ifm" value="eventos:" />
          <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
        </node>
        <node concept="3F2HdR" id="4iWSnKEuOVt" role="3EZMnx">
          <ref role="1NtTu8" to="p4tm:57H1jONk_jh" resolve="events" />
          <node concept="l2Vlx" id="4iWSnKEuOVv" role="2czzBx" />
          <node concept="pVoyu" id="4iWSnKEuOVw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="4iWSnKEuOVx" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="4iWSnKEuOVy" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pVoyu" id="4iWSnKEuOVz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4iWSnKEuOV$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="4iWSnKEuOV_" role="3EZMnx">
        <node concept="l2Vlx" id="4iWSnKEuOVC" role="2iSdaV" />
        <node concept="3F0ifn" id="4iWSnKEuOVD" role="3EZMnx">
          <property role="3F0ifm" value="estados:" />
          <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
        </node>
        <node concept="3F2HdR" id="4iWSnKEuOVE" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="p4tm:57H1jONk_ji" resolve="states" />
          <node concept="l2Vlx" id="4iWSnKEuOVG" role="2czzBx" />
        </node>
        <node concept="pVoyu" id="4iWSnKEuOVH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4iWSnKEuOVI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="4iWSnKEuOVJ" role="3EZMnx">
        <node concept="l2Vlx" id="4iWSnKEuOVM" role="2iSdaV" />
        <node concept="3F0ifn" id="4iWSnKEuOVN" role="3EZMnx">
          <property role="3F0ifm" value="transiciones:" />
          <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
        </node>
        <node concept="3F2HdR" id="4iWSnKEuOVO" role="3EZMnx">
          <ref role="1NtTu8" to="p4tm:57H1jONk_jj" resolve="transitions" />
          <node concept="l2Vlx" id="4iWSnKEuOVQ" role="2czzBx" />
          <node concept="pVoyu" id="4iWSnKEuOVR" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="4iWSnKEuOVS" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="4iWSnKEuOVT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pVoyu" id="4iWSnKEuOVU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4iWSnKEuOVV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtE9T">
    <property role="TrG5h" value="State_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_iZ" resolve="State" />
    <node concept="3EZMnI" id="4iWSnKEvsBc" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEvsBd" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEvsBe" role="3EZMnx">
        <property role="3F0ifm" value="→" />
        <ref role="1k5W1q" node="4iWSnKEtE44" resolve="Marcador" />
        <node concept="pkWqt" id="4iWSnKEvsBf" role="pqm2j">
          <node concept="3clFbS" id="4iWSnKEvsBg" role="2VODD2">
            <node concept="3clFbF" id="4iWSnKEvsBh" role="3cqZAp">
              <node concept="2OqwBi" id="4iWSnKEvsBi" role="3clFbG">
                <node concept="pncrf" id="4iWSnKEvsBj" role="2Oq$k0" />
                <node concept="3TrcHB" id="4iWSnKEvsBk" role="2OqNvi">
                  <ref role="3TsBF5" to="p4tm:57H1jONk_j9" resolve="initial" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4iWSnKEvsBl" role="3EZMnx">
        <property role="3F0ifm" value="◎" />
        <ref role="1k5W1q" node="4iWSnKEtE44" resolve="Marcador" />
        <node concept="pkWqt" id="4iWSnKEvsBm" role="pqm2j">
          <node concept="3clFbS" id="4iWSnKEvsBn" role="2VODD2">
            <node concept="3clFbF" id="4iWSnKEvsBo" role="3cqZAp">
              <node concept="2OqwBi" id="4iWSnKEvsBp" role="3clFbG">
                <node concept="pncrf" id="4iWSnKEvsBq" role="2Oq$k0" />
                <node concept="3TrcHB" id="4iWSnKEvsBr" role="2OqNvi">
                  <ref role="3TsBF5" to="p4tm:57H1jONk_ja" resolve="accepting" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0A7n" id="4iWSnKEvsBs" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
    </node>
    <node concept="PMmxH" id="4iWSnKEvsBt" role="6VMZX">
      <ref role="PMmxG" node="4iWSnKEtE8e" resolve="State_Banderas" />
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEac">
    <property role="TrG5h" value="AlarmState_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_j0" resolve="AlarmState" />
    <node concept="3EZMnI" id="4iWSnKEvsBK" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEvsBL" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEvsBM" role="3EZMnx">
        <property role="3F0ifm" value="→" />
        <ref role="1k5W1q" node="4iWSnKEtE44" resolve="Marcador" />
        <node concept="pkWqt" id="4iWSnKEvsBN" role="pqm2j">
          <node concept="3clFbS" id="4iWSnKEvsBO" role="2VODD2">
            <node concept="3clFbF" id="4iWSnKEvsBP" role="3cqZAp">
              <node concept="2OqwBi" id="4iWSnKEvsBQ" role="3clFbG">
                <node concept="pncrf" id="4iWSnKEvsBR" role="2Oq$k0" />
                <node concept="3TrcHB" id="4iWSnKEvsBS" role="2OqNvi">
                  <ref role="3TsBF5" to="p4tm:57H1jONk_j9" resolve="initial" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4iWSnKEvsBT" role="3EZMnx">
        <property role="3F0ifm" value="◎" />
        <ref role="1k5W1q" node="4iWSnKEtE44" resolve="Marcador" />
        <node concept="pkWqt" id="4iWSnKEvsBU" role="pqm2j">
          <node concept="3clFbS" id="4iWSnKEvsBV" role="2VODD2">
            <node concept="3clFbF" id="4iWSnKEvsBW" role="3cqZAp">
              <node concept="2OqwBi" id="4iWSnKEvsBX" role="3clFbG">
                <node concept="pncrf" id="4iWSnKEvsBY" role="2Oq$k0" />
                <node concept="3TrcHB" id="4iWSnKEvsBZ" role="2OqNvi">
                  <ref role="3TsBF5" to="p4tm:57H1jONk_ja" resolve="accepting" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4iWSnKEvsC0" role="3EZMnx">
        <property role="3F0ifm" value="alarma" />
        <ref role="1k5W1q" node="4iWSnKEtE47" resolve="Alarma" />
      </node>
      <node concept="3F0A7n" id="4iWSnKEvsC1" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
    </node>
    <node concept="PMmxH" id="4iWSnKEvsC2" role="6VMZX">
      <ref role="PMmxG" node="4iWSnKEtE8e" resolve="State_Banderas" />
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEaw">
    <property role="TrG5h" value="Transition_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_j1" resolve="Transition" />
    <node concept="3EZMnI" id="4iWSnKEtEax" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEay" role="2iSdaV" />
      <node concept="1iCGBv" id="4iWSnKEtEaz" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jd" resolve="source" />
        <node concept="1sVBvm" id="4iWSnKEtEa$" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEtEa_" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEaA" role="3EZMnx">
        <property role="3F0ifm" value="--" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
        <node concept="11LMrY" id="4iWSnKEtEaB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="4iWSnKEtEaC" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_je" resolve="event" />
        <node concept="1sVBvm" id="4iWSnKEtEaD" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEtEaE" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEaF" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
        <node concept="11L4FC" id="4iWSnKEtEaG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="4iWSnKEtEaH" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jf" resolve="target" />
        <node concept="1sVBvm" id="4iWSnKEtEaI" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEtEaJ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEaK">
    <property role="TrG5h" value="Policy_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jD" resolve="Policy" />
    <node concept="3EZMnI" id="4iWSnKEtEaL" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEaM" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEtEaN" role="3EZMnx">
        <property role="3F0ifm" value="politica" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
      </node>
      <node concept="3F0A7n" id="4iWSnKEtEaO" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEaP" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="11LMrY" id="4iWSnKEtEaQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="4iWSnKEtEaR" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jH" resolve="mode" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEaS" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="11L4FC" id="4iWSnKEtEaT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEaU" role="3EZMnx">
        <property role="3F0ifm" value="sobre" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
      </node>
      <node concept="1iCGBv" id="4iWSnKEtEaV" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jJ" resolve="device" />
        <node concept="1sVBvm" id="4iWSnKEtEaW" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEtEaX" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEaY" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="4iWSnKEtEaZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="4iWSnKEtEb0" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jI" resolve="expr" />
        <node concept="pVoyu" id="4iWSnKEtEb1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4iWSnKEtEb2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEb3">
    <property role="TrG5h" value="SymbolExpr_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jq" resolve="SymbolExpr" />
    <node concept="1iCGBv" id="4iWSnKEtEb4" role="2wV5jI">
      <ref role="1NtTu8" to="p4tm:57H1jONk_jA" resolve="event" />
      <node concept="1sVBvm" id="4iWSnKEtEb5" role="1sWHZn">
        <node concept="3F0A7n" id="4iWSnKEtEb6" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEb7">
    <property role="TrG5h" value="EpsilonExpr_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jr" resolve="EpsilonExpr" />
    <node concept="3F0ifn" id="4iWSnKEvsCl" role="2wV5jI">
      <property role="3F0ifm" value="ε" />
      <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEb9">
    <property role="TrG5h" value="AnySymbolExpr_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_js" resolve="AnySymbolExpr" />
    <node concept="3F0ifn" id="4iWSnKEtEba" role="2wV5jI">
      <property role="3F0ifm" value="." />
      <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEbb">
    <property role="TrG5h" value="UnionExpr_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jt" resolve="UnionExpr" />
    <node concept="3EZMnI" id="4iWSnKEtEbc" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEbd" role="2iSdaV" />
      <node concept="3F1sOY" id="4iWSnKEtEbe" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jz" resolve="left" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEbf" role="3EZMnx">
        <property role="3F0ifm" value="|" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
      </node>
      <node concept="3F1sOY" id="4iWSnKEtEbg" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_j$" resolve="right" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEbh">
    <property role="TrG5h" value="ConcatExpr_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_ju" resolve="ConcatExpr" />
    <node concept="3EZMnI" id="4iWSnKEvsCo" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEvsCp" role="2iSdaV" />
      <node concept="3F1sOY" id="4iWSnKEvsCq" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jz" resolve="left" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEvsCr" role="3EZMnx">
        <property role="3F0ifm" value="·" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
      </node>
      <node concept="3F1sOY" id="4iWSnKEvsCs" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_j$" resolve="right" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEbn">
    <property role="TrG5h" value="StarExpr_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jv" resolve="StarExpr" />
    <node concept="3EZMnI" id="4iWSnKEtEbo" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEbp" role="2iSdaV" />
      <node concept="3F1sOY" id="4iWSnKEtEbq" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_j_" resolve="operand" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEbr" role="3EZMnx">
        <property role="3F0ifm" value="*" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
        <node concept="11L4FC" id="4iWSnKEtEbs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEbt">
    <property role="TrG5h" value="PlusExpr_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jw" resolve="PlusExpr" />
    <node concept="3EZMnI" id="4iWSnKEtEbu" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEbv" role="2iSdaV" />
      <node concept="3F1sOY" id="4iWSnKEtEbw" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_j_" resolve="operand" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEbx" role="3EZMnx">
        <property role="3F0ifm" value="+" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
        <node concept="11L4FC" id="4iWSnKEtEby" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEbz">
    <property role="TrG5h" value="OptionalExpr_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jx" resolve="OptionalExpr" />
    <node concept="3EZMnI" id="4iWSnKEtEb$" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEb_" role="2iSdaV" />
      <node concept="3F1sOY" id="4iWSnKEtEbA" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_j_" resolve="operand" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEbB" role="3EZMnx">
        <property role="3F0ifm" value="?" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
        <node concept="11L4FC" id="4iWSnKEtEbC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEbD">
    <property role="TrG5h" value="ParenExpr_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jy" resolve="ParenExpr" />
    <node concept="3EZMnI" id="4iWSnKEtEbE" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEbF" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEtEbG" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
        <node concept="11LMrY" id="4iWSnKEtEbH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="4iWSnKEtEbI" role="3F10Kt">
          <property role="1413C4" value="parentesis" />
        </node>
      </node>
      <node concept="3F1sOY" id="4iWSnKEtEbJ" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_j_" resolve="operand" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEbK" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
        <node concept="11L4FC" id="4iWSnKEtEbL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="4iWSnKEtEbM" role="3F10Kt">
          <property role="1413C4" value="parentesis" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEbN">
    <property role="TrG5h" value="Scenario_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jG" resolve="Scenario" />
    <node concept="3EZMnI" id="4iWSnKEtEbO" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEbP" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEtEbQ" role="3EZMnx">
        <property role="3F0ifm" value="escenario" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
      </node>
      <node concept="3F0A7n" id="4iWSnKEtEbR" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEbS" role="3EZMnx">
        <property role="3F0ifm" value="sobre" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
      </node>
      <node concept="1iCGBv" id="4iWSnKEtEbT" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jP" resolve="device" />
        <node concept="1sVBvm" id="4iWSnKEtEbU" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEtEbV" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="4iWSnKEtEbW" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jN" resolve="actor" />
      </node>
      <node concept="3F0ifn" id="4iWSnKEtEbX" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="4iWSnKEtEbY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4iWSnKEtEbZ" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="p4tm:57H1jONk_jO" resolve="steps" />
        <node concept="l2Vlx" id="4iWSnKEtEc1" role="2czzBx" />
        <node concept="pVoyu" id="4iWSnKEtEc2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4iWSnKEtEc3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEc4">
    <property role="TrG5h" value="ActorRef_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jE" resolve="ActorRef" />
    <node concept="3EZMnI" id="4iWSnKEtEc5" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEc6" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEtEc7" role="3EZMnx">
        <property role="3F0ifm" value="actor" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
      </node>
      <node concept="1iCGBv" id="4iWSnKEtEc8" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_jL" resolve="role" />
        <node concept="1sVBvm" id="4iWSnKEtEc9" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEtEca" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEcb">
    <property role="TrG5h" value="ScenarioStep_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_jF" resolve="ScenarioStep" />
    <node concept="1iCGBv" id="4iWSnKEtEcc" role="2wV5jI">
      <ref role="1NtTu8" to="p4tm:57H1jONk_jM" resolve="event" />
      <node concept="1sVBvm" id="4iWSnKEtEcd" role="1sWHZn">
        <node concept="3F0A7n" id="4iWSnKEtEce" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEcf">
    <property role="TrG5h" value="RoleType_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_k1" resolve="RoleType" />
    <node concept="3EZMnI" id="4iWSnKEtEcg" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEtEch" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEtEci" role="3EZMnx">
        <property role="3F0ifm" value="rol" />
        <ref role="1k5W1q" node="4iWSnKEtE41" resolve="PalabraClave" />
      </node>
      <node concept="1iCGBv" id="4iWSnKEtEcj" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_k3" resolve="role" />
        <node concept="1sVBvm" id="4iWSnKEtEck" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEtEcl" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4iWSnKEtEcm">
    <property role="TrG5h" value="AlphabetType_Editor" />
    <ref role="1XX52x" to="p4tm:57H1jONk_k2" resolve="AlphabetType" />
    <node concept="3EZMnI" id="4iWSnKEvsCv" role="2wV5jI">
      <node concept="l2Vlx" id="4iWSnKEvsCw" role="2iSdaV" />
      <node concept="3F0ifn" id="4iWSnKEvsCx" role="3EZMnx">
        <property role="3F0ifm" value="Σ(" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
        <node concept="11LMrY" id="4iWSnKEvsCy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="4iWSnKEvsCz" role="3EZMnx">
        <ref role="1NtTu8" to="p4tm:57H1jONk_k4" resolve="device" />
        <node concept="1sVBvm" id="4iWSnKEvsC$" role="1sWHZn">
          <node concept="3F0A7n" id="4iWSnKEvsC_" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4iWSnKEvsCA" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" node="4iWSnKEtE4a" resolve="Operador" />
        <node concept="11L4FC" id="4iWSnKEvsCB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
</model>

