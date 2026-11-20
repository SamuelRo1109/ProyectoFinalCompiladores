<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:142f4ddb-aa66-4d7c-9eb3-e987e01829c2(domus.lang.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="op1a" ref="r:edb40588-6aa3-4d1b-9aa3-15b2491e5c9f(domus.reasoner.automata)" />
    <import index="87dd" ref="r:4b7847dc-a8ae-4b74-bfe3-e8b3ce796b4a(domus.lang.generator.util)" />
    <import index="p4tm" ref="r:dbde8baf-0fe0-4595-838d-181b53f5988b(domus.lang.structure)" />
    <import index="yke2" ref="r:4dce9d5d-5ab6-48ea-bb93-9da0a6a589ad(domus.lang.behavior)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
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
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="5015072279636592410" name="jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery" flags="in" index="2jfdEK" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="lg" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1048903277984099206" name="jetbrains.mps.lang.generator.structure.VarDeclaration" flags="ng" index="1ps_xZ">
        <child id="1048903277984099209" name="type" index="1ps_xK" />
        <child id="1048903277984099210" name="value" index="1ps_xN" />
      </concept>
      <concept id="1048903277984099198" name="jetbrains.mps.lang.generator.structure.VarMacro2" flags="lg" index="1ps_y7">
        <child id="1048903277984099213" name="variables" index="1ps_xO" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="ig" index="3JmXsc" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="lg" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="lg" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1048903277984174662" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_VarRef2" flags="nn" index="1psM6Z">
        <reference id="1048903277984174663" name="vardecl" index="1psM6Y" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
    </language>
  </registry>
  <node concept="bUwia" id="57H1jONkoy5">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="2y5ZLywa21m" role="3lj3bC">
      <ref role="30HIoZ" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
      <ref role="3lhOvi" node="2y5ZLyw9pO_" resolve="GeneratedHomeSystem_Plantilla" />
    </node>
  </node>
  <node concept="312cEu" id="2y5ZLyw9pO_">
    <property role="TrG5h" value="GeneratedHomeSystem_Plantilla" />
    <node concept="3Tm1VV" id="2y5ZLyw9pOA" role="1B3o_S" />
    <node concept="3UR2Jj" id="2y5ZLyw9pWU" role="lGtFl">
      <node concept="1PaTwC" id="2y5ZLyw9pWV" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyw9pWW" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyw9pX0" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyw9pX1" role="1PaTwD">
          <property role="3oM_SC" value="Clase" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pX2" role="1PaTwD">
          <property role="3oM_SC" value="generada" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pX3" role="1PaTwD">
          <property role="3oM_SC" value="por" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pX4" role="1PaTwD">
          <property role="3oM_SC" value="domus.lang" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pX5" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pX6" role="1PaTwD">
          <property role="3oM_SC" value="partir" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pX7" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pX8" role="1PaTwD">
          <property role="3oM_SC" value="un" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pX9" role="1PaTwD">
          <property role="3oM_SC" value="HomeSystem." />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXa" role="1PaTwD">
          <property role="3oM_SC" value="Es" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXb" role="1PaTwD">
          <property role="3oM_SC" value="autocontenida:" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXc" role="1PaTwD">
          <property role="3oM_SC" value="no" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXd" role="1PaTwD">
          <property role="3oM_SC" value="depende" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXe" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyw9pXf" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyw9pXg" role="1PaTwD">
          <property role="3oM_SC" value="domus.reasoner" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXh" role="1PaTwD">
          <property role="3oM_SC" value="ni" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXi" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXj" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXk" role="1PaTwD">
          <property role="3oM_SC" value="en" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXl" role="1PaTwD">
          <property role="3oM_SC" value="tiempo" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXm" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw9pXn" role="1PaTwD">
          <property role="3oM_SC" value="ejecución." />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2y5ZLyw9pTh" role="jymVt">
      <property role="TrG5h" value="REPORTE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2y5ZLyw9pTi" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="2y5ZLyw9pTj" role="33vP2m">
        <property role="Xl_RC" value="reporte" />
        <node concept="17Uvod" id="2y5ZLyw9KPa" role="lGtFl">
          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
          <property role="2qtEX9" value="value" />
          <node concept="3zFVjK" id="2y5ZLyw9KPb" role="3zH0cK">
            <node concept="3clFbS" id="2y5ZLyw9KPc" role="2VODD2">
              <node concept="3cpWs8" id="2y5ZLyw9KPd" role="3cqZAp">
                <node concept="3cpWsn" id="2y5ZLyw9KPe" role="3cpWs9">
                  <property role="TrG5h" value="reporte" />
                  <node concept="17QB3L" id="2y5ZLyw9KPf" role="1tU5fm" />
                  <node concept="2YIFZM" id="2y5ZLyw9KPg" role="33vP2m">
                    <ref role="1Pybhc" to="87dd:2y5ZLyw96gB" resolve="ReporteDomus" />
                    <ref role="37wK5l" to="87dd:2y5ZLyw96gH" resolve="encabezado" />
                    <node concept="2OqwBi" id="2y5ZLyw9KPh" role="37wK5m">
                      <node concept="30H73N" id="2y5ZLyw9KPi" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2y5ZLyw9KPj" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2y5ZLyw9KPk" role="3cqZAp">
                <node concept="37vLTI" id="2y5ZLyw9KPl" role="3clFbG">
                  <node concept="37vLTw" id="2y5ZLyw9KPm" role="37vLTJ">
                    <ref role="3cqZAo" node="2y5ZLyw9KPe" resolve="reporte" />
                  </node>
                  <node concept="3cpWs3" id="2y5ZLyw9KPn" role="37vLTx">
                    <node concept="37vLTw" id="2y5ZLyw9KPo" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyw9KPe" resolve="reporte" />
                    </node>
                    <node concept="2YIFZM" id="2y5ZLyw9KPp" role="3uHU7w">
                      <ref role="1Pybhc" to="87dd:2y5ZLyw96gB" resolve="ReporteDomus" />
                      <ref role="37wK5l" to="87dd:2y5ZLyw96gZ" resolve="seccion" />
                      <node concept="Xl_RD" id="2y5ZLyw9KPq" role="37wK5m">
                        <property role="Xl_RC" value="Consistencia de dispositivos (§4.2) y ER equivalente (Kleene 2, §4.5)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="2y5ZLyw9KPr" role="3cqZAp">
                <node concept="2GrKxI" id="2y5ZLyw9KPs" role="2Gsz3X">
                  <property role="TrG5h" value="d" />
                </node>
                <node concept="2OqwBi" id="2y5ZLyw9KPt" role="2GsD0m">
                  <node concept="30H73N" id="2y5ZLyw9KPu" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2y5ZLyw9KPv" role="2OqNvi">
                    <ref role="3TtcxE" to="p4tm:57H1jONk_jV" resolve="devices" />
                  </node>
                </node>
                <node concept="3clFbS" id="2y5ZLyw9KPw" role="2LFqv$">
                  <node concept="3cpWs8" id="2y5ZLyw9KPx" role="3cqZAp">
                    <node concept="3cpWsn" id="2y5ZLyw9KPy" role="3cpWs9">
                      <property role="TrG5h" value="estados" />
                      <node concept="3uibUv" id="2y5ZLyw9KPz" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="2y5ZLyw9KP$" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="2y5ZLyw9KP_" role="33vP2m">
                        <node concept="1pGfFk" id="2y5ZLyw9KPA" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                          <node concept="3uibUv" id="2y5ZLyw9KPB" role="1pMfVU">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="2y5ZLyw9KPC" role="3cqZAp">
                    <node concept="2GrKxI" id="2y5ZLyw9KPD" role="2Gsz3X">
                      <property role="TrG5h" value="s" />
                    </node>
                    <node concept="2OqwBi" id="2y5ZLyw9KPE" role="2GsD0m">
                      <node concept="2GrUjf" id="2y5ZLyw9KPF" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2y5ZLyw9KPs" resolve="d" />
                      </node>
                      <node concept="3Tsc0h" id="2y5ZLyw9KPG" role="2OqNvi">
                        <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2y5ZLyw9KPH" role="2LFqv$">
                      <node concept="3clFbF" id="2y5ZLyw9KPI" role="3cqZAp">
                        <node concept="2OqwBi" id="2y5ZLyw9KPJ" role="3clFbG">
                          <node concept="37vLTw" id="2y5ZLyw9KPK" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyw9KPy" resolve="estados" />
                          </node>
                          <node concept="liA8E" id="2y5ZLyw9KPL" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                            <node concept="2OqwBi" id="2y5ZLyw9KPM" role="37wK5m">
                              <node concept="2GrUjf" id="2y5ZLyw9KPN" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="2y5ZLyw9KPD" resolve="s" />
                              </node>
                              <node concept="3TrcHB" id="2y5ZLyw9KPO" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2y5ZLyw9KPP" role="3cqZAp">
                    <node concept="37vLTI" id="2y5ZLyw9KPQ" role="3clFbG">
                      <node concept="37vLTw" id="2y5ZLyw9KPR" role="37vLTJ">
                        <ref role="3cqZAo" node="2y5ZLyw9KPe" resolve="reporte" />
                      </node>
                      <node concept="3cpWs3" id="2y5ZLyw9KPS" role="37vLTx">
                        <node concept="37vLTw" id="2y5ZLyw9KPT" role="3uHU7B">
                          <ref role="3cqZAo" node="2y5ZLyw9KPe" resolve="reporte" />
                        </node>
                        <node concept="2YIFZM" id="2y5ZLyw9KPU" role="3uHU7w">
                          <ref role="1Pybhc" to="87dd:2y5ZLyw96gB" resolve="ReporteDomus" />
                          <ref role="37wK5l" to="87dd:2y5ZLyw96hb" resolve="dispositivo" />
                          <node concept="2OqwBi" id="2y5ZLyw9KPV" role="37wK5m">
                            <node concept="2GrUjf" id="2y5ZLyw9KPW" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2y5ZLyw9KPs" resolve="d" />
                            </node>
                            <node concept="3TrcHB" id="2y5ZLyw9KPX" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2y5ZLyw9KPY" role="37wK5m">
                            <node concept="2GrUjf" id="2y5ZLyw9KPZ" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2y5ZLyw9KPs" resolve="d" />
                            </node>
                            <node concept="3zqWPK" id="2y5ZLyw9KQ0" role="2OqNvi">
                              <ref role="37wK5l" to="yke2:2y5ZLyvXOpH" resolve="toNfa" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2y5ZLyw9KQ1" role="37wK5m">
                            <node concept="2GrUjf" id="2y5ZLyw9KQ2" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2y5ZLyw9KPs" resolve="d" />
                            </node>
                            <node concept="3zqWPK" id="2y5ZLyw9KQ3" role="2OqNvi">
                              <ref role="37wK5l" to="yke2:2y5ZLyvY6OM" resolve="alarmStateIndices" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2y5ZLyw9KQ4" role="37wK5m">
                            <ref role="3cqZAo" node="2y5ZLyw9KPy" resolve="estados" />
                          </node>
                          <node concept="2OqwBi" id="2y5ZLyw9KQ5" role="37wK5m">
                            <node concept="2GrUjf" id="2y5ZLyw9KQ6" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2y5ZLyw9KPs" resolve="d" />
                            </node>
                            <node concept="3zqWPK" id="2y5ZLyw9KQ7" role="2OqNvi">
                              <ref role="37wK5l" to="yke2:2y5ZLyvXxNJ" resolve="alphabet" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2y5ZLyw9KQ8" role="3cqZAp">
                <node concept="37vLTI" id="2y5ZLyw9KQ9" role="3clFbG">
                  <node concept="37vLTw" id="2y5ZLyw9KQa" role="37vLTJ">
                    <ref role="3cqZAo" node="2y5ZLyw9KPe" resolve="reporte" />
                  </node>
                  <node concept="3cpWs3" id="2y5ZLyw9KQb" role="37vLTx">
                    <node concept="37vLTw" id="2y5ZLyw9KQc" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyw9KPe" resolve="reporte" />
                    </node>
                    <node concept="2YIFZM" id="2y5ZLyw9KQd" role="3uHU7w">
                      <ref role="1Pybhc" to="87dd:2y5ZLyw96gB" resolve="ReporteDomus" />
                      <ref role="37wK5l" to="87dd:2y5ZLyw96gZ" resolve="seccion" />
                      <node concept="Xl_RD" id="2y5ZLyw9KQe" role="37wK5m">
                        <property role="Xl_RC" value="Políticas (§4.4) y AFD mínimo de cada política (§4.3)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="2y5ZLyw9KQf" role="3cqZAp">
                <node concept="2GrKxI" id="2y5ZLyw9KQg" role="2Gsz3X">
                  <property role="TrG5h" value="p" />
                </node>
                <node concept="2OqwBi" id="2y5ZLyw9KQh" role="2GsD0m">
                  <node concept="30H73N" id="2y5ZLyw9KQi" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2y5ZLyw9KQj" role="2OqNvi">
                    <ref role="3TtcxE" to="p4tm:57H1jONk_jW" resolve="policies" />
                  </node>
                </node>
                <node concept="3clFbS" id="2y5ZLyw9KQk" role="2LFqv$">
                  <node concept="3clFbF" id="2y5ZLyw9KQl" role="3cqZAp">
                    <node concept="37vLTI" id="2y5ZLyw9KQm" role="3clFbG">
                      <node concept="37vLTw" id="2y5ZLyw9KQn" role="37vLTJ">
                        <ref role="3cqZAo" node="2y5ZLyw9KPe" resolve="reporte" />
                      </node>
                      <node concept="3cpWs3" id="2y5ZLyw9KQo" role="37vLTx">
                        <node concept="37vLTw" id="2y5ZLyw9KQp" role="3uHU7B">
                          <ref role="3cqZAo" node="2y5ZLyw9KPe" resolve="reporte" />
                        </node>
                        <node concept="2YIFZM" id="2y5ZLyw9KQq" role="3uHU7w">
                          <ref role="1Pybhc" to="87dd:2y5ZLyw96gB" resolve="ReporteDomus" />
                          <ref role="37wK5l" to="87dd:2y5ZLywbzI3" resolve="politica" />
                          <node concept="2OqwBi" id="2y5ZLyw9KQr" role="37wK5m">
                            <node concept="2GrUjf" id="2y5ZLyw9KQs" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2y5ZLyw9KQg" resolve="p" />
                            </node>
                            <node concept="3TrcHB" id="2y5ZLyw9KQt" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2y5ZLyw9KQu" role="37wK5m">
                            <node concept="2OqwBi" id="2y5ZLyw9KQv" role="2Oq$k0">
                              <node concept="2GrUjf" id="2y5ZLyw9KQw" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="2y5ZLyw9KQg" resolve="p" />
                              </node>
                              <node concept="3TrcHB" id="2y5ZLyw9KQx" role="2OqNvi">
                                <ref role="3TsBF5" to="p4tm:57H1jONk_jH" resolve="mode" />
                              </node>
                            </node>
                            <node concept="21noJN" id="2y5ZLyw9KQy" role="2OqNvi">
                              <node concept="21nZrQ" id="2y5ZLyw9KQz" role="21noJM">
                                <ref role="21nZrZ" to="p4tm:57H1jONk_iR" resolve="FORBIDDEN" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2y5ZLyw9KQ$" role="37wK5m">
                            <node concept="2OqwBi" id="2y5ZLyw9KQ_" role="2Oq$k0">
                              <node concept="2GrUjf" id="2y5ZLyw9KQA" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="2y5ZLyw9KQg" resolve="p" />
                              </node>
                              <node concept="3TrEf2" id="2y5ZLyw9KQB" role="2OqNvi">
                                <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="2y5ZLyw9KQC" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2y5ZLyw9KQD" role="37wK5m">
                            <node concept="2OqwBi" id="2y5ZLyw9KQE" role="2Oq$k0">
                              <node concept="2GrUjf" id="2y5ZLyw9KQF" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="2y5ZLyw9KQg" resolve="p" />
                              </node>
                              <node concept="3TrEf2" id="2y5ZLyw9KQG" role="2OqNvi">
                                <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="2y5ZLyw9KQH" role="2OqNvi">
                              <ref role="37wK5l" to="yke2:2y5ZLyvXOpH" resolve="toNfa" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2y5ZLyw9KQI" role="37wK5m">
                            <node concept="2OqwBi" id="2y5ZLyw9KQJ" role="2Oq$k0">
                              <node concept="2GrUjf" id="2y5ZLyw9KQK" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="2y5ZLyw9KQg" resolve="p" />
                              </node>
                              <node concept="3TrEf2" id="2y5ZLyw9KQL" role="2OqNvi">
                                <ref role="3Tt5mk" to="p4tm:57H1jONk_jI" resolve="expr" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="2y5ZLyw9KQM" role="2OqNvi">
                              <ref role="37wK5l" to="yke2:2y5ZLyvPHaI" resolve="toNfa" />
                              <node concept="2OqwBi" id="2y5ZLyw9KQN" role="37wK5m">
                                <node concept="2OqwBi" id="2y5ZLyw9KQO" role="2Oq$k0">
                                  <node concept="2OqwBi" id="2y5ZLyw9KQP" role="2Oq$k0">
                                    <node concept="2GrUjf" id="2y5ZLyw9KQQ" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="2y5ZLyw9KQg" resolve="p" />
                                    </node>
                                    <node concept="3TrEf2" id="2y5ZLyw9KQR" role="2OqNvi">
                                      <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
                                    </node>
                                  </node>
                                  <node concept="3zqWPK" id="2y5ZLyw9KQS" role="2OqNvi">
                                    <ref role="37wK5l" to="yke2:2y5ZLyvXxNJ" resolve="alphabet" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2y5ZLyw9KQT" role="2OqNvi">
                                  <ref role="37wK5l" to="op1a:2y5ZLyvHE74" resolve="size" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2y5ZLyw9KQU" role="37wK5m">
                                <node concept="2OqwBi" id="2y5ZLyw9KQV" role="2Oq$k0">
                                  <node concept="2GrUjf" id="2y5ZLyw9KQW" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="2y5ZLyw9KQg" resolve="p" />
                                  </node>
                                  <node concept="3TrEf2" id="2y5ZLyw9KQX" role="2OqNvi">
                                    <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="2y5ZLyw9KQY" role="2OqNvi">
                                  <ref role="37wK5l" to="yke2:2y5ZLyvXxNJ" resolve="alphabet" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2y5ZLyw9KQZ" role="37wK5m">
                            <node concept="2OqwBi" id="2y5ZLyw9KR0" role="2Oq$k0">
                              <node concept="2GrUjf" id="2y5ZLyw9KR1" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="2y5ZLyw9KQg" resolve="p" />
                              </node>
                              <node concept="3TrEf2" id="2y5ZLyw9KR2" role="2OqNvi">
                                <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="2y5ZLyw9KR3" role="2OqNvi">
                              <ref role="37wK5l" to="yke2:2y5ZLyvXxNJ" resolve="alphabet" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2y5ZLyw9KR4" role="3cqZAp">
                <node concept="37vLTw" id="2y5ZLyw9KR5" role="3cqZAk">
                  <ref role="3cqZAo" node="2y5ZLyw9KPe" resolve="reporte" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw9pTk" role="1B3o_S" />
      <node concept="z59LJ" id="2y5ZLyw9pTl" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyw9pTm" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw9pTn" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyw9pXo" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw9pXp" role="1PaTwD">
            <property role="3oM_SC" value="Reporte" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXq" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXr" role="1PaTwD">
            <property role="3oM_SC" value="verificación" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXs" role="1PaTwD">
            <property role="3oM_SC" value="calculado" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXt" role="1PaTwD">
            <property role="3oM_SC" value="EN" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXu" role="1PaTwD">
            <property role="3oM_SC" value="TIEMPO" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXv" role="1PaTwD">
            <property role="3oM_SC" value="DE" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXw" role="1PaTwD">
            <property role="3oM_SC" value="GENERACIÓN" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXx" role="1PaTwD">
            <property role="3oM_SC" value="por" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXy" role="1PaTwD">
            <property role="3oM_SC" value="domus.reasoner" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXz" role="1PaTwD">
            <property role="3oM_SC" value="(docs/02" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pX$" role="1PaTwD">
            <property role="3oM_SC" value="§5)." />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2y5ZLyw9pTo" role="jymVt">
      <property role="TrG5h" value="DISPOSITIVOS" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="2y5ZLyw9pTq" role="1tU5fm">
        <node concept="3uibUv" id="2y5ZLyw9pTp" role="10Q1$1">
          <ref role="3uigEE" node="2y5ZLyw9pOB" resolve="GeneratedHomeSystem_Plantilla.Automata" />
        </node>
      </node>
      <node concept="2ShNRf" id="2y5ZLyw9pTO" role="33vP2m">
        <node concept="3g6Rrh" id="2y5ZLyw9pTN" role="2ShVmc">
          <node concept="2ShNRf" id="2y5ZLyw9q0P" role="3g7hyw">
            <node concept="1pGfFk" id="2y5ZLyw9q11" role="2ShVmc">
              <ref role="37wK5l" node="2y5ZLyw9pP7" resolve="GeneratedHomeSystem_Plantilla.Automata" />
              <node concept="Xl_RD" id="2y5ZLyw9q12" role="37wK5m">
                <property role="Xl_RC" value="Dispositivo" />
                <node concept="17Uvod" id="2y5ZLyw9MAO" role="lGtFl">
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="2y5ZLyw9MAP" role="3zH0cK">
                    <node concept="3clFbS" id="2y5ZLyw9MAQ" role="2VODD2">
                      <node concept="3clFbF" id="2y5ZLyw9MAR" role="3cqZAp">
                        <node concept="2OqwBi" id="2y5ZLyw9MAS" role="3clFbG">
                          <node concept="30H73N" id="2y5ZLyw9MAT" role="2Oq$k0" />
                          <node concept="3TrcHB" id="2y5ZLyw9MAU" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2y5ZLyw9q13" role="37wK5m">
                <node concept="3g6Rrh" id="2y5ZLyw9q14" role="2ShVmc">
                  <node concept="Xl_RD" id="2y5ZLyw9q15" role="3g7hyw">
                    <property role="Xl_RC" value="Estado" />
                    <node concept="1WS0z7" id="2y5ZLyw9NjZ" role="lGtFl">
                      <node concept="3JmXsc" id="2y5ZLyw9Nk0" role="3Jn$fo">
                        <node concept="3clFbS" id="2y5ZLyw9Nk1" role="2VODD2">
                          <node concept="3clFbF" id="2y5ZLyw9Nk2" role="3cqZAp">
                            <node concept="2OqwBi" id="2y5ZLyw9Nk3" role="3clFbG">
                              <node concept="30H73N" id="2y5ZLyw9Nk4" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="2y5ZLyw9Nk5" role="2OqNvi">
                                <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17Uvod" id="2y5ZLyw9V2B" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="2y5ZLyw9V2C" role="3zH0cK">
                        <node concept="3clFbS" id="2y5ZLyw9V2D" role="2VODD2">
                          <node concept="3clFbF" id="2y5ZLyw9V2E" role="3cqZAp">
                            <node concept="2OqwBi" id="2y5ZLyw9V2F" role="3clFbG">
                              <node concept="30H73N" id="2y5ZLyw9V2G" role="2Oq$k0" />
                              <node concept="3TrcHB" id="2y5ZLyw9V2H" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="2y5ZLyw9q16" role="3g7fb8">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2y5ZLyw9q17" role="37wK5m">
                <node concept="3g6Rrh" id="2y5ZLyw9q18" role="2ShVmc">
                  <node concept="Xl_RD" id="2y5ZLyw9q19" role="3g7hyw">
                    <property role="Xl_RC" value="evento" />
                    <node concept="1WS0z7" id="2y5ZLyw9O1a" role="lGtFl">
                      <node concept="3JmXsc" id="2y5ZLyw9O1b" role="3Jn$fo">
                        <node concept="3clFbS" id="2y5ZLyw9O1c" role="2VODD2">
                          <node concept="3clFbF" id="2y5ZLyw9O1d" role="3cqZAp">
                            <node concept="2OqwBi" id="2y5ZLyw9O1e" role="3clFbG">
                              <node concept="30H73N" id="2y5ZLyw9O1f" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="2y5ZLyw9O1g" role="2OqNvi">
                                <ref role="3TtcxE" to="p4tm:57H1jONk_jh" resolve="events" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17Uvod" id="2y5ZLyw9VPy" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="2y5ZLyw9VPz" role="3zH0cK">
                        <node concept="3clFbS" id="2y5ZLyw9VP$" role="2VODD2">
                          <node concept="3clFbF" id="2y5ZLyw9VP_" role="3cqZAp">
                            <node concept="2OqwBi" id="2y5ZLyw9VPA" role="3clFbG">
                              <node concept="30H73N" id="2y5ZLyw9VPB" role="2Oq$k0" />
                              <node concept="3TrcHB" id="2y5ZLyw9VPC" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="2y5ZLyw9q1a" role="3g7fb8">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="2y5ZLyw9q1b" role="37wK5m">
                <property role="3cmrfH" value="0" />
                <node concept="17Uvod" id="2y5ZLyw9OG8" role="lGtFl">
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="2y5ZLyw9OG9" role="3zH0cK">
                    <node concept="3clFbS" id="2y5ZLyw9OGa" role="2VODD2">
                      <node concept="3clFbF" id="2y5ZLyw9OGb" role="3cqZAp">
                        <node concept="2OqwBi" id="2y5ZLyw9OGc" role="3clFbG">
                          <node concept="2OqwBi" id="2y5ZLyw9OGd" role="2Oq$k0">
                            <node concept="30H73N" id="2y5ZLyw9OGe" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="2y5ZLyw9OGf" role="2OqNvi">
                              <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
                            </node>
                          </node>
                          <node concept="2WmjW8" id="2y5ZLyw9OGg" role="2OqNvi">
                            <node concept="2OqwBi" id="2y5ZLyw9OGh" role="25WWJ7">
                              <node concept="2OqwBi" id="2y5ZLyw9OGi" role="2Oq$k0">
                                <node concept="30H73N" id="2y5ZLyw9OGj" role="2Oq$k0" />
                                <node concept="3zqWPK" id="2y5ZLyw9OGk" role="2OqNvi">
                                  <ref role="37wK5l" to="yke2:4iWSnKEtrVj" resolve="initialStates" />
                                </node>
                              </node>
                              <node concept="1uHKPH" id="2y5ZLyw9OGl" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="2y5ZLyw9q1c" role="37wK5m">
                <node concept="3g6Rrh" id="2y5ZLyw9q1d" role="2ShVmc">
                  <node concept="3cmrfG" id="2y5ZLyw9q1e" role="3g7hyw">
                    <property role="3cmrfH" value="0" />
                    <node concept="1WS0z7" id="2y5ZLyw9Ptz" role="lGtFl">
                      <node concept="3JmXsc" id="2y5ZLyw9Pt$" role="3Jn$fo">
                        <node concept="3clFbS" id="2y5ZLyw9Pt_" role="2VODD2">
                          <node concept="3clFbF" id="2y5ZLyw9PtA" role="3cqZAp">
                            <node concept="2OqwBi" id="2y5ZLyw9PtB" role="3clFbG">
                              <node concept="30H73N" id="2y5ZLyw9PtC" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="2y5ZLyw9PtD" role="2OqNvi">
                                <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1W57fq" id="2y5ZLyw9Wxm" role="lGtFl">
                      <node concept="3IZrLx" id="2y5ZLyw9Wxn" role="3IZSJc">
                        <node concept="3clFbS" id="2y5ZLyw9Wxo" role="2VODD2">
                          <node concept="3clFbF" id="2y5ZLyw9Wxp" role="3cqZAp">
                            <node concept="2OqwBi" id="2y5ZLyw9Wxq" role="3clFbG">
                              <node concept="30H73N" id="2y5ZLyw9Wxr" role="2Oq$k0" />
                              <node concept="3TrcHB" id="2y5ZLyw9Wxs" role="2OqNvi">
                                <ref role="3TsBF5" to="p4tm:57H1jONk_ja" resolve="accepting" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17Uvod" id="2y5ZLyw9Zfd" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="2y5ZLyw9Zfe" role="3zH0cK">
                        <node concept="3clFbS" id="2y5ZLyw9Zff" role="2VODD2">
                          <node concept="3clFbF" id="2y5ZLyw9Zfg" role="3cqZAp">
                            <node concept="2OqwBi" id="2y5ZLyw9Zfh" role="3clFbG">
                              <node concept="2OqwBi" id="2y5ZLyw9Zfi" role="2Oq$k0">
                                <node concept="2OqwBi" id="2y5ZLyw9Zfj" role="2Oq$k0">
                                  <node concept="30H73N" id="2y5ZLyw9Zfk" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="2y5ZLyw9Zfl" role="2OqNvi">
                                    <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                                  </node>
                                </node>
                                <node concept="3Tsc0h" id="2y5ZLyw9Zfm" role="2OqNvi">
                                  <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
                                </node>
                              </node>
                              <node concept="2WmjW8" id="2y5ZLyw9Zfn" role="2OqNvi">
                                <node concept="30H73N" id="2y5ZLyw9Zfo" role="25WWJ7" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Oyi0" id="2y5ZLyw9q1f" role="3g7fb8" />
                </node>
              </node>
              <node concept="2ShNRf" id="2y5ZLyw9q1g" role="37wK5m">
                <node concept="3g6Rrh" id="2y5ZLyw9q1h" role="2ShVmc">
                  <node concept="2BsdOp" id="2y5ZLyw9q1i" role="3g7hyw">
                    <node concept="2BsdOp" id="2y5ZLyw9q1j" role="2BsfMF">
                      <node concept="3cmrfG" id="2y5ZLyw9q1k" role="2BsfMF">
                        <property role="3cmrfH" value="0" />
                        <node concept="1WS0z7" id="2y5ZLyw9Rx9" role="lGtFl">
                          <node concept="3JmXsc" id="2y5ZLyw9Rxa" role="3Jn$fo">
                            <node concept="3clFbS" id="2y5ZLyw9Rxb" role="2VODD2">
                              <node concept="3clFbF" id="2y5ZLyw9Rxc" role="3cqZAp">
                                <node concept="2OqwBi" id="2y5ZLyw9Rxd" role="3clFbG">
                                  <node concept="2OqwBi" id="2y5ZLyw9Rxe" role="2Oq$k0">
                                    <node concept="30H73N" id="2y5ZLyw9Rxf" role="2Oq$k0" />
                                    <node concept="3zqWPK" id="2y5ZLyw9Rxg" role="2OqNvi">
                                      <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                                    </node>
                                  </node>
                                  <node concept="3Tsc0h" id="2y5ZLyw9Rxh" role="2OqNvi">
                                    <ref role="3TtcxE" to="p4tm:57H1jONk_jj" resolve="transitions" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1W57fq" id="2y5ZLyw9ZWU" role="lGtFl">
                          <node concept="3IZrLx" id="2y5ZLyw9ZWV" role="3IZSJc">
                            <node concept="3clFbS" id="2y5ZLyw9ZWW" role="2VODD2">
                              <node concept="3clFbF" id="2y5ZLyw9ZWX" role="3cqZAp">
                                <node concept="1Wc70l" id="2y5ZLyw9ZWY" role="3clFbG">
                                  <node concept="17R0WA" id="2y5ZLyw9ZWZ" role="3uHU7B">
                                    <node concept="2OqwBi" id="2y5ZLyw9ZX0" role="3uHU7B">
                                      <node concept="30H73N" id="2y5ZLyw9ZX1" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="2y5ZLyw9ZX2" role="2OqNvi">
                                        <ref role="3Tt5mk" to="p4tm:57H1jONk_jd" resolve="source" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="2y5ZLyw9ZX3" role="3uHU7w">
                                      <node concept="1iwH7S" id="2y5ZLyw9ZX4" role="2Oq$k0" />
                                      <node concept="1psM6Z" id="2y5ZLyw9ZX5" role="2OqNvi">
                                        <ref role="1psM6Y" node="2y5ZLyw9Xi5" resolve="estado" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="17R0WA" id="2y5ZLyw9ZX6" role="3uHU7w">
                                    <node concept="2OqwBi" id="2y5ZLyw9ZX7" role="3uHU7B">
                                      <node concept="30H73N" id="2y5ZLyw9ZX8" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="2y5ZLyw9ZX9" role="2OqNvi">
                                        <ref role="3Tt5mk" to="p4tm:57H1jONk_je" resolve="event" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="2y5ZLyw9ZXa" role="3uHU7w">
                                      <node concept="1iwH7S" id="2y5ZLyw9ZXb" role="2Oq$k0" />
                                      <node concept="1psM6Z" id="2y5ZLyw9ZXc" role="2OqNvi">
                                        <ref role="1psM6Y" node="2y5ZLyw9XRw" resolve="evento" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="17Uvod" id="2y5ZLywa10t" role="lGtFl">
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <property role="2qtEX9" value="value" />
                          <node concept="3zFVjK" id="2y5ZLywa10u" role="3zH0cK">
                            <node concept="3clFbS" id="2y5ZLywa10v" role="2VODD2">
                              <node concept="3clFbF" id="2y5ZLywa10w" role="3cqZAp">
                                <node concept="2OqwBi" id="2y5ZLywa10x" role="3clFbG">
                                  <node concept="2OqwBi" id="2y5ZLywa10y" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2y5ZLywa10z" role="2Oq$k0">
                                      <node concept="30H73N" id="2y5ZLywa10$" role="2Oq$k0" />
                                      <node concept="3zqWPK" id="2y5ZLywa10_" role="2OqNvi">
                                        <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                                      </node>
                                    </node>
                                    <node concept="3Tsc0h" id="2y5ZLywa10A" role="2OqNvi">
                                      <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
                                    </node>
                                  </node>
                                  <node concept="2WmjW8" id="2y5ZLywa10B" role="2OqNvi">
                                    <node concept="2OqwBi" id="2y5ZLywa10C" role="25WWJ7">
                                      <node concept="30H73N" id="2y5ZLywa10D" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="2y5ZLywa10E" role="2OqNvi">
                                        <ref role="3Tt5mk" to="p4tm:57H1jONk_jf" resolve="target" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1WS0z7" id="2y5ZLyw9QNv" role="lGtFl">
                        <node concept="3JmXsc" id="2y5ZLyw9QNw" role="3Jn$fo">
                          <node concept="3clFbS" id="2y5ZLyw9QNx" role="2VODD2">
                            <node concept="3clFbF" id="2y5ZLyw9QNy" role="3cqZAp">
                              <node concept="2OqwBi" id="2y5ZLyw9QNz" role="3clFbG">
                                <node concept="2OqwBi" id="2y5ZLyw9QN$" role="2Oq$k0">
                                  <node concept="30H73N" id="2y5ZLyw9QN_" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="2y5ZLyw9QNA" role="2OqNvi">
                                    <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                                  </node>
                                </node>
                                <node concept="3Tsc0h" id="2y5ZLyw9QNB" role="2OqNvi">
                                  <ref role="3TtcxE" to="p4tm:57H1jONk_jh" resolve="events" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1ps_y7" id="2y5ZLyw9XRv" role="lGtFl">
                        <node concept="1ps_xZ" id="2y5ZLyw9XRw" role="1ps_xO">
                          <property role="TrG5h" value="evento" />
                          <node concept="3Tqbb2" id="2y5ZLyw9XRx" role="1ps_xK">
                            <ref role="ehGHo" to="p4tm:57H1jONk_iY" resolve="Event" />
                          </node>
                          <node concept="2jfdEK" id="2y5ZLyw9XRy" role="1ps_xN">
                            <node concept="3clFbS" id="2y5ZLyw9XRz" role="2VODD2">
                              <node concept="3clFbF" id="2y5ZLyw9XR$" role="3cqZAp">
                                <node concept="30H73N" id="2y5ZLyw9XR_" role="3clFbG" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1WS0z7" id="2y5ZLyw9Q8x" role="lGtFl">
                      <node concept="3JmXsc" id="2y5ZLyw9Q8y" role="3Jn$fo">
                        <node concept="3clFbS" id="2y5ZLyw9Q8z" role="2VODD2">
                          <node concept="3clFbF" id="2y5ZLyw9Q8$" role="3cqZAp">
                            <node concept="2OqwBi" id="2y5ZLyw9Q8_" role="3clFbG">
                              <node concept="30H73N" id="2y5ZLyw9Q8A" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="2y5ZLyw9Q8B" role="2OqNvi">
                                <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1ps_y7" id="2y5ZLyw9Xi4" role="lGtFl">
                      <node concept="1ps_xZ" id="2y5ZLyw9Xi5" role="1ps_xO">
                        <property role="TrG5h" value="estado" />
                        <node concept="3Tqbb2" id="2y5ZLyw9Xi6" role="1ps_xK">
                          <ref role="ehGHo" to="p4tm:57H1jONk_iZ" resolve="State" />
                        </node>
                        <node concept="2jfdEK" id="2y5ZLyw9Xi7" role="1ps_xN">
                          <node concept="3clFbS" id="2y5ZLyw9Xi8" role="2VODD2">
                            <node concept="3clFbF" id="2y5ZLyw9Xi9" role="3cqZAp">
                              <node concept="30H73N" id="2y5ZLyw9Xia" role="3clFbG" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Q1$e" id="2y5ZLyw9q1l" role="3g7fb8">
                    <node concept="10Q1$e" id="2y5ZLyw9q1m" role="10Q1$1">
                      <node concept="10Oyi0" id="2y5ZLyw9q1n" role="10Q1$1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="2y5ZLyw9M1h" role="lGtFl">
              <node concept="3JmXsc" id="2y5ZLyw9M1i" role="3Jn$fo">
                <node concept="3clFbS" id="2y5ZLyw9M1j" role="2VODD2">
                  <node concept="3clFbF" id="2y5ZLyw9M1k" role="3cqZAp">
                    <node concept="2OqwBi" id="2y5ZLyw9M1l" role="3clFbG">
                      <node concept="30H73N" id="2y5ZLyw9M1m" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="2y5ZLyw9M1n" role="2OqNvi">
                        <ref role="3TtcxE" to="p4tm:57H1jONk_jV" resolve="devices" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="2y5ZLyw9pTr" role="3g7fb8">
            <ref role="3uigEE" node="2y5ZLyw9pOB" resolve="GeneratedHomeSystem_Plantilla.Automata" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw9pTP" role="1B3o_S" />
      <node concept="z59LJ" id="2y5ZLyw9pTQ" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyw9pTR" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw9pTS" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyw9pX_" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw9pXA" role="1PaTwD">
            <property role="3oM_SC" value="Un" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXB" role="1PaTwD">
            <property role="3oM_SC" value="autómata" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXC" role="1PaTwD">
            <property role="3oM_SC" value="finito" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXD" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXE" role="1PaTwD">
            <property role="3oM_SC" value="=" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXF" role="1PaTwD">
            <property role="3oM_SC" value="(Q," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXG" role="1PaTwD">
            <property role="3oM_SC" value="Σ," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXH" role="1PaTwD">
            <property role="3oM_SC" value="δ," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXI" role="1PaTwD">
            <property role="3oM_SC" value="q0," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXJ" role="1PaTwD">
            <property role="3oM_SC" value="F)" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXK" role="1PaTwD">
            <property role="3oM_SC" value="por" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXL" role="1PaTwD">
            <property role="3oM_SC" value="dispositivo" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXM" role="1PaTwD">
            <property role="3oM_SC" value="(docs/02" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXN" role="1PaTwD">
            <property role="3oM_SC" value="§4.1)." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyw9pTT" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="2y5ZLyw9pTU" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="2y5ZLyw9pTW" role="1tU5fm">
          <node concept="3uibUv" id="2y5ZLyw9pTV" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyw9pTX" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyw9pTY" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyw9q6X" role="3clFbG">
            <node concept="10M0yZ" id="2y5ZLyw9q1q" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyw9q6Y" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="37vLTw" id="2y5ZLyw9q6Z" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw9pTh" resolve="REPORTE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw9pU1" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyw9q7c" role="3clFbG">
            <node concept="10M0yZ" id="2y5ZLyw9q1x" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyw9q7d" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="Xl_RD" id="2y5ZLyw9q7e" role="37wK5m">
                <property role="Xl_RC" value="SIMULACIÓN DE ESCENARIOS (semántica operacional de pasos pequeños)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw9pU4" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyw9pU5" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyw9pUL" resolve="ejecutar" />
            <node concept="Xl_RD" id="2y5ZLyw9pU6" role="37wK5m">
              <property role="Xl_RC" value="Escenario" />
              <node concept="17Uvod" id="2y5ZLyw9T1F" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="2y5ZLyw9T1G" role="3zH0cK">
                  <node concept="3clFbS" id="2y5ZLyw9T1H" role="2VODD2">
                    <node concept="3clFbF" id="2y5ZLyw9T1I" role="3cqZAp">
                      <node concept="2OqwBi" id="2y5ZLyw9T1J" role="3clFbG">
                        <node concept="30H73N" id="2y5ZLyw9T1K" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2y5ZLyw9T1L" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyw9pU7" role="37wK5m">
              <property role="Xl_RC" value="Dispositivo" />
              <node concept="17Uvod" id="2y5ZLyw9TGD" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="2y5ZLyw9TGE" role="3zH0cK">
                  <node concept="3clFbS" id="2y5ZLyw9TGF" role="2VODD2">
                    <node concept="3clFbF" id="2y5ZLyw9TGG" role="3cqZAp">
                      <node concept="2OqwBi" id="2y5ZLyw9TGH" role="3clFbG">
                        <node concept="2OqwBi" id="2y5ZLyw9TGI" role="2Oq$k0">
                          <node concept="30H73N" id="2y5ZLyw9TGJ" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2y5ZLyw9TGK" role="2OqNvi">
                            <ref role="3Tt5mk" to="p4tm:57H1jONk_jP" resolve="device" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="2y5ZLyw9TGL" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw9pUb" role="37wK5m">
              <node concept="3g6Rrh" id="2y5ZLyw9pUa" role="2ShVmc">
                <node concept="Xl_RD" id="2y5ZLyw9pU9" role="3g7hyw">
                  <property role="Xl_RC" value="evento" />
                  <node concept="1WS0z7" id="2y5ZLyw9UnD" role="lGtFl">
                    <node concept="3JmXsc" id="2y5ZLyw9UnE" role="3Jn$fo">
                      <node concept="3clFbS" id="2y5ZLyw9UnF" role="2VODD2">
                        <node concept="3clFbF" id="2y5ZLyw9UnG" role="3cqZAp">
                          <node concept="2OqwBi" id="2y5ZLyw9UnH" role="3clFbG">
                            <node concept="30H73N" id="2y5ZLyw9UnI" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="2y5ZLyw9UnJ" role="2OqNvi">
                              <ref role="3TtcxE" to="p4tm:57H1jONk_jO" resolve="steps" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17Uvod" id="2y5ZLyw9YsU" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="2y5ZLyw9YsV" role="3zH0cK">
                      <node concept="3clFbS" id="2y5ZLyw9YsW" role="2VODD2">
                        <node concept="3clFbF" id="2y5ZLyw9YsX" role="3cqZAp">
                          <node concept="2OqwBi" id="2y5ZLyw9YsY" role="3clFbG">
                            <node concept="2OqwBi" id="2y5ZLyw9YsZ" role="2Oq$k0">
                              <node concept="30H73N" id="2y5ZLyw9Yt0" role="2Oq$k0" />
                              <node concept="3TrEf2" id="2y5ZLyw9Yt1" role="2OqNvi">
                                <ref role="3Tt5mk" to="p4tm:57H1jONk_jM" resolve="event" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="2y5ZLyw9Yt2" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="2y5ZLyw9pU8" role="3g7fb8">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="2y5ZLyw9Ss8" role="lGtFl">
            <node concept="3JmXsc" id="2y5ZLyw9Ss9" role="3Jn$fo">
              <node concept="3clFbS" id="2y5ZLyw9Ssa" role="2VODD2">
                <node concept="3clFbF" id="2y5ZLyw9Ssb" role="3cqZAp">
                  <node concept="2OqwBi" id="2y5ZLyw9Ssc" role="3clFbG">
                    <node concept="30H73N" id="2y5ZLyw9Ssd" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="2y5ZLyw9Sse" role="2OqNvi">
                      <ref role="3TtcxE" to="p4tm:57H1jONk_jX" resolve="scenarios" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw9pUc" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyw9pUd" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyw9pUe" role="jymVt">
      <property role="TrG5h" value="buscar" />
      <node concept="37vLTG" id="2y5ZLyw9pUf" role="3clF46">
        <property role="TrG5h" value="nombre" />
        <node concept="3uibUv" id="2y5ZLyw9pUg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyw9pUh" role="3clF47">
        <node concept="1Dw8fO" id="2y5ZLyw9pUi" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw9pUj" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyw9pUl" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyw9pUm" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyw9pUn" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyw9pUo" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyw9pUj" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyw9q1B" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLyw9q1A" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyw9pTo" resolve="DISPOSITIVOS" />
              </node>
              <node concept="1Rwk04" id="2y5ZLyw9qxk" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyw9pUr" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyw9pUs" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyw9pUj" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyw9pUu" role="2LFqv$">
            <node concept="3clFbJ" id="2y5ZLyw9pUv" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyw9q3a" role="3clFbw">
                <node concept="2OqwBi" id="2y5ZLyw9pUx" role="2Oq$k0">
                  <node concept="AH0OO" id="2y5ZLyw9pUy" role="2Oq$k0">
                    <node concept="37vLTw" id="2y5ZLyw9pUz" role="AHHXb">
                      <ref role="3cqZAo" node="2y5ZLyw9pTo" resolve="DISPOSITIVOS" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyw9pU$" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLyw9pUj" resolve="i" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyw9pU_" role="2OqNvi">
                    <ref role="2Oxat5" node="2y5ZLyw9pOD" resolve="nombre" />
                  </node>
                </node>
                <node concept="liA8E" id="2y5ZLyw9q3b" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="2y5ZLyw9q3c" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyw9pUf" resolve="nombre" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyw9pUC" role="3clFbx">
                <node concept="3cpWs6" id="2y5ZLyw9pUD" role="3cqZAp">
                  <node concept="AH0OO" id="2y5ZLyw9pUE" role="3cqZAk">
                    <node concept="37vLTw" id="2y5ZLyw9pUF" role="AHHXb">
                      <ref role="3cqZAo" node="2y5ZLyw9pTo" resolve="DISPOSITIVOS" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyw9pUG" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLyw9pUj" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyw9pUH" role="3cqZAp">
          <node concept="10Nm6u" id="2y5ZLyw9pUI" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw9pUJ" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyw9pUK" role="3clF45">
        <ref role="3uigEE" node="2y5ZLyw9pOB" resolve="GeneratedHomeSystem_Plantilla.Automata" />
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyw9pUL" role="jymVt">
      <property role="TrG5h" value="ejecutar" />
      <node concept="37vLTG" id="2y5ZLyw9pUM" role="3clF46">
        <property role="TrG5h" value="escenario" />
        <node concept="3uibUv" id="2y5ZLyw9pUN" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyw9pUO" role="3clF46">
        <property role="TrG5h" value="dispositivo" />
        <node concept="3uibUv" id="2y5ZLyw9pUP" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyw9pUQ" role="3clF46">
        <property role="TrG5h" value="pasos" />
        <node concept="10Q1$e" id="2y5ZLyw9pUS" role="1tU5fm">
          <node concept="3uibUv" id="2y5ZLyw9pUR" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyw9pUT" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyw9pUV" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw9pUU" role="3cpWs9">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="2y5ZLyw9pUW" role="1tU5fm">
              <ref role="3uigEE" node="2y5ZLyw9pOB" resolve="GeneratedHomeSystem_Plantilla.Automata" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyw9pUX" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyw9pUe" resolve="buscar" />
              <node concept="37vLTw" id="2y5ZLyw9pUY" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw9pUO" resolve="dispositivo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw9pUZ" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyw9q7r" role="3clFbG">
            <node concept="10M0yZ" id="2y5ZLyw9q3f" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyw9q7s" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw9pV1" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyw9q7D" role="3clFbG">
            <node concept="10M0yZ" id="2y5ZLyw9q3j" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyw9q7E" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="2y5ZLyw9q7F" role="37wK5m">
                <node concept="3cpWs3" id="2y5ZLyw9q7G" role="3uHU7B">
                  <node concept="3cpWs3" id="2y5ZLyw9q7H" role="3uHU7B">
                    <node concept="3cpWs3" id="2y5ZLyw9q7I" role="3uHU7B">
                      <node concept="Xl_RD" id="2y5ZLyw9q7J" role="3uHU7B">
                        <property role="Xl_RC" value="Escenario " />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyw9q7K" role="3uHU7w">
                        <ref role="3cqZAo" node="2y5ZLyw9pUM" resolve="escenario" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2y5ZLyw9q7L" role="3uHU7w">
                      <property role="Xl_RC" value=" sobre " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2y5ZLyw9q7M" role="3uHU7w">
                    <ref role="3cqZAo" node="2y5ZLyw9pUO" resolve="dispositivo" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2y5ZLyw9q7N" role="3uHU7w">
                  <property role="Xl_RC" value=":" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw9pVd" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw9pVc" role="3cpWs9">
            <property role="TrG5h" value="activos" />
            <node concept="3uibUv" id="2y5ZLyw9pVe" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2y5ZLyw9pVf" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw9q3u" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyw9q3y" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~TreeSet.&lt;init&gt;()" resolve="TreeSet" />
                <node concept="3uibUv" id="2y5ZLyw9q3z" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw9pVi" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyw9q9T" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyw9q3A" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyw9pVc" resolve="activos" />
            </node>
            <node concept="liA8E" id="2y5ZLyw9q9U" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="2YIFZM" id="2y5ZLyw9qjA" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                <ref role="37wK5l" to="wyt6:~Integer.valueOf(int)" resolve="valueOf" />
                <node concept="2OqwBi" id="2y5ZLyw9qk4" role="37wK5m">
                  <node concept="37vLTw" id="2y5ZLyw9qk3" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyw9pUU" resolve="a" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyw9qk5" role="2OqNvi">
                    <ref role="2Oxat5" node="2y5ZLyw9pOR" resolve="inicial" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw9pVn" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw9pVm" role="3cpWs9">
            <property role="TrG5h" value="traza" />
            <node concept="3uibUv" id="2y5ZLyw9pVo" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyw9qa7" role="33vP2m">
              <node concept="37vLTw" id="2y5ZLyw9q3G" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyw9pUU" resolve="a" />
              </node>
              <node concept="liA8E" id="2y5ZLyw9qa8" role="2OqNvi">
                <ref role="37wK5l" node="2y5ZLyw9pSn" resolve="formato" />
                <node concept="37vLTw" id="2y5ZLyw9qa9" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyw9pVc" resolve="activos" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyw9pVr" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw9pVs" role="1Duv9x">
            <property role="TrG5h" value="k" />
            <node concept="10Oyi0" id="2y5ZLyw9pVu" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyw9pVv" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyw9pVw" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyw9pVx" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyw9pVs" resolve="k" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyw9q3M" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLyw9q3L" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyw9pUQ" resolve="pasos" />
              </node>
              <node concept="1Rwk04" id="2y5ZLyw9qxl" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyw9pV$" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyw9pV_" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyw9pVs" resolve="k" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyw9pVB" role="2LFqv$">
            <node concept="3cpWs8" id="2y5ZLyw9pVD" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyw9pVC" role="3cpWs9">
                <property role="TrG5h" value="siguiente" />
                <node concept="3uibUv" id="2y5ZLyw9pVE" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                  <node concept="3uibUv" id="2y5ZLyw9pVF" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2y5ZLyw9qak" role="33vP2m">
                  <node concept="37vLTw" id="2y5ZLyw9q3Q" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyw9pUU" resolve="a" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyw9qal" role="2OqNvi">
                    <ref role="37wK5l" node="2y5ZLyw9pRn" resolve="step" />
                    <node concept="37vLTw" id="2y5ZLyw9qam" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyw9pVc" resolve="activos" />
                    </node>
                    <node concept="2OqwBi" id="2y5ZLyw9qkg" role="37wK5m">
                      <node concept="37vLTw" id="2y5ZLyw9qjE" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyw9pUU" resolve="a" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyw9qkh" role="2OqNvi">
                        <ref role="37wK5l" node="2y5ZLyw9pQ1" resolve="indiceEvento" />
                        <node concept="AH0OO" id="2y5ZLyw9qki" role="37wK5m">
                          <node concept="37vLTw" id="2y5ZLyw9qkj" role="AHHXb">
                            <ref role="3cqZAo" node="2y5ZLyw9pUQ" resolve="pasos" />
                          </node>
                          <node concept="37vLTw" id="2y5ZLyw9qkk" role="AHEQo">
                            <ref role="3cqZAo" node="2y5ZLyw9pVs" resolve="k" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2y5ZLyw9pVM" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyw9qcw" role="3clFbw">
                <node concept="37vLTw" id="2y5ZLyw9q3Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyw9pVC" resolve="siguiente" />
                </node>
                <node concept="liA8E" id="2y5ZLyw9qcx" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyw9pVP" role="3clFbx">
                <node concept="3clFbF" id="2y5ZLyw9pVQ" role="3cqZAp">
                  <node concept="2OqwBi" id="2y5ZLyw9qcI" role="3clFbG">
                    <node concept="10M0yZ" id="2y5ZLyw9q43" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyw9qcJ" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                      <node concept="3cpWs3" id="2y5ZLyw9qcK" role="37wK5m">
                        <node concept="Xl_RD" id="2y5ZLyw9qcL" role="3uHU7B">
                          <property role="Xl_RC" value="  " />
                        </node>
                        <node concept="37vLTw" id="2y5ZLyw9qcM" role="3uHU7w">
                          <ref role="3cqZAo" node="2y5ZLyw9pVm" resolve="traza" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2y5ZLyw9pVV" role="3cqZAp">
                  <node concept="2OqwBi" id="2y5ZLyw9qcZ" role="3clFbG">
                    <node concept="10M0yZ" id="2y5ZLyw9q4a" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyw9qd0" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                      <node concept="3cpWs3" id="2y5ZLyw9qd1" role="37wK5m">
                        <node concept="3cpWs3" id="2y5ZLyw9qd2" role="3uHU7B">
                          <node concept="3cpWs3" id="2y5ZLyw9qd3" role="3uHU7B">
                            <node concept="3cpWs3" id="2y5ZLyw9qd4" role="3uHU7B">
                              <node concept="3cpWs3" id="2y5ZLyw9qd5" role="3uHU7B">
                                <node concept="3cpWs3" id="2y5ZLyw9qd6" role="3uHU7B">
                                  <node concept="Xl_RD" id="2y5ZLyw9qd7" role="3uHU7B">
                                    <property role="Xl_RC" value="  RECHAZADO en el paso " />
                                  </node>
                                  <node concept="1eOMI4" id="2y5ZLyw9qd8" role="3uHU7w">
                                    <node concept="3cpWs3" id="2y5ZLyw9qd9" role="1eOMHV">
                                      <node concept="37vLTw" id="2y5ZLyw9qda" role="3uHU7B">
                                        <ref role="3cqZAo" node="2y5ZLyw9pVs" resolve="k" />
                                      </node>
                                      <node concept="3cmrfG" id="2y5ZLyw9qdb" role="3uHU7w">
                                        <property role="3cmrfH" value="1" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="2y5ZLyw9qdc" role="3uHU7w">
                                  <property role="Xl_RC" value=": desde '" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2y5ZLyw9qkv" role="3uHU7w">
                                <node concept="37vLTw" id="2y5ZLyw9qjL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2y5ZLyw9pUU" resolve="a" />
                                </node>
                                <node concept="liA8E" id="2y5ZLyw9qkw" role="2OqNvi">
                                  <ref role="37wK5l" node="2y5ZLyw9pSn" resolve="formato" />
                                  <node concept="37vLTw" id="2y5ZLyw9qkx" role="37wK5m">
                                    <ref role="3cqZAo" node="2y5ZLyw9pVc" resolve="activos" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="2y5ZLyw9qdf" role="3uHU7w">
                              <property role="Xl_RC" value="' no hay transición con '" />
                            </node>
                          </node>
                          <node concept="AH0OO" id="2y5ZLyw9qdg" role="3uHU7w">
                            <node concept="37vLTw" id="2y5ZLyw9qdh" role="AHHXb">
                              <ref role="3cqZAo" node="2y5ZLyw9pUQ" resolve="pasos" />
                            </node>
                            <node concept="37vLTw" id="2y5ZLyw9qdi" role="AHEQo">
                              <ref role="3cqZAo" node="2y5ZLyw9pVs" resolve="k" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2y5ZLyw9qdj" role="3uHU7w">
                          <property role="Xl_RC" value="'" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="2y5ZLyw9pWg" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyw9pWh" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyw9pWi" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyw9pWj" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyw9pVc" resolve="activos" />
                </node>
                <node concept="37vLTw" id="2y5ZLyw9pWk" role="37vLTx">
                  <ref role="3cqZAo" node="2y5ZLyw9pVC" resolve="siguiente" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyw9pWl" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyw9pWm" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyw9pWn" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyw9pVm" resolve="traza" />
                </node>
                <node concept="3cpWs3" id="2y5ZLyw9pWo" role="37vLTx">
                  <node concept="3cpWs3" id="2y5ZLyw9pWp" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLyw9pWq" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyw9pVm" resolve="traza" />
                    </node>
                    <node concept="Xl_RD" id="2y5ZLyw9pWr" role="3uHU7w">
                      <property role="Xl_RC" value=" → " />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2y5ZLyw9qdu" role="3uHU7w">
                    <node concept="37vLTw" id="2y5ZLyw9q4x" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyw9pUU" resolve="a" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyw9qdv" role="2OqNvi">
                      <ref role="37wK5l" node="2y5ZLyw9pSn" resolve="formato" />
                      <node concept="37vLTw" id="2y5ZLyw9qdw" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyw9pVc" resolve="activos" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw9pWu" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyw9qdH" role="3clFbG">
            <node concept="10M0yZ" id="2y5ZLyw9q4A" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyw9qdI" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="2y5ZLyw9qdJ" role="37wK5m">
                <node concept="Xl_RD" id="2y5ZLyw9qdK" role="3uHU7B">
                  <property role="Xl_RC" value="  " />
                </node>
                <node concept="37vLTw" id="2y5ZLyw9qdL" role="3uHU7w">
                  <ref role="3cqZAo" node="2y5ZLyw9pVm" resolve="traza" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2y5ZLyw9pWz" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyw9qdW" role="3clFbw">
            <node concept="37vLTw" id="2y5ZLyw9q4H" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyw9pUU" resolve="a" />
            </node>
            <node concept="liA8E" id="2y5ZLyw9qdX" role="2OqNvi">
              <ref role="37wK5l" node="2y5ZLyw9pR0" resolve="algunoAcepta" />
              <node concept="37vLTw" id="2y5ZLyw9qdY" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw9pVc" resolve="activos" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2y5ZLyw9pWF" role="9aQIa">
            <node concept="3clFbS" id="2y5ZLyw9pWG" role="9aQI4">
              <node concept="3clFbF" id="2y5ZLyw9pWH" role="3cqZAp">
                <node concept="2OqwBi" id="2y5ZLyw9qeb" role="3clFbG">
                  <node concept="10M0yZ" id="2y5ZLyw9q4M" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyw9qec" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                    <node concept="3cpWs3" id="2y5ZLyw9qed" role="37wK5m">
                      <node concept="3cpWs3" id="2y5ZLyw9qee" role="3uHU7B">
                        <node concept="Xl_RD" id="2y5ZLyw9qef" role="3uHU7B">
                          <property role="Xl_RC" value="  RECHAZADO: termina en '" />
                        </node>
                        <node concept="2OqwBi" id="2y5ZLyw9qkG" role="3uHU7w">
                          <node concept="37vLTw" id="2y5ZLyw9qjQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyw9pUU" resolve="a" />
                          </node>
                          <node concept="liA8E" id="2y5ZLyw9qkH" role="2OqNvi">
                            <ref role="37wK5l" node="2y5ZLyw9pSn" resolve="formato" />
                            <node concept="37vLTw" id="2y5ZLyw9qkI" role="37wK5m">
                              <ref role="3cqZAo" node="2y5ZLyw9pVc" resolve="activos" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2y5ZLyw9qei" role="3uHU7w">
                        <property role="Xl_RC" value="', que no es estado de reposo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyw9pWB" role="3clFbx">
            <node concept="3clFbF" id="2y5ZLyw9pWC" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyw9qev" role="3clFbG">
                <node concept="10M0yZ" id="2y5ZLyw9q4W" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="2y5ZLyw9qew" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="Xl_RD" id="2y5ZLyw9qex" role="37wK5m">
                    <property role="Xl_RC" value="  ACEPTADO" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw9pWP" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyw9pWQ" role="3clF45" />
      <node concept="P$JXv" id="2y5ZLyw9pWR" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyw9pWS" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw9pWT" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyw9pXO" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw9pXP" role="1PaTwD">
            <property role="3oM_SC" value="Ejecuta" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXQ" role="1PaTwD">
            <property role="3oM_SC" value="un" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXR" role="1PaTwD">
            <property role="3oM_SC" value="escenario:" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXS" role="1PaTwD">
            <property role="3oM_SC" value="&lt;q," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXT" role="1PaTwD">
            <property role="3oM_SC" value="a·w&gt;" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXU" role="1PaTwD">
            <property role="3oM_SC" value="-&gt;" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXV" role="1PaTwD">
            <property role="3oM_SC" value="&lt;q'," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXW" role="1PaTwD">
            <property role="3oM_SC" value="w&gt;" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXX" role="1PaTwD">
            <property role="3oM_SC" value="si" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXY" role="1PaTwD">
            <property role="3oM_SC" value="q'" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pXZ" role="1PaTwD">
            <property role="3oM_SC" value="∈" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pY0" role="1PaTwD">
            <property role="3oM_SC" value="δ(q," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pY1" role="1PaTwD">
            <property role="3oM_SC" value="a)" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pY2" role="1PaTwD">
            <property role="3oM_SC" value="(docs/02" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pY3" role="1PaTwD">
            <property role="3oM_SC" value="§4.6)." />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="2y5ZLyw9pOB" role="jymVt">
      <property role="TrG5h" value="Automata" />
      <node concept="3Tm1VV" id="2y5ZLyw9pOC" role="1B3o_S" />
      <node concept="3UR2Jj" id="2y5ZLyw9pTe" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyw9pTf" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw9pTg" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyw9pY4" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw9pY5" role="1PaTwD">
            <property role="3oM_SC" value="Autómata" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pY6" role="1PaTwD">
            <property role="3oM_SC" value="finito" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pY7" role="1PaTwD">
            <property role="3oM_SC" value="con" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pY8" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pY9" role="1PaTwD">
            <property role="3oM_SC" value="tabla" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pYa" role="1PaTwD">
            <property role="3oM_SC" value="δ" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pYb" role="1PaTwD">
            <property role="3oM_SC" value="completa:" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pYc" role="1PaTwD">
            <property role="3oM_SC" value="delta[estado][evento]" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pYd" role="1PaTwD">
            <property role="3oM_SC" value="=" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw9pYe" role="1PaTwD">
            <property role="3oM_SC" value="destinos." />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="2y5ZLyw9pOD" role="jymVt">
        <property role="TrG5h" value="nombre" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2y5ZLyw9pOF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pOG" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="2y5ZLyw9pOH" role="jymVt">
        <property role="TrG5h" value="estados" />
        <property role="3TUv4t" value="true" />
        <node concept="10Q1$e" id="2y5ZLyw9pOK" role="1tU5fm">
          <node concept="3uibUv" id="2y5ZLyw9pOJ" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pOL" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="2y5ZLyw9pOM" role="jymVt">
        <property role="TrG5h" value="eventos" />
        <property role="3TUv4t" value="true" />
        <node concept="10Q1$e" id="2y5ZLyw9pOP" role="1tU5fm">
          <node concept="3uibUv" id="2y5ZLyw9pOO" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pOQ" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="2y5ZLyw9pOR" role="jymVt">
        <property role="TrG5h" value="inicial" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="2y5ZLyw9pOT" role="1tU5fm" />
        <node concept="3Tm1VV" id="2y5ZLyw9pOU" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="2y5ZLyw9pOV" role="jymVt">
        <property role="TrG5h" value="aceptacion" />
        <property role="3TUv4t" value="true" />
        <node concept="10Q1$e" id="2y5ZLyw9pOY" role="1tU5fm">
          <node concept="10Oyi0" id="2y5ZLyw9pOX" role="10Q1$1" />
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pOZ" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="2y5ZLyw9pP0" role="jymVt">
        <property role="TrG5h" value="delta" />
        <property role="3TUv4t" value="true" />
        <node concept="10Q1$e" id="2y5ZLyw9pP5" role="1tU5fm">
          <node concept="10Q1$e" id="2y5ZLyw9pP4" role="10Q1$1">
            <node concept="10Q1$e" id="2y5ZLyw9pP3" role="10Q1$1">
              <node concept="10Oyi0" id="2y5ZLyw9pP2" role="10Q1$1" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pP6" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="2y5ZLyw9pP7" role="jymVt">
        <node concept="3cqZAl" id="2y5ZLyw9pP8" role="3clF45" />
        <node concept="37vLTG" id="2y5ZLyw9pP9" role="3clF46">
          <property role="TrG5h" value="nombre" />
          <node concept="3uibUv" id="2y5ZLyw9pPa" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="2y5ZLyw9pPb" role="3clF46">
          <property role="TrG5h" value="estados" />
          <node concept="10Q1$e" id="2y5ZLyw9pPd" role="1tU5fm">
            <node concept="3uibUv" id="2y5ZLyw9pPc" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2y5ZLyw9pPe" role="3clF46">
          <property role="TrG5h" value="eventos" />
          <node concept="10Q1$e" id="2y5ZLyw9pPg" role="1tU5fm">
            <node concept="3uibUv" id="2y5ZLyw9pPf" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2y5ZLyw9pPh" role="3clF46">
          <property role="TrG5h" value="inicial" />
          <node concept="10Oyi0" id="2y5ZLyw9pPi" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2y5ZLyw9pPj" role="3clF46">
          <property role="TrG5h" value="aceptacion" />
          <node concept="10Q1$e" id="2y5ZLyw9pPl" role="1tU5fm">
            <node concept="10Oyi0" id="2y5ZLyw9pPk" role="10Q1$1" />
          </node>
        </node>
        <node concept="37vLTG" id="2y5ZLyw9pPm" role="3clF46">
          <property role="TrG5h" value="delta" />
          <node concept="10Q1$e" id="2y5ZLyw9pPq" role="1tU5fm">
            <node concept="10Q1$e" id="2y5ZLyw9pPp" role="10Q1$1">
              <node concept="10Q1$e" id="2y5ZLyw9pPo" role="10Q1$1">
                <node concept="10Oyi0" id="2y5ZLyw9pPn" role="10Q1$1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2y5ZLyw9pPr" role="3clF47">
          <node concept="3clFbF" id="2y5ZLyw9pPs" role="3cqZAp">
            <node concept="37vLTI" id="2y5ZLyw9pPt" role="3clFbG">
              <node concept="2OqwBi" id="2y5ZLyw9pPu" role="37vLTJ">
                <node concept="Xjq3P" id="2y5ZLyw9pPv" role="2Oq$k0" />
                <node concept="2OwXpG" id="2y5ZLyw9pPw" role="2OqNvi">
                  <ref role="2Oxat5" node="2y5ZLyw9pOD" resolve="nombre" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyw9pPx" role="37vLTx">
                <ref role="3cqZAo" node="2y5ZLyw9pP9" resolve="nombre" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLyw9pPy" role="3cqZAp">
            <node concept="37vLTI" id="2y5ZLyw9pPz" role="3clFbG">
              <node concept="2OqwBi" id="2y5ZLyw9pP$" role="37vLTJ">
                <node concept="Xjq3P" id="2y5ZLyw9pP_" role="2Oq$k0" />
                <node concept="2OwXpG" id="2y5ZLyw9pPA" role="2OqNvi">
                  <ref role="2Oxat5" node="2y5ZLyw9pOH" resolve="estados" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyw9pPB" role="37vLTx">
                <ref role="3cqZAo" node="2y5ZLyw9pPb" resolve="estados" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLyw9pPC" role="3cqZAp">
            <node concept="37vLTI" id="2y5ZLyw9pPD" role="3clFbG">
              <node concept="2OqwBi" id="2y5ZLyw9pPE" role="37vLTJ">
                <node concept="Xjq3P" id="2y5ZLyw9pPF" role="2Oq$k0" />
                <node concept="2OwXpG" id="2y5ZLyw9pPG" role="2OqNvi">
                  <ref role="2Oxat5" node="2y5ZLyw9pOM" resolve="eventos" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyw9pPH" role="37vLTx">
                <ref role="3cqZAo" node="2y5ZLyw9pPe" resolve="eventos" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLyw9pPI" role="3cqZAp">
            <node concept="37vLTI" id="2y5ZLyw9pPJ" role="3clFbG">
              <node concept="2OqwBi" id="2y5ZLyw9pPK" role="37vLTJ">
                <node concept="Xjq3P" id="2y5ZLyw9pPL" role="2Oq$k0" />
                <node concept="2OwXpG" id="2y5ZLyw9pPM" role="2OqNvi">
                  <ref role="2Oxat5" node="2y5ZLyw9pOR" resolve="inicial" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyw9pPN" role="37vLTx">
                <ref role="3cqZAo" node="2y5ZLyw9pPh" resolve="inicial" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLyw9pPO" role="3cqZAp">
            <node concept="37vLTI" id="2y5ZLyw9pPP" role="3clFbG">
              <node concept="2OqwBi" id="2y5ZLyw9pPQ" role="37vLTJ">
                <node concept="Xjq3P" id="2y5ZLyw9pPR" role="2Oq$k0" />
                <node concept="2OwXpG" id="2y5ZLyw9pPS" role="2OqNvi">
                  <ref role="2Oxat5" node="2y5ZLyw9pOV" resolve="aceptacion" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyw9pPT" role="37vLTx">
                <ref role="3cqZAo" node="2y5ZLyw9pPj" resolve="aceptacion" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2y5ZLyw9pPU" role="3cqZAp">
            <node concept="37vLTI" id="2y5ZLyw9pPV" role="3clFbG">
              <node concept="2OqwBi" id="2y5ZLyw9pPW" role="37vLTJ">
                <node concept="Xjq3P" id="2y5ZLyw9pPX" role="2Oq$k0" />
                <node concept="2OwXpG" id="2y5ZLyw9pPY" role="2OqNvi">
                  <ref role="2Oxat5" node="2y5ZLyw9pP0" resolve="delta" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyw9pPZ" role="37vLTx">
                <ref role="3cqZAo" node="2y5ZLyw9pPm" resolve="delta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pQ0" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="2y5ZLyw9pQ1" role="jymVt">
        <property role="TrG5h" value="indiceEvento" />
        <node concept="37vLTG" id="2y5ZLyw9pQ2" role="3clF46">
          <property role="TrG5h" value="evento" />
          <node concept="3uibUv" id="2y5ZLyw9pQ3" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3clFbS" id="2y5ZLyw9pQ4" role="3clF47">
          <node concept="1Dw8fO" id="2y5ZLyw9pQ5" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLyw9pQ6" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="2y5ZLyw9pQ8" role="1tU5fm" />
              <node concept="3cmrfG" id="2y5ZLyw9pQ9" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="2y5ZLyw9pQa" role="1Dwp0S">
              <node concept="37vLTw" id="2y5ZLyw9pQb" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLyw9pQ6" resolve="i" />
              </node>
              <node concept="2OqwBi" id="2y5ZLyw9q54" role="3uHU7w">
                <node concept="37vLTw" id="2y5ZLyw9q53" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyw9pOM" resolve="eventos" />
                </node>
                <node concept="1Rwk04" id="2y5ZLyw9qxm" role="2OqNvi" />
              </node>
            </node>
            <node concept="3uNrnE" id="2y5ZLyw9pQe" role="1Dwrff">
              <node concept="37vLTw" id="2y5ZLyw9pQf" role="2$L3a6">
                <ref role="3cqZAo" node="2y5ZLyw9pQ6" resolve="i" />
              </node>
            </node>
            <node concept="3clFbS" id="2y5ZLyw9pQh" role="2LFqv$">
              <node concept="3clFbJ" id="2y5ZLyw9pQi" role="3cqZAp">
                <node concept="2OqwBi" id="2y5ZLyw9q5M" role="3clFbw">
                  <node concept="AH0OO" id="2y5ZLyw9pQk" role="2Oq$k0">
                    <node concept="37vLTw" id="2y5ZLyw9pQl" role="AHHXb">
                      <ref role="3cqZAo" node="2y5ZLyw9pOM" resolve="eventos" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyw9pQm" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLyw9pQ6" resolve="i" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2y5ZLyw9q5N" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="2y5ZLyw9q5O" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyw9pQ2" resolve="evento" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2y5ZLyw9pQp" role="3clFbx">
                  <node concept="3cpWs6" id="2y5ZLyw9pQq" role="3cqZAp">
                    <node concept="37vLTw" id="2y5ZLyw9pQr" role="3cqZAk">
                      <ref role="3cqZAo" node="2y5ZLyw9pQ6" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2y5ZLyw9pQs" role="3cqZAp">
            <node concept="1ZRNhn" id="2y5ZLyw9pQt" role="3cqZAk">
              <node concept="3cmrfG" id="2y5ZLyw9pQu" role="2$L3a6">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pQv" role="1B3o_S" />
        <node concept="10Oyi0" id="2y5ZLyw9pQw" role="3clF45" />
      </node>
      <node concept="3clFb_" id="2y5ZLyw9pQx" role="jymVt">
        <property role="TrG5h" value="esAceptacion" />
        <node concept="37vLTG" id="2y5ZLyw9pQy" role="3clF46">
          <property role="TrG5h" value="q" />
          <node concept="10Oyi0" id="2y5ZLyw9pQz" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2y5ZLyw9pQ$" role="3clF47">
          <node concept="1Dw8fO" id="2y5ZLyw9pQ_" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLyw9pQA" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="2y5ZLyw9pQC" role="1tU5fm" />
              <node concept="3cmrfG" id="2y5ZLyw9pQD" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="2y5ZLyw9pQE" role="1Dwp0S">
              <node concept="37vLTw" id="2y5ZLyw9pQF" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLyw9pQA" resolve="i" />
              </node>
              <node concept="2OqwBi" id="2y5ZLyw9q5U" role="3uHU7w">
                <node concept="37vLTw" id="2y5ZLyw9q5T" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyw9pOV" resolve="aceptacion" />
                </node>
                <node concept="1Rwk04" id="2y5ZLyw9qxn" role="2OqNvi" />
              </node>
            </node>
            <node concept="3uNrnE" id="2y5ZLyw9pQI" role="1Dwrff">
              <node concept="37vLTw" id="2y5ZLyw9pQJ" role="2$L3a6">
                <ref role="3cqZAo" node="2y5ZLyw9pQA" resolve="i" />
              </node>
            </node>
            <node concept="3clFbS" id="2y5ZLyw9pQL" role="2LFqv$">
              <node concept="3clFbJ" id="2y5ZLyw9pQM" role="3cqZAp">
                <node concept="3clFbC" id="2y5ZLyw9pQN" role="3clFbw">
                  <node concept="AH0OO" id="2y5ZLyw9pQO" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLyw9pQP" role="AHHXb">
                      <ref role="3cqZAo" node="2y5ZLyw9pOV" resolve="aceptacion" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyw9pQQ" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLyw9pQA" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2y5ZLyw9pQR" role="3uHU7w">
                    <ref role="3cqZAo" node="2y5ZLyw9pQy" resolve="q" />
                  </node>
                </node>
                <node concept="3clFbS" id="2y5ZLyw9pQT" role="3clFbx">
                  <node concept="3cpWs6" id="2y5ZLyw9pQU" role="3cqZAp">
                    <node concept="3clFbT" id="2y5ZLyw9pQV" role="3cqZAk">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2y5ZLyw9pQW" role="3cqZAp">
            <node concept="3clFbT" id="2y5ZLyw9pQX" role="3cqZAk" />
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pQY" role="1B3o_S" />
        <node concept="10P_77" id="2y5ZLyw9pQZ" role="3clF45" />
      </node>
      <node concept="3clFb_" id="2y5ZLyw9pR0" role="jymVt">
        <property role="TrG5h" value="algunoAcepta" />
        <node concept="37vLTG" id="2y5ZLyw9pR1" role="3clF46">
          <property role="TrG5h" value="activos" />
          <node concept="3uibUv" id="2y5ZLyw9pR2" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="2y5ZLyw9pR3" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2y5ZLyw9pR4" role="3clF47">
          <node concept="1DcWWT" id="2y5ZLyw9pR5" role="3cqZAp">
            <node concept="37vLTw" id="2y5ZLyw9pRi" role="1DdaDG">
              <ref role="3cqZAo" node="2y5ZLyw9pR1" resolve="activos" />
            </node>
            <node concept="3cpWsn" id="2y5ZLyw9pRf" role="1Duv9x">
              <property role="TrG5h" value="q" />
              <node concept="3uibUv" id="2y5ZLyw9pRh" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="3clFbS" id="2y5ZLyw9pR7" role="2LFqv$">
              <node concept="3clFbJ" id="2y5ZLyw9pR8" role="3cqZAp">
                <node concept="1rXfSq" id="2y5ZLyw9pR9" role="3clFbw">
                  <ref role="37wK5l" node="2y5ZLyw9pQx" resolve="esAceptacion" />
                  <node concept="2OqwBi" id="2y5ZLyw9qeF" role="37wK5m">
                    <node concept="37vLTw" id="2y5ZLyw9q60" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyw9pRf" resolve="q" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyw9qeG" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Integer.intValue()" resolve="intValue" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2y5ZLyw9pRc" role="3clFbx">
                  <node concept="3cpWs6" id="2y5ZLyw9pRd" role="3cqZAp">
                    <node concept="3clFbT" id="2y5ZLyw9pRe" role="3cqZAk">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2y5ZLyw9pRj" role="3cqZAp">
            <node concept="3clFbT" id="2y5ZLyw9pRk" role="3cqZAk" />
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pRl" role="1B3o_S" />
        <node concept="10P_77" id="2y5ZLyw9pRm" role="3clF45" />
      </node>
      <node concept="3clFb_" id="2y5ZLyw9pRn" role="jymVt">
        <property role="TrG5h" value="step" />
        <node concept="37vLTG" id="2y5ZLyw9pRo" role="3clF46">
          <property role="TrG5h" value="activos" />
          <node concept="3uibUv" id="2y5ZLyw9pRp" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="2y5ZLyw9pRq" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2y5ZLyw9pRr" role="3clF46">
          <property role="TrG5h" value="evento" />
          <node concept="10Oyi0" id="2y5ZLyw9pRs" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2y5ZLyw9pRt" role="3clF47">
          <node concept="3cpWs8" id="2y5ZLyw9pRv" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLyw9pRu" role="3cpWs9">
              <property role="TrG5h" value="siguiente" />
              <node concept="3uibUv" id="2y5ZLyw9pRw" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="3uibUv" id="2y5ZLyw9pRx" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
              <node concept="2ShNRf" id="2y5ZLyw9q62" role="33vP2m">
                <node concept="1pGfFk" id="2y5ZLyw9q66" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~TreeSet.&lt;init&gt;()" resolve="TreeSet" />
                  <node concept="3uibUv" id="2y5ZLyw9q67" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2y5ZLyw9pR$" role="3cqZAp">
            <node concept="3eOVzh" id="2y5ZLyw9pR_" role="3clFbw">
              <node concept="37vLTw" id="2y5ZLyw9pRA" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLyw9pRr" resolve="evento" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyw9pRB" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="2y5ZLyw9pRD" role="3clFbx">
              <node concept="3cpWs6" id="2y5ZLyw9pRE" role="3cqZAp">
                <node concept="37vLTw" id="2y5ZLyw9pRF" role="3cqZAk">
                  <ref role="3cqZAo" node="2y5ZLyw9pRu" resolve="siguiente" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="2y5ZLyw9pRG" role="3cqZAp">
            <node concept="37vLTw" id="2y5ZLyw9pSe" role="1DdaDG">
              <ref role="3cqZAo" node="2y5ZLyw9pRo" resolve="activos" />
            </node>
            <node concept="3cpWsn" id="2y5ZLyw9pSb" role="1Duv9x">
              <property role="TrG5h" value="q" />
              <node concept="3uibUv" id="2y5ZLyw9pSd" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="3clFbS" id="2y5ZLyw9pRI" role="2LFqv$">
              <node concept="3cpWs8" id="2y5ZLyw9pRK" role="3cqZAp">
                <node concept="3cpWsn" id="2y5ZLyw9pRJ" role="3cpWs9">
                  <property role="TrG5h" value="destinos" />
                  <node concept="10Q1$e" id="2y5ZLyw9pRM" role="1tU5fm">
                    <node concept="10Oyi0" id="2y5ZLyw9pRL" role="10Q1$1" />
                  </node>
                  <node concept="AH0OO" id="2y5ZLyw9pRN" role="33vP2m">
                    <node concept="AH0OO" id="2y5ZLyw9pRO" role="AHHXb">
                      <node concept="37vLTw" id="2y5ZLyw9pRP" role="AHHXb">
                        <ref role="3cqZAo" node="2y5ZLyw9pP0" resolve="delta" />
                      </node>
                      <node concept="2OqwBi" id="2y5ZLyw9qeQ" role="AHEQo">
                        <node concept="37vLTw" id="2y5ZLyw9q6c" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyw9pSb" resolve="q" />
                        </node>
                        <node concept="liA8E" id="2y5ZLyw9qeR" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Integer.intValue()" resolve="intValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2y5ZLyw9pRR" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLyw9pRr" resolve="evento" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Dw8fO" id="2y5ZLyw9pRS" role="3cqZAp">
                <node concept="3cpWsn" id="2y5ZLyw9pRT" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="2y5ZLyw9pRV" role="1tU5fm" />
                  <node concept="3cmrfG" id="2y5ZLyw9pRW" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="2y5ZLyw9pRX" role="1Dwp0S">
                  <node concept="37vLTw" id="2y5ZLyw9pRY" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyw9pRT" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="2y5ZLyw9q6j" role="3uHU7w">
                    <node concept="37vLTw" id="2y5ZLyw9q6i" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyw9pRJ" resolve="destinos" />
                    </node>
                    <node concept="1Rwk04" id="2y5ZLyw9qxo" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uNrnE" id="2y5ZLyw9pS1" role="1Dwrff">
                  <node concept="37vLTw" id="2y5ZLyw9pS2" role="2$L3a6">
                    <ref role="3cqZAo" node="2y5ZLyw9pRT" resolve="i" />
                  </node>
                </node>
                <node concept="3clFbS" id="2y5ZLyw9pS4" role="2LFqv$">
                  <node concept="3clFbF" id="2y5ZLyw9pS5" role="3cqZAp">
                    <node concept="2OqwBi" id="2y5ZLyw9qgX" role="3clFbG">
                      <node concept="37vLTw" id="2y5ZLyw9q6p" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyw9pRu" resolve="siguiente" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyw9qgY" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                        <node concept="2YIFZM" id="2y5ZLyw9qjX" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                          <ref role="37wK5l" to="wyt6:~Integer.valueOf(int)" resolve="valueOf" />
                          <node concept="AH0OO" id="2y5ZLyw9qjY" role="37wK5m">
                            <node concept="37vLTw" id="2y5ZLyw9qjZ" role="AHHXb">
                              <ref role="3cqZAo" node="2y5ZLyw9pRJ" resolve="destinos" />
                            </node>
                            <node concept="37vLTw" id="2y5ZLyw9qk0" role="AHEQo">
                              <ref role="3cqZAo" node="2y5ZLyw9pRT" resolve="i" />
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
          <node concept="3cpWs6" id="2y5ZLyw9pSf" role="3cqZAp">
            <node concept="37vLTw" id="2y5ZLyw9pSg" role="3cqZAk">
              <ref role="3cqZAo" node="2y5ZLyw9pRu" resolve="siguiente" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pSh" role="1B3o_S" />
        <node concept="3uibUv" id="2y5ZLyw9pSi" role="3clF45">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="2y5ZLyw9pSj" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
        <node concept="P$JXv" id="2y5ZLyw9pSk" role="lGtFl">
          <node concept="1PaTwC" id="2y5ZLyw9pSl" role="1Vez_I">
            <node concept="3oM_SD" id="2y5ZLyw9pSm" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
          <node concept="1PaTwC" id="2y5ZLyw9pYf" role="1Vez_I">
            <node concept="3oM_SD" id="2y5ZLyw9pYg" role="1PaTwD">
              <property role="3oM_SC" value="δ" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYh" role="1PaTwD">
              <property role="3oM_SC" value="extendida" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYi" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYj" role="1PaTwD">
              <property role="3oM_SC" value="conjuntos:" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYk" role="1PaTwD">
              <property role="3oM_SC" value="step(S," />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYl" role="1PaTwD">
              <property role="3oM_SC" value="a)" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYm" role="1PaTwD">
              <property role="3oM_SC" value="=" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYn" role="1PaTwD">
              <property role="3oM_SC" value="unión" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYo" role="1PaTwD">
              <property role="3oM_SC" value="de" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYp" role="1PaTwD">
              <property role="3oM_SC" value="δ(q," />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYq" role="1PaTwD">
              <property role="3oM_SC" value="a)" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYr" role="1PaTwD">
              <property role="3oM_SC" value="para" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYs" role="1PaTwD">
              <property role="3oM_SC" value="q" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYt" role="1PaTwD">
              <property role="3oM_SC" value="∈" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYu" role="1PaTwD">
              <property role="3oM_SC" value="S." />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYv" role="1PaTwD">
              <property role="3oM_SC" value="Sirve" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYw" role="1PaTwD">
              <property role="3oM_SC" value="también" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYx" role="1PaTwD">
              <property role="3oM_SC" value="para" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYy" role="1PaTwD">
              <property role="3oM_SC" value="un" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYz" role="1PaTwD">
              <property role="3oM_SC" value="AFN." />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2y5ZLyw9pSn" role="jymVt">
        <property role="TrG5h" value="formato" />
        <node concept="37vLTG" id="2y5ZLyw9pSo" role="3clF46">
          <property role="TrG5h" value="activos" />
          <node concept="3uibUv" id="2y5ZLyw9pSp" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="2y5ZLyw9pSq" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2y5ZLyw9pSr" role="3clF47">
          <node concept="3cpWs8" id="2y5ZLyw9pSt" role="3cqZAp">
            <node concept="3cpWsn" id="2y5ZLyw9pSs" role="3cpWs9">
              <property role="TrG5h" value="texto" />
              <node concept="3uibUv" id="2y5ZLyw9pSu" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyw9pSv" role="33vP2m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="2y5ZLyw9pSw" role="3cqZAp">
            <node concept="37vLTw" id="2y5ZLyw9pSU" role="1DdaDG">
              <ref role="3cqZAo" node="2y5ZLyw9pSo" resolve="activos" />
            </node>
            <node concept="3cpWsn" id="2y5ZLyw9pSR" role="1Duv9x">
              <property role="TrG5h" value="q" />
              <node concept="3uibUv" id="2y5ZLyw9pST" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="3clFbS" id="2y5ZLyw9pSy" role="2LFqv$">
              <node concept="3clFbJ" id="2y5ZLyw9pSz" role="3cqZAp">
                <node concept="3eOSWO" id="2y5ZLyw9pS$" role="3clFbw">
                  <node concept="2OqwBi" id="2y5ZLyw9qhh" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLyw9q6z" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyw9pSs" resolve="texto" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyw9qhi" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="2y5ZLyw9pSA" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3clFbS" id="2y5ZLyw9pSC" role="3clFbx">
                  <node concept="3clFbF" id="2y5ZLyw9pSD" role="3cqZAp">
                    <node concept="37vLTI" id="2y5ZLyw9pSE" role="3clFbG">
                      <node concept="37vLTw" id="2y5ZLyw9pSF" role="37vLTJ">
                        <ref role="3cqZAo" node="2y5ZLyw9pSs" resolve="texto" />
                      </node>
                      <node concept="3cpWs3" id="2y5ZLyw9pSG" role="37vLTx">
                        <node concept="37vLTw" id="2y5ZLyw9pSH" role="3uHU7B">
                          <ref role="3cqZAo" node="2y5ZLyw9pSs" resolve="texto" />
                        </node>
                        <node concept="Xl_RD" id="2y5ZLyw9pSI" role="3uHU7w">
                          <property role="Xl_RC" value=", " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2y5ZLyw9pSJ" role="3cqZAp">
                <node concept="37vLTI" id="2y5ZLyw9pSK" role="3clFbG">
                  <node concept="37vLTw" id="2y5ZLyw9pSL" role="37vLTJ">
                    <ref role="3cqZAo" node="2y5ZLyw9pSs" resolve="texto" />
                  </node>
                  <node concept="3cpWs3" id="2y5ZLyw9pSM" role="37vLTx">
                    <node concept="37vLTw" id="2y5ZLyw9pSN" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyw9pSs" resolve="texto" />
                    </node>
                    <node concept="AH0OO" id="2y5ZLyw9pSO" role="3uHU7w">
                      <node concept="37vLTw" id="2y5ZLyw9pSP" role="AHHXb">
                        <ref role="3cqZAo" node="2y5ZLyw9pOH" resolve="estados" />
                      </node>
                      <node concept="2OqwBi" id="2y5ZLyw9qhs" role="AHEQo">
                        <node concept="37vLTw" id="2y5ZLyw9q6D" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyw9pSR" resolve="q" />
                        </node>
                        <node concept="liA8E" id="2y5ZLyw9qht" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Integer.intValue()" resolve="intValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2y5ZLyw9pSV" role="3cqZAp">
            <node concept="3clFbC" id="2y5ZLyw9pSW" role="3clFbw">
              <node concept="2OqwBi" id="2y5ZLyw9qjy" role="3uHU7B">
                <node concept="37vLTw" id="2y5ZLyw9q6J" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyw9pSo" resolve="activos" />
                </node>
                <node concept="liA8E" id="2y5ZLyw9qjz" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
                </node>
              </node>
              <node concept="3cmrfG" id="2y5ZLyw9pSY" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="3clFbS" id="2y5ZLyw9pT0" role="3clFbx">
              <node concept="3cpWs6" id="2y5ZLyw9pT1" role="3cqZAp">
                <node concept="37vLTw" id="2y5ZLyw9pT2" role="3cqZAk">
                  <ref role="3cqZAo" node="2y5ZLyw9pSs" resolve="texto" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2y5ZLyw9pT3" role="3cqZAp">
            <node concept="3cpWs3" id="2y5ZLyw9pT4" role="3cqZAk">
              <node concept="3cpWs3" id="2y5ZLyw9pT5" role="3uHU7B">
                <node concept="Xl_RD" id="2y5ZLyw9pT6" role="3uHU7B">
                  <property role="Xl_RC" value="{" />
                </node>
                <node concept="37vLTw" id="2y5ZLyw9pT7" role="3uHU7w">
                  <ref role="3cqZAo" node="2y5ZLyw9pSs" resolve="texto" />
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLyw9pT8" role="3uHU7w">
                <property role="Xl_RC" value="}" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2y5ZLyw9pT9" role="1B3o_S" />
        <node concept="3uibUv" id="2y5ZLyw9pTa" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="P$JXv" id="2y5ZLyw9pTb" role="lGtFl">
          <node concept="1PaTwC" id="2y5ZLyw9pTc" role="1Vez_I">
            <node concept="3oM_SD" id="2y5ZLyw9pTd" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
          <node concept="1PaTwC" id="2y5ZLyw9pY$" role="1Vez_I">
            <node concept="3oM_SD" id="2y5ZLyw9pY_" role="1PaTwD">
              <property role="3oM_SC" value="Un" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYA" role="1PaTwD">
              <property role="3oM_SC" value="estado" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYB" role="1PaTwD">
              <property role="3oM_SC" value="activo" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYC" role="1PaTwD">
              <property role="3oM_SC" value="se" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYD" role="1PaTwD">
              <property role="3oM_SC" value="escribe" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYE" role="1PaTwD">
              <property role="3oM_SC" value="por" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYF" role="1PaTwD">
              <property role="3oM_SC" value="su" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYG" role="1PaTwD">
              <property role="3oM_SC" value="nombre;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYH" role="1PaTwD">
              <property role="3oM_SC" value="varios" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYI" role="1PaTwD">
              <property role="3oM_SC" value="(AFN)" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYJ" role="1PaTwD">
              <property role="3oM_SC" value="como" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYK" role="1PaTwD">
              <property role="3oM_SC" value="{A," />
            </node>
            <node concept="3oM_SD" id="2y5ZLyw9pYL" role="1PaTwD">
              <property role="3oM_SC" value="B}." />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="2y5ZLyw9BoR" role="lGtFl">
      <ref role="n9lRv" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
    </node>
    <node concept="17Uvod" id="2y5ZLyw9BYc" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="2y5ZLyw9BYd" role="3zH0cK">
        <node concept="3clFbS" id="2y5ZLyw9BYe" role="2VODD2">
          <node concept="3clFbF" id="2y5ZLyw9BYf" role="3cqZAp">
            <node concept="3cpWs3" id="2y5ZLyw9BYg" role="3clFbG">
              <node concept="Xl_RD" id="2y5ZLyw9BYh" role="3uHU7B">
                <property role="Xl_RC" value="GeneratedHomeSystem_" />
              </node>
              <node concept="2OqwBi" id="2y5ZLyw9BYi" role="3uHU7w">
                <node concept="30H73N" id="2y5ZLyw9BYj" role="2Oq$k0" />
                <node concept="3TrcHB" id="2y5ZLyw9BYk" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

