<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d42febec-2d48-45a2-8e14-c5beba257da2(domus.reasoner.selftest)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
  </languages>
  <imports>
    <import index="op1a" ref="r:edb40588-6aa3-4d1b-9aa3-15b2491e5c9f(domus.reasoner.automata)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
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
  <node concept="312cEu" id="2y5ZLyvNZHL">
    <property role="TrG5h" value="TestMain" />
    <node concept="3Tm1VV" id="2y5ZLyvNZHM" role="1B3o_S" />
    <node concept="3UR2Jj" id="2y5ZLyvO0ng" role="lGtFl">
      <node concept="1PaTwC" id="2y5ZLyvO0nh" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyvO0ni" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyvO0nC" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyvO0nD" role="1PaTwD">
          <property role="3oM_SC" value="Pruebas" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nE" role="1PaTwD">
          <property role="3oM_SC" value="del" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nF" role="1PaTwD">
          <property role="3oM_SC" value="prototipo" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nG" role="1PaTwD">
          <property role="3oM_SC" value="del" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nH" role="1PaTwD">
          <property role="3oM_SC" value="razonador" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nI" role="1PaTwD">
          <property role="3oM_SC" value="(sin" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nJ" role="1PaTwD">
          <property role="3oM_SC" value="JUnit)," />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nK" role="1PaTwD">
          <property role="3oM_SC" value="sobre" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nL" role="1PaTwD">
          <property role="3oM_SC" value="la" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nM" role="1PaTwD">
          <property role="3oM_SC" value="Cerradura" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nN" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nO" role="1PaTwD">
          <property role="3oM_SC" value="la" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nP" role="1PaTwD">
          <property role="3oM_SC" value="§2." />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyvO0nQ" role="1Vez_I" />
      <node concept="1PaTwC" id="2y5ZLyvO0nR" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyvO0nS" role="1PaTwD">
          <property role="3oM_SC" value="Compilar" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nT" role="1PaTwD">
          <property role="3oM_SC" value="y" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nU" role="1PaTwD">
          <property role="3oM_SC" value="ejecutar" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nV" role="1PaTwD">
          <property role="3oM_SC" value="desde" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nW" role="1PaTwD">
          <property role="3oM_SC" value="prototipo-razonador/" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0nX" role="1PaTwD">
          <property role="3oM_SC" value=":" />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyvO0nY" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyvO0nZ" role="1PaTwD">
          <property role="3oM_SC" value="javac" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0o0" role="1PaTwD">
          <property role="3oM_SC" value="-encoding" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0o1" role="1PaTwD">
          <property role="3oM_SC" value="UTF-8" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0o2" role="1PaTwD">
          <property role="3oM_SC" value="domus/reasoner/*.java" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0o3" role="1PaTwD">
          <property role="3oM_SC" value="TestMain.java" />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyvO0o4" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyvO0o5" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0o6" role="1PaTwD">
          <property role="3oM_SC" value="TestMain" />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyvO0o7" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyvO0o8" role="1PaTwD">
          <property role="3oM_SC" value="Termina" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0o9" role="1PaTwD">
          <property role="3oM_SC" value="con" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0oa" role="1PaTwD">
          <property role="3oM_SC" value="código" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0ob" role="1PaTwD">
          <property role="3oM_SC" value="0" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0oc" role="1PaTwD">
          <property role="3oM_SC" value="si" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0od" role="1PaTwD">
          <property role="3oM_SC" value="todas" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0oe" role="1PaTwD">
          <property role="3oM_SC" value="las" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0of" role="1PaTwD">
          <property role="3oM_SC" value="aserciones" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0og" role="1PaTwD">
          <property role="3oM_SC" value="pasan" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0oh" role="1PaTwD">
          <property role="3oM_SC" value="y" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0oi" role="1PaTwD">
          <property role="3oM_SC" value="1" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0oj" role="1PaTwD">
          <property role="3oM_SC" value="si" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0ok" role="1PaTwD">
          <property role="3oM_SC" value="alguna" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyvO0ol" role="1PaTwD">
          <property role="3oM_SC" value="falla." />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2y5ZLyvNZHN" role="jymVt">
      <property role="TrG5h" value="out" />
      <node concept="3uibUv" id="2y5ZLyvNZHO" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~PrintStream" resolve="PrintStream" />
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZHP" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2y5ZLyvNZHQ" role="jymVt">
      <property role="TrG5h" value="passed" />
      <node concept="10Oyi0" id="2y5ZLyvNZHR" role="1tU5fm" />
      <node concept="3cmrfG" id="2y5ZLyvNZHS" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZHT" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2y5ZLyvNZHU" role="jymVt">
      <property role="TrG5h" value="failed" />
      <node concept="10Oyi0" id="2y5ZLyvNZHV" role="1tU5fm" />
      <node concept="3cmrfG" id="2y5ZLyvNZHW" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZHX" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2y5ZLyvNZHY" role="jymVt">
      <property role="TrG5h" value="sigma" />
      <node concept="3uibUv" id="2y5ZLyvNZHZ" role="1tU5fm">
        <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZI0" role="1B3o_S" />
      <node concept="z59LJ" id="2y5ZLyvNZI1" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvNZI2" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvNZI3" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0om" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0on" role="1PaTwD">
            <property role="3oM_SC" value="Alfabeto" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oo" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0op" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oq" role="1PaTwD">
            <property role="3oM_SC" value="Cerradura," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0or" role="1PaTwD">
            <property role="3oM_SC" value="en" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0os" role="1PaTwD">
            <property role="3oM_SC" value="el" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0ot" role="1PaTwD">
            <property role="3oM_SC" value="orden" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0ou" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0ov" role="1PaTwD">
            <property role="3oM_SC" value="declaración" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0ow" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0ox" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oy" role="1PaTwD">
            <property role="3oM_SC" value="§2." />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2y5ZLyvNZI4" role="jymVt">
      <property role="TrG5h" value="stateNames" />
      <node concept="3uibUv" id="2y5ZLyvNZI5" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2y5ZLyvNZI6" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZI7" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2y5ZLyvNZI8" role="jymVt">
      <property role="TrG5h" value="BLOQUEADA" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="2y5ZLyvNZI9" role="1tU5fm" />
      <node concept="3cmrfG" id="2y5ZLyvNZIa" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZIb" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2y5ZLyvNZIc" role="jymVt">
      <property role="TrG5h" value="DESBLOQUEADA" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="2y5ZLyvNZId" role="1tU5fm" />
      <node concept="3cmrfG" id="2y5ZLyvNZIe" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZIf" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2y5ZLyvNZIg" role="jymVt">
      <property role="TrG5h" value="ABIERTA" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="2y5ZLyvNZIh" role="1tU5fm" />
      <node concept="3cmrfG" id="2y5ZLyvNZIi" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZIj" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2y5ZLyvNZIk" role="jymVt">
      <property role="TrG5h" value="INTRUSION" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="2y5ZLyvNZIl" role="1tU5fm" />
      <node concept="3cmrfG" id="2y5ZLyvNZIm" role="33vP2m">
        <property role="3cmrfH" value="3" />
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZIn" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZIo" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="2y5ZLyvNZIp" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="2y5ZLyvNZIr" role="1tU5fm">
          <node concept="3uibUv" id="2y5ZLyvNZIq" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2y5ZLyvNZIs" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZIt" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZIu" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyvNZIv" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvNZIw" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0tR" role="37vLTx">
              <node concept="1pGfFk" id="2y5ZLyvO0uF" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~PrintStream.&lt;init&gt;(java.io.OutputStream,boolean,java.lang.String)" resolve="PrintStream" />
                <node concept="10M0yZ" id="2y5ZLyvO1$9" role="37wK5m">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="3clFbT" id="2y5ZLyvO0uH" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvO0uI" role="37wK5m">
                  <property role="Xl_RC" value="UTF-8" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZI_" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyvNZIA" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvNZIB" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0uJ" role="37vLTx">
              <node concept="1pGfFk" id="2y5ZLyvO0uL" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE5q" resolve="Alphabet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZID" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1$n" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0uO" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1$o" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1$p" role="37wK5m">
                <property role="Xl_RC" value="desbloquear" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZIG" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1$B" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0uT" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1$C" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1$D" role="37wK5m">
                <property role="Xl_RC" value="abrir" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZIJ" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1$R" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0uY" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1$S" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1$T" role="37wK5m">
                <property role="Xl_RC" value="cerrar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZIM" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1_7" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0v3" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1_8" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1_9" role="37wK5m">
                <property role="Xl_RC" value="bloquear" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZIP" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1_n" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0v8" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1_o" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1_p" role="37wK5m">
                <property role="Xl_RC" value="forzar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZIS" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1_B" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0vd" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1_C" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1_D" role="37wK5m">
                <property role="Xl_RC" value="desactivar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZIV" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyvNZIW" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvNZIX" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyvNZI4" resolve="stateNames" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0vg" role="37vLTx">
              <node concept="1pGfFk" id="2y5ZLyvO0vl" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyvO0vm" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJ0" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1BZ" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0vp" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZI4" resolve="stateNames" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1C0" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1C1" role="37wK5m">
                <property role="Xl_RC" value="Bloqueada" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJ3" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1En" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0vu" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZI4" resolve="stateNames" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1Eo" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1Ep" role="37wK5m">
                <property role="Xl_RC" value="Desbloqueada" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJ6" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1GJ" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0vz" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZI4" resolve="stateNames" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1GK" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1GL" role="37wK5m">
                <property role="Xl_RC" value="Abierta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJ9" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1J7" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0vC" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZI4" resolve="stateNames" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1J8" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO1J9" role="37wK5m">
                <property role="Xl_RC" value="Intrusion" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJc" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJd" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZPS" resolve="test01Consistencia" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJe" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJf" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZR1" resolve="test02CicloCompleto" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJg" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJh" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZRM" resolve="test03NoBloquearAbierta" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJi" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJj" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZS4" resolve="test04RequiredViolada" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJk" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJl" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZS$" resolve="test05BorradorBloqueaAbierta" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJm" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJn" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZTf" resolve="test06BorradorAlarmaSinRecuperacion" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJo" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJp" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZTY" resolve="test07Simulador" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJq" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJr" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZVQ" resolve="test08ThompsonSubconjuntos" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJs" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJt" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZY5" resolve="test09IdaYVueltaKleene" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJu" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJv" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZZ3" resolve="test10MinimoDelDispositivo" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJw" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJx" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZZx" resolve="test11EquivalenciaNegativa" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJy" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJz" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvO00u" resolve="test12NoDeterminismoYShortlex" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJ$" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJ_" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvO04m" resolve="test13OperadoresDerivados" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJA" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJB" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvO07o" resolve="test14CasosBorde" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJC" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZJD" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvO0fW" resolve="test15PropiedadesAleatorias" />
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJE" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1Jo" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0vH" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1Jp" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZJG" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1JC" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0vL" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1JD" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="2y5ZLyvO1JE" role="37wK5m">
                <node concept="3cpWs3" id="2y5ZLyvO1JF" role="3uHU7B">
                  <node concept="3cpWs3" id="2y5ZLyvO1JG" role="3uHU7B">
                    <node concept="3cpWs3" id="2y5ZLyvO1JH" role="3uHU7B">
                      <node concept="Xl_RD" id="2y5ZLyvO1JI" role="3uHU7B">
                        <property role="Xl_RC" value="RESULTADO: " />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO1JJ" role="3uHU7w">
                        <ref role="3cqZAo" node="2y5ZLyvNZHQ" resolve="passed" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2y5ZLyvO1JK" role="3uHU7w">
                      <property role="Xl_RC" value=" aserciones OK, " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO1JL" role="3uHU7w">
                    <ref role="3cqZAo" node="2y5ZLyvNZHU" resolve="failed" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2y5ZLyvO1JM" role="3uHU7w">
                  <property role="Xl_RC" value=" fallidas" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2y5ZLyvNZJR" role="3cqZAp">
          <node concept="3eOSWO" id="2y5ZLyvNZJS" role="3clFbw">
            <node concept="37vLTw" id="2y5ZLyvNZJT" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvNZHU" resolve="failed" />
            </node>
            <node concept="3cmrfG" id="2y5ZLyvNZJU" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvNZJW" role="3clFbx">
            <node concept="3clFbF" id="2y5ZLyvNZJX" role="3cqZAp">
              <node concept="2YIFZM" id="2y5ZLyvO0w2" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.exit(int)" resolve="exit" />
                <node concept="3cmrfG" id="2y5ZLyvO0w3" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZK0" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZK1" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZK2" role="jymVt">
      <property role="TrG5h" value="section" />
      <node concept="37vLTG" id="2y5ZLyvNZK3" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="3uibUv" id="2y5ZLyvNZK4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZK5" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZK6" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1K1" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0w6" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1K2" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZK8" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1Kh" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0wa" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1Ki" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="37vLTw" id="2y5ZLyvO1Kj" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZK3" resolve="title" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZKb" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZKc" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZKd" role="jymVt">
      <property role="TrG5h" value="check" />
      <node concept="37vLTG" id="2y5ZLyvNZKe" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="10P_77" id="2y5ZLyvNZKf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2y5ZLyvNZKg" role="3clF46">
        <property role="TrG5h" value="description" />
        <node concept="3uibUv" id="2y5ZLyvNZKh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZKi" role="3clF47">
        <node concept="3clFbJ" id="2y5ZLyvNZKj" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyvNZKk" role="3clFbw">
            <ref role="3cqZAo" node="2y5ZLyvNZKe" resolve="condition" />
          </node>
          <node concept="9aQIb" id="2y5ZLyvNZKy" role="9aQIa">
            <node concept="3clFbS" id="2y5ZLyvNZKz" role="9aQI4">
              <node concept="3clFbF" id="2y5ZLyvNZK$" role="3cqZAp">
                <node concept="37vLTI" id="2y5ZLyvNZK_" role="3clFbG">
                  <node concept="37vLTw" id="2y5ZLyvNZKA" role="37vLTJ">
                    <ref role="3cqZAo" node="2y5ZLyvNZHU" resolve="failed" />
                  </node>
                  <node concept="3cpWs3" id="2y5ZLyvNZKB" role="37vLTx">
                    <node concept="37vLTw" id="2y5ZLyvNZKC" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyvNZHU" resolve="failed" />
                    </node>
                    <node concept="3cmrfG" id="2y5ZLyvNZKD" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2y5ZLyvNZKE" role="3cqZAp">
                <node concept="2OqwBi" id="2y5ZLyvO1Ky" role="3clFbG">
                  <node concept="37vLTw" id="2y5ZLyvO0wf" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO1Kz" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                    <node concept="3cpWs3" id="2y5ZLyvO1K$" role="37wK5m">
                      <node concept="Xl_RD" id="2y5ZLyvO1K_" role="3uHU7B">
                        <property role="Xl_RC" value="  [FALLA] " />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO1KA" role="3uHU7w">
                        <ref role="3cqZAo" node="2y5ZLyvNZKg" resolve="description" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvNZKm" role="3clFbx">
            <node concept="3clFbF" id="2y5ZLyvNZKn" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvNZKo" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvNZKp" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvNZHQ" resolve="passed" />
                </node>
                <node concept="3cpWs3" id="2y5ZLyvNZKq" role="37vLTx">
                  <node concept="37vLTw" id="2y5ZLyvNZKr" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyvNZHQ" resolve="passed" />
                  </node>
                  <node concept="3cmrfG" id="2y5ZLyvNZKs" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvNZKt" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyvO1KP" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0wm" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO1KQ" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="3cpWs3" id="2y5ZLyvO1KR" role="37wK5m">
                    <node concept="Xl_RD" id="2y5ZLyvO1KS" role="3uHU7B">
                      <property role="Xl_RC" value="  [OK]    " />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO1KT" role="3uHU7w">
                      <ref role="3cqZAo" node="2y5ZLyvNZKg" resolve="description" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZKJ" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZKK" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZKL" role="jymVt">
      <property role="TrG5h" value="checkEquals" />
      <node concept="37vLTG" id="2y5ZLyvNZKM" role="3clF46">
        <property role="TrG5h" value="expected" />
        <node concept="3uibUv" id="2y5ZLyvNZKN" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvNZKO" role="3clF46">
        <property role="TrG5h" value="actual" />
        <node concept="3uibUv" id="2y5ZLyvNZKP" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvNZKQ" role="3clF46">
        <property role="TrG5h" value="description" />
        <node concept="3uibUv" id="2y5ZLyvNZKR" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZKS" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvNZKU" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZKT" role="3cpWs9">
            <property role="TrG5h" value="same" />
            <node concept="10P_77" id="2y5ZLyvNZKV" role="1tU5fm" />
            <node concept="3K4zz7" id="2y5ZLyvNZL4" role="33vP2m">
              <node concept="3clFbC" id="2y5ZLyvNZKW" role="3K4Cdx">
                <node concept="37vLTw" id="2y5ZLyvNZKX" role="3uHU7B">
                  <ref role="3cqZAo" node="2y5ZLyvNZKM" resolve="expected" />
                </node>
                <node concept="10Nm6u" id="2y5ZLyvNZKY" role="3uHU7w" />
              </node>
              <node concept="3clFbC" id="2y5ZLyvNZKZ" role="3K4E3e">
                <node concept="37vLTw" id="2y5ZLyvNZL0" role="3uHU7B">
                  <ref role="3cqZAo" node="2y5ZLyvNZKO" resolve="actual" />
                </node>
                <node concept="10Nm6u" id="2y5ZLyvNZL1" role="3uHU7w" />
              </node>
              <node concept="2OqwBi" id="2y5ZLyvO1L2" role="3K4GZi">
                <node concept="37vLTw" id="2y5ZLyvO0wt" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZKM" resolve="expected" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO1L3" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="2y5ZLyvO1L4" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvNZKO" resolve="actual" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZL5" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZL6" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="37vLTw" id="2y5ZLyvNZL7" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZKT" resolve="same" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZL8" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZKQ" resolve="description" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2y5ZLyvNZL9" role="3cqZAp">
          <node concept="3fqX7Q" id="2y5ZLyvNZLa" role="3clFbw">
            <node concept="37vLTw" id="2y5ZLyvNZLb" role="3fr31v">
              <ref role="3cqZAo" node="2y5ZLyvNZKT" resolve="same" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvNZLd" role="3clFbx">
            <node concept="3clFbF" id="2y5ZLyvNZLe" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyvO1Lj" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0wy" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO1Lk" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="3cpWs3" id="2y5ZLyvO1Ll" role="37wK5m">
                    <node concept="Xl_RD" id="2y5ZLyvO1Lm" role="3uHU7B">
                      <property role="Xl_RC" value="          esperado: " />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO1Ln" role="3uHU7w">
                      <ref role="3cqZAo" node="2y5ZLyvNZKM" resolve="expected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvNZLj" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyvO1LA" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0wD" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO1LB" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="3cpWs3" id="2y5ZLyvO1LC" role="37wK5m">
                    <node concept="Xl_RD" id="2y5ZLyvO1LD" role="3uHU7B">
                      <property role="Xl_RC" value="          obtenido: " />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO1LE" role="3uHU7w">
                      <ref role="3cqZAo" node="2y5ZLyvNZKO" resolve="actual" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZLo" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZLp" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZLq" role="jymVt">
      <property role="TrG5h" value="names" />
      <node concept="37vLTG" id="2y5ZLyvNZLr" role="3clF46">
        <property role="TrG5h" value="items" />
        <node concept="10Q1$e" id="2y5ZLyvNZLt" role="1tU5fm">
          <node concept="3uibUv" id="2y5ZLyvNZLs" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZLu" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvNZLw" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZLv" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2y5ZLyvNZLx" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyvNZLy" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0wI" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0wN" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyvO0wO" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyvNZL_" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZLA" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyvNZLC" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvNZLD" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyvNZLE" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvNZLF" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvNZLA" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0wS" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLyvO0wR" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZLr" resolve="items" />
              </node>
              <node concept="1Rwk04" id="2y5ZLyvO5ik" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvNZLI" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvNZLJ" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvNZLA" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvNZLL" role="2LFqv$">
            <node concept="3clFbF" id="2y5ZLyvNZLM" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyvO1NX" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0wW" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZLv" resolve="result" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO1NY" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="AH0OO" id="2y5ZLyvO1NZ" role="37wK5m">
                    <node concept="37vLTw" id="2y5ZLyvO1O0" role="AHHXb">
                      <ref role="3cqZAo" node="2y5ZLyvNZLr" resolve="items" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO1O1" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLyvNZLA" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvNZLR" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyvNZLS" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLyvNZLv" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZLT" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZLU" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2y5ZLyvNZLV" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZLW" role="jymVt">
      <property role="TrG5h" value="word" />
      <node concept="37vLTG" id="2y5ZLyvNZLX" role="3clF46">
        <property role="TrG5h" value="items" />
        <node concept="10Q1$e" id="2y5ZLyvNZLZ" role="1tU5fm">
          <node concept="3uibUv" id="2y5ZLyvNZLY" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZM0" role="3clF47">
        <node concept="3cpWs6" id="2y5ZLyvNZM1" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1Of" role="3cqZAk">
            <node concept="37vLTw" id="2y5ZLyvO0x3" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1Og" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE7I" resolve="wordOf" />
              <node concept="1rXfSq" id="2y5ZLyvO1Oh" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
                <node concept="37vLTw" id="2y5ZLyvO1Oi" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZLX" resolve="items" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZM5" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZM6" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2y5ZLyvNZM7" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZM8" role="jymVt">
      <property role="TrG5h" value="setOf" />
      <node concept="37vLTG" id="2y5ZLyvNZM9" role="3clF46">
        <property role="TrG5h" value="items" />
        <node concept="10Q1$e" id="2y5ZLyvNZMb" role="1tU5fm">
          <node concept="10Oyi0" id="2y5ZLyvNZMa" role="10Q1$1" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZMc" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvNZMe" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZMd" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2y5ZLyvNZMf" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2y5ZLyvNZMg" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0xb" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0xf" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~TreeSet.&lt;init&gt;()" resolve="TreeSet" />
                <node concept="3uibUv" id="2y5ZLyvO0xg" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyvNZMj" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZMk" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyvNZMm" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvNZMn" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyvNZMo" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvNZMp" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvNZMk" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0xk" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLyvO0xj" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZM9" resolve="items" />
              </node>
              <node concept="1Rwk04" id="2y5ZLyvO5il" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvNZMs" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvNZMt" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvNZMk" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvNZMv" role="2LFqv$">
            <node concept="3clFbF" id="2y5ZLyvNZMw" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyvO1Qo" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0xo" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZMd" resolve="result" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO1Qp" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="AH0OO" id="2y5ZLyvO1Qq" role="37wK5m">
                    <node concept="37vLTw" id="2y5ZLyvO1Qr" role="AHHXb">
                      <ref role="3cqZAo" node="2y5ZLyvNZM9" resolve="items" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO1Qs" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLyvNZMk" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvNZM_" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyvNZMA" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLyvNZMd" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZMB" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZMC" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="2y5ZLyvNZMD" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZME" role="jymVt">
      <property role="TrG5h" value="sym" />
      <node concept="37vLTG" id="2y5ZLyvNZMF" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="2y5ZLyvNZMG" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZMH" role="3clF47">
        <node concept="3cpWs6" id="2y5ZLyvNZMI" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLyvO0xv" role="3cqZAk">
            <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
            <ref role="37wK5l" to="op1a:2y5ZLyvIuNF" resolve="symbol" />
            <node concept="2OqwBi" id="2y5ZLyvO442" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO1Qv" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
              </node>
              <node concept="liA8E" id="2y5ZLyvO443" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE6s" resolve="indexOf" />
                <node concept="37vLTw" id="2y5ZLyvO444" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZMF" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO44i" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO1Q$" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
              </node>
              <node concept="liA8E" id="2y5ZLyvO44j" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE74" resolve="size" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZMN" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZMO" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZMP" role="jymVt">
      <property role="TrG5h" value="compile" />
      <node concept="37vLTG" id="2y5ZLyvNZMQ" role="3clF46">
        <property role="TrG5h" value="nfa" />
        <node concept="3uibUv" id="2y5ZLyvNZMR" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZMS" role="3clF47">
        <node concept="3cpWs6" id="2y5ZLyvNZMT" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLyvO0x_" role="3cqZAk">
            <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
            <ref role="37wK5l" to="op1a:2y5ZLyvJ3yO" resolve="minimize" />
            <node concept="2YIFZM" id="2y5ZLyvO1QC" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvISWL" resolve="SubsetConstruction" />
              <ref role="37wK5l" to="op1a:2y5ZLyvISWN" resolve="determinize" />
              <node concept="37vLTw" id="2y5ZLyvO1QD" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZMQ" resolve="nfa" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZMX" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZMY" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZMZ" role="jymVt">
      <property role="TrG5h" value="cerraduraSinTransiciones" />
      <node concept="3clFbS" id="2y5ZLyvNZN0" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvNZN2" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZN1" role="3cpWs9">
            <property role="TrG5h" value="nfa" />
            <node concept="3uibUv" id="2y5ZLyvNZN3" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0xC" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0xQ" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHYk$" resolve="Nfa" />
                <node concept="2OqwBi" id="2y5ZLyvO44x" role="37wK5m">
                  <node concept="37vLTw" id="2y5ZLyvO1QG" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO44y" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvHE74" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZN6" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1QS" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0xU" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZN1" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1QT" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZN8" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1R4" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0xY" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZN1" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1R5" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZNa" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1Rg" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0y2" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZN1" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1Rh" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZNc" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1Rs" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0y6" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZN1" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1Rt" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZNe" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyvNZNf" role="3clFbG">
            <node concept="2OqwBi" id="2y5ZLyvO0yb" role="37vLTJ">
              <node concept="37vLTw" id="2y5ZLyvO0ya" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZN1" resolve="nfa" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0yc" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkg" resolve="initial" />
              </node>
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZNh" role="37vLTx">
              <ref role="3cqZAo" node="2y5ZLyvNZI8" resolve="BLOQUEADA" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZNi" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1TM" role="3clFbG">
            <node concept="2OqwBi" id="2y5ZLyvO0yg" role="2Oq$k0">
              <node concept="37vLTw" id="2y5ZLyvO0yf" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZN1" resolve="nfa" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0yh" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkk" resolve="accepting" />
              </node>
            </node>
            <node concept="liA8E" id="2y5ZLyvO1TN" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2y5ZLyvO1TO" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZI8" resolve="BLOQUEADA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvNZNl" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyvNZNm" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLyvNZN1" resolve="nfa" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZNn" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZNo" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
      <node concept="P$JXv" id="2y5ZLyvNZNp" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvNZNq" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvNZNr" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0oz" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0o$" role="1PaTwD">
            <property role="3oM_SC" value="Estados" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0o_" role="1PaTwD">
            <property role="3oM_SC" value="y" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oA" role="1PaTwD">
            <property role="3oM_SC" value="marcas" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oB" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oC" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oD" role="1PaTwD">
            <property role="3oM_SC" value="Cerradura," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oE" role="1PaTwD">
            <property role="3oM_SC" value="sin" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oF" role="1PaTwD">
            <property role="3oM_SC" value="transiciones." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZNs" role="jymVt">
      <property role="TrG5h" value="transicion" />
      <node concept="37vLTG" id="2y5ZLyvNZNt" role="3clF46">
        <property role="TrG5h" value="nfa" />
        <node concept="3uibUv" id="2y5ZLyvNZNu" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvNZNv" role="3clF46">
        <property role="TrG5h" value="origen" />
        <node concept="10Oyi0" id="2y5ZLyvNZNw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2y5ZLyvNZNx" role="3clF46">
        <property role="TrG5h" value="evento" />
        <node concept="3uibUv" id="2y5ZLyvNZNy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvNZNz" role="3clF46">
        <property role="TrG5h" value="destino" />
        <node concept="10Oyi0" id="2y5ZLyvNZN$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2y5ZLyvNZN_" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZNA" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1TY" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0yo" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZNt" resolve="nfa" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO1TZ" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="37vLTw" id="2y5ZLyvO1U0" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZNv" resolve="origen" />
              </node>
              <node concept="2OqwBi" id="2y5ZLyvO4eq" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLyvO44_" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO4er" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvHE6s" resolve="indexOf" />
                  <node concept="37vLTw" id="2y5ZLyvO4es" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvNZNx" resolve="evento" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyvO1U3" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZNz" resolve="destino" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZNG" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZNH" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZNI" role="jymVt">
      <property role="TrG5h" value="cerraduraSinRecuperacion" />
      <node concept="3clFbS" id="2y5ZLyvNZNJ" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvNZNL" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZNK" role="3cpWs9">
            <property role="TrG5h" value="nfa" />
            <node concept="3uibUv" id="2y5ZLyvNZNM" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZNN" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMZ" resolve="cerraduraSinTransiciones" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZNO" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZNP" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZNs" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLyvNZNQ" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZNK" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZNR" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZI8" resolve="BLOQUEADA" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZNS" role="37wK5m">
              <property role="Xl_RC" value="desbloquear" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZNT" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZIc" resolve="DESBLOQUEADA" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZNU" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZNV" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZNs" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLyvNZNW" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZNK" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZNX" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZIc" resolve="DESBLOQUEADA" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZNY" role="37wK5m">
              <property role="Xl_RC" value="abrir" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZNZ" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZIg" resolve="ABIERTA" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZO0" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZO1" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZNs" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLyvNZO2" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZNK" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZO3" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZIg" resolve="ABIERTA" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZO4" role="37wK5m">
              <property role="Xl_RC" value="cerrar" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZO5" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZIc" resolve="DESBLOQUEADA" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZO6" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZO7" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZNs" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLyvNZO8" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZNK" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZO9" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZIc" resolve="DESBLOQUEADA" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZOa" role="37wK5m">
              <property role="Xl_RC" value="bloquear" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZOb" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZI8" resolve="BLOQUEADA" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZOc" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZOd" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZNs" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLyvNZOe" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZNK" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZOf" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZI8" resolve="BLOQUEADA" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZOg" role="37wK5m">
              <property role="Xl_RC" value="forzar" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZOh" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZIk" resolve="INTRUSION" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvNZOi" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyvNZOj" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLyvNZNK" resolve="nfa" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZOk" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZOl" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
      <node concept="P$JXv" id="2y5ZLyvNZOm" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvNZOn" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvNZOo" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0oG" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0oH" role="1PaTwD">
            <property role="3oM_SC" value="Las" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oI" role="1PaTwD">
            <property role="3oM_SC" value="5" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oJ" role="1PaTwD">
            <property role="3oM_SC" value="transiciones" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oK" role="1PaTwD">
            <property role="3oM_SC" value="comunes" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oL" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oM" role="1PaTwD">
            <property role="3oM_SC" value="todas" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oN" role="1PaTwD">
            <property role="3oM_SC" value="las" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oO" role="1PaTwD">
            <property role="3oM_SC" value="variantes" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oP" role="1PaTwD">
            <property role="3oM_SC" value="(todas" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oQ" role="1PaTwD">
            <property role="3oM_SC" value="menos" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oR" role="1PaTwD">
            <property role="3oM_SC" value="Intrusion" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oS" role="1PaTwD">
            <property role="3oM_SC" value="--desactivar--&gt;" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oT" role="1PaTwD">
            <property role="3oM_SC" value="Bloqueada)." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZOp" role="jymVt">
      <property role="TrG5h" value="cerradura" />
      <node concept="3clFbS" id="2y5ZLyvNZOq" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvNZOs" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZOr" role="3cpWs9">
            <property role="TrG5h" value="nfa" />
            <node concept="3uibUv" id="2y5ZLyvNZOt" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZOu" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZNI" resolve="cerraduraSinRecuperacion" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZOv" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZOw" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZNs" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLyvNZOx" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZOr" resolve="nfa" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZOy" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZIk" resolve="INTRUSION" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZOz" role="37wK5m">
              <property role="Xl_RC" value="desactivar" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZO$" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZI8" resolve="BLOQUEADA" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvNZO_" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyvNZOA" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLyvNZOr" resolve="nfa" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZOB" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZOC" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
      <node concept="P$JXv" id="2y5ZLyvNZOD" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvNZOE" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvNZOF" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0oU" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0oV" role="1PaTwD">
            <property role="3oM_SC" value="La" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oW" role="1PaTwD">
            <property role="3oM_SC" value="Cerradura" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oX" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oY" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0oZ" role="1PaTwD">
            <property role="3oM_SC" value="§2" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0p0" role="1PaTwD">
            <property role="3oM_SC" value="(tabla" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0p1" role="1PaTwD">
            <property role="3oM_SC" value="δ" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0p2" role="1PaTwD">
            <property role="3oM_SC" value="completa)." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZOG" role="jymVt">
      <property role="TrG5h" value="cicloCompleto" />
      <node concept="3clFbS" id="2y5ZLyvNZOH" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvNZOJ" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZOI" role="3cpWs9">
            <property role="TrG5h" value="visita" />
            <node concept="3uibUv" id="2y5ZLyvNZOK" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0yw" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuQQ" resolve="star" />
              <node concept="2YIFZM" id="2y5ZLyvO1U6" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="1rXfSq" id="2y5ZLyvO1U7" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                  <node concept="Xl_RD" id="2y5ZLyvO1U8" role="37wK5m">
                    <property role="Xl_RC" value="abrir" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO1U9" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                  <node concept="Xl_RD" id="2y5ZLyvO1Ua" role="37wK5m">
                    <property role="Xl_RC" value="cerrar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZOS" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZOR" role="3cpWs9">
            <property role="TrG5h" value="entrada" />
            <node concept="3uibUv" id="2y5ZLyvNZOT" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0yK" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
              <node concept="2YIFZM" id="2y5ZLyvO1Ud" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="1rXfSq" id="2y5ZLyvO1Ue" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                  <node concept="Xl_RD" id="2y5ZLyvO1Uf" role="37wK5m">
                    <property role="Xl_RC" value="desbloquear" />
                  </node>
                </node>
                <node concept="37vLTw" id="2y5ZLyvO1Ug" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZOI" resolve="visita" />
                </node>
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0yT" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                <node concept="Xl_RD" id="2y5ZLyvO0yU" role="37wK5m">
                  <property role="Xl_RC" value="bloquear" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZP2" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZP1" role="3cpWs9">
            <property role="TrG5h" value="alarma" />
            <node concept="3uibUv" id="2y5ZLyvNZP3" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0z1" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
              <node concept="1rXfSq" id="2y5ZLyvO0z2" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                <node concept="Xl_RD" id="2y5ZLyvO0z3" role="37wK5m">
                  <property role="Xl_RC" value="forzar" />
                </node>
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0z8" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                <node concept="Xl_RD" id="2y5ZLyvO0z9" role="37wK5m">
                  <property role="Xl_RC" value="desactivar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvNZP9" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLyvO0zg" role="3cqZAk">
            <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
            <ref role="37wK5l" to="op1a:2y5ZLyvIuQQ" resolve="star" />
            <node concept="2YIFZM" id="2y5ZLyvO1Uj" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuO$" resolve="union" />
              <node concept="37vLTw" id="2y5ZLyvO1Uk" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZOR" resolve="entrada" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO1Ul" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZP1" resolve="alarma" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZPe" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZPf" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
      <node concept="P$JXv" id="2y5ZLyvNZPg" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvNZPh" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvNZPi" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0p3" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0p4" role="1PaTwD">
            <property role="3oM_SC" value="((desbloquear" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0p5" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0p6" role="1PaTwD">
            <property role="3oM_SC" value="(abrir" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0p7" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0p8" role="1PaTwD">
            <property role="3oM_SC" value="cerrar)*" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0p9" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pa" role="1PaTwD">
            <property role="3oM_SC" value="bloquear)" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pb" role="1PaTwD">
            <property role="3oM_SC" value="|" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pc" role="1PaTwD">
            <property role="3oM_SC" value="(forzar" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pd" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pe" role="1PaTwD">
            <property role="3oM_SC" value="desactivar))*" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZPj" role="jymVt">
      <property role="TrG5h" value="noBloquearAbierta" />
      <node concept="3clFbS" id="2y5ZLyvNZPk" role="3clF47">
        <node concept="3cpWs6" id="2y5ZLyvNZPl" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLyvO0zm" role="3cqZAk">
            <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
            <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
            <node concept="1rXfSq" id="2y5ZLyvO0zn" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
              <node concept="Xl_RD" id="2y5ZLyvO0zo" role="37wK5m">
                <property role="Xl_RC" value="abrir" />
              </node>
            </node>
            <node concept="1rXfSq" id="2y5ZLyvO0zt" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
              <node concept="Xl_RD" id="2y5ZLyvO0zu" role="37wK5m">
                <property role="Xl_RC" value="bloquear" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZPr" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZPs" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
      <node concept="P$JXv" id="2y5ZLyvNZPt" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvNZPu" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvNZPv" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0pf" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0pg" role="1PaTwD">
            <property role="3oM_SC" value="abrir" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0ph" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pi" role="1PaTwD">
            <property role="3oM_SC" value="bloquear" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZPw" role="jymVt">
      <property role="TrG5h" value="siempreAbrir" />
      <node concept="3clFbS" id="2y5ZLyvNZPx" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvNZPz" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZPy" role="3cpWs9">
            <property role="TrG5h" value="ciclo" />
            <node concept="3uibUv" id="2y5ZLyvNZP$" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0z_" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
              <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
              <node concept="2YIFZM" id="2y5ZLyvO1Uo" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="1rXfSq" id="2y5ZLyvO1Up" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                  <node concept="Xl_RD" id="2y5ZLyvO1Uq" role="37wK5m">
                    <property role="Xl_RC" value="desbloquear" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO1Ur" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                  <node concept="Xl_RD" id="2y5ZLyvO1Us" role="37wK5m">
                    <property role="Xl_RC" value="abrir" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="2y5ZLyvO1Uv" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="1rXfSq" id="2y5ZLyvO1Uw" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                  <node concept="Xl_RD" id="2y5ZLyvO1Ux" role="37wK5m">
                    <property role="Xl_RC" value="cerrar" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO1Uy" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZME" resolve="sym" />
                  <node concept="Xl_RD" id="2y5ZLyvO1Uz" role="37wK5m">
                    <property role="Xl_RC" value="bloquear" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvNZPK" role="3cqZAp">
          <node concept="2YIFZM" id="2y5ZLyvO0$2" role="3cqZAk">
            <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
            <ref role="37wK5l" to="op1a:2y5ZLyvIuQQ" resolve="star" />
            <node concept="37vLTw" id="2y5ZLyvO0$3" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZPy" resolve="ciclo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZPN" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvNZPO" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
      <node concept="P$JXv" id="2y5ZLyvNZPP" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvNZPQ" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvNZPR" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0pj" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0pk" role="1PaTwD">
            <property role="3oM_SC" value="(desbloquear" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pl" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pm" role="1PaTwD">
            <property role="3oM_SC" value="abrir" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pn" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0po" role="1PaTwD">
            <property role="3oM_SC" value="cerrar" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pp" role="1PaTwD">
            <property role="3oM_SC" value="·" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0pq" role="1PaTwD">
            <property role="3oM_SC" value="bloquear)*" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZPS" role="jymVt">
      <property role="TrG5h" value="test01Consistencia" />
      <node concept="3clFbS" id="2y5ZLyvNZPT" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZPU" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZPV" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZPW" role="37wK5m">
              <property role="Xl_RC" value="1. Consistencia de la Cerradura" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZPY" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZPX" role="3cpWs9">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="2y5ZLyvNZPZ" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZQ0" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZOp" resolve="cerradura" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZQ1" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZQ2" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZQ3" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO1Xj" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0$e" role="2Oq$k0">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJkhm" resolve="unreachable" />
                <node concept="37vLTw" id="2y5ZLyvO0$f" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZPX" resolve="a" />
                </node>
              </node>
              <node concept="liA8E" id="2y5ZLyvO1Xk" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZQ7" role="37wK5m">
              <property role="Xl_RC" value="0 estados inalcanzables" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZQ8" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZQ9" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZQa" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO204" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0$q" role="2Oq$k0">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJki4" resolve="traps" />
                <node concept="37vLTw" id="2y5ZLyvO0$r" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZPX" resolve="a" />
                </node>
              </node>
              <node concept="liA8E" id="2y5ZLyvO205" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZQe" role="37wK5m">
              <property role="Xl_RC" value="0 estados trampa" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZQf" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZQg" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZQh" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO22P" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0$A" role="2Oq$k0">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJkis" resolve="deadlocks" />
                <node concept="37vLTw" id="2y5ZLyvO0$B" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZPX" resolve="a" />
                </node>
              </node>
              <node concept="liA8E" id="2y5ZLyvO22Q" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZQl" role="37wK5m">
              <property role="Xl_RC" value="0 deadlocks" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZQm" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZQn" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2YIFZM" id="2y5ZLyvO0$E" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJkko" resolve="isDeterministic" />
              <node concept="37vLTw" id="2y5ZLyvO0$F" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZPX" resolve="a" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZQq" role="37wK5m">
              <property role="Xl_RC" value="es determinista" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZQs" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZQr" role="3cpWs9">
            <property role="TrG5h" value="alarmas" />
            <node concept="10Q1$e" id="2y5ZLyvNZQu" role="1tU5fm">
              <node concept="10Oyi0" id="2y5ZLyvNZQt" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZQw" role="33vP2m">
              <node concept="37vLTw" id="2y5ZLyvNZQv" role="2BsfMF">
                <ref role="3cqZAo" node="2y5ZLyvNZIk" resolve="INTRUSION" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZQx" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZQy" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZQz" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO26R" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0$Q" role="2Oq$k0">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJkky" resolve="alarmsWithoutRecovery" />
                <node concept="37vLTw" id="2y5ZLyvO0$R" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZPX" resolve="a" />
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO0$S" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
                  <node concept="37vLTw" id="2y5ZLyvO0$T" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvNZQr" resolve="alarmas" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2y5ZLyvO26S" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZQD" role="37wK5m">
              <property role="Xl_RC" value="0 alarmas sin recuperación" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZQF" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZQE" role="3cpWs9">
            <property role="TrG5h" value="esperada" />
            <node concept="10Q1$e" id="2y5ZLyvNZQH" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvNZQG" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZQJ" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvNZQI" role="2BsfMF">
                <property role="Xl_RC" value="forzar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZQL" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZQK" role="3cpWs9">
            <property role="TrG5h" value="traza" />
            <node concept="3uibUv" id="2y5ZLyvNZQM" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyvNZQN" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0_0" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJkkW" resolve="shortestTraceTo" />
              <node concept="37vLTw" id="2y5ZLyvO0_1" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZPX" resolve="a" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0_2" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
                <node concept="37vLTw" id="2y5ZLyvO0_3" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZQr" resolve="alarmas" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZQS" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZQT" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvNZQU" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
              <node concept="37vLTw" id="2y5ZLyvNZQV" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZQE" resolve="esperada" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO276" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0_a" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
              </node>
              <node concept="liA8E" id="2y5ZLyvO277" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE7d" resolve="namesOf" />
                <node concept="37vLTw" id="2y5ZLyvO278" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZQK" resolve="traza" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZQY" role="37wK5m">
              <property role="Xl_RC" value="traza mínima a la alarma = [forzar]" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZQZ" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZR0" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZR1" role="jymVt">
      <property role="TrG5h" value="test02CicloCompleto" />
      <node concept="3clFbS" id="2y5ZLyvNZR2" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZR3" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZR4" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZR5" role="37wK5m">
              <property role="Xl_RC" value="2. Política CicloCompleto [REQUIRED]" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZR7" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZR6" role="3cpWs9">
            <property role="TrG5h" value="verdict" />
            <node concept="3uibUv" id="2y5ZLyvNZR8" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0_f" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK4Cz" resolve="checkRequired" />
              <node concept="1rXfSq" id="2y5ZLyvO0_g" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZOp" resolve="cerradura" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0_l" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZOG" resolve="cicloCompleto" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0_q" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZRd" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZRe" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2OqwBi" id="2y5ZLyvO0_w" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0_v" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZR6" resolve="verdict" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0_x" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZRg" role="37wK5m">
              <property role="Xl_RC" value="CicloCompleto se CUMPLE" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZRh" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZRi" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZRj" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO29E" role="37wK5m">
              <node concept="2OqwBi" id="2y5ZLyvO0__" role="2Oq$k0">
                <node concept="37vLTw" id="2y5ZLyvO0_$" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZR6" resolve="verdict" />
                </node>
                <node concept="2OwXpG" id="2y5ZLyvO0_A" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
                </node>
              </node>
              <node concept="liA8E" id="2y5ZLyvO29F" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZRl" role="37wK5m">
              <property role="Xl_RC" value="sin contraejemplo" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZRn" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZRm" role="3cpWs9">
            <property role="TrG5h" value="minimal" />
            <node concept="3uibUv" id="2y5ZLyvNZRo" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZRp" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="1rXfSq" id="2y5ZLyvNZRq" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZOG" resolve="cicloCompleto" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZRr" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZRs" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZRt" role="37wK5m">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0_F" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0_E" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZRm" resolve="minimal" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0_G" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvIoou" resolve="stateCount" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZRv" role="37wK5m">
              <property role="Xl_RC" value="su AFD mínimo completo tiene 5 estados" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZRw" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZRx" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3y3z36" id="2y5ZLyvNZRy" role="37wK5m">
              <node concept="2OqwBi" id="2y5ZLyvO29Q" role="3uHU7B">
                <node concept="37vLTw" id="2y5ZLyvO0_J" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZRm" resolve="minimal" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO29R" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvIorA" resolve="sinkState" />
                </node>
              </node>
              <node concept="1ZRNhn" id="2y5ZLyvNZR$" role="3uHU7w">
                <node concept="3cmrfG" id="2y5ZLyvNZR_" role="2$L3a6">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZRA" role="37wK5m">
              <property role="Xl_RC" value="uno de los 5 es el sumidero" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZRB" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZRC" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="Xl_RD" id="2y5ZLyvNZRD" role="37wK5m">
              <property role="Xl_RC" value="AFD mínimo de 5 estados (4 útiles + sumidero)" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0_N" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJ3BU" resolve="describe" />
              <node concept="37vLTw" id="2y5ZLyvO0_O" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZRm" resolve="minimal" />
              </node>
            </node>
            <node concept="3cpWs3" id="2y5ZLyvNZRG" role="37wK5m">
              <node concept="Xl_RD" id="2y5ZLyvNZRH" role="3uHU7B">
                <property role="Xl_RC" value="mensaje: " />
              </node>
              <node concept="2YIFZM" id="2y5ZLyvO0_R" role="3uHU7w">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJ3BU" resolve="describe" />
                <node concept="37vLTw" id="2y5ZLyvO0_S" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZRm" resolve="minimal" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZRK" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZRL" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZRM" role="jymVt">
      <property role="TrG5h" value="test03NoBloquearAbierta" />
      <node concept="3clFbS" id="2y5ZLyvNZRN" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZRO" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZRP" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZRQ" role="37wK5m">
              <property role="Xl_RC" value="3. Política NoBloquearAbierta [FORBIDDEN]" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZRS" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZRR" role="3cpWs9">
            <property role="TrG5h" value="verdict" />
            <node concept="3uibUv" id="2y5ZLyvNZRT" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0_V" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK4Do" resolve="checkForbidden" />
              <node concept="1rXfSq" id="2y5ZLyvO0_W" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZOp" resolve="cerradura" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0A1" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZPj" resolve="noBloquearAbierta" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0A6" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZRY" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZRZ" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2OqwBi" id="2y5ZLyvO0Ac" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0Ab" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZRR" resolve="verdict" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0Ad" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZS1" role="37wK5m">
              <property role="Xl_RC" value="NoBloquearAbierta se CUMPLE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZS2" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZS3" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZS4" role="jymVt">
      <property role="TrG5h" value="test04RequiredViolada" />
      <node concept="3clFbS" id="2y5ZLyvNZS5" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZS6" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZS7" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZS8" role="37wK5m">
              <property role="Xl_RC" value="4. REQUIRED (desbloquear·abrir·cerrar·bloquear)*" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZSa" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZS9" role="3cpWs9">
            <property role="TrG5h" value="verdict" />
            <node concept="3uibUv" id="2y5ZLyvNZSb" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Ag" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK4Cz" resolve="checkRequired" />
              <node concept="1rXfSq" id="2y5ZLyvO0Ah" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZOp" resolve="cerradura" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0Am" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZPw" resolve="siempreAbrir" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0Ar" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZSg" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZSh" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3fqX7Q" id="2y5ZLyvNZSi" role="37wK5m">
              <node concept="2OqwBi" id="2y5ZLyvO0Ax" role="3fr31v">
                <node concept="37vLTw" id="2y5ZLyvO0Aw" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZS9" resolve="verdict" />
                </node>
                <node concept="2OwXpG" id="2y5ZLyvO0Ay" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZSk" role="37wK5m">
              <property role="Xl_RC" value="se VIOLA" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZSm" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZSl" role="3cpWs9">
            <property role="TrG5h" value="esperado" />
            <node concept="10Q1$e" id="2y5ZLyvNZSo" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvNZSn" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZSr" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvNZSp" role="2BsfMF">
                <property role="Xl_RC" value="desbloquear" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyvNZSq" role="2BsfMF">
                <property role="Xl_RC" value="bloquear" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZSs" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZSt" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvNZSu" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
              <node concept="37vLTw" id="2y5ZLyvNZSv" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZSl" resolve="esperado" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0AA" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0A_" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZS9" resolve="verdict" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0AB" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZSx" role="37wK5m">
              <property role="Xl_RC" value="contraejemplo exacto [desbloquear, bloquear]" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZSy" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZSz" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZS$" role="jymVt">
      <property role="TrG5h" value="test05BorradorBloqueaAbierta" />
      <node concept="3clFbS" id="2y5ZLyvNZS_" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZSA" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZSB" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZSC" role="37wK5m">
              <property role="Xl_RC" value="5. Borrador: Cerradura + Abierta --bloquear--&gt; Bloqueada" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZSE" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZSD" role="3cpWs9">
            <property role="TrG5h" value="borrador" />
            <node concept="3uibUv" id="2y5ZLyvNZSF" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZSG" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZOp" resolve="cerradura" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZSH" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZSI" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZNs" resolve="transicion" />
            <node concept="37vLTw" id="2y5ZLyvNZSJ" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZSD" resolve="borrador" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZSK" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZIg" resolve="ABIERTA" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZSL" role="37wK5m">
              <property role="Xl_RC" value="bloquear" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZSM" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZI8" resolve="BLOQUEADA" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZSO" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZSN" role="3cpWs9">
            <property role="TrG5h" value="verdict" />
            <node concept="3uibUv" id="2y5ZLyvNZSP" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0AE" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK4Do" resolve="checkForbidden" />
              <node concept="37vLTw" id="2y5ZLyvO0AF" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZSD" resolve="borrador" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0AG" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZPj" resolve="noBloquearAbierta" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0AL" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZSU" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZSV" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3fqX7Q" id="2y5ZLyvNZSW" role="37wK5m">
              <node concept="2OqwBi" id="2y5ZLyvO0AR" role="3fr31v">
                <node concept="37vLTw" id="2y5ZLyvO0AQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZSN" resolve="verdict" />
                </node>
                <node concept="2OwXpG" id="2y5ZLyvO0AS" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZSY" role="37wK5m">
              <property role="Xl_RC" value="NoBloquearAbierta se VIOLA" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZT0" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZSZ" role="3cpWs9">
            <property role="TrG5h" value="esperado" />
            <node concept="10Q1$e" id="2y5ZLyvNZT2" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvNZT1" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZT6" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvNZT3" role="2BsfMF">
                <property role="Xl_RC" value="desbloquear" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyvNZT4" role="2BsfMF">
                <property role="Xl_RC" value="abrir" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyvNZT5" role="2BsfMF">
                <property role="Xl_RC" value="bloquear" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZT7" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZT8" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvNZT9" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
              <node concept="37vLTw" id="2y5ZLyvNZTa" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZSZ" resolve="esperado" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0AW" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0AV" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZSN" resolve="verdict" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0AX" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZTc" role="37wK5m">
              <property role="Xl_RC" value="contraejemplo exacto [desbloquear, abrir, bloquear]" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZTd" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZTe" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZTf" role="jymVt">
      <property role="TrG5h" value="test06BorradorAlarmaSinRecuperacion" />
      <node concept="3clFbS" id="2y5ZLyvNZTg" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZTh" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZTi" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZTj" role="37wK5m">
              <property role="Xl_RC" value="6. Borrador: Cerradura sin Intrusion --desactivar--&gt; Bloqueada" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZTl" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZTk" role="3cpWs9">
            <property role="TrG5h" value="borrador" />
            <node concept="3uibUv" id="2y5ZLyvNZTm" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZTn" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZNI" resolve="cerraduraSinRecuperacion" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZTp" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZTo" role="3cpWs9">
            <property role="TrG5h" value="intrusion" />
            <node concept="10Q1$e" id="2y5ZLyvNZTr" role="1tU5fm">
              <node concept="10Oyi0" id="2y5ZLyvNZTq" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZTt" role="33vP2m">
              <node concept="37vLTw" id="2y5ZLyvNZTs" role="2BsfMF">
                <ref role="3cqZAo" node="2y5ZLyvNZIk" resolve="INTRUSION" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZTu" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZTv" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvNZTw" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
              <node concept="37vLTw" id="2y5ZLyvNZTx" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZTo" resolve="intrusion" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0B0" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJki4" resolve="traps" />
              <node concept="37vLTw" id="2y5ZLyvO0B1" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZTk" resolve="borrador" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZT$" role="37wK5m">
              <property role="Xl_RC" value="Intrusion es trampa" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZT_" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZTA" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvNZTB" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
              <node concept="37vLTw" id="2y5ZLyvNZTC" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZTo" resolve="intrusion" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0B4" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJkky" resolve="alarmsWithoutRecovery" />
              <node concept="37vLTw" id="2y5ZLyvO0B5" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZTk" resolve="borrador" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0B6" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
                <node concept="37vLTw" id="2y5ZLyvO0B7" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZTo" resolve="intrusion" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZTH" role="37wK5m">
              <property role="Xl_RC" value="Intrusion es alarma sin recuperación" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZTI" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZTJ" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvNZTK" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
              <node concept="37vLTw" id="2y5ZLyvNZTL" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZTo" resolve="intrusion" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Be" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJkis" resolve="deadlocks" />
              <node concept="37vLTw" id="2y5ZLyvO0Bf" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZTk" resolve="borrador" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZTO" role="37wK5m">
              <property role="Xl_RC" value="Intrusion es deadlock" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZTP" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZTQ" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZTR" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO2cB" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0Bq" role="2Oq$k0">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJkhm" resolve="unreachable" />
                <node concept="37vLTw" id="2y5ZLyvO0Br" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZTk" resolve="borrador" />
                </node>
              </node>
              <node concept="liA8E" id="2y5ZLyvO2cC" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZTV" role="37wK5m">
              <property role="Xl_RC" value="sigue sin estados inalcanzables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZTW" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZTX" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZTY" role="jymVt">
      <property role="TrG5h" value="test07Simulador" />
      <node concept="3clFbS" id="2y5ZLyvNZTZ" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZU0" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZU1" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZU2" role="37wK5m">
              <property role="Xl_RC" value="7. Simulador" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZU4" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZU3" role="3cpWs9">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="2y5ZLyvNZU5" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZU6" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZOp" resolve="cerradura" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZU8" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZU7" role="3cpWs9">
            <property role="TrG5h" value="entradaNormal" />
            <node concept="10Q1$e" id="2y5ZLyvNZUa" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvNZU9" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZUf" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvNZUb" role="2BsfMF">
                <property role="Xl_RC" value="desbloquear" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyvNZUc" role="2BsfMF">
                <property role="Xl_RC" value="abrir" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyvNZUd" role="2BsfMF">
                <property role="Xl_RC" value="cerrar" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyvNZUe" role="2BsfMF">
                <property role="Xl_RC" value="bloquear" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZUh" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZUg" role="3cpWs9">
            <property role="TrG5h" value="ok" />
            <node concept="3uibUv" id="2y5ZLyvNZUi" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQQN" resolve="SimulationResult" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Bu" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
              <node concept="37vLTw" id="2y5ZLyvO0Bv" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZU3" resolve="a" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0Bw" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZLW" resolve="word" />
                <node concept="37vLTw" id="2y5ZLyvO0Bx" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZU7" resolve="entradaNormal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZUn" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZUo" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2OqwBi" id="2y5ZLyvO0BD" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0BC" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZUg" resolve="ok" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0BE" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZUq" role="37wK5m">
              <property role="Xl_RC" value="EntradaNormal se ACEPTA" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZUr" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZUs" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZUt" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0BI" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0BH" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZUg" resolve="ok" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0BJ" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQQZ" resolve="failedStep" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZUv" role="37wK5m">
              <property role="Xl_RC" value="ningún paso falla" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZUx" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZUw" role="3cpWs9">
            <property role="TrG5h" value="esperada" />
            <node concept="3uibUv" id="2y5ZLyvNZUy" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyvNZUz" role="33vP2m">
              <node concept="3cpWs3" id="2y5ZLyvNZU$" role="3uHU7B">
                <node concept="3cpWs3" id="2y5ZLyvNZU_" role="3uHU7B">
                  <node concept="3cpWs3" id="2y5ZLyvNZUA" role="3uHU7B">
                    <node concept="3cpWs3" id="2y5ZLyvNZUB" role="3uHU7B">
                      <node concept="3cpWs3" id="2y5ZLyvNZUC" role="3uHU7B">
                        <node concept="3cpWs3" id="2y5ZLyvNZUD" role="3uHU7B">
                          <node concept="3cpWs3" id="2y5ZLyvNZUE" role="3uHU7B">
                            <node concept="Xl_RD" id="2y5ZLyvNZUF" role="3uHU7B">
                              <property role="Xl_RC" value="Bloqueada" />
                            </node>
                            <node concept="10M0yZ" id="2y5ZLyvO0BM" role="3uHU7w">
                              <ref role="1PxDUh" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                              <ref role="3cqZAo" to="op1a:2y5ZLyvKsrY" resolve="ARROW" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2y5ZLyvNZUH" role="3uHU7w">
                            <property role="Xl_RC" value="Desbloqueada" />
                          </node>
                        </node>
                        <node concept="10M0yZ" id="2y5ZLyvO0BP" role="3uHU7w">
                          <ref role="1PxDUh" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                          <ref role="3cqZAo" to="op1a:2y5ZLyvKsrY" resolve="ARROW" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2y5ZLyvNZUJ" role="3uHU7w">
                        <property role="Xl_RC" value="Abierta" />
                      </node>
                    </node>
                    <node concept="10M0yZ" id="2y5ZLyvO0BS" role="3uHU7w">
                      <ref role="1PxDUh" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                      <ref role="3cqZAo" to="op1a:2y5ZLyvKsrY" resolve="ARROW" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2y5ZLyvNZUL" role="3uHU7w">
                    <property role="Xl_RC" value="Desbloqueada" />
                  </node>
                </node>
                <node concept="10M0yZ" id="2y5ZLyvO0BV" role="3uHU7w">
                  <ref role="1PxDUh" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                  <ref role="3cqZAo" to="op1a:2y5ZLyvKsrY" resolve="ARROW" />
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLyvNZUN" role="3uHU7w">
                <property role="Xl_RC" value="Bloqueada" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZUO" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZUP" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="37vLTw" id="2y5ZLyvNZUQ" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZUw" resolve="esperada" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0BY" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKsth" resolve="formatTrace" />
              <node concept="37vLTw" id="2y5ZLyvO0BZ" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZUg" resolve="ok" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0C0" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZI4" resolve="stateNames" />
              </node>
            </node>
            <node concept="3cpWs3" id="2y5ZLyvNZUU" role="37wK5m">
              <node concept="Xl_RD" id="2y5ZLyvNZUV" role="3uHU7B">
                <property role="Xl_RC" value="traza: " />
              </node>
              <node concept="2YIFZM" id="2y5ZLyvO0C5" role="3uHU7w">
                <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                <ref role="37wK5l" to="op1a:2y5ZLyvKsth" resolve="formatTrace" />
                <node concept="37vLTw" id="2y5ZLyvO0C6" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZUg" resolve="ok" />
                </node>
                <node concept="37vLTw" id="2y5ZLyvO0C7" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZI4" resolve="stateNames" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZV0" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZUZ" role="3cpWs9">
            <property role="TrG5h" value="soloAbrir" />
            <node concept="10Q1$e" id="2y5ZLyvNZV2" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvNZV1" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZV4" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvNZV3" role="2BsfMF">
                <property role="Xl_RC" value="abrir" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZV6" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZV5" role="3cpWs9">
            <property role="TrG5h" value="mal" />
            <node concept="3uibUv" id="2y5ZLyvNZV7" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQQN" resolve="SimulationResult" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Cc" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
              <node concept="37vLTw" id="2y5ZLyvO0Cd" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZU3" resolve="a" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0Ce" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZLW" resolve="word" />
                <node concept="37vLTw" id="2y5ZLyvO0Cf" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZUZ" resolve="soloAbrir" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZVc" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZVd" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3fqX7Q" id="2y5ZLyvNZVe" role="37wK5m">
              <node concept="2OqwBi" id="2y5ZLyvO0Cn" role="3fr31v">
                <node concept="37vLTw" id="2y5ZLyvO0Cm" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZV5" resolve="mal" />
                </node>
                <node concept="2OwXpG" id="2y5ZLyvO0Co" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZVg" role="37wK5m">
              <property role="Xl_RC" value="el escenario (abrir) se RECHAZA" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZVh" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZVi" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZVj" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0Cs" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0Cr" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZV5" resolve="mal" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0Ct" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQQZ" resolve="failedStep" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZVl" role="37wK5m">
              <property role="Xl_RC" value="falla en el paso 1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZVm" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZVn" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="Xl_RD" id="2y5ZLyvNZVo" role="37wK5m">
              <property role="Xl_RC" value="Bloqueada" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Cw" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKsth" resolve="formatTrace" />
              <node concept="37vLTw" id="2y5ZLyvO0Cx" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZV5" resolve="mal" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0Cy" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZI4" resolve="stateNames" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZVs" role="37wK5m">
              <property role="Xl_RC" value="la traza se queda en Bloqueada" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZVu" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZVt" role="3cpWs9">
            <property role="TrG5h" value="aMedias" />
            <node concept="10Q1$e" id="2y5ZLyvNZVw" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvNZVv" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZVz" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvNZVx" role="2BsfMF">
                <property role="Xl_RC" value="desbloquear" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyvNZVy" role="2BsfMF">
                <property role="Xl_RC" value="abrir" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZV_" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZV$" role="3cpWs9">
            <property role="TrG5h" value="incompleto" />
            <node concept="3uibUv" id="2y5ZLyvNZVA" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQQN" resolve="SimulationResult" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0CB" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
              <node concept="37vLTw" id="2y5ZLyvO0CC" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZU3" resolve="a" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0CD" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZLW" resolve="word" />
                <node concept="37vLTw" id="2y5ZLyvO0CE" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZVt" resolve="aMedias" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZVF" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZVG" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="1Wc70l" id="2y5ZLyvNZVH" role="37wK5m">
              <node concept="3fqX7Q" id="2y5ZLyvNZVI" role="3uHU7B">
                <node concept="2OqwBi" id="2y5ZLyvO0CM" role="3fr31v">
                  <node concept="37vLTw" id="2y5ZLyvO0CL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvNZV$" resolve="incompleto" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO0CN" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="2y5ZLyvNZVK" role="3uHU7w">
                <node concept="2OqwBi" id="2y5ZLyvO0CR" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLyvO0CQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvNZV$" resolve="incompleto" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO0CS" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQQZ" resolve="failedStep" />
                  </node>
                </node>
                <node concept="3cmrfG" id="2y5ZLyvNZVM" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZVN" role="37wK5m">
              <property role="Xl_RC" value="(desbloquear, abrir) se RECHAZA sin paso fallido: termina en Abierta, que no es de aceptación" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZVO" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZVP" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZVQ" role="jymVt">
      <property role="TrG5h" value="test08ThompsonSubconjuntos" />
      <node concept="3clFbS" id="2y5ZLyvNZVR" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZVS" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZVT" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZVU" role="37wK5m">
              <property role="Xl_RC" value="8. Thompson + subconjuntos sobre CicloCompleto" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZVW" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZVV" role="3cpWs9">
            <property role="TrG5h" value="thompson" />
            <node concept="3uibUv" id="2y5ZLyvNZVX" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZVY" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZOG" resolve="cicloCompleto" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZW0" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZVZ" role="3cpWs9">
            <property role="TrG5h" value="dfa" />
            <node concept="3uibUv" id="2y5ZLyvNZW1" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0CV" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvISWL" resolve="SubsetConstruction" />
              <ref role="37wK5l" to="op1a:2y5ZLyvISWN" resolve="determinize" />
              <node concept="37vLTw" id="2y5ZLyvO0CW" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZVV" resolve="thompson" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZW5" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZW4" role="3cpWs9">
            <property role="TrG5h" value="aceptadas" />
            <node concept="10Q1$e" id="2y5ZLyvNZW8" role="1tU5fm">
              <node concept="10Q1$e" id="2y5ZLyvNZW7" role="10Q1$1">
                <node concept="3uibUv" id="2y5ZLyvNZW6" role="10Q1$1">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZWu" role="33vP2m">
              <node concept="2BsdOp" id="2y5ZLyvNZW9" role="2BsfMF" />
              <node concept="2BsdOp" id="2y5ZLyvNZWc" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZWa" role="2BsfMF">
                  <property role="Xl_RC" value="desbloquear" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWb" role="2BsfMF">
                  <property role="Xl_RC" value="bloquear" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLyvNZWh" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZWd" role="2BsfMF">
                  <property role="Xl_RC" value="desbloquear" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWe" role="2BsfMF">
                  <property role="Xl_RC" value="abrir" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWf" role="2BsfMF">
                  <property role="Xl_RC" value="cerrar" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWg" role="2BsfMF">
                  <property role="Xl_RC" value="bloquear" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLyvNZWk" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZWi" role="2BsfMF">
                  <property role="Xl_RC" value="forzar" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWj" role="2BsfMF">
                  <property role="Xl_RC" value="desactivar" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLyvNZWt" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZWl" role="2BsfMF">
                  <property role="Xl_RC" value="desbloquear" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWm" role="2BsfMF">
                  <property role="Xl_RC" value="abrir" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWn" role="2BsfMF">
                  <property role="Xl_RC" value="cerrar" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWo" role="2BsfMF">
                  <property role="Xl_RC" value="abrir" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWp" role="2BsfMF">
                  <property role="Xl_RC" value="cerrar" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWq" role="2BsfMF">
                  <property role="Xl_RC" value="bloquear" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWr" role="2BsfMF">
                  <property role="Xl_RC" value="forzar" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWs" role="2BsfMF">
                  <property role="Xl_RC" value="desactivar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZWw" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZWv" role="3cpWs9">
            <property role="TrG5h" value="rechazadas" />
            <node concept="10Q1$e" id="2y5ZLyvNZWz" role="1tU5fm">
              <node concept="10Q1$e" id="2y5ZLyvNZWy" role="10Q1$1">
                <node concept="3uibUv" id="2y5ZLyvNZWx" role="10Q1$1">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvNZWQ" role="33vP2m">
              <node concept="2BsdOp" id="2y5ZLyvNZW_" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZW$" role="2BsfMF">
                  <property role="Xl_RC" value="desbloquear" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLyvNZWB" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZWA" role="2BsfMF">
                  <property role="Xl_RC" value="abrir" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLyvNZWD" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZWC" role="2BsfMF">
                  <property role="Xl_RC" value="forzar" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLyvNZWH" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZWE" role="2BsfMF">
                  <property role="Xl_RC" value="desbloquear" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWF" role="2BsfMF">
                  <property role="Xl_RC" value="abrir" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWG" role="2BsfMF">
                  <property role="Xl_RC" value="bloquear" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLyvNZWL" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZWI" role="2BsfMF">
                  <property role="Xl_RC" value="desbloquear" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWJ" role="2BsfMF">
                  <property role="Xl_RC" value="bloquear" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWK" role="2BsfMF">
                  <property role="Xl_RC" value="desactivar" />
                </node>
              </node>
              <node concept="2BsdOp" id="2y5ZLyvNZWP" role="2BsfMF">
                <node concept="Xl_RD" id="2y5ZLyvNZWM" role="2BsfMF">
                  <property role="Xl_RC" value="forzar" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWN" role="2BsfMF">
                  <property role="Xl_RC" value="desactivar" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyvNZWO" role="2BsfMF">
                  <property role="Xl_RC" value="desactivar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyvNZWR" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZWS" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyvNZWU" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvNZWV" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyvNZWW" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvNZWX" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvNZWS" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0D0" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLyvO0CZ" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZW4" resolve="aceptadas" />
              </node>
              <node concept="1Rwk04" id="2y5ZLyvO5im" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvNZX0" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvNZX1" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvNZWS" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvNZX3" role="2LFqv$">
            <node concept="3cpWs8" id="2y5ZLyvNZX5" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvNZX4" role="3cpWs9">
                <property role="TrG5h" value="w" />
                <node concept="3uibUv" id="2y5ZLyvNZX6" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvNZX7" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLyvNZX8" role="33vP2m">
                  <ref role="37wK5l" node="2y5ZLyvNZLW" resolve="word" />
                  <node concept="AH0OO" id="2y5ZLyvNZX9" role="37wK5m">
                    <node concept="37vLTw" id="2y5ZLyvNZXa" role="AHHXb">
                      <ref role="3cqZAo" node="2y5ZLyvNZW4" resolve="aceptadas" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvNZXb" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLyvNZWS" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvNZXc" role="3cqZAp">
              <node concept="1rXfSq" id="2y5ZLyvNZXd" role="3clFbG">
                <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
                <node concept="1Wc70l" id="2y5ZLyvNZXe" role="37wK5m">
                  <node concept="2OqwBi" id="2y5ZLyvO2cN" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLyvO0D4" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvNZVZ" resolve="dfa" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO2cO" role="2OqNvi">
                      <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                      <node concept="37vLTw" id="2y5ZLyvO2cP" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvNZX4" resolve="w" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2y5ZLyvNZXh" role="3uHU7w">
                    <node concept="2YIFZM" id="2y5ZLyvO0D9" role="2Oq$k0">
                      <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                      <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
                      <node concept="37vLTw" id="2y5ZLyvO0Da" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvNZVV" resolve="thompson" />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO0Db" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvNZX4" resolve="w" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="2y5ZLyvNZXl" role="2OqNvi">
                      <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="2y5ZLyvNZXm" role="37wK5m">
                  <node concept="Xl_RD" id="2y5ZLyvNZXn" role="3uHU7B">
                    <property role="Xl_RC" value="acepta  " />
                  </node>
                  <node concept="1rXfSq" id="2y5ZLyvNZXo" role="3uHU7w">
                    <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
                    <node concept="AH0OO" id="2y5ZLyvNZXp" role="37wK5m">
                      <node concept="37vLTw" id="2y5ZLyvNZXq" role="AHHXb">
                        <ref role="3cqZAo" node="2y5ZLyvNZW4" resolve="aceptadas" />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvNZXr" role="AHEQo">
                        <ref role="3cqZAo" node="2y5ZLyvNZWS" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyvNZXs" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZXt" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyvNZXv" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvNZXw" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyvNZXx" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvNZXy" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvNZXt" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0Df" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLyvO0De" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZWv" resolve="rechazadas" />
              </node>
              <node concept="1Rwk04" id="2y5ZLyvO5in" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvNZX_" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvNZXA" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvNZXt" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvNZXC" role="2LFqv$">
            <node concept="3cpWs8" id="2y5ZLyvNZXE" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvNZXD" role="3cpWs9">
                <property role="TrG5h" value="w" />
                <node concept="3uibUv" id="2y5ZLyvNZXF" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvNZXG" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLyvNZXH" role="33vP2m">
                  <ref role="37wK5l" node="2y5ZLyvNZLW" resolve="word" />
                  <node concept="AH0OO" id="2y5ZLyvNZXI" role="37wK5m">
                    <node concept="37vLTw" id="2y5ZLyvNZXJ" role="AHHXb">
                      <ref role="3cqZAo" node="2y5ZLyvNZWv" resolve="rechazadas" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvNZXK" role="AHEQo">
                      <ref role="3cqZAo" node="2y5ZLyvNZXt" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvNZXL" role="3cqZAp">
              <node concept="1rXfSq" id="2y5ZLyvNZXM" role="3clFbG">
                <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
                <node concept="1Wc70l" id="2y5ZLyvNZXN" role="37wK5m">
                  <node concept="3fqX7Q" id="2y5ZLyvNZXO" role="3uHU7B">
                    <node concept="2OqwBi" id="2y5ZLyvO2d0" role="3fr31v">
                      <node concept="37vLTw" id="2y5ZLyvO0Dj" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvNZVZ" resolve="dfa" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyvO2d1" role="2OqNvi">
                        <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                        <node concept="37vLTw" id="2y5ZLyvO2d2" role="37wK5m">
                          <ref role="3cqZAo" node="2y5ZLyvNZXD" resolve="w" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="2y5ZLyvNZXR" role="3uHU7w">
                    <node concept="2OqwBi" id="2y5ZLyvNZXS" role="3fr31v">
                      <node concept="2YIFZM" id="2y5ZLyvO0Do" role="2Oq$k0">
                        <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                        <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
                        <node concept="37vLTw" id="2y5ZLyvO0Dp" role="37wK5m">
                          <ref role="3cqZAo" node="2y5ZLyvNZVV" resolve="thompson" />
                        </node>
                        <node concept="37vLTw" id="2y5ZLyvO0Dq" role="37wK5m">
                          <ref role="3cqZAo" node="2y5ZLyvNZXD" resolve="w" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="2y5ZLyvNZXW" role="2OqNvi">
                        <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="2y5ZLyvNZXX" role="37wK5m">
                  <node concept="Xl_RD" id="2y5ZLyvNZXY" role="3uHU7B">
                    <property role="Xl_RC" value="rechaza " />
                  </node>
                  <node concept="1rXfSq" id="2y5ZLyvNZXZ" role="3uHU7w">
                    <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
                    <node concept="AH0OO" id="2y5ZLyvNZY0" role="37wK5m">
                      <node concept="37vLTw" id="2y5ZLyvNZY1" role="AHHXb">
                        <ref role="3cqZAo" node="2y5ZLyvNZWv" resolve="rechazadas" />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvNZY2" role="AHEQo">
                        <ref role="3cqZAo" node="2y5ZLyvNZXt" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZY3" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZY4" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZY5" role="jymVt">
      <property role="TrG5h" value="test09IdaYVueltaKleene" />
      <node concept="3clFbS" id="2y5ZLyvNZY6" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZY7" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZY8" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZY9" role="37wK5m">
              <property role="Xl_RC" value="9. Ida y vuelta de Kleene" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZYb" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZYa" role="3cpWs9">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="2y5ZLyvNZYc" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZYd" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZOp" resolve="cerradura" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZYf" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZYe" role="3cpWs9">
            <property role="TrG5h" value="regex" />
            <node concept="3uibUv" id="2y5ZLyvNZYg" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvINsF" resolve="Regex" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Dt" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKfuh" resolve="StateEliminator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKfuz" resolve="toRegex" />
              <node concept="37vLTw" id="2y5ZLyvO0Du" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZYa" resolve="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZYk" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZYj" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="3uibUv" id="2y5ZLyvNZYl" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Dx" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKfuh" resolve="StateEliminator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKfuj" resolve="toRegexString" />
              <node concept="37vLTw" id="2y5ZLyvO0Dy" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZYa" resolve="a" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0Dz" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZYp" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2dh" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0DC" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2di" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="2y5ZLyvO2dj" role="37wK5m">
                <node concept="Xl_RD" id="2y5ZLyvO2dk" role="3uHU7B">
                  <property role="Xl_RC" value="  ER(Cerradura) = " />
                </node>
                <node concept="37vLTw" id="2y5ZLyvO2dl" role="3uHU7w">
                  <ref role="3cqZAo" node="2y5ZLyvNZYj" resolve="text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2y5ZLyvO0pr" role="3cqZAp">
          <node concept="1PaTwC" id="2y5ZLyvO0ps" role="1aUNEU">
            <node concept="3oM_SD" id="2y5ZLyvO0pu" role="1PaTwD">
              <property role="3oM_SC" value="Orden" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pv" role="1PaTwD">
              <property role="3oM_SC" value="de" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pw" role="1PaTwD">
              <property role="3oM_SC" value="eliminación" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0px" role="1PaTwD">
              <property role="3oM_SC" value="(menor" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0py" role="1PaTwD">
              <property role="3oM_SC" value="entradas" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pz" role="1PaTwD">
              <property role="3oM_SC" value="×" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0p$" role="1PaTwD">
              <property role="3oM_SC" value="salidas," />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0p_" role="1PaTwD">
              <property role="3oM_SC" value="empate" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pA" role="1PaTwD">
              <property role="3oM_SC" value="al" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pB" role="1PaTwD">
              <property role="3oM_SC" value="menor" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pC" role="1PaTwD">
              <property role="3oM_SC" value="índice):" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2y5ZLyvO0pD" role="3cqZAp">
          <node concept="1PaTwC" id="2y5ZLyvO0pE" role="1aUNEU">
            <node concept="3oM_SD" id="2y5ZLyvO0pG" role="1PaTwD">
              <property role="3oM_SC" value="Abierta," />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pH" role="1PaTwD">
              <property role="3oM_SC" value="Desbloqueada," />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pI" role="1PaTwD">
              <property role="3oM_SC" value="Intrusion," />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pJ" role="1PaTwD">
              <property role="3oM_SC" value="Bloqueada." />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pK" role="1PaTwD">
              <property role="3oM_SC" value="Sale" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pL" role="1PaTwD">
              <property role="3oM_SC" value="la" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pM" role="1PaTwD">
              <property role="3oM_SC" value="misma" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pN" role="1PaTwD">
              <property role="3oM_SC" value="forma" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pO" role="1PaTwD">
              <property role="3oM_SC" value="que" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pP" role="1PaTwD">
              <property role="3oM_SC" value="CicloCompleto." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZYu" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZYv" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="Xl_RD" id="2y5ZLyvNZYw" role="37wK5m">
              <property role="Xl_RC" value="(desbloquear · (abrir · cerrar)* · bloquear | forzar · desactivar)*" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvNZYx" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvNZYj" resolve="text" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZYy" role="37wK5m">
              <property role="Xl_RC" value="la ER obtenida por eliminación de estados tiene la misma forma que CicloCompleto" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZY$" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZYz" role="3cpWs9">
            <property role="TrG5h" value="ida" />
            <node concept="3uibUv" id="2y5ZLyvNZY_" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZYA" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="2OqwBi" id="2y5ZLyvO2dw" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLyvO0DJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZYe" resolve="regex" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO2dx" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvIN$x" resolve="toNfa" />
                  <node concept="2OqwBi" id="2y5ZLyvO4eE" role="37wK5m">
                    <node concept="37vLTw" id="2y5ZLyvO44E" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO4eF" role="2OqNvi">
                      <ref role="37wK5l" to="op1a:2y5ZLyvHE74" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZYE" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZYD" role="3cpWs9">
            <property role="TrG5h" value="original" />
            <node concept="3uibUv" id="2y5ZLyvNZYF" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZYG" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="37vLTw" id="2y5ZLyvNZYH" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZYa" resolve="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZYI" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZYJ" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2YIFZM" id="2y5ZLyvO0DO" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
              <node concept="37vLTw" id="2y5ZLyvO0DP" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZYz" resolve="ida" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0DQ" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZYD" resolve="original" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZYN" role="37wK5m">
              <property role="Xl_RC" value="equivalentes(min(det(Thompson(StateElim(A)))), min(det(A)))" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZYO" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZYP" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2YIFZM" id="2y5ZLyvO0DT" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK_ge" resolve="isomorfos" />
              <node concept="37vLTw" id="2y5ZLyvO0DU" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZYz" resolve="ida" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0DV" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZYD" resolve="original" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZYT" role="37wK5m">
              <property role="Xl_RC" value="y además los dos AFD mínimos son isomorfos" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZYU" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZYV" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2YIFZM" id="2y5ZLyvO0DY" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
              <node concept="37vLTw" id="2y5ZLyvO0DZ" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZYD" resolve="original" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyvO0E0" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
                <node concept="1rXfSq" id="2y5ZLyvO0E1" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZOG" resolve="cicloCompleto" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZZ0" role="37wK5m">
              <property role="Xl_RC" value="L(Cerradura) = L(CicloCompleto)" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZZ1" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZZ2" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZZ3" role="jymVt">
      <property role="TrG5h" value="test10MinimoDelDispositivo" />
      <node concept="3clFbS" id="2y5ZLyvNZZ4" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZZ5" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZZ6" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZZ7" role="37wK5m">
              <property role="Xl_RC" value="10. AFD mínimo completo de la Cerradura" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZZ9" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZZ8" role="3cpWs9">
            <property role="TrG5h" value="minimal" />
            <node concept="3uibUv" id="2y5ZLyvNZZa" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZZb" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="1rXfSq" id="2y5ZLyvNZZc" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZOp" resolve="cerradura" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZZd" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZZe" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvNZZf" role="37wK5m">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0Ed" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0Ec" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZZ8" resolve="minimal" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0Ee" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvIoou" resolve="stateCount" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZZh" role="37wK5m">
              <property role="Xl_RC" value="tiene 5 estados (4 + sumidero)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZZi" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZZj" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3y3z36" id="2y5ZLyvNZZk" role="37wK5m">
              <node concept="2OqwBi" id="2y5ZLyvO2dH" role="3uHU7B">
                <node concept="37vLTw" id="2y5ZLyvO0Eh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvNZZ8" resolve="minimal" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO2dI" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvIorA" resolve="sinkState" />
                </node>
              </node>
              <node concept="1ZRNhn" id="2y5ZLyvNZZm" role="3uHU7w">
                <node concept="3cmrfG" id="2y5ZLyvNZZn" role="2$L3a6">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZZo" role="37wK5m">
              <property role="Xl_RC" value="incluye el sumidero" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZZp" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2dX" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0El" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvNZHN" resolve="out" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2dY" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="2y5ZLyvO2dZ" role="37wK5m">
                <node concept="Xl_RD" id="2y5ZLyvO2e0" role="3uHU7B">
                  <property role="Xl_RC" value="  " />
                </node>
                <node concept="2YIFZM" id="2y5ZLyvO44I" role="3uHU7w">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvJ3BU" resolve="describe" />
                  <node concept="37vLTw" id="2y5ZLyvO44J" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvNZZ8" resolve="minimal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvNZZv" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvNZZw" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvNZZx" role="jymVt">
      <property role="TrG5h" value="test11EquivalenciaNegativa" />
      <node concept="3clFbS" id="2y5ZLyvNZZy" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvNZZz" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZZ$" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvNZZ_" role="37wK5m">
              <property role="Xl_RC" value="11. Equivalencia: caso negativo" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZZB" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZZA" role="3cpWs9">
            <property role="TrG5h" value="ciclo" />
            <node concept="3uibUv" id="2y5ZLyvNZZC" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZZD" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="1rXfSq" id="2y5ZLyvNZZE" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZOG" resolve="cicloCompleto" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZZG" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZZF" role="3cpWs9">
            <property role="TrG5h" value="estricta" />
            <node concept="3uibUv" id="2y5ZLyvNZZH" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvNZZI" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="1rXfSq" id="2y5ZLyvNZZJ" role="37wK5m">
                <ref role="37wK5l" node="2y5ZLyvNZPw" resolve="siempreAbrir" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZZK" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZZL" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3fqX7Q" id="2y5ZLyvNZZM" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0Et" role="3fr31v">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
                <node concept="37vLTw" id="2y5ZLyvO0Eu" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZZA" resolve="ciclo" />
                </node>
                <node concept="37vLTw" id="2y5ZLyvO0Ev" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZZF" resolve="estricta" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZZQ" role="37wK5m">
              <property role="Xl_RC" value="CicloCompleto y (d·a·c·b)* NO son equivalentes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvNZZR" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvNZZS" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3fqX7Q" id="2y5ZLyvNZZT" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0Ey" role="3fr31v">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK_ge" resolve="isomorfos" />
                <node concept="37vLTw" id="2y5ZLyvO0Ez" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZZA" resolve="ciclo" />
                </node>
                <node concept="37vLTw" id="2y5ZLyvO0E$" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZZF" resolve="estricta" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvNZZX" role="37wK5m">
              <property role="Xl_RC" value="ni isomorfos" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvNZZZ" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvNZZY" role="3cpWs9">
            <property role="TrG5h" value="esperada" />
            <node concept="10Q1$e" id="2y5ZLyvO001" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvO000" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvO004" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvO002" role="2BsfMF">
                <property role="Xl_RC" value="desbloquear" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyvO003" role="2BsfMF">
                <property role="Xl_RC" value="bloquear" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO005" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO006" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvO007" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
              <node concept="37vLTw" id="2y5ZLyvO008" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZZY" resolve="esperada" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO2eg" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0EB" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvNZHY" resolve="sigma" />
              </node>
              <node concept="liA8E" id="2y5ZLyvO2eh" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE7d" resolve="namesOf" />
                <node concept="2YIFZM" id="2y5ZLyvO44M" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvK_d4" resolve="distinguishingWord" />
                  <node concept="37vLTw" id="2y5ZLyvO44N" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvNZZA" resolve="ciclo" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO44O" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvNZZF" resolve="estricta" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO00d" role="37wK5m">
              <property role="Xl_RC" value="palabra mínima que los distingue = [desbloquear, bloquear]" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00e" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO00f" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2YIFZM" id="2y5ZLyvO0EI" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
              <node concept="37vLTw" id="2y5ZLyvO0EJ" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvNZZA" resolve="ciclo" />
              </node>
              <node concept="2OqwBi" id="2y5ZLyvO4f$" role="37wK5m">
                <node concept="2OqwBi" id="2y5ZLyvO457" role="2Oq$k0">
                  <node concept="37vLTw" id="2y5ZLyvO2ev" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvNZZA" resolve="ciclo" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO458" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIoqm" resolve="complement" />
                  </node>
                </node>
                <node concept="liA8E" id="2y5ZLyvO4f_" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvIoqm" resolve="complement" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO00k" role="37wK5m">
              <property role="Xl_RC" value="el doble complemento no cambia el lenguaje" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00l" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO00m" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3fqX7Q" id="2y5ZLyvO00n" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0EO" role="3fr31v">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
                <node concept="37vLTw" id="2y5ZLyvO0EP" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvNZZA" resolve="ciclo" />
                </node>
                <node concept="2OqwBi" id="2y5ZLyvO45j" role="37wK5m">
                  <node concept="37vLTw" id="2y5ZLyvO2ez" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvNZZA" resolve="ciclo" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO45k" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIoqm" resolve="complement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO00r" role="37wK5m">
              <property role="Xl_RC" value="una AFD no es equivalente a su complemento" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO00s" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvO00t" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO00u" role="jymVt">
      <property role="TrG5h" value="test12NoDeterminismoYShortlex" />
      <node concept="3clFbS" id="2y5ZLyvO00v" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvO00w" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO00x" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvO00y" role="37wK5m">
              <property role="Xl_RC" value="12. No determinismo y orden shortlex" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO00$" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO00z" role="3cpWs9">
            <property role="TrG5h" value="ab" />
            <node concept="3uibUv" id="2y5ZLyvO00_" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0ER" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0ET" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE5q" resolve="Alphabet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00B" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2eJ" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0EW" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00z" resolve="ab" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2eK" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO2eL" role="37wK5m">
                <property role="Xl_RC" value="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00E" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2eW" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0F1" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00z" resolve="ab" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2eX" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO2eY" role="37wK5m">
                <property role="Xl_RC" value="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2y5ZLyvO0pQ" role="3cqZAp">
          <node concept="1PaTwC" id="2y5ZLyvO0pR" role="1aUNEU">
            <node concept="3oM_SD" id="2y5ZLyvO0pT" role="1PaTwD">
              <property role="3oM_SC" value="Rombo:" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pU" role="1PaTwD">
              <property role="3oM_SC" value="0" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pV" role="1PaTwD">
              <property role="3oM_SC" value="--b--&gt;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pW" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pX" role="1PaTwD">
              <property role="3oM_SC" value="--a--&gt;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pY" role="1PaTwD">
              <property role="3oM_SC" value="3" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0pZ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q0" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q1" role="1PaTwD">
              <property role="3oM_SC" value="y" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q2" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q3" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q4" role="1PaTwD">
              <property role="3oM_SC" value="0" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q5" role="1PaTwD">
              <property role="3oM_SC" value="--a--&gt;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q6" role="1PaTwD">
              <property role="3oM_SC" value="2" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q7" role="1PaTwD">
              <property role="3oM_SC" value="--b--&gt;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q8" role="1PaTwD">
              <property role="3oM_SC" value="3" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0q9" role="1PaTwD">
              <property role="3oM_SC" value="(agregadas" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qa" role="1PaTwD">
              <property role="3oM_SC" value="en" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qb" role="1PaTwD">
              <property role="3oM_SC" value="el" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qc" role="1PaTwD">
              <property role="3oM_SC" value="orden" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qd" role="1PaTwD">
              <property role="3oM_SC" value="&quot;malo&quot;)." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO00I" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO00H" role="3cpWs9">
            <property role="TrG5h" value="rombo" />
            <node concept="3uibUv" id="2y5ZLyvO00J" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0F4" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0Ff" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHYk$" resolve="Nfa" />
                <node concept="3cmrfG" id="2y5ZLyvO0Fg" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00M" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2f9" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Fj" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2fa" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00O" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2fl" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Fn" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2fm" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00Q" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2fx" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Fr" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2fy" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00S" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2fH" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Fv" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2fI" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00U" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2i3" role="3clFbG">
            <node concept="2OqwBi" id="2y5ZLyvO0F$" role="2Oq$k0">
              <node concept="37vLTw" id="2y5ZLyvO0Fz" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0F_" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkk" resolve="accepting" />
              </node>
            </node>
            <node concept="liA8E" id="2y5ZLyvO2i4" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="3cmrfG" id="2y5ZLyvO2i5" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO00X" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2ig" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0FE" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2ih" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2ii" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2ij" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2ik" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO012" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2iv" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0FL" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2iw" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2ix" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2iy" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2iz" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO017" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2iI" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0FS" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2iJ" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2iK" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2iL" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2iM" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO01c" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2iX" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0FZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2iY" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2iZ" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2j0" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2j1" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO01i" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO01h" role="3cpWs9">
            <property role="TrG5h" value="meta" />
            <node concept="10Q1$e" id="2y5ZLyvO01k" role="1tU5fm">
              <node concept="10Oyi0" id="2y5ZLyvO01j" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="2y5ZLyvO01m" role="33vP2m">
              <node concept="3cmrfG" id="2y5ZLyvO01l" role="2BsfMF">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO01o" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO01n" role="3cpWs9">
            <property role="TrG5h" value="ab1" />
            <node concept="10Q1$e" id="2y5ZLyvO01q" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvO01p" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvO01t" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvO01r" role="2BsfMF">
                <property role="Xl_RC" value="a" />
              </node>
              <node concept="Xl_RD" id="2y5ZLyvO01s" role="2BsfMF">
                <property role="Xl_RC" value="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO01u" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO01v" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvO01w" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
              <node concept="37vLTw" id="2y5ZLyvO01x" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO01n" resolve="ab1" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO2jc" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0G6" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO00z" resolve="ab" />
              </node>
              <node concept="liA8E" id="2y5ZLyvO2jd" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE7d" resolve="namesOf" />
                <node concept="2YIFZM" id="2y5ZLyvO45n" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvJkkW" resolve="shortestTraceTo" />
                  <node concept="37vLTw" id="2y5ZLyvO45o" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
                  </node>
                  <node concept="1rXfSq" id="2y5ZLyvO45p" role="37wK5m">
                    <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
                    <node concept="37vLTw" id="2y5ZLyvO45q" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO01h" resolve="meta" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO01B" role="37wK5m">
              <property role="Xl_RC" value="entre [a, b] y [b, a] (misma longitud) la traza mínima es [a, b]" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO01D" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO01C" role="3cpWs9">
            <property role="TrG5h" value="prohibida" />
            <node concept="3uibUv" id="2y5ZLyvO01E" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Gi" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK4Do" resolve="checkForbidden" />
              <node concept="37vLTw" id="2y5ZLyvO0Gj" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
              </node>
              <node concept="2YIFZM" id="2y5ZLyvO2jk" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuO2" resolve="any" />
                <node concept="3cmrfG" id="2y5ZLyvO2jl" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0Gm" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO00z" resolve="ab" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO01L" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO01K" role="3cpWs9">
            <property role="TrG5h" value="soloA" />
            <node concept="10Q1$e" id="2y5ZLyvO01N" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvO01M" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvO01P" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvO01O" role="2BsfMF">
                <property role="Xl_RC" value="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO01Q" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO01R" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvO01S" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
              <node concept="37vLTw" id="2y5ZLyvO01T" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO01K" resolve="soloA" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0Gq" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0Gp" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO01C" resolve="prohibida" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0Gr" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO01V" role="37wK5m">
              <property role="Xl_RC" value="FORBIDDEN '.' se viola con el contraejemplo mínimo [a]" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO01X" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO01W" role="3cpWs9">
            <property role="TrG5h" value="vacia" />
            <node concept="3uibUv" id="2y5ZLyvO01Y" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Gu" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK4Cz" resolve="checkRequired" />
              <node concept="37vLTw" id="2y5ZLyvO0Gv" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO00H" resolve="rombo" />
              </node>
              <node concept="2YIFZM" id="2y5ZLyvO2jo" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuMS" resolve="empty" />
                <node concept="3cmrfG" id="2y5ZLyvO2jp" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0Gy" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO00z" resolve="ab" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO024" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO025" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvO026" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
              <node concept="37vLTw" id="2y5ZLyvO027" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO01n" resolve="ab1" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0GA" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0G_" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO01W" resolve="vacia" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0GB" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO029" role="37wK5m">
              <property role="Xl_RC" value="REQUIRED ∅ se viola con el contraejemplo mínimo [a, b]" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2y5ZLyvO0qe" role="3cqZAp">
          <node concept="1PaTwC" id="2y5ZLyvO0qf" role="1aUNEU">
            <node concept="3oM_SD" id="2y5ZLyvO0qh" role="1PaTwD">
              <property role="3oM_SC" value="AFN:" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qi" role="1PaTwD">
              <property role="3oM_SC" value="0" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qj" role="1PaTwD">
              <property role="3oM_SC" value="--a--&gt;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qk" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0ql" role="1PaTwD">
              <property role="3oM_SC" value="y" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qm" role="1PaTwD">
              <property role="3oM_SC" value="0" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qn" role="1PaTwD">
              <property role="3oM_SC" value="--a--&gt;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qo" role="1PaTwD">
              <property role="3oM_SC" value="2" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qp" role="1PaTwD">
              <property role="3oM_SC" value=";" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qq" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qr" role="1PaTwD">
              <property role="3oM_SC" value="--b--&gt;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qs" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qt" role="1PaTwD">
              <property role="3oM_SC" value=";" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qu" role="1PaTwD">
              <property role="3oM_SC" value="2" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qv" role="1PaTwD">
              <property role="3oM_SC" value="es" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qw" role="1PaTwD">
              <property role="3oM_SC" value="de" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qx" role="1PaTwD">
              <property role="3oM_SC" value="aceptación." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO02b" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO02a" role="3cpWs9">
            <property role="TrG5h" value="afn" />
            <node concept="3uibUv" id="2y5ZLyvO02c" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0GC" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0GN" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHYk$" resolve="Nfa" />
                <node concept="3cmrfG" id="2y5ZLyvO0GO" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO02f" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2j$" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0GR" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2j_" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO02h" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2jK" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0GV" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2jL" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO02j" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2jW" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0GZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2jX" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO02l" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2mi" role="3clFbG">
            <node concept="2OqwBi" id="2y5ZLyvO0H4" role="2Oq$k0">
              <node concept="37vLTw" id="2y5ZLyvO0H3" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0H5" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkk" resolve="accepting" />
              </node>
            </node>
            <node concept="liA8E" id="2y5ZLyvO2mj" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="3cmrfG" id="2y5ZLyvO2mk" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO02o" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2mv" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Ha" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2mw" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2mx" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2my" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2mz" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO02t" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2mI" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Hh" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2mJ" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2mK" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2mL" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2mM" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO02y" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2mX" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Ho" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2mY" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2mZ" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2n0" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2n1" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO02C" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO02B" role="3cpWs9">
            <property role="TrG5h" value="choques" />
            <node concept="3uibUv" id="2y5ZLyvO02D" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="10Q1$e" id="2y5ZLyvO02F" role="11_B2D">
                <node concept="10Oyi0" id="2y5ZLyvO02E" role="10Q1$1" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Hv" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJkj3" resolve="nondeterminism" />
              <node concept="37vLTw" id="2y5ZLyvO0Hw" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO02I" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO02J" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3fqX7Q" id="2y5ZLyvO02K" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0Hz" role="3fr31v">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJkko" resolve="isDeterministic" />
                <node concept="37vLTw" id="2y5ZLyvO0H$" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO02N" role="37wK5m">
              <property role="Xl_RC" value="el AFN se detecta como no determinista" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO02O" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO02P" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="1Wc70l" id="2y5ZLyvO02Q" role="37wK5m">
              <node concept="1Wc70l" id="2y5ZLyvO02R" role="3uHU7B">
                <node concept="3clFbC" id="2y5ZLyvO02S" role="3uHU7B">
                  <node concept="2OqwBi" id="2y5ZLyvO2pT" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLyvO0HB" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvO02B" resolve="choques" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO2pU" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="2y5ZLyvO02U" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3clFbC" id="2y5ZLyvO02V" role="3uHU7w">
                  <node concept="AH0OO" id="2y5ZLyvO02W" role="3uHU7B">
                    <node concept="2OqwBi" id="2y5ZLyvO2sM" role="AHHXb">
                      <node concept="37vLTw" id="2y5ZLyvO0HF" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO02B" resolve="choques" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyvO2sN" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="2y5ZLyvO2sO" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="2y5ZLyvO02Z" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="2y5ZLyvO030" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="2y5ZLyvO031" role="3uHU7w">
                <node concept="AH0OO" id="2y5ZLyvO032" role="3uHU7B">
                  <node concept="2OqwBi" id="2y5ZLyvO2vG" role="AHHXb">
                    <node concept="37vLTw" id="2y5ZLyvO0HK" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvO02B" resolve="choques" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO2vH" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="2y5ZLyvO2vI" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="2y5ZLyvO035" role="AHEQo">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3cmrfG" id="2y5ZLyvO036" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO037" role="37wK5m">
              <property role="Xl_RC" value="el único choque es (estado 0, símbolo a)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO039" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO038" role="3cpWs9">
            <property role="TrG5h" value="nombres" />
            <node concept="3uibUv" id="2y5ZLyvO03a" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyvO03b" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0HN" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0HS" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyvO0HT" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO03e" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2y1" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0HW" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO038" resolve="nombres" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2y2" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO2y3" role="37wK5m">
                <property role="Xl_RC" value="q0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO03h" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2$m" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0I1" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO038" resolve="nombres" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2$n" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO2$o" role="37wK5m">
                <property role="Xl_RC" value="q1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO03k" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2AF" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0I6" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO038" resolve="nombres" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2AG" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO2AH" role="37wK5m">
                <property role="Xl_RC" value="q2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO03o" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO03n" role="3cpWs9">
            <property role="TrG5h" value="paso" />
            <node concept="3uibUv" id="2y5ZLyvO03p" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQQN" resolve="SimulationResult" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Ib" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
              <node concept="37vLTw" id="2y5ZLyvO0Ic" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
              </node>
              <node concept="2OqwBi" id="2y5ZLyvO45_" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLyvO2AK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvO00z" resolve="ab" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO45A" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvHE7I" resolve="wordOf" />
                  <node concept="1rXfSq" id="2y5ZLyvO45B" role="37wK5m">
                    <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
                    <node concept="37vLTw" id="2y5ZLyvO45C" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO01K" resolve="soloA" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO03v" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO03w" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2OqwBi" id="2y5ZLyvO0In" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0Im" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO03n" resolve="paso" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0Io" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO03y" role="37wK5m">
              <property role="Xl_RC" value="el AFN acepta [a]" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO03z" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO03$" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cpWs3" id="2y5ZLyvO03_" role="37wK5m">
              <node concept="3cpWs3" id="2y5ZLyvO03A" role="3uHU7B">
                <node concept="Xl_RD" id="2y5ZLyvO03B" role="3uHU7B">
                  <property role="Xl_RC" value="q0" />
                </node>
                <node concept="10M0yZ" id="2y5ZLyvO0Ir" role="3uHU7w">
                  <ref role="1PxDUh" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                  <ref role="3cqZAo" to="op1a:2y5ZLyvKsrY" resolve="ARROW" />
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLyvO03D" role="3uHU7w">
                <property role="Xl_RC" value="{q1, q2}" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Iu" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKsth" resolve="formatTrace" />
              <node concept="37vLTw" id="2y5ZLyvO0Iv" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO03n" resolve="paso" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0Iw" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO038" resolve="nombres" />
              </node>
            </node>
            <node concept="3cpWs3" id="2y5ZLyvO03H" role="37wK5m">
              <node concept="Xl_RD" id="2y5ZLyvO03I" role="3uHU7B">
                <property role="Xl_RC" value="la traza muestra el conjunto de estados activos: " />
              </node>
              <node concept="2YIFZM" id="2y5ZLyvO0Iz" role="3uHU7w">
                <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                <ref role="37wK5l" to="op1a:2y5ZLyvKsth" resolve="formatTrace" />
                <node concept="37vLTw" id="2y5ZLyvO0I$" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO03n" resolve="paso" />
                </node>
                <node concept="37vLTw" id="2y5ZLyvO0I_" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO038" resolve="nombres" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO03N" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO03M" role="3cpWs9">
            <property role="TrG5h" value="sigue" />
            <node concept="3uibUv" id="2y5ZLyvO03O" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQQN" resolve="SimulationResult" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0IC" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
              <node concept="37vLTw" id="2y5ZLyvO0ID" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
              </node>
              <node concept="2OqwBi" id="2y5ZLyvO45N" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLyvO2AQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvO00z" resolve="ab" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO45O" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvHE7I" resolve="wordOf" />
                  <node concept="1rXfSq" id="2y5ZLyvO45P" role="37wK5m">
                    <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
                    <node concept="37vLTw" id="2y5ZLyvO45Q" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO01n" resolve="ab1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO03U" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO03V" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="1Wc70l" id="2y5ZLyvO03W" role="37wK5m">
              <node concept="3fqX7Q" id="2y5ZLyvO03X" role="3uHU7B">
                <node concept="2OqwBi" id="2y5ZLyvO0IO" role="3fr31v">
                  <node concept="37vLTw" id="2y5ZLyvO0IN" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO03M" resolve="sigue" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO0IP" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="2y5ZLyvO03Z" role="3uHU7w">
                <node concept="2OqwBi" id="2y5ZLyvO0IT" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLyvO0IS" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO03M" resolve="sigue" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO0IU" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQQZ" resolve="failedStep" />
                  </node>
                </node>
                <node concept="3cmrfG" id="2y5ZLyvO041" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO042" role="37wK5m">
              <property role="Xl_RC" value="[a, b] se rechaza al final (queda activo solo q1)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO044" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO043" role="3cpWs9">
            <property role="TrG5h" value="abb" />
            <node concept="10Q1$e" id="2y5ZLyvO046" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvO045" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvO048" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvO047" role="2BsfMF">
                <property role="Xl_RC" value="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO049" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO04a" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvO04b" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO04c" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0IX" role="2Oq$k0">
                <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
                <node concept="37vLTw" id="2y5ZLyvO0IY" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO02a" resolve="afn" />
                </node>
                <node concept="2OqwBi" id="2y5ZLyvO461" role="37wK5m">
                  <node concept="37vLTw" id="2y5ZLyvO2AW" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO00z" resolve="ab" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO462" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvHE7I" resolve="wordOf" />
                    <node concept="1rXfSq" id="2y5ZLyvO463" role="37wK5m">
                      <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
                      <node concept="37vLTw" id="2y5ZLyvO464" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO043" resolve="abb" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO04i" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQQZ" resolve="failedStep" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO04j" role="37wK5m">
              <property role="Xl_RC" value="[b] falla en el paso 1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO04k" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvO04l" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO04m" role="jymVt">
      <property role="TrG5h" value="test13OperadoresDerivados" />
      <node concept="3clFbS" id="2y5ZLyvO04n" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvO04o" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO04p" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvO04q" role="37wK5m">
              <property role="Xl_RC" value="13. Operadores +, ?, . y texto de expresiones" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO04s" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO04r" role="3cpWs9">
            <property role="TrG5h" value="ab" />
            <node concept="3uibUv" id="2y5ZLyvO04t" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0J6" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0J8" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE5q" resolve="Alphabet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO04v" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Ba" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Jb" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO04r" resolve="ab" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2Bb" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO2Bc" role="37wK5m">
                <property role="Xl_RC" value="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO04y" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Bn" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Jg" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO04r" resolve="ab" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2Bo" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO2Bp" role="37wK5m">
                <property role="Xl_RC" value="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO04A" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO04_" role="3cpWs9">
            <property role="TrG5h" value="vacia" />
            <node concept="3uibUv" id="2y5ZLyvO04B" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyvO04C" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0Jj" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0Jo" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyvO0Jp" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO04G" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO04F" role="3cpWs9">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="2y5ZLyvO04H" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyvO04I" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0Jq" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0Jv" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyvO0Jw" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO04L" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2DG" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Jz" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO04F" resolve="a" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2DH" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="3cmrfG" id="2y5ZLyvO2DI" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO04P" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO04O" role="3cpWs9">
            <property role="TrG5h" value="aa" />
            <node concept="3uibUv" id="2y5ZLyvO04Q" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyvO04R" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0JA" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0JF" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyvO0JG" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO04U" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2G1" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0JJ" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO04O" resolve="aa" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2G2" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="3cmrfG" id="2y5ZLyvO2G3" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO04X" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Im" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0JO" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO04O" resolve="aa" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2In" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="3cmrfG" id="2y5ZLyvO2Io" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO051" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO050" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="2y5ZLyvO052" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyvO053" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0JR" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0JW" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyvO0JX" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO056" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2KF" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0K0" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO050" resolve="b" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2KG" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="3cmrfG" id="2y5ZLyvO2KH" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO05a" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO059" role="3cpWs9">
            <property role="TrG5h" value="mas" />
            <node concept="3uibUv" id="2y5ZLyvO05b" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvO05c" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="2YIFZM" id="2y5ZLyvO0K5" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuRh" resolve="plus" />
                <node concept="2YIFZM" id="2y5ZLyvO2KK" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvIuNF" resolve="symbol" />
                  <node concept="3cmrfG" id="2y5ZLyvO2KL" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="2y5ZLyvO2KM" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO05h" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO05i" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="1Wc70l" id="2y5ZLyvO05j" role="37wK5m">
              <node concept="1Wc70l" id="2y5ZLyvO05k" role="3uHU7B">
                <node concept="1Wc70l" id="2y5ZLyvO05l" role="3uHU7B">
                  <node concept="3fqX7Q" id="2y5ZLyvO05m" role="3uHU7B">
                    <node concept="2OqwBi" id="2y5ZLyvO2KX" role="3fr31v">
                      <node concept="37vLTw" id="2y5ZLyvO0Kb" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO059" resolve="mas" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyvO2KY" role="2OqNvi">
                        <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                        <node concept="37vLTw" id="2y5ZLyvO2KZ" role="37wK5m">
                          <ref role="3cqZAo" node="2y5ZLyvO04_" resolve="vacia" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2y5ZLyvO2La" role="3uHU7w">
                    <node concept="37vLTw" id="2y5ZLyvO0Kg" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvO059" resolve="mas" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO2Lb" role="2OqNvi">
                      <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                      <node concept="37vLTw" id="2y5ZLyvO2Lc" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO04F" resolve="a" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2y5ZLyvO2Ln" role="3uHU7w">
                  <node concept="37vLTw" id="2y5ZLyvO0Kl" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO059" resolve="mas" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO2Lo" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                    <node concept="37vLTw" id="2y5ZLyvO2Lp" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO04O" resolve="aa" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="2y5ZLyvO05t" role="3uHU7w">
                <node concept="2OqwBi" id="2y5ZLyvO2L$" role="3fr31v">
                  <node concept="37vLTw" id="2y5ZLyvO0Kq" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO059" resolve="mas" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO2L_" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                    <node concept="37vLTw" id="2y5ZLyvO2LA" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO050" resolve="b" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO05w" role="37wK5m">
              <property role="Xl_RC" value="a+ : rechaza ε y b, acepta a y aa" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO05x" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO05y" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvO05z" role="37wK5m">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0Kw" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0Kv" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO059" resolve="mas" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0Kx" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvIoou" resolve="stateCount" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO05_" role="37wK5m">
              <property role="Xl_RC" value="AFD mínimo de a+ sobre {a, b}: 3 estados (con sumidero)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO05B" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO05A" role="3cpWs9">
            <property role="TrG5h" value="masDirecto" />
            <node concept="3uibUv" id="2y5ZLyvO05C" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvO05D" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="2YIFZM" id="2y5ZLyvO0K$" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuPR" resolve="concat" />
                <node concept="2YIFZM" id="2y5ZLyvO2LD" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvIuNF" resolve="symbol" />
                  <node concept="3cmrfG" id="2y5ZLyvO2LE" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="2y5ZLyvO2LF" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2y5ZLyvO2LI" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvIuQQ" resolve="star" />
                  <node concept="2YIFZM" id="2y5ZLyvO467" role="37wK5m">
                    <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                    <ref role="37wK5l" to="op1a:2y5ZLyvIuNF" resolve="symbol" />
                    <node concept="3cmrfG" id="2y5ZLyvO468" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="2y5ZLyvO469" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO05M" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO05N" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2YIFZM" id="2y5ZLyvO0KI" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
              <node concept="37vLTw" id="2y5ZLyvO0KJ" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO059" resolve="mas" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0KK" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO05A" resolve="masDirecto" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO05R" role="37wK5m">
              <property role="Xl_RC" value="T(r+) = T(r · r*)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO05T" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO05S" role="3cpWs9">
            <property role="TrG5h" value="opcional" />
            <node concept="3uibUv" id="2y5ZLyvO05U" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvO05V" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="2YIFZM" id="2y5ZLyvO0KN" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuSh" resolve="optional" />
                <node concept="2YIFZM" id="2y5ZLyvO2LO" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvIuNF" resolve="symbol" />
                  <node concept="3cmrfG" id="2y5ZLyvO2LP" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="2y5ZLyvO2LQ" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO060" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO061" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="1Wc70l" id="2y5ZLyvO062" role="37wK5m">
              <node concept="1Wc70l" id="2y5ZLyvO063" role="3uHU7B">
                <node concept="2OqwBi" id="2y5ZLyvO2M1" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLyvO0KT" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO05S" resolve="opcional" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO2M2" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                    <node concept="37vLTw" id="2y5ZLyvO2M3" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO04_" resolve="vacia" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2y5ZLyvO2Me" role="3uHU7w">
                  <node concept="37vLTw" id="2y5ZLyvO0KY" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO05S" resolve="opcional" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO2Mf" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                    <node concept="37vLTw" id="2y5ZLyvO2Mg" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO04F" resolve="a" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="2y5ZLyvO068" role="3uHU7w">
                <node concept="2OqwBi" id="2y5ZLyvO2Mr" role="3fr31v">
                  <node concept="37vLTw" id="2y5ZLyvO0L3" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO05S" resolve="opcional" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO2Ms" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                    <node concept="37vLTw" id="2y5ZLyvO2Mt" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO04O" resolve="aa" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO06b" role="37wK5m">
              <property role="Xl_RC" value="a? : acepta ε y a, rechaza aa" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO06d" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO06c" role="3cpWs9">
            <property role="TrG5h" value="cualquiera" />
            <node concept="3uibUv" id="2y5ZLyvO06e" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvO06f" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="2YIFZM" id="2y5ZLyvO0L8" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuO2" resolve="any" />
                <node concept="3cmrfG" id="2y5ZLyvO0L9" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO06i" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO06j" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="1Wc70l" id="2y5ZLyvO06k" role="37wK5m">
              <node concept="1Wc70l" id="2y5ZLyvO06l" role="3uHU7B">
                <node concept="1Wc70l" id="2y5ZLyvO06m" role="3uHU7B">
                  <node concept="3fqX7Q" id="2y5ZLyvO06n" role="3uHU7B">
                    <node concept="2OqwBi" id="2y5ZLyvO2MC" role="3fr31v">
                      <node concept="37vLTw" id="2y5ZLyvO0Lc" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO06c" resolve="cualquiera" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyvO2MD" role="2OqNvi">
                        <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                        <node concept="37vLTw" id="2y5ZLyvO2ME" role="37wK5m">
                          <ref role="3cqZAo" node="2y5ZLyvO04_" resolve="vacia" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2y5ZLyvO2MP" role="3uHU7w">
                    <node concept="37vLTw" id="2y5ZLyvO0Lh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvO06c" resolve="cualquiera" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO2MQ" role="2OqNvi">
                      <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                      <node concept="37vLTw" id="2y5ZLyvO2MR" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO04F" resolve="a" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2y5ZLyvO2N2" role="3uHU7w">
                  <node concept="37vLTw" id="2y5ZLyvO0Lm" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO06c" resolve="cualquiera" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO2N3" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                    <node concept="37vLTw" id="2y5ZLyvO2N4" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO050" resolve="b" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="2y5ZLyvO06u" role="3uHU7w">
                <node concept="2OqwBi" id="2y5ZLyvO2Nf" role="3fr31v">
                  <node concept="37vLTw" id="2y5ZLyvO0Lr" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO06c" resolve="cualquiera" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO2Ng" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                    <node concept="37vLTw" id="2y5ZLyvO2Nh" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO04O" resolve="aa" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO06x" role="37wK5m">
              <property role="Xl_RC" value=". : acepta exactamente las palabras de un símbolo" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO06z" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO06y" role="3cpWs9">
            <property role="TrG5h" value="todo" />
            <node concept="3uibUv" id="2y5ZLyvO06$" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvO06_" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="2YIFZM" id="2y5ZLyvO0Lw" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuQQ" resolve="star" />
                <node concept="2YIFZM" id="2y5ZLyvO2Nk" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvIuO2" resolve="any" />
                  <node concept="3cmrfG" id="2y5ZLyvO2Nl" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO06D" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO06E" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvO06F" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0LA" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0L_" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO06y" resolve="todo" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0LB" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvIoou" resolve="stateCount" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO06H" role="37wK5m">
              <property role="Xl_RC" value="AFD mínimo de .* : 1 estado" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO06I" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO06J" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="Xl_RD" id="2y5ZLyvO06K" role="37wK5m">
              <property role="Xl_RC" value="AFD mínimo de 1 estados" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0LE" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJ3BU" resolve="describe" />
              <node concept="37vLTw" id="2y5ZLyvO0LF" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO06y" resolve="todo" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO06N" role="37wK5m">
              <property role="Xl_RC" value="sin sumidero el mensaje no lo menciona" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO06P" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO06O" role="3cpWs9">
            <property role="TrG5h" value="arbol" />
            <node concept="3uibUv" id="2y5ZLyvO06Q" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvINsF" resolve="Regex" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0LI" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvINsF" resolve="Regex" />
              <ref role="37wK5l" to="op1a:2y5ZLyvINva" resolve="concat" />
              <node concept="2YIFZM" id="2y5ZLyvO2No" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvINsF" resolve="Regex" />
                <ref role="37wK5l" to="op1a:2y5ZLyvINvp" resolve="star" />
                <node concept="2YIFZM" id="2y5ZLyvO46c" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvINsF" resolve="Regex" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvINuV" resolve="union" />
                  <node concept="2YIFZM" id="2y5ZLyvO4fC" role="37wK5m">
                    <ref role="1Pybhc" to="op1a:2y5ZLyvINsF" resolve="Regex" />
                    <ref role="37wK5l" to="op1a:2y5ZLyvINu$" resolve="symbol" />
                    <node concept="3cmrfG" id="2y5ZLyvO4fD" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="2y5ZLyvO4fG" role="37wK5m">
                    <ref role="1Pybhc" to="op1a:2y5ZLyvINsF" resolve="Regex" />
                    <ref role="37wK5l" to="op1a:2y5ZLyvINu$" resolve="symbol" />
                    <node concept="3cmrfG" id="2y5ZLyvO4fH" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="2y5ZLyvO2Nw" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvINsF" resolve="Regex" />
                <ref role="37wK5l" to="op1a:2y5ZLyvINvN" resolve="optional" />
                <node concept="2YIFZM" id="2y5ZLyvO46j" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvINsF" resolve="Regex" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvINvA" resolve="plus" />
                  <node concept="2YIFZM" id="2y5ZLyvO4fK" role="37wK5m">
                    <ref role="1Pybhc" to="op1a:2y5ZLyvINsF" resolve="Regex" />
                    <ref role="37wK5l" to="op1a:2y5ZLyvINuK" resolve="any" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO071" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO072" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="Xl_RD" id="2y5ZLyvO073" role="37wK5m">
              <property role="Xl_RC" value="(a | b)* · (.+)?" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO2NH" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0LU" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO06O" resolve="arbol" />
              </node>
              <node concept="liA8E" id="2y5ZLyvO2NI" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvINxO" resolve="toText" />
                <node concept="37vLTw" id="2y5ZLyvO2NJ" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO04r" resolve="ab" />
                </node>
              </node>
            </node>
            <node concept="3cpWs3" id="2y5ZLyvO076" role="37wK5m">
              <node concept="Xl_RD" id="2y5ZLyvO077" role="3uHU7B">
                <property role="Xl_RC" value="paréntesis según precedencia: " />
              </node>
              <node concept="2OqwBi" id="2y5ZLyvO2NU" role="3uHU7w">
                <node concept="37vLTw" id="2y5ZLyvO0LZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvO06O" resolve="arbol" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO2NV" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvINxO" resolve="toText" />
                  <node concept="37vLTw" id="2y5ZLyvO2NW" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO04r" resolve="ab" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO07b" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO07a" role="3cpWs9">
            <property role="TrG5h" value="delArbol" />
            <node concept="3uibUv" id="2y5ZLyvO07c" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="1rXfSq" id="2y5ZLyvO07d" role="33vP2m">
              <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
              <node concept="2OqwBi" id="2y5ZLyvO2O7" role="37wK5m">
                <node concept="37vLTw" id="2y5ZLyvO0M4" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvO06O" resolve="arbol" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO2O8" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvIN$x" resolve="toNfa" />
                  <node concept="3cmrfG" id="2y5ZLyvO2O9" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO07g" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO07h" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2YIFZM" id="2y5ZLyvO0M9" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
              <node concept="37vLTw" id="2y5ZLyvO0Ma" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO07a" resolve="delArbol" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0Mb" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO06y" resolve="todo" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO07l" role="37wK5m">
              <property role="Xl_RC" value="(a | b)* · (.+)? es equivalente a .*" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO07m" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvO07n" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO07o" role="jymVt">
      <property role="TrG5h" value="test14CasosBorde" />
      <node concept="3clFbS" id="2y5ZLyvO07p" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvO07q" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO07r" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvO07s" role="37wK5m">
              <property role="Xl_RC" value="14. Casos borde" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO07u" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO07t" role="3cpWs9">
            <property role="TrG5h" value="ab" />
            <node concept="3uibUv" id="2y5ZLyvO07v" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0Mc" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0Me" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE5q" resolve="Alphabet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO07x" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Ok" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Mh" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO07t" resolve="ab" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2Ol" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO2Om" role="37wK5m">
                <property role="Xl_RC" value="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO07$" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Ox" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Mm" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO07t" resolve="ab" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2Oy" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO2Oz" role="37wK5m">
                <property role="Xl_RC" value="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2y5ZLyvO0qy" role="3cqZAp">
          <node concept="1PaTwC" id="2y5ZLyvO0qz" role="1aUNEU">
            <node concept="3oM_SD" id="2y5ZLyvO0q_" role="1PaTwD">
              <property role="3oM_SC" value="Dispositivo" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qA" role="1PaTwD">
              <property role="3oM_SC" value="sin" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qB" role="1PaTwD">
              <property role="3oM_SC" value="estados" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qC" role="1PaTwD">
              <property role="3oM_SC" value="de" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qD" role="1PaTwD">
              <property role="3oM_SC" value="aceptación" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qE" role="1PaTwD">
              <property role="3oM_SC" value="alcanzables:" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qF" role="1PaTwD">
              <property role="3oM_SC" value="lenguaje" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qG" role="1PaTwD">
              <property role="3oM_SC" value="vacío." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO07C" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO07B" role="3cpWs9">
            <property role="TrG5h" value="mudo" />
            <node concept="3uibUv" id="2y5ZLyvO07D" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0Mp" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0M$" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHYk$" resolve="Nfa" />
                <node concept="3cmrfG" id="2y5ZLyvO0M_" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO07G" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2OI" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0MC" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO07B" resolve="mudo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2OJ" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO07I" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2OU" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0MG" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO07B" resolve="mudo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2OV" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO07K" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2P6" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0MK" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO07B" resolve="mudo" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2P7" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2P8" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2P9" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2Pa" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO07P" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO07Q" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="Xl_RD" id="2y5ZLyvO07R" role="37wK5m">
              <property role="Xl_RC" value="∅" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0MR" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKfuh" resolve="StateEliminator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKfuj" resolve="toRegexString" />
              <node concept="37vLTw" id="2y5ZLyvO0MS" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO07B" resolve="mudo" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0MT" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO07t" resolve="ab" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO07V" role="37wK5m">
              <property role="Xl_RC" value="la ER de un lenguaje vacío es ∅" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO07W" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO07X" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvO07Y" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO07Z" role="37wK5m">
              <node concept="1rXfSq" id="2y5ZLyvO080" role="2Oq$k0">
                <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
                <node concept="37vLTw" id="2y5ZLyvO081" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO07B" resolve="mudo" />
                </node>
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO082" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvIoou" resolve="stateCount" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO083" role="37wK5m">
              <property role="Xl_RC" value="y su AFD mínimo es solo el sumidero" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO084" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO085" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="2OqwBi" id="2y5ZLyvO086" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0MW" role="2Oq$k0">
                <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
                <ref role="37wK5l" to="op1a:2y5ZLyvK4Cz" resolve="checkRequired" />
                <node concept="37vLTw" id="2y5ZLyvO0MX" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO07B" resolve="mudo" />
                </node>
                <node concept="2YIFZM" id="2y5ZLyvO2Pd" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvIuMS" resolve="empty" />
                  <node concept="3cmrfG" id="2y5ZLyvO2Pe" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="37vLTw" id="2y5ZLyvO0N0" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO07t" resolve="ab" />
                </node>
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO08c" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO08d" role="37wK5m">
              <property role="Xl_RC" value="L = ∅ cumple cualquier REQUIRED" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO08f" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO08e" role="3cpWs9">
            <property role="TrG5h" value="uno" />
            <node concept="10Q1$e" id="2y5ZLyvO08h" role="1tU5fm">
              <node concept="10Oyi0" id="2y5ZLyvO08g" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="2y5ZLyvO08j" role="33vP2m">
              <node concept="3cmrfG" id="2y5ZLyvO08i" role="2BsfMF">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO08k" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO08l" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvO08m" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
              <node concept="37vLTw" id="2y5ZLyvO08n" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO08e" resolve="uno" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0N3" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJkis" resolve="deadlocks" />
              <node concept="37vLTw" id="2y5ZLyvO0N4" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO07B" resolve="mudo" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO08q" role="37wK5m">
              <property role="Xl_RC" value="el estado 1 es deadlock" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2y5ZLyvO0qH" role="3cqZAp">
          <node concept="1PaTwC" id="2y5ZLyvO0qI" role="1aUNEU">
            <node concept="3oM_SD" id="2y5ZLyvO0qK" role="1PaTwD">
              <property role="3oM_SC" value="Estado" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qL" role="1PaTwD">
              <property role="3oM_SC" value="inalcanzable." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO08s" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO08r" role="3cpWs9">
            <property role="TrG5h" value="isla" />
            <node concept="3uibUv" id="2y5ZLyvO08t" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0N5" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0Ng" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHYk$" resolve="Nfa" />
                <node concept="3cmrfG" id="2y5ZLyvO0Nh" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO08w" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Pp" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Nk" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO08r" resolve="isla" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2Pq" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO08y" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2P_" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0No" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO08r" resolve="isla" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2PA" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO08$" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2RV" role="3clFbG">
            <node concept="2OqwBi" id="2y5ZLyvO0Nt" role="2Oq$k0">
              <node concept="37vLTw" id="2y5ZLyvO0Ns" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO08r" resolve="isla" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0Nu" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkk" resolve="accepting" />
              </node>
            </node>
            <node concept="liA8E" id="2y5ZLyvO2RW" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="3cmrfG" id="2y5ZLyvO2RX" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO08B" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2S8" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Nz" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO08r" resolve="isla" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2S9" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2Sa" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2Sb" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2Sc" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO08G" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO08H" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvO08I" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
              <node concept="37vLTw" id="2y5ZLyvO08J" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO08e" resolve="uno" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0NE" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJkhm" resolve="unreachable" />
              <node concept="37vLTw" id="2y5ZLyvO0NF" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO08r" resolve="isla" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO08M" role="37wK5m">
              <property role="Xl_RC" value="el estado 1 es inalcanzable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO08N" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO08O" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3clFbC" id="2y5ZLyvO08P" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0NI" role="3uHU7B">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJkkW" resolve="shortestTraceTo" />
                <node concept="37vLTw" id="2y5ZLyvO0NJ" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO08r" resolve="isla" />
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO0NK" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
                  <node concept="37vLTw" id="2y5ZLyvO0NL" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO08e" resolve="uno" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="2y5ZLyvO08U" role="3uHU7w" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO08V" role="37wK5m">
              <property role="Xl_RC" value="no hay traza hacia un estado inalcanzable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO08W" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO08X" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="Xl_RD" id="2y5ZLyvO08Y" role="37wK5m">
              <property role="Xl_RC" value="ε" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0NS" role="37wK5m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKfuh" resolve="StateEliminator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKfuj" resolve="toRegexString" />
              <node concept="37vLTw" id="2y5ZLyvO0NT" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO08r" resolve="isla" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0NU" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO07t" resolve="ab" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO092" role="37wK5m">
              <property role="Xl_RC" value="su ER es ε (solo acepta la sesión vacía)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2y5ZLyvO0qM" role="3cqZAp">
          <node concept="1PaTwC" id="2y5ZLyvO0qN" role="1aUNEU">
            <node concept="3oM_SD" id="2y5ZLyvO0qP" role="1PaTwD">
              <property role="3oM_SC" value="Transiciones" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qQ" role="1PaTwD">
              <property role="3oM_SC" value="ε" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qR" role="1PaTwD">
              <property role="3oM_SC" value="en" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qS" role="1PaTwD">
              <property role="3oM_SC" value="el" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qT" role="1PaTwD">
              <property role="3oM_SC" value="dispositivo:" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qU" role="1PaTwD">
              <property role="3oM_SC" value="0" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qV" role="1PaTwD">
              <property role="3oM_SC" value="--ε--&gt;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qW" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qX" role="1PaTwD">
              <property role="3oM_SC" value="--a--&gt;" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0qY" role="1PaTwD">
              <property role="3oM_SC" value="2." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO094" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO093" role="3cpWs9">
            <property role="TrG5h" value="conEpsilon" />
            <node concept="3uibUv" id="2y5ZLyvO095" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0NV" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0O6" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHYk$" resolve="Nfa" />
                <node concept="3cmrfG" id="2y5ZLyvO0O7" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO098" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Sn" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Oa" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2So" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO09a" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Sz" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Oe" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2S$" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO09c" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2SJ" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Oi" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2SK" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO09e" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2V5" role="3clFbG">
            <node concept="2OqwBi" id="2y5ZLyvO0On" role="2Oq$k0">
              <node concept="37vLTw" id="2y5ZLyvO0Om" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0Oo" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkk" resolve="accepting" />
              </node>
            </node>
            <node concept="liA8E" id="2y5ZLyvO2V6" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="3cmrfG" id="2y5ZLyvO2V7" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO09h" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Vi" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Ot" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2Vj" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYmq" resolve="addEpsilon" />
              <node concept="3cmrfG" id="2y5ZLyvO2Vk" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2Vl" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO09l" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO2Vw" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0Oz" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO2Vx" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
              <node concept="3cmrfG" id="2y5ZLyvO2Vy" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2Vz" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="2y5ZLyvO2V$" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO09r" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO09q" role="3cpWs9">
            <property role="TrG5h" value="dos" />
            <node concept="10Q1$e" id="2y5ZLyvO09t" role="1tU5fm">
              <node concept="10Oyi0" id="2y5ZLyvO09s" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="2y5ZLyvO09v" role="33vP2m">
              <node concept="3cmrfG" id="2y5ZLyvO09u" role="2BsfMF">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO09x" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO09w" role="3cpWs9">
            <property role="TrG5h" value="soloA" />
            <node concept="10Q1$e" id="2y5ZLyvO09z" role="1tU5fm">
              <node concept="3uibUv" id="2y5ZLyvO09y" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="2y5ZLyvO09_" role="33vP2m">
              <node concept="Xl_RD" id="2y5ZLyvO09$" role="2BsfMF">
                <property role="Xl_RC" value="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO09A" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO09B" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvO09C" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
              <node concept="37vLTw" id="2y5ZLyvO09D" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO09w" resolve="soloA" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO2VJ" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0OE" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO07t" resolve="ab" />
              </node>
              <node concept="liA8E" id="2y5ZLyvO2VK" role="2OqNvi">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE7d" resolve="namesOf" />
                <node concept="2YIFZM" id="2y5ZLyvO46n" role="37wK5m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvJkkW" resolve="shortestTraceTo" />
                  <node concept="37vLTw" id="2y5ZLyvO46o" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
                  </node>
                  <node concept="1rXfSq" id="2y5ZLyvO46p" role="37wK5m">
                    <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
                    <node concept="37vLTw" id="2y5ZLyvO46q" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO09q" resolve="dos" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO09J" role="37wK5m">
              <property role="Xl_RC" value="las transiciones ε no aportan símbolos a la traza" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO09K" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO09L" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="3cmrfG" id="2y5ZLyvO09M" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO2ZK" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0OY" role="2Oq$k0">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJkkW" resolve="shortestTraceTo" />
                <node concept="37vLTw" id="2y5ZLyvO0OZ" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO0P0" role="37wK5m">
                  <ref role="37wK5l" node="2y5ZLyvNZM8" resolve="setOf" />
                  <node concept="37vLTw" id="2y5ZLyvO0P1" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO08e" resolve="uno" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2y5ZLyvO2ZL" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO09S" role="37wK5m">
              <property role="Xl_RC" value="un estado en la ε-clausura del inicial se alcanza con ε" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO09T" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO09U" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="3fqX7Q" id="2y5ZLyvO09V" role="37wK5m">
              <node concept="2YIFZM" id="2y5ZLyvO0P8" role="3fr31v">
                <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                <ref role="37wK5l" to="op1a:2y5ZLyvJkko" resolve="isDeterministic" />
                <node concept="37vLTw" id="2y5ZLyvO0P9" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO09Y" role="37wK5m">
              <property role="Xl_RC" value="una transición ε cuenta como no determinismo" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0a0" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO09Z" role="3cpWs9">
            <property role="TrG5h" value="requerida" />
            <node concept="3uibUv" id="2y5ZLyvO0a1" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Pc" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK4Cz" resolve="checkRequired" />
              <node concept="37vLTw" id="2y5ZLyvO0Pd" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO093" resolve="conEpsilon" />
              </node>
              <node concept="2YIFZM" id="2y5ZLyvO2ZO" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuNF" resolve="symbol" />
                <node concept="3cmrfG" id="2y5ZLyvO2ZP" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="2y5ZLyvO2ZQ" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0Ph" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO07t" resolve="ab" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0a8" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0a9" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKL" resolve="checkEquals" />
            <node concept="1rXfSq" id="2y5ZLyvO0aa" role="37wK5m">
              <ref role="37wK5l" node="2y5ZLyvNZLq" resolve="names" />
              <node concept="37vLTw" id="2y5ZLyvO0ab" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO09w" resolve="soloA" />
              </node>
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO0Pl" role="37wK5m">
              <node concept="37vLTw" id="2y5ZLyvO0Pk" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO09Z" resolve="requerida" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0Pm" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO0ad" role="37wK5m">
              <property role="Xl_RC" value="el producto absorbe las ε del dispositivo" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2y5ZLyvO0qZ" role="3cqZAp">
          <node concept="1PaTwC" id="2y5ZLyvO0r0" role="1aUNEU">
            <node concept="3oM_SD" id="2y5ZLyvO0r2" role="1PaTwD">
              <property role="3oM_SC" value="Contraejemplo" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0r3" role="1PaTwD">
              <property role="3oM_SC" value="vacío:" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0r4" role="1PaTwD">
              <property role="3oM_SC" value="la" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0r5" role="1PaTwD">
              <property role="3oM_SC" value="sesión" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0r6" role="1PaTwD">
              <property role="3oM_SC" value="vacía" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0r7" role="1PaTwD">
              <property role="3oM_SC" value="ya" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0r8" role="1PaTwD">
              <property role="3oM_SC" value="viola" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0r9" role="1PaTwD">
              <property role="3oM_SC" value="la" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0ra" role="1PaTwD">
              <property role="3oM_SC" value="política." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0af" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0ae" role="3cpWs9">
            <property role="TrG5h" value="vacio" />
            <node concept="3uibUv" id="2y5ZLyvO0ag" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO0Pp" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
              <ref role="37wK5l" to="op1a:2y5ZLyvK4Cz" resolve="checkRequired" />
              <node concept="37vLTw" id="2y5ZLyvO0Pq" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO08r" resolve="isla" />
              </node>
              <node concept="2YIFZM" id="2y5ZLyvO2ZT" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvIuMQ" resolve="Thompson" />
                <ref role="37wK5l" to="op1a:2y5ZLyvIuNF" resolve="symbol" />
                <node concept="3cmrfG" id="2y5ZLyvO2ZU" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="2y5ZLyvO2ZV" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0Pu" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO07t" resolve="ab" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0an" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0ao" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="1Wc70l" id="2y5ZLyvO0ap" role="37wK5m">
              <node concept="3fqX7Q" id="2y5ZLyvO0aq" role="3uHU7B">
                <node concept="2OqwBi" id="2y5ZLyvO0Py" role="3fr31v">
                  <node concept="37vLTw" id="2y5ZLyvO0Px" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0ae" resolve="vacio" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO0Pz" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2y5ZLyvO32t" role="3uHU7w">
                <node concept="2OqwBi" id="2y5ZLyvO0PB" role="2Oq$k0">
                  <node concept="37vLTw" id="2y5ZLyvO0PA" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0ae" resolve="vacio" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO0PC" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
                  </node>
                </node>
                <node concept="liA8E" id="2y5ZLyvO32u" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO0at" role="37wK5m">
              <property role="Xl_RC" value="REQUIRED 'a' sobre un dispositivo que acepta ε: se viola con contraejemplo []" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO0au" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvO0av" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO0aw" role="jymVt">
      <property role="TrG5h" value="randomNfa" />
      <node concept="37vLTG" id="2y5ZLyvO0ax" role="3clF46">
        <property role="TrG5h" value="random" />
        <node concept="3uibUv" id="2y5ZLyvO0ay" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Random" resolve="Random" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0az" role="3clF46">
        <property role="TrG5h" value="symbols" />
        <node concept="10Oyi0" id="2y5ZLyvO0a$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2y5ZLyvO0a_" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvO0aB" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0aA" role="3cpWs9">
            <property role="TrG5h" value="states" />
            <node concept="10Oyi0" id="2y5ZLyvO0aC" role="1tU5fm" />
            <node concept="3cpWs3" id="2y5ZLyvO0aD" role="33vP2m">
              <node concept="3cmrfG" id="2y5ZLyvO0aE" role="3uHU7B">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="2y5ZLyvO32C" role="3uHU7w">
                <node concept="37vLTw" id="2y5ZLyvO0PG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvO0ax" resolve="random" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO32D" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                  <node concept="3cmrfG" id="2y5ZLyvO32E" role="37wK5m">
                    <property role="3cmrfH" value="5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0aI" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0aH" role="3cpWs9">
            <property role="TrG5h" value="nfa" />
            <node concept="3uibUv" id="2y5ZLyvO0aJ" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0PJ" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0PU" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHYk$" resolve="Nfa" />
                <node concept="37vLTw" id="2y5ZLyvO0PV" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO0az" resolve="symbols" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyvO0aM" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0aN" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyvO0aP" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0aQ" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyvO0aR" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvO0aS" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvO0aN" resolve="i" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvO0aT" role="3uHU7w">
              <ref role="3cqZAo" node="2y5ZLyvO0aA" resolve="states" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvO0aV" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvO0aW" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvO0aN" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvO0aY" role="2LFqv$">
            <node concept="3clFbF" id="2y5ZLyvO0aZ" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyvO32P" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0PY" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvO0aH" resolve="nfa" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO32Q" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvHYld" resolve="addState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyvO0b1" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0b2" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyvO0b4" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0b5" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyvO0b6" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvO0b7" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvO0b2" resolve="i" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvO0b8" role="3uHU7w">
              <ref role="3cqZAo" node="2y5ZLyvO0aA" resolve="states" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvO0ba" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvO0bb" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvO0b2" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvO0bd" role="2LFqv$">
            <node concept="3clFbJ" id="2y5ZLyvO0be" role="3cqZAp">
              <node concept="3clFbC" id="2y5ZLyvO0bf" role="3clFbw">
                <node concept="2OqwBi" id="2y5ZLyvO330" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLyvO0Q2" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0ax" resolve="random" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO331" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                    <node concept="3cmrfG" id="2y5ZLyvO332" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="2y5ZLyvO0bi" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyvO0bk" role="3clFbx">
                <node concept="3clFbF" id="2y5ZLyvO0bl" role="3cqZAp">
                  <node concept="2OqwBi" id="2y5ZLyvO35n" role="3clFbG">
                    <node concept="2OqwBi" id="2y5ZLyvO0Q8" role="2Oq$k0">
                      <node concept="37vLTw" id="2y5ZLyvO0Q7" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0aH" resolve="nfa" />
                      </node>
                      <node concept="2OwXpG" id="2y5ZLyvO0Q9" role="2OqNvi">
                        <ref role="2Oxat5" to="op1a:2y5ZLyvHYkk" resolve="accepting" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO35o" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="2y5ZLyvO35p" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0b2" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0bp" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0bo" role="3cpWs9">
            <property role="TrG5h" value="transitions" />
            <node concept="10Oyi0" id="2y5ZLyvO0bq" role="1tU5fm" />
            <node concept="2OqwBi" id="2y5ZLyvO35z" role="33vP2m">
              <node concept="37vLTw" id="2y5ZLyvO0Qe" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO0ax" resolve="random" />
              </node>
              <node concept="liA8E" id="2y5ZLyvO35$" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                <node concept="3cpWs3" id="2y5ZLyvO35_" role="37wK5m">
                  <node concept="17qRlL" id="2y5ZLyvO35A" role="3uHU7B">
                    <node concept="3cmrfG" id="2y5ZLyvO35B" role="3uHU7B">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO35C" role="3uHU7w">
                      <ref role="3cqZAo" node="2y5ZLyvO0aA" resolve="states" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="2y5ZLyvO35D" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyvO0bx" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0by" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyvO0b$" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0b_" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyvO0bA" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvO0bB" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvO0by" resolve="i" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvO0bC" role="3uHU7w">
              <ref role="3cqZAo" node="2y5ZLyvO0bo" resolve="transitions" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvO0bE" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvO0bF" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvO0by" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvO0bH" role="2LFqv$">
            <node concept="3cpWs8" id="2y5ZLyvO0bJ" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0bI" role="3cpWs9">
                <property role="TrG5h" value="symbol" />
                <node concept="10Oyi0" id="2y5ZLyvO0bK" role="1tU5fm" />
                <node concept="2OqwBi" id="2y5ZLyvO35N" role="33vP2m">
                  <node concept="37vLTw" id="2y5ZLyvO0Qn" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0ax" resolve="random" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO35O" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                    <node concept="37vLTw" id="2y5ZLyvO35P" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0az" resolve="symbols" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2y5ZLyvO0bN" role="3cqZAp">
              <node concept="3clFbC" id="2y5ZLyvO0bO" role="3clFbw">
                <node concept="2OqwBi" id="2y5ZLyvO35Z" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLyvO0Qs" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0ax" resolve="random" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO360" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                    <node concept="3cmrfG" id="2y5ZLyvO361" role="37wK5m">
                      <property role="3cmrfH" value="6" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="2y5ZLyvO0bR" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyvO0bT" role="3clFbx">
                <node concept="3clFbF" id="2y5ZLyvO0bU" role="3cqZAp">
                  <node concept="37vLTI" id="2y5ZLyvO0bV" role="3clFbG">
                    <node concept="37vLTw" id="2y5ZLyvO0bW" role="37vLTJ">
                      <ref role="3cqZAo" node="2y5ZLyvO0bI" resolve="symbol" />
                    </node>
                    <node concept="10M0yZ" id="2y5ZLyvO0Qx" role="37vLTx">
                      <ref role="1PxDUh" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
                      <ref role="3cqZAo" to="op1a:2y5ZLyvHYk3" resolve="EPSILON" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0bY" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyvO36c" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0Q$" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvO0aH" resolve="nfa" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO36d" role="2OqNvi">
                  <ref role="37wK5l" to="op1a:2y5ZLyvHYlH" resolve="addTransition" />
                  <node concept="2OqwBi" id="2y5ZLyvO4fU" role="37wK5m">
                    <node concept="37vLTw" id="2y5ZLyvO46t" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvO0ax" resolve="random" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO4fV" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                      <node concept="37vLTw" id="2y5ZLyvO4fW" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0aA" resolve="states" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO36g" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0bI" resolve="symbol" />
                  </node>
                  <node concept="2OqwBi" id="2y5ZLyvO4g6" role="37wK5m">
                    <node concept="37vLTw" id="2y5ZLyvO46y" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvO0ax" resolve="random" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO4g7" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
                      <node concept="37vLTw" id="2y5ZLyvO4g8" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0aA" resolve="states" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvO0c5" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyvO0c6" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLyvO0aH" resolve="nfa" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO0c7" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvO0c8" role="3clF45">
        <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO0c9" role="jymVt">
      <property role="TrG5h" value="wordsUpTo" />
      <node concept="37vLTG" id="2y5ZLyvO0ca" role="3clF46">
        <property role="TrG5h" value="symbols" />
        <node concept="10Oyi0" id="2y5ZLyvO0cb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0cc" role="3clF46">
        <property role="TrG5h" value="maxLength" />
        <node concept="10Oyi0" id="2y5ZLyvO0cd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2y5ZLyvO0ce" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvO0cg" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0cf" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2y5ZLyvO0ch" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyvO0ci" role="11_B2D">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2y5ZLyvO0cj" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0QF" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0QK" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyvO0QL" role="1pMfVU">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0QM" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0co" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0cn" role="3cpWs9">
            <property role="TrG5h" value="level" />
            <node concept="3uibUv" id="2y5ZLyvO0cp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyvO0cq" role="11_B2D">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2y5ZLyvO0cr" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO0QN" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO0QS" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyvO0QT" role="1pMfVU">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0QU" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0cv" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO39a" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO0QX" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO0cn" resolve="level" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO39b" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2ShNRf" id="2y5ZLyvO46_" role="37wK5m">
                <node concept="1pGfFk" id="2y5ZLyvO46E" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="2y5ZLyvO46F" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyvO0cz" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0c$" role="1Duv9x">
            <property role="TrG5h" value="length" />
            <node concept="10Oyi0" id="2y5ZLyvO0cA" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0cB" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="2dkUwp" id="2y5ZLyvO0cC" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvO0cD" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvO0c$" resolve="length" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvO0cE" role="3uHU7w">
              <ref role="3cqZAo" node="2y5ZLyvO0cc" resolve="maxLength" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvO0cG" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvO0cH" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvO0c$" resolve="length" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvO0cJ" role="2LFqv$">
            <node concept="3clFbF" id="2y5ZLyvO0cK" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyvO3c5" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0R3" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvO0cf" resolve="result" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO3c6" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                  <node concept="37vLTw" id="2y5ZLyvO3c7" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0cn" resolve="level" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0cO" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0cN" role="3cpWs9">
                <property role="TrG5h" value="next" />
                <node concept="3uibUv" id="2y5ZLyvO0cP" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0cQ" role="11_B2D">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="2y5ZLyvO0cR" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="2y5ZLyvO0R6" role="33vP2m">
                  <node concept="1pGfFk" id="2y5ZLyvO0Rb" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="2y5ZLyvO0Rc" role="1pMfVU">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="2y5ZLyvO0Rd" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="2y5ZLyvO0cV" role="3cqZAp">
              <node concept="37vLTw" id="2y5ZLyvO0ds" role="1DdaDG">
                <ref role="3cqZAo" node="2y5ZLyvO0cn" resolve="level" />
              </node>
              <node concept="3cpWsn" id="2y5ZLyvO0do" role="1Duv9x">
                <property role="TrG5h" value="prefix" />
                <node concept="3uibUv" id="2y5ZLyvO0dq" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0dr" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyvO0cX" role="2LFqv$">
                <node concept="1Dw8fO" id="2y5ZLyvO0cY" role="3cqZAp">
                  <node concept="3cpWsn" id="2y5ZLyvO0cZ" role="1Duv9x">
                    <property role="TrG5h" value="symbol" />
                    <node concept="10Oyi0" id="2y5ZLyvO0d1" role="1tU5fm" />
                    <node concept="3cmrfG" id="2y5ZLyvO0d2" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="2y5ZLyvO0d3" role="1Dwp0S">
                    <node concept="37vLTw" id="2y5ZLyvO0d4" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyvO0cZ" resolve="symbol" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0d5" role="3uHU7w">
                      <ref role="3cqZAo" node="2y5ZLyvO0ca" resolve="symbols" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="2y5ZLyvO0d7" role="1Dwrff">
                    <node concept="37vLTw" id="2y5ZLyvO0d8" role="2$L3a6">
                      <ref role="3cqZAo" node="2y5ZLyvO0cZ" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="2y5ZLyvO0da" role="2LFqv$">
                    <node concept="3cpWs8" id="2y5ZLyvO0dc" role="3cqZAp">
                      <node concept="3cpWsn" id="2y5ZLyvO0db" role="3cpWs9">
                        <property role="TrG5h" value="longer" />
                        <node concept="3uibUv" id="2y5ZLyvO0dd" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~List" resolve="List" />
                          <node concept="3uibUv" id="2y5ZLyvO0de" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="2y5ZLyvO0Re" role="33vP2m">
                          <node concept="1pGfFk" id="2y5ZLyvO1mq" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                            <node concept="37vLTw" id="2y5ZLyvO1mr" role="37wK5m">
                              <ref role="3cqZAo" node="2y5ZLyvO0do" resolve="prefix" />
                            </node>
                            <node concept="3uibUv" id="2y5ZLyvO1ms" role="1pMfVU">
                              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2y5ZLyvO0di" role="3cqZAp">
                      <node concept="2OqwBi" id="2y5ZLyvO3eq" role="3clFbG">
                        <node concept="37vLTw" id="2y5ZLyvO1mv" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyvO0db" resolve="longer" />
                        </node>
                        <node concept="liA8E" id="2y5ZLyvO3er" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="2y5ZLyvO3es" role="37wK5m">
                            <ref role="3cqZAo" node="2y5ZLyvO0cZ" resolve="symbol" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2y5ZLyvO0dl" role="3cqZAp">
                      <node concept="2OqwBi" id="2y5ZLyvO3hk" role="3clFbG">
                        <node concept="37vLTw" id="2y5ZLyvO1m$" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyvO0cN" resolve="next" />
                        </node>
                        <node concept="liA8E" id="2y5ZLyvO3hl" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="2y5ZLyvO3hm" role="37wK5m">
                            <ref role="3cqZAo" node="2y5ZLyvO0db" resolve="longer" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0dt" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvO0du" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0dv" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvO0cn" resolve="level" />
                </node>
                <node concept="37vLTw" id="2y5ZLyvO0dw" role="37vLTx">
                  <ref role="3cqZAo" node="2y5ZLyvO0cN" resolve="next" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvO0dx" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyvO0dy" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLyvO0cf" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO0dz" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyvO0d$" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2y5ZLyvO0d_" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2y5ZLyvO0dA" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="2y5ZLyvO0dB" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvO0dC" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0dD" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0rb" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0rc" role="1PaTwD">
            <property role="3oM_SC" value="Todas" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rd" role="1PaTwD">
            <property role="3oM_SC" value="las" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0re" role="1PaTwD">
            <property role="3oM_SC" value="palabras" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rf" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rg" role="1PaTwD">
            <property role="3oM_SC" value="longitud" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rh" role="1PaTwD">
            <property role="3oM_SC" value="&lt;=" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0ri" role="1PaTwD">
            <property role="3oM_SC" value="maxLength," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rj" role="1PaTwD">
            <property role="3oM_SC" value="en" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rk" role="1PaTwD">
            <property role="3oM_SC" value="orden" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rl" role="1PaTwD">
            <property role="3oM_SC" value="shortlex." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO0dE" role="jymVt">
      <property role="TrG5h" value="containsFactor" />
      <node concept="37vLTG" id="2y5ZLyvO0dF" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="3uibUv" id="2y5ZLyvO0dG" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0dH" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="3uibUv" id="2y5ZLyvO0dI" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2y5ZLyvO0dJ" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvO0dK" role="3clF47">
        <node concept="1Dw8fO" id="2y5ZLyvO0dL" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0dM" role="1Duv9x">
            <property role="TrG5h" value="from" />
            <node concept="10Oyi0" id="2y5ZLyvO0dO" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0dP" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="2dkUwp" id="2y5ZLyvO0dQ" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvO0dR" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvO0dM" resolve="from" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyvO3jC" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLyvO1mD" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyvO0dH" resolve="w" />
              </node>
              <node concept="liA8E" id="2y5ZLyvO3jD" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvO0dU" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvO0dV" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvO0dM" resolve="from" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvO0dX" role="2LFqv$">
            <node concept="1Dw8fO" id="2y5ZLyvO0dY" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0dZ" role="1Duv9x">
                <property role="TrG5h" value="to" />
                <node concept="10Oyi0" id="2y5ZLyvO0e1" role="1tU5fm" />
                <node concept="37vLTw" id="2y5ZLyvO0e2" role="33vP2m">
                  <ref role="3cqZAo" node="2y5ZLyvO0dM" resolve="from" />
                </node>
              </node>
              <node concept="2dkUwp" id="2y5ZLyvO0e3" role="1Dwp0S">
                <node concept="37vLTw" id="2y5ZLyvO0e4" role="3uHU7B">
                  <ref role="3cqZAo" node="2y5ZLyvO0dZ" resolve="to" />
                </node>
                <node concept="2OqwBi" id="2y5ZLyvO3lV" role="3uHU7w">
                  <node concept="37vLTw" id="2y5ZLyvO1mH" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0dH" resolve="w" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO3lW" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
              <node concept="3uNrnE" id="2y5ZLyvO0e7" role="1Dwrff">
                <node concept="37vLTw" id="2y5ZLyvO0e8" role="2$L3a6">
                  <ref role="3cqZAo" node="2y5ZLyvO0dZ" resolve="to" />
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyvO0ea" role="2LFqv$">
                <node concept="3clFbJ" id="2y5ZLyvO0eb" role="3cqZAp">
                  <node concept="2OqwBi" id="2y5ZLyvO0ec" role="3clFbw">
                    <node concept="2YIFZM" id="2y5ZLyvO1mL" role="2Oq$k0">
                      <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                      <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
                      <node concept="37vLTw" id="2y5ZLyvO1mM" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0dF" resolve="pattern" />
                      </node>
                      <node concept="2OqwBi" id="2y5ZLyvO48X" role="37wK5m">
                        <node concept="37vLTw" id="2y5ZLyvO3lZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyvO0dH" resolve="w" />
                        </node>
                        <node concept="liA8E" id="2y5ZLyvO48Y" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.subList(int,int)" resolve="subList" />
                          <node concept="37vLTw" id="2y5ZLyvO48Z" role="37wK5m">
                            <ref role="3cqZAo" node="2y5ZLyvO0dM" resolve="from" />
                          </node>
                          <node concept="37vLTw" id="2y5ZLyvO490" role="37wK5m">
                            <ref role="3cqZAo" node="2y5ZLyvO0dZ" resolve="to" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OwXpG" id="2y5ZLyvO0ei" role="2OqNvi">
                      <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="2y5ZLyvO0ek" role="3clFbx">
                    <node concept="3cpWs6" id="2y5ZLyvO0el" role="3cqZAp">
                      <node concept="3clFbT" id="2y5ZLyvO0em" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvO0en" role="3cqZAp">
          <node concept="3clFbT" id="2y5ZLyvO0eo" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO0ep" role="1B3o_S" />
      <node concept="10P_77" id="2y5ZLyvO0eq" role="3clF45" />
      <node concept="P$JXv" id="2y5ZLyvO0er" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvO0es" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0et" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0rm" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0rn" role="1PaTwD">
            <property role="3oM_SC" value="Fuerza" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0ro" role="1PaTwD">
            <property role="3oM_SC" value="bruta:" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rp" role="1PaTwD">
            <property role="3oM_SC" value="¿algún" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rq" role="1PaTwD">
            <property role="3oM_SC" value="fragmento" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rr" role="1PaTwD">
            <property role="3oM_SC" value="contiguo" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rs" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rt" role="1PaTwD">
            <property role="3oM_SC" value="w" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0ru" role="1PaTwD">
            <property role="3oM_SC" value="pertenece" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rv" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rw" role="1PaTwD">
            <property role="3oM_SC" value="L(pattern)?" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO0eu" role="jymVt">
      <property role="TrG5h" value="violatesRequired" />
      <node concept="37vLTG" id="2y5ZLyvO0ev" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3uibUv" id="2y5ZLyvO0ew" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0ex" role="3clF46">
        <property role="TrG5h" value="policy" />
        <node concept="3uibUv" id="2y5ZLyvO0ey" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0ez" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="3uibUv" id="2y5ZLyvO0e$" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2y5ZLyvO0e_" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvO0eA" role="3clF47">
        <node concept="3cpWs6" id="2y5ZLyvO0eB" role="3cqZAp">
          <node concept="1Wc70l" id="2y5ZLyvO0eC" role="3cqZAk">
            <node concept="2OqwBi" id="2y5ZLyvO0eD" role="3uHU7B">
              <node concept="2YIFZM" id="2y5ZLyvO1mS" role="2Oq$k0">
                <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
                <node concept="37vLTw" id="2y5ZLyvO1mT" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO0ev" resolve="device" />
                </node>
                <node concept="37vLTw" id="2y5ZLyvO1mU" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyvO0ez" resolve="w" />
                </node>
              </node>
              <node concept="2OwXpG" id="2y5ZLyvO0eH" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
              </node>
            </node>
            <node concept="3fqX7Q" id="2y5ZLyvO0eI" role="3uHU7w">
              <node concept="2OqwBi" id="2y5ZLyvO0eJ" role="3fr31v">
                <node concept="2YIFZM" id="2y5ZLyvO1mX" role="2Oq$k0">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
                  <node concept="37vLTw" id="2y5ZLyvO1mY" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0ex" resolve="policy" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO1mZ" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0ez" resolve="w" />
                  </node>
                </node>
                <node concept="2OwXpG" id="2y5ZLyvO0eN" role="2OqNvi">
                  <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO0eO" role="1B3o_S" />
      <node concept="10P_77" id="2y5ZLyvO0eP" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO0eQ" role="jymVt">
      <property role="TrG5h" value="violatesForbidden" />
      <node concept="37vLTG" id="2y5ZLyvO0eR" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3uibUv" id="2y5ZLyvO0eS" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0eT" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="3uibUv" id="2y5ZLyvO0eU" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0eV" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="3uibUv" id="2y5ZLyvO0eW" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2y5ZLyvO0eX" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvO0eY" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyvO0f0" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0eZ" role="3cpWs9">
            <property role="TrG5h" value="run" />
            <node concept="3uibUv" id="2y5ZLyvO0f1" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHQQN" resolve="SimulationResult" />
            </node>
            <node concept="2YIFZM" id="2y5ZLyvO1n2" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
              <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
              <node concept="37vLTw" id="2y5ZLyvO1n3" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO0eR" resolve="device" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO1n4" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO0eV" resolve="w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvO0f5" role="3cqZAp">
          <node concept="1Wc70l" id="2y5ZLyvO0f6" role="3cqZAk">
            <node concept="3clFbC" id="2y5ZLyvO0f7" role="3uHU7B">
              <node concept="2OqwBi" id="2y5ZLyvO3p9" role="3uHU7B">
                <node concept="2OqwBi" id="2y5ZLyvO1n8" role="2Oq$k0">
                  <node concept="37vLTw" id="2y5ZLyvO1n7" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0eZ" resolve="run" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO1n9" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQQP" resolve="steps" />
                  </node>
                </node>
                <node concept="liA8E" id="2y5ZLyvO3pa" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
              <node concept="3cpWs3" id="2y5ZLyvO0f9" role="3uHU7w">
                <node concept="2OqwBi" id="2y5ZLyvO3rs" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLyvO1nd" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0eV" resolve="w" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO3rt" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
                <node concept="3cmrfG" id="2y5ZLyvO0fb" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="2y5ZLyvO0fc" role="3uHU7w">
              <ref role="37wK5l" node="2y5ZLyvO0dE" resolve="containsFactor" />
              <node concept="37vLTw" id="2y5ZLyvO0fd" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO0eT" resolve="pattern" />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0fe" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyvO0eV" resolve="w" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO0ff" role="1B3o_S" />
      <node concept="10P_77" id="2y5ZLyvO0fg" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO0fh" role="jymVt">
      <property role="TrG5h" value="agrees" />
      <node concept="37vLTG" id="2y5ZLyvO0fi" role="3clF46">
        <property role="TrG5h" value="verdict" />
        <node concept="3uibUv" id="2y5ZLyvO0fj" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0fk" role="3clF46">
        <property role="TrG5h" value="brute" />
        <node concept="3uibUv" id="2y5ZLyvO0fl" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2y5ZLyvO0fm" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0fn" role="3clF46">
        <property role="TrG5h" value="reallyViolates" />
        <node concept="10P_77" id="2y5ZLyvO0fo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0fp" role="3clF46">
        <property role="TrG5h" value="maxLength" />
        <node concept="10Oyi0" id="2y5ZLyvO0fq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2y5ZLyvO0fr" role="3clF46">
        <property role="TrG5h" value="alphabet" />
        <node concept="3uibUv" id="2y5ZLyvO0fs" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyvO0ft" role="3clF47">
        <node concept="3clFbJ" id="2y5ZLyvO0fu" role="3cqZAp">
          <node concept="3y3z36" id="2y5ZLyvO0fv" role="3clFbw">
            <node concept="37vLTw" id="2y5ZLyvO0fw" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvO0fk" resolve="brute" />
            </node>
            <node concept="10Nm6u" id="2y5ZLyvO0fx" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2y5ZLyvO0fz" role="3clFbx">
            <node concept="3cpWs6" id="2y5ZLyvO0f$" role="3cqZAp">
              <node concept="1Wc70l" id="2y5ZLyvO0f_" role="3cqZAk">
                <node concept="3fqX7Q" id="2y5ZLyvO0fA" role="3uHU7B">
                  <node concept="2OqwBi" id="2y5ZLyvO1ni" role="3fr31v">
                    <node concept="37vLTw" id="2y5ZLyvO1nh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvO0fi" resolve="verdict" />
                    </node>
                    <node concept="2OwXpG" id="2y5ZLyvO1nj" role="2OqNvi">
                      <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2y5ZLyvO3tX" role="3uHU7w">
                  <node concept="2OqwBi" id="2y5ZLyvO1nn" role="2Oq$k0">
                    <node concept="37vLTw" id="2y5ZLyvO1nm" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvO0fi" resolve="verdict" />
                    </node>
                    <node concept="2OwXpG" id="2y5ZLyvO1no" role="2OqNvi">
                      <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO3tY" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2y5ZLyvO4gi" role="37wK5m">
                      <node concept="37vLTw" id="2y5ZLyvO493" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0fr" resolve="alphabet" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyvO4gj" role="2OqNvi">
                        <ref role="37wK5l" to="op1a:2y5ZLyvHE7d" resolve="namesOf" />
                        <node concept="37vLTw" id="2y5ZLyvO4gk" role="37wK5m">
                          <ref role="3cqZAo" node="2y5ZLyvO0fk" resolve="brute" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2y5ZLyvO0fF" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO1nv" role="3clFbw">
            <node concept="37vLTw" id="2y5ZLyvO1nu" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO0fi" resolve="verdict" />
            </node>
            <node concept="2OwXpG" id="2y5ZLyvO1nw" role="2OqNvi">
              <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvO0fI" role="3clFbx">
            <node concept="3cpWs6" id="2y5ZLyvO0fJ" role="3cqZAp">
              <node concept="3clFbT" id="2y5ZLyvO0fK" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2y5ZLyvO0rZ" role="3cqZAp">
          <node concept="1PaTwC" id="2y5ZLyvO0s0" role="1aUNEU">
            <node concept="3oM_SD" id="2y5ZLyvO0s2" role="1PaTwD">
              <property role="3oM_SC" value="La" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0s3" role="1PaTwD">
              <property role="3oM_SC" value="fuerza" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0s4" role="1PaTwD">
              <property role="3oM_SC" value="bruta" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0s5" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0s6" role="1PaTwD">
              <property role="3oM_SC" value="encontró" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0s7" role="1PaTwD">
              <property role="3oM_SC" value="nada" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0s8" role="1PaTwD">
              <property role="3oM_SC" value="corto:" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0s9" role="1PaTwD">
              <property role="3oM_SC" value="el" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0sa" role="1PaTwD">
              <property role="3oM_SC" value="contraejemplo" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0sb" role="1PaTwD">
              <property role="3oM_SC" value="debe" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0sc" role="1PaTwD">
              <property role="3oM_SC" value="ser" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0sd" role="1PaTwD">
              <property role="3oM_SC" value="largo" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0se" role="1PaTwD">
              <property role="3oM_SC" value="y" />
            </node>
            <node concept="3oM_SD" id="2y5ZLyvO0sf" role="1PaTwD">
              <property role="3oM_SC" value="genuino." />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyvO0fL" role="3cqZAp">
          <node concept="1Wc70l" id="2y5ZLyvO0fM" role="3cqZAk">
            <node concept="3eOSWO" id="2y5ZLyvO0fN" role="3uHU7B">
              <node concept="2OqwBi" id="2y5ZLyvO3ww" role="3uHU7B">
                <node concept="2OqwBi" id="2y5ZLyvO1n$" role="2Oq$k0">
                  <node concept="37vLTw" id="2y5ZLyvO1nz" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0fi" resolve="verdict" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO1n_" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
                  </node>
                </node>
                <node concept="liA8E" id="2y5ZLyvO3wx" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0fP" role="3uHU7w">
                <ref role="3cqZAo" node="2y5ZLyvO0fp" resolve="maxLength" />
              </node>
            </node>
            <node concept="37vLTw" id="2y5ZLyvO0fQ" role="3uHU7w">
              <ref role="3cqZAo" node="2y5ZLyvO0fn" resolve="reallyViolates" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO0fR" role="1B3o_S" />
      <node concept="10P_77" id="2y5ZLyvO0fS" role="3clF45" />
      <node concept="P$JXv" id="2y5ZLyvO0fT" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyvO0fU" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0fV" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0rx" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0ry" role="1PaTwD">
            <property role="3oM_SC" value="Compara" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rz" role="1PaTwD">
            <property role="3oM_SC" value="el" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0r$" role="1PaTwD">
            <property role="3oM_SC" value="veredicto" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0r_" role="1PaTwD">
            <property role="3oM_SC" value="del" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rA" role="1PaTwD">
            <property role="3oM_SC" value="razonador" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rB" role="1PaTwD">
            <property role="3oM_SC" value="con" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rC" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rD" role="1PaTwD">
            <property role="3oM_SC" value="fuerza" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rE" role="1PaTwD">
            <property role="3oM_SC" value="bruta:" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rF" role="1PaTwD">
            <property role="3oM_SC" value="'brute'" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rG" role="1PaTwD">
            <property role="3oM_SC" value="es" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rH" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rI" role="1PaTwD">
            <property role="3oM_SC" value="primera" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rJ" role="1PaTwD">
            <property role="3oM_SC" value="palabra" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyvO0rK" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyvO0rL" role="1PaTwD">
            <property role="3oM_SC" value="(shortlex," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rM" role="1PaTwD">
            <property role="3oM_SC" value="hasta" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rN" role="1PaTwD">
            <property role="3oM_SC" value="longitud" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rO" role="1PaTwD">
            <property role="3oM_SC" value="maxLength)" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rP" role="1PaTwD">
            <property role="3oM_SC" value="que" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rQ" role="1PaTwD">
            <property role="3oM_SC" value="viola" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rR" role="1PaTwD">
            <property role="3oM_SC" value="la" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rS" role="1PaTwD">
            <property role="3oM_SC" value="política," />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rT" role="1PaTwD">
            <property role="3oM_SC" value="o" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rU" role="1PaTwD">
            <property role="3oM_SC" value="null" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rV" role="1PaTwD">
            <property role="3oM_SC" value="si" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rW" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rX" role="1PaTwD">
            <property role="3oM_SC" value="hay" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyvO0rY" role="1PaTwD">
            <property role="3oM_SC" value="ninguna." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyvO0fW" role="jymVt">
      <property role="TrG5h" value="test15PropiedadesAleatorias" />
      <node concept="3clFbS" id="2y5ZLyvO0fX" role="3clF47">
        <node concept="3clFbF" id="2y5ZLyvO0fY" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0fZ" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZK2" resolve="section" />
            <node concept="Xl_RD" id="2y5ZLyvO0g0" role="37wK5m">
              <property role="Xl_RC" value="15. Propiedades sobre 400 autómatas aleatorios (semilla fija) contra fuerza bruta" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0g2" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0g1" role="3cpWs9">
            <property role="TrG5h" value="random" />
            <node concept="3uibUv" id="2y5ZLyvO0g3" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Random" resolve="Random" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO1nB" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO1wH" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~Random.&lt;init&gt;(long)" resolve="Random" />
                <node concept="1adDum" id="2y5ZLyvO1wI" role="37wK5m">
                  <property role="1adDun" value="20261119L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0g7" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0g6" role="3cpWs9">
            <property role="TrG5h" value="abc" />
            <node concept="3uibUv" id="2y5ZLyvO0g8" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
            </node>
            <node concept="2ShNRf" id="2y5ZLyvO1wJ" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyvO1wL" role="2ShVmc">
                <ref role="37wK5l" to="op1a:2y5ZLyvHE5q" resolve="Alphabet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0ga" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO3wG" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO1wO" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO0g6" resolve="abc" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO3wH" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO3wI" role="37wK5m">
                <property role="Xl_RC" value="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0gd" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO3wT" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO1wT" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO0g6" resolve="abc" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO3wU" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO3wV" role="37wK5m">
                <property role="Xl_RC" value="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0gg" role="3cqZAp">
          <node concept="2OqwBi" id="2y5ZLyvO3x6" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyvO1wY" role="2Oq$k0">
              <ref role="3cqZAo" node="2y5ZLyvO0g6" resolve="abc" />
            </node>
            <node concept="liA8E" id="2y5ZLyvO3x7" role="2OqNvi">
              <ref role="37wK5l" to="op1a:2y5ZLyvHE5H" resolve="add" />
              <node concept="Xl_RD" id="2y5ZLyvO3x8" role="37wK5m">
                <property role="Xl_RC" value="c" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0gk" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gj" role="3cpWs9">
            <property role="TrG5h" value="cases" />
            <node concept="10Oyi0" id="2y5ZLyvO0gl" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0gm" role="33vP2m">
              <property role="3cmrfH" value="400" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0go" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gn" role="3cpWs9">
            <property role="TrG5h" value="maxLength" />
            <node concept="10Oyi0" id="2y5ZLyvO0gp" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0gq" role="33vP2m">
              <property role="3cmrfH" value="5" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0gs" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gr" role="3cpWs9">
            <property role="TrG5h" value="wordsAgree" />
            <node concept="10P_77" id="2y5ZLyvO0gt" role="1tU5fm" />
            <node concept="3clFbT" id="2y5ZLyvO0gu" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0gw" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gv" role="3cpWs9">
            <property role="TrG5h" value="minimalEquivalent" />
            <node concept="10P_77" id="2y5ZLyvO0gx" role="1tU5fm" />
            <node concept="3clFbT" id="2y5ZLyvO0gy" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0g$" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gz" role="3cpWs9">
            <property role="TrG5h" value="minimalNotBigger" />
            <node concept="10P_77" id="2y5ZLyvO0g_" role="1tU5fm" />
            <node concept="3clFbT" id="2y5ZLyvO0gA" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0gC" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gB" role="3cpWs9">
            <property role="TrG5h" value="minimalCanonical" />
            <node concept="10P_77" id="2y5ZLyvO0gD" role="1tU5fm" />
            <node concept="3clFbT" id="2y5ZLyvO0gE" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0gG" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gF" role="3cpWs9">
            <property role="TrG5h" value="kleeneRoundTrip" />
            <node concept="10P_77" id="2y5ZLyvO0gH" role="1tU5fm" />
            <node concept="3clFbT" id="2y5ZLyvO0gI" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0gK" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gJ" role="3cpWs9">
            <property role="TrG5h" value="requiredAgrees" />
            <node concept="10P_77" id="2y5ZLyvO0gL" role="1tU5fm" />
            <node concept="3clFbT" id="2y5ZLyvO0gM" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0gO" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gN" role="3cpWs9">
            <property role="TrG5h" value="forbiddenAgrees" />
            <node concept="10P_77" id="2y5ZLyvO0gP" role="1tU5fm" />
            <node concept="3clFbT" id="2y5ZLyvO0gQ" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0gS" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gR" role="3cpWs9">
            <property role="TrG5h" value="traceAgrees" />
            <node concept="10P_77" id="2y5ZLyvO0gT" role="1tU5fm" />
            <node concept="3clFbT" id="2y5ZLyvO0gU" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0gW" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gV" role="3cpWs9">
            <property role="TrG5h" value="violatedRequired" />
            <node concept="10Oyi0" id="2y5ZLyvO0gX" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0gY" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyvO0h0" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0gZ" role="3cpWs9">
            <property role="TrG5h" value="violatedForbidden" />
            <node concept="10Oyi0" id="2y5ZLyvO0h1" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0h2" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyvO0h3" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyvO0h4" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyvO0h6" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyvO0h7" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyvO0h8" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyvO0h9" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyvO0h4" resolve="i" />
            </node>
            <node concept="37vLTw" id="2y5ZLyvO0ha" role="3uHU7w">
              <ref role="3cqZAo" node="2y5ZLyvO0gj" resolve="cases" />
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyvO0hc" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyvO0hd" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyvO0h4" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyvO0hf" role="2LFqv$">
            <node concept="3cpWs8" id="2y5ZLyvO0hh" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0hg" role="3cpWs9">
                <property role="TrG5h" value="symbols" />
                <node concept="10Oyi0" id="2y5ZLyvO0hi" role="1tU5fm" />
                <node concept="3cpWs3" id="2y5ZLyvO0hj" role="33vP2m">
                  <node concept="3cmrfG" id="2y5ZLyvO0hk" role="3uHU7B">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="1eOMI4" id="2y5ZLyvO0ho" role="3uHU7w">
                    <node concept="2dk9JS" id="2y5ZLyvO0hl" role="1eOMHV">
                      <node concept="37vLTw" id="2y5ZLyvO0hm" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLyvO0h4" resolve="i" />
                      </node>
                      <node concept="3cmrfG" id="2y5ZLyvO0hn" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0hq" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0hp" role="3cpWs9">
                <property role="TrG5h" value="device" />
                <node concept="3uibUv" id="2y5ZLyvO0hr" role="1tU5fm">
                  <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO0hs" role="33vP2m">
                  <ref role="37wK5l" node="2y5ZLyvO0aw" resolve="randomNfa" />
                  <node concept="37vLTw" id="2y5ZLyvO0ht" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0g1" resolve="random" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO0hu" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hg" resolve="symbols" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0hw" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0hv" role="3cpWs9">
                <property role="TrG5h" value="policy" />
                <node concept="3uibUv" id="2y5ZLyvO0hx" role="1tU5fm">
                  <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO0hy" role="33vP2m">
                  <ref role="37wK5l" node="2y5ZLyvO0aw" resolve="randomNfa" />
                  <node concept="37vLTw" id="2y5ZLyvO0hz" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0g1" resolve="random" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO0h$" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hg" resolve="symbols" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0hA" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0h_" role="3cpWs9">
                <property role="TrG5h" value="words" />
                <node concept="3uibUv" id="2y5ZLyvO0hB" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0hC" role="11_B2D">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="2y5ZLyvO0hD" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO0hE" role="33vP2m">
                  <ref role="37wK5l" node="2y5ZLyvO0c9" resolve="wordsUpTo" />
                  <node concept="37vLTw" id="2y5ZLyvO0hF" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hg" resolve="symbols" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO0hG" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0gn" resolve="maxLength" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0hI" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0hH" role="3cpWs9">
                <property role="TrG5h" value="det" />
                <node concept="3uibUv" id="2y5ZLyvO0hJ" role="1tU5fm">
                  <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
                </node>
                <node concept="2YIFZM" id="2y5ZLyvO1x3" role="33vP2m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvISWL" resolve="SubsetConstruction" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvISWN" resolve="determinize" />
                  <node concept="37vLTw" id="2y5ZLyvO1x4" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0hN" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0hM" role="3cpWs9">
                <property role="TrG5h" value="min" />
                <node concept="3uibUv" id="2y5ZLyvO0hO" role="1tU5fm">
                  <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
                </node>
                <node concept="2YIFZM" id="2y5ZLyvO1x7" role="33vP2m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvJ3yO" resolve="minimize" />
                  <node concept="37vLTw" id="2y5ZLyvO1x8" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hH" resolve="det" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0hS" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0hR" role="3cpWs9">
                <property role="TrG5h" value="back" />
                <node concept="3uibUv" id="2y5ZLyvO0hT" role="1tU5fm">
                  <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
                </node>
                <node concept="2OqwBi" id="2y5ZLyvO3M9" role="33vP2m">
                  <node concept="2YIFZM" id="2y5ZLyvO1xj" role="2Oq$k0">
                    <ref role="1Pybhc" to="op1a:2y5ZLyvKfuh" resolve="StateEliminator" />
                    <ref role="37wK5l" to="op1a:2y5ZLyvKfuz" resolve="toRegex" />
                    <node concept="37vLTw" id="2y5ZLyvO1xk" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO3Ma" role="2OqNvi">
                    <ref role="37wK5l" to="op1a:2y5ZLyvIN$x" resolve="toNfa" />
                    <node concept="37vLTw" id="2y5ZLyvO3Mb" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hg" resolve="symbols" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0hZ" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0hY" role="3cpWs9">
                <property role="TrG5h" value="minBack" />
                <node concept="3uibUv" id="2y5ZLyvO0i0" role="1tU5fm">
                  <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
                </node>
                <node concept="1rXfSq" id="2y5ZLyvO0i1" role="33vP2m">
                  <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
                  <node concept="37vLTw" id="2y5ZLyvO0i2" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hR" resolve="back" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0i3" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvO0i4" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0i5" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvO0gv" resolve="minimalEquivalent" />
                </node>
                <node concept="1Wc70l" id="2y5ZLyvO0i6" role="37vLTx">
                  <node concept="37vLTw" id="2y5ZLyvO0i7" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyvO0gv" resolve="minimalEquivalent" />
                  </node>
                  <node concept="2YIFZM" id="2y5ZLyvO1xn" role="3uHU7w">
                    <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                    <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
                    <node concept="37vLTw" id="2y5ZLyvO1xo" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hH" resolve="det" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO1xp" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hM" resolve="min" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0ib" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvO0ic" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0id" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvO0gz" resolve="minimalNotBigger" />
                </node>
                <node concept="1Wc70l" id="2y5ZLyvO0ie" role="37vLTx">
                  <node concept="37vLTw" id="2y5ZLyvO0if" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyvO0gz" resolve="minimalNotBigger" />
                  </node>
                  <node concept="2dkUwp" id="2y5ZLyvO0ig" role="3uHU7w">
                    <node concept="2OqwBi" id="2y5ZLyvO1xt" role="3uHU7B">
                      <node concept="37vLTw" id="2y5ZLyvO1xs" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0hM" resolve="min" />
                      </node>
                      <node concept="2OwXpG" id="2y5ZLyvO1xu" role="2OqNvi">
                        <ref role="2Oxat5" to="op1a:2y5ZLyvIoou" resolve="stateCount" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2y5ZLyvO1xy" role="3uHU7w">
                      <node concept="37vLTw" id="2y5ZLyvO1xx" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0hH" resolve="det" />
                      </node>
                      <node concept="2OwXpG" id="2y5ZLyvO1xz" role="2OqNvi">
                        <ref role="2Oxat5" to="op1a:2y5ZLyvIoou" resolve="stateCount" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0ij" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvO0ik" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0il" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvO0gB" resolve="minimalCanonical" />
                </node>
                <node concept="1Wc70l" id="2y5ZLyvO0im" role="37vLTx">
                  <node concept="1Wc70l" id="2y5ZLyvO0in" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLyvO0io" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyvO0gB" resolve="minimalCanonical" />
                    </node>
                    <node concept="2YIFZM" id="2y5ZLyvO1xA" role="3uHU7w">
                      <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                      <ref role="37wK5l" to="op1a:2y5ZLyvK_ge" resolve="isomorfos" />
                      <node concept="37vLTw" id="2y5ZLyvO1xB" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0hM" resolve="min" />
                      </node>
                      <node concept="2YIFZM" id="2y5ZLyvO3Me" role="37wK5m">
                        <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
                        <ref role="37wK5l" to="op1a:2y5ZLyvJ3yO" resolve="minimize" />
                        <node concept="37vLTw" id="2y5ZLyvO3Mf" role="37wK5m">
                          <ref role="3cqZAo" node="2y5ZLyvO0hM" resolve="min" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="2y5ZLyvO1xG" role="3uHU7w">
                    <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                    <ref role="37wK5l" to="op1a:2y5ZLyvK_ge" resolve="isomorfos" />
                    <node concept="37vLTw" id="2y5ZLyvO1xH" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hM" resolve="min" />
                    </node>
                    <node concept="1rXfSq" id="2y5ZLyvO1xI" role="37wK5m">
                      <ref role="37wK5l" node="2y5ZLyvNZMP" resolve="compile" />
                      <node concept="2OqwBi" id="2y5ZLyvO49g" role="37wK5m">
                        <node concept="37vLTw" id="2y5ZLyvO3Mi" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyvO0hM" resolve="min" />
                        </node>
                        <node concept="liA8E" id="2y5ZLyvO49h" role="2OqNvi">
                          <ref role="37wK5l" to="op1a:2y5ZLyvIosL" resolve="toNfa" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0ix" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvO0iy" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0iz" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvO0gF" resolve="kleeneRoundTrip" />
                </node>
                <node concept="1Wc70l" id="2y5ZLyvO0i$" role="37vLTx">
                  <node concept="1Wc70l" id="2y5ZLyvO0i_" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLyvO0iA" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyvO0gF" resolve="kleeneRoundTrip" />
                    </node>
                    <node concept="2YIFZM" id="2y5ZLyvO1xQ" role="3uHU7w">
                      <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                      <ref role="37wK5l" to="op1a:2y5ZLyvK_cN" resolve="equivalentes" />
                      <node concept="37vLTw" id="2y5ZLyvO1xR" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0hY" resolve="minBack" />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO1xS" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0hM" resolve="min" />
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="2y5ZLyvO1xV" role="3uHU7w">
                    <ref role="1Pybhc" to="op1a:2y5ZLyvK_cL" resolve="Equivalence" />
                    <ref role="37wK5l" to="op1a:2y5ZLyvK_ge" resolve="isomorfos" />
                    <node concept="37vLTw" id="2y5ZLyvO1xW" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hY" resolve="minBack" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO1xX" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hM" resolve="min" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0iI" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0iH" role="3cpWs9">
                <property role="TrG5h" value="bruteRequired" />
                <node concept="3uibUv" id="2y5ZLyvO0iJ" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0iK" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="10Nm6u" id="2y5ZLyvO0iL" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0iN" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0iM" role="3cpWs9">
                <property role="TrG5h" value="bruteForbidden" />
                <node concept="3uibUv" id="2y5ZLyvO0iO" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0iP" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="10Nm6u" id="2y5ZLyvO0iQ" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0iS" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0iR" role="3cpWs9">
                <property role="TrG5h" value="bruteTrace" />
                <node concept="3uibUv" id="2y5ZLyvO0iT" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0iU" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="10Nm6u" id="2y5ZLyvO0iV" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0iX" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0iW" role="3cpWs9">
                <property role="TrG5h" value="goal" />
                <node concept="3uibUv" id="2y5ZLyvO0iY" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                  <node concept="3uibUv" id="2y5ZLyvO0iZ" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2y5ZLyvO1xY" role="33vP2m">
                  <node concept="1pGfFk" id="2y5ZLyvO1y2" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~TreeSet.&lt;init&gt;()" resolve="TreeSet" />
                    <node concept="3uibUv" id="2y5ZLyvO1y3" role="1pMfVU">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0j2" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyvO3Op" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO1y6" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyvO0iW" resolve="goal" />
                </node>
                <node concept="liA8E" id="2y5ZLyvO3Oq" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="3cpWsd" id="2y5ZLyvO3Or" role="37wK5m">
                    <node concept="2OqwBi" id="2y5ZLyvO49l" role="3uHU7B">
                      <node concept="37vLTw" id="2y5ZLyvO49k" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                      </node>
                      <node concept="2OwXpG" id="2y5ZLyvO49m" role="2OqNvi">
                        <ref role="2Oxat5" to="op1a:2y5ZLyvHYkc" resolve="stateCount" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="2y5ZLyvO3Ot" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="2y5ZLyvO0j7" role="3cqZAp">
              <node concept="37vLTw" id="2y5ZLyvO0k_" role="1DdaDG">
                <ref role="3cqZAo" node="2y5ZLyvO0h_" resolve="words" />
              </node>
              <node concept="3cpWsn" id="2y5ZLyvO0kx" role="1Duv9x">
                <property role="TrG5h" value="w" />
                <node concept="3uibUv" id="2y5ZLyvO0kz" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0k$" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyvO0j9" role="2LFqv$">
                <node concept="3cpWs8" id="2y5ZLyvO0jb" role="3cqZAp">
                  <node concept="3cpWsn" id="2y5ZLyvO0ja" role="3cpWs9">
                    <property role="TrG5h" value="run" />
                    <node concept="3uibUv" id="2y5ZLyvO0jc" role="1tU5fm">
                      <ref role="3uigEE" to="op1a:2y5ZLyvHQQN" resolve="SimulationResult" />
                    </node>
                    <node concept="2YIFZM" id="2y5ZLyvO1yd" role="33vP2m">
                      <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                      <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
                      <node concept="37vLTw" id="2y5ZLyvO1ye" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO1yf" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2y5ZLyvO0jh" role="3cqZAp">
                  <node concept="3cpWsn" id="2y5ZLyvO0jg" role="3cpWs9">
                    <property role="TrG5h" value="expected" />
                    <node concept="10P_77" id="2y5ZLyvO0ji" role="1tU5fm" />
                    <node concept="2OqwBi" id="2y5ZLyvO1yj" role="33vP2m">
                      <node concept="37vLTw" id="2y5ZLyvO1yi" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0ja" resolve="run" />
                      </node>
                      <node concept="2OwXpG" id="2y5ZLyvO1yk" role="2OqNvi">
                        <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2y5ZLyvO0jk" role="3cqZAp">
                  <node concept="22lmx$" id="2y5ZLyvO0jl" role="3clFbw">
                    <node concept="22lmx$" id="2y5ZLyvO0jm" role="3uHU7B">
                      <node concept="3y3z36" id="2y5ZLyvO0jn" role="3uHU7B">
                        <node concept="2OqwBi" id="2y5ZLyvO3OC" role="3uHU7B">
                          <node concept="37vLTw" id="2y5ZLyvO1yn" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyvO0hH" resolve="det" />
                          </node>
                          <node concept="liA8E" id="2y5ZLyvO3OD" role="2OqNvi">
                            <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                            <node concept="37vLTw" id="2y5ZLyvO3OE" role="37wK5m">
                              <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2y5ZLyvO0jq" role="3uHU7w">
                          <ref role="3cqZAo" node="2y5ZLyvO0jg" resolve="expected" />
                        </node>
                      </node>
                      <node concept="3y3z36" id="2y5ZLyvO0jr" role="3uHU7w">
                        <node concept="2OqwBi" id="2y5ZLyvO3OP" role="3uHU7B">
                          <node concept="37vLTw" id="2y5ZLyvO1ys" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyvO0hM" resolve="min" />
                          </node>
                          <node concept="liA8E" id="2y5ZLyvO3OQ" role="2OqNvi">
                            <ref role="37wK5l" to="op1a:2y5ZLyvIoq7" resolve="accepts" />
                            <node concept="37vLTw" id="2y5ZLyvO3OR" role="37wK5m">
                              <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2y5ZLyvO0ju" role="3uHU7w">
                          <ref role="3cqZAo" node="2y5ZLyvO0jg" resolve="expected" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="2y5ZLyvO0jv" role="3uHU7w">
                      <node concept="2OqwBi" id="2y5ZLyvO0jw" role="3uHU7B">
                        <node concept="2YIFZM" id="2y5ZLyvO1yx" role="2Oq$k0">
                          <ref role="1Pybhc" to="op1a:2y5ZLyvKsrW" resolve="Simulator" />
                          <ref role="37wK5l" to="op1a:2y5ZLyvKss5" resolve="run" />
                          <node concept="37vLTw" id="2y5ZLyvO1yy" role="37wK5m">
                            <ref role="3cqZAo" node="2y5ZLyvO0hR" resolve="back" />
                          </node>
                          <node concept="37vLTw" id="2y5ZLyvO1yz" role="37wK5m">
                            <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="2y5ZLyvO0j$" role="2OqNvi">
                          <ref role="2Oxat5" to="op1a:2y5ZLyvHQQV" resolve="accepted" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO0j_" role="3uHU7w">
                        <ref role="3cqZAo" node="2y5ZLyvO0jg" resolve="expected" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2y5ZLyvO0jB" role="3clFbx">
                    <node concept="3clFbF" id="2y5ZLyvO0jC" role="3cqZAp">
                      <node concept="37vLTI" id="2y5ZLyvO0jD" role="3clFbG">
                        <node concept="37vLTw" id="2y5ZLyvO0jE" role="37vLTJ">
                          <ref role="3cqZAo" node="2y5ZLyvO0gr" resolve="wordsAgree" />
                        </node>
                        <node concept="3clFbT" id="2y5ZLyvO0jF" role="37vLTx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2y5ZLyvO0jG" role="3cqZAp">
                  <node concept="1Wc70l" id="2y5ZLyvO0jH" role="3clFbw">
                    <node concept="3clFbC" id="2y5ZLyvO0jI" role="3uHU7B">
                      <node concept="37vLTw" id="2y5ZLyvO0jJ" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLyvO0iH" resolve="bruteRequired" />
                      </node>
                      <node concept="10Nm6u" id="2y5ZLyvO0jK" role="3uHU7w" />
                    </node>
                    <node concept="1rXfSq" id="2y5ZLyvO0jL" role="3uHU7w">
                      <ref role="37wK5l" node="2y5ZLyvO0eu" resolve="violatesRequired" />
                      <node concept="37vLTw" id="2y5ZLyvO0jM" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO0jN" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0hv" resolve="policy" />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO0jO" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2y5ZLyvO0jQ" role="3clFbx">
                    <node concept="3clFbF" id="2y5ZLyvO0jR" role="3cqZAp">
                      <node concept="37vLTI" id="2y5ZLyvO0jS" role="3clFbG">
                        <node concept="37vLTw" id="2y5ZLyvO0jT" role="37vLTJ">
                          <ref role="3cqZAo" node="2y5ZLyvO0iH" resolve="bruteRequired" />
                        </node>
                        <node concept="37vLTw" id="2y5ZLyvO0jU" role="37vLTx">
                          <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2y5ZLyvO0jV" role="3cqZAp">
                  <node concept="1Wc70l" id="2y5ZLyvO0jW" role="3clFbw">
                    <node concept="3clFbC" id="2y5ZLyvO0jX" role="3uHU7B">
                      <node concept="37vLTw" id="2y5ZLyvO0jY" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLyvO0iM" resolve="bruteForbidden" />
                      </node>
                      <node concept="10Nm6u" id="2y5ZLyvO0jZ" role="3uHU7w" />
                    </node>
                    <node concept="1rXfSq" id="2y5ZLyvO0k0" role="3uHU7w">
                      <ref role="37wK5l" node="2y5ZLyvO0eQ" resolve="violatesForbidden" />
                      <node concept="37vLTw" id="2y5ZLyvO0k1" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO0k2" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0hv" resolve="policy" />
                      </node>
                      <node concept="37vLTw" id="2y5ZLyvO0k3" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2y5ZLyvO0k5" role="3clFbx">
                    <node concept="3clFbF" id="2y5ZLyvO0k6" role="3cqZAp">
                      <node concept="37vLTI" id="2y5ZLyvO0k7" role="3clFbG">
                        <node concept="37vLTw" id="2y5ZLyvO0k8" role="37vLTJ">
                          <ref role="3cqZAo" node="2y5ZLyvO0iM" resolve="bruteForbidden" />
                        </node>
                        <node concept="37vLTw" id="2y5ZLyvO0k9" role="37vLTx">
                          <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2y5ZLyvO0ka" role="3cqZAp">
                  <node concept="1Wc70l" id="2y5ZLyvO0kb" role="3clFbw">
                    <node concept="1Wc70l" id="2y5ZLyvO0kc" role="3uHU7B">
                      <node concept="3clFbC" id="2y5ZLyvO0kd" role="3uHU7B">
                        <node concept="37vLTw" id="2y5ZLyvO0ke" role="3uHU7B">
                          <ref role="3cqZAo" node="2y5ZLyvO0iR" resolve="bruteTrace" />
                        </node>
                        <node concept="10Nm6u" id="2y5ZLyvO0kf" role="3uHU7w" />
                      </node>
                      <node concept="3clFbC" id="2y5ZLyvO0kg" role="3uHU7w">
                        <node concept="2OqwBi" id="2y5ZLyvO3RY" role="3uHU7B">
                          <node concept="2OqwBi" id="2y5ZLyvO1yB" role="2Oq$k0">
                            <node concept="37vLTw" id="2y5ZLyvO1yA" role="2Oq$k0">
                              <ref role="3cqZAo" node="2y5ZLyvO0ja" resolve="run" />
                            </node>
                            <node concept="2OwXpG" id="2y5ZLyvO1yC" role="2OqNvi">
                              <ref role="2Oxat5" to="op1a:2y5ZLyvHQQP" resolve="steps" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2y5ZLyvO3RZ" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="2y5ZLyvO0ki" role="3uHU7w">
                          <node concept="2OqwBi" id="2y5ZLyvO3Uh" role="3uHU7B">
                            <node concept="37vLTw" id="2y5ZLyvO1yG" role="2Oq$k0">
                              <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                            </node>
                            <node concept="liA8E" id="2y5ZLyvO3Ui" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                            </node>
                          </node>
                          <node concept="3cmrfG" id="2y5ZLyvO0kk" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2y5ZLyvO4dM" role="3uHU7w">
                      <node concept="2OqwBi" id="2y5ZLyvO3Xx" role="2Oq$k0">
                        <node concept="2OqwBi" id="2y5ZLyvO1yT" role="2Oq$k0">
                          <node concept="37vLTw" id="2y5ZLyvO1yS" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyvO0ja" resolve="run" />
                          </node>
                          <node concept="2OwXpG" id="2y5ZLyvO1yU" role="2OqNvi">
                            <ref role="2Oxat5" to="op1a:2y5ZLyvHQQP" resolve="steps" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2y5ZLyvO3Xy" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="2OqwBi" id="2y5ZLyvO4iE" role="37wK5m">
                            <node concept="37vLTw" id="2y5ZLyvO4gn" role="2Oq$k0">
                              <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                            </node>
                            <node concept="liA8E" id="2y5ZLyvO4iF" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="2y5ZLyvO4dN" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                        <node concept="3cpWsd" id="2y5ZLyvO4dO" role="37wK5m">
                          <node concept="2OqwBi" id="2y5ZLyvO4dP" role="3uHU7B">
                            <node concept="37vLTw" id="2y5ZLyvO4dQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                            </node>
                            <node concept="2OwXpG" id="2y5ZLyvO4dR" role="2OqNvi">
                              <ref role="2Oxat5" to="op1a:2y5ZLyvHYkc" resolve="stateCount" />
                            </node>
                          </node>
                          <node concept="3cmrfG" id="2y5ZLyvO4dS" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2y5ZLyvO0ks" role="3clFbx">
                    <node concept="3clFbF" id="2y5ZLyvO0kt" role="3cqZAp">
                      <node concept="37vLTI" id="2y5ZLyvO0ku" role="3clFbG">
                        <node concept="37vLTw" id="2y5ZLyvO0kv" role="37vLTJ">
                          <ref role="3cqZAo" node="2y5ZLyvO0iR" resolve="bruteTrace" />
                        </node>
                        <node concept="37vLTw" id="2y5ZLyvO0kw" role="37vLTx">
                          <ref role="3cqZAo" node="2y5ZLyvO0kx" resolve="w" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0kB" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0kA" role="3cpWs9">
                <property role="TrG5h" value="required" />
                <node concept="3uibUv" id="2y5ZLyvO0kC" role="1tU5fm">
                  <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
                </node>
                <node concept="2YIFZM" id="2y5ZLyvO1z4" role="33vP2m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvK4Cz" resolve="checkRequired" />
                  <node concept="37vLTw" id="2y5ZLyvO1z5" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO1z6" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hv" resolve="policy" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO1z7" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0g6" resolve="abc" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0kI" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0kH" role="3cpWs9">
                <property role="TrG5h" value="requiredReal" />
                <node concept="10P_77" id="2y5ZLyvO0kJ" role="1tU5fm" />
                <node concept="1Wc70l" id="2y5ZLyvO0kK" role="33vP2m">
                  <node concept="3fqX7Q" id="2y5ZLyvO0kL" role="3uHU7B">
                    <node concept="2OqwBi" id="2y5ZLyvO1zb" role="3fr31v">
                      <node concept="37vLTw" id="2y5ZLyvO1za" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0kA" resolve="required" />
                      </node>
                      <node concept="2OwXpG" id="2y5ZLyvO1zc" role="2OqNvi">
                        <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="2y5ZLyvO0kN" role="3uHU7w">
                    <ref role="37wK5l" node="2y5ZLyvO0eu" resolve="violatesRequired" />
                    <node concept="37vLTw" id="2y5ZLyvO0kO" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0kP" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hv" resolve="policy" />
                    </node>
                    <node concept="2OqwBi" id="2y5ZLyvO3XI" role="37wK5m">
                      <node concept="37vLTw" id="2y5ZLyvO1zf" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0g6" resolve="abc" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyvO3XJ" role="2OqNvi">
                        <ref role="37wK5l" to="op1a:2y5ZLyvHE7I" resolve="wordOf" />
                        <node concept="2OqwBi" id="2y5ZLyvO4e6" role="37wK5m">
                          <node concept="37vLTw" id="2y5ZLyvO4e5" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyvO0kA" resolve="required" />
                          </node>
                          <node concept="2OwXpG" id="2y5ZLyvO4e7" role="2OqNvi">
                            <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0kS" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvO0kT" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0kU" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvO0gJ" resolve="requiredAgrees" />
                </node>
                <node concept="1Wc70l" id="2y5ZLyvO0kV" role="37vLTx">
                  <node concept="37vLTw" id="2y5ZLyvO0kW" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyvO0gJ" resolve="requiredAgrees" />
                  </node>
                  <node concept="1rXfSq" id="2y5ZLyvO0kX" role="3uHU7w">
                    <ref role="37wK5l" node="2y5ZLyvO0fh" resolve="agrees" />
                    <node concept="37vLTw" id="2y5ZLyvO0kY" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0kA" resolve="required" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0kZ" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0iH" resolve="bruteRequired" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0l0" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0kH" resolve="requiredReal" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0l1" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0gn" resolve="maxLength" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0l2" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0g6" resolve="abc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2y5ZLyvO0l3" role="3cqZAp">
              <node concept="3fqX7Q" id="2y5ZLyvO0l4" role="3clFbw">
                <node concept="2OqwBi" id="2y5ZLyvO1zl" role="3fr31v">
                  <node concept="37vLTw" id="2y5ZLyvO1zk" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0kA" resolve="required" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO1zm" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyvO0l7" role="3clFbx">
                <node concept="3clFbF" id="2y5ZLyvO0l8" role="3cqZAp">
                  <node concept="37vLTI" id="2y5ZLyvO0l9" role="3clFbG">
                    <node concept="37vLTw" id="2y5ZLyvO0la" role="37vLTJ">
                      <ref role="3cqZAo" node="2y5ZLyvO0gV" resolve="violatedRequired" />
                    </node>
                    <node concept="3cpWs3" id="2y5ZLyvO0lb" role="37vLTx">
                      <node concept="37vLTw" id="2y5ZLyvO0lc" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLyvO0gV" resolve="violatedRequired" />
                      </node>
                      <node concept="3cmrfG" id="2y5ZLyvO0ld" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0lf" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0le" role="3cpWs9">
                <property role="TrG5h" value="forbidden" />
                <node concept="3uibUv" id="2y5ZLyvO0lg" role="1tU5fm">
                  <ref role="3uigEE" to="op1a:2y5ZLyvHQgv" resolve="Verdict" />
                </node>
                <node concept="2YIFZM" id="2y5ZLyvO1zp" role="33vP2m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvK4Cx" resolve="PolicyChecker" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvK4Do" resolve="checkForbidden" />
                  <node concept="37vLTw" id="2y5ZLyvO1zq" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO1zr" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hv" resolve="policy" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO1zs" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0g6" resolve="abc" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0lm" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0ll" role="3cpWs9">
                <property role="TrG5h" value="forbiddenReal" />
                <node concept="10P_77" id="2y5ZLyvO0ln" role="1tU5fm" />
                <node concept="1Wc70l" id="2y5ZLyvO0lo" role="33vP2m">
                  <node concept="3fqX7Q" id="2y5ZLyvO0lp" role="3uHU7B">
                    <node concept="2OqwBi" id="2y5ZLyvO1zw" role="3fr31v">
                      <node concept="37vLTw" id="2y5ZLyvO1zv" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0le" resolve="forbidden" />
                      </node>
                      <node concept="2OwXpG" id="2y5ZLyvO1zx" role="2OqNvi">
                        <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="2y5ZLyvO0lr" role="3uHU7w">
                    <ref role="37wK5l" node="2y5ZLyvO0eQ" resolve="violatesForbidden" />
                    <node concept="37vLTw" id="2y5ZLyvO0ls" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0lt" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hv" resolve="policy" />
                    </node>
                    <node concept="2OqwBi" id="2y5ZLyvO3XV" role="37wK5m">
                      <node concept="37vLTw" id="2y5ZLyvO1z$" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyvO0g6" resolve="abc" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyvO3XW" role="2OqNvi">
                        <ref role="37wK5l" to="op1a:2y5ZLyvHE7I" resolve="wordOf" />
                        <node concept="2OqwBi" id="2y5ZLyvO4eb" role="37wK5m">
                          <node concept="37vLTw" id="2y5ZLyvO4ea" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyvO0le" resolve="forbidden" />
                          </node>
                          <node concept="2OwXpG" id="2y5ZLyvO4ec" role="2OqNvi">
                            <ref role="2Oxat5" to="op1a:2y5ZLyvHQg_" resolve="counterexample" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0lw" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvO0lx" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0ly" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvO0gN" resolve="forbiddenAgrees" />
                </node>
                <node concept="1Wc70l" id="2y5ZLyvO0lz" role="37vLTx">
                  <node concept="37vLTw" id="2y5ZLyvO0l$" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyvO0gN" resolve="forbiddenAgrees" />
                  </node>
                  <node concept="1rXfSq" id="2y5ZLyvO0l_" role="3uHU7w">
                    <ref role="37wK5l" node="2y5ZLyvO0fh" resolve="agrees" />
                    <node concept="37vLTw" id="2y5ZLyvO0lA" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0le" resolve="forbidden" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0lB" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0iM" resolve="bruteForbidden" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0lC" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0ll" resolve="forbiddenReal" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0lD" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0gn" resolve="maxLength" />
                    </node>
                    <node concept="37vLTw" id="2y5ZLyvO0lE" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0g6" resolve="abc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2y5ZLyvO0lF" role="3cqZAp">
              <node concept="3fqX7Q" id="2y5ZLyvO0lG" role="3clFbw">
                <node concept="2OqwBi" id="2y5ZLyvO1zE" role="3fr31v">
                  <node concept="37vLTw" id="2y5ZLyvO1zD" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyvO0le" resolve="forbidden" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyvO1zF" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyvHQgx" resolve="ok" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyvO0lJ" role="3clFbx">
                <node concept="3clFbF" id="2y5ZLyvO0lK" role="3cqZAp">
                  <node concept="37vLTI" id="2y5ZLyvO0lL" role="3clFbG">
                    <node concept="37vLTw" id="2y5ZLyvO0lM" role="37vLTJ">
                      <ref role="3cqZAo" node="2y5ZLyvO0gZ" resolve="violatedForbidden" />
                    </node>
                    <node concept="3cpWs3" id="2y5ZLyvO0lN" role="37vLTx">
                      <node concept="37vLTw" id="2y5ZLyvO0lO" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLyvO0gZ" resolve="violatedForbidden" />
                      </node>
                      <node concept="3cmrfG" id="2y5ZLyvO0lP" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2y5ZLyvO0sg" role="3cqZAp">
              <node concept="1PaTwC" id="2y5ZLyvO0sh" role="1aUNEU">
                <node concept="3oM_SD" id="2y5ZLyvO0sj" role="1PaTwD">
                  <property role="3oM_SC" value="Un" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sk" role="1PaTwD">
                  <property role="3oM_SC" value="autómata" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sl" role="1PaTwD">
                  <property role="3oM_SC" value="de" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sm" role="1PaTwD">
                  <property role="3oM_SC" value="n" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sn" role="1PaTwD">
                  <property role="3oM_SC" value="&lt;=" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0so" role="1PaTwD">
                  <property role="3oM_SC" value="5" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sp" role="1PaTwD">
                  <property role="3oM_SC" value="estados" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sq" role="1PaTwD">
                  <property role="3oM_SC" value="alcanza" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sr" role="1PaTwD">
                  <property role="3oM_SC" value="cualquier" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0ss" role="1PaTwD">
                  <property role="3oM_SC" value="estado" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0st" role="1PaTwD">
                  <property role="3oM_SC" value="alcanzable" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0su" role="1PaTwD">
                  <property role="3oM_SC" value="con" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sv" role="1PaTwD">
                  <property role="3oM_SC" value="una" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sw" role="1PaTwD">
                  <property role="3oM_SC" value="palabra" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sx" role="1PaTwD">
                  <property role="3oM_SC" value="de" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sy" role="1PaTwD">
                  <property role="3oM_SC" value="longitud" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sz" role="1PaTwD">
                  <property role="3oM_SC" value="&lt;" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0s$" role="1PaTwD">
                  <property role="3oM_SC" value="n" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0s_" role="1PaTwD">
                  <property role="3oM_SC" value="&lt;=" />
                </node>
                <node concept="3oM_SD" id="2y5ZLyvO0sA" role="1PaTwD">
                  <property role="3oM_SC" value="maxLength." />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0lR" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0lQ" role="3cpWs9">
                <property role="TrG5h" value="trace" />
                <node concept="3uibUv" id="2y5ZLyvO0lS" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2y5ZLyvO0lT" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2y5ZLyvO1zI" role="33vP2m">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvJkkW" resolve="shortestTraceTo" />
                  <node concept="37vLTw" id="2y5ZLyvO1zJ" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO1zK" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyvO0iW" resolve="goal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0lY" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0lX" role="3cpWs9">
                <property role="TrG5h" value="sameTrace" />
                <node concept="10P_77" id="2y5ZLyvO0lZ" role="1tU5fm" />
                <node concept="3K4zz7" id="2y5ZLyvO0m8" role="33vP2m">
                  <node concept="3clFbC" id="2y5ZLyvO0m0" role="3K4Cdx">
                    <node concept="37vLTw" id="2y5ZLyvO0m1" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyvO0iR" resolve="bruteTrace" />
                    </node>
                    <node concept="10Nm6u" id="2y5ZLyvO0m2" role="3uHU7w" />
                  </node>
                  <node concept="3clFbC" id="2y5ZLyvO0m3" role="3K4E3e">
                    <node concept="37vLTw" id="2y5ZLyvO0m4" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyvO0lQ" resolve="trace" />
                    </node>
                    <node concept="10Nm6u" id="2y5ZLyvO0m5" role="3uHU7w" />
                  </node>
                  <node concept="2OqwBi" id="2y5ZLyvO40g" role="3K4GZi">
                    <node concept="37vLTw" id="2y5ZLyvO1zN" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyvO0iR" resolve="bruteTrace" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyvO40h" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.equals(java.lang.Object)" resolve="equals" />
                      <node concept="37vLTw" id="2y5ZLyvO40i" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyvO0lQ" resolve="trace" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0m9" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvO0ma" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0mb" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvO0gR" resolve="traceAgrees" />
                </node>
                <node concept="1Wc70l" id="2y5ZLyvO0mc" role="37vLTx">
                  <node concept="37vLTw" id="2y5ZLyvO0md" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyvO0gR" resolve="traceAgrees" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyvO0me" role="3uHU7w">
                    <ref role="3cqZAo" node="2y5ZLyvO0lX" resolve="sameTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2y5ZLyvO0mg" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyvO0mf" role="3cpWs9">
                <property role="TrG5h" value="reachableGoal" />
                <node concept="10P_77" id="2y5ZLyvO0mh" role="1tU5fm" />
                <node concept="2OqwBi" id="2y5ZLyvO43$" role="33vP2m">
                  <node concept="2YIFZM" id="2y5ZLyvO1$0" role="2Oq$k0">
                    <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                    <ref role="37wK5l" to="op1a:2y5ZLyvJkdV" resolve="reachable" />
                    <node concept="37vLTw" id="2y5ZLyvO1$1" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2y5ZLyvO43_" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                    <node concept="3cpWsd" id="2y5ZLyvO43A" role="37wK5m">
                      <node concept="2OqwBi" id="2y5ZLyvO43B" role="3uHU7B">
                        <node concept="37vLTw" id="2y5ZLyvO43C" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyvO0hp" resolve="device" />
                        </node>
                        <node concept="2OwXpG" id="2y5ZLyvO43D" role="2OqNvi">
                          <ref role="2Oxat5" to="op1a:2y5ZLyvHYkc" resolve="stateCount" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="2y5ZLyvO43E" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyvO0mo" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyvO0mp" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyvO0mq" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyvO0gR" resolve="traceAgrees" />
                </node>
                <node concept="1Wc70l" id="2y5ZLyvO0mr" role="37vLTx">
                  <node concept="37vLTw" id="2y5ZLyvO0ms" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyvO0gR" resolve="traceAgrees" />
                  </node>
                  <node concept="1eOMI4" id="2y5ZLyvO0mz" role="3uHU7w">
                    <node concept="3clFbC" id="2y5ZLyvO0mt" role="1eOMHV">
                      <node concept="37vLTw" id="2y5ZLyvO0mu" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLyvO0mf" resolve="reachableGoal" />
                      </node>
                      <node concept="1eOMI4" id="2y5ZLyvO0my" role="3uHU7w">
                        <node concept="3y3z36" id="2y5ZLyvO0mv" role="1eOMHV">
                          <node concept="37vLTw" id="2y5ZLyvO0mw" role="3uHU7B">
                            <ref role="3cqZAo" node="2y5ZLyvO0lQ" resolve="trace" />
                          </node>
                          <node concept="10Nm6u" id="2y5ZLyvO0mx" role="3uHU7w" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0m$" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0m_" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="37vLTw" id="2y5ZLyvO0mA" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvO0gr" resolve="wordsAgree" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyvO0mB" role="37wK5m">
              <node concept="Xl_RD" id="2y5ZLyvO0mC" role="3uHU7B">
                <property role="Xl_RC" value="Simulador(AFN) = AFD = AFD mínima = Thompson(StateElim) en todas las palabras de longitud &lt;= " />
              </node>
              <node concept="37vLTw" id="2y5ZLyvO0mD" role="3uHU7w">
                <ref role="3cqZAo" node="2y5ZLyvO0gn" resolve="maxLength" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0mE" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0mF" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="37vLTw" id="2y5ZLyvO0mG" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvO0gv" resolve="minimalEquivalent" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO0mH" role="37wK5m">
              <property role="Xl_RC" value="min(det(A)) es equivalente a det(A)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0mI" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0mJ" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="37vLTw" id="2y5ZLyvO0mK" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvO0gz" resolve="minimalNotBigger" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO0mL" role="37wK5m">
              <property role="Xl_RC" value="min(det(A)) nunca tiene más estados que det(A)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0mM" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0mN" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="37vLTw" id="2y5ZLyvO0mO" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvO0gB" resolve="minimalCanonical" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO0mP" role="37wK5m">
              <property role="Xl_RC" value="minimizar es idempotente y canónico (isomorfismo)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0mQ" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0mR" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="37vLTw" id="2y5ZLyvO0mS" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvO0gF" resolve="kleeneRoundTrip" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO0mT" role="37wK5m">
              <property role="Xl_RC" value="ida y vuelta de Kleene: equivalentes e isomorfos" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0mU" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0mV" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="37vLTw" id="2y5ZLyvO0mW" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvO0gJ" resolve="requiredAgrees" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyvO0mX" role="37wK5m">
              <node concept="3cpWs3" id="2y5ZLyvO0mY" role="3uHU7B">
                <node concept="Xl_RD" id="2y5ZLyvO0mZ" role="3uHU7B">
                  <property role="Xl_RC" value="checkRequired coincide con la fuerza bruta, contraejemplo shortlex incluido (" />
                </node>
                <node concept="37vLTw" id="2y5ZLyvO0n0" role="3uHU7w">
                  <ref role="3cqZAo" node="2y5ZLyvO0gV" resolve="violatedRequired" />
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLyvO0n1" role="3uHU7w">
                <property role="Xl_RC" value=" violaciones)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0n2" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0n3" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="37vLTw" id="2y5ZLyvO0n4" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvO0gN" resolve="forbiddenAgrees" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyvO0n5" role="37wK5m">
              <node concept="3cpWs3" id="2y5ZLyvO0n6" role="3uHU7B">
                <node concept="Xl_RD" id="2y5ZLyvO0n7" role="3uHU7B">
                  <property role="Xl_RC" value="checkForbidden coincide con la fuerza bruta, contraejemplo shortlex incluido (" />
                </node>
                <node concept="37vLTw" id="2y5ZLyvO0n8" role="3uHU7w">
                  <ref role="3cqZAo" node="2y5ZLyvO0gZ" resolve="violatedForbidden" />
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLyvO0n9" role="3uHU7w">
                <property role="Xl_RC" value=" violaciones)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyvO0na" role="3cqZAp">
          <node concept="1rXfSq" id="2y5ZLyvO0nb" role="3clFbG">
            <ref role="37wK5l" node="2y5ZLyvNZKd" resolve="check" />
            <node concept="37vLTw" id="2y5ZLyvO0nc" role="37wK5m">
              <ref role="3cqZAo" node="2y5ZLyvO0gR" resolve="traceAgrees" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyvO0nd" role="37wK5m">
              <property role="Xl_RC" value="shortestTraceTo coincide con la fuerza bruta y con reachable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyvO0ne" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyvO0nf" role="3clF45" />
    </node>
  </node>
</model>

