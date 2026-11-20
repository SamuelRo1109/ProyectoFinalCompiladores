<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a1ed7bb7-3962-4b1a-9271-3ebff9fc8697(domus.tests@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="cac7998d-8f0a-4a9f-9df9-7c2249914d64" name="domus.lang" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
  </languages>
  <imports>
    <import index="op1a" ref="r:edb40588-6aa3-4d1b-9aa3-15b2491e5c9f(domus.reasoner.automata)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="yke2" ref="r:4dce9d5d-5ab6-48ea-bb93-9da0a6a589ad(domus.lang.behavior)" />
    <import index="p4tm" ref="r:dbde8baf-0fe0-4595-838d-181b53f5988b(domus.lang.structure)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215507671101" name="jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" flags="ng" index="1TM$A" />
      <concept id="1215511704609" name="jetbrains.mps.lang.test.structure.NodeWarningCheckOperation" flags="ng" index="29bkU" />
      <concept id="1215526290564" name="jetbrains.mps.lang.test.structure.NodeTypeCheckOperation" flags="ng" index="30Omv">
        <child id="1215526393912" name="type" index="31d$z" />
      </concept>
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1215607067978" name="jetbrains.mps.lang.test.structure.CheckNodeForErrorMessagesOperation" flags="ng" index="7OXhh">
        <property id="852155438140865198" name="allowWarnings" index="G7GLP" />
        <property id="852155438140865197" name="allowErrors" index="G7GLQ" />
        <property id="3743352646565420194" name="includeSelf" index="GvXf4" />
      </concept>
      <concept id="7835233914439520906" name="jetbrains.mps.lang.test.structure.AbstractNodeRuleCheckOperation" flags="ng" index="mZCkL">
        <child id="710597951278798299" name="expectedMessage" index="1DMPz9" />
      </concept>
      <concept id="428590876651279930" name="jetbrains.mps.lang.test.structure.NodeTypeSystemErrorCheckOperation" flags="ng" index="2DdRWr" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1210674524691" name="jetbrains.mps.lang.test.structure.TestNodeReference" flags="nn" index="3xONca">
        <reference id="1210674534086" name="declaration" index="3xOPvv" />
      </concept>
      <concept id="710597951278798236" name="jetbrains.mps.lang.test.structure.ExpectedMessageContainer" flags="ng" index="1DMPye">
        <property id="710597951278798237" name="text" index="1DMPyf" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="cac7998d-8f0a-4a9f-9df9-7c2249914d64" name="domus.lang">
      <concept id="5903380446964765953" name="domus.lang.structure.RoleType" flags="ng" index="1yJP0W">
        <reference id="5903380446964765955" name="role" index="1yJP0Y" />
      </concept>
      <concept id="5903380446964765954" name="domus.lang.structure.AlphabetType" flags="ng" index="1yJP0Z">
        <reference id="5903380446964765956" name="device" index="1yJP0T" />
      </concept>
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
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
  <node concept="1lH9Xt" id="2y5ZLywfMz7">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="ErroresDeReglas" />
    <node concept="1qefOq" id="2y5ZLywfMz8" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMz9" role="1qenE9">
        <property role="TrG5h" value="ErrAlcance" />
        <node concept="1yJP7Z" id="2y5ZLywfMza" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMzb" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMzc" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMzd" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMze" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMzf" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMzd" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMzb" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMze" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMzg" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMze" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMzc" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMzd" resolve="Apagada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMzh" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMzd" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMzc" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMzo" resolve="Cerrada" />
            <node concept="7CXmI" id="2y5ZLywfMzi" role="lGtFl">
              <node concept="1TM$A" id="2y5ZLywfMzj" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMzk" role="1DMPz9">
                  <property role="1DMPyf" value="The reference  Cerrada (target) is out of search scope" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMzl" role="1yJP76">
          <property role="TrG5h" value="Puerta" />
          <node concept="1yJP63" id="2y5ZLywfMzm" role="1yJP7G">
            <property role="TrG5h" value="abrir" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMzn" role="1yJP7G">
            <property role="TrG5h" value="cerrar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMzo" role="1yJP7J">
            <property role="TrG5h" value="Cerrada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMzp" role="1yJP7J">
            <property role="TrG5h" value="Abierta" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMzq" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMzo" resolve="Cerrada" />
            <ref role="1yJP7N" node="2y5ZLywfMzm" resolve="abrir" />
            <ref role="1yJP7M" node="2y5ZLywfMzp" resolve="Abierta" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMzr" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMzp" resolve="Abierta" />
            <ref role="1yJP7N" node="2y5ZLywfMzn" resolve="cerrar" />
            <ref role="1yJP7M" node="2y5ZLywfMzo" resolve="Cerrada" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMzs" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMzt" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMzu" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMzv" role="1qenE9">
        <property role="TrG5h" value="ErrRoles" />
        <node concept="1yJP60" id="2y5ZLywfMzw" role="1yJP77">
          <property role="TrG5h" value="Invitado" />
        </node>
        <node concept="1yJP60" id="2y5ZLywfMzx" role="1yJP77">
          <property role="TrG5h" value="Residente" />
          <ref role="1yJP7Y" node="2y5ZLywfMzw" resolve="Invitado" />
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMzy" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMzz" role="1yJP7G">
            <property role="TrG5h" value="encender" />
            <ref role="1yJP7V" node="2y5ZLywfMzx" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMz$" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMz_" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMzA" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMzB" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMz_" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMzz" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMzA" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMzC" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMzA" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMz$" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMz_" resolve="Apagada" />
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMzD" role="1yJP70">
          <property role="TrG5h" value="IntentoDeInvitado" />
          <ref role="1yJP78" node="2y5ZLywfMzy" resolve="Luz" />
          <node concept="1yJP7n" id="2y5ZLywfMzE" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMzw" resolve="Invitado" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMzF" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMzz" resolve="encender" />
            <node concept="7CXmI" id="2y5ZLywfMzG" role="lGtFl">
              <node concept="2DdRWr" id="2y5ZLywfMzH" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMzI" role="1DMPz9">
                  <property role="1DMPyf" value="Error: Incompatibilidad de roles: el actor 'Invitado' no puede ejecutar el evento 'encender' en el escenario 'IntentoDeInvitado', porque ese evento requiere el rol 'Residente' (o un rol que herede de él)." />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMzJ" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMz$" resolve="apagar" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMzK" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMzL" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMzM" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMzN" role="1qenE9">
        <property role="TrG5h" value="ErrAlfabeto" />
        <node concept="1yJP7Z" id="2y5ZLywfMzO" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMzP" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMzQ" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMzR" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMzS" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMzT" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMzR" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMzP" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMzS" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMzU" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMzS" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMzQ" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMzR" resolve="Apagada" />
          </node>
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMzV" role="1yJP76">
          <property role="TrG5h" value="Puerta" />
          <node concept="1yJP63" id="2y5ZLywfMzW" role="1yJP7G">
            <property role="TrG5h" value="abrir" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMzX" role="1yJP7G">
            <property role="TrG5h" value="cerrar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMzY" role="1yJP7J">
            <property role="TrG5h" value="Cerrada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMzZ" role="1yJP7J">
            <property role="TrG5h" value="Abierta" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$0" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMzY" resolve="Cerrada" />
            <ref role="1yJP7N" node="2y5ZLywfMzW" resolve="abrir" />
            <ref role="1yJP7M" node="2y5ZLywfMzZ" resolve="Abierta" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$1" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMzZ" resolve="Abierta" />
            <ref role="1yJP7N" node="2y5ZLywfMzX" resolve="cerrar" />
            <ref role="1yJP7M" node="2y5ZLywfMzY" resolve="Cerrada" />
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfM$2" role="1yJP71">
          <property role="TrG5h" value="MezclaDeDispositivos" />
          <ref role="1yJP7i" node="2y5ZLywfMzO" resolve="Luz" />
          <node concept="1yJP7z" id="2y5ZLywfM$3" role="1yJP7j">
            <node concept="1yJP7B" id="2y5ZLywfM$4" role="1yJP7u">
              <ref role="1yJP7r" node="2y5ZLywfMzP" resolve="encender" />
            </node>
            <node concept="1yJP7B" id="2y5ZLywfM$5" role="1yJP7p">
              <ref role="1yJP7r" node="2y5ZLywfMzW" resolve="abrir" />
              <node concept="7CXmI" id="2y5ZLywfM$6" role="lGtFl">
                <node concept="2DdRWr" id="2y5ZLywfM$7" role="7EUXB">
                  <node concept="1DMPye" id="2y5ZLywfM$8" role="1DMPz9">
                    <property role="1DMPyf" value="Error: Incompatibilidad de alfabetos: el evento 'abrir' pertenece al dispositivo 'Puerta', pero la política 'MezclaDeDispositivos' está definida sobre el dispositivo 'Luz'. Una política solo puede usar eventos de su propio dispositivo." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfM$9" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfM$a" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfM$b" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfM$c" role="1qenE9">
        <property role="TrG5h" value="ErrIniDos" />
        <node concept="1yJP7Z" id="2y5ZLywfM$d" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfM$e" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM$f" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM$g" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM$h" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
            <property role="1yJP7O" value="true" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$i" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM$g" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfM$e" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfM$h" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$j" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM$h" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfM$f" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfM$g" resolve="Apagada" />
          </node>
          <node concept="7CXmI" id="2y5ZLywfM$k" role="lGtFl">
            <node concept="1TM$A" id="2y5ZLywfM$l" role="7EUXB">
              <node concept="1DMPye" id="2y5ZLywfM$m" role="1DMPz9">
                <property role="1DMPyf" value="Error: El dispositivo 'Luz' debe tener exactamente un estado inicial (marcado con →), pero tiene 2." />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfM$n" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfM$o" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfM$p" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfM$q" role="1qenE9">
        <property role="TrG5h" value="ErrIniCero" />
        <node concept="1yJP7Z" id="2y5ZLywfM$r" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfM$s" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM$t" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM$u" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM$v" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$w" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM$u" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfM$s" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfM$v" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$x" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM$v" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfM$t" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfM$u" resolve="Apagada" />
          </node>
          <node concept="7CXmI" id="2y5ZLywfM$y" role="lGtFl">
            <node concept="1TM$A" id="2y5ZLywfM$z" role="7EUXB">
              <node concept="1DMPye" id="2y5ZLywfM$$" role="1DMPz9">
                <property role="1DMPyf" value="Error: El dispositivo 'Luz' debe tener exactamente un estado inicial (marcado con →), pero tiene 0." />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfM$_" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfM$A" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfM$B" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfM$C" role="1qenE9">
        <property role="TrG5h" value="ErrUnqEstados" />
        <node concept="1yJP7Z" id="2y5ZLywfM$D" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfM$E" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM$F" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM$G" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM$H" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
            <node concept="7CXmI" id="2y5ZLywfM$I" role="lGtFl">
              <node concept="1TM$A" id="2y5ZLywfM$J" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfM$K" role="1DMPz9">
                  <property role="1DMPyf" value="Error: Nombre duplicado: el dispositivo 'Luz' ya tiene otro estado llamado 'Encendida'. Cada nombre debe ser único." />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP62" id="2y5ZLywfM$L" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
            <node concept="7CXmI" id="2y5ZLywfM$M" role="lGtFl">
              <node concept="1TM$A" id="2y5ZLywfM$N" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfM$O" role="1DMPz9">
                  <property role="1DMPyf" value="Error: Nombre duplicado: el dispositivo 'Luz' ya tiene otro estado llamado 'Encendida'. Cada nombre debe ser único." />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$P" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM$G" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfM$E" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfM$H" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$Q" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM$H" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfM$F" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfM$G" resolve="Apagada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$R" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM$G" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfM$F" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfM$L" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM$S" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM$L" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfM$E" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfM$G" resolve="Apagada" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfM$T" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfM$U" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfM$V" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfM$W" role="1qenE9">
        <property role="TrG5h" value="ErrUnqRoles" />
        <node concept="1yJP60" id="2y5ZLywfM$X" role="1yJP77">
          <property role="TrG5h" value="Invitado" />
          <node concept="7CXmI" id="2y5ZLywfM$Y" role="lGtFl">
            <node concept="1TM$A" id="2y5ZLywfM$Z" role="7EUXB" />
          </node>
        </node>
        <node concept="1yJP60" id="2y5ZLywfM_0" role="1yJP77">
          <property role="TrG5h" value="Invitado" />
          <node concept="7CXmI" id="2y5ZLywfM_1" role="lGtFl">
            <node concept="1TM$A" id="2y5ZLywfM_2" role="7EUXB" />
          </node>
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfM_3" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfM_4" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM_5" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM_6" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM_7" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_8" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_6" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfM_4" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfM_7" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_9" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_7" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfM_5" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfM_6" resolve="Apagada" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfM_a" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfM_b" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfM_c" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfM_d" role="1qenE9">
        <property role="TrG5h" value="ErrAlarmaAceptacion" />
        <node concept="1yJP7Z" id="2y5ZLywfM_e" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfM_f" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM_g" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM_h" role="1yJP7G">
            <property role="TrG5h" value="forzar" />
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM_i" role="1yJP7G">
            <property role="TrG5h" value="desactivar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM_j" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM_k" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7X" id="2y5ZLywfM_l" role="1yJP7J">
            <property role="TrG5h" value="Alarma" />
            <property role="1yJP7R" value="true" />
            <node concept="7CXmI" id="2y5ZLywfM_m" role="lGtFl">
              <node concept="1TM$A" id="2y5ZLywfM_n" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfM_o" role="1DMPz9">
                  <property role="1DMPyf" value="Error: El estado de alarma 'Alarma' no puede ser de aceptación (◎): una alarma representa una situación anómala, nunca un final correcto." />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_p" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_j" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfM_f" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfM_k" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_q" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_k" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfM_g" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfM_j" resolve="Apagada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_r" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_j" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfM_h" resolve="forzar" />
            <ref role="1yJP7M" node="2y5ZLywfM_l" resolve="Alarma" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_s" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_l" resolve="Alarma" />
            <ref role="1yJP7N" node="2y5ZLywfM_i" resolve="desactivar" />
            <ref role="1yJP7M" node="2y5ZLywfM_j" resolve="Apagada" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfM_t" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfM_u" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfM_v" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfM_w" role="1qenE9">
        <property role="TrG5h" value="ErrSensorConRol" />
        <node concept="1yJP60" id="2y5ZLywfM_x" role="1yJP77">
          <property role="TrG5h" value="Residente" />
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfM_y" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfM_z" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM_$" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM__" role="1yJP7G">
            <property role="TrG5h" value="detectar" />
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
            <ref role="1yJP7V" node="2y5ZLywfM_x" resolve="Residente" />
            <node concept="7CXmI" id="2y5ZLywfM_A" role="lGtFl">
              <node concept="1TM$A" id="2y5ZLywfM_B" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfM_C" role="1DMPz9">
                  <property role="1DMPyf" value="Error: El evento 'detectar' es de tipo SENSOR y no puede requerir el rol 'Residente': los sensores y temporizadores no los dispara una persona. Quite el rol o cambie el tipo a COMMAND." />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP62" id="2y5ZLywfM_D" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM_E" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_F" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_D" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfM_z" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfM_E" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_G" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_E" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfM_$" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfM_D" resolve="Apagada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_H" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_E" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfM__" resolve="detectar" />
            <ref role="1yJP7M" node="2y5ZLywfM_E" resolve="Encendida" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfM_I" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfM_J" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfM_K" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfM_L" role="1qenE9">
        <property role="TrG5h" value="ErrRolesCiclicos" />
        <node concept="1yJP60" id="2y5ZLywfM_M" role="1yJP77">
          <property role="TrG5h" value="A" />
          <ref role="1yJP7Y" node="2y5ZLywfM_Q" resolve="B" />
          <node concept="7CXmI" id="2y5ZLywfM_N" role="lGtFl">
            <node concept="1TM$A" id="2y5ZLywfM_O" role="7EUXB">
              <node concept="1DMPye" id="2y5ZLywfM_P" role="1DMPz9">
                <property role="1DMPyf" value="Error: Jerarquía de roles cíclica: el rol 'A' termina heredando de sí mismo (hereda de 'B'). Un rol no puede ser su propio ancestro." />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yJP60" id="2y5ZLywfM_Q" role="1yJP77">
          <property role="TrG5h" value="B" />
          <ref role="1yJP7Y" node="2y5ZLywfM_M" resolve="A" />
          <node concept="7CXmI" id="2y5ZLywfM_R" role="lGtFl">
            <node concept="1TM$A" id="2y5ZLywfM_S" role="7EUXB">
              <node concept="1DMPye" id="2y5ZLywfM_T" role="1DMPz9">
                <property role="1DMPyf" value="Error: Jerarquía de roles cíclica: el rol 'B' termina heredando de sí mismo (hereda de 'A'). Un rol no puede ser su propio ancestro." />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfM_U" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfM_V" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfM_W" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM_X" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfM_Y" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfM_Z" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_X" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfM_V" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfM_Y" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMA0" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfM_Y" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfM_W" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfM_X" resolve="Apagada" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMA1" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMA2" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMA3" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMA4" role="1qenE9">
        <property role="TrG5h" value="ErrIdentificador" />
        <node concept="1yJP7Z" id="2y5ZLywfMA5" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMA6" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMA7" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMA8" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMA9" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMAa" role="1yJP7J">
            <property role="TrG5h" value="2estado" />
            <node concept="7CXmI" id="2y5ZLywfMAb" role="lGtFl">
              <node concept="1TM$A" id="2y5ZLywfMAc" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMAd" role="1DMPz9">
                  <property role="1DMPyf" value="Property constraint violation for the property &quot;name&quot;" />
                </node>
              </node>
              <node concept="1TM$A" id="2y5ZLywfMAe" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMAf" role="1DMPz9">
                  <property role="1DMPyf" value="Error: El nombre '2estado' del estado no es válido: debe empezar con una letra (a-z o A-Z, sin tildes ni ñ) o '_' y seguir solo con letras, dígitos o '_', sin espacios." />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAg" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMA8" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMA6" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMA9" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAh" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMA9" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMA7" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMA8" resolve="Apagada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAi" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMA9" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMA6" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMAa" resolve="2estado" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAj" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMAa" resolve="2estado" />
            <ref role="1yJP7N" node="2y5ZLywfMA7" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMA8" resolve="Apagada" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMAk" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMAl" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMAm" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMAn" role="1qenE9">
        <property role="TrG5h" value="ErrDeadlock" />
        <node concept="1yJP7Z" id="2y5ZLywfMAo" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMAp" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMAq" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMAr" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMAs" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
            <node concept="7CXmI" id="2y5ZLywfMAt" role="lGtFl">
              <node concept="1TM$A" id="2y5ZLywfMAu" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMAv" role="1DMPz9">
                  <property role="1DMPyf" value="Error: El estado 'Encendida' es un bloqueo (deadlock): no tiene transiciones de salida y no es de reposo (◎), así que el dispositivo se quedaría atascado ahí" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAw" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMAr" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMAp" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMAs" resolve="Encendida" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMAx" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMAy" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMAz" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMA$" role="1qenE9">
        <property role="TrG5h" value="ErrAlarmaSinRecuperacion" />
        <node concept="1yJP7Z" id="2y5ZLywfMA_" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMAA" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMAB" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMAC" role="1yJP7G">
            <property role="TrG5h" value="forzar" />
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMAD" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMAE" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7X" id="2y5ZLywfMAF" role="1yJP7J">
            <property role="TrG5h" value="Alarma" />
            <node concept="7CXmI" id="2y5ZLywfMAG" role="lGtFl">
              <node concept="1TM$A" id="2y5ZLywfMAH" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMAI" role="1DMPz9">
                  <property role="1DMPyf" value="Error: La alarma 'Alarma' no tiene recuperación: una vez disparada, ya no se puede volver a un estado de reposo (◎) (no tiene transiciones de salida)" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAJ" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMAD" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMAA" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMAE" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAK" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMAE" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMAB" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMAD" resolve="Apagada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAL" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMAD" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMAC" resolve="forzar" />
            <ref role="1yJP7M" node="2y5ZLywfMAF" resolve="Alarma" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMAM" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMAN" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMAO" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMAP" role="1qenE9">
        <property role="TrG5h" value="ErrRequired" />
        <node concept="1yJP7Z" id="2y5ZLywfMAQ" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMAR" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMAS" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMAT" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMAU" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAV" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMAT" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMAR" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMAU" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMAW" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMAU" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMAS" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMAT" resolve="Apagada" />
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMAX" role="1yJP71">
          <property role="TrG5h" value="DosCiclos" />
          <ref role="1yJP7i" node="2y5ZLywfMAQ" resolve="Luz" />
          <node concept="1yJP7y" id="2y5ZLywfMAY" role="1yJP7j">
            <node concept="1yJP7v" id="2y5ZLywfMAZ" role="1yJP7o">
              <node concept="1yJP7z" id="2y5ZLywfMB0" role="1yJP7o">
                <node concept="1yJP7B" id="2y5ZLywfMB1" role="1yJP7u">
                  <ref role="1yJP7r" node="2y5ZLywfMAR" resolve="encender" />
                </node>
                <node concept="1yJP7z" id="2y5ZLywfMB2" role="1yJP7p">
                  <node concept="1yJP7B" id="2y5ZLywfMB3" role="1yJP7u">
                    <ref role="1yJP7r" node="2y5ZLywfMAS" resolve="apagar" />
                  </node>
                  <node concept="1yJP7z" id="2y5ZLywfMB4" role="1yJP7p">
                    <node concept="1yJP7B" id="2y5ZLywfMB5" role="1yJP7u">
                      <ref role="1yJP7r" node="2y5ZLywfMAR" resolve="encender" />
                    </node>
                    <node concept="1yJP7B" id="2y5ZLywfMB6" role="1yJP7p">
                      <ref role="1yJP7r" node="2y5ZLywfMAS" resolve="apagar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="7CXmI" id="2y5ZLywfMB7" role="lGtFl">
            <node concept="1TM$A" id="2y5ZLywfMB8" role="7EUXB">
              <node concept="1DMPye" id="2y5ZLywfMB9" role="1DMPz9">
                <property role="1DMPyf" value="Error: Política violada: la sesión 'encender · apagar' termina en reposo pero no cumple el patrón" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMBa" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMBb" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMBc" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMBd" role="1qenE9">
        <property role="TrG5h" value="ErrForbidden" />
        <node concept="1yJP7Z" id="2y5ZLywfMBe" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMBf" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMBg" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMBh" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMBi" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMBj" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMBh" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMBf" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMBi" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMBk" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMBi" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMBg" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMBh" resolve="Apagada" />
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMBl" role="1yJP71">
          <property role="TrG5h" value="NoApagarTrasEncender" />
          <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
          <ref role="1yJP7i" node="2y5ZLywfMBe" resolve="Luz" />
          <node concept="1yJP7z" id="2y5ZLywfMBm" role="1yJP7j">
            <node concept="1yJP7B" id="2y5ZLywfMBn" role="1yJP7u">
              <ref role="1yJP7r" node="2y5ZLywfMBf" resolve="encender" />
            </node>
            <node concept="1yJP7B" id="2y5ZLywfMBo" role="1yJP7p">
              <ref role="1yJP7r" node="2y5ZLywfMBg" resolve="apagar" />
            </node>
          </node>
          <node concept="7CXmI" id="2y5ZLywfMBp" role="lGtFl">
            <node concept="1TM$A" id="2y5ZLywfMBq" role="7EUXB">
              <node concept="1DMPye" id="2y5ZLywfMBr" role="1DMPz9">
                <property role="1DMPyf" value="Error: Política violada: la traza 'encender · apagar' contiene el patrón prohibido" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMBs" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMBt" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="2y5ZLywfMBu">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="AdvertenciasDelRazonador" />
    <node concept="1qefOq" id="2y5ZLywfMBv" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMBw" role="1qenE9">
        <property role="TrG5h" value="WarnInalcanzable" />
        <node concept="1yJP7Z" id="2y5ZLywfMBx" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMBy" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMBz" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMB$" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMB_" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMBA" role="1yJP7J">
            <property role="TrG5h" value="Fantasma" />
            <node concept="7CXmI" id="2y5ZLywfMBB" role="lGtFl">
              <node concept="29bkU" id="2y5ZLywfMBC" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMBD" role="1DMPz9">
                  <property role="1DMPyf" value="Warning: El estado 'Fantasma' no se puede alcanzar desde el estado inicial 'Apagada'" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMBE" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMB$" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMBy" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMB_" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMBF" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMB_" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMBz" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMB$" resolve="Apagada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMBG" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMBA" resolve="Fantasma" />
            <ref role="1yJP7N" node="2y5ZLywfMBz" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMB$" resolve="Apagada" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMBH" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMBI" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMBJ" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMBK" role="1qenE9">
        <property role="TrG5h" value="WarnTrampa" />
        <node concept="1yJP7Z" id="2y5ZLywfMBL" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMBM" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMBN" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMBO" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMBP" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
            <node concept="7CXmI" id="2y5ZLywfMBQ" role="lGtFl">
              <node concept="29bkU" id="2y5ZLywfMBR" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMBS" role="1DMPz9">
                  <property role="1DMPyf" value="Warning: Desde 'Encendida' ya no se puede volver a un estado de reposo (◎)" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMBT" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMBO" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMBM" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMBP" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMBU" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMBP" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMBM" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMBP" resolve="Encendida" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMBV" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMBW" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMBX" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMBY" role="1qenE9">
        <property role="TrG5h" value="WarnNoDeterminismo" />
        <node concept="1yJP7Z" id="2y5ZLywfMBZ" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMC0" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMC1" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMC2" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMC3" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMC4" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMC2" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMC0" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMC3" resolve="Encendida" />
            <node concept="7CXmI" id="2y5ZLywfMC5" role="lGtFl">
              <node concept="29bkU" id="2y5ZLywfMC6" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMC7" role="1DMPz9">
                  <property role="1DMPyf" value="Warning: Desde 'Apagada' el evento 'encender' lleva a varios estados ('Apagada', 'Encendida')" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMC8" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMC3" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMC1" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMC2" resolve="Apagada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMC9" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMC2" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMC0" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMC2" resolve="Apagada" />
            <node concept="7CXmI" id="2y5ZLywfMCa" role="lGtFl">
              <node concept="29bkU" id="2y5ZLywfMCb" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMCc" role="1DMPz9">
                  <property role="1DMPyf" value="Warning: Desde 'Apagada' el evento 'encender' lleva a varios estados ('Apagada', 'Encendida')" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMCd" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMCe" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMCf" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMCg" role="1qenE9">
        <property role="TrG5h" value="WarnEscenarioRechazado" />
        <node concept="1yJP60" id="2y5ZLywfMCh" role="1yJP77">
          <property role="TrG5h" value="Usuario" />
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMCi" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMCj" role="1yJP7G">
            <property role="TrG5h" value="encender" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMCk" role="1yJP7G">
            <property role="TrG5h" value="apagar" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMCl" role="1yJP7J">
            <property role="TrG5h" value="Apagada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMCm" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMCn" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMCl" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMCj" resolve="encender" />
            <ref role="1yJP7M" node="2y5ZLywfMCm" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMCo" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMCm" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMCk" resolve="apagar" />
            <ref role="1yJP7M" node="2y5ZLywfMCl" resolve="Apagada" />
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMCp" role="1yJP70">
          <property role="TrG5h" value="DobleEncendido" />
          <ref role="1yJP78" node="2y5ZLywfMCi" resolve="Luz" />
          <node concept="1yJP7n" id="2y5ZLywfMCq" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMCh" resolve="Usuario" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMCr" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMCj" resolve="encender" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMCs" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMCj" resolve="encender" />
            <node concept="7CXmI" id="2y5ZLywfMCt" role="lGtFl">
              <node concept="29bkU" id="2y5ZLywfMCu" role="7EUXB">
                <node concept="1DMPye" id="2y5ZLywfMCv" role="1DMPz9">
                  <property role="1DMPyf" value="Warning: Rechazado en el paso 2: desde 'Encendida' no hay transición con 'encender'" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMCw" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMCk" resolve="apagar" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMCx" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMCy" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="2y5ZLywfMCz">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="ModelosSanos" />
    <node concept="1qefOq" id="2y5ZLywfMC$" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMC_" role="1qenE9">
        <property role="TrG5h" value="CasaSegura" />
        <node concept="1yJP60" id="2y5ZLywfMCA" role="1yJP77">
          <property role="TrG5h" value="Invitado" />
        </node>
        <node concept="1yJP60" id="2y5ZLywfMCB" role="1yJP77">
          <property role="TrG5h" value="Residente" />
          <ref role="1yJP7Y" node="2y5ZLywfMCA" resolve="Invitado" />
        </node>
        <node concept="1yJP60" id="2y5ZLywfMCC" role="1yJP77">
          <property role="TrG5h" value="Administrador" />
          <ref role="1yJP7Y" node="2y5ZLywfMCB" resolve="Residente" />
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMCD" role="1yJP76">
          <property role="TrG5h" value="Cerradura" />
          <node concept="1yJP63" id="2y5ZLywfMCE" role="1yJP7G">
            <property role="TrG5h" value="desbloquear" />
            <ref role="1yJP7V" node="2y5ZLywfMCB" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMCF" role="1yJP7G">
            <property role="TrG5h" value="abrir" />
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMCG" role="1yJP7G">
            <property role="TrG5h" value="cerrar" />
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMCH" role="1yJP7G">
            <property role="TrG5h" value="bloquear" />
            <ref role="1yJP7V" node="2y5ZLywfMCB" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMCI" role="1yJP7G">
            <property role="TrG5h" value="forzar" />
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMCJ" role="1yJP7G">
            <property role="TrG5h" value="desactivar" />
            <ref role="1yJP7V" node="2y5ZLywfMCC" resolve="Administrador" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMCK" role="1yJP7J">
            <property role="TrG5h" value="Bloqueada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMCL" role="1yJP7J">
            <property role="TrG5h" value="Desbloqueada" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMCM" role="1yJP7J">
            <property role="TrG5h" value="Abierta" />
          </node>
          <node concept="1yJP7X" id="2y5ZLywfMCN" role="1yJP7J">
            <property role="TrG5h" value="Intrusion" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMCO" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMCK" resolve="Bloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMCE" resolve="desbloquear" />
            <ref role="1yJP7M" node="2y5ZLywfMCL" resolve="Desbloqueada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMCP" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMCL" resolve="Desbloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMCF" resolve="abrir" />
            <ref role="1yJP7M" node="2y5ZLywfMCM" resolve="Abierta" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMCQ" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMCM" resolve="Abierta" />
            <ref role="1yJP7N" node="2y5ZLywfMCG" resolve="cerrar" />
            <ref role="1yJP7M" node="2y5ZLywfMCL" resolve="Desbloqueada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMCR" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMCL" resolve="Desbloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMCH" resolve="bloquear" />
            <ref role="1yJP7M" node="2y5ZLywfMCK" resolve="Bloqueada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMCS" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMCK" resolve="Bloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMCI" resolve="forzar" />
            <ref role="1yJP7M" node="2y5ZLywfMCN" resolve="Intrusion" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMCT" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMCN" resolve="Intrusion" />
            <ref role="1yJP7N" node="2y5ZLywfMCJ" resolve="desactivar" />
            <ref role="1yJP7M" node="2y5ZLywfMCK" resolve="Bloqueada" />
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMCU" role="1yJP71">
          <property role="TrG5h" value="CicloCompleto" />
          <ref role="1yJP7i" node="2y5ZLywfMCD" resolve="Cerradura" />
          <node concept="1yJP7y" id="2y5ZLywfMCV" role="1yJP7j">
            <node concept="1yJP7v" id="2y5ZLywfMCW" role="1yJP7o">
              <node concept="1yJP7w" id="2y5ZLywfMCX" role="1yJP7o">
                <node concept="1yJP7v" id="2y5ZLywfMCY" role="1yJP7u">
                  <node concept="1yJP7z" id="2y5ZLywfMCZ" role="1yJP7o">
                    <node concept="1yJP7B" id="2y5ZLywfMD0" role="1yJP7u">
                      <ref role="1yJP7r" node="2y5ZLywfMCE" resolve="desbloquear" />
                    </node>
                    <node concept="1yJP7z" id="2y5ZLywfMD1" role="1yJP7p">
                      <node concept="1yJP7y" id="2y5ZLywfMD2" role="1yJP7u">
                        <node concept="1yJP7v" id="2y5ZLywfMD3" role="1yJP7o">
                          <node concept="1yJP7z" id="2y5ZLywfMD4" role="1yJP7o">
                            <node concept="1yJP7B" id="2y5ZLywfMD5" role="1yJP7u">
                              <ref role="1yJP7r" node="2y5ZLywfMCF" resolve="abrir" />
                            </node>
                            <node concept="1yJP7B" id="2y5ZLywfMD6" role="1yJP7p">
                              <ref role="1yJP7r" node="2y5ZLywfMCG" resolve="cerrar" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1yJP7B" id="2y5ZLywfMD7" role="1yJP7p">
                        <ref role="1yJP7r" node="2y5ZLywfMCH" resolve="bloquear" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1yJP7v" id="2y5ZLywfMD8" role="1yJP7p">
                  <node concept="1yJP7z" id="2y5ZLywfMD9" role="1yJP7o">
                    <node concept="1yJP7B" id="2y5ZLywfMDa" role="1yJP7u">
                      <ref role="1yJP7r" node="2y5ZLywfMCI" resolve="forzar" />
                    </node>
                    <node concept="1yJP7B" id="2y5ZLywfMDb" role="1yJP7p">
                      <ref role="1yJP7r" node="2y5ZLywfMCJ" resolve="desactivar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMDc" role="1yJP71">
          <property role="TrG5h" value="NoBloquearAbierta" />
          <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
          <ref role="1yJP7i" node="2y5ZLywfMCD" resolve="Cerradura" />
          <node concept="1yJP7z" id="2y5ZLywfMDd" role="1yJP7j">
            <node concept="1yJP7B" id="2y5ZLywfMDe" role="1yJP7u">
              <ref role="1yJP7r" node="2y5ZLywfMCF" resolve="abrir" />
            </node>
            <node concept="1yJP7B" id="2y5ZLywfMDf" role="1yJP7p">
              <ref role="1yJP7r" node="2y5ZLywfMCH" resolve="bloquear" />
            </node>
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMDg" role="1yJP70">
          <property role="TrG5h" value="EntradaNormal" />
          <ref role="1yJP78" node="2y5ZLywfMCD" resolve="Cerradura" />
          <node concept="1yJP7n" id="2y5ZLywfMDh" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMCB" resolve="Residente" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMDi" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMCE" resolve="desbloquear" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMDj" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMCF" resolve="abrir" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMDk" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMCG" resolve="cerrar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMDl" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMCH" resolve="bloquear" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMDm" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMDn" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMDo" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMDp" role="1qenE9">
        <property role="TrG5h" value="SistemaAlarma" />
        <node concept="1yJP60" id="2y5ZLywfMDq" role="1yJP77">
          <property role="TrG5h" value="Invitado" />
        </node>
        <node concept="1yJP60" id="2y5ZLywfMDr" role="1yJP77">
          <property role="TrG5h" value="Residente" />
          <ref role="1yJP7Y" node="2y5ZLywfMDq" resolve="Invitado" />
        </node>
        <node concept="1yJP60" id="2y5ZLywfMDs" role="1yJP77">
          <property role="TrG5h" value="Administrador" />
          <ref role="1yJP7Y" node="2y5ZLywfMDr" resolve="Residente" />
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMDt" role="1yJP76">
          <property role="TrG5h" value="Alarma" />
          <node concept="1yJP63" id="2y5ZLywfMDu" role="1yJP7G">
            <property role="TrG5h" value="armar" />
            <ref role="1yJP7V" node="2y5ZLywfMDr" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMDv" role="1yJP7G">
            <property role="TrG5h" value="desarmar" />
            <ref role="1yJP7V" node="2y5ZLywfMDr" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMDw" role="1yJP7G">
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
            <property role="TrG5h" value="disparar" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMDx" role="1yJP7G">
            <property role="1yJP7S" value="5yIg7XjIeB5/TIMER" />
            <property role="TrG5h" value="tiempoEntrada" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMDy" role="1yJP7G">
            <property role="1yJP7S" value="5yIg7XjIeB5/TIMER" />
            <property role="TrG5h" value="autoSilencio" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMDz" role="1yJP7G">
            <property role="TrG5h" value="silenciar" />
            <ref role="1yJP7V" node="2y5ZLywfMDs" resolve="Administrador" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMD$" role="1yJP7J">
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
            <property role="TrG5h" value="Desarmada" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMD_" role="1yJP7J">
            <property role="TrG5h" value="Armada" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMDA" role="1yJP7J">
            <property role="TrG5h" value="Pendiente" />
          </node>
          <node concept="1yJP7X" id="2y5ZLywfMDB" role="1yJP7J">
            <property role="TrG5h" value="Sonando" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMDC" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMD$" resolve="Desarmada" />
            <ref role="1yJP7N" node="2y5ZLywfMDu" resolve="armar" />
            <ref role="1yJP7M" node="2y5ZLywfMD_" resolve="Armada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMDD" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMD_" resolve="Armada" />
            <ref role="1yJP7N" node="2y5ZLywfMDv" resolve="desarmar" />
            <ref role="1yJP7M" node="2y5ZLywfMD$" resolve="Desarmada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMDE" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMD_" resolve="Armada" />
            <ref role="1yJP7N" node="2y5ZLywfMDw" resolve="disparar" />
            <ref role="1yJP7M" node="2y5ZLywfMDA" resolve="Pendiente" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMDF" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMDA" resolve="Pendiente" />
            <ref role="1yJP7N" node="2y5ZLywfMDv" resolve="desarmar" />
            <ref role="1yJP7M" node="2y5ZLywfMD$" resolve="Desarmada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMDG" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMDA" resolve="Pendiente" />
            <ref role="1yJP7N" node="2y5ZLywfMDx" resolve="tiempoEntrada" />
            <ref role="1yJP7M" node="2y5ZLywfMDB" resolve="Sonando" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMDH" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMDB" resolve="Sonando" />
            <ref role="1yJP7N" node="2y5ZLywfMDz" resolve="silenciar" />
            <ref role="1yJP7M" node="2y5ZLywfMD$" resolve="Desarmada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMDI" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMDB" resolve="Sonando" />
            <ref role="1yJP7N" node="2y5ZLywfMDy" resolve="autoSilencio" />
            <ref role="1yJP7M" node="2y5ZLywfMD_" resolve="Armada" />
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMDJ" role="1yJP71">
          <property role="TrG5h" value="SesionCompleta" />
          <ref role="1yJP7i" node="2y5ZLywfMDt" resolve="Alarma" />
          <node concept="1yJP7y" id="2y5ZLywfMDK" role="1yJP7j">
            <node concept="1yJP7v" id="2y5ZLywfMDL" role="1yJP7o">
              <node concept="1yJP7z" id="2y5ZLywfMDM" role="1yJP7o">
                <node concept="1yJP7z" id="2y5ZLywfMDN" role="1yJP7u">
                  <node concept="1yJP7B" id="2y5ZLywfMDO" role="1yJP7u">
                    <ref role="1yJP7r" node="2y5ZLywfMDu" resolve="armar" />
                  </node>
                  <node concept="1yJP7y" id="2y5ZLywfMDP" role="1yJP7p">
                    <node concept="1yJP7v" id="2y5ZLywfMDQ" role="1yJP7o">
                      <node concept="1yJP7z" id="2y5ZLywfMDR" role="1yJP7o">
                        <node concept="1yJP7B" id="2y5ZLywfMDS" role="1yJP7u">
                          <ref role="1yJP7r" node="2y5ZLywfMDw" resolve="disparar" />
                        </node>
                        <node concept="1yJP7z" id="2y5ZLywfMDT" role="1yJP7p">
                          <node concept="1yJP7B" id="2y5ZLywfMDU" role="1yJP7u">
                            <ref role="1yJP7r" node="2y5ZLywfMDx" resolve="tiempoEntrada" />
                          </node>
                          <node concept="1yJP7B" id="2y5ZLywfMDV" role="1yJP7p">
                            <ref role="1yJP7r" node="2y5ZLywfMDy" resolve="autoSilencio" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1yJP7v" id="2y5ZLywfMDW" role="1yJP7p">
                  <node concept="1yJP7w" id="2y5ZLywfMDX" role="1yJP7o">
                    <node concept="1yJP7B" id="2y5ZLywfMDY" role="1yJP7u">
                      <ref role="1yJP7r" node="2y5ZLywfMDv" resolve="desarmar" />
                    </node>
                    <node concept="1yJP7v" id="2y5ZLywfMDZ" role="1yJP7p">
                      <node concept="1yJP7z" id="2y5ZLywfME0" role="1yJP7o">
                        <node concept="1yJP7B" id="2y5ZLywfME1" role="1yJP7u">
                          <ref role="1yJP7r" node="2y5ZLywfMDw" resolve="disparar" />
                        </node>
                        <node concept="1yJP7v" id="2y5ZLywfME2" role="1yJP7p">
                          <node concept="1yJP7w" id="2y5ZLywfME3" role="1yJP7o">
                            <node concept="1yJP7B" id="2y5ZLywfME4" role="1yJP7u">
                              <ref role="1yJP7r" node="2y5ZLywfMDv" resolve="desarmar" />
                            </node>
                            <node concept="1yJP7v" id="2y5ZLywfME5" role="1yJP7p">
                              <node concept="1yJP7z" id="2y5ZLywfME6" role="1yJP7o">
                                <node concept="1yJP7B" id="2y5ZLywfME7" role="1yJP7u">
                                  <ref role="1yJP7r" node="2y5ZLywfMDx" resolve="tiempoEntrada" />
                                </node>
                                <node concept="1yJP7v" id="2y5ZLywfME8" role="1yJP7p">
                                  <node concept="1yJP7w" id="2y5ZLywfME9" role="1yJP7o">
                                    <node concept="1yJP7B" id="2y5ZLywfMEa" role="1yJP7u">
                                      <ref role="1yJP7r" node="2y5ZLywfMDz" resolve="silenciar" />
                                    </node>
                                    <node concept="1yJP7v" id="2y5ZLywfMEb" role="1yJP7p">
                                      <node concept="1yJP7z" id="2y5ZLywfMEc" role="1yJP7o">
                                        <node concept="1yJP7B" id="2y5ZLywfMEd" role="1yJP7u">
                                          <ref role="1yJP7r" node="2y5ZLywfMDy" resolve="autoSilencio" />
                                        </node>
                                        <node concept="1yJP7B" id="2y5ZLywfMEe" role="1yJP7p">
                                          <ref role="1yJP7r" node="2y5ZLywfMDv" resolve="desarmar" />
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
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMEf" role="1yJP71">
          <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
          <property role="TrG5h" value="NoSonarSinDisparo" />
          <ref role="1yJP7i" node="2y5ZLywfMDt" resolve="Alarma" />
          <node concept="1yJP7z" id="2y5ZLywfMEg" role="1yJP7j">
            <node concept="1yJP7B" id="2y5ZLywfMEh" role="1yJP7u">
              <ref role="1yJP7r" node="2y5ZLywfMDu" resolve="armar" />
            </node>
            <node concept="1yJP7B" id="2y5ZLywfMEi" role="1yJP7p">
              <ref role="1yJP7r" node="2y5ZLywfMDx" resolve="tiempoEntrada" />
            </node>
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMEj" role="1yJP70">
          <property role="TrG5h" value="ArmadoNormal" />
          <ref role="1yJP78" node="2y5ZLywfMDt" resolve="Alarma" />
          <node concept="1yJP7n" id="2y5ZLywfMEk" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMDr" resolve="Residente" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEl" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDu" resolve="armar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEm" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDv" resolve="desarmar" />
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMEn" role="1yJP70">
          <property role="TrG5h" value="IntrusoYSilencio" />
          <ref role="1yJP78" node="2y5ZLywfMDt" resolve="Alarma" />
          <node concept="1yJP7n" id="2y5ZLywfMEo" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMDs" resolve="Administrador" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEp" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDu" resolve="armar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEq" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDw" resolve="disparar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEr" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDx" resolve="tiempoEntrada" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEs" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDz" resolve="silenciar" />
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMEt" role="1yJP70">
          <property role="TrG5h" value="SinRespuesta" />
          <ref role="1yJP78" node="2y5ZLywfMDt" resolve="Alarma" />
          <node concept="1yJP7n" id="2y5ZLywfMEu" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMDr" resolve="Residente" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEv" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDu" resolve="armar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEw" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDw" resolve="disparar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEx" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDx" resolve="tiempoEntrada" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEy" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDy" resolve="autoSilencio" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMEz" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMDv" resolve="desarmar" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfME$" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfME_" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2y5ZLywfMEA" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMEB" role="1qenE9">
        <property role="TrG5h" value="CasaInteligente" />
        <node concept="1yJP60" id="2y5ZLywfMEC" role="1yJP77">
          <property role="TrG5h" value="Invitado" />
        </node>
        <node concept="1yJP60" id="2y5ZLywfMED" role="1yJP77">
          <property role="TrG5h" value="Residente" />
          <ref role="1yJP7Y" node="2y5ZLywfMEC" resolve="Invitado" />
        </node>
        <node concept="1yJP60" id="2y5ZLywfMEE" role="1yJP77">
          <property role="TrG5h" value="Administrador" />
          <ref role="1yJP7Y" node="2y5ZLywfMED" resolve="Residente" />
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMEF" role="1yJP76">
          <property role="TrG5h" value="Cerradura" />
          <node concept="1yJP63" id="2y5ZLywfMEG" role="1yJP7G">
            <property role="TrG5h" value="desbloquear" />
            <ref role="1yJP7V" node="2y5ZLywfMED" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMEH" role="1yJP7G">
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
            <property role="TrG5h" value="abrir" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMEI" role="1yJP7G">
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
            <property role="TrG5h" value="cerrar" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMEJ" role="1yJP7G">
            <property role="TrG5h" value="bloquear" />
            <ref role="1yJP7V" node="2y5ZLywfMED" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMEK" role="1yJP7G">
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
            <property role="TrG5h" value="forzar" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMEL" role="1yJP7G">
            <property role="TrG5h" value="desactivar" />
            <ref role="1yJP7V" node="2y5ZLywfMEE" resolve="Administrador" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMEM" role="1yJP7J">
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
            <property role="TrG5h" value="Bloqueada" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMEN" role="1yJP7J">
            <property role="TrG5h" value="Desbloqueada" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMEO" role="1yJP7J">
            <property role="TrG5h" value="Abierta" />
          </node>
          <node concept="1yJP7X" id="2y5ZLywfMEP" role="1yJP7J">
            <property role="TrG5h" value="Intrusion" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMEQ" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMEM" resolve="Bloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMEG" resolve="desbloquear" />
            <ref role="1yJP7M" node="2y5ZLywfMEN" resolve="Desbloqueada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMER" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMEN" resolve="Desbloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMEH" resolve="abrir" />
            <ref role="1yJP7M" node="2y5ZLywfMEO" resolve="Abierta" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMES" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMEO" resolve="Abierta" />
            <ref role="1yJP7N" node="2y5ZLywfMEI" resolve="cerrar" />
            <ref role="1yJP7M" node="2y5ZLywfMEN" resolve="Desbloqueada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMET" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMEN" resolve="Desbloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMEJ" resolve="bloquear" />
            <ref role="1yJP7M" node="2y5ZLywfMEM" resolve="Bloqueada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMEU" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMEM" resolve="Bloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMEK" resolve="forzar" />
            <ref role="1yJP7M" node="2y5ZLywfMEP" resolve="Intrusion" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMEV" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMEP" resolve="Intrusion" />
            <ref role="1yJP7N" node="2y5ZLywfMEL" resolve="desactivar" />
            <ref role="1yJP7M" node="2y5ZLywfMEM" resolve="Bloqueada" />
          </node>
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMEW" role="1yJP76">
          <property role="TrG5h" value="Luz" />
          <node concept="1yJP63" id="2y5ZLywfMEX" role="1yJP7G">
            <property role="TrG5h" value="encenderLuz" />
            <ref role="1yJP7V" node="2y5ZLywfMEC" resolve="Invitado" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMEY" role="1yJP7G">
            <property role="TrG5h" value="apagarLuz" />
            <ref role="1yJP7V" node="2y5ZLywfMEC" resolve="Invitado" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMEZ" role="1yJP7G">
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
            <property role="TrG5h" value="detectarMovimiento" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMF0" role="1yJP7J">
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
            <property role="TrG5h" value="Apagada" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMF1" role="1yJP7J">
            <property role="TrG5h" value="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMF2" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMF0" resolve="Apagada" />
            <ref role="1yJP7N" node="2y5ZLywfMEX" resolve="encenderLuz" />
            <ref role="1yJP7M" node="2y5ZLywfMF1" resolve="Encendida" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMF3" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMF1" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMEY" resolve="apagarLuz" />
            <ref role="1yJP7M" node="2y5ZLywfMF0" resolve="Apagada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMF4" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMF1" resolve="Encendida" />
            <ref role="1yJP7N" node="2y5ZLywfMEZ" resolve="detectarMovimiento" />
            <ref role="1yJP7M" node="2y5ZLywfMF1" resolve="Encendida" />
          </node>
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMF5" role="1yJP76">
          <property role="TrG5h" value="Termostato" />
          <node concept="1yJP63" id="2y5ZLywfMF6" role="1yJP7G">
            <property role="TrG5h" value="calentar" />
            <ref role="1yJP7V" node="2y5ZLywfMED" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMF7" role="1yJP7G">
            <property role="TrG5h" value="enfriar" />
            <ref role="1yJP7V" node="2y5ZLywfMED" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMF8" role="1yJP7G">
            <property role="TrG5h" value="detener" />
            <ref role="1yJP7V" node="2y5ZLywfMED" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMF9" role="1yJP7G">
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
            <property role="TrG5h" value="sobrecalentar" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMFa" role="1yJP7G">
            <property role="TrG5h" value="apagarEmergencia" />
            <ref role="1yJP7V" node="2y5ZLywfMEE" resolve="Administrador" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMFb" role="1yJP7J">
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
            <property role="TrG5h" value="Reposo" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMFc" role="1yJP7J">
            <property role="TrG5h" value="Calentando" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMFd" role="1yJP7J">
            <property role="TrG5h" value="Enfriando" />
          </node>
          <node concept="1yJP7X" id="2y5ZLywfMFe" role="1yJP7J">
            <property role="TrG5h" value="Sobrecalentamiento" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMFf" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMFb" resolve="Reposo" />
            <ref role="1yJP7N" node="2y5ZLywfMF6" resolve="calentar" />
            <ref role="1yJP7M" node="2y5ZLywfMFc" resolve="Calentando" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMFg" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMFc" resolve="Calentando" />
            <ref role="1yJP7N" node="2y5ZLywfMF8" resolve="detener" />
            <ref role="1yJP7M" node="2y5ZLywfMFb" resolve="Reposo" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMFh" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMFb" resolve="Reposo" />
            <ref role="1yJP7N" node="2y5ZLywfMF7" resolve="enfriar" />
            <ref role="1yJP7M" node="2y5ZLywfMFd" resolve="Enfriando" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMFi" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMFd" resolve="Enfriando" />
            <ref role="1yJP7N" node="2y5ZLywfMF8" resolve="detener" />
            <ref role="1yJP7M" node="2y5ZLywfMFb" resolve="Reposo" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMFj" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMFc" resolve="Calentando" />
            <ref role="1yJP7N" node="2y5ZLywfMF9" resolve="sobrecalentar" />
            <ref role="1yJP7M" node="2y5ZLywfMFe" resolve="Sobrecalentamiento" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMFk" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMFe" resolve="Sobrecalentamiento" />
            <ref role="1yJP7N" node="2y5ZLywfMFa" resolve="apagarEmergencia" />
            <ref role="1yJP7M" node="2y5ZLywfMFb" resolve="Reposo" />
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMFl" role="1yJP71">
          <property role="TrG5h" value="CicloCompleto" />
          <ref role="1yJP7i" node="2y5ZLywfMEF" resolve="Cerradura" />
          <node concept="1yJP7y" id="2y5ZLywfMFm" role="1yJP7j">
            <node concept="1yJP7v" id="2y5ZLywfMFn" role="1yJP7o">
              <node concept="1yJP7w" id="2y5ZLywfMFo" role="1yJP7o">
                <node concept="1yJP7v" id="2y5ZLywfMFp" role="1yJP7u">
                  <node concept="1yJP7z" id="2y5ZLywfMFq" role="1yJP7o">
                    <node concept="1yJP7B" id="2y5ZLywfMFr" role="1yJP7u">
                      <ref role="1yJP7r" node="2y5ZLywfMEG" resolve="desbloquear" />
                    </node>
                    <node concept="1yJP7z" id="2y5ZLywfMFs" role="1yJP7p">
                      <node concept="1yJP7y" id="2y5ZLywfMFt" role="1yJP7u">
                        <node concept="1yJP7v" id="2y5ZLywfMFu" role="1yJP7o">
                          <node concept="1yJP7z" id="2y5ZLywfMFv" role="1yJP7o">
                            <node concept="1yJP7B" id="2y5ZLywfMFw" role="1yJP7u">
                              <ref role="1yJP7r" node="2y5ZLywfMEH" resolve="abrir" />
                            </node>
                            <node concept="1yJP7B" id="2y5ZLywfMFx" role="1yJP7p">
                              <ref role="1yJP7r" node="2y5ZLywfMEI" resolve="cerrar" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1yJP7B" id="2y5ZLywfMFy" role="1yJP7p">
                        <ref role="1yJP7r" node="2y5ZLywfMEJ" resolve="bloquear" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1yJP7v" id="2y5ZLywfMFz" role="1yJP7p">
                  <node concept="1yJP7z" id="2y5ZLywfMF$" role="1yJP7o">
                    <node concept="1yJP7B" id="2y5ZLywfMF_" role="1yJP7u">
                      <ref role="1yJP7r" node="2y5ZLywfMEK" resolve="forzar" />
                    </node>
                    <node concept="1yJP7B" id="2y5ZLywfMFA" role="1yJP7p">
                      <ref role="1yJP7r" node="2y5ZLywfMEL" resolve="desactivar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMFB" role="1yJP71">
          <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
          <property role="TrG5h" value="NoBloquearAbierta" />
          <ref role="1yJP7i" node="2y5ZLywfMEF" resolve="Cerradura" />
          <node concept="1yJP7z" id="2y5ZLywfMFC" role="1yJP7j">
            <node concept="1yJP7B" id="2y5ZLywfMFD" role="1yJP7u">
              <ref role="1yJP7r" node="2y5ZLywfMEH" resolve="abrir" />
            </node>
            <node concept="1yJP7B" id="2y5ZLywfMFE" role="1yJP7p">
              <ref role="1yJP7r" node="2y5ZLywfMEJ" resolve="bloquear" />
            </node>
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMFF" role="1yJP71">
          <property role="TrG5h" value="LuzCicloSimple" />
          <ref role="1yJP7i" node="2y5ZLywfMEW" resolve="Luz" />
          <node concept="1yJP7y" id="2y5ZLywfMFG" role="1yJP7j">
            <node concept="1yJP7v" id="2y5ZLywfMFH" role="1yJP7o">
              <node concept="1yJP7z" id="2y5ZLywfMFI" role="1yJP7o">
                <node concept="1yJP7B" id="2y5ZLywfMFJ" role="1yJP7u">
                  <ref role="1yJP7r" node="2y5ZLywfMEX" resolve="encenderLuz" />
                </node>
                <node concept="1yJP7z" id="2y5ZLywfMFK" role="1yJP7p">
                  <node concept="1yJP7y" id="2y5ZLywfMFL" role="1yJP7u">
                    <node concept="1yJP7B" id="2y5ZLywfMFM" role="1yJP7o">
                      <ref role="1yJP7r" node="2y5ZLywfMEZ" resolve="detectarMovimiento" />
                    </node>
                  </node>
                  <node concept="1yJP7B" id="2y5ZLywfMFN" role="1yJP7p">
                    <ref role="1yJP7r" node="2y5ZLywfMEY" resolve="apagarLuz" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMFO" role="1yJP71">
          <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
          <property role="TrG5h" value="NoApagarDosVeces" />
          <ref role="1yJP7i" node="2y5ZLywfMEW" resolve="Luz" />
          <node concept="1yJP7z" id="2y5ZLywfMFP" role="1yJP7j">
            <node concept="1yJP7B" id="2y5ZLywfMFQ" role="1yJP7u">
              <ref role="1yJP7r" node="2y5ZLywfMEY" resolve="apagarLuz" />
            </node>
            <node concept="1yJP7B" id="2y5ZLywfMFR" role="1yJP7p">
              <ref role="1yJP7r" node="2y5ZLywfMEY" resolve="apagarLuz" />
            </node>
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMFS" role="1yJP71">
          <property role="TrG5h" value="TermostatoSeguro" />
          <ref role="1yJP7i" node="2y5ZLywfMF5" resolve="Termostato" />
          <node concept="1yJP7y" id="2y5ZLywfMFT" role="1yJP7j">
            <node concept="1yJP7v" id="2y5ZLywfMFU" role="1yJP7o">
              <node concept="1yJP7w" id="2y5ZLywfMFV" role="1yJP7o">
                <node concept="1yJP7v" id="2y5ZLywfMFW" role="1yJP7u">
                  <node concept="1yJP7z" id="2y5ZLywfMFX" role="1yJP7o">
                    <node concept="1yJP7v" id="2y5ZLywfMFY" role="1yJP7u">
                      <node concept="1yJP7w" id="2y5ZLywfMFZ" role="1yJP7o">
                        <node concept="1yJP7B" id="2y5ZLywfMG0" role="1yJP7u">
                          <ref role="1yJP7r" node="2y5ZLywfMF6" resolve="calentar" />
                        </node>
                        <node concept="1yJP7B" id="2y5ZLywfMG1" role="1yJP7p">
                          <ref role="1yJP7r" node="2y5ZLywfMF7" resolve="enfriar" />
                        </node>
                      </node>
                    </node>
                    <node concept="1yJP7B" id="2y5ZLywfMG2" role="1yJP7p">
                      <ref role="1yJP7r" node="2y5ZLywfMF8" resolve="detener" />
                    </node>
                  </node>
                </node>
                <node concept="1yJP7v" id="2y5ZLywfMG3" role="1yJP7p">
                  <node concept="1yJP7z" id="2y5ZLywfMG4" role="1yJP7o">
                    <node concept="1yJP7B" id="2y5ZLywfMG5" role="1yJP7u">
                      <ref role="1yJP7r" node="2y5ZLywfMF6" resolve="calentar" />
                    </node>
                    <node concept="1yJP7z" id="2y5ZLywfMG6" role="1yJP7p">
                      <node concept="1yJP7B" id="2y5ZLywfMG7" role="1yJP7u">
                        <ref role="1yJP7r" node="2y5ZLywfMF9" resolve="sobrecalentar" />
                      </node>
                      <node concept="1yJP7B" id="2y5ZLywfMG8" role="1yJP7p">
                        <ref role="1yJP7r" node="2y5ZLywfMFa" resolve="apagarEmergencia" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMG9" role="1yJP71">
          <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
          <property role="TrG5h" value="NoEnfriarYSobrecalentar" />
          <ref role="1yJP7i" node="2y5ZLywfMF5" resolve="Termostato" />
          <node concept="1yJP7z" id="2y5ZLywfMGa" role="1yJP7j">
            <node concept="1yJP7B" id="2y5ZLywfMGb" role="1yJP7u">
              <ref role="1yJP7r" node="2y5ZLywfMF7" resolve="enfriar" />
            </node>
            <node concept="1yJP7B" id="2y5ZLywfMGc" role="1yJP7p">
              <ref role="1yJP7r" node="2y5ZLywfMF9" resolve="sobrecalentar" />
            </node>
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMGd" role="1yJP70">
          <property role="TrG5h" value="EntradaNormal" />
          <ref role="1yJP78" node="2y5ZLywfMEF" resolve="Cerradura" />
          <node concept="1yJP7n" id="2y5ZLywfMGe" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMED" resolve="Residente" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGf" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMEG" resolve="desbloquear" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGg" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMEH" resolve="abrir" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGh" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMEI" resolve="cerrar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGi" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMEJ" resolve="bloquear" />
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMGj" role="1yJP70">
          <property role="TrG5h" value="LuzDePasillo" />
          <ref role="1yJP78" node="2y5ZLywfMEW" resolve="Luz" />
          <node concept="1yJP7n" id="2y5ZLywfMGk" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMEC" resolve="Invitado" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGl" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMEX" resolve="encenderLuz" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGm" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMEZ" resolve="detectarMovimiento" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGn" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMEY" resolve="apagarLuz" />
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMGo" role="1yJP70">
          <property role="TrG5h" value="CicloTermico" />
          <ref role="1yJP78" node="2y5ZLywfMF5" resolve="Termostato" />
          <node concept="1yJP7n" id="2y5ZLywfMGp" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMED" resolve="Residente" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGq" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMF6" resolve="calentar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGr" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMF8" resolve="detener" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGs" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMF7" resolve="enfriar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGt" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMF8" resolve="detener" />
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMGu" role="1yJP70">
          <property role="TrG5h" value="Emergencia" />
          <ref role="1yJP78" node="2y5ZLywfMF5" resolve="Termostato" />
          <node concept="1yJP7n" id="2y5ZLywfMGv" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMEE" resolve="Administrador" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGw" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMF6" resolve="calentar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGx" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMF9" resolve="sobrecalentar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMGy" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMFa" resolve="apagarEmergencia" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMGz" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMG$" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="2y5ZLywfMG_">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="InferenciasCerradura" />
    <node concept="1qefOq" id="2y5ZLywfMGA" role="1SKRRt">
      <node concept="1yJP74" id="2y5ZLywfMGB" role="1qenE9">
        <property role="TrG5h" value="CasaSeguraInferencias" />
        <node concept="1yJP60" id="2y5ZLywfMGC" role="1yJP77">
          <property role="TrG5h" value="Invitado" />
        </node>
        <node concept="1yJP60" id="2y5ZLywfMGD" role="1yJP77">
          <property role="TrG5h" value="Residente" />
          <ref role="1yJP7Y" node="2y5ZLywfMGC" resolve="Invitado" />
        </node>
        <node concept="1yJP60" id="2y5ZLywfMGE" role="1yJP77">
          <property role="TrG5h" value="Administrador" />
          <ref role="1yJP7Y" node="2y5ZLywfMGD" resolve="Residente" />
        </node>
        <node concept="1yJP7Z" id="2y5ZLywfMGF" role="1yJP76">
          <property role="TrG5h" value="Cerradura" />
          <node concept="1yJP63" id="2y5ZLywfMGG" role="1yJP7G">
            <property role="TrG5h" value="desbloquear" />
            <ref role="1yJP7V" node="2y5ZLywfMGD" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMGH" role="1yJP7G">
            <property role="TrG5h" value="abrir" />
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMGI" role="1yJP7G">
            <property role="TrG5h" value="cerrar" />
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMGJ" role="1yJP7G">
            <property role="TrG5h" value="bloquear" />
            <ref role="1yJP7V" node="2y5ZLywfMGD" resolve="Residente" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMGK" role="1yJP7G">
            <property role="TrG5h" value="forzar" />
            <property role="1yJP7S" value="3vEqgwSbCm8/SENSOR" />
          </node>
          <node concept="1yJP63" id="2y5ZLywfMGL" role="1yJP7G">
            <property role="TrG5h" value="desactivar" />
            <ref role="1yJP7V" node="2y5ZLywfMGE" resolve="Administrador" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMGM" role="1yJP7J">
            <property role="TrG5h" value="Bloqueada" />
            <property role="1yJP7O" value="true" />
            <property role="1yJP7R" value="true" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMGN" role="1yJP7J">
            <property role="TrG5h" value="Desbloqueada" />
          </node>
          <node concept="1yJP62" id="2y5ZLywfMGO" role="1yJP7J">
            <property role="TrG5h" value="Abierta" />
          </node>
          <node concept="1yJP7X" id="2y5ZLywfMGP" role="1yJP7J">
            <property role="TrG5h" value="Intrusion" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMGQ" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMGM" resolve="Bloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMGG" resolve="desbloquear" />
            <ref role="1yJP7M" node="2y5ZLywfMGN" resolve="Desbloqueada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMGR" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMGN" resolve="Desbloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMGH" resolve="abrir" />
            <ref role="1yJP7M" node="2y5ZLywfMGO" resolve="Abierta" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMGS" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMGO" resolve="Abierta" />
            <ref role="1yJP7N" node="2y5ZLywfMGI" resolve="cerrar" />
            <ref role="1yJP7M" node="2y5ZLywfMGN" resolve="Desbloqueada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMGT" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMGN" resolve="Desbloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMGJ" resolve="bloquear" />
            <ref role="1yJP7M" node="2y5ZLywfMGM" resolve="Bloqueada" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMGU" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMGM" resolve="Bloqueada" />
            <ref role="1yJP7N" node="2y5ZLywfMGK" resolve="forzar" />
            <ref role="1yJP7M" node="2y5ZLywfMGP" resolve="Intrusion" />
          </node>
          <node concept="1yJP7W" id="2y5ZLywfMGV" role="1yJP7I">
            <ref role="1yJP7K" node="2y5ZLywfMGP" resolve="Intrusion" />
            <ref role="1yJP7N" node="2y5ZLywfMGL" resolve="desactivar" />
            <ref role="1yJP7M" node="2y5ZLywfMGM" resolve="Bloqueada" />
          </node>
          <node concept="3xLA65" id="2y5ZLywfMGW" role="lGtFl">
            <property role="TrG5h" value="cerradura" />
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMGX" role="1yJP71">
          <property role="TrG5h" value="CicloCompleto" />
          <ref role="1yJP7i" node="2y5ZLywfMGF" resolve="Cerradura" />
          <node concept="1yJP7y" id="2y5ZLywfMGY" role="1yJP7j">
            <node concept="1yJP7v" id="2y5ZLywfMGZ" role="1yJP7o">
              <node concept="1yJP7w" id="2y5ZLywfMH0" role="1yJP7o">
                <node concept="1yJP7v" id="2y5ZLywfMH1" role="1yJP7u">
                  <node concept="1yJP7z" id="2y5ZLywfMH2" role="1yJP7o">
                    <node concept="1yJP7B" id="2y5ZLywfMH3" role="1yJP7u">
                      <ref role="1yJP7r" node="2y5ZLywfMGG" resolve="desbloquear" />
                    </node>
                    <node concept="1yJP7z" id="2y5ZLywfMH4" role="1yJP7p">
                      <node concept="1yJP7y" id="2y5ZLywfMH5" role="1yJP7u">
                        <node concept="1yJP7v" id="2y5ZLywfMH6" role="1yJP7o">
                          <node concept="1yJP7z" id="2y5ZLywfMH7" role="1yJP7o">
                            <node concept="1yJP7B" id="2y5ZLywfMH8" role="1yJP7u">
                              <ref role="1yJP7r" node="2y5ZLywfMGH" resolve="abrir" />
                            </node>
                            <node concept="1yJP7B" id="2y5ZLywfMH9" role="1yJP7p">
                              <ref role="1yJP7r" node="2y5ZLywfMGI" resolve="cerrar" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1yJP7B" id="2y5ZLywfMHa" role="1yJP7p">
                        <ref role="1yJP7r" node="2y5ZLywfMGJ" resolve="bloquear" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1yJP7v" id="2y5ZLywfMHb" role="1yJP7p">
                  <node concept="1yJP7z" id="2y5ZLywfMHc" role="1yJP7o">
                    <node concept="1yJP7B" id="2y5ZLywfMHd" role="1yJP7u">
                      <ref role="1yJP7r" node="2y5ZLywfMGK" resolve="forzar" />
                    </node>
                    <node concept="1yJP7B" id="2y5ZLywfMHe" role="1yJP7p">
                      <ref role="1yJP7r" node="2y5ZLywfMGL" resolve="desactivar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="7CXmI" id="2y5ZLywfMHf" role="lGtFl">
              <node concept="30Omv" id="2y5ZLywfMHg" role="7EUXB">
                <node concept="1yJP0Z" id="2y5ZLywfMHh" role="31d$z">
                  <ref role="1yJP0T" node="2y5ZLywfMGF" resolve="Cerradura" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3xLA65" id="2y5ZLywfMHi" role="lGtFl">
            <property role="TrG5h" value="ciclo" />
          </node>
        </node>
        <node concept="1yJP7k" id="2y5ZLywfMHj" role="1yJP71">
          <property role="TrG5h" value="NoBloquearAbierta" />
          <property role="1yJP7g" value="6FJpaQRXsgu/FORBIDDEN" />
          <ref role="1yJP7i" node="2y5ZLywfMGF" resolve="Cerradura" />
          <node concept="1yJP7z" id="2y5ZLywfMHk" role="1yJP7j">
            <node concept="1yJP7B" id="2y5ZLywfMHl" role="1yJP7u">
              <ref role="1yJP7r" node="2y5ZLywfMGH" resolve="abrir" />
              <node concept="7CXmI" id="2y5ZLywfMHm" role="lGtFl">
                <node concept="30Omv" id="2y5ZLywfMHn" role="7EUXB">
                  <node concept="1yJP0Z" id="2y5ZLywfMHo" role="31d$z">
                    <ref role="1yJP0T" node="2y5ZLywfMGF" resolve="Cerradura" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1yJP7B" id="2y5ZLywfMHp" role="1yJP7p">
              <ref role="1yJP7r" node="2y5ZLywfMGJ" resolve="bloquear" />
            </node>
            <node concept="7CXmI" id="2y5ZLywfMHq" role="lGtFl">
              <node concept="30Omv" id="2y5ZLywfMHr" role="7EUXB">
                <node concept="1yJP0Z" id="2y5ZLywfMHs" role="31d$z">
                  <ref role="1yJP0T" node="2y5ZLywfMGF" resolve="Cerradura" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yJP7h" id="2y5ZLywfMHt" role="1yJP70">
          <property role="TrG5h" value="EntradaNormal" />
          <ref role="1yJP78" node="2y5ZLywfMGF" resolve="Cerradura" />
          <node concept="1yJP7n" id="2y5ZLywfMHu" role="1yJP7e">
            <ref role="1yJP7c" node="2y5ZLywfMGD" resolve="Residente" />
            <node concept="7CXmI" id="2y5ZLywfMHv" role="lGtFl">
              <node concept="30Omv" id="2y5ZLywfMHw" role="7EUXB">
                <node concept="1yJP0W" id="2y5ZLywfMHx" role="31d$z">
                  <ref role="1yJP0Y" node="2y5ZLywfMGD" resolve="Residente" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMHy" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMGG" resolve="desbloquear" />
            <node concept="7CXmI" id="2y5ZLywfMHz" role="lGtFl">
              <node concept="30Omv" id="2y5ZLywfMH$" role="7EUXB">
                <node concept="1yJP0W" id="2y5ZLywfMH_" role="31d$z">
                  <ref role="1yJP0Y" node="2y5ZLywfMGD" resolve="Residente" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMHA" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMGH" resolve="abrir" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMHB" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMGI" resolve="cerrar" />
          </node>
          <node concept="1yJP7m" id="2y5ZLywfMHC" role="1yJP79">
            <ref role="1yJP7f" node="2y5ZLywfMGJ" resolve="bloquear" />
          </node>
          <node concept="3xLA65" id="2y5ZLywfMHD" role="lGtFl">
            <property role="TrG5h" value="entrada" />
          </node>
        </node>
        <node concept="7CXmI" id="2y5ZLywfMHE" role="lGtFl">
          <node concept="7OXhh" id="2y5ZLywfMHF" role="7EUXB">
            <property role="GvXf4" value="true" />
            <property role="G7GLQ" value="false" />
            <property role="G7GLP" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2y5ZLywgwOQ" role="1SL9yI">
      <property role="TrG5h" value="TrazaMinimaAlarma" />
      <node concept="3cqZAl" id="2y5ZLywgwOS" role="3clF45" />
      <node concept="3clFbS" id="2y5ZLywhYvx" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywhYtC" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYtB" role="3cpWs9">
            <property role="TrG5h" value="nfa" />
            <node concept="3uibUv" id="2y5ZLywhYtD" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywjzbr" role="33vP2m">
              <node concept="3xONca" id="2y5ZLywjzbs" role="2Oq$k0">
                <ref role="3xOPvv" node="2y5ZLywfMGW" resolve="cerradura" />
              </node>
              <node concept="3zqWPK" id="2y5ZLywjzbt" role="2OqNvi">
                <ref role="37wK5l" to="yke2:2y5ZLyvXOpH" resolve="toNfa" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywhYtG" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYtF" role="3cpWs9">
            <property role="TrG5h" value="sigma" />
            <node concept="3uibUv" id="2y5ZLywhYtH" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywjUVd" role="33vP2m">
              <node concept="3xONca" id="2y5ZLywjUVe" role="2Oq$k0">
                <ref role="3xOPvv" node="2y5ZLywfMGW" resolve="cerradura" />
              </node>
              <node concept="3zqWPK" id="2y5ZLywjUVf" role="2OqNvi">
                <ref role="37wK5l" to="yke2:2y5ZLyvXxNJ" resolve="alphabet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywhYtK" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYtJ" role="3cpWs9">
            <property role="TrG5h" value="alarmas" />
            <node concept="3uibUv" id="2y5ZLywhYtL" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2y5ZLywhYtM" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLywkdct" role="33vP2m">
              <node concept="3xONca" id="2y5ZLywkdcu" role="2Oq$k0">
                <ref role="3xOPvv" node="2y5ZLywfMGW" resolve="cerradura" />
              </node>
              <node concept="3zqWPK" id="2y5ZLywkdcv" role="2OqNvi">
                <ref role="37wK5l" to="yke2:2y5ZLyvY6OM" resolve="alarmStateIndices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywhYtP" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYtO" role="3cpWs9">
            <property role="TrG5h" value="estados" />
            <node concept="3uibUv" id="2y5ZLywhYtQ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLywhYtR" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLywhYvy" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLywhYvB" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLywhYvC" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLywhYtU" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYtV" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLywhYtX" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLywhYtY" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLywhYtZ" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLywhYu0" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLywhYtV" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywhYvE" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLywhYvD" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywhYtB" resolve="nfa" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywhYvF" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkc" resolve="stateCount" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLywhYu3" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLywhYu4" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLywhYtV" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLywhYu6" role="2LFqv$">
            <node concept="3clFbF" id="2y5ZLywhYu7" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLywhYyL" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLywhYvG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywhYtO" resolve="estados" />
                </node>
                <node concept="liA8E" id="2y5ZLywhYyM" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="2y5ZLywkvRr" role="37wK5m">
                    <node concept="3xONca" id="2y5ZLywkvRs" role="2Oq$k0">
                      <ref role="3xOPvv" node="2y5ZLywfMGW" resolve="cerradura" />
                    </node>
                    <node concept="3zqWPK" id="2y5ZLywkvRt" role="2OqNvi">
                      <ref role="37wK5l" to="yke2:2y5ZLyvYoWh" resolve="stateName" />
                      <node concept="37vLTw" id="2y5ZLywkvRu" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLywhYtV" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywhYub" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYua" role="3cpWs9">
            <property role="TrG5h" value="traza" />
            <node concept="3uibUv" id="2y5ZLywhYuc" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLywhYud" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLywhYvJ" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJkkW" resolve="shortestTraceTo" />
              <node concept="37vLTw" id="2y5ZLywhYvK" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywhYtB" resolve="nfa" />
              </node>
              <node concept="37vLTw" id="2y5ZLywhYvL" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywhYtJ" resolve="alarmas" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywhYui" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYuh" role="3cpWs9">
            <property role="TrG5h" value="esperada" />
            <node concept="3uibUv" id="2y5ZLywhYuj" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLywhYuk" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLywhYvM" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLywhYvR" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLywhYvS" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywhYun" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywhY_6" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywhYvT" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywhYuh" resolve="esperada" />
            </node>
            <node concept="liA8E" id="2y5ZLywhY_7" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLywhY_8" role="37wK5m">
                <property role="Xl_RC" value="forzar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywhYuq" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywhYvW" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertEquals" />
            <node concept="Xl_RD" id="2y5ZLywhYvX" role="37wK5m">
              <property role="Xl_RC" value="traza mínima a la alarma" />
            </node>
            <node concept="37vLTw" id="2y5ZLywhYvY" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywhYuh" resolve="esperada" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywhYA2" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLywhY_9" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywhYtF" resolve="sigma" />
              </node>
              <node concept="liA8E" id="2y5ZLywhYA3" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE7d" resolve="namesOf" />
                <node concept="37vLTw" id="2y5ZLywhYA4" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywhYua" resolve="traza" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywhYux" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYuw" role="3cpWs9">
            <property role="TrG5h" value="hallazgos" />
            <node concept="3uibUv" id="2y5ZLywhYuy" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLywhYuz" role="11_B2D">
                <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLywhYw1" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
              <ref role="37wK5l" to="op1a:2y5ZLyw1dio" resolve="analizarDispositivo" />
              <node concept="37vLTw" id="2y5ZLywhYw2" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywhYtB" resolve="nfa" />
              </node>
              <node concept="37vLTw" id="2y5ZLywhYw3" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywhYtJ" resolve="alarmas" />
              </node>
              <node concept="37vLTw" id="2y5ZLywhYw4" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywhYtO" resolve="estados" />
              </node>
              <node concept="37vLTw" id="2y5ZLywhYw5" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywhYtF" resolve="sigma" />
              </node>
              <node concept="2ShNRf" id="2y5ZLywhY_c" role="37wK5m">
                <node concept="1pGfFk" id="2y5ZLywhY_h" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="2y5ZLywhY_i" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2y5ZLywhY_j" role="37wK5m">
                <node concept="1pGfFk" id="2y5ZLywhY_o" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="2y5ZLywhY_p" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywhYuI" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYuH" role="3cpWs9">
            <property role="TrG5h" value="infos" />
            <node concept="10Oyi0" id="2y5ZLywhYuJ" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLywhYuK" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywhYuM" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywhYuL" role="3cpWs9">
            <property role="TrG5h" value="problemas" />
            <node concept="10Oyi0" id="2y5ZLywhYuN" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLywhYuO" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2y5ZLywhYuP" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLywhYvm" role="1DdaDG">
            <ref role="3cqZAo" node="2y5ZLywhYuw" resolve="hallazgos" />
          </node>
          <node concept="3cpWsn" id="2y5ZLywhYvj" role="1Duv9x">
            <property role="TrG5h" value="h" />
            <node concept="3uibUv" id="2y5ZLywhYvl" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLywhYuR" role="2LFqv$">
            <node concept="3clFbJ" id="2y5ZLywhYuS" role="3cqZAp">
              <node concept="1Wc70l" id="2y5ZLywhYuT" role="3clFbw">
                <node concept="3clFbC" id="2y5ZLywhYuU" role="3uHU7B">
                  <node concept="2OqwBi" id="2y5ZLywhYwb" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLywhYwa" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLywhYvj" resolve="h" />
                    </node>
                    <node concept="2OwXpG" id="2y5ZLywhYwc" role="2OqNvi">
                      <ref role="2Oxat5" to="op1a:2y5ZLyw0JYW" resolve="severidad" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="2y5ZLywhYwd" role="3uHU7w">
                    <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                    <ref role="3cqZAo" to="op1a:2y5ZLyw0JYk" resolve="INFO" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2y5ZLywhY_P" role="3uHU7w">
                  <node concept="2OqwBi" id="2y5ZLywhYwf" role="2Oq$k0">
                    <node concept="37vLTw" id="2y5ZLywhYwe" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLywhYvj" resolve="h" />
                    </node>
                    <node concept="2OwXpG" id="2y5ZLywhYwg" role="2OqNvi">
                      <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ8" resolve="mensaje" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2y5ZLywhY_Q" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="Xl_RD" id="2y5ZLywhY_R" role="37wK5m">
                      <property role="Xl_RC" value="Alarma alcanzable. Traza mínima: forzar" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLywhYv0" role="3clFbx">
                <node concept="3clFbF" id="2y5ZLywhYv1" role="3cqZAp">
                  <node concept="37vLTI" id="2y5ZLywhYv2" role="3clFbG">
                    <node concept="37vLTw" id="2y5ZLywhYv3" role="37vLTJ">
                      <ref role="3cqZAo" node="2y5ZLywhYuH" resolve="infos" />
                    </node>
                    <node concept="3cpWs3" id="2y5ZLywhYv4" role="37vLTx">
                      <node concept="37vLTw" id="2y5ZLywhYv5" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLywhYuH" resolve="infos" />
                      </node>
                      <node concept="3cmrfG" id="2y5ZLywhYv6" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2y5ZLywhYv7" role="3cqZAp">
              <node concept="3y3z36" id="2y5ZLywhYv8" role="3clFbw">
                <node concept="2OqwBi" id="2y5ZLywhYwk" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLywhYwj" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLywhYvj" resolve="h" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLywhYwl" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyw0JYW" resolve="severidad" />
                  </node>
                </node>
                <node concept="10M0yZ" id="2y5ZLywhYwm" role="3uHU7w">
                  <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                  <ref role="3cqZAo" to="op1a:2y5ZLyw0JYk" resolve="INFO" />
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLywhYvc" role="3clFbx">
                <node concept="3clFbF" id="2y5ZLywhYvd" role="3cqZAp">
                  <node concept="37vLTI" id="2y5ZLywhYve" role="3clFbG">
                    <node concept="37vLTw" id="2y5ZLywhYvf" role="37vLTJ">
                      <ref role="3cqZAo" node="2y5ZLywhYuL" resolve="problemas" />
                    </node>
                    <node concept="3cpWs3" id="2y5ZLywhYvg" role="37vLTx">
                      <node concept="37vLTw" id="2y5ZLywhYvh" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLywhYuL" resolve="problemas" />
                      </node>
                      <node concept="3cmrfG" id="2y5ZLywhYvi" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywhYvn" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywhYwn" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,long,long)" resolve="assertEquals" />
            <node concept="Xl_RD" id="2y5ZLywhYwo" role="37wK5m">
              <property role="Xl_RC" value="la fachada informa la traza mínima" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywhYwp" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="37vLTw" id="2y5ZLywhYwq" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywhYuH" resolve="infos" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywhYvs" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywhYwr" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,long,long)" resolve="assertEquals" />
            <node concept="Xl_RD" id="2y5ZLywhYws" role="37wK5m">
              <property role="Xl_RC" value="la Cerradura no tiene errores ni advertencias" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywhYwt" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="2y5ZLywhYwu" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywhYuL" resolve="problemas" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2y5ZLywgN5N" role="1SL9yI">
      <property role="TrG5h" value="CicloCompletoVerificada" />
      <node concept="3cqZAl" id="2y5ZLywgN5P" role="3clF45" />
      <node concept="3clFbS" id="2y5ZLywgN5Q" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywio32" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywio31" role="3cpWs9">
            <property role="TrG5h" value="nfa" />
            <node concept="3uibUv" id="2y5ZLywio33" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywkLZT" role="33vP2m">
              <node concept="3xONca" id="2y5ZLywkLZU" role="2Oq$k0">
                <ref role="3xOPvv" node="2y5ZLywfMGW" resolve="cerradura" />
              </node>
              <node concept="3zqWPK" id="2y5ZLywkLZV" role="2OqNvi">
                <ref role="37wK5l" to="yke2:2y5ZLyvXOpH" resolve="toNfa" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywio36" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywio35" role="3cpWs9">
            <property role="TrG5h" value="sigma" />
            <node concept="3uibUv" id="2y5ZLywio37" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywl5lQ" role="33vP2m">
              <node concept="3xONca" id="2y5ZLywl5lR" role="2Oq$k0">
                <ref role="3xOPvv" node="2y5ZLywfMGW" resolve="cerradura" />
              </node>
              <node concept="3zqWPK" id="2y5ZLywl5lS" role="2OqNvi">
                <ref role="37wK5l" to="yke2:2y5ZLyvXxNJ" resolve="alphabet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywjaUy" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywjaUx" role="3cpWs9">
            <property role="TrG5h" value="k" />
            <node concept="10Oyi0" id="2y5ZLywjaUz" role="1tU5fm" />
            <node concept="2OqwBi" id="2y5ZLywjaUL" role="33vP2m">
              <node concept="37vLTw" id="2y5ZLywjaU_" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywio35" resolve="sigma" />
              </node>
              <node concept="liA8E" id="2y5ZLywjaUM" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE74" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywio3a" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywio39" role="3cpWs9">
            <property role="TrG5h" value="patron" />
            <node concept="3uibUv" id="2y5ZLywio3b" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywlnMq" role="33vP2m">
              <node concept="2OqwBi" id="2y5ZLywlnMr" role="2Oq$k0">
                <node concept="3xONca" id="2y5ZLywlnMs" role="2Oq$k0">
                  <ref role="3xOPvv" node="2y5ZLywfMHi" resolve="ciclo" />
                </node>
                <node concept="3TrEf2" id="2y5ZLywlnMt" role="2OqNvi">
                  <ref role="3Tt5mk" to="p4tm:57H1jONk_jI" resolve="expr" />
                </node>
              </node>
              <node concept="3zqWPK" id="2y5ZLywlnMu" role="2OqNvi">
                <ref role="37wK5l" to="yke2:2y5ZLyvPHaI" resolve="toNfa" />
                <node concept="37vLTw" id="2y5ZLywlnMv" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywjaUx" resolve="k" />
                </node>
                <node concept="37vLTw" id="2y5ZLywlnMw" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywio35" resolve="sigma" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywio3e" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywio3d" role="3cpWs9">
            <property role="TrG5h" value="h" />
            <node concept="3uibUv" id="2y5ZLywio3f" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywio3K" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
              <ref role="37wK5l" to="op1a:2y5ZLyw1dnA" resolve="verificarPolitica" />
              <node concept="37vLTw" id="2y5ZLywio3L" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywio31" resolve="nfa" />
              </node>
              <node concept="37vLTw" id="2y5ZLywio3M" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywio39" resolve="patron" />
              </node>
              <node concept="37vLTw" id="2y5ZLywio3N" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywio35" resolve="sigma" />
              </node>
              <node concept="3clFbT" id="2y5ZLywio3O" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywio3l" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywio3P" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,long,long)" resolve="assertEquals" />
            <node concept="Xl_RD" id="2y5ZLywio3Q" role="37wK5m">
              <property role="Xl_RC" value="CicloCompleto se cumple (no es error)" />
            </node>
            <node concept="10M0yZ" id="2y5ZLywio49" role="37wK5m">
              <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
              <ref role="3cqZAo" to="op1a:2y5ZLyw0JYk" resolve="INFO" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywio4b" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLywio4a" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywio3d" resolve="h" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywio4c" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyw0JYW" resolve="severidad" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywio3q" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywio3T" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.Object,java.lang.Object)" resolve="assertEquals" />
            <node concept="Xl_RD" id="2y5ZLywio3U" role="37wK5m">
              <property role="Xl_RC" value="Política verificada: AFD mínimo de 5 estados (4 útiles + sumidero)" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywio4e" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLywio4d" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywio3d" resolve="h" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywio4f" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ8" resolve="mensaje" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywio3v" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywio3u" role="3cpWs9">
            <property role="TrG5h" value="minimo" />
            <node concept="3uibUv" id="2y5ZLywio3w" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywio3W" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJ3yO" resolve="minimize" />
              <node concept="2YIFZM" id="2y5ZLywio4g" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvISWL" resolve="SubsetConstruction" />
                <ref role="37wK5l" to="op1a:2y5ZLyvISWN" resolve="determinize" />
                <node concept="37vLTw" id="2y5ZLywio4h" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywio39" resolve="patron" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywio3$" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywio3Z" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,long,long)" resolve="assertEquals" />
            <node concept="Xl_RD" id="2y5ZLywio40" role="37wK5m">
              <property role="Xl_RC" value="AFD mínimo completo con sumidero" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywio41" role="37wK5m">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywio4j" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLywio4i" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywio3u" resolve="minimo" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywio4k" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvIoou" resolve="stateCount" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywio3D" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywio43" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
            <node concept="Xl_RD" id="2y5ZLywio44" role="37wK5m">
              <property role="Xl_RC" value="uno de los estados es el sumidero" />
            </node>
            <node concept="3y3z36" id="2y5ZLywio45" role="37wK5m">
              <node concept="2OqwBi" id="2y5ZLywio4x" role="3uHU7B">
                <node concept="37vLTw" id="2y5ZLywio4l" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywio3u" resolve="minimo" />
                </node>
                <node concept="liA8E" id="2y5ZLywio4y" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvIorA" resolve="sinkState" />
                </node>
              </node>
              <node concept="1ZRNhn" id="2y5ZLywio47" role="3uHU7w">
                <node concept="3cmrfG" id="2y5ZLywio48" role="2$L3a6">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2y5ZLywh08X" role="1SL9yI">
      <property role="TrG5h" value="EntradaNormalAceptada" />
      <node concept="3cqZAl" id="2y5ZLywh08Z" role="3clF45" />
      <node concept="3clFbS" id="2y5ZLywh090" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywiKmU" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywiKmT" role="3cpWs9">
            <property role="TrG5h" value="nfa" />
            <node concept="3uibUv" id="2y5ZLywiKmV" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywlE4o" role="33vP2m">
              <node concept="3xONca" id="2y5ZLywlE4p" role="2Oq$k0">
                <ref role="3xOPvv" node="2y5ZLywfMGW" resolve="cerradura" />
              </node>
              <node concept="3zqWPK" id="2y5ZLywlE4q" role="2OqNvi">
                <ref role="37wK5l" to="yke2:2y5ZLyvXOpH" resolve="toNfa" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywiKmY" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywiKmX" role="3cpWs9">
            <property role="TrG5h" value="sigma" />
            <node concept="3uibUv" id="2y5ZLywiKmZ" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywlUTm" role="33vP2m">
              <node concept="3xONca" id="2y5ZLywlUTn" role="2Oq$k0">
                <ref role="3xOPvv" node="2y5ZLywfMGW" resolve="cerradura" />
              </node>
              <node concept="3zqWPK" id="2y5ZLywlUTo" role="2OqNvi">
                <ref role="37wK5l" to="yke2:2y5ZLyvXxNJ" resolve="alphabet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywiKn2" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywiKn1" role="3cpWs9">
            <property role="TrG5h" value="estados" />
            <node concept="3uibUv" id="2y5ZLywiKn3" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLywiKn4" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLywiKod" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLywiKoi" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLywiKoj" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLywiKn7" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywiKn8" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLywiKna" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLywiKnb" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLywiKnc" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLywiKnd" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLywiKn8" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywiKol" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLywiKok" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywiKmT" resolve="nfa" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywiKom" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkc" resolve="stateCount" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLywiKng" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLywiKnh" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLywiKn8" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLywiKnj" role="2LFqv$">
            <node concept="3clFbF" id="2y5ZLywiKnk" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLywiKrh" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLywiKon" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywiKn1" resolve="estados" />
                </node>
                <node concept="liA8E" id="2y5ZLywiKri" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="2y5ZLywmdg7" role="37wK5m">
                    <node concept="3xONca" id="2y5ZLywmdg8" role="2Oq$k0">
                      <ref role="3xOPvv" node="2y5ZLywfMGW" resolve="cerradura" />
                    </node>
                    <node concept="3zqWPK" id="2y5ZLywmdg9" role="2OqNvi">
                      <ref role="37wK5l" to="yke2:2y5ZLyvYoWh" resolve="stateName" />
                      <node concept="37vLTw" id="2y5ZLywmdga" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLywiKn8" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywiKno" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywiKnn" role="3cpWs9">
            <property role="TrG5h" value="palabra" />
            <node concept="3uibUv" id="2y5ZLywiKnp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLywiKnq" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLywmwp1" role="33vP2m">
              <node concept="3xONca" id="2y5ZLywmwp2" role="2Oq$k0">
                <ref role="3xOPvv" node="2y5ZLywfMHD" resolve="entrada" />
              </node>
              <node concept="3zqWPK" id="2y5ZLywmwp3" role="2OqNvi">
                <ref role="37wK5l" to="yke2:2y5ZLyvYXfT" resolve="toWord" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywiKnt" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywiKns" role="3cpWs9">
            <property role="TrG5h" value="r" />
            <node concept="3uibUv" id="2y5ZLywiKnu" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQQN" resolve="SimulationResult" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywiKoq" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
              <node concept="37vLTw" id="2y5ZLywiKor" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywiKmT" resolve="nfa" />
              </node>
              <node concept="37vLTw" id="2y5ZLywiKos" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywiKnn" resolve="palabra" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywiKny" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywiKot" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
            <node concept="Xl_RD" id="2y5ZLywiKou" role="37wK5m">
              <property role="Xl_RC" value="EntradaNormal se acepta" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywiKrl" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLywiKrk" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywiKns" resolve="r" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywiKrm" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywiKnA" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywiKow" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,long,long)" resolve="assertEquals" />
            <node concept="Xl_RD" id="2y5ZLywiKox" role="37wK5m">
              <property role="Xl_RC" value="ningún paso falla" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywiKoy" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywiKro" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLywiKrn" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywiKns" resolve="r" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywiKrp" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQQZ" resolve="failedStep" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywiKnF" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywiKo$" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.Object,java.lang.Object)" resolve="assertEquals" />
            <node concept="Xl_RD" id="2y5ZLywiKo_" role="37wK5m">
              <property role="Xl_RC" value="Bloqueada → Desbloqueada → Abierta → Desbloqueada → Bloqueada" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywiKrq" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKsth" resolve="formatTrace" />
              <node concept="37vLTw" id="2y5ZLywiKrr" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywiKns" resolve="r" />
              </node>
              <node concept="37vLTw" id="2y5ZLywiKrs" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywiKn1" resolve="estados" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywiKnM" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywiKnL" role="3cpWs9">
            <property role="TrG5h" value="hallazgos" />
            <node concept="3uibUv" id="2y5ZLywiKnN" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLywiKnO" role="11_B2D">
                <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLywiKoD" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
              <ref role="37wK5l" to="op1a:2y5ZLyw1dp$" resolve="simularEscenario" />
              <node concept="37vLTw" id="2y5ZLywiKoE" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywiKmT" resolve="nfa" />
              </node>
              <node concept="37vLTw" id="2y5ZLywiKoF" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywiKnn" resolve="palabra" />
              </node>
              <node concept="37vLTw" id="2y5ZLywiKoG" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywiKn1" resolve="estados" />
              </node>
              <node concept="37vLTw" id="2y5ZLywiKoH" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywiKmX" resolve="sigma" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywiKnU" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywiKoI" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(long,long)" resolve="assertEquals" />
            <node concept="3cmrfG" id="2y5ZLywiKoJ" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywiKtO" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLywiKrt" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywiKnL" resolve="hallazgos" />
              </node>
              <node concept="liA8E" id="2y5ZLywiKtP" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywiKnY" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywiKoL" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.Object,java.lang.Object)" resolve="assertEquals" />
            <node concept="Xl_RD" id="2y5ZLywiKoM" role="37wK5m">
              <property role="Xl_RC" value="Simulación aceptada: Bloqueada → Desbloqueada → Abierta → Desbloqueada → Bloqueada" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywiKoN" role="37wK5m">
              <node concept="2OqwBi" id="2y5ZLywiKw8" role="2Oq$k0">
                <node concept="37vLTw" id="2y5ZLywiKrv" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywiKnL" resolve="hallazgos" />
                </node>
                <node concept="liA8E" id="2y5ZLywiKw9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2y5ZLywiKwa" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="2OwXpG" id="2y5ZLywiKoQ" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ8" resolve="mensaje" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="2y5ZLywmSAo">
    <property role="TrG5h" value="RazonadorTest" />
    <property role="3s_ewP" value="RazonadorTest" />
    <node concept="3s_gsd" id="2y5ZLywmSAq" role="3s_ewO">
      <node concept="3s$Bmu" id="2y5ZLywmSAr" role="3s_gse">
        <property role="TrG5h" value="testRequiredContraejemploExacto" />
        <property role="3s$Bm0" value="RequiredContraejemploExacto" />
        <node concept="3cqZAl" id="2y5ZLywmSAu" role="3clF45" />
        <node concept="3clFbS" id="2y5ZLywmSAv" role="3clF47">
          <node concept="3cpWs8" id="2y5ZLywnwV4" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnwV3" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="2y5ZLywnwV5" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywnwV6" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbfu" resolve="sigma" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywnwV8" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnwV7" role="3cpWs9">
              <property role="TrG5h" value="veredicto" />
              <node concept="3uibUv" id="2y5ZLywnwV9" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywnwW_" role="33vP2m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK4Cz" resolve="checkRequired" />
                <node concept="1rXfSq" id="2y5ZLywnwWA" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbhh" resolve="cerradura" />
                  <node concept="37vLTw" id="2y5ZLywnwWB" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnwV3" resolve="s" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLywnwWC" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbj9" resolve="siempreAbrir" />
                  <node concept="37vLTw" id="2y5ZLywnwWD" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnwV3" resolve="s" />
                  </node>
                </node>
                <node concept="37vLTw" id="2y5ZLywnwWE" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnwV3" resolve="s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywnwVg" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywnwWH" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertFalse(java.lang.String,boolean)" resolve="assertFalse" />
              <node concept="Xl_RD" id="2y5ZLywnwWI" role="37wK5m">
                <property role="Xl_RC" value="(desbloquear·abrir·cerrar·bloquear)* se viola" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywnwXd" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywnwXc" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywnwV7" resolve="veredicto" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywnwXe" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywnwVl" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnwVk" role="3cpWs9">
              <property role="TrG5h" value="esperado" />
              <node concept="10Q1$e" id="2y5ZLywnwVn" role="1tU5fm">
                <node concept="3uibUv" id="2y5ZLywnwVm" role="10Q1$1">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLywnwVq" role="33vP2m">
                <node concept="Xl_RD" id="2y5ZLywnwVo" role="2BsfMF">
                  <property role="Xl_RC" value="desbloquear" />
                </node>
                <node concept="Xl_RD" id="2y5ZLywnwVp" role="2BsfMF">
                  <property role="Xl_RC" value="bloquear" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywnwVr" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywnwWM" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywnwWN" role="37wK5m">
                <property role="Xl_RC" value="contraejemplo mínimo exacto" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywnwWO" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLywnbfX" resolve="nombres" />
                <node concept="37vLTw" id="2y5ZLywnwWP" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnwVk" resolve="esperado" />
                </node>
              </node>
              <node concept="2OqwBi" id="2y5ZLywnwXi" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywnwXh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywnwV7" resolve="veredicto" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywnwXj" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywnwVy" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnwVx" role="3cpWs9">
              <property role="TrG5h" value="h" />
              <node concept="3uibUv" id="2y5ZLywnwVz" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywnwWT" role="33vP2m">
                <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
                <ref role="37wK5l" to="op1a:2y5ZLyw1dnA" resolve="verificarPolitica" />
                <node concept="1rXfSq" id="2y5ZLywnwWU" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbhh" resolve="cerradura" />
                  <node concept="37vLTw" id="2y5ZLywnwWV" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnwV3" resolve="s" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLywnwWW" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbj9" resolve="siempreAbrir" />
                  <node concept="37vLTw" id="2y5ZLywnwWX" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnwV3" resolve="s" />
                  </node>
                </node>
                <node concept="37vLTw" id="2y5ZLywnwWY" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnwV3" resolve="s" />
                </node>
                <node concept="3clFbT" id="2y5ZLywnwWZ" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywnwVF" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywnwX2" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(long,long)" resolve="assertEquals" />
              <node concept="10M0yZ" id="2y5ZLywnwXm" role="37wK5m">
                <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                <ref role="3cqZAo" to="op1a:2y5ZLyw0JYs" resolve="ERROR" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywnwXq" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywnwXp" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywnwVx" resolve="h" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywnwXr" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyw0JYW" resolve="severidad" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywnwVJ" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywnwX7" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.Object,java.lang.Object)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywnwX8" role="37wK5m">
                <property role="Xl_RC" value="Política violada: la sesión 'desbloquear · bloquear' termina en reposo pero no cumple el patrón" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywnwXv" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywnwXu" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywnwVx" resolve="h" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywnwXw" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ8" resolve="mensaje" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLywmSAw" role="1B3o_S" />
      </node>
      <node concept="3s$Bmu" id="2y5ZLywmSAx" role="3s_gse">
        <property role="TrG5h" value="testForbiddenEnBorrador" />
        <property role="3s$Bm0" value="ForbiddenEnBorrador" />
        <node concept="3cqZAl" id="2y5ZLywmSA$" role="3clF45" />
        <node concept="3clFbS" id="2y5ZLywmSA_" role="3clF47">
          <node concept="3cpWs8" id="2y5ZLywnScB" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnScA" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="2y5ZLywnScC" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywnScD" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbfu" resolve="sigma" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywnScF" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnScE" role="3cpWs9">
              <property role="TrG5h" value="borrador" />
              <node concept="3uibUv" id="2y5ZLywnScG" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywnScH" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbhh" resolve="cerradura" />
                <node concept="37vLTw" id="2y5ZLywnScI" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnScA" resolve="s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywnScJ" role="3cqZAp">
            <node concept="1rXfSq" id="2y5ZLywnScK" role="3clFbG">
              <ref role="37wK5l" node="2y5ZLywnbgX" resolve="transicion" />
              <node concept="37vLTw" id="2y5ZLywnScL" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywnScE" resolve="borrador" />
              </node>
              <node concept="37vLTw" id="2y5ZLywnScM" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywnScA" resolve="s" />
              </node>
              <node concept="3cmrfG" id="2y5ZLywnScN" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="Xl_RD" id="2y5ZLywnScO" role="37wK5m">
                <property role="Xl_RC" value="bloquear" />
              </node>
              <node concept="3cmrfG" id="2y5ZLywnScP" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywnScR" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnScQ" role="3cpWs9">
              <property role="TrG5h" value="patron" />
              <node concept="3uibUv" id="2y5ZLywnScS" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywnSeL" role="33vP2m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="1rXfSq" id="2y5ZLywnSeM" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                  <node concept="37vLTw" id="2y5ZLywnSeN" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnScA" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywnSeO" role="37wK5m">
                    <property role="Xl_RC" value="abrir" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLywnSeP" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                  <node concept="37vLTw" id="2y5ZLywnSeQ" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnScA" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywnSeR" role="37wK5m">
                    <property role="Xl_RC" value="bloquear" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywnSd0" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywnSeU" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
              <node concept="Xl_RD" id="2y5ZLywnSeV" role="37wK5m">
                <property role="Xl_RC" value="en la Cerradura original NoBloquearAbierta se cumple" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywnSeW" role="37wK5m">
                <node concept="2YIFZM" id="2y5ZLywnSfF" role="2Oq$k0">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvK4Do" resolve="checkForbidden" />
                  <node concept="1rXfSq" id="2y5ZLywnSfG" role="37wK5m">
                    <ref role="37wK5l" node="2y5ZLywnbhh" resolve="cerradura" />
                    <node concept="37vLTw" id="2y5ZLywnSfH" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLywnScA" resolve="s" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2y5ZLywnSfI" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnScQ" resolve="patron" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLywnSfJ" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnScA" resolve="s" />
                  </node>
                </node>
                <node concept="2OwXpG" id="2y5ZLywnSf2" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywnSdb" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnSda" role="3cpWs9">
              <property role="TrG5h" value="veredicto" />
              <node concept="3uibUv" id="2y5ZLywnSdc" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywnSfd" role="33vP2m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK4Do" resolve="checkForbidden" />
                <node concept="37vLTw" id="2y5ZLywnSfe" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnScE" resolve="borrador" />
                </node>
                <node concept="37vLTw" id="2y5ZLywnSff" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnScQ" resolve="patron" />
                </node>
                <node concept="37vLTw" id="2y5ZLywnSfg" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnScA" resolve="s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywnSdh" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywnSfj" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertFalse(java.lang.String,boolean)" resolve="assertFalse" />
              <node concept="Xl_RD" id="2y5ZLywnSfk" role="37wK5m">
                <property role="Xl_RC" value="en el borrador (Abierta --bloquear--&gt; Bloqueada) se viola" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywnSfN" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywnSfM" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywnSda" resolve="veredicto" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywnSfO" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywnSdm" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnSdl" role="3cpWs9">
              <property role="TrG5h" value="esperado" />
              <node concept="10Q1$e" id="2y5ZLywnSdo" role="1tU5fm">
                <node concept="3uibUv" id="2y5ZLywnSdn" role="10Q1$1">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLywnSds" role="33vP2m">
                <node concept="Xl_RD" id="2y5ZLywnSdp" role="2BsfMF">
                  <property role="Xl_RC" value="desbloquear" />
                </node>
                <node concept="Xl_RD" id="2y5ZLywnSdq" role="2BsfMF">
                  <property role="Xl_RC" value="abrir" />
                </node>
                <node concept="Xl_RD" id="2y5ZLywnSdr" role="2BsfMF">
                  <property role="Xl_RC" value="bloquear" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywnSdt" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywnSfo" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywnSfp" role="37wK5m">
                <property role="Xl_RC" value="contraejemplo mínimo exacto" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywnSfq" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLywnbfX" resolve="nombres" />
                <node concept="37vLTw" id="2y5ZLywnSfr" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnSdl" resolve="esperado" />
                </node>
              </node>
              <node concept="2OqwBi" id="2y5ZLywnSfS" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywnSfR" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywnSda" resolve="veredicto" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywnSfT" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywnSd$" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywnSdz" role="3cpWs9">
              <property role="TrG5h" value="h" />
              <node concept="3uibUv" id="2y5ZLywnSd_" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywnSfv" role="33vP2m">
                <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
                <ref role="37wK5l" to="op1a:2y5ZLyw1dnA" resolve="verificarPolitica" />
                <node concept="37vLTw" id="2y5ZLywnSfw" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnScE" resolve="borrador" />
                </node>
                <node concept="37vLTw" id="2y5ZLywnSfx" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnScQ" resolve="patron" />
                </node>
                <node concept="37vLTw" id="2y5ZLywnSfy" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnScA" resolve="s" />
                </node>
                <node concept="3clFbT" id="2y5ZLywnSfz" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywnSdF" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywnSfA" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.Object,java.lang.Object)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywnSfB" role="37wK5m">
                <property role="Xl_RC" value="Política violada: la traza 'desbloquear · abrir · bloquear' contiene el patrón prohibido" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywnSfX" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywnSfW" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywnSdz" resolve="h" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywnSfY" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ8" resolve="mensaje" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLywmSAA" role="1B3o_S" />
      </node>
      <node concept="3s$Bmu" id="2y5ZLywmSAB" role="3s_gse">
        <property role="TrG5h" value="testAfdMinimoCicloCompleto" />
        <property role="3s$Bm0" value="AfdMinimoCicloCompleto" />
        <node concept="3cqZAl" id="2y5ZLywmSAE" role="3clF45" />
        <node concept="3clFbS" id="2y5ZLywmSAF" role="3clF47">
          <node concept="3cpWs8" id="2y5ZLywofmB" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywofmA" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="2y5ZLywofmC" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywofmD" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbfu" resolve="sigma" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywofmF" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywofmE" role="3cpWs9">
              <property role="TrG5h" value="minimo" />
              <node concept="3uibUv" id="2y5ZLywofmG" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywofmH" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbjB" resolve="compilar" />
                <node concept="1rXfSq" id="2y5ZLywofmI" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbiq" resolve="cicloCompleto" />
                  <node concept="37vLTw" id="2y5ZLywofmJ" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywofmA" resolve="s" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywofmK" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywofny" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,long,long)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywofnz" role="37wK5m">
                <property role="Xl_RC" value="AFD mínimo completo de CicloCompleto" />
              </node>
              <node concept="3cmrfG" id="2y5ZLywofn$" role="37wK5m">
                <property role="3cmrfH" value="5" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywofnZ" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywofnY" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywofmE" resolve="minimo" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywofo0" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvIoou" resolve="stateCount" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywofmP" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywofnC" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
              <node concept="Xl_RD" id="2y5ZLywofnD" role="37wK5m">
                <property role="Xl_RC" value="uno de los 5 estados es el sumidero" />
              </node>
              <node concept="3y3z36" id="2y5ZLywofnE" role="37wK5m">
                <node concept="2OqwBi" id="2y5ZLywofop" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLywofo3" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLywofmE" resolve="minimo" />
                  </node>
                  <node concept="liA8E" id="2y5ZLywofoq" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIorA" resolve="sinkState" />
                  </node>
                </node>
                <node concept="1ZRNhn" id="2y5ZLywofnG" role="3uHU7w">
                  <node concept="3cmrfG" id="2y5ZLywofnH" role="2$L3a6">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywofmW" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywofnK" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.Object,java.lang.Object)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywofnL" role="37wK5m">
                <property role="Xl_RC" value="AFD mínimo de 5 estados (4 útiles + sumidero)" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywofo7" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJ3BU" resolve="describe" />
                <node concept="37vLTw" id="2y5ZLywofo8" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywofmE" resolve="minimo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywofn1" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywofnQ" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
              <node concept="Xl_RD" id="2y5ZLywofnR" role="37wK5m">
                <property role="Xl_RC" value="minimizar es idempotente (isomorfismo)" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywofob" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK_ge" resolve="isomorfos" />
                <node concept="37vLTw" id="2y5ZLywofoc" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywofmE" resolve="minimo" />
                </node>
                <node concept="2YIFZM" id="2y5ZLywofot" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvJ3yO" resolve="minimize" />
                  <node concept="37vLTw" id="2y5ZLywofou" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywofmE" resolve="minimo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLywmSAG" role="1B3o_S" />
      </node>
      <node concept="3s$Bmu" id="2y5ZLywmSAH" role="3s_gse">
        <property role="TrG5h" value="testSimuladorRechazaAbrirEnPaso1" />
        <property role="3s$Bm0" value="SimuladorRechazaAbrirEnPaso1" />
        <node concept="3cqZAl" id="2y5ZLywmSAK" role="3clF45" />
        <node concept="3clFbS" id="2y5ZLywmSAL" role="3clF47">
          <node concept="3cpWs8" id="2y5ZLywoAOR" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywoAOQ" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="2y5ZLywoAOS" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywoAOT" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbfu" resolve="sigma" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywoAOV" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywoAOU" role="3cpWs9">
              <property role="TrG5h" value="soloAbrir" />
              <node concept="10Q1$e" id="2y5ZLywoAOX" role="1tU5fm">
                <node concept="3uibUv" id="2y5ZLywoAOW" role="10Q1$1">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLywoAOZ" role="33vP2m">
                <node concept="Xl_RD" id="2y5ZLywoAOY" role="2BsfMF">
                  <property role="Xl_RC" value="abrir" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywoAP1" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywoAP0" role="3cpWs9">
              <property role="TrG5h" value="palabra" />
              <node concept="3uibUv" id="2y5ZLywoAP2" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2y5ZLywoAP3" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
              <node concept="2OqwBi" id="2y5ZLywoAT7" role="33vP2m">
                <node concept="37vLTw" id="2y5ZLywoARn" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywoAOQ" resolve="s" />
                </node>
                <node concept="liA8E" id="2y5ZLywoAT8" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvHE7I" resolve="wordOf" />
                  <node concept="1rXfSq" id="2y5ZLywoAT9" role="37wK5m">
                    <ref role="37wK5l" node="2y5ZLywnbfX" resolve="nombres" />
                    <node concept="37vLTw" id="2y5ZLywoATa" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLywoAOU" resolve="soloAbrir" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywoAP8" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywoAP7" role="3cpWs9">
              <property role="TrG5h" value="r" />
              <node concept="3uibUv" id="2y5ZLywoAP9" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHQQN" resolve="SimulationResult" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywoARt" role="33vP2m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
                <node concept="1rXfSq" id="2y5ZLywoARu" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbhh" resolve="cerradura" />
                  <node concept="37vLTw" id="2y5ZLywoARv" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywoAOQ" resolve="s" />
                  </node>
                </node>
                <node concept="37vLTw" id="2y5ZLywoARw" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywoAP0" resolve="palabra" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywoAPe" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywoARz" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertFalse(java.lang.String,boolean)" resolve="assertFalse" />
              <node concept="Xl_RD" id="2y5ZLywoAR$" role="37wK5m">
                <property role="Xl_RC" value="el escenario (abrir) se rechaza" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywoATe" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywoATd" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywoAP7" resolve="r" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywoATf" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywoAPi" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywoARC" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,long,long)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywoARD" role="37wK5m">
                <property role="Xl_RC" value="falla en el paso 1" />
              </node>
              <node concept="3cmrfG" id="2y5ZLywoARE" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywoATj" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywoATi" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywoAP7" resolve="r" />
                </node>
                <node concept="2OwXpG" id="2y5ZLywoATk" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQQZ" resolve="failedStep" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywoAPn" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywoARI" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywoARJ" role="37wK5m">
                <property role="Xl_RC" value="la traza se queda en Bloqueada" />
              </node>
              <node concept="Xl_RD" id="2y5ZLywoARK" role="37wK5m">
                <property role="Xl_RC" value="Bloqueada" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywoATn" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                <ref role="37wK5l" to="op1a:2y5ZLyvKsth" resolve="formatTrace" />
                <node concept="37vLTw" id="2y5ZLywoATo" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywoAP7" resolve="r" />
                </node>
                <node concept="1rXfSq" id="2y5ZLywoATp" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgv" resolve="estados" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywoAPv" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywoAPu" role="3cpWs9">
              <property role="TrG5h" value="hallazgos" />
              <node concept="3uibUv" id="2y5ZLywoAPw" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2y5ZLywoAPx" role="11_B2D">
                  <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                </node>
              </node>
              <node concept="2YIFZM" id="2y5ZLywoARQ" role="33vP2m">
                <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
                <ref role="37wK5l" to="op1a:2y5ZLyw1dp$" resolve="simularEscenario" />
                <node concept="1rXfSq" id="2y5ZLywoARR" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbhh" resolve="cerradura" />
                  <node concept="37vLTw" id="2y5ZLywoARS" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywoAOQ" resolve="s" />
                  </node>
                </node>
                <node concept="37vLTw" id="2y5ZLywoART" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywoAP0" resolve="palabra" />
                </node>
                <node concept="1rXfSq" id="2y5ZLywoARU" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgv" resolve="estados" />
                </node>
                <node concept="37vLTw" id="2y5ZLywoARV" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywoAOQ" resolve="s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywoAPC" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywoARY" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(long,long)" resolve="assertEquals" />
              <node concept="10M0yZ" id="2y5ZLywoATs" role="37wK5m">
                <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                <ref role="3cqZAo" to="op1a:2y5ZLyw0JYo" resolve="WARNING" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywoAS0" role="37wK5m">
                <node concept="2OqwBi" id="2y5ZLywoAW6" role="2Oq$k0">
                  <node concept="37vLTw" id="2y5ZLywoATv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLywoAPu" resolve="hallazgos" />
                  </node>
                  <node concept="liA8E" id="2y5ZLywoAW7" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="2y5ZLywoAW8" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="2y5ZLywoAS3" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyw0JYW" resolve="severidad" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywoAPJ" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywoASe" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(long,long)" resolve="assertEquals" />
              <node concept="10M0yZ" id="2y5ZLywoAT$" role="37wK5m">
                <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                <ref role="3cqZAo" to="op1a:2y5ZLyw0JYP" resolve="EN_PASO" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywoASg" role="37wK5m">
                <node concept="2OqwBi" id="2y5ZLywoAYr" role="2Oq$k0">
                  <node concept="37vLTw" id="2y5ZLywoATB" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLywoAPu" resolve="hallazgos" />
                  </node>
                  <node concept="liA8E" id="2y5ZLywoAYs" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="2y5ZLywoAYt" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="2y5ZLywoASj" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ0" resolve="lugar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywoAPQ" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywoASu" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,long,long)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywoASv" role="37wK5m">
                <property role="Xl_RC" value="se marca el primer ScenarioStep (índice 0)" />
              </node>
              <node concept="3cmrfG" id="2y5ZLywoASw" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywoASx" role="37wK5m">
                <node concept="2OqwBi" id="2y5ZLywoB0K" role="2Oq$k0">
                  <node concept="37vLTw" id="2y5ZLywoATG" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLywoAPu" resolve="hallazgos" />
                  </node>
                  <node concept="liA8E" id="2y5ZLywoB0L" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="2y5ZLywoB0M" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="2y5ZLywoAS$" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ4" resolve="indice" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywoAPY" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywoASJ" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.Object,java.lang.Object)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywoASK" role="37wK5m">
                <property role="Xl_RC" value="Rechazado en el paso 1: desde 'Bloqueada' no hay transición con 'abrir'" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywoASL" role="37wK5m">
                <node concept="2OqwBi" id="2y5ZLywoB35" role="2Oq$k0">
                  <node concept="37vLTw" id="2y5ZLywoATL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLywoAPu" resolve="hallazgos" />
                  </node>
                  <node concept="liA8E" id="2y5ZLywoB36" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="2y5ZLywoB37" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="2y5ZLywoASO" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ8" resolve="mensaje" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLywmSAM" role="1B3o_S" />
      </node>
      <node concept="3s$Bmu" id="2y5ZLywmSAN" role="3s_gse">
        <property role="TrG5h" value="testIdaYVueltaKleene" />
        <property role="3s$Bm0" value="IdaYVueltaKleene" />
        <node concept="3cqZAl" id="2y5ZLywmSAQ" role="3clF45" />
        <node concept="3clFbS" id="2y5ZLywmSAR" role="3clF47">
          <node concept="3cpWs8" id="2y5ZLywp2ZR" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywp2ZQ" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <node concept="3uibUv" id="2y5ZLywp2ZS" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywp2ZT" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbfu" resolve="sigma" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywp2ZV" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywp2ZU" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="2y5ZLywp2ZW" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywp2ZX" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbhh" resolve="cerradura" />
                <node concept="37vLTw" id="2y5ZLywp2ZY" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp2ZQ" resolve="s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywp300" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywp2ZZ" role="3cpWs9">
              <property role="TrG5h" value="er" />
              <node concept="3uibUv" id="2y5ZLywp301" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvINsF" resolve="Regex" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywp326" role="33vP2m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvKfuh" resolve="StateEliminator" />
                <ref role="37wK5l" to="op1a:2y5ZLyvKfuz" resolve="toRegex" />
                <node concept="37vLTw" id="2y5ZLywp327" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp2ZU" resolve="a" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywp304" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywp32a" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertEquals" />
              <node concept="Xl_RD" id="2y5ZLywp32b" role="37wK5m">
                <property role="Xl_RC" value="ER obtenida por eliminación de estados (Kleene 2)" />
              </node>
              <node concept="Xl_RD" id="2y5ZLywp32c" role="37wK5m">
                <property role="Xl_RC" value="(desbloquear · (abrir · cerrar)* · bloquear | forzar · desactivar)*" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywp32T" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvKfuh" resolve="StateEliminator" />
                <ref role="37wK5l" to="op1a:2y5ZLyvKfuj" resolve="toRegexString" />
                <node concept="37vLTw" id="2y5ZLywp32U" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp2ZU" resolve="a" />
                </node>
                <node concept="37vLTw" id="2y5ZLywp32V" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp2ZQ" resolve="s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywp30c" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywp30b" role="3cpWs9">
              <property role="TrG5h" value="ida" />
              <node concept="3uibUv" id="2y5ZLywp30d" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywp30e" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbjB" resolve="compilar" />
                <node concept="2OqwBi" id="2y5ZLywp336" role="37wK5m">
                  <node concept="37vLTw" id="2y5ZLywp32i" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLywp2ZZ" resolve="er" />
                  </node>
                  <node concept="liA8E" id="2y5ZLywp337" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIN$x" resolve="toNfa" />
                    <node concept="2OqwBi" id="2y5ZLywp33L" role="37wK5m">
                      <node concept="37vLTw" id="2y5ZLywp33_" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLywp2ZQ" resolve="s" />
                      </node>
                      <node concept="liA8E" id="2y5ZLywp33M" role="2OqNvi">
                        <ref role="37wK5l" to="op1a:2y5ZLyvHE74" resolve="size" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2y5ZLywp30i" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLywp30h" role="3cpWs9">
              <property role="TrG5h" value="original" />
              <node concept="3uibUv" id="2y5ZLywp30j" role="1tU5fm">
                <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
              </node>
              <node concept="1rXfSq" id="2y5ZLywp30k" role="33vP2m">
                <ref role="37wK5l" node="2y5ZLywnbjB" resolve="compilar" />
                <node concept="37vLTw" id="2y5ZLywp30l" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp2ZU" resolve="a" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywp30m" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywp32n" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
              <node concept="Xl_RD" id="2y5ZLywp32o" role="37wK5m">
                <property role="Xl_RC" value="equivalentes(min(det(Thompson(StateElim(A)))), min(det(A)))" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywp33b" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
                <node concept="37vLTw" id="2y5ZLywp33c" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp30b" resolve="ida" />
                </node>
                <node concept="37vLTw" id="2y5ZLywp33d" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp30h" resolve="original" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywp30s" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywp32u" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
              <node concept="Xl_RD" id="2y5ZLywp32v" role="37wK5m">
                <property role="Xl_RC" value="los dos AFD mínimos son isomorfos" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywp33g" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK_ge" resolve="isomorfos" />
                <node concept="37vLTw" id="2y5ZLywp33h" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp30b" resolve="ida" />
                </node>
                <node concept="37vLTw" id="2y5ZLywp33i" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp30h" resolve="original" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywp30y" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywp32_" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
              <node concept="Xl_RD" id="2y5ZLywp32A" role="37wK5m">
                <property role="Xl_RC" value="L(Cerradura) = L(CicloCompleto)" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywp33l" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
                <node concept="37vLTw" id="2y5ZLywp33m" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywp30h" resolve="original" />
                </node>
                <node concept="1rXfSq" id="2y5ZLywp33n" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbjB" resolve="compilar" />
                  <node concept="1rXfSq" id="2y5ZLywp33o" role="37wK5m">
                    <ref role="37wK5l" node="2y5ZLywnbiq" resolve="cicloCompleto" />
                    <node concept="37vLTw" id="2y5ZLywp33p" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLywp2ZQ" resolve="s" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLywp30E" role="3cqZAp">
            <node concept="2YIFZM" id="2y5ZLywp32I" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertFalse(java.lang.String,boolean)" resolve="assertFalse" />
              <node concept="Xl_RD" id="2y5ZLywp32J" role="37wK5m">
                <property role="Xl_RC" value="caso negativo: CicloCompleto no equivale a (d·a·c·b)*" />
              </node>
              <node concept="2YIFZM" id="2y5ZLywp33s" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
                <node concept="1rXfSq" id="2y5ZLywp33t" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbjB" resolve="compilar" />
                  <node concept="1rXfSq" id="2y5ZLywp33u" role="37wK5m">
                    <ref role="37wK5l" node="2y5ZLywnbiq" resolve="cicloCompleto" />
                    <node concept="37vLTw" id="2y5ZLywp33v" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLywp2ZQ" resolve="s" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLywp33w" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbjB" resolve="compilar" />
                  <node concept="1rXfSq" id="2y5ZLywp33x" role="37wK5m">
                    <ref role="37wK5l" node="2y5ZLywnbj9" resolve="siempreAbrir" />
                    <node concept="37vLTw" id="2y5ZLywp33y" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLywp2ZQ" resolve="s" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLywmSAS" role="1B3o_S" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2y5ZLywmSAT" role="1B3o_S" />
    <node concept="2YIFZL" id="2y5ZLywnbfu" role="jymVt">
      <property role="TrG5h" value="sigma" />
      <node concept="3clFbS" id="2y5ZLywnbfv" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywnbfx" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywnbfw" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="2y5ZLywnbfy" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
            </node>
            <node concept="2ShNRf" id="2y5ZLywnbmz" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLywnbm_" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE5q" resolve="Alphabet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbf$" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbpp" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbmC" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbfw" resolve="s" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbpq" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLywnbpr" role="37wK5m">
                <property role="Xl_RC" value="desbloquear" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbfB" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbpA" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbmH" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbfw" resolve="s" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbpB" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLywnbpC" role="37wK5m">
                <property role="Xl_RC" value="abrir" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbfE" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbpN" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbmM" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbfw" resolve="s" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbpO" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLywnbpP" role="37wK5m">
                <property role="Xl_RC" value="cerrar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbfH" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbq0" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbmR" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbfw" resolve="s" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbq1" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLywnbq2" role="37wK5m">
                <property role="Xl_RC" value="bloquear" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbfK" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbqd" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbmW" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbfw" resolve="s" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbqe" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLywnbqf" role="37wK5m">
                <property role="Xl_RC" value="forzar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbfN" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbqq" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbn1" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbfw" resolve="s" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbqr" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLywnbqs" role="37wK5m">
                <property role="Xl_RC" value="desactivar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLywnbfQ" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLywnbfR" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLywnbfw" resolve="s" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywnbfS" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLywnbfT" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
      </node>
      <node concept="P$JXv" id="2y5ZLywnbfU" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLywnbfV" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywnbfW" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLywnbjL" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywnbjM" role="1PaTwD">
            <property role="3oM_SC" value="Alfabeto" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjN" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjO" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjP" role="1PaTwD">
            <property role="3oM_SC" value="Cerradura" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjQ" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjR" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjS" role="1PaTwD">
            <property role="3oM_SC" value="§2," />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjT" role="1PaTwD">
            <property role="3oM_SC" value="en" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjU" role="1PaTwD">
            <property role="3oM_SC" value="orden" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjV" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjW" role="1PaTwD">
            <property role="3oM_SC" value="declaración." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLywnbfX" role="jymVt">
      <property role="TrG5h" value="nombres" />
      <node concept="37vLTG" id="2y5ZLywnbfY" role="3clF46">
        <property role="TrG5h" value="items" />
        <node concept="10Q1$e" id="2y5ZLywnbg0" role="1tU5fm">
          <node concept="3uibUv" id="2y5ZLywnbfZ" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLywnbg1" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywnbg3" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywnbg2" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2y5ZLywnbg4" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLywnbg5" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLywnbn4" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLywnbn9" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLywnbna" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLywnbg8" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywnbg9" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLywnbgb" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLywnbgc" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLywnbgd" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLywnbge" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLywnbg9" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2y5ZLywnbne" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLywnbnd" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywnbfY" resolve="items" />
              </node>
              <node concept="1Rwk04" id="2y5ZLywnbAz" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLywnbgh" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLywnbgi" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLywnbg9" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLywnbgk" role="2LFqv$">
            <node concept="3clFbF" id="2y5ZLywnbgl" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLywnbsJ" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLywnbni" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywnbg2" resolve="result" />
                </node>
                <node concept="liA8E" id="2y5ZLywnbsK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="AH0OO" id="2y5ZLywnbsL" role="37wK5m">
                    <node concept="37vLTw" id="2y5ZLywnbsM" role="AHHXb">
                      <ref role="3cqZAo" node="2y5ZLywnbfY" resolve="items" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLywnbsN" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLywnbg9" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLywnbgq" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLywnbgr" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLywnbg2" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywnbgs" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLywnbgt" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2y5ZLywnbgu" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLywnbgv" role="jymVt">
      <property role="TrG5h" value="estados" />
      <node concept="3clFbS" id="2y5ZLywnbgw" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywnbgy" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywnbgx" role="3cpWs9">
            <property role="TrG5h" value="items" />
            <node concept="10Q1$e" id="2y5ZLywnbg$" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLywnbgz" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLywnbgD" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLywnbg_" role="2BsfMF">
                <property role="Xl_RC" value="Bloqueada" />
              </node>
              <node concept="Xl_RD" id="2y5ZLywnbgA" role="2BsfMF">
                <property role="Xl_RC" value="Desbloqueada" />
              </node>
              <node concept="Xl_RD" id="2y5ZLywnbgB" role="2BsfMF">
                <property role="Xl_RC" value="Abierta" />
              </node>
              <node concept="Xl_RD" id="2y5ZLywnbgC" role="2BsfMF">
                <property role="Xl_RC" value="Intrusion" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLywnbgE" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLywnbgF" role="3cqZAk">
            <ref role="37wK5l" node="2y5ZLywnbfX" resolve="nombres" />
            <node concept="37vLTw" id="2y5ZLywnbgG" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbgx" resolve="items" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywnbgH" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLywnbgI" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2y5ZLywnbgJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLywnbgK" role="jymVt">
      <property role="TrG5h" value="sym" />
      <node concept="37vLTG" id="2y5ZLywnbgL" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="2y5ZLywnbgM" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLywnbgN" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="2y5ZLywnbgO" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLywnbgP" role="3clF47">
        <node concept="3cpWs6" id="2y5ZLywnbgQ" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywnbnp" role="3cqZAk">
            <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
            <ref role="37wK5l" to="op1a:2y5ZLyvIuNF" resolve="symbol" />
            <node concept="2OqwBi" id="2y5ZLywnbxb" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLywnbsQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywnbgL" resolve="s" />
              </node>
              <node concept="liA8E" id="2y5ZLywnbxc" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE6s" resolve="indexOf" />
                <node concept="37vLTw" id="2y5ZLywnbxd" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnbgN" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLywnbxn" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLywnbsV" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywnbgL" resolve="s" />
              </node>
              <node concept="liA8E" id="2y5ZLywnbxo" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE74" resolve="size" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywnbgV" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLywnbgW" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLywnbgX" role="jymVt">
      <property role="TrG5h" value="transicion" />
      <node concept="37vLTG" id="2y5ZLywnbgY" role="3clF46">
        <property role="TrG5h" value="nfa" />
        <node concept="3uibUv" id="2y5ZLywnbgZ" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLywnbh0" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="2y5ZLywnbh1" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLywnbh2" role="3clF46">
        <property role="TrG5h" value="origen" />
        <node concept="10Oyi0" id="2y5ZLywnbh3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2y5ZLywnbh4" role="3clF46">
        <property role="TrG5h" value="evento" />
        <node concept="3uibUv" id="2y5ZLywnbh5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLywnbh6" role="3clF46">
        <property role="TrG5h" value="destino" />
        <node concept="10Oyi0" id="2y5ZLywnbh7" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2y5ZLywnbh8" role="3clF47">
        <node concept="3clFbF" id="2y5ZLywnbh9" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbt6" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbnv" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbgY" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbt7" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="37vLTw" id="2y5ZLywnbt8" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywnbh2" resolve="origen" />
              </node>
              <node concept="2OqwBi" id="2y5ZLywnbxM" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLywnbxr" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLywnbh0" resolve="s" />
                </node>
                <node concept="liA8E" id="2y5ZLywnbxN" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvHE6s" resolve="indexOf" />
                  <node concept="37vLTw" id="2y5ZLywnbxO" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnbh4" resolve="evento" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLywnbtb" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywnbh6" resolve="destino" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywnbhf" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLywnbhg" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLywnbhh" role="jymVt">
      <property role="TrG5h" value="cerradura" />
      <node concept="37vLTG" id="2y5ZLywnbhi" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="2y5ZLywnbhj" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLywnbhk" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywnbhm" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywnbhl" role="3cpWs9">
            <property role="TrG5h" value="nfa" />
            <node concept="3uibUv" id="2y5ZLywnbhn" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2ShNRf" id="2y5ZLywnbn_" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLywnbnN" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHYk$" resolve="Nfa" />
                <node concept="2OqwBi" id="2y5ZLywnbxB" role="37wK5m">
                  <node concept="37vLTw" id="2y5ZLywnbte" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLywnbhi" resolve="s" />
                  </node>
                  <node concept="liA8E" id="2y5ZLywnbxC" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvHE74" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhq" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbtq" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbnR" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbtr" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhs" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbtA" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbnV" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbtB" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhu" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbtM" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbnZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbtN" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhw" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbtY" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywnbo3" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLywnbtZ" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhy" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLywnbhz" role="3clFbG">
            <node concept="2OqwBi" id="2y5ZLywnbo8" role="37vLTJ">
              <node concept="37vLTw" id="2y5ZLywnbo7" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywnbo9" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkg" resolve="initial" />
              </node>
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbh_" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhA" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLywnbwk" role="3clFbG">
            <node concept="2OqwBi" id="2y5ZLywnbod" role="2Oq$k0">
              <node concept="37vLTw" id="2y5ZLywnboc" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywnboe" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkk" resolve="accepting" />
              </node>
            </node>
            <node concept="liA8E" id="2y5ZLywnbwl" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="3cmrfG" id="2y5ZLywnbwm" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhD" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLywnbhE" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLywnbgX" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLywnbhF" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLywnbhG" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhi" resolve="s" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbhH" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="Xl_RD" id="2y5ZLywnbhI" role="37wK5m">
              <property role="Xl_RC" value="desbloquear" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbhJ" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhK" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLywnbhL" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLywnbgX" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLywnbhM" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLywnbhN" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhi" resolve="s" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbhO" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="Xl_RD" id="2y5ZLywnbhP" role="37wK5m">
              <property role="Xl_RC" value="abrir" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbhQ" role="37wK5m">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhR" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLywnbhS" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLywnbgX" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLywnbhT" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLywnbhU" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhi" resolve="s" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbhV" role="37wK5m">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="Xl_RD" id="2y5ZLywnbhW" role="37wK5m">
              <property role="Xl_RC" value="cerrar" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbhX" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbhY" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLywnbhZ" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLywnbgX" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLywnbi0" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLywnbi1" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhi" resolve="s" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbi2" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="Xl_RD" id="2y5ZLywnbi3" role="37wK5m">
              <property role="Xl_RC" value="bloquear" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbi4" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbi5" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLywnbi6" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLywnbgX" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLywnbi7" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLywnbi8" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhi" resolve="s" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbi9" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="Xl_RD" id="2y5ZLywnbia" role="37wK5m">
              <property role="Xl_RC" value="forzar" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbib" role="37wK5m">
              <property role="3cmrfH" value="3" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywnbic" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLywnbid" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLywnbgX" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLywnbie" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLywnbif" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbhi" resolve="s" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbig" role="37wK5m">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="Xl_RD" id="2y5ZLywnbih" role="37wK5m">
              <property role="Xl_RC" value="desactivar" />
            </node>
            <node concept="3cmrfG" id="2y5ZLywnbii" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLywnbij" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLywnbik" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLywnbhl" resolve="nfa" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywnbil" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLywnbim" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
      <node concept="P$JXv" id="2y5ZLywnbin" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLywnbio" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywnbip" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLywnbjX" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywnbjY" role="1PaTwD">
            <property role="3oM_SC" value="La" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbjZ" role="1PaTwD">
            <property role="3oM_SC" value="Cerradura" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbk0" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbk1" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbk2" role="1PaTwD">
            <property role="3oM_SC" value="§2:" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbk3" role="1PaTwD">
            <property role="3oM_SC" value="Bloqueada=0," />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbk4" role="1PaTwD">
            <property role="3oM_SC" value="Desbloqueada=1," />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbk5" role="1PaTwD">
            <property role="3oM_SC" value="Abierta=2," />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbk6" role="1PaTwD">
            <property role="3oM_SC" value="Intrusion=3." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLywnbiq" role="jymVt">
      <property role="TrG5h" value="cicloCompleto" />
      <node concept="37vLTG" id="2y5ZLywnbir" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="2y5ZLywnbis" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLywnbit" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywnbiv" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywnbiu" role="3cpWs9">
            <property role="TrG5h" value="visita" />
            <node concept="3uibUv" id="2y5ZLywnbiw" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywnboj" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuQQ" resolve="star" />
              <node concept="2YIFZM" id="2y5ZLywnbwp" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="1rXfSq" id="2y5ZLywnbwq" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                  <node concept="37vLTw" id="2y5ZLywnbwr" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnbir" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywnbws" role="37wK5m">
                    <property role="Xl_RC" value="abrir" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLywnbwt" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                  <node concept="37vLTw" id="2y5ZLywnbwu" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnbir" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywnbwv" role="37wK5m">
                    <property role="Xl_RC" value="cerrar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywnbiE" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywnbiD" role="3cpWs9">
            <property role="TrG5h" value="entrada" />
            <node concept="3uibUv" id="2y5ZLywnbiF" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywnbot" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
              <node concept="2YIFZM" id="2y5ZLywnbwy" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="1rXfSq" id="2y5ZLywnbwz" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                  <node concept="37vLTw" id="2y5ZLywnbw$" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnbir" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywnbw_" role="37wK5m">
                    <property role="Xl_RC" value="desbloquear" />
                  </node>
                </node>
                <node concept="37vLTw" id="2y5ZLywnbwA" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnbiu" resolve="visita" />
                </node>
              </node>
              <node concept="1rXfSq" id="2y5ZLywnboz" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                <node concept="37vLTw" id="2y5ZLywnbo$" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnbir" resolve="s" />
                </node>
                <node concept="Xl_RD" id="2y5ZLywnbo_" role="37wK5m">
                  <property role="Xl_RC" value="bloquear" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywnbiQ" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywnbiP" role="3cpWs9">
            <property role="TrG5h" value="alarma" />
            <node concept="3uibUv" id="2y5ZLywnbiR" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywnboC" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
              <node concept="1rXfSq" id="2y5ZLywnboD" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                <node concept="37vLTw" id="2y5ZLywnboE" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnbir" resolve="s" />
                </node>
                <node concept="Xl_RD" id="2y5ZLywnboF" role="37wK5m">
                  <property role="Xl_RC" value="forzar" />
                </node>
              </node>
              <node concept="1rXfSq" id="2y5ZLywnboG" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                <node concept="37vLTw" id="2y5ZLywnboH" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywnbir" resolve="s" />
                </node>
                <node concept="Xl_RD" id="2y5ZLywnboI" role="37wK5m">
                  <property role="Xl_RC" value="desactivar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLywnbiZ" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywnboL" role="3cqZAk">
            <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
            <ref role="37wK5l" to="op1a:2y5ZLyvIuQQ" resolve="star" />
            <node concept="2YIFZM" id="2y5ZLywnbwD" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuO$" resolve="union" />
              <node concept="37vLTw" id="2y5ZLywnbwE" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywnbiD" resolve="entrada" />
              </node>
              <node concept="37vLTw" id="2y5ZLywnbwF" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywnbiP" resolve="alarma" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywnbj4" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLywnbj5" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
      <node concept="P$JXv" id="2y5ZLywnbj6" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLywnbj7" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywnbj8" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLywnbk7" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywnbk8" role="1PaTwD">
            <property role="3oM_SC" value="((desbloquear" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbk9" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbka" role="1PaTwD">
            <property role="3oM_SC" value="(abrir" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkb" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkc" role="1PaTwD">
            <property role="3oM_SC" value="cerrar)*" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkd" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbke" role="1PaTwD">
            <property role="3oM_SC" value="bloquear)" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkf" role="1PaTwD">
            <property role="3oM_SC" value="|" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkg" role="1PaTwD">
            <property role="3oM_SC" value="(forzar" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkh" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbki" role="1PaTwD">
            <property role="3oM_SC" value="desactivar))*" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLywnbj9" role="jymVt">
      <property role="TrG5h" value="siempreAbrir" />
      <node concept="37vLTG" id="2y5ZLywnbja" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="3uibUv" id="2y5ZLywnbjb" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLywnbjc" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywnbje" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywnbjd" role="3cpWs9">
            <property role="TrG5h" value="ciclo" />
            <node concept="3uibUv" id="2y5ZLywnbjf" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywnboR" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
              <node concept="2YIFZM" id="2y5ZLywnbwI" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="1rXfSq" id="2y5ZLywnbwJ" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                  <node concept="37vLTw" id="2y5ZLywnbwK" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnbja" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywnbwL" role="37wK5m">
                    <property role="Xl_RC" value="desbloquear" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLywnbwM" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                  <node concept="37vLTw" id="2y5ZLywnbwN" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnbja" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywnbwO" role="37wK5m">
                    <property role="Xl_RC" value="abrir" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="2y5ZLywnbwR" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="1rXfSq" id="2y5ZLywnbwS" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                  <node concept="37vLTw" id="2y5ZLywnbwT" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnbja" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywnbwU" role="37wK5m">
                    <property role="Xl_RC" value="cerrar" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLywnbwV" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLywnbgK" resolve="sym" />
                  <node concept="37vLTw" id="2y5ZLywnbwW" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywnbja" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywnbwX" role="37wK5m">
                    <property role="Xl_RC" value="bloquear" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLywnbjv" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywnbp8" role="3cqZAk">
            <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
            <ref role="37wK5l" to="op1a:2y5ZLyvIuQQ" resolve="star" />
            <node concept="37vLTw" id="2y5ZLywnbp9" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLywnbjd" resolve="ciclo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywnbjy" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLywnbjz" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
      <node concept="P$JXv" id="2y5ZLywnbj$" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLywnbj_" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywnbjA" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLywnbkj" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywnbkk" role="1PaTwD">
            <property role="3oM_SC" value="(desbloquear" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkl" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkm" role="1PaTwD">
            <property role="3oM_SC" value="abrir" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkn" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbko" role="1PaTwD">
            <property role="3oM_SC" value="cerrar" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkp" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywnbkq" role="1PaTwD">
            <property role="3oM_SC" value="bloquear)*" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLywnbjB" role="jymVt">
      <property role="TrG5h" value="compilar" />
      <node concept="37vLTG" id="2y5ZLywnbjC" role="3clF46">
        <property role="TrG5h" value="nfa" />
        <node concept="3uibUv" id="2y5ZLywnbjD" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLywnbjE" role="3clF47">
        <node concept="3cpWs6" id="2y5ZLywnbjF" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLywnbpc" role="3cqZAk">
            <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
            <ref role="37wK5l" to="op1a:2y5ZLyvJ3yO" resolve="minimize" />
            <node concept="2YIFZM" id="2y5ZLywnbx0" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvISWL" resolve="SubsetConstruction" />
              <ref role="37wK5l" to="op1a:2y5ZLyvISWN" resolve="determinize" />
              <node concept="37vLTw" id="2y5ZLywnbx1" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywnbjC" resolve="nfa" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywnbjJ" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLywnbjK" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
      </node>
    </node>
  </node>
</model>

