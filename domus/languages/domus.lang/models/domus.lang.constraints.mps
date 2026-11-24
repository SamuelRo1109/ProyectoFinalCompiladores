<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c823ce89-c6b0-4efd-880d-e9237068d5b3(domus.lang.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="p4tm" ref="r:dbde8baf-0fe0-4595-838d-181b53f5988b(domus.lang.structure)" />
    <import index="yke2" ref="r:4dce9d5d-5ab6-48ea-bb93-9da0a6a589ad(domus.lang.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="3S1cLRkX3qh">
    <ref role="1M2myG" to="p4tm:57H1jONk_j1" resolve="Transition" />
    <node concept="1N5Pfh" id="3S1cLRkX3qi" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_jd" resolve="source" />
      <node concept="3dgokm" id="3S1cLRkX3qj" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX3qk" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX3ql" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX3qm" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX3qn" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX3qo" role="2Oq$k0">
                  <node concept="2OqwBi" id="3S1cLRkX3qp" role="2Oq$k0">
                    <node concept="2rP1CM" id="3S1cLRkX3qq" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="3S1cLRkX3qr" role="2OqNvi">
                      <node concept="1xMEDy" id="3S1cLRkX3qu" role="1xVPHs">
                        <node concept="chp4Y" id="3S1cLRkX3qv" role="ri$Ld">
                          <ref role="cht4Q" to="p4tm:57H1jONk_iU" resolve="IDeviceElement" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="3S1cLRkX3qw" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="3S1cLRkX3qx" role="2OqNvi">
                    <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3S1cLRkX3qy" role="2OqNvi">
                  <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="3S1cLRkX3qz" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_je" resolve="event" />
      <node concept="3dgokm" id="3S1cLRkX3q$" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX3q_" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX3qA" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX3qB" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX3qC" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX3qD" role="2Oq$k0">
                  <node concept="2OqwBi" id="3S1cLRkX3qE" role="2Oq$k0">
                    <node concept="2rP1CM" id="3S1cLRkX3qF" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="3S1cLRkX3qG" role="2OqNvi">
                      <node concept="1xMEDy" id="3S1cLRkX3qJ" role="1xVPHs">
                        <node concept="chp4Y" id="3S1cLRkX3qK" role="ri$Ld">
                          <ref role="cht4Q" to="p4tm:57H1jONk_iU" resolve="IDeviceElement" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="3S1cLRkX3qL" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="3S1cLRkX3qM" role="2OqNvi">
                    <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3S1cLRkX3qN" role="2OqNvi">
                  <ref role="3TtcxE" to="p4tm:57H1jONk_jh" resolve="events" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="3S1cLRkX3qO" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_jf" resolve="target" />
      <node concept="3dgokm" id="3S1cLRkX3qP" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX3qQ" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX3qR" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX3qS" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX3qT" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX3qU" role="2Oq$k0">
                  <node concept="2OqwBi" id="3S1cLRkX3qV" role="2Oq$k0">
                    <node concept="2rP1CM" id="3S1cLRkX3qW" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="3S1cLRkX3qX" role="2OqNvi">
                      <node concept="1xMEDy" id="3S1cLRkX3r0" role="1xVPHs">
                        <node concept="chp4Y" id="3S1cLRkX3r1" role="ri$Ld">
                          <ref role="cht4Q" to="p4tm:57H1jONk_iU" resolve="IDeviceElement" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="3S1cLRkX3r2" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="3S1cLRkX3r3" role="2OqNvi">
                    <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3S1cLRkX3r4" role="2OqNvi">
                  <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3S1cLRkX441">
    <ref role="1M2myG" to="p4tm:57H1jONk_jF" resolve="ScenarioStep" />
    <node concept="1N5Pfh" id="3S1cLRkX442" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_jM" resolve="event" />
      <node concept="3dgokm" id="3S1cLRkX443" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX444" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX445" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX446" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX447" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX448" role="2Oq$k0">
                  <node concept="2OqwBi" id="3S1cLRkX449" role="2Oq$k0">
                    <node concept="2rP1CM" id="3S1cLRkX44a" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="3S1cLRkX44b" role="2OqNvi">
                      <node concept="1xMEDy" id="3S1cLRkX44e" role="1xVPHs">
                        <node concept="chp4Y" id="3S1cLRkX44f" role="ri$Ld">
                          <ref role="cht4Q" to="p4tm:57H1jONk_jG" resolve="Scenario" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="3S1cLRkX44g" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3S1cLRkX44h" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_jP" resolve="device" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3S1cLRkX44i" role="2OqNvi">
                  <ref role="3TtcxE" to="p4tm:57H1jONk_jh" resolve="events" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3S1cLRkX44j">
    <ref role="1M2myG" to="p4tm:57H1jONk_jG" resolve="Scenario" />
    <node concept="1N5Pfh" id="3S1cLRkX44k" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_jP" resolve="device" />
      <node concept="3dgokm" id="3S1cLRkX44l" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX44m" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX44n" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX44o" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX44p" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX44q" role="2Oq$k0">
                  <node concept="2rP1CM" id="3S1cLRkX44r" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="3S1cLRkX44s" role="2OqNvi">
                    <node concept="1xMEDy" id="3S1cLRkX44v" role="1xVPHs">
                      <node concept="chp4Y" id="3S1cLRkX44w" role="ri$Ld">
                        <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="3S1cLRkX44x" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3S1cLRkX44y" role="2OqNvi">
                  <ref role="3TtcxE" to="p4tm:57H1jONk_jV" resolve="devices" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3S1cLRkX44z">
    <ref role="1M2myG" to="p4tm:57H1jONk_jD" resolve="Policy" />
    <node concept="1N5Pfh" id="3S1cLRkX44$" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_jJ" resolve="device" />
      <node concept="3dgokm" id="3S1cLRkX44_" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX44A" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX44B" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX44C" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX44D" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX44E" role="2Oq$k0">
                  <node concept="2rP1CM" id="3S1cLRkX44F" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="3S1cLRkX44G" role="2OqNvi">
                    <node concept="1xMEDy" id="3S1cLRkX44J" role="1xVPHs">
                      <node concept="chp4Y" id="3S1cLRkX44K" role="ri$Ld">
                        <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="3S1cLRkX44L" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3S1cLRkX44M" role="2OqNvi">
                  <ref role="3TtcxE" to="p4tm:57H1jONk_jV" resolve="devices" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3S1cLRkX44N">
    <ref role="1M2myG" to="p4tm:57H1jONk_iX" resolve="Role" />
    <node concept="EnEH3" id="3S1cLRkX44O" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="3S1cLRkX44P" role="QCWH9">
        <node concept="3clFbS" id="3S1cLRkX44Q" role="2VODD2">
          <node concept="3cpWs6" id="3S1cLRkX7ki" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX7km" role="3cqZAk">
              <ref role="1Pybhc" node="3S1cLRkX7fs" resolve="IdentifierUtil" />
              <ref role="37wK5l" node="3S1cLRkX7fA" resolve="isIdentifier" />
              <node concept="1Wqviy" id="3S1cLRkX7kn" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="3S1cLRkX44R" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_j3" resolve="parent" />
      <node concept="3dgokm" id="3S1cLRkX44S" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX44T" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX44U" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX44V" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX44W" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX44X" role="2Oq$k0">
                  <node concept="2OqwBi" id="3S1cLRkX44Y" role="2Oq$k0">
                    <node concept="2rP1CM" id="3S1cLRkX44Z" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="3S1cLRkX450" role="2OqNvi">
                      <node concept="1xMEDy" id="3S1cLRkX453" role="1xVPHs">
                        <node concept="chp4Y" id="3S1cLRkX454" role="ri$Ld">
                          <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="3S1cLRkX455" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="3S1cLRkX456" role="2OqNvi">
                    <ref role="3TtcxE" to="p4tm:57H1jONk_jU" resolve="roles" />
                  </node>
                </node>
                <node concept="3zZkjj" id="3S1cLRkX457" role="2OqNvi">
                  <node concept="1bVj0M" id="3S1cLRkX45c" role="23t8la">
                    <node concept="gl6BB" id="3S1cLRkX45d" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <property role="2Lvdk3" value="it" />
                      <node concept="2jxLKc" id="3S1cLRkX45f" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="3S1cLRkX45g" role="1bW5cS">
                      <node concept="3clFbF" id="3S1cLRkX45h" role="3cqZAp">
                        <node concept="17QLQc" id="3S1cLRkX45i" role="3clFbG">
                          <node concept="37vLTw" id="3S1cLRkX45j" role="3uHU7B">
                            <ref role="3cqZAo" node="3S1cLRkX45d" resolve="it" />
                          </node>
                          <node concept="2rP1CM" id="3S1cLRkX45k" role="3uHU7w" />
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
  <node concept="1M2fIO" id="3S1cLRkX45l">
    <ref role="1M2myG" to="p4tm:57H1jONk_iY" resolve="Event" />
    <node concept="EnEH3" id="3S1cLRkX45m" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="3S1cLRkX45n" role="QCWH9">
        <node concept="3clFbS" id="3S1cLRkX45o" role="2VODD2">
          <node concept="3cpWs6" id="3S1cLRkX7On" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX7Or" role="3cqZAk">
              <ref role="1Pybhc" node="3S1cLRkX7fs" resolve="IdentifierUtil" />
              <ref role="37wK5l" node="3S1cLRkX7fA" resolve="isIdentifier" />
              <node concept="1Wqviy" id="3S1cLRkX7Os" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="3S1cLRkX45p" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_j6" resolve="requiredRole" />
      <node concept="3dgokm" id="3S1cLRkX45q" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX45r" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX45s" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX45t" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX45u" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX45v" role="2Oq$k0">
                  <node concept="2rP1CM" id="3S1cLRkX45w" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="3S1cLRkX45x" role="2OqNvi">
                    <node concept="1xMEDy" id="3S1cLRkX45$" role="1xVPHs">
                      <node concept="chp4Y" id="3S1cLRkX45_" role="ri$Ld">
                        <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="3S1cLRkX45A" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3S1cLRkX45B" role="2OqNvi">
                  <ref role="3TtcxE" to="p4tm:57H1jONk_jU" resolve="roles" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3S1cLRkX45C">
    <ref role="1M2myG" to="p4tm:57H1jONk_jE" resolve="ActorRef" />
    <node concept="1N5Pfh" id="3S1cLRkX45D" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_jL" resolve="role" />
      <node concept="3dgokm" id="3S1cLRkX45E" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX45F" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX45G" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX45H" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX45I" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX45J" role="2Oq$k0">
                  <node concept="2rP1CM" id="3S1cLRkX45K" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="3S1cLRkX45L" role="2OqNvi">
                    <node concept="1xMEDy" id="3S1cLRkX45O" role="1xVPHs">
                      <node concept="chp4Y" id="3S1cLRkX45P" role="ri$Ld">
                        <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="3S1cLRkX45Q" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3S1cLRkX45R" role="2OqNvi">
                  <ref role="3TtcxE" to="p4tm:57H1jONk_jU" resolve="roles" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3S1cLRkX45S">
    <ref role="1M2myG" to="p4tm:57H1jONk_jq" resolve="SymbolExpr" />
    <node concept="1N5Pfh" id="3S1cLRkX45T" role="1Mr941">
      <ref role="1N5Vy1" to="p4tm:57H1jONk_jA" resolve="event" />
      <node concept="3dgokm" id="3S1cLRkX45U" role="1N6uqs">
        <node concept="3clFbS" id="3S1cLRkX45V" role="2VODD2">
          <node concept="3clFbF" id="3S1cLRkX45W" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX45X" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="3S1cLRkX45Y" role="37wK5m">
                <node concept="2OqwBi" id="3S1cLRkX45Z" role="2Oq$k0">
                  <node concept="2rP1CM" id="3S1cLRkX460" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="3S1cLRkX461" role="2OqNvi">
                    <node concept="1xMEDy" id="3S1cLRkX464" role="1xVPHs">
                      <node concept="chp4Y" id="3S1cLRkX465" role="ri$Ld">
                        <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="3S1cLRkX466" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3zqWPK" id="3S1cLRkX467" role="2OqNvi">
                  <ref role="37wK5l" to="yke2:4iWSnKEtrU5" resolve="allEvents" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3S1cLRkX468">
    <ref role="1M2myG" to="p4tm:57H1jONk_j2" resolve="Device" />
    <node concept="EnEH3" id="3S1cLRkX469" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="3S1cLRkX46a" role="QCWH9">
        <node concept="3clFbS" id="3S1cLRkX46b" role="2VODD2">
          <node concept="3cpWs6" id="3S1cLRkX8eW" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX8f0" role="3cqZAk">
              <ref role="1Pybhc" node="3S1cLRkX7fs" resolve="IdentifierUtil" />
              <ref role="37wK5l" node="3S1cLRkX7fA" resolve="isIdentifier" />
              <node concept="1Wqviy" id="3S1cLRkX8f1" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3S1cLRkX46c">
    <ref role="1M2myG" to="p4tm:57H1jONk_iZ" resolve="State" />
    <node concept="EnEH3" id="3S1cLRkX46d" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="3S1cLRkX46e" role="QCWH9">
        <node concept="3clFbS" id="3S1cLRkX46f" role="2VODD2">
          <node concept="3cpWs6" id="3S1cLRkX8pg" role="3cqZAp">
            <node concept="2YIFZM" id="3S1cLRkX8pk" role="3cqZAk">
              <ref role="1Pybhc" node="3S1cLRkX7fs" resolve="IdentifierUtil" />
              <ref role="37wK5l" node="3S1cLRkX7fA" resolve="isIdentifier" />
              <node concept="1Wqviy" id="3S1cLRkX8pl" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3S1cLRkX7fs">
    <property role="TrG5h" value="IdentifierUtil" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="3S1cLRkX7ft" role="1B3o_S" />
    <node concept="3UR2Jj" id="3S1cLRkX7fN" role="lGtFl">
      <node concept="1PaTwC" id="3S1cLRkX7fO" role="1Vez_I">
        <node concept="3oM_SD" id="3S1cLRkX7fP" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="3S1cLRkX7fQ" role="1Vez_I">
        <node concept="3oM_SD" id="3S1cLRkX7fR" role="1PaTwD">
          <property role="3oM_SC" value="Lenguaje" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7fS" role="1PaTwD">
          <property role="3oM_SC" value="regular" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7fT" role="1PaTwD">
          <property role="3oM_SC" value="ID" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7fU" role="1PaTwD">
          <property role="3oM_SC" value="=" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7fV" role="1PaTwD">
          <property role="3oM_SC" value="[A-Za-z_][A-Za-z0-9_]*" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7fW" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7fX" role="1PaTwD">
          <property role="3oM_SC" value="la" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7fY" role="1PaTwD">
          <property role="3oM_SC" value="especificacion" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7fZ" role="1PaTwD">
          <property role="3oM_SC" value="(seccion" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7g0" role="1PaTwD">
          <property role="3oM_SC" value="3.1)." />
        </node>
      </node>
      <node concept="1PaTwC" id="3S1cLRkX7g1" role="1Vez_I">
        <node concept="3oM_SD" id="3S1cLRkX7g2" role="1PaTwD">
          <property role="3oM_SC" value="Lo" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7g3" role="1PaTwD">
          <property role="3oM_SC" value="usan" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7g4" role="1PaTwD">
          <property role="3oM_SC" value="los" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7g5" role="1PaTwD">
          <property role="3oM_SC" value="validadores" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7g6" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7g7" role="1PaTwD">
          <property role="3oM_SC" value="la" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7g8" role="1PaTwD">
          <property role="3oM_SC" value="propiedad" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7g9" role="1PaTwD">
          <property role="3oM_SC" value="name" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7ga" role="1PaTwD">
          <property role="3oM_SC" value="de" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7gb" role="1PaTwD">
          <property role="3oM_SC" value="Device," />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7gc" role="1PaTwD">
          <property role="3oM_SC" value="State," />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7gd" role="1PaTwD">
          <property role="3oM_SC" value="Event" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7ge" role="1PaTwD">
          <property role="3oM_SC" value="y" />
        </node>
        <node concept="3oM_SD" id="3S1cLRkX7gf" role="1PaTwD">
          <property role="3oM_SC" value="Role." />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3S1cLRkX7fu" role="jymVt">
      <property role="TrG5h" value="ID_REGEX" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3S1cLRkX7fv" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="3S1cLRkX7fw" role="33vP2m">
        <property role="Xl_RC" value="[A-Za-z_][A-Za-z0-9_]*" />
      </node>
      <node concept="3Tm1VV" id="3S1cLRkX7fx" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3S1cLRkX7fy" role="jymVt">
      <node concept="3cqZAl" id="3S1cLRkX7fz" role="3clF45" />
      <node concept="3clFbS" id="3S1cLRkX7f$" role="3clF47" />
      <node concept="3Tm6S6" id="3S1cLRkX7f_" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="3S1cLRkX7fA" role="jymVt">
      <property role="TrG5h" value="isIdentifier" />
      <node concept="37vLTG" id="3S1cLRkX7fB" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="3S1cLRkX7fC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="3S1cLRkX7fD" role="3clF47">
        <node concept="3cpWs6" id="3S1cLRkX7fE" role="3cqZAp">
          <node concept="1Wc70l" id="3S1cLRkX7fF" role="3cqZAk">
            <node concept="3y3z36" id="3S1cLRkX7fG" role="3uHU7B">
              <node concept="37vLTw" id="3S1cLRkX7fH" role="3uHU7B">
                <ref role="3cqZAo" node="3S1cLRkX7fB" resolve="value" />
              </node>
              <node concept="10Nm6u" id="3S1cLRkX7fI" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="3S1cLRkX7g$" role="3uHU7w">
              <node concept="37vLTw" id="3S1cLRkX7gi" role="2Oq$k0">
                <ref role="3cqZAo" node="3S1cLRkX7fB" resolve="value" />
              </node>
              <node concept="liA8E" id="3S1cLRkX7g_" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                <node concept="37vLTw" id="3S1cLRkX7gA" role="37wK5m">
                  <ref role="3cqZAo" node="3S1cLRkX7fu" resolve="ID_REGEX" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3S1cLRkX7fL" role="1B3o_S" />
      <node concept="10P_77" id="3S1cLRkX7fM" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3S1cLRkYnm0" role="jymVt">
      <property role="TrG5h" value="invalidNameMessage" />
      <node concept="37vLTG" id="3S1cLRkYnm1" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="3S1cLRkYnm2" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="3S1cLRkYnm3" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="3S1cLRkYnm4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="3S1cLRkYnm5" role="3clF47">
        <node concept="3clFbJ" id="3S1cLRkYnm6" role="3cqZAp">
          <node concept="22lmx$" id="3S1cLRkYnm7" role="3clFbw">
            <node concept="3clFbC" id="3S1cLRkYnm8" role="3uHU7B">
              <node concept="37vLTw" id="3S1cLRkYnm9" role="3uHU7B">
                <ref role="3cqZAo" node="3S1cLRkYnm3" resolve="name" />
              </node>
              <node concept="10Nm6u" id="3S1cLRkYnma" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="3S1cLRkYnmb" role="3uHU7w">
              <node concept="2OqwBi" id="3S1cLRkYnnd" role="3uHU7B">
                <node concept="37vLTw" id="3S1cLRkYnmY" role="2Oq$k0">
                  <ref role="3cqZAo" node="3S1cLRkYnm3" resolve="name" />
                </node>
                <node concept="liA8E" id="3S1cLRkYnne" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                </node>
              </node>
              <node concept="3cmrfG" id="3S1cLRkYnmd" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3S1cLRkYnmf" role="3clFbx">
            <node concept="3cpWs6" id="3S1cLRkYnmg" role="3cqZAp">
              <node concept="3cpWs3" id="3S1cLRkYnmh" role="3cqZAk">
                <node concept="3cpWs3" id="3S1cLRkYnmi" role="3uHU7B">
                  <node concept="Xl_RD" id="3S1cLRkYnmj" role="3uHU7B">
                    <property role="Xl_RC" value="Falta el nombre del " />
                  </node>
                  <node concept="37vLTw" id="3S1cLRkYnmk" role="3uHU7w">
                    <ref role="3cqZAo" node="3S1cLRkYnm1" resolve="kind" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3S1cLRkYnml" role="3uHU7w">
                  <property role="Xl_RC" value=": escribe uno que empiece con una letra o '_' y siga solo con letras, dígitos o '_'." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3S1cLRkYnmm" role="3cqZAp">
          <node concept="3cpWs3" id="3S1cLRkYnmn" role="3cqZAk">
            <node concept="3cpWs3" id="3S1cLRkYnmo" role="3uHU7B">
              <node concept="3cpWs3" id="3S1cLRkYnmp" role="3uHU7B">
                <node concept="3cpWs3" id="3S1cLRkYnmq" role="3uHU7B">
                  <node concept="Xl_RD" id="3S1cLRkYnmr" role="3uHU7B">
                    <property role="Xl_RC" value="El nombre '" />
                  </node>
                  <node concept="37vLTw" id="3S1cLRkYnms" role="3uHU7w">
                    <ref role="3cqZAo" node="3S1cLRkYnm3" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3S1cLRkYnmt" role="3uHU7w">
                  <property role="Xl_RC" value="' del " />
                </node>
              </node>
              <node concept="37vLTw" id="3S1cLRkYnmu" role="3uHU7w">
                <ref role="3cqZAo" node="3S1cLRkYnm1" resolve="kind" />
              </node>
            </node>
            <node concept="Xl_RD" id="3S1cLRkYnmv" role="3uHU7w">
              <property role="Xl_RC" value=" no es válido: debe empezar con una letra (a-z o A-Z, sin tildes ni ñ) o '_' y seguir solo con letras, dígitos o '_', sin espacios." />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3S1cLRkYnmw" role="1B3o_S" />
      <node concept="3uibUv" id="3S1cLRkYnmx" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="P$JXv" id="3S1cLRkYnmy" role="lGtFl">
        <node concept="1PaTwC" id="3S1cLRkYnmz" role="1Vez_I">
          <node concept="3oM_SD" id="3S1cLRkYnm$" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="3S1cLRkYnm_" role="1Vez_I">
          <node concept="3oM_SD" id="3S1cLRkYnmA" role="1PaTwD">
            <property role="3oM_SC" value="Mensaje" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmB" role="1PaTwD">
            <property role="3oM_SC" value="en" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmC" role="1PaTwD">
            <property role="3oM_SC" value="espanol" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmD" role="1PaTwD">
            <property role="3oM_SC" value="para" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmE" role="1PaTwD">
            <property role="3oM_SC" value="un" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmF" role="1PaTwD">
            <property role="3oM_SC" value="nombre" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmG" role="1PaTwD">
            <property role="3oM_SC" value="que" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmH" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmI" role="1PaTwD">
            <property role="3oM_SC" value="pertenece" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmJ" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmK" role="1PaTwD">
            <property role="3oM_SC" value="ID." />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmL" role="1PaTwD">
            <property role="3oM_SC" value="kind" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmM" role="1PaTwD">
            <property role="3oM_SC" value="es" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmN" role="1PaTwD">
            <property role="3oM_SC" value="el" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmO" role="1PaTwD">
            <property role="3oM_SC" value="tipo" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmP" role="1PaTwD">
            <property role="3oM_SC" value="de" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmQ" role="1PaTwD">
            <property role="3oM_SC" value="elemento:" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmR" role="1PaTwD">
            <property role="3oM_SC" value="dispositivo," />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmS" role="1PaTwD">
            <property role="3oM_SC" value="estado," />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmT" role="1PaTwD">
            <property role="3oM_SC" value="evento" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmU" role="1PaTwD">
            <property role="3oM_SC" value="o" />
          </node>
          <node concept="3oM_SD" id="3S1cLRkYnmV" role="1PaTwD">
            <property role="3oM_SC" value="rol." />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

