<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4b7847dc-a8ae-4b74-bfe3-e8b3ce796b4a(domus.lang.generator.util)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
  </languages>
  <imports>
    <import index="op1a" ref="r:edb40588-6aa3-4d1b-9aa3-15b2491e5c9f(domus.reasoner.automata)" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
        <property id="2791683072064593257" name="packageName" index="2HnT6v" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
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
  <node concept="312cEu" id="2y5ZLyw96gB">
    <property role="TrG5h" value="ReporteDomus" />
    <property role="2HnT6v" value="domus.lang.generator.util" />
    <node concept="3Tm1VV" id="2y5ZLyw96gC" role="1B3o_S" />
    <node concept="3UR2Jj" id="2y5ZLyw96pj" role="lGtFl">
      <node concept="1PaTwC" id="2y5ZLyw96pk" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyw96pl" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyw96p_" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyw96pA" role="1PaTwD">
          <property role="3oM_SC" value="Reporte" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pB" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pC" role="1PaTwD">
          <property role="3oM_SC" value="verificación" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pD" role="1PaTwD">
          <property role="3oM_SC" value="(docs/02" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pE" role="1PaTwD">
          <property role="3oM_SC" value="§5)" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pF" role="1PaTwD">
          <property role="3oM_SC" value="calculado" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pG" role="1PaTwD">
          <property role="3oM_SC" value="EN" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pH" role="1PaTwD">
          <property role="3oM_SC" value="TIEMPO" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pI" role="1PaTwD">
          <property role="3oM_SC" value="DE" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pJ" role="1PaTwD">
          <property role="3oM_SC" value="GENERACIÓN." />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyw96pK" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyw96pL" role="1PaTwD">
          <property role="3oM_SC" value="Las" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pM" role="1PaTwD">
          <property role="3oM_SC" value="macros" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pN" role="1PaTwD">
          <property role="3oM_SC" value="del" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pO" role="1PaTwD">
          <property role="3oM_SC" value="generador" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pP" role="1PaTwD">
          <property role="3oM_SC" value="le" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pQ" role="1PaTwD">
          <property role="3oM_SC" value="pasan" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pR" role="1PaTwD">
          <property role="3oM_SC" value="los" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pS" role="1PaTwD">
          <property role="3oM_SC" value="autómatas" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pT" role="1PaTwD">
          <property role="3oM_SC" value="ya" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pU" role="1PaTwD">
          <property role="3oM_SC" value="traducidos" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pV" role="1PaTwD">
          <property role="3oM_SC" value="desde" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pW" role="1PaTwD">
          <property role="3oM_SC" value="el" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pX" role="1PaTwD">
          <property role="3oM_SC" value="AST" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96pY" role="1PaTwD">
          <property role="3oM_SC" value="(Device.toNfa," />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyw96pZ" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyw96q0" role="1PaTwD">
          <property role="3oM_SC" value="RegexExpr.toNfa)" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q1" role="1PaTwD">
          <property role="3oM_SC" value="y" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q2" role="1PaTwD">
          <property role="3oM_SC" value="esta" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q3" role="1PaTwD">
          <property role="3oM_SC" value="clase" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q4" role="1PaTwD">
          <property role="3oM_SC" value="llama" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q5" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q6" role="1PaTwD">
          <property role="3oM_SC" value="la" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q7" role="1PaTwD">
          <property role="3oM_SC" value="fachada" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q8" role="1PaTwD">
          <property role="3oM_SC" value="Razonador" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q9" role="1PaTwD">
          <property role="3oM_SC" value="y" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qa" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qb" role="1PaTwD">
          <property role="3oM_SC" value="StateEliminator" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qc" role="1PaTwD">
          <property role="3oM_SC" value="(Kleene" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qd" role="1PaTwD">
          <property role="3oM_SC" value="2)." />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyw96qe" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyw96qf" role="1PaTwD">
          <property role="3oM_SC" value="El" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qg" role="1PaTwD">
          <property role="3oM_SC" value="texto" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qh" role="1PaTwD">
          <property role="3oM_SC" value="resultante" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qi" role="1PaTwD">
          <property role="3oM_SC" value="queda" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qj" role="1PaTwD">
          <property role="3oM_SC" value="como" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qk" role="1PaTwD">
          <property role="3oM_SC" value="constante" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96ql" role="1PaTwD">
          <property role="3oM_SC" value="String" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qm" role="1PaTwD">
          <property role="3oM_SC" value="en" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qn" role="1PaTwD">
          <property role="3oM_SC" value="la" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qo" role="1PaTwD">
          <property role="3oM_SC" value="clase" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qp" role="1PaTwD">
          <property role="3oM_SC" value="generada," />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qq" role="1PaTwD">
          <property role="3oM_SC" value="que" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qr" role="1PaTwD">
          <property role="3oM_SC" value="así" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qs" role="1PaTwD">
          <property role="3oM_SC" value="no" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qt" role="1PaTwD">
          <property role="3oM_SC" value="depende" />
        </node>
      </node>
      <node concept="1PaTwC" id="2y5ZLyw96qu" role="1Vez_I">
        <node concept="3oM_SD" id="2y5ZLyw96qv" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qw" role="1PaTwD">
          <property role="3oM_SC" value="domus.reasoner" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qx" role="1PaTwD">
          <property role="3oM_SC" value="en" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qy" role="1PaTwD">
          <property role="3oM_SC" value="tiempo" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96qz" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="2y5ZLyw96q$" role="1PaTwD">
          <property role="3oM_SC" value="ejecución." />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2y5ZLyw96gD" role="jymVt">
      <property role="TrG5h" value="LINEA" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2y5ZLyw96gE" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="2y5ZLyw96gF" role="33vP2m">
        <property role="Xl_RC" value="============================================================" />
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw96gG" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyw96gH" role="jymVt">
      <property role="TrG5h" value="encabezado" />
      <node concept="37vLTG" id="2y5ZLyw96gI" role="3clF46">
        <property role="TrG5h" value="sistema" />
        <node concept="3uibUv" id="2y5ZLyw96gJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyw96gK" role="3clF47">
        <node concept="3cpWs6" id="2y5ZLyw96gL" role="3cqZAp">
          <node concept="3cpWs3" id="2y5ZLyw96gM" role="3cqZAk">
            <node concept="3cpWs3" id="2y5ZLyw96gN" role="3uHU7B">
              <node concept="3cpWs3" id="2y5ZLyw96gO" role="3uHU7B">
                <node concept="3cpWs3" id="2y5ZLyw96gP" role="3uHU7B">
                  <node concept="3cpWs3" id="2y5ZLyw96gQ" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLyw96gR" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLyw96gD" resolve="LINEA" />
                    </node>
                    <node concept="Xl_RD" id="2y5ZLyw96gS" role="3uHU7w">
                      <property role="Xl_RC" value="\nREPORTE DE VERIFICACIÓN del sistema " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2y5ZLyw96gT" role="3uHU7w">
                    <ref role="3cqZAo" node="2y5ZLyw96gI" resolve="sistema" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2y5ZLyw96gU" role="3uHU7w">
                  <property role="Xl_RC" value="\n(calculado en tiempo de generación por domus.reasoner)\n" />
                </node>
              </node>
              <node concept="37vLTw" id="2y5ZLyw96gV" role="3uHU7w">
                <ref role="3cqZAo" node="2y5ZLyw96gD" resolve="LINEA" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyw96gW" role="3uHU7w">
              <property role="Xl_RC" value="\n" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw96gX" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyw96gY" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyw96gZ" role="jymVt">
      <property role="TrG5h" value="seccion" />
      <node concept="37vLTG" id="2y5ZLyw96h0" role="3clF46">
        <property role="TrG5h" value="titulo" />
        <node concept="3uibUv" id="2y5ZLyw96h1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyw96h2" role="3clF47">
        <node concept="3cpWs6" id="2y5ZLyw96h3" role="3cqZAp">
          <node concept="3cpWs3" id="2y5ZLyw96h4" role="3cqZAk">
            <node concept="3cpWs3" id="2y5ZLyw96h5" role="3uHU7B">
              <node concept="Xl_RD" id="2y5ZLyw96h6" role="3uHU7B">
                <property role="Xl_RC" value="\n--- " />
              </node>
              <node concept="37vLTw" id="2y5ZLyw96h7" role="3uHU7w">
                <ref role="3cqZAo" node="2y5ZLyw96h0" resolve="titulo" />
              </node>
            </node>
            <node concept="Xl_RD" id="2y5ZLyw96h8" role="3uHU7w">
              <property role="Xl_RC" value=" ---\n" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw96h9" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyw96ha" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyw96hb" role="jymVt">
      <property role="TrG5h" value="dispositivo" />
      <node concept="37vLTG" id="2y5ZLyw96hc" role="3clF46">
        <property role="TrG5h" value="nombre" />
        <node concept="3uibUv" id="2y5ZLyw96hd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyw96he" role="3clF46">
        <property role="TrG5h" value="nfa" />
        <node concept="3uibUv" id="2y5ZLyw96hf" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyw96hg" role="3clF46">
        <property role="TrG5h" value="alarmas" />
        <node concept="3uibUv" id="2y5ZLyw96hh" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="2y5ZLyw96hi" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyw96hj" role="3clF46">
        <property role="TrG5h" value="estados" />
        <node concept="3uibUv" id="2y5ZLyw96hk" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2y5ZLyw96hl" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyw96hm" role="3clF46">
        <property role="TrG5h" value="sigma" />
        <node concept="3uibUv" id="2y5ZLyw96hn" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyw96ho" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyw96hq" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96hp" role="3cpWs9">
            <property role="TrG5h" value="texto" />
            <node concept="3uibUv" id="2y5ZLyw96hr" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96hs" role="33vP2m">
              <node concept="3cpWs3" id="2y5ZLyw96ht" role="3uHU7B">
                <node concept="Xl_RD" id="2y5ZLyw96hu" role="3uHU7B">
                  <property role="Xl_RC" value="\nDispositivo " />
                </node>
                <node concept="37vLTw" id="2y5ZLyw96hv" role="3uHU7w">
                  <ref role="3cqZAo" node="2y5ZLyw96hc" resolve="nombre" />
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLyw96hw" role="3uHU7w">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2y5ZLyw96hx" role="3cqZAp">
          <node concept="3clFbC" id="2y5ZLyw96hy" role="3clFbw">
            <node concept="37vLTw" id="2y5ZLyw96hz" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyw96he" resolve="nfa" />
            </node>
            <node concept="10Nm6u" id="2y5ZLyw96h$" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2y5ZLyw96hA" role="3clFbx">
            <node concept="3cpWs6" id="2y5ZLyw96hB" role="3cqZAp">
              <node concept="3cpWs3" id="2y5ZLyw96hC" role="3cqZAk">
                <node concept="37vLTw" id="2y5ZLyw96hD" role="3uHU7B">
                  <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
                </node>
                <node concept="Xl_RD" id="2y5ZLyw96hE" role="3uHU7w">
                  <property role="Xl_RC" value="  (no se analiza: el dispositivo debe tener exactamente un estado inicial)\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96hG" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96hF" role="3cpWs9">
            <property role="TrG5h" value="origenes" />
            <node concept="3uibUv" id="2y5ZLyw96hH" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyw96hI" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw96r0" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyw96r5" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyw96r6" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96hM" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96hL" role="3cpWs9">
            <property role="TrG5h" value="simbolos" />
            <node concept="3uibUv" id="2y5ZLyw96hN" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyw96hO" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw96r7" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyw96rc" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyw96rd" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyw96hR" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96hS" role="1Duv9x">
            <property role="TrG5h" value="q" />
            <node concept="10Oyi0" id="2y5ZLyw96hU" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyw96hV" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyw96hW" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyw96hX" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyw96hS" resolve="q" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyw96rh" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLyw96rg" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyw96he" resolve="nfa" />
              </node>
              <node concept="2OwXpG" id="2y5ZLyw96ri" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyvHYkc" resolve="stateCount" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyw96i0" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyw96i1" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyw96hS" resolve="q" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyw96i3" role="2LFqv$">
            <node concept="3cpWs8" id="2y5ZLyw96i5" role="3cqZAp">
              <node concept="3cpWsn" id="2y5ZLyw96i4" role="3cpWs9">
                <property role="TrG5h" value="fila" />
                <node concept="3uibUv" id="2y5ZLyw96i6" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                  <node concept="3uibUv" id="2y5ZLyw96i7" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                  <node concept="3uibUv" id="2y5ZLyw96i8" role="11_B2D">
                    <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                    <node concept="3uibUv" id="2y5ZLyw96i9" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2y5ZLyw96zh" role="33vP2m">
                  <node concept="2OqwBi" id="2y5ZLyw96rm" role="2Oq$k0">
                    <node concept="37vLTw" id="2y5ZLyw96rl" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyw96he" resolve="nfa" />
                    </node>
                    <node concept="2OwXpG" id="2y5ZLyw96rn" role="2OqNvi">
                      <ref role="2Oxat5" to="op1a:2y5ZLyvHYkp" resolve="delta" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2y5ZLyw96zi" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="2y5ZLyw96zj" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyw96hS" resolve="q" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="2y5ZLyw96ic" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyw96BH" role="1DdaDG">
                <node concept="37vLTw" id="2y5ZLyw96rs" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyw96i4" resolve="fila" />
                </node>
                <node concept="liA8E" id="2y5ZLyw96BI" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                </node>
              </node>
              <node concept="3cpWsn" id="2y5ZLyw96iu" role="1Duv9x">
                <property role="TrG5h" value="a" />
                <node concept="3uibUv" id="2y5ZLyw96iw" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyw96ie" role="2LFqv$">
                <node concept="1DcWWT" id="2y5ZLyw96if" role="3cqZAp">
                  <node concept="2OqwBi" id="2y5ZLyw96G8" role="1DdaDG">
                    <node concept="37vLTw" id="2y5ZLyw96rw" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyw96i4" resolve="fila" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyw96G9" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                      <node concept="37vLTw" id="2y5ZLyw96Ga" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyw96iu" resolve="a" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="2y5ZLyw96ip" role="1Duv9x">
                    <property role="TrG5h" value="destino" />
                    <node concept="3uibUv" id="2y5ZLyw96ir" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="2y5ZLyw96ih" role="2LFqv$">
                    <node concept="3clFbF" id="2y5ZLyw96ii" role="3cqZAp">
                      <node concept="2OqwBi" id="2y5ZLyw96It" role="3clFbG">
                        <node concept="37vLTw" id="2y5ZLyw96r_" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyw96hF" resolve="origenes" />
                        </node>
                        <node concept="liA8E" id="2y5ZLyw96Iu" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="2YIFZM" id="2y5ZLyw975x" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                            <ref role="37wK5l" to="wyt6:~Integer.valueOf(int)" resolve="valueOf" />
                            <node concept="37vLTw" id="2y5ZLyw975y" role="37wK5m">
                              <ref role="3cqZAo" node="2y5ZLyw96hS" resolve="q" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2y5ZLyw96im" role="3cqZAp">
                      <node concept="2OqwBi" id="2y5ZLyw96KN" role="3clFbG">
                        <node concept="37vLTw" id="2y5ZLyw96rF" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyw96hL" resolve="simbolos" />
                        </node>
                        <node concept="liA8E" id="2y5ZLyw96KO" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="2y5ZLyw96KP" role="37wK5m">
                            <ref role="3cqZAo" node="2y5ZLyw96iu" resolve="a" />
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
        <node concept="3clFbF" id="2y5ZLyw96iy" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyw96iz" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyw96i$" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96i_" role="37vLTx">
              <node concept="3cpWs3" id="2y5ZLyw96iA" role="3uHU7B">
                <node concept="3cpWs3" id="2y5ZLyw96iB" role="3uHU7B">
                  <node concept="3cpWs3" id="2y5ZLyw96iC" role="3uHU7B">
                    <node concept="3cpWs3" id="2y5ZLyw96iD" role="3uHU7B">
                      <node concept="3cpWs3" id="2y5ZLyw96iE" role="3uHU7B">
                        <node concept="3cpWs3" id="2y5ZLyw96iF" role="3uHU7B">
                          <node concept="37vLTw" id="2y5ZLyw96iG" role="3uHU7B">
                            <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
                          </node>
                          <node concept="Xl_RD" id="2y5ZLyw96iH" role="3uHU7w">
                            <property role="Xl_RC" value="  " />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2y5ZLyw96rL" role="3uHU7w">
                          <node concept="37vLTw" id="2y5ZLyw96rK" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyw96he" resolve="nfa" />
                          </node>
                          <node concept="2OwXpG" id="2y5ZLyw96rM" role="2OqNvi">
                            <ref role="2Oxat5" to="op1a:2y5ZLyvHYkc" resolve="stateCount" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2y5ZLyw96iJ" role="3uHU7w">
                        <property role="Xl_RC" value=" estados, " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2y5ZLyw96KZ" role="3uHU7w">
                      <node concept="37vLTw" id="2y5ZLyw96rP" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyw96hm" resolve="sigma" />
                      </node>
                      <node concept="liA8E" id="2y5ZLyw96L0" role="2OqNvi">
                        <ref role="37wK5l" to="op1a:2y5ZLyvHE74" resolve="size" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2y5ZLyw96iL" role="3uHU7w">
                    <property role="Xl_RC" value=" eventos, " />
                  </node>
                </node>
                <node concept="2OqwBi" id="2y5ZLyw96Nj" role="3uHU7w">
                  <node concept="37vLTw" id="2y5ZLyw96rT" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyw96hF" resolve="origenes" />
                  </node>
                  <node concept="liA8E" id="2y5ZLyw96Nk" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLyw96iN" role="3uHU7w">
                <property role="Xl_RC" value=" transiciones\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96iP" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96iO" role="3cpWs9">
            <property role="TrG5h" value="hallazgos" />
            <node concept="3uibUv" id="2y5ZLyw96iQ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyw96iR" role="11_B2D">
                <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyw96rX" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
              <ref role="37wK5l" to="op1a:2y5ZLyw1dio" resolve="analizarDispositivo" />
              <node concept="37vLTw" id="2y5ZLyw96rY" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw96he" resolve="nfa" />
              </node>
              <node concept="37vLTw" id="2y5ZLyw96rZ" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw96hg" resolve="alarmas" />
              </node>
              <node concept="37vLTw" id="2y5ZLyw96s0" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw96hj" resolve="estados" />
              </node>
              <node concept="37vLTw" id="2y5ZLyw96s1" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw96hm" resolve="sigma" />
              </node>
              <node concept="37vLTw" id="2y5ZLyw96s2" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw96hF" resolve="origenes" />
              </node>
              <node concept="37vLTw" id="2y5ZLyw96s3" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw96hL" resolve="simbolos" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96j0" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96iZ" role="3cpWs9">
            <property role="TrG5h" value="alcanzables" />
            <node concept="3uibUv" id="2y5ZLyw96j1" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2y5ZLyw96j2" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2YIFZM" id="2y5ZLyw96s6" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJkdV" resolve="reachable" />
              <node concept="37vLTw" id="2y5ZLyw96s7" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLyw96he" resolve="nfa" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96j6" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96j5" role="3cpWs9">
            <property role="TrG5h" value="inalcanzables" />
            <node concept="3uibUv" id="2y5ZLyw96j7" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyw96j8" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw96s8" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyw96sd" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyw96se" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96jc" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96jb" role="3cpWs9">
            <property role="TrG5h" value="bloqueos" />
            <node concept="3uibUv" id="2y5ZLyw96jd" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyw96je" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw96sf" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyw96sk" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyw96sl" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96ji" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96jh" role="3cpWs9">
            <property role="TrG5h" value="trampas" />
            <node concept="3uibUv" id="2y5ZLyw96jj" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyw96jk" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw96sm" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyw96sr" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyw96ss" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96jo" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96jn" role="3cpWs9">
            <property role="TrG5h" value="noDeterminismo" />
            <node concept="3uibUv" id="2y5ZLyw96jp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyw96jq" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw96st" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyw96sy" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyw96sz" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96ju" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96jt" role="3cpWs9">
            <property role="TrG5h" value="alarmasAlcanzables" />
            <node concept="3uibUv" id="2y5ZLyw96jv" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyw96jw" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw96s$" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyw96sD" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyw96sE" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLyw96j$" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96jz" role="3cpWs9">
            <property role="TrG5h" value="sinRecuperacion" />
            <node concept="3uibUv" id="2y5ZLyw96j_" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2y5ZLyw96jA" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="2y5ZLyw96sF" role="33vP2m">
              <node concept="1pGfFk" id="2y5ZLyw96sK" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2y5ZLyw96sL" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2y5ZLyw96jD" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyw96le" role="1DdaDG">
            <ref role="3cqZAo" node="2y5ZLyw96iO" resolve="hallazgos" />
          </node>
          <node concept="3cpWsn" id="2y5ZLyw96lb" role="1Duv9x">
            <property role="TrG5h" value="h" />
            <node concept="3uibUv" id="2y5ZLyw96ld" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyw96jF" role="2LFqv$">
            <node concept="3clFbJ" id="2y5ZLyw96jG" role="3cqZAp">
              <node concept="3clFbC" id="2y5ZLyw96jH" role="3clFbw">
                <node concept="2OqwBi" id="2y5ZLyw96sP" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLyw96sO" role="2Oq$k0">
                    <ref role="3cqZAo" node="2y5ZLyw96lb" resolve="h" />
                  </node>
                  <node concept="2OwXpG" id="2y5ZLyw96sQ" role="2OqNvi">
                    <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ0" resolve="lugar" />
                  </node>
                </node>
                <node concept="10M0yZ" id="2y5ZLyw96sT" role="3uHU7w">
                  <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                  <ref role="3cqZAo" to="op1a:2y5ZLyw0JYI" resolve="EN_TRANSICION" />
                </node>
              </node>
              <node concept="3clFbJ" id="2y5ZLyw96jQ" role="9aQIa">
                <node concept="3clFbC" id="2y5ZLyw96jR" role="3clFbw">
                  <node concept="2OqwBi" id="2y5ZLyw96sX" role="3uHU7B">
                    <node concept="37vLTw" id="2y5ZLyw96sW" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyw96lb" resolve="h" />
                    </node>
                    <node concept="2OwXpG" id="2y5ZLyw96sY" role="2OqNvi">
                      <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ0" resolve="lugar" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="2y5ZLyw96t1" role="3uHU7w">
                    <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                    <ref role="3cqZAo" to="op1a:2y5ZLyw0JYB" resolve="EN_ESTADO" />
                  </node>
                </node>
                <node concept="3clFbS" id="2y5ZLyw96jV" role="3clFbx">
                  <node concept="3cpWs8" id="2y5ZLyw96jX" role="3cqZAp">
                    <node concept="3cpWsn" id="2y5ZLyw96jW" role="3cpWs9">
                      <property role="TrG5h" value="x" />
                      <node concept="3uibUv" id="2y5ZLyw96jY" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                      <node concept="2YIFZM" id="2y5ZLyw96t4" role="33vP2m">
                        <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
                        <ref role="37wK5l" to="op1a:2y5ZLyw1ds4" resolve="nombre" />
                        <node concept="37vLTw" id="2y5ZLyw96t5" role="37wK5m">
                          <ref role="3cqZAo" node="2y5ZLyw96hj" resolve="estados" />
                        </node>
                        <node concept="2OqwBi" id="2y5ZLyw96No" role="37wK5m">
                          <node concept="37vLTw" id="2y5ZLyw96Nn" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyw96lb" resolve="h" />
                          </node>
                          <node concept="2OwXpG" id="2y5ZLyw96Np" role="2OqNvi">
                            <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ4" resolve="indice" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2y5ZLyw96k2" role="3cqZAp">
                    <node concept="3clFbC" id="2y5ZLyw96k3" role="3clFbw">
                      <node concept="2OqwBi" id="2y5ZLyw96ta" role="3uHU7B">
                        <node concept="37vLTw" id="2y5ZLyw96t9" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLyw96lb" resolve="h" />
                        </node>
                        <node concept="2OwXpG" id="2y5ZLyw96tb" role="2OqNvi">
                          <ref role="2Oxat5" to="op1a:2y5ZLyw0JYW" resolve="severidad" />
                        </node>
                      </node>
                      <node concept="10M0yZ" id="2y5ZLyw96te" role="3uHU7w">
                        <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                        <ref role="3cqZAo" to="op1a:2y5ZLyw0JYk" resolve="INFO" />
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2y5ZLyw96k_" role="9aQIa">
                      <node concept="3clFbC" id="2y5ZLyw96kA" role="3clFbw">
                        <node concept="2OqwBi" id="2y5ZLyw96ti" role="3uHU7B">
                          <node concept="37vLTw" id="2y5ZLyw96th" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyw96lb" resolve="h" />
                          </node>
                          <node concept="2OwXpG" id="2y5ZLyw96tj" role="2OqNvi">
                            <ref role="2Oxat5" to="op1a:2y5ZLyw0JYW" resolve="severidad" />
                          </node>
                        </node>
                        <node concept="10M0yZ" id="2y5ZLyw96tm" role="3uHU7w">
                          <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
                          <ref role="3cqZAo" to="op1a:2y5ZLyw0JYs" resolve="ERROR" />
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2y5ZLyw96kV" role="9aQIa">
                        <node concept="2OqwBi" id="2y5ZLyw96Pv" role="3clFbw">
                          <node concept="37vLTw" id="2y5ZLyw96tp" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyw96iZ" resolve="alcanzables" />
                          </node>
                          <node concept="liA8E" id="2y5ZLyw96Pw" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                            <node concept="2YIFZM" id="2y5ZLyw975_" role="37wK5m">
                              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                              <ref role="37wK5l" to="wyt6:~Integer.valueOf(int)" resolve="valueOf" />
                              <node concept="2OqwBi" id="2y5ZLyw975Y" role="37wK5m">
                                <node concept="37vLTw" id="2y5ZLyw975X" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2y5ZLyw96lb" resolve="h" />
                                </node>
                                <node concept="2OwXpG" id="2y5ZLyw975Z" role="2OqNvi">
                                  <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ4" resolve="indice" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="2y5ZLyw96l5" role="9aQIa">
                          <node concept="3clFbS" id="2y5ZLyw96l6" role="9aQI4">
                            <node concept="3clFbF" id="2y5ZLyw96l7" role="3cqZAp">
                              <node concept="1rXfSq" id="2y5ZLyw96l8" role="3clFbG">
                                <ref role="37wK5l" node="2y5ZLyw96o2" resolve="agregar" />
                                <node concept="37vLTw" id="2y5ZLyw96l9" role="37wK5m">
                                  <ref role="3cqZAo" node="2y5ZLyw96j5" resolve="inalcanzables" />
                                </node>
                                <node concept="37vLTw" id="2y5ZLyw96la" role="37wK5m">
                                  <ref role="3cqZAo" node="2y5ZLyw96jW" resolve="x" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="2y5ZLyw96l0" role="3clFbx">
                          <node concept="3clFbF" id="2y5ZLyw96l1" role="3cqZAp">
                            <node concept="1rXfSq" id="2y5ZLyw96l2" role="3clFbG">
                              <ref role="37wK5l" node="2y5ZLyw96o2" resolve="agregar" />
                              <node concept="37vLTw" id="2y5ZLyw96l3" role="37wK5m">
                                <ref role="3cqZAo" node="2y5ZLyw96jh" resolve="trampas" />
                              </node>
                              <node concept="37vLTw" id="2y5ZLyw96l4" role="37wK5m">
                                <ref role="3cqZAo" node="2y5ZLyw96jW" resolve="x" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2y5ZLyw96kE" role="3clFbx">
                        <node concept="3clFbJ" id="2y5ZLyw96kF" role="3cqZAp">
                          <node concept="2OqwBi" id="2y5ZLyw96RB" role="3clFbw">
                            <node concept="37vLTw" id="2y5ZLyw96tv" role="2Oq$k0">
                              <ref role="3cqZAo" node="2y5ZLyw96hg" resolve="alarmas" />
                            </node>
                            <node concept="liA8E" id="2y5ZLyw96RC" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                              <node concept="2YIFZM" id="2y5ZLyw975D" role="37wK5m">
                                <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                                <ref role="37wK5l" to="wyt6:~Integer.valueOf(int)" resolve="valueOf" />
                                <node concept="2OqwBi" id="2y5ZLyw9763" role="37wK5m">
                                  <node concept="37vLTw" id="2y5ZLyw9762" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2y5ZLyw96lb" resolve="h" />
                                  </node>
                                  <node concept="2OwXpG" id="2y5ZLyw9764" role="2OqNvi">
                                    <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ4" resolve="indice" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="2y5ZLyw96kP" role="9aQIa">
                            <node concept="3clFbS" id="2y5ZLyw96kQ" role="9aQI4">
                              <node concept="3clFbF" id="2y5ZLyw96kR" role="3cqZAp">
                                <node concept="1rXfSq" id="2y5ZLyw96kS" role="3clFbG">
                                  <ref role="37wK5l" node="2y5ZLyw96o2" resolve="agregar" />
                                  <node concept="37vLTw" id="2y5ZLyw96kT" role="37wK5m">
                                    <ref role="3cqZAo" node="2y5ZLyw96jb" resolve="bloqueos" />
                                  </node>
                                  <node concept="37vLTw" id="2y5ZLyw96kU" role="37wK5m">
                                    <ref role="3cqZAo" node="2y5ZLyw96jW" resolve="x" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="2y5ZLyw96kK" role="3clFbx">
                            <node concept="3clFbF" id="2y5ZLyw96kL" role="3cqZAp">
                              <node concept="1rXfSq" id="2y5ZLyw96kM" role="3clFbG">
                                <ref role="37wK5l" node="2y5ZLyw96o2" resolve="agregar" />
                                <node concept="37vLTw" id="2y5ZLyw96kN" role="37wK5m">
                                  <ref role="3cqZAo" node="2y5ZLyw96jz" resolve="sinRecuperacion" />
                                </node>
                                <node concept="37vLTw" id="2y5ZLyw96kO" role="37wK5m">
                                  <ref role="3cqZAo" node="2y5ZLyw96jW" resolve="x" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2y5ZLyw96k7" role="3clFbx">
                      <node concept="3cpWs8" id="2y5ZLyw96k9" role="3cqZAp">
                        <node concept="3cpWsn" id="2y5ZLyw96k8" role="3cpWs9">
                          <property role="TrG5h" value="objetivo" />
                          <node concept="3uibUv" id="2y5ZLyw96ka" role="1tU5fm">
                            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                            <node concept="3uibUv" id="2y5ZLyw96kb" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                            </node>
                          </node>
                          <node concept="2ShNRf" id="2y5ZLyw96tz" role="33vP2m">
                            <node concept="1pGfFk" id="2y5ZLyw96tB" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" to="33ny:~TreeSet.&lt;init&gt;()" resolve="TreeSet" />
                              <node concept="3uibUv" id="2y5ZLyw96tC" role="1pMfVU">
                                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2y5ZLyw96ke" role="3cqZAp">
                        <node concept="2OqwBi" id="2y5ZLyw96TK" role="3clFbG">
                          <node concept="37vLTw" id="2y5ZLyw96tF" role="2Oq$k0">
                            <ref role="3cqZAo" node="2y5ZLyw96k8" resolve="objetivo" />
                          </node>
                          <node concept="liA8E" id="2y5ZLyw96TL" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                            <node concept="2YIFZM" id="2y5ZLyw975H" role="37wK5m">
                              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                              <ref role="37wK5l" to="wyt6:~Integer.valueOf(int)" resolve="valueOf" />
                              <node concept="2OqwBi" id="2y5ZLyw9768" role="37wK5m">
                                <node concept="37vLTw" id="2y5ZLyw9767" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2y5ZLyw96lb" resolve="h" />
                                </node>
                                <node concept="2OwXpG" id="2y5ZLyw9769" role="2OqNvi">
                                  <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ4" resolve="indice" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2y5ZLyw96kj" role="3cqZAp">
                        <node concept="3cpWsn" id="2y5ZLyw96ki" role="3cpWs9">
                          <property role="TrG5h" value="traza" />
                          <node concept="3uibUv" id="2y5ZLyw96kk" role="1tU5fm">
                            <ref role="3uigEE" to="33ny:~List" resolve="List" />
                            <node concept="3uibUv" id="2y5ZLyw96kl" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                            </node>
                          </node>
                          <node concept="2YIFZM" id="2y5ZLyw96tL" role="33vP2m">
                            <ref role="1Pybhc" to="op1a:2y5ZLyvJkdT" resolve="GraphAnalysis" />
                            <ref role="37wK5l" to="op1a:2y5ZLyvJkkW" resolve="shortestTraceTo" />
                            <node concept="37vLTw" id="2y5ZLyw96tM" role="37wK5m">
                              <ref role="3cqZAo" node="2y5ZLyw96he" resolve="nfa" />
                            </node>
                            <node concept="37vLTw" id="2y5ZLyw96tN" role="37wK5m">
                              <ref role="3cqZAo" node="2y5ZLyw96k8" resolve="objetivo" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2y5ZLyw96kp" role="3cqZAp">
                        <node concept="1rXfSq" id="2y5ZLyw96kq" role="3clFbG">
                          <ref role="37wK5l" node="2y5ZLyw96o2" resolve="agregar" />
                          <node concept="37vLTw" id="2y5ZLyw96kr" role="37wK5m">
                            <ref role="3cqZAo" node="2y5ZLyw96jt" resolve="alarmasAlcanzables" />
                          </node>
                          <node concept="3cpWs3" id="2y5ZLyw96ks" role="37wK5m">
                            <node concept="3cpWs3" id="2y5ZLyw96kt" role="3uHU7B">
                              <node concept="3cpWs3" id="2y5ZLyw96ku" role="3uHU7B">
                                <node concept="37vLTw" id="2y5ZLyw96kv" role="3uHU7B">
                                  <ref role="3cqZAo" node="2y5ZLyw96jW" resolve="x" />
                                </node>
                                <node concept="Xl_RD" id="2y5ZLyw96kw" role="3uHU7w">
                                  <property role="Xl_RC" value=" (traza mínima: " />
                                </node>
                              </node>
                              <node concept="2YIFZM" id="2y5ZLyw96tQ" role="3uHU7w">
                                <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
                                <ref role="37wK5l" to="op1a:2y5ZLyw1dsu" resolve="unirNombres" />
                                <node concept="2OqwBi" id="2y5ZLyw975S" role="37wK5m">
                                  <node concept="37vLTw" id="2y5ZLyw96TQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2y5ZLyw96hm" resolve="sigma" />
                                  </node>
                                  <node concept="liA8E" id="2y5ZLyw975T" role="2OqNvi">
                                    <ref role="37wK5l" to="op1a:2y5ZLyvHE7d" resolve="namesOf" />
                                    <node concept="37vLTw" id="2y5ZLyw975U" role="37wK5m">
                                      <ref role="3cqZAo" node="2y5ZLyw96ki" resolve="traza" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="2y5ZLyw96k$" role="3uHU7w">
                              <property role="Xl_RC" value=")" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyw96jL" role="3clFbx">
                <node concept="3clFbF" id="2y5ZLyw96jM" role="3cqZAp">
                  <node concept="1rXfSq" id="2y5ZLyw96jN" role="3clFbG">
                    <ref role="37wK5l" node="2y5ZLyw96o2" resolve="agregar" />
                    <node concept="37vLTw" id="2y5ZLyw96jO" role="37wK5m">
                      <ref role="3cqZAo" node="2y5ZLyw96jn" resolve="noDeterminismo" />
                    </node>
                    <node concept="2OqwBi" id="2y5ZLyw96tW" role="37wK5m">
                      <node concept="37vLTw" id="2y5ZLyw96tV" role="2Oq$k0">
                        <ref role="3cqZAo" node="2y5ZLyw96lb" resolve="h" />
                      </node>
                      <node concept="2OwXpG" id="2y5ZLyw96tX" role="2OqNvi">
                        <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ8" resolve="mensaje" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw96lf" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyw96lg" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyw96lh" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96li" role="37vLTx">
              <node concept="37vLTw" id="2y5ZLyw96lj" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyw96lk" role="3uHU7w">
                <ref role="37wK5l" node="2y5ZLyw96ok" resolve="lista" />
                <node concept="Xl_RD" id="2y5ZLyw96ll" role="37wK5m">
                  <property role="Xl_RC" value="Estados inalcanzables" />
                </node>
                <node concept="37vLTw" id="2y5ZLyw96lm" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyw96j5" resolve="inalcanzables" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw96ln" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyw96lo" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyw96lp" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96lq" role="37vLTx">
              <node concept="37vLTw" id="2y5ZLyw96lr" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyw96ls" role="3uHU7w">
                <ref role="37wK5l" node="2y5ZLyw96ok" resolve="lista" />
                <node concept="Xl_RD" id="2y5ZLyw96lt" role="37wK5m">
                  <property role="Xl_RC" value="Bloqueos (deadlocks)" />
                </node>
                <node concept="37vLTw" id="2y5ZLyw96lu" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyw96jb" resolve="bloqueos" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw96lv" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyw96lw" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyw96lx" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96ly" role="37vLTx">
              <node concept="37vLTw" id="2y5ZLyw96lz" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyw96l$" role="3uHU7w">
                <ref role="37wK5l" node="2y5ZLyw96ok" resolve="lista" />
                <node concept="Xl_RD" id="2y5ZLyw96l_" role="37wK5m">
                  <property role="Xl_RC" value="Estados trampa" />
                </node>
                <node concept="37vLTw" id="2y5ZLyw96lA" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyw96jh" resolve="trampas" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw96lB" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyw96lC" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyw96lD" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96lE" role="37vLTx">
              <node concept="37vLTw" id="2y5ZLyw96lF" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyw96lG" role="3uHU7w">
                <ref role="37wK5l" node="2y5ZLyw96ok" resolve="lista" />
                <node concept="Xl_RD" id="2y5ZLyw96lH" role="37wK5m">
                  <property role="Xl_RC" value="No determinismo" />
                </node>
                <node concept="37vLTw" id="2y5ZLyw96lI" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyw96jn" resolve="noDeterminismo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw96lJ" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyw96lK" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyw96lL" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96lM" role="37vLTx">
              <node concept="37vLTw" id="2y5ZLyw96lN" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyw96lO" role="3uHU7w">
                <ref role="37wK5l" node="2y5ZLyw96ok" resolve="lista" />
                <node concept="Xl_RD" id="2y5ZLyw96lP" role="37wK5m">
                  <property role="Xl_RC" value="Alarmas alcanzables" />
                </node>
                <node concept="37vLTw" id="2y5ZLyw96lQ" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyw96jt" resolve="alarmasAlcanzables" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw96lR" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyw96lS" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyw96lT" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96lU" role="37vLTx">
              <node concept="37vLTw" id="2y5ZLyw96lV" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
              </node>
              <node concept="1rXfSq" id="2y5ZLyw96lW" role="3uHU7w">
                <ref role="37wK5l" node="2y5ZLyw96ok" resolve="lista" />
                <node concept="Xl_RD" id="2y5ZLyw96lX" role="37wK5m">
                  <property role="Xl_RC" value="Alarmas sin recuperación" />
                </node>
                <node concept="37vLTw" id="2y5ZLyw96lY" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyw96jz" resolve="sinRecuperacion" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLyw96lZ" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLyw96m0" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLyw96m1" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96m2" role="37vLTx">
              <node concept="3cpWs3" id="2y5ZLyw96m3" role="3uHU7B">
                <node concept="3cpWs3" id="2y5ZLyw96m4" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLyw96m5" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLyw96m6" role="3uHU7w">
                    <property role="Xl_RC" value="  ER equivalente (Kleene 2, eliminación de estados): " />
                  </node>
                </node>
                <node concept="2YIFZM" id="2y5ZLyw96u0" role="3uHU7w">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvKfuh" resolve="StateEliminator" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvKfuj" resolve="toRegexString" />
                  <node concept="37vLTw" id="2y5ZLyw96u1" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyw96he" resolve="nfa" />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyw96u2" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyw96hm" resolve="sigma" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLyw96ma" role="3uHU7w">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyw96mb" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLyw96mc" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLyw96hp" resolve="texto" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw96md" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyw96me" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="P$JXv" id="2y5ZLyw96mf" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLyw96mg" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw96mh" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLyw96q_" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLyw96qA" role="1PaTwD">
            <property role="3oM_SC" value="Consistencia" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw96qB" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw96qC" role="1PaTwD">
            <property role="3oM_SC" value="un" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw96qD" role="1PaTwD">
            <property role="3oM_SC" value="dispositivo" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw96qE" role="1PaTwD">
            <property role="3oM_SC" value="(§4.2)" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw96qF" role="1PaTwD">
            <property role="3oM_SC" value="+" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw96qG" role="1PaTwD">
            <property role="3oM_SC" value="ER" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw96qH" role="1PaTwD">
            <property role="3oM_SC" value="equivalente" />
          </node>
          <node concept="3oM_SD" id="2y5ZLyw96qI" role="1PaTwD">
            <property role="3oM_SC" value="(§4.5)." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLywbzI3" role="jymVt">
      <property role="TrG5h" value="politica" />
      <node concept="37vLTG" id="2y5ZLywbzI4" role="3clF46">
        <property role="TrG5h" value="nombre" />
        <node concept="3uibUv" id="2y5ZLywbzI5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLywbzI6" role="3clF46">
        <property role="TrG5h" value="prohibida" />
        <node concept="10P_77" id="2y5ZLywbzI7" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2y5ZLywbzI8" role="3clF46">
        <property role="TrG5h" value="dispositivo" />
        <node concept="3uibUv" id="2y5ZLywbzI9" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLywbzIa" role="3clF46">
        <property role="TrG5h" value="nfa" />
        <node concept="3uibUv" id="2y5ZLywbzIb" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLywbzIc" role="3clF46">
        <property role="TrG5h" value="patron" />
        <node concept="3uibUv" id="2y5ZLywbzId" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHYk1" resolve="Nfa" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLywbzIe" role="3clF46">
        <property role="TrG5h" value="sigma" />
        <node concept="3uibUv" id="2y5ZLywbzIf" role="1tU5fm">
          <ref role="3uigEE" to="op1a:2y5ZLyvHE5d" resolve="Alphabet" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLywbzIg" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLywbzIi" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywbzIh" role="3cpWs9">
            <property role="TrG5h" value="modo" />
            <node concept="3uibUv" id="2y5ZLywbzIj" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="2y5ZLywbzIk" role="33vP2m">
              <property role="Xl_RC" value="REQUIRED" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2y5ZLywbzIl" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLywbzIm" role="3clFbw">
            <ref role="3cqZAo" node="2y5ZLywbzI6" resolve="prohibida" />
          </node>
          <node concept="3clFbS" id="2y5ZLywbzIo" role="3clFbx">
            <node concept="3clFbF" id="2y5ZLywbzIp" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLywbzIq" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLywbzIr" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLywbzIh" resolve="modo" />
                </node>
                <node concept="Xl_RD" id="2y5ZLywbzIs" role="37vLTx">
                  <property role="Xl_RC" value="FORBIDDEN" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywbzIu" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywbzIt" role="3cpWs9">
            <property role="TrG5h" value="texto" />
            <node concept="3uibUv" id="2y5ZLywbzIv" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="2y5ZLywbzIw" role="33vP2m">
              <node concept="3cpWs3" id="2y5ZLywbzIx" role="3uHU7B">
                <node concept="3cpWs3" id="2y5ZLywbzIy" role="3uHU7B">
                  <node concept="3cpWs3" id="2y5ZLywbzIz" role="3uHU7B">
                    <node concept="3cpWs3" id="2y5ZLywbzI$" role="3uHU7B">
                      <node concept="3cpWs3" id="2y5ZLywbzI_" role="3uHU7B">
                        <node concept="Xl_RD" id="2y5ZLywbzIA" role="3uHU7B">
                          <property role="Xl_RC" value="\nPolítica " />
                        </node>
                        <node concept="37vLTw" id="2y5ZLywbzIB" role="3uHU7w">
                          <ref role="3cqZAo" node="2y5ZLywbzI4" resolve="nombre" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2y5ZLywbzIC" role="3uHU7w">
                        <property role="Xl_RC" value=" [" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2y5ZLywbzID" role="3uHU7w">
                      <ref role="3cqZAo" node="2y5ZLywbzIh" resolve="modo" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywbzIE" role="3uHU7w">
                    <property role="Xl_RC" value="] sobre " />
                  </node>
                </node>
                <node concept="37vLTw" id="2y5ZLywbzIF" role="3uHU7w">
                  <ref role="3cqZAo" node="2y5ZLywbzI8" resolve="dispositivo" />
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLywbzIG" role="3uHU7w">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2y5ZLywbzIH" role="3cqZAp">
          <node concept="22lmx$" id="2y5ZLywbzII" role="3clFbw">
            <node concept="3clFbC" id="2y5ZLywbzIJ" role="3uHU7B">
              <node concept="37vLTw" id="2y5ZLywbzIK" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLywbzIa" resolve="nfa" />
              </node>
              <node concept="10Nm6u" id="2y5ZLywbzIL" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="2y5ZLywbzIM" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLywbzIN" role="3uHU7B">
                <ref role="3cqZAo" node="2y5ZLywbzIc" resolve="patron" />
              </node>
              <node concept="10Nm6u" id="2y5ZLywbzIO" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLywbzIQ" role="3clFbx">
            <node concept="3cpWs6" id="2y5ZLywbzIR" role="3cqZAp">
              <node concept="3cpWs3" id="2y5ZLywbzIS" role="3cqZAk">
                <node concept="37vLTw" id="2y5ZLywbzIT" role="3uHU7B">
                  <ref role="3cqZAo" node="2y5ZLywbzIt" resolve="texto" />
                </node>
                <node concept="Xl_RD" id="2y5ZLywbzIU" role="3uHU7w">
                  <property role="Xl_RC" value="  (no se verifica: el dispositivo o la expresión no son válidos)\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywbzIW" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywbzIV" role="3cpWs9">
            <property role="TrG5h" value="h" />
            <node concept="3uibUv" id="2y5ZLywbzIX" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywbzK8" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyw1die" resolve="Razonador" />
              <ref role="37wK5l" to="op1a:2y5ZLyw1dnA" resolve="verificarPolitica" />
              <node concept="37vLTw" id="2y5ZLywbzK9" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywbzIa" resolve="nfa" />
              </node>
              <node concept="37vLTw" id="2y5ZLywbzKa" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywbzIc" resolve="patron" />
              </node>
              <node concept="37vLTw" id="2y5ZLywbzKb" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywbzIe" resolve="sigma" />
              </node>
              <node concept="37vLTw" id="2y5ZLywbzKc" role="37wK5m">
                <ref role="3cqZAo" node="2y5ZLywbzI6" resolve="prohibida" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2y5ZLywbzJ4" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLywbzJ3" role="3cpWs9">
            <property role="TrG5h" value="minimo" />
            <node concept="3uibUv" id="2y5ZLywbzJ5" role="1tU5fm">
              <ref role="3uigEE" to="op1a:2y5ZLyvIooo" resolve="Dfa" />
            </node>
            <node concept="2YIFZM" id="2y5ZLywbzKf" role="33vP2m">
              <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
              <ref role="37wK5l" to="op1a:2y5ZLyvJ3yO" resolve="minimize" />
              <node concept="2YIFZM" id="2y5ZLywbzKC" role="37wK5m">
                <ref role="1Pybhc" to="op1a:2y5ZLyvISWL" resolve="SubsetConstruction" />
                <ref role="37wK5l" to="op1a:2y5ZLyvISWN" resolve="determinize" />
                <node concept="37vLTw" id="2y5ZLywbzKD" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLywbzIc" resolve="patron" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2y5ZLywbzJ9" role="3cqZAp">
          <node concept="3clFbC" id="2y5ZLywbzJa" role="3clFbw">
            <node concept="2OqwBi" id="2y5ZLywbzKl" role="3uHU7B">
              <node concept="37vLTw" id="2y5ZLywbzKk" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLywbzIV" resolve="h" />
              </node>
              <node concept="2OwXpG" id="2y5ZLywbzKm" role="2OqNvi">
                <ref role="2Oxat5" to="op1a:2y5ZLyw0JYW" resolve="severidad" />
              </node>
            </node>
            <node concept="10M0yZ" id="2y5ZLywbzKp" role="3uHU7w">
              <ref role="1PxDUh" to="op1a:2y5ZLyw0JYi" resolve="Hallazgo" />
              <ref role="3cqZAo" to="op1a:2y5ZLyw0JYs" resolve="ERROR" />
            </node>
          </node>
          <node concept="9aQIb" id="2y5ZLywbzJr" role="9aQIa">
            <node concept="3clFbS" id="2y5ZLywbzJs" role="9aQI4">
              <node concept="3clFbF" id="2y5ZLywbzJt" role="3cqZAp">
                <node concept="37vLTI" id="2y5ZLywbzJu" role="3clFbG">
                  <node concept="37vLTw" id="2y5ZLywbzJv" role="37vLTJ">
                    <ref role="3cqZAo" node="2y5ZLywbzIt" resolve="texto" />
                  </node>
                  <node concept="3cpWs3" id="2y5ZLywbzJw" role="37vLTx">
                    <node concept="37vLTw" id="2y5ZLywbzJx" role="3uHU7B">
                      <ref role="3cqZAo" node="2y5ZLywbzIt" resolve="texto" />
                    </node>
                    <node concept="Xl_RD" id="2y5ZLywbzJy" role="3uHU7w">
                      <property role="Xl_RC" value="  Veredicto: CUMPLE\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLywbzJe" role="3clFbx">
            <node concept="3clFbF" id="2y5ZLywbzJf" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLywbzJg" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLywbzJh" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLywbzIt" resolve="texto" />
                </node>
                <node concept="3cpWs3" id="2y5ZLywbzJi" role="37vLTx">
                  <node concept="3cpWs3" id="2y5ZLywbzJj" role="3uHU7B">
                    <node concept="3cpWs3" id="2y5ZLywbzJk" role="3uHU7B">
                      <node concept="37vLTw" id="2y5ZLywbzJl" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLywbzIt" resolve="texto" />
                      </node>
                      <node concept="Xl_RD" id="2y5ZLywbzJm" role="3uHU7w">
                        <property role="Xl_RC" value="  Veredicto: VIOLADA\n  Contraejemplo mínimo: " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2y5ZLywbzL7" role="3uHU7w">
                      <node concept="2OqwBi" id="2y5ZLywbzKt" role="2Oq$k0">
                        <node concept="37vLTw" id="2y5ZLywbzKs" role="2Oq$k0">
                          <ref role="3cqZAo" node="2y5ZLywbzIV" resolve="h" />
                        </node>
                        <node concept="2OwXpG" id="2y5ZLywbzKu" role="2OqNvi">
                          <ref role="2Oxat5" to="op1a:2y5ZLyw0JZ8" resolve="mensaje" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2y5ZLywbzL8" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                        <node concept="Xl_RD" id="2y5ZLywbzL9" role="37wK5m">
                          <property role="Xl_RC" value="Política violada: " />
                        </node>
                        <node concept="Xl_RD" id="2y5ZLywbzLa" role="37wK5m">
                          <property role="Xl_RC" value="" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywbzJq" role="3uHU7w">
                    <property role="Xl_RC" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2y5ZLywbzJz" role="3cqZAp">
          <node concept="37vLTI" id="2y5ZLywbzJ$" role="3clFbG">
            <node concept="37vLTw" id="2y5ZLywbzJ_" role="37vLTJ">
              <ref role="3cqZAo" node="2y5ZLywbzIt" resolve="texto" />
            </node>
            <node concept="3cpWs3" id="2y5ZLywbzJA" role="37vLTx">
              <node concept="3cpWs3" id="2y5ZLywbzJB" role="3uHU7B">
                <node concept="3cpWs3" id="2y5ZLywbzJC" role="3uHU7B">
                  <node concept="37vLTw" id="2y5ZLywbzJD" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLywbzIt" resolve="texto" />
                  </node>
                  <node concept="Xl_RD" id="2y5ZLywbzJE" role="3uHU7w">
                    <property role="Xl_RC" value="  " />
                  </node>
                </node>
                <node concept="2YIFZM" id="2y5ZLywbzK$" role="3uHU7w">
                  <ref role="1Pybhc" to="op1a:2y5ZLyvJ3yM" resolve="MooreMinimizer" />
                  <ref role="37wK5l" to="op1a:2y5ZLyvJ3BU" resolve="describe" />
                  <node concept="37vLTw" id="2y5ZLywbzK_" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLywbzJ3" resolve="minimo" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2y5ZLywbzJH" role="3uHU7w">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLywbzJI" role="3cqZAp">
          <node concept="37vLTw" id="2y5ZLywbzJJ" role="3cqZAk">
            <ref role="3cqZAo" node="2y5ZLywbzIt" resolve="texto" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLywbzJK" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLywbzJL" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="P$JXv" id="2y5ZLywbzJM" role="lGtFl">
        <node concept="1PaTwC" id="2y5ZLywbzJN" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywbzJO" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="2y5ZLywbzJP" role="1Vez_I">
          <node concept="3oM_SD" id="2y5ZLywbzJQ" role="1PaTwD">
            <property role="3oM_SC" value="Verificación" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzJR" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzJS" role="1PaTwD">
            <property role="3oM_SC" value="una" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzJT" role="1PaTwD">
            <property role="3oM_SC" value="política" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzJU" role="1PaTwD">
            <property role="3oM_SC" value="(§4.4)" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzJV" role="1PaTwD">
            <property role="3oM_SC" value="+" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzJW" role="1PaTwD">
            <property role="3oM_SC" value="tamaño" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzJX" role="1PaTwD">
            <property role="3oM_SC" value="del" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzJY" role="1PaTwD">
            <property role="3oM_SC" value="AFD" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzJZ" role="1PaTwD">
            <property role="3oM_SC" value="mínimo" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzK0" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzK1" role="1PaTwD">
            <property role="3oM_SC" value="su" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzK2" role="1PaTwD">
            <property role="3oM_SC" value="ER" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzK3" role="1PaTwD">
            <property role="3oM_SC" value="(§4.3," />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzK4" role="1PaTwD">
            <property role="3oM_SC" value="con" />
          </node>
          <node concept="3oM_SD" id="2y5ZLywbzK5" role="1PaTwD">
            <property role="3oM_SC" value="sumidero)." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2y5ZLyw96o2" role="jymVt">
      <property role="TrG5h" value="agregar" />
      <node concept="37vLTG" id="2y5ZLyw96o3" role="3clF46">
        <property role="TrG5h" value="lista" />
        <node concept="3uibUv" id="2y5ZLyw96o4" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2y5ZLyw96o5" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyw96o6" role="3clF46">
        <property role="TrG5h" value="elemento" />
        <node concept="3uibUv" id="2y5ZLyw96o7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyw96o8" role="3clF47">
        <node concept="3clFbJ" id="2y5ZLyw96o9" role="3cqZAp">
          <node concept="3fqX7Q" id="2y5ZLyw96oa" role="3clFbw">
            <node concept="2OqwBi" id="2y5ZLyw96We" role="3fr31v">
              <node concept="37vLTw" id="2y5ZLyw96uy" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyw96o3" resolve="lista" />
              </node>
              <node concept="liA8E" id="2y5ZLyw96Wf" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                <node concept="37vLTw" id="2y5ZLyw96Wg" role="37wK5m">
                  <ref role="3cqZAo" node="2y5ZLyw96o6" resolve="elemento" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyw96oe" role="3clFbx">
            <node concept="3clFbF" id="2y5ZLyw96of" role="3cqZAp">
              <node concept="2OqwBi" id="2y5ZLyw96Yy" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyw96uB" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyw96o3" resolve="lista" />
                </node>
                <node concept="liA8E" id="2y5ZLyw96Yz" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="2y5ZLyw96Y$" role="37wK5m">
                    <ref role="3cqZAo" node="2y5ZLyw96o6" resolve="elemento" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw96oi" role="1B3o_S" />
      <node concept="3cqZAl" id="2y5ZLyw96oj" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2y5ZLyw96ok" role="jymVt">
      <property role="TrG5h" value="lista" />
      <node concept="37vLTG" id="2y5ZLyw96ol" role="3clF46">
        <property role="TrG5h" value="titulo" />
        <node concept="3uibUv" id="2y5ZLyw96om" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2y5ZLyw96on" role="3clF46">
        <property role="TrG5h" value="elementos" />
        <node concept="3uibUv" id="2y5ZLyw96oo" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2y5ZLyw96op" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2y5ZLyw96oq" role="3clF47">
        <node concept="3cpWs8" id="2y5ZLyw96os" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96or" role="3cpWs9">
            <property role="TrG5h" value="texto" />
            <node concept="3uibUv" id="2y5ZLyw96ot" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="2y5ZLyw96ou" role="33vP2m">
              <node concept="3cpWs3" id="2y5ZLyw96ov" role="3uHU7B">
                <node concept="3cpWs3" id="2y5ZLyw96ow" role="3uHU7B">
                  <node concept="Xl_RD" id="2y5ZLyw96ox" role="3uHU7B">
                    <property role="Xl_RC" value="  " />
                  </node>
                  <node concept="37vLTw" id="2y5ZLyw96oy" role="3uHU7w">
                    <ref role="3cqZAo" node="2y5ZLyw96ol" resolve="titulo" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2y5ZLyw96oz" role="3uHU7w">
                  <property role="Xl_RC" value=": " />
                </node>
              </node>
              <node concept="2OqwBi" id="2y5ZLyw970Q" role="3uHU7w">
                <node concept="37vLTw" id="2y5ZLyw96uG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2y5ZLyw96on" resolve="elementos" />
                </node>
                <node concept="liA8E" id="2y5ZLyw970R" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2y5ZLyw96o_" role="3cqZAp">
          <node concept="3cpWsn" id="2y5ZLyw96oA" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2y5ZLyw96oC" role="1tU5fm" />
            <node concept="3cmrfG" id="2y5ZLyw96oD" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2y5ZLyw96oE" role="1Dwp0S">
            <node concept="37vLTw" id="2y5ZLyw96oF" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyw96oA" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2y5ZLyw9739" role="3uHU7w">
              <node concept="37vLTw" id="2y5ZLyw96uK" role="2Oq$k0">
                <ref role="3cqZAo" node="2y5ZLyw96on" resolve="elementos" />
              </node>
              <node concept="liA8E" id="2y5ZLyw973a" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="2y5ZLyw96oI" role="1Dwrff">
            <node concept="37vLTw" id="2y5ZLyw96oJ" role="2$L3a6">
              <ref role="3cqZAo" node="2y5ZLyw96oA" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2y5ZLyw96oL" role="2LFqv$">
            <node concept="3clFbJ" id="2y5ZLyw96oM" role="3cqZAp">
              <node concept="3clFbC" id="2y5ZLyw96oN" role="3clFbw">
                <node concept="37vLTw" id="2y5ZLyw96oO" role="3uHU7B">
                  <ref role="3cqZAo" node="2y5ZLyw96oA" resolve="i" />
                </node>
                <node concept="3cmrfG" id="2y5ZLyw96oP" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="9aQIb" id="2y5ZLyw96oY" role="9aQIa">
                <node concept="3clFbS" id="2y5ZLyw96oZ" role="9aQI4">
                  <node concept="3clFbF" id="2y5ZLyw96p0" role="3cqZAp">
                    <node concept="37vLTI" id="2y5ZLyw96p1" role="3clFbG">
                      <node concept="37vLTw" id="2y5ZLyw96p2" role="37vLTJ">
                        <ref role="3cqZAo" node="2y5ZLyw96or" resolve="texto" />
                      </node>
                      <node concept="3cpWs3" id="2y5ZLyw96p3" role="37vLTx">
                        <node concept="37vLTw" id="2y5ZLyw96p4" role="3uHU7B">
                          <ref role="3cqZAo" node="2y5ZLyw96or" resolve="texto" />
                        </node>
                        <node concept="Xl_RD" id="2y5ZLyw96p5" role="3uHU7w">
                          <property role="Xl_RC" value="; " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2y5ZLyw96oR" role="3clFbx">
                <node concept="3clFbF" id="2y5ZLyw96oS" role="3cqZAp">
                  <node concept="37vLTI" id="2y5ZLyw96oT" role="3clFbG">
                    <node concept="37vLTw" id="2y5ZLyw96oU" role="37vLTJ">
                      <ref role="3cqZAo" node="2y5ZLyw96or" resolve="texto" />
                    </node>
                    <node concept="3cpWs3" id="2y5ZLyw96oV" role="37vLTx">
                      <node concept="37vLTw" id="2y5ZLyw96oW" role="3uHU7B">
                        <ref role="3cqZAo" node="2y5ZLyw96or" resolve="texto" />
                      </node>
                      <node concept="Xl_RD" id="2y5ZLyw96oX" role="3uHU7w">
                        <property role="Xl_RC" value=" -&gt; " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2y5ZLyw96p6" role="3cqZAp">
              <node concept="37vLTI" id="2y5ZLyw96p7" role="3clFbG">
                <node concept="37vLTw" id="2y5ZLyw96p8" role="37vLTJ">
                  <ref role="3cqZAo" node="2y5ZLyw96or" resolve="texto" />
                </node>
                <node concept="3cpWs3" id="2y5ZLyw96p9" role="37vLTx">
                  <node concept="37vLTw" id="2y5ZLyw96pa" role="3uHU7B">
                    <ref role="3cqZAo" node="2y5ZLyw96or" resolve="texto" />
                  </node>
                  <node concept="2OqwBi" id="2y5ZLyw975s" role="3uHU7w">
                    <node concept="37vLTw" id="2y5ZLyw96uO" role="2Oq$k0">
                      <ref role="3cqZAo" node="2y5ZLyw96on" resolve="elementos" />
                    </node>
                    <node concept="liA8E" id="2y5ZLyw975t" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="37vLTw" id="2y5ZLyw975u" role="37wK5m">
                        <ref role="3cqZAo" node="2y5ZLyw96oA" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2y5ZLyw96pd" role="3cqZAp">
          <node concept="3cpWs3" id="2y5ZLyw96pe" role="3cqZAk">
            <node concept="37vLTw" id="2y5ZLyw96pf" role="3uHU7B">
              <ref role="3cqZAo" node="2y5ZLyw96or" resolve="texto" />
            </node>
            <node concept="Xl_RD" id="2y5ZLyw96pg" role="3uHU7w">
              <property role="Xl_RC" value="\n" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2y5ZLyw96ph" role="1B3o_S" />
      <node concept="3uibUv" id="2y5ZLyw96pi" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
</model>

