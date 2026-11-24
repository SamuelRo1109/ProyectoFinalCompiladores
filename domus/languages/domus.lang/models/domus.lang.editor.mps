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
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450555" name="gridLayout" index="2czwfM" />
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="6820251943131810950" name="jetbrains.mps.lang.editor.structure.TableComponentStyleClassItem" flags="ln" index="2jF6I7">
        <property id="6820251943131810955" name="tableComponent" index="2jF6Ia" />
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
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
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
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
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
        <node concept="3EZMnI" id="2gqgbOAYRtV" role="3EZMnx">
          <node concept="2iRkQZ" id="2gqgbOAZM5l" role="2iSdaV" />
          <node concept="pVoyu" id="2gqgbOAYRu0" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="2gqgbOAYRu1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3EZMnI" id="2gqgbOAYRu2" role="3EZMnx">
            <node concept="2iRfu4" id="2gqgbOAYRu5" role="2iSdaV" />
            <node concept="1HlG4h" id="2gqgbOAZLYp" role="3EZMnx">
              <node concept="1HfYo3" id="2gqgbOAZLYq" role="1HlULh">
                <node concept="3TQlhw" id="2gqgbOAZLYr" role="1Hhtcw">
                  <node concept="3clFbS" id="2gqgbOAZLYs" role="2VODD2">
                    <node concept="3cpWs6" id="2gqgbOAZM9F" role="3cqZAp">
                      <node concept="2YIFZM" id="2gqgbOAZM9M" role="3cqZAk">
                        <ref role="1Pybhc" node="2gqgbOAZGjT" resolve="TablaDelta" />
                        <ref role="37wK5l" node="2gqgbOAZGlI" resolve="encabezado" />
                        <node concept="pncrf" id="2gqgbOAZM9N" role="37wK5m" />
                        <node concept="Xl_RD" id="2gqgbOAZM9O" role="37wK5m">
                          <property role="Xl_RC" value="Origen" />
                        </node>
                        <node concept="Xl_RD" id="2gqgbOAZM9P" role="37wK5m">
                          <property role="Xl_RC" value="states" />
                        </node>
                        <node concept="3cmrfG" id="2gqgbOAZM9Q" role="37wK5m">
                          <property role="3cmrfH" value="7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Vb9p2" id="2gqgbOAZLYt" role="3F10Kt">
                <property role="Vbekb" value="g1_k_vY/BOLD" />
              </node>
              <node concept="VPXOz" id="2gqgbOAZLYu" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="1HlG4h" id="2gqgbOAZLZ$" role="3EZMnx">
              <node concept="1HfYo3" id="2gqgbOAZLZ_" role="1HlULh">
                <node concept="3TQlhw" id="2gqgbOAZLZA" role="1Hhtcw">
                  <node concept="3clFbS" id="2gqgbOAZLZB" role="2VODD2">
                    <node concept="3cpWs6" id="2gqgbOAZM_V" role="3cqZAp">
                      <node concept="2YIFZM" id="2gqgbOAZMA2" role="3cqZAk">
                        <ref role="1Pybhc" node="2gqgbOAZGjT" resolve="TablaDelta" />
                        <ref role="37wK5l" node="2gqgbOAZGlI" resolve="encabezado" />
                        <node concept="pncrf" id="2gqgbOAZMA3" role="37wK5m" />
                        <node concept="Xl_RD" id="2gqgbOAZMA4" role="37wK5m">
                          <property role="Xl_RC" value="Evento" />
                        </node>
                        <node concept="Xl_RD" id="2gqgbOAZMA5" role="37wK5m">
                          <property role="Xl_RC" value="events" />
                        </node>
                        <node concept="3cmrfG" id="2gqgbOAZMA6" role="37wK5m">
                          <property role="3cmrfH" value="6" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Vb9p2" id="2gqgbOAZLZC" role="3F10Kt">
                <property role="Vbekb" value="g1_k_vY/BOLD" />
              </node>
              <node concept="VPXOz" id="2gqgbOAZLZD" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="1HlG4h" id="2gqgbOAZM0J" role="3EZMnx">
              <node concept="1HfYo3" id="2gqgbOAZM0K" role="1HlULh">
                <node concept="3TQlhw" id="2gqgbOAZM0L" role="1Hhtcw">
                  <node concept="3clFbS" id="2gqgbOAZM0M" role="2VODD2">
                    <node concept="3cpWs6" id="2gqgbOAZN3B" role="3cqZAp">
                      <node concept="2YIFZM" id="2gqgbOAZN3I" role="3cqZAk">
                        <ref role="1Pybhc" node="2gqgbOAZGjT" resolve="TablaDelta" />
                        <ref role="37wK5l" node="2gqgbOAZGlI" resolve="encabezado" />
                        <node concept="pncrf" id="2gqgbOAZN3J" role="37wK5m" />
                        <node concept="Xl_RD" id="2gqgbOAZN3K" role="37wK5m">
                          <property role="Xl_RC" value="Destino" />
                        </node>
                        <node concept="Xl_RD" id="2gqgbOAZN3L" role="37wK5m">
                          <property role="Xl_RC" value="states" />
                        </node>
                        <node concept="3cmrfG" id="2gqgbOAZN3M" role="37wK5m">
                          <property role="3cmrfH" value="7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Vb9p2" id="2gqgbOAZM0N" role="3F10Kt">
                <property role="Vbekb" value="g1_k_vY/BOLD" />
              </node>
              <node concept="VPXOz" id="2gqgbOAZM0O" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
          <node concept="3F2HdR" id="4iWSnKEuOVO" role="3EZMnx">
            <property role="2czwfM" value="true" />
            <ref role="1NtTu8" to="p4tm:57H1jONk_jj" resolve="transitions" />
            <node concept="2iRkQZ" id="2gqgbOAYRuk" role="2czzBx" />
            <node concept="2jF6I7" id="2gqgbOAYRut" role="3F10Kt">
              <property role="2jF6Ia" value="5UApK7d2wMa/VERTICAL_COLLECTION" />
            </node>
            <node concept="3F0ifn" id="2gqgbOAYRuw" role="2czzBI">
              <property role="ilYzB" value="&lt;sin transiciones&gt;" />
              <node concept="VPxyj" id="2gqgbOAYRux" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
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
      <node concept="2iRfu4" id="2gqgbOAYRtA" role="2iSdaV" />
      <node concept="1iCGBv" id="4iWSnKEtEaz" role="3EZMnx">
        <property role="1$x2rV" value="&lt;origen&gt;" />
        <ref role="1NtTu8" to="p4tm:57H1jONk_jd" resolve="source" />
        <node concept="1sVBvm" id="4iWSnKEtEa$" role="1sWHZn">
          <node concept="1HlG4h" id="2gqgbOAZM1U" role="2wV5jI">
            <node concept="1HfYo3" id="2gqgbOAZM1V" role="1HlULh">
              <node concept="3TQlhw" id="2gqgbOAZM1W" role="1Hhtcw">
                <node concept="3clFbS" id="2gqgbOAZM1X" role="2VODD2">
                  <node concept="3cpWs6" id="2gqgbOAZNyJ" role="3cqZAp">
                    <node concept="2YIFZM" id="2gqgbOAZNyP" role="3cqZAk">
                      <ref role="1Pybhc" node="2gqgbOAZGjT" resolve="TablaDelta" />
                      <ref role="37wK5l" node="2gqgbOAZGlj" resolve="celda" />
                      <node concept="pncrf" id="2gqgbOAZNyQ" role="37wK5m" />
                      <node concept="Xl_RD" id="2gqgbOAZNyR" role="37wK5m">
                        <property role="Xl_RC" value="states" />
                      </node>
                      <node concept="3cmrfG" id="2gqgbOAZNyS" role="37wK5m">
                        <property role="3cmrfH" value="7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPXOz" id="2gqgbOAYRtM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="4iWSnKEtEaC" role="3EZMnx">
        <property role="1$x2rV" value="&lt;evento&gt;" />
        <ref role="1NtTu8" to="p4tm:57H1jONk_je" resolve="event" />
        <node concept="1sVBvm" id="4iWSnKEtEaD" role="1sWHZn">
          <node concept="1HlG4h" id="2gqgbOAZM33" role="2wV5jI">
            <node concept="1HfYo3" id="2gqgbOAZM34" role="1HlULh">
              <node concept="3TQlhw" id="2gqgbOAZM35" role="1Hhtcw">
                <node concept="3clFbS" id="2gqgbOAZM36" role="2VODD2">
                  <node concept="3cpWs6" id="2gqgbOAZNYK" role="3cqZAp">
                    <node concept="2YIFZM" id="2gqgbOAZNYQ" role="3cqZAk">
                      <ref role="1Pybhc" node="2gqgbOAZGjT" resolve="TablaDelta" />
                      <ref role="37wK5l" node="2gqgbOAZGlj" resolve="celda" />
                      <node concept="pncrf" id="2gqgbOAZNYR" role="37wK5m" />
                      <node concept="Xl_RD" id="2gqgbOAZNYS" role="37wK5m">
                        <property role="Xl_RC" value="events" />
                      </node>
                      <node concept="3cmrfG" id="2gqgbOAZNYT" role="37wK5m">
                        <property role="3cmrfH" value="6" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPXOz" id="2gqgbOAYRtP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="4iWSnKEtEaH" role="3EZMnx">
        <property role="1$x2rV" value="&lt;destino&gt;" />
        <ref role="1NtTu8" to="p4tm:57H1jONk_jf" resolve="target" />
        <node concept="1sVBvm" id="4iWSnKEtEaI" role="1sWHZn">
          <node concept="1HlG4h" id="2gqgbOAZM4c" role="2wV5jI">
            <node concept="1HfYo3" id="2gqgbOAZM4d" role="1HlULh">
              <node concept="3TQlhw" id="2gqgbOAZM4e" role="1Hhtcw">
                <node concept="3clFbS" id="2gqgbOAZM4f" role="2VODD2">
                  <node concept="3cpWs6" id="2gqgbOAZOsH" role="3cqZAp">
                    <node concept="2YIFZM" id="2gqgbOAZOsN" role="3cqZAk">
                      <ref role="1Pybhc" node="2gqgbOAZGjT" resolve="TablaDelta" />
                      <ref role="37wK5l" node="2gqgbOAZGlj" resolve="celda" />
                      <node concept="pncrf" id="2gqgbOAZOsO" role="37wK5m" />
                      <node concept="Xl_RD" id="2gqgbOAZOsP" role="37wK5m">
                        <property role="Xl_RC" value="states" />
                      </node>
                      <node concept="3cmrfG" id="2gqgbOAZOsQ" role="37wK5m">
                        <property role="3cmrfH" value="7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPXOz" id="2gqgbOAYRtS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2jF6I7" id="2gqgbOAYRtD" role="3F10Kt" />
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
  <node concept="312cEu" id="2gqgbOAZGjT">
    <property role="TrG5h" value="TablaDelta" />
    <node concept="3Tm1VV" id="2gqgbOAZGjU" role="1B3o_S" />
    <node concept="3UR2Jj" id="2gqgbOAZGm1" role="lGtFl">
      <node concept="1PaTwC" id="2gqgbOAZGm2" role="1Vez_I">
        <node concept="3oM_SD" id="2gqgbOAZGm3" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="2gqgbOAZGm6" role="1Vez_I">
        <node concept="3oM_SD" id="2gqgbOAZGm7" role="1PaTwD">
          <property role="3oM_SC" value="Utilidades" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGm8" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGm9" role="1PaTwD">
          <property role="3oM_SC" value="la" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGma" role="1PaTwD">
          <property role="3oM_SC" value="tabla" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGmb" role="1PaTwD">
          <property role="3oM_SC" value="δ:" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGmc" role="1PaTwD">
          <property role="3oM_SC" value="rellena" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGmd" role="1PaTwD">
          <property role="3oM_SC" value="con" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGme" role="1PaTwD">
          <property role="3oM_SC" value="espacios" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGmf" role="1PaTwD">
          <property role="3oM_SC" value="para" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGmg" role="1PaTwD">
          <property role="3oM_SC" value="que" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGmh" role="1PaTwD">
          <property role="3oM_SC" value="las" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGmi" role="1PaTwD">
          <property role="3oM_SC" value="columnas" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGmj" role="1PaTwD">
          <property role="3oM_SC" value="cuadren" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGmk" role="1PaTwD">
          <property role="3oM_SC" value="(fuente" />
        </node>
        <node concept="3oM_SD" id="2gqgbOAZGml" role="1PaTwD">
          <property role="3oM_SC" value="monoespaciada)." />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2gqgbOAZGjV" role="jymVt">
      <property role="TrG5h" value="ancho" />
      <node concept="37vLTG" id="2gqgbOAZGjW" role="3clF46">
        <property role="TrG5h" value="dispositivo" />
        <node concept="3uibUv" id="2gqgbOAZGjX" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2gqgbOAZGjY" role="3clF46">
        <property role="TrG5h" value="rol" />
        <node concept="3uibUv" id="2gqgbOAZGjZ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2gqgbOAZGk0" role="3clF46">
        <property role="TrG5h" value="minimo" />
        <node concept="10Oyi0" id="2gqgbOAZGk1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2gqgbOAZGk2" role="3clF47">
        <node concept="3cpWs8" id="2gqgbOAZGk4" role="3cqZAp">
          <node concept="3cpWsn" id="2gqgbOAZGk3" role="3cpWs9">
            <property role="TrG5h" value="w" />
            <node concept="10Oyi0" id="2gqgbOAZGk5" role="1tU5fm" />
            <node concept="37vLTw" id="2gqgbOAZGk6" role="33vP2m">
              <ref role="3cqZAo" node="2gqgbOAZGk0" resolve="minimo" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2gqgbOAZGk7" role="3cqZAp">
          <node concept="3clFbC" id="2gqgbOAZGk8" role="3clFbw">
            <node concept="37vLTw" id="2gqgbOAZGk9" role="3uHU7B">
              <ref role="3cqZAo" node="2gqgbOAZGjW" resolve="dispositivo" />
            </node>
            <node concept="10Nm6u" id="2gqgbOAZGka" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2gqgbOAZGkc" role="3clFbx">
            <node concept="3cpWs6" id="2gqgbOAZGkd" role="3cqZAp">
              <node concept="37vLTw" id="2gqgbOAZGke" role="3cqZAk">
                <ref role="3cqZAo" node="2gqgbOAZGk3" resolve="w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2gqgbOAZGkf" role="3cqZAp">
          <node concept="2OqwBi" id="2gqgbOAZGx1" role="1DdaDG">
            <node concept="37vLTw" id="2gqgbOAZGmw" role="2Oq$k0">
              <ref role="3cqZAo" node="2gqgbOAZGjW" resolve="dispositivo" />
            </node>
            <node concept="liA8E" id="2gqgbOAZGx2" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
          </node>
          <node concept="3cpWsn" id="2gqgbOAZGkI" role="1Duv9x">
            <property role="TrG5h" value="hijo" />
            <node concept="3uibUv" id="2gqgbOAZGkK" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="2gqgbOAZGkh" role="2LFqv$">
            <node concept="3clFbJ" id="2gqgbOAZGki" role="3cqZAp">
              <node concept="1Wc70l" id="2gqgbOAZGkj" role="3clFbw">
                <node concept="3y3z36" id="2gqgbOAZGkk" role="3uHU7B">
                  <node concept="2OqwBi" id="2gqgbOAZGxc" role="3uHU7B">
                    <node concept="37vLTw" id="2gqgbOAZGm$" role="2Oq$k0">
                      <ref role="3cqZAo" node="2gqgbOAZGkI" resolve="hijo" />
                    </node>
                    <node concept="liA8E" id="2gqgbOAZGxd" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="2gqgbOAZGkm" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="2gqgbOAZGxr" role="3uHU7w">
                  <node concept="37vLTw" id="2gqgbOAZGmC" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gqgbOAZGjY" resolve="rol" />
                  </node>
                  <node concept="liA8E" id="2gqgbOAZGxs" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2gqgbOAZGzK" role="37wK5m">
                      <node concept="2OqwBi" id="2gqgbOAZGzv" role="2Oq$k0">
                        <node concept="37vLTw" id="2gqgbOAZGzc" role="2Oq$k0">
                          <ref role="3cqZAo" node="2gqgbOAZGkI" resolve="hijo" />
                        </node>
                        <node concept="liA8E" id="2gqgbOAZGzw" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2gqgbOAZGzL" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2gqgbOAZGkr" role="3clFbx">
                <node concept="3cpWs8" id="2gqgbOAZGkt" role="3cqZAp">
                  <node concept="3cpWsn" id="2gqgbOAZGks" role="3cpWs9">
                    <property role="TrG5h" value="n" />
                    <node concept="3uibUv" id="2gqgbOAZGku" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2OqwBi" id="2gqgbOAZGxC" role="33vP2m">
                      <node concept="37vLTw" id="2gqgbOAZGmI" role="2Oq$k0">
                        <ref role="3cqZAo" node="2gqgbOAZGkI" resolve="hijo" />
                      </node>
                      <node concept="liA8E" id="2gqgbOAZGxD" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2gqgbOAZGkw" role="3cqZAp">
                  <node concept="1Wc70l" id="2gqgbOAZGkx" role="3clFbw">
                    <node concept="3y3z36" id="2gqgbOAZGky" role="3uHU7B">
                      <node concept="37vLTw" id="2gqgbOAZGkz" role="3uHU7B">
                        <ref role="3cqZAo" node="2gqgbOAZGks" resolve="n" />
                      </node>
                      <node concept="10Nm6u" id="2gqgbOAZGk$" role="3uHU7w" />
                    </node>
                    <node concept="3eOSWO" id="2gqgbOAZGk_" role="3uHU7w">
                      <node concept="2OqwBi" id="2gqgbOAZGxS" role="3uHU7B">
                        <node concept="37vLTw" id="2gqgbOAZGmM" role="2Oq$k0">
                          <ref role="3cqZAo" node="2gqgbOAZGks" resolve="n" />
                        </node>
                        <node concept="liA8E" id="2gqgbOAZGxT" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2gqgbOAZGkB" role="3uHU7w">
                        <ref role="3cqZAo" node="2gqgbOAZGk3" resolve="w" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2gqgbOAZGkD" role="3clFbx">
                    <node concept="3clFbF" id="2gqgbOAZGkE" role="3cqZAp">
                      <node concept="37vLTI" id="2gqgbOAZGkF" role="3clFbG">
                        <node concept="37vLTw" id="2gqgbOAZGkG" role="37vLTJ">
                          <ref role="3cqZAo" node="2gqgbOAZGk3" resolve="w" />
                        </node>
                        <node concept="2OqwBi" id="2gqgbOAZGy8" role="37vLTx">
                          <node concept="37vLTw" id="2gqgbOAZGmQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="2gqgbOAZGks" resolve="n" />
                          </node>
                          <node concept="liA8E" id="2gqgbOAZGy9" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
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
        <node concept="3cpWs6" id="2gqgbOAZGkM" role="3cqZAp">
          <node concept="37vLTw" id="2gqgbOAZGkN" role="3cqZAk">
            <ref role="3cqZAo" node="2gqgbOAZGk3" resolve="w" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2gqgbOAZGkO" role="1B3o_S" />
      <node concept="10Oyi0" id="2gqgbOAZGkP" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2gqgbOAZGkQ" role="jymVt">
      <property role="TrG5h" value="rellenar" />
      <node concept="37vLTG" id="2gqgbOAZGkR" role="3clF46">
        <property role="TrG5h" value="texto" />
        <node concept="3uibUv" id="2gqgbOAZGkS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2gqgbOAZGkT" role="3clF46">
        <property role="TrG5h" value="ancho" />
        <node concept="10Oyi0" id="2gqgbOAZGkU" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2gqgbOAZGkV" role="3clF47">
        <node concept="3cpWs8" id="2gqgbOAZGkX" role="3cqZAp">
          <node concept="3cpWsn" id="2gqgbOAZGkW" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="2gqgbOAZGkY" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2gqgbOAZGmS" role="33vP2m">
              <node concept="1pGfFk" id="2gqgbOAZGws" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                <node concept="3K4zz7" id="2gqgbOAZGwt" role="37wK5m">
                  <node concept="3clFbC" id="2gqgbOAZGwu" role="3K4Cdx">
                    <node concept="37vLTw" id="2gqgbOAZGwv" role="3uHU7B">
                      <ref role="3cqZAo" node="2gqgbOAZGkR" resolve="texto" />
                    </node>
                    <node concept="10Nm6u" id="2gqgbOAZGww" role="3uHU7w" />
                  </node>
                  <node concept="Xl_RD" id="2gqgbOAZGwx" role="3K4E3e">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="37vLTw" id="2gqgbOAZGwy" role="3K4GZi">
                    <ref role="3cqZAo" node="2gqgbOAZGkR" resolve="texto" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="2gqgbOAZGle" role="3cqZAp">
          <node concept="3eOVzh" id="2gqgbOAZGl6" role="2$JKZa">
            <node concept="2OqwBi" id="2gqgbOAZGyj" role="3uHU7B">
              <node concept="37vLTw" id="2gqgbOAZGw_" role="2Oq$k0">
                <ref role="3cqZAo" node="2gqgbOAZGkW" resolve="sb" />
              </node>
              <node concept="liA8E" id="2gqgbOAZGyk" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~AbstractStringBuilder.length()" resolve="length" />
              </node>
            </node>
            <node concept="37vLTw" id="2gqgbOAZGl8" role="3uHU7w">
              <ref role="3cqZAo" node="2gqgbOAZGkT" resolve="ancho" />
            </node>
          </node>
          <node concept="3clFbS" id="2gqgbOAZGla" role="2LFqv$">
            <node concept="3clFbF" id="2gqgbOAZGlb" role="3cqZAp">
              <node concept="2OqwBi" id="2gqgbOAZGyu" role="3clFbG">
                <node concept="37vLTw" id="2gqgbOAZGwD" role="2Oq$k0">
                  <ref role="3cqZAo" node="2gqgbOAZGkW" resolve="sb" />
                </node>
                <node concept="liA8E" id="2gqgbOAZGyv" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(char)" resolve="append" />
                  <node concept="1Xhbcc" id="2gqgbOAZGyw" role="37wK5m">
                    <property role="1XhdNS" value=" " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2gqgbOAZGlf" role="3cqZAp">
          <node concept="2OqwBi" id="2gqgbOAZGyE" role="3cqZAk">
            <node concept="37vLTw" id="2gqgbOAZGwI" role="2Oq$k0">
              <ref role="3cqZAo" node="2gqgbOAZGkW" resolve="sb" />
            </node>
            <node concept="liA8E" id="2gqgbOAZGyF" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2gqgbOAZGlh" role="1B3o_S" />
      <node concept="3uibUv" id="2gqgbOAZGli" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="2gqgbOAZGlj" role="jymVt">
      <property role="TrG5h" value="celda" />
      <node concept="37vLTG" id="2gqgbOAZGlk" role="3clF46">
        <property role="TrG5h" value="objetivo" />
        <node concept="3uibUv" id="2gqgbOAZGll" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2gqgbOAZGlm" role="3clF46">
        <property role="TrG5h" value="rol" />
        <node concept="3uibUv" id="2gqgbOAZGln" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2gqgbOAZGlo" role="3clF46">
        <property role="TrG5h" value="minimo" />
        <node concept="10Oyi0" id="2gqgbOAZGlp" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2gqgbOAZGlq" role="3clF47">
        <node concept="3clFbJ" id="2gqgbOAZGlr" role="3cqZAp">
          <node concept="3clFbC" id="2gqgbOAZGls" role="3clFbw">
            <node concept="37vLTw" id="2gqgbOAZGlt" role="3uHU7B">
              <ref role="3cqZAo" node="2gqgbOAZGlk" resolve="objetivo" />
            </node>
            <node concept="10Nm6u" id="2gqgbOAZGlu" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2gqgbOAZGlw" role="3clFbx">
            <node concept="3cpWs6" id="2gqgbOAZGlx" role="3cqZAp">
              <node concept="1rXfSq" id="2gqgbOAZGly" role="3cqZAk">
                <ref role="37wK5l" node="2gqgbOAZGkQ" resolve="rellenar" />
                <node concept="Xl_RD" id="2gqgbOAZGlz" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="2gqgbOAZGl$" role="37wK5m">
                  <ref role="3cqZAo" node="2gqgbOAZGlo" resolve="minimo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2gqgbOAZGl_" role="3cqZAp">
          <node concept="1rXfSq" id="2gqgbOAZGlA" role="3cqZAk">
            <ref role="37wK5l" node="2gqgbOAZGkQ" resolve="rellenar" />
            <node concept="2OqwBi" id="2gqgbOAZGyP" role="37wK5m">
              <node concept="37vLTw" id="2gqgbOAZGwM" role="2Oq$k0">
                <ref role="3cqZAo" node="2gqgbOAZGlk" resolve="objetivo" />
              </node>
              <node concept="liA8E" id="2gqgbOAZGyQ" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="1rXfSq" id="2gqgbOAZGlC" role="37wK5m">
              <ref role="37wK5l" node="2gqgbOAZGjV" resolve="ancho" />
              <node concept="2OqwBi" id="2gqgbOAZGz0" role="37wK5m">
                <node concept="37vLTw" id="2gqgbOAZGwQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2gqgbOAZGlk" resolve="objetivo" />
                </node>
                <node concept="liA8E" id="2gqgbOAZGz1" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                </node>
              </node>
              <node concept="37vLTw" id="2gqgbOAZGlE" role="37wK5m">
                <ref role="3cqZAo" node="2gqgbOAZGlm" resolve="rol" />
              </node>
              <node concept="37vLTw" id="2gqgbOAZGlF" role="37wK5m">
                <ref role="3cqZAo" node="2gqgbOAZGlo" resolve="minimo" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2gqgbOAZGlG" role="1B3o_S" />
      <node concept="3uibUv" id="2gqgbOAZGlH" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="2gqgbOAZGlI" role="jymVt">
      <property role="TrG5h" value="encabezado" />
      <node concept="37vLTG" id="2gqgbOAZGlJ" role="3clF46">
        <property role="TrG5h" value="dispositivo" />
        <node concept="3uibUv" id="2gqgbOAZGlK" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2gqgbOAZGlL" role="3clF46">
        <property role="TrG5h" value="texto" />
        <node concept="3uibUv" id="2gqgbOAZGlM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2gqgbOAZGlN" role="3clF46">
        <property role="TrG5h" value="rol" />
        <node concept="3uibUv" id="2gqgbOAZGlO" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2gqgbOAZGlP" role="3clF46">
        <property role="TrG5h" value="minimo" />
        <node concept="10Oyi0" id="2gqgbOAZGlQ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2gqgbOAZGlR" role="3clF47">
        <node concept="3cpWs6" id="2gqgbOAZGlS" role="3cqZAp">
          <node concept="1rXfSq" id="2gqgbOAZGlT" role="3cqZAk">
            <ref role="37wK5l" node="2gqgbOAZGkQ" resolve="rellenar" />
            <node concept="37vLTw" id="2gqgbOAZGlU" role="37wK5m">
              <ref role="3cqZAo" node="2gqgbOAZGlL" resolve="texto" />
            </node>
            <node concept="1rXfSq" id="2gqgbOAZGlV" role="37wK5m">
              <ref role="37wK5l" node="2gqgbOAZGjV" resolve="ancho" />
              <node concept="37vLTw" id="2gqgbOAZGlW" role="37wK5m">
                <ref role="3cqZAo" node="2gqgbOAZGlJ" resolve="dispositivo" />
              </node>
              <node concept="37vLTw" id="2gqgbOAZGlX" role="37wK5m">
                <ref role="3cqZAo" node="2gqgbOAZGlN" resolve="rol" />
              </node>
              <node concept="37vLTw" id="2gqgbOAZGlY" role="37wK5m">
                <ref role="3cqZAo" node="2gqgbOAZGlP" resolve="minimo" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2gqgbOAZGlZ" role="1B3o_S" />
      <node concept="3uibUv" id="2gqgbOAZGm0" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
</model>

