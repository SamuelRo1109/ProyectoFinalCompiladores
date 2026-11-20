<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:aba7cc31-0cfb-46ef-9e11-1ba67d7fc46e(domus.lang.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="p4tm" ref="r:dbde8baf-0fe0-4595-838d-181b53f5988b(domus.lang.structure)" />
    <import index="qn6s" ref="r:c823ce89-c6b0-4efd-880d-e9237068d5b3(domus.lang.constraints)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="yke2" ref="r:4dce9d5d-5ab6-48ea-bb93-9da0a6a589ad(domus.lang.behavior)" />
    <import index="op1a" ref="r:edb40588-6aa3-4d1b-9aa3-15b2491e5c9f(domus.reasoner.automata)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175147670730" name="jetbrains.mps.lang.typesystem.structure.SubtypingRule" flags="ig" index="2sgARr" />
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096498176" name="jetbrains.mps.lang.typesystem.structure.PropertyMessageTarget" flags="ng" index="2ODE4t">
        <reference id="1227096521710" name="propertyDeclaration" index="2ODJFN" />
      </concept>
      <concept id="1227096620180" name="jetbrains.mps.lang.typesystem.structure.ReferenceMessageTarget" flags="ng" index="2OE7Q9">
        <reference id="1227096645744" name="linkDeclaration" index="2OEe5H" />
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
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1180447237840" name="errorString" index="3o8Qv2" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
        <child id="1174662598553" name="nodeToCheck" index="1ZmcU8" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1966870290083281362" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="ng" index="24Tkf9" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
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
  <node concept="312cEu" id="3S1cLRkZ73d">
    <property role="TrG5h" value="AlfabetoUtil" />
    <node concept="3Tm1VV" id="3S1cLRkZ73f" role="1B3o_S" />
    <node concept="2YIFZL" id="3S1cLRkZ73g" role="jymVt">
      <property role="TrG5h" value="mensajeIncompatibilidad" />
      <node concept="3Tm1VV" id="3S1cLRkZ73j" role="1B3o_S" />
      <node concept="17QB3L" id="3S1cLRkZ73k" role="3clF45" />
      <node concept="37vLTG" id="3S1cLRkZ73l" role="3clF46">
        <property role="TrG5h" value="politica" />
        <node concept="3Tqbb2" id="3S1cLRkZ73m" role="1tU5fm">
          <ref role="ehGHo" to="p4tm:57H1jONk_jD" resolve="Policy" />
        </node>
      </node>
      <node concept="37vLTG" id="3S1cLRkZ73n" role="3clF46">
        <property role="TrG5h" value="donde" />
        <node concept="3Tqbb2" id="3S1cLRkZ73o" role="1tU5fm">
          <ref role="ehGHo" to="p4tm:57H1jONk_jn" resolve="RegexExpr" />
        </node>
      </node>
      <node concept="3clFbS" id="3S1cLRkZ73p" role="3clF47">
        <node concept="3cpWs8" id="3S1cLRkZ73q" role="3cqZAp">
          <node concept="3cpWsn" id="3S1cLRkZ73r" role="3cpWs9">
            <property role="TrG5h" value="ajeno" />
            <node concept="3Tqbb2" id="3S1cLRkZ73s" role="1tU5fm">
              <ref role="ehGHo" to="p4tm:57H1jONk_jq" resolve="SymbolExpr" />
            </node>
            <node concept="2OqwBi" id="3S1cLRkZ73t" role="33vP2m">
              <node concept="2OqwBi" id="3S1cLRkZ73u" role="2Oq$k0">
                <node concept="2OqwBi" id="3S1cLRkZ73v" role="2Oq$k0">
                  <node concept="37vLTw" id="3S1cLRkZ73w" role="2Oq$k0">
                    <ref role="3cqZAo" node="3S1cLRkZ73n" resolve="donde" />
                  </node>
                  <node concept="2Rf3mk" id="3S1cLRkZ73x" role="2OqNvi">
                    <node concept="1xMEDy" id="3S1cLRkZ73$" role="1xVPHs">
                      <node concept="chp4Y" id="3S1cLRkZ73_" role="ri$Ld">
                        <ref role="cht4Q" to="p4tm:57H1jONk_jq" resolve="SymbolExpr" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="3S1cLRkZ73A" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3QWeyG" id="3S1cLRkZ73B" role="2OqNvi">
                  <node concept="2OqwBi" id="3S1cLRkZ73C" role="576Qk">
                    <node concept="37vLTw" id="3S1cLRkZ73D" role="2Oq$k0">
                      <ref role="3cqZAo" node="3S1cLRkZ73l" resolve="politica" />
                    </node>
                    <node concept="2Rf3mk" id="3S1cLRkZ73E" role="2OqNvi">
                      <node concept="1xMEDy" id="3S1cLRkZ73H" role="1xVPHs">
                        <node concept="chp4Y" id="3S1cLRkZ73I" role="ri$Ld">
                          <ref role="cht4Q" to="p4tm:57H1jONk_jq" resolve="SymbolExpr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1z4cxt" id="3S1cLRkZ73J" role="2OqNvi">
                <node concept="1bVj0M" id="3S1cLRkZ73O" role="23t8la">
                  <node concept="gl6BB" id="3S1cLRkZ73P" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <property role="2Lvdk3" value="it" />
                    <node concept="2jxLKc" id="3S1cLRkZ73R" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="3S1cLRkZ73S" role="1bW5cS">
                    <node concept="3clFbF" id="3S1cLRkZ73T" role="3cqZAp">
                      <node concept="1Wc70l" id="3S1cLRkZ73U" role="3clFbG">
                        <node concept="2OqwBi" id="3S1cLRkZ73V" role="3uHU7B">
                          <node concept="2OqwBi" id="3S1cLRkZ73W" role="2Oq$k0">
                            <node concept="37vLTw" id="3S1cLRkZ73X" role="2Oq$k0">
                              <ref role="3cqZAo" node="3S1cLRkZ73P" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="3S1cLRkZ73Y" role="2OqNvi">
                              <ref role="3Tt5mk" to="p4tm:57H1jONk_jA" resolve="event" />
                            </node>
                          </node>
                          <node concept="3x8VRR" id="3S1cLRkZ73Z" role="2OqNvi" />
                        </node>
                        <node concept="17QLQc" id="3S1cLRkZ740" role="3uHU7w">
                          <node concept="2OqwBi" id="3S1cLRkZ741" role="3uHU7B">
                            <node concept="2OqwBi" id="3S1cLRkZ742" role="2Oq$k0">
                              <node concept="37vLTw" id="3S1cLRkZ743" role="2Oq$k0">
                                <ref role="3cqZAo" node="3S1cLRkZ73P" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="3S1cLRkZ744" role="2OqNvi">
                                <ref role="3Tt5mk" to="p4tm:57H1jONk_jA" resolve="event" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="3S1cLRkZ745" role="2OqNvi">
                              <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3S1cLRkZ746" role="3uHU7w">
                            <node concept="37vLTw" id="3S1cLRkZ747" role="2Oq$k0">
                              <ref role="3cqZAo" node="3S1cLRkZ73l" resolve="politica" />
                            </node>
                            <node concept="3TrEf2" id="3S1cLRkZ748" role="2OqNvi">
                              <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
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
        <node concept="3clFbJ" id="3S1cLRkZ749" role="3cqZAp">
          <node concept="2OqwBi" id="3S1cLRkZ74a" role="3clFbw">
            <node concept="37vLTw" id="3S1cLRkZ74b" role="2Oq$k0">
              <ref role="3cqZAo" node="3S1cLRkZ73r" resolve="ajeno" />
            </node>
            <node concept="3w_OXm" id="3S1cLRkZ74c" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="3S1cLRkZ74d" role="3clFbx">
            <node concept="3cpWs6" id="3S1cLRkZ74e" role="3cqZAp">
              <node concept="3cpWs3" id="3S1cLRkZ74f" role="3cqZAk">
                <node concept="3cpWs3" id="3S1cLRkZ74g" role="3uHU7B">
                  <node concept="3cpWs3" id="3S1cLRkZ74h" role="3uHU7B">
                    <node concept="3cpWs3" id="3S1cLRkZ74i" role="3uHU7B">
                      <node concept="Xl_RD" id="3S1cLRkZ74j" role="3uHU7B">
                        <property role="Xl_RC" value="Incompatibilidad de alfabetos: la política '" />
                      </node>
                      <node concept="2OqwBi" id="3S1cLRkZ74k" role="3uHU7w">
                        <node concept="37vLTw" id="3S1cLRkZ74l" role="2Oq$k0">
                          <ref role="3cqZAo" node="3S1cLRkZ73l" resolve="politica" />
                        </node>
                        <node concept="3TrcHB" id="3S1cLRkZ74m" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3S1cLRkZ74n" role="3uHU7w">
                      <property role="Xl_RC" value="' está definida sobre el dispositivo '" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3S1cLRkZ74o" role="3uHU7w">
                    <node concept="2OqwBi" id="3S1cLRkZ74p" role="2Oq$k0">
                      <node concept="37vLTw" id="3S1cLRkZ74q" role="2Oq$k0">
                        <ref role="3cqZAo" node="3S1cLRkZ73l" resolve="politica" />
                      </node>
                      <node concept="3TrEf2" id="3S1cLRkZ74r" role="2OqNvi">
                        <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3S1cLRkZ74s" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="3S1cLRkZ74t" role="3uHU7w">
                  <property role="Xl_RC" value="', pero su expresión mezcla eventos de otro dispositivo. Una política solo puede usar eventos de su propio dispositivo." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3S1cLRkZ74u" role="3cqZAp">
          <node concept="3cpWs3" id="3S1cLRkZ74v" role="3cqZAk">
            <node concept="3cpWs3" id="3S1cLRkZ74w" role="3uHU7B">
              <node concept="3cpWs3" id="3S1cLRkZ74x" role="3uHU7B">
                <node concept="3cpWs3" id="3S1cLRkZ74y" role="3uHU7B">
                  <node concept="3cpWs3" id="3S1cLRkZ74z" role="3uHU7B">
                    <node concept="3cpWs3" id="3S1cLRkZ74$" role="3uHU7B">
                      <node concept="3cpWs3" id="3S1cLRkZ74_" role="3uHU7B">
                        <node concept="3cpWs3" id="3S1cLRkZ74A" role="3uHU7B">
                          <node concept="Xl_RD" id="3S1cLRkZ74B" role="3uHU7B">
                            <property role="Xl_RC" value="Incompatibilidad de alfabetos: el evento '" />
                          </node>
                          <node concept="2OqwBi" id="3S1cLRkZ74C" role="3uHU7w">
                            <node concept="2OqwBi" id="3S1cLRkZ74D" role="2Oq$k0">
                              <node concept="37vLTw" id="3S1cLRkZ74E" role="2Oq$k0">
                                <ref role="3cqZAo" node="3S1cLRkZ73r" resolve="ajeno" />
                              </node>
                              <node concept="3TrEf2" id="3S1cLRkZ74F" role="2OqNvi">
                                <ref role="3Tt5mk" to="p4tm:57H1jONk_jA" resolve="event" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="3S1cLRkZ74G" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3S1cLRkZ74H" role="3uHU7w">
                          <property role="Xl_RC" value="' pertenece al dispositivo '" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3S1cLRkZ74I" role="3uHU7w">
                        <node concept="2OqwBi" id="3S1cLRkZ74J" role="2Oq$k0">
                          <node concept="2OqwBi" id="3S1cLRkZ74K" role="2Oq$k0">
                            <node concept="37vLTw" id="3S1cLRkZ74L" role="2Oq$k0">
                              <ref role="3cqZAo" node="3S1cLRkZ73r" resolve="ajeno" />
                            </node>
                            <node concept="3TrEf2" id="3S1cLRkZ74M" role="2OqNvi">
                              <ref role="3Tt5mk" to="p4tm:57H1jONk_jA" resolve="event" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="3S1cLRkZ74N" role="2OqNvi">
                            <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="3S1cLRkZ74O" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3S1cLRkZ74P" role="3uHU7w">
                      <property role="Xl_RC" value="', pero la política '" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3S1cLRkZ74Q" role="3uHU7w">
                    <node concept="37vLTw" id="3S1cLRkZ74R" role="2Oq$k0">
                      <ref role="3cqZAo" node="3S1cLRkZ73l" resolve="politica" />
                    </node>
                    <node concept="3TrcHB" id="3S1cLRkZ74S" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="3S1cLRkZ74T" role="3uHU7w">
                  <property role="Xl_RC" value="' está definida sobre el dispositivo '" />
                </node>
              </node>
              <node concept="2OqwBi" id="3S1cLRkZ74U" role="3uHU7w">
                <node concept="2OqwBi" id="3S1cLRkZ74V" role="2Oq$k0">
                  <node concept="37vLTw" id="3S1cLRkZ74W" role="2Oq$k0">
                    <ref role="3cqZAo" node="3S1cLRkZ73l" resolve="politica" />
                  </node>
                  <node concept="3TrEf2" id="3S1cLRkZ74X" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3S1cLRkZ74Y" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="3S1cLRkZ74Z" role="3uHU7w">
              <property role="Xl_RC" value="'. Una política solo puede usar eventos de su propio dispositivo." />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="3S1cLRkZ8iP">
    <property role="TrG5h" value="typeof_SymbolExpr" />
    <node concept="1YaCAy" id="3S1cLRkZ8iQ" role="1YuTPh">
      <property role="TrG5h" value="sym" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_jq" resolve="SymbolExpr" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8iR" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8iS" role="3cqZAp">
        <node concept="2OqwBi" id="3S1cLRkZ8iT" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8iU" role="2Oq$k0">
            <node concept="1YBJjd" id="3S1cLRkZ8iV" role="2Oq$k0">
              <ref role="1YBMHb" node="3S1cLRkZ8iQ" resolve="sym" />
            </node>
            <node concept="3TrEf2" id="3S1cLRkZ8iW" role="2OqNvi">
              <ref role="3Tt5mk" to="p4tm:57H1jONk_jA" resolve="event" />
            </node>
          </node>
          <node concept="3x8VRR" id="3S1cLRkZ8iX" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8iY" role="3clFbx">
          <node concept="1Z5TYs" id="3S1cLRkZ8iZ" role="3cqZAp">
            <node concept="mw_s8" id="3S1cLRkZ8j0" role="1ZfhK$">
              <node concept="1Z2H0r" id="3S1cLRkZ8j1" role="mwGJk">
                <node concept="1YBJjd" id="3S1cLRkZ8j2" role="1Z2MuG">
                  <ref role="1YBMHb" node="3S1cLRkZ8iQ" resolve="sym" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="3S1cLRkZ8j3" role="1ZfhKB">
              <node concept="2pJPEk" id="3S1cLRkZ8j4" role="mwGJk">
                <node concept="2pJPED" id="3S1cLRkZ8j5" role="2pJPEn">
                  <ref role="2pJxaS" to="p4tm:57H1jONk_k2" resolve="AlphabetType" />
                  <node concept="2pIpSj" id="3S1cLRkZ8j6" role="2pJxcM">
                    <ref role="2pIpSl" to="p4tm:57H1jONk_k4" resolve="device" />
                    <node concept="36biLy" id="3S1cLRkZ8j7" role="28nt2d">
                      <node concept="2OqwBi" id="3S1cLRkZ8j8" role="36biLW">
                        <node concept="2OqwBi" id="3S1cLRkZ8j9" role="2Oq$k0">
                          <node concept="1YBJjd" id="3S1cLRkZ8ja" role="2Oq$k0">
                            <ref role="1YBMHb" node="3S1cLRkZ8iQ" resolve="sym" />
                          </node>
                          <node concept="3TrEf2" id="3S1cLRkZ8jb" role="2OqNvi">
                            <ref role="3Tt5mk" to="p4tm:57H1jONk_jA" resolve="event" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="3S1cLRkZ8jc" role="2OqNvi">
                          <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="3S1cLRkZ8jd" role="3o8Qv2">
              <ref role="1Pybhc" node="3S1cLRkZ73d" resolve="AlfabetoUtil" />
              <ref role="37wK5l" node="3S1cLRkZ73g" resolve="mensajeIncompatibilidad" />
              <node concept="2OqwBi" id="3S1cLRkZ8je" role="37wK5m">
                <node concept="1YBJjd" id="3S1cLRkZ8jf" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8iQ" resolve="sym" />
                </node>
                <node concept="2Xjw5R" id="3S1cLRkZ8jg" role="2OqNvi">
                  <node concept="1xMEDy" id="3S1cLRkZ8jj" role="1xVPHs">
                    <node concept="chp4Y" id="3S1cLRkZ8jk" role="ri$Ld">
                      <ref role="cht4Q" to="p4tm:57H1jONk_jD" resolve="Policy" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1YBJjd" id="3S1cLRkZ8jl" role="37wK5m">
                <ref role="1YBMHb" node="3S1cLRkZ8iQ" resolve="sym" />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8jm" role="1ZmcU8">
              <ref role="1YBMHb" node="3S1cLRkZ8iQ" resolve="sym" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="3S1cLRkZ8jn">
    <property role="TrG5h" value="typeof_BinaryRegexExpr" />
    <node concept="1YaCAy" id="3S1cLRkZ8jo" role="1YuTPh">
      <property role="TrG5h" value="bin" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_jo" resolve="BinaryRegexExpr" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8jp" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8jq" role="3cqZAp">
        <node concept="1Wc70l" id="3S1cLRkZ8jr" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8js" role="3uHU7B">
            <node concept="2OqwBi" id="3S1cLRkZ8jt" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8ju" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
              </node>
              <node concept="3TrEf2" id="3S1cLRkZ8jv" role="2OqNvi">
                <ref role="3Tt5mk" to="p4tm:57H1jONk_jz" resolve="left" />
              </node>
            </node>
            <node concept="3x8VRR" id="3S1cLRkZ8jw" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="3S1cLRkZ8jx" role="3uHU7w">
            <node concept="2OqwBi" id="3S1cLRkZ8jy" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8jz" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
              </node>
              <node concept="3TrEf2" id="3S1cLRkZ8j$" role="2OqNvi">
                <ref role="3Tt5mk" to="p4tm:57H1jONk_j$" resolve="right" />
              </node>
            </node>
            <node concept="3x8VRR" id="3S1cLRkZ8j_" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8jA" role="3clFbx">
          <node concept="1Z5TYs" id="3S1cLRkZ8jB" role="3cqZAp">
            <node concept="mw_s8" id="3S1cLRkZ8jC" role="1ZfhK$">
              <node concept="1Z2H0r" id="3S1cLRkZ8jD" role="mwGJk">
                <node concept="2OqwBi" id="3S1cLRkZ8jE" role="1Z2MuG">
                  <node concept="1YBJjd" id="3S1cLRkZ8jF" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
                  </node>
                  <node concept="3TrEf2" id="3S1cLRkZ8jG" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_jz" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="3S1cLRkZ8jH" role="1ZfhKB">
              <node concept="1Z2H0r" id="3S1cLRkZ8jI" role="mwGJk">
                <node concept="2OqwBi" id="3S1cLRkZ8jJ" role="1Z2MuG">
                  <node concept="1YBJjd" id="3S1cLRkZ8jK" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
                  </node>
                  <node concept="3TrEf2" id="3S1cLRkZ8jL" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_j$" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="3S1cLRkZ8jM" role="3o8Qv2">
              <ref role="1Pybhc" node="3S1cLRkZ73d" resolve="AlfabetoUtil" />
              <ref role="37wK5l" node="3S1cLRkZ73g" resolve="mensajeIncompatibilidad" />
              <node concept="2OqwBi" id="3S1cLRkZ8jN" role="37wK5m">
                <node concept="1YBJjd" id="3S1cLRkZ8jO" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
                </node>
                <node concept="2Xjw5R" id="3S1cLRkZ8jP" role="2OqNvi">
                  <node concept="1xMEDy" id="3S1cLRkZ8jS" role="1xVPHs">
                    <node concept="chp4Y" id="3S1cLRkZ8jT" role="ri$Ld">
                      <ref role="cht4Q" to="p4tm:57H1jONk_jD" resolve="Policy" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1YBJjd" id="3S1cLRkZ8jU" role="37wK5m">
                <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8jV" role="1ZmcU8">
              <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
            </node>
          </node>
          <node concept="1Z5TYs" id="3S1cLRkZ8jW" role="3cqZAp">
            <node concept="mw_s8" id="3S1cLRkZ8jX" role="1ZfhK$">
              <node concept="1Z2H0r" id="3S1cLRkZ8jY" role="mwGJk">
                <node concept="1YBJjd" id="3S1cLRkZ8jZ" role="1Z2MuG">
                  <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="3S1cLRkZ8k0" role="1ZfhKB">
              <node concept="1Z2H0r" id="3S1cLRkZ8k1" role="mwGJk">
                <node concept="2OqwBi" id="3S1cLRkZ8k2" role="1Z2MuG">
                  <node concept="1YBJjd" id="3S1cLRkZ8k3" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
                  </node>
                  <node concept="3TrEf2" id="3S1cLRkZ8k4" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_jz" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="3S1cLRkZ8k5" role="3o8Qv2">
              <ref role="1Pybhc" node="3S1cLRkZ73d" resolve="AlfabetoUtil" />
              <ref role="37wK5l" node="3S1cLRkZ73g" resolve="mensajeIncompatibilidad" />
              <node concept="2OqwBi" id="3S1cLRkZ8k6" role="37wK5m">
                <node concept="1YBJjd" id="3S1cLRkZ8k7" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
                </node>
                <node concept="2Xjw5R" id="3S1cLRkZ8k8" role="2OqNvi">
                  <node concept="1xMEDy" id="3S1cLRkZ8kb" role="1xVPHs">
                    <node concept="chp4Y" id="3S1cLRkZ8kc" role="ri$Ld">
                      <ref role="cht4Q" to="p4tm:57H1jONk_jD" resolve="Policy" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1YBJjd" id="3S1cLRkZ8kd" role="37wK5m">
                <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8ke" role="1ZmcU8">
              <ref role="1YBMHb" node="3S1cLRkZ8jo" resolve="bin" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="3S1cLRkZ8kf">
    <property role="TrG5h" value="typeof_UnaryRegexExpr" />
    <node concept="1YaCAy" id="3S1cLRkZ8kg" role="1YuTPh">
      <property role="TrG5h" value="un" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_jp" resolve="UnaryRegexExpr" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8kh" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8ki" role="3cqZAp">
        <node concept="2OqwBi" id="3S1cLRkZ8kj" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8kk" role="2Oq$k0">
            <node concept="1YBJjd" id="3S1cLRkZ8kl" role="2Oq$k0">
              <ref role="1YBMHb" node="3S1cLRkZ8kg" resolve="un" />
            </node>
            <node concept="3TrEf2" id="3S1cLRkZ8km" role="2OqNvi">
              <ref role="3Tt5mk" to="p4tm:57H1jONk_j_" resolve="operand" />
            </node>
          </node>
          <node concept="3x8VRR" id="3S1cLRkZ8kn" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8ko" role="3clFbx">
          <node concept="1Z5TYs" id="3S1cLRkZ8kp" role="3cqZAp">
            <node concept="mw_s8" id="3S1cLRkZ8kq" role="1ZfhK$">
              <node concept="1Z2H0r" id="3S1cLRkZ8kr" role="mwGJk">
                <node concept="1YBJjd" id="3S1cLRkZ8ks" role="1Z2MuG">
                  <ref role="1YBMHb" node="3S1cLRkZ8kg" resolve="un" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="3S1cLRkZ8kt" role="1ZfhKB">
              <node concept="1Z2H0r" id="3S1cLRkZ8ku" role="mwGJk">
                <node concept="2OqwBi" id="3S1cLRkZ8kv" role="1Z2MuG">
                  <node concept="1YBJjd" id="3S1cLRkZ8kw" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8kg" resolve="un" />
                  </node>
                  <node concept="3TrEf2" id="3S1cLRkZ8kx" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_j_" resolve="operand" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="3S1cLRkZ8ky" role="3o8Qv2">
              <ref role="1Pybhc" node="3S1cLRkZ73d" resolve="AlfabetoUtil" />
              <ref role="37wK5l" node="3S1cLRkZ73g" resolve="mensajeIncompatibilidad" />
              <node concept="2OqwBi" id="3S1cLRkZ8kz" role="37wK5m">
                <node concept="1YBJjd" id="3S1cLRkZ8k$" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8kg" resolve="un" />
                </node>
                <node concept="2Xjw5R" id="3S1cLRkZ8k_" role="2OqNvi">
                  <node concept="1xMEDy" id="3S1cLRkZ8kC" role="1xVPHs">
                    <node concept="chp4Y" id="3S1cLRkZ8kD" role="ri$Ld">
                      <ref role="cht4Q" to="p4tm:57H1jONk_jD" resolve="Policy" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1YBJjd" id="3S1cLRkZ8kE" role="37wK5m">
                <ref role="1YBMHb" node="3S1cLRkZ8kg" resolve="un" />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8kF" role="1ZmcU8">
              <ref role="1YBMHb" node="3S1cLRkZ8kg" resolve="un" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="3S1cLRkZ8kG">
    <property role="TrG5h" value="typeof_EpsilonExpr" />
    <node concept="1YaCAy" id="3S1cLRkZ8kH" role="1YuTPh">
      <property role="TrG5h" value="eps" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_jr" resolve="EpsilonExpr" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8kI" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8kJ" role="3cqZAp">
        <node concept="2OqwBi" id="3S1cLRkZ8kK" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8kL" role="2Oq$k0">
            <node concept="2OqwBi" id="3S1cLRkZ8kM" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8kN" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8kH" resolve="eps" />
              </node>
              <node concept="2Xjw5R" id="3S1cLRkZ8kO" role="2OqNvi">
                <node concept="1xMEDy" id="3S1cLRkZ8kR" role="1xVPHs">
                  <node concept="chp4Y" id="3S1cLRkZ8kS" role="ri$Ld">
                    <ref role="cht4Q" to="p4tm:57H1jONk_jD" resolve="Policy" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrEf2" id="3S1cLRkZ8kT" role="2OqNvi">
              <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
            </node>
          </node>
          <node concept="3x8VRR" id="3S1cLRkZ8kU" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8kV" role="3clFbx">
          <node concept="1Z5TYs" id="3S1cLRkZ8kW" role="3cqZAp">
            <node concept="mw_s8" id="3S1cLRkZ8kX" role="1ZfhK$">
              <node concept="1Z2H0r" id="3S1cLRkZ8kY" role="mwGJk">
                <node concept="1YBJjd" id="3S1cLRkZ8kZ" role="1Z2MuG">
                  <ref role="1YBMHb" node="3S1cLRkZ8kH" resolve="eps" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="3S1cLRkZ8l0" role="1ZfhKB">
              <node concept="2pJPEk" id="3S1cLRkZ8l1" role="mwGJk">
                <node concept="2pJPED" id="3S1cLRkZ8l2" role="2pJPEn">
                  <ref role="2pJxaS" to="p4tm:57H1jONk_k2" resolve="AlphabetType" />
                  <node concept="2pIpSj" id="3S1cLRkZ8l3" role="2pJxcM">
                    <ref role="2pIpSl" to="p4tm:57H1jONk_k4" resolve="device" />
                    <node concept="36biLy" id="3S1cLRkZ8l4" role="28nt2d">
                      <node concept="2OqwBi" id="3S1cLRkZ8l5" role="36biLW">
                        <node concept="2OqwBi" id="3S1cLRkZ8l6" role="2Oq$k0">
                          <node concept="1YBJjd" id="3S1cLRkZ8l7" role="2Oq$k0">
                            <ref role="1YBMHb" node="3S1cLRkZ8kH" resolve="eps" />
                          </node>
                          <node concept="2Xjw5R" id="3S1cLRkZ8l8" role="2OqNvi">
                            <node concept="1xMEDy" id="3S1cLRkZ8lb" role="1xVPHs">
                              <node concept="chp4Y" id="3S1cLRkZ8lc" role="ri$Ld">
                                <ref role="cht4Q" to="p4tm:57H1jONk_jD" resolve="Policy" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3S1cLRkZ8ld" role="2OqNvi">
                          <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
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
  <node concept="1YbPZF" id="3S1cLRkZ8le">
    <property role="TrG5h" value="typeof_AnySymbolExpr" />
    <node concept="1YaCAy" id="3S1cLRkZ8lf" role="1YuTPh">
      <property role="TrG5h" value="any" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_js" resolve="AnySymbolExpr" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8lg" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8lh" role="3cqZAp">
        <node concept="2OqwBi" id="3S1cLRkZ8li" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8lj" role="2Oq$k0">
            <node concept="2OqwBi" id="3S1cLRkZ8lk" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8ll" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8lf" resolve="any" />
              </node>
              <node concept="2Xjw5R" id="3S1cLRkZ8lm" role="2OqNvi">
                <node concept="1xMEDy" id="3S1cLRkZ8lp" role="1xVPHs">
                  <node concept="chp4Y" id="3S1cLRkZ8lq" role="ri$Ld">
                    <ref role="cht4Q" to="p4tm:57H1jONk_jD" resolve="Policy" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrEf2" id="3S1cLRkZ8lr" role="2OqNvi">
              <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
            </node>
          </node>
          <node concept="3x8VRR" id="3S1cLRkZ8ls" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8lt" role="3clFbx">
          <node concept="1Z5TYs" id="3S1cLRkZ8lu" role="3cqZAp">
            <node concept="mw_s8" id="3S1cLRkZ8lv" role="1ZfhK$">
              <node concept="1Z2H0r" id="3S1cLRkZ8lw" role="mwGJk">
                <node concept="1YBJjd" id="3S1cLRkZ8lx" role="1Z2MuG">
                  <ref role="1YBMHb" node="3S1cLRkZ8lf" resolve="any" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="3S1cLRkZ8ly" role="1ZfhKB">
              <node concept="2pJPEk" id="3S1cLRkZ8lz" role="mwGJk">
                <node concept="2pJPED" id="3S1cLRkZ8l$" role="2pJPEn">
                  <ref role="2pJxaS" to="p4tm:57H1jONk_k2" resolve="AlphabetType" />
                  <node concept="2pIpSj" id="3S1cLRkZ8l_" role="2pJxcM">
                    <ref role="2pIpSl" to="p4tm:57H1jONk_k4" resolve="device" />
                    <node concept="36biLy" id="3S1cLRkZ8lA" role="28nt2d">
                      <node concept="2OqwBi" id="3S1cLRkZ8lB" role="36biLW">
                        <node concept="2OqwBi" id="3S1cLRkZ8lC" role="2Oq$k0">
                          <node concept="1YBJjd" id="3S1cLRkZ8lD" role="2Oq$k0">
                            <ref role="1YBMHb" node="3S1cLRkZ8lf" resolve="any" />
                          </node>
                          <node concept="2Xjw5R" id="3S1cLRkZ8lE" role="2OqNvi">
                            <node concept="1xMEDy" id="3S1cLRkZ8lH" role="1xVPHs">
                              <node concept="chp4Y" id="3S1cLRkZ8lI" role="ri$Ld">
                                <ref role="cht4Q" to="p4tm:57H1jONk_jD" resolve="Policy" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3S1cLRkZ8lJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
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
  <node concept="1YbPZF" id="3S1cLRkZ8lK">
    <property role="TrG5h" value="typeof_Policy" />
    <node concept="1YaCAy" id="3S1cLRkZ8lL" role="1YuTPh">
      <property role="TrG5h" value="policy" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_jD" resolve="Policy" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8lM" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8lN" role="3cqZAp">
        <node concept="1Wc70l" id="3S1cLRkZ8lO" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8lP" role="3uHU7B">
            <node concept="2OqwBi" id="3S1cLRkZ8lQ" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8lR" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8lL" resolve="policy" />
              </node>
              <node concept="3TrEf2" id="3S1cLRkZ8lS" role="2OqNvi">
                <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
              </node>
            </node>
            <node concept="3x8VRR" id="3S1cLRkZ8lT" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="3S1cLRkZ8lU" role="3uHU7w">
            <node concept="2OqwBi" id="3S1cLRkZ8lV" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8lW" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8lL" resolve="policy" />
              </node>
              <node concept="3TrEf2" id="3S1cLRkZ8lX" role="2OqNvi">
                <ref role="3Tt5mk" to="p4tm:57H1jONk_jI" resolve="expr" />
              </node>
            </node>
            <node concept="3x8VRR" id="3S1cLRkZ8lY" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8lZ" role="3clFbx">
          <node concept="1Z5TYs" id="3S1cLRkZ8m0" role="3cqZAp">
            <node concept="mw_s8" id="3S1cLRkZ8m1" role="1ZfhK$">
              <node concept="1Z2H0r" id="3S1cLRkZ8m2" role="mwGJk">
                <node concept="2OqwBi" id="3S1cLRkZ8m3" role="1Z2MuG">
                  <node concept="1YBJjd" id="3S1cLRkZ8m4" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8lL" resolve="policy" />
                  </node>
                  <node concept="3TrEf2" id="3S1cLRkZ8m5" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_jI" resolve="expr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="3S1cLRkZ8m6" role="1ZfhKB">
              <node concept="2pJPEk" id="3S1cLRkZ8m7" role="mwGJk">
                <node concept="2pJPED" id="3S1cLRkZ8m8" role="2pJPEn">
                  <ref role="2pJxaS" to="p4tm:57H1jONk_k2" resolve="AlphabetType" />
                  <node concept="2pIpSj" id="3S1cLRkZ8m9" role="2pJxcM">
                    <ref role="2pIpSl" to="p4tm:57H1jONk_k4" resolve="device" />
                    <node concept="36biLy" id="3S1cLRkZ8ma" role="28nt2d">
                      <node concept="2OqwBi" id="3S1cLRkZ8mb" role="36biLW">
                        <node concept="1YBJjd" id="3S1cLRkZ8mc" role="2Oq$k0">
                          <ref role="1YBMHb" node="3S1cLRkZ8lL" resolve="policy" />
                        </node>
                        <node concept="3TrEf2" id="3S1cLRkZ8md" role="2OqNvi">
                          <ref role="3Tt5mk" to="p4tm:57H1jONk_jJ" resolve="device" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="3S1cLRkZ8me" role="3o8Qv2">
              <ref role="1Pybhc" node="3S1cLRkZ73d" resolve="AlfabetoUtil" />
              <ref role="37wK5l" node="3S1cLRkZ73g" resolve="mensajeIncompatibilidad" />
              <node concept="1YBJjd" id="3S1cLRkZ8mf" role="37wK5m">
                <ref role="1YBMHb" node="3S1cLRkZ8lL" resolve="policy" />
              </node>
              <node concept="2OqwBi" id="3S1cLRkZ8mg" role="37wK5m">
                <node concept="1YBJjd" id="3S1cLRkZ8mh" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8lL" resolve="policy" />
                </node>
                <node concept="3TrEf2" id="3S1cLRkZ8mi" role="2OqNvi">
                  <ref role="3Tt5mk" to="p4tm:57H1jONk_jI" resolve="expr" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3S1cLRkZ8mj" role="1ZmcU8">
              <node concept="1YBJjd" id="3S1cLRkZ8mk" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8lL" resolve="policy" />
              </node>
              <node concept="3TrEf2" id="3S1cLRkZ8ml" role="2OqNvi">
                <ref role="3Tt5mk" to="p4tm:57H1jONk_jI" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="3S1cLRkZ8mm">
    <property role="TrG5h" value="typeof_ActorRef" />
    <node concept="1YaCAy" id="3S1cLRkZ8mn" role="1YuTPh">
      <property role="TrG5h" value="actor" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_jE" resolve="ActorRef" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8mo" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8mp" role="3cqZAp">
        <node concept="2OqwBi" id="3S1cLRkZ8mq" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8mr" role="2Oq$k0">
            <node concept="1YBJjd" id="3S1cLRkZ8ms" role="2Oq$k0">
              <ref role="1YBMHb" node="3S1cLRkZ8mn" resolve="actor" />
            </node>
            <node concept="3TrEf2" id="3S1cLRkZ8mt" role="2OqNvi">
              <ref role="3Tt5mk" to="p4tm:57H1jONk_jL" resolve="role" />
            </node>
          </node>
          <node concept="3x8VRR" id="3S1cLRkZ8mu" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8mv" role="3clFbx">
          <node concept="1Z5TYs" id="3S1cLRkZ8mw" role="3cqZAp">
            <node concept="mw_s8" id="3S1cLRkZ8mx" role="1ZfhK$">
              <node concept="1Z2H0r" id="3S1cLRkZ8my" role="mwGJk">
                <node concept="1YBJjd" id="3S1cLRkZ8mz" role="1Z2MuG">
                  <ref role="1YBMHb" node="3S1cLRkZ8mn" resolve="actor" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="3S1cLRkZ8m$" role="1ZfhKB">
              <node concept="2pJPEk" id="3S1cLRkZ8m_" role="mwGJk">
                <node concept="2pJPED" id="3S1cLRkZ8mA" role="2pJPEn">
                  <ref role="2pJxaS" to="p4tm:57H1jONk_k1" resolve="RoleType" />
                  <node concept="2pIpSj" id="3S1cLRkZ8mB" role="2pJxcM">
                    <ref role="2pIpSl" to="p4tm:57H1jONk_k3" resolve="role" />
                    <node concept="36biLy" id="3S1cLRkZ8mC" role="28nt2d">
                      <node concept="2OqwBi" id="3S1cLRkZ8mD" role="36biLW">
                        <node concept="1YBJjd" id="3S1cLRkZ8mE" role="2Oq$k0">
                          <ref role="1YBMHb" node="3S1cLRkZ8mn" resolve="actor" />
                        </node>
                        <node concept="3TrEf2" id="3S1cLRkZ8mF" role="2OqNvi">
                          <ref role="3Tt5mk" to="p4tm:57H1jONk_jL" resolve="role" />
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
  <node concept="2sgARr" id="3S1cLRkZ8mG">
    <property role="TrG5h" value="supertypeOf_RoleType" />
    <node concept="1YaCAy" id="3S1cLRkZ8mH" role="1YuTPh">
      <property role="TrG5h" value="roleType" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_k1" resolve="RoleType" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8mI" role="2sgrp5">
      <node concept="3clFbJ" id="3S1cLRkZ8mJ" role="3cqZAp">
        <node concept="2OqwBi" id="3S1cLRkZ8mK" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8mL" role="2Oq$k0">
            <node concept="2OqwBi" id="3S1cLRkZ8mM" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8mN" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8mH" resolve="roleType" />
              </node>
              <node concept="3TrEf2" id="3S1cLRkZ8mO" role="2OqNvi">
                <ref role="3Tt5mk" to="p4tm:57H1jONk_k3" resolve="role" />
              </node>
            </node>
            <node concept="3TrEf2" id="3S1cLRkZ8mP" role="2OqNvi">
              <ref role="3Tt5mk" to="p4tm:57H1jONk_j3" resolve="parent" />
            </node>
          </node>
          <node concept="3x8VRR" id="3S1cLRkZ8mQ" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8mR" role="3clFbx">
          <node concept="3cpWs6" id="3S1cLRkZ8mS" role="3cqZAp">
            <node concept="2pJPEk" id="3S1cLRkZ8mT" role="3cqZAk">
              <node concept="2pJPED" id="3S1cLRkZ8mU" role="2pJPEn">
                <ref role="2pJxaS" to="p4tm:57H1jONk_k1" resolve="RoleType" />
                <node concept="2pIpSj" id="3S1cLRkZ8mV" role="2pJxcM">
                  <ref role="2pIpSl" to="p4tm:57H1jONk_k3" resolve="role" />
                  <node concept="36biLy" id="3S1cLRkZ8mW" role="28nt2d">
                    <node concept="2OqwBi" id="3S1cLRkZ8mX" role="36biLW">
                      <node concept="2OqwBi" id="3S1cLRkZ8mY" role="2Oq$k0">
                        <node concept="1YBJjd" id="3S1cLRkZ8mZ" role="2Oq$k0">
                          <ref role="1YBMHb" node="3S1cLRkZ8mH" resolve="roleType" />
                        </node>
                        <node concept="3TrEf2" id="3S1cLRkZ8n0" role="2OqNvi">
                          <ref role="3Tt5mk" to="p4tm:57H1jONk_k3" resolve="role" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3S1cLRkZ8n1" role="2OqNvi">
                        <ref role="3Tt5mk" to="p4tm:57H1jONk_j3" resolve="parent" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs6" id="3S1cLRkZ8n2" role="3cqZAp">
        <node concept="10Nm6u" id="3S1cLRkZ8n3" role="3cqZAk" />
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="3S1cLRkZ8n4">
    <property role="TrG5h" value="typeof_ScenarioStep" />
    <node concept="1YaCAy" id="3S1cLRkZ8n5" role="1YuTPh">
      <property role="TrG5h" value="step" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_jF" resolve="ScenarioStep" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8n6" role="18ibNy">
      <node concept="3cpWs8" id="3S1cLRkZ8n7" role="3cqZAp">
        <node concept="3cpWsn" id="3S1cLRkZ8n8" role="3cpWs9">
          <property role="TrG5h" value="actor" />
          <node concept="3Tqbb2" id="3S1cLRkZ8n9" role="1tU5fm">
            <ref role="ehGHo" to="p4tm:57H1jONk_jE" resolve="ActorRef" />
          </node>
          <node concept="2OqwBi" id="3S1cLRkZ8na" role="33vP2m">
            <node concept="2OqwBi" id="3S1cLRkZ8nb" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8nc" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8n5" resolve="step" />
              </node>
              <node concept="2Xjw5R" id="3S1cLRkZ8nd" role="2OqNvi">
                <node concept="1xMEDy" id="3S1cLRkZ8ng" role="1xVPHs">
                  <node concept="chp4Y" id="3S1cLRkZ8nh" role="ri$Ld">
                    <ref role="cht4Q" to="p4tm:57H1jONk_jG" resolve="Scenario" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrEf2" id="3S1cLRkZ8ni" role="2OqNvi">
              <ref role="3Tt5mk" to="p4tm:57H1jONk_jN" resolve="actor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="3S1cLRkZ8nj" role="3cqZAp">
        <node concept="2OqwBi" id="3S1cLRkZ8nk" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8nl" role="2Oq$k0">
            <node concept="37vLTw" id="3S1cLRkZ8nm" role="2Oq$k0">
              <ref role="3cqZAo" node="3S1cLRkZ8n8" resolve="actor" />
            </node>
            <node concept="3TrEf2" id="3S1cLRkZ8nn" role="2OqNvi">
              <ref role="3Tt5mk" to="p4tm:57H1jONk_jL" resolve="role" />
            </node>
          </node>
          <node concept="3x8VRR" id="3S1cLRkZ8no" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8np" role="3clFbx">
          <node concept="1Z5TYs" id="3S1cLRkZ8nq" role="3cqZAp">
            <node concept="mw_s8" id="3S1cLRkZ8nr" role="1ZfhK$">
              <node concept="1Z2H0r" id="3S1cLRkZ8ns" role="mwGJk">
                <node concept="1YBJjd" id="3S1cLRkZ8nt" role="1Z2MuG">
                  <ref role="1YBMHb" node="3S1cLRkZ8n5" resolve="step" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="3S1cLRkZ8nu" role="1ZfhKB">
              <node concept="1Z2H0r" id="3S1cLRkZ8nv" role="mwGJk">
                <node concept="37vLTw" id="3S1cLRkZ8nw" role="1Z2MuG">
                  <ref role="3cqZAo" node="3S1cLRkZ8n8" resolve="actor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3S1cLRkZ8nx" role="3cqZAp">
            <node concept="3cpWsn" id="3S1cLRkZ8ny" role="3cpWs9">
              <property role="TrG5h" value="requerido" />
              <node concept="3Tqbb2" id="3S1cLRkZ8nz" role="1tU5fm">
                <ref role="ehGHo" to="p4tm:57H1jONk_iX" resolve="Role" />
              </node>
              <node concept="2OqwBi" id="3S1cLRkZ8n$" role="33vP2m">
                <node concept="2OqwBi" id="3S1cLRkZ8n_" role="2Oq$k0">
                  <node concept="1YBJjd" id="3S1cLRkZ8nA" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8n5" resolve="step" />
                  </node>
                  <node concept="3TrEf2" id="3S1cLRkZ8nB" role="2OqNvi">
                    <ref role="3Tt5mk" to="p4tm:57H1jONk_jM" resolve="event" />
                  </node>
                </node>
                <node concept="3TrEf2" id="3S1cLRkZ8nC" role="2OqNvi">
                  <ref role="3Tt5mk" to="p4tm:57H1jONk_j6" resolve="requiredRole" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3S1cLRkZ8nD" role="3cqZAp">
            <node concept="2OqwBi" id="3S1cLRkZ8nE" role="3clFbw">
              <node concept="37vLTw" id="3S1cLRkZ8nF" role="2Oq$k0">
                <ref role="3cqZAo" node="3S1cLRkZ8ny" resolve="requerido" />
              </node>
              <node concept="3x8VRR" id="3S1cLRkZ8nG" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="3S1cLRkZ8nH" role="3clFbx">
              <node concept="1ZobV4" id="3S1cLRkZ8nI" role="3cqZAp">
                <node concept="mw_s8" id="3S1cLRkZ8nJ" role="1ZfhK$">
                  <node concept="1Z2H0r" id="3S1cLRkZ8nK" role="mwGJk">
                    <node concept="37vLTw" id="3S1cLRkZ8nL" role="1Z2MuG">
                      <ref role="3cqZAo" node="3S1cLRkZ8n8" resolve="actor" />
                    </node>
                  </node>
                </node>
                <node concept="mw_s8" id="3S1cLRkZ8nM" role="1ZfhKB">
                  <node concept="2pJPEk" id="3S1cLRkZ8nN" role="mwGJk">
                    <node concept="2pJPED" id="3S1cLRkZ8nO" role="2pJPEn">
                      <ref role="2pJxaS" to="p4tm:57H1jONk_k1" resolve="RoleType" />
                      <node concept="2pIpSj" id="3S1cLRkZ8nP" role="2pJxcM">
                        <ref role="2pIpSl" to="p4tm:57H1jONk_k3" resolve="role" />
                        <node concept="36biLy" id="3S1cLRkZ8nQ" role="28nt2d">
                          <node concept="37vLTw" id="3S1cLRkZ8nR" role="36biLW">
                            <ref role="3cqZAo" node="3S1cLRkZ8ny" resolve="requerido" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="3S1cLRkZ8nS" role="3o8Qv2">
                  <node concept="3cpWs3" id="3S1cLRkZ8nT" role="3uHU7B">
                    <node concept="3cpWs3" id="3S1cLRkZ8nU" role="3uHU7B">
                      <node concept="3cpWs3" id="3S1cLRkZ8nV" role="3uHU7B">
                        <node concept="3cpWs3" id="3S1cLRkZ8nW" role="3uHU7B">
                          <node concept="3cpWs3" id="3S1cLRkZ8nX" role="3uHU7B">
                            <node concept="3cpWs3" id="3S1cLRkZ8nY" role="3uHU7B">
                              <node concept="3cpWs3" id="3S1cLRkZ8nZ" role="3uHU7B">
                                <node concept="Xl_RD" id="3S1cLRkZ8o0" role="3uHU7B">
                                  <property role="Xl_RC" value="Incompatibilidad de roles: el actor '" />
                                </node>
                                <node concept="2OqwBi" id="3S1cLRkZ8o1" role="3uHU7w">
                                  <node concept="2OqwBi" id="3S1cLRkZ8o2" role="2Oq$k0">
                                    <node concept="37vLTw" id="3S1cLRkZ8o3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3S1cLRkZ8n8" resolve="actor" />
                                    </node>
                                    <node concept="3TrEf2" id="3S1cLRkZ8o4" role="2OqNvi">
                                      <ref role="3Tt5mk" to="p4tm:57H1jONk_jL" resolve="role" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="3S1cLRkZ8o5" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="3S1cLRkZ8o6" role="3uHU7w">
                                <property role="Xl_RC" value="' no puede ejecutar el evento '" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3S1cLRkZ8o7" role="3uHU7w">
                              <node concept="2OqwBi" id="3S1cLRkZ8o8" role="2Oq$k0">
                                <node concept="1YBJjd" id="3S1cLRkZ8o9" role="2Oq$k0">
                                  <ref role="1YBMHb" node="3S1cLRkZ8n5" resolve="step" />
                                </node>
                                <node concept="3TrEf2" id="3S1cLRkZ8oa" role="2OqNvi">
                                  <ref role="3Tt5mk" to="p4tm:57H1jONk_jM" resolve="event" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="3S1cLRkZ8ob" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="3S1cLRkZ8oc" role="3uHU7w">
                            <property role="Xl_RC" value="' en el escenario '" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3S1cLRkZ8od" role="3uHU7w">
                          <node concept="2OqwBi" id="3S1cLRkZ8oe" role="2Oq$k0">
                            <node concept="1YBJjd" id="3S1cLRkZ8of" role="2Oq$k0">
                              <ref role="1YBMHb" node="3S1cLRkZ8n5" resolve="step" />
                            </node>
                            <node concept="2Xjw5R" id="3S1cLRkZ8og" role="2OqNvi">
                              <node concept="1xMEDy" id="3S1cLRkZ8oj" role="1xVPHs">
                                <node concept="chp4Y" id="3S1cLRkZ8ok" role="ri$Ld">
                                  <ref role="cht4Q" to="p4tm:57H1jONk_jG" resolve="Scenario" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8ol" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3S1cLRkZ8om" role="3uHU7w">
                        <property role="Xl_RC" value="', porque ese evento requiere el rol '" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3S1cLRkZ8on" role="3uHU7w">
                      <node concept="37vLTw" id="3S1cLRkZ8oo" role="2Oq$k0">
                        <ref role="3cqZAo" node="3S1cLRkZ8ny" resolve="requerido" />
                      </node>
                      <node concept="3TrcHB" id="3S1cLRkZ8op" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3S1cLRkZ8oq" role="3uHU7w">
                    <property role="Xl_RC" value="' (o un rol que herede de él)." />
                  </node>
                </node>
                <node concept="1YBJjd" id="3S1cLRkZ8or" role="1ZmcU8">
                  <ref role="1YBMHb" node="3S1cLRkZ8n5" resolve="step" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkZ8os">
    <property role="TrG5h" value="check_Device_EstadoInicialUnico" />
    <node concept="1YaCAy" id="3S1cLRkZ8ot" role="1YuTPh">
      <property role="TrG5h" value="device" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_j2" resolve="Device" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8ou" role="18ibNy">
      <node concept="3cpWs8" id="3S1cLRkZ8ov" role="3cqZAp">
        <node concept="3cpWsn" id="3S1cLRkZ8ow" role="3cpWs9">
          <property role="TrG5h" value="iniciales" />
          <node concept="10Oyi0" id="3S1cLRkZ8ox" role="1tU5fm" />
          <node concept="2OqwBi" id="3S1cLRkZ8oy" role="33vP2m">
            <node concept="2OqwBi" id="3S1cLRkZ8oz" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8o$" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8ot" resolve="device" />
              </node>
              <node concept="3zqWPK" id="3S1cLRkZ8o_" role="2OqNvi">
                <ref role="37wK5l" to="yke2:4iWSnKEtrVj" resolve="initialStates" />
              </node>
            </node>
            <node concept="34oBXx" id="3S1cLRkZ8oA" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="3S1cLRkZ8oB" role="3cqZAp">
        <node concept="3y3z36" id="3S1cLRkZ8oC" role="3clFbw">
          <node concept="37vLTw" id="3S1cLRkZ8oD" role="3uHU7B">
            <ref role="3cqZAo" node="3S1cLRkZ8ow" resolve="iniciales" />
          </node>
          <node concept="3cmrfG" id="3S1cLRkZ8oE" role="3uHU7w">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8oF" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkZ8oG" role="3cqZAp">
            <node concept="3cpWs3" id="3S1cLRkZ8oH" role="2MkJ7o">
              <node concept="3cpWs3" id="3S1cLRkZ8oI" role="3uHU7B">
                <node concept="3cpWs3" id="3S1cLRkZ8oJ" role="3uHU7B">
                  <node concept="3cpWs3" id="3S1cLRkZ8oK" role="3uHU7B">
                    <node concept="Xl_RD" id="3S1cLRkZ8oL" role="3uHU7B">
                      <property role="Xl_RC" value="El dispositivo '" />
                    </node>
                    <node concept="2OqwBi" id="3S1cLRkZ8oM" role="3uHU7w">
                      <node concept="1YBJjd" id="3S1cLRkZ8oN" role="2Oq$k0">
                        <ref role="1YBMHb" node="3S1cLRkZ8ot" resolve="device" />
                      </node>
                      <node concept="3TrcHB" id="3S1cLRkZ8oO" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3S1cLRkZ8oP" role="3uHU7w">
                    <property role="Xl_RC" value="' debe tener exactamente un estado inicial (marcado con →), pero tiene " />
                  </node>
                </node>
                <node concept="37vLTw" id="3S1cLRkZ8oQ" role="3uHU7w">
                  <ref role="3cqZAo" node="3S1cLRkZ8ow" resolve="iniciales" />
                </node>
              </node>
              <node concept="Xl_RD" id="3S1cLRkZ8oR" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8oS" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkZ8ot" resolve="device" />
            </node>
            <node concept="2ODE4t" id="3S1cLRkZ8oT" role="1urrC5">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkZ8oU">
    <property role="TrG5h" value="check_State_NombreUnico" />
    <node concept="1YaCAy" id="3S1cLRkZ8oV" role="1YuTPh">
      <property role="TrG5h" value="state" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_iZ" resolve="State" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8oW" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8oX" role="3cqZAp">
        <node concept="1Wc70l" id="3S1cLRkZ8oY" role="3clFbw">
          <node concept="3y3z36" id="3S1cLRkZ8oZ" role="3uHU7B">
            <node concept="2OqwBi" id="3S1cLRkZ8p0" role="3uHU7B">
              <node concept="1YBJjd" id="3S1cLRkZ8p1" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8oV" resolve="state" />
              </node>
              <node concept="3TrcHB" id="3S1cLRkZ8p2" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="10Nm6u" id="3S1cLRkZ8p3" role="3uHU7w" />
          </node>
          <node concept="2OqwBi" id="3S1cLRkZ8p4" role="3uHU7w">
            <node concept="2OqwBi" id="3S1cLRkZ8p5" role="2Oq$k0">
              <node concept="2OqwBi" id="3S1cLRkZ8p6" role="2Oq$k0">
                <node concept="1YBJjd" id="3S1cLRkZ8p7" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8oV" resolve="state" />
                </node>
                <node concept="3zqWPK" id="3S1cLRkZ8p8" role="2OqNvi">
                  <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                </node>
              </node>
              <node concept="3Tsc0h" id="3S1cLRkZ8p9" role="2OqNvi">
                <ref role="3TtcxE" to="p4tm:57H1jONk_ji" resolve="states" />
              </node>
            </node>
            <node concept="2HwmR7" id="3S1cLRkZ8pa" role="2OqNvi">
              <node concept="1bVj0M" id="3S1cLRkZ8pf" role="23t8la">
                <node concept="gl6BB" id="3S1cLRkZ8pg" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <property role="2Lvdk3" value="it" />
                  <node concept="2jxLKc" id="3S1cLRkZ8pi" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="3S1cLRkZ8pj" role="1bW5cS">
                  <node concept="3clFbF" id="3S1cLRkZ8pk" role="3cqZAp">
                    <node concept="1Wc70l" id="3S1cLRkZ8pl" role="3clFbG">
                      <node concept="17QLQc" id="3S1cLRkZ8pm" role="3uHU7B">
                        <node concept="37vLTw" id="3S1cLRkZ8pn" role="3uHU7B">
                          <ref role="3cqZAo" node="3S1cLRkZ8pg" resolve="it" />
                        </node>
                        <node concept="1YBJjd" id="3S1cLRkZ8po" role="3uHU7w">
                          <ref role="1YBMHb" node="3S1cLRkZ8oV" resolve="state" />
                        </node>
                      </node>
                      <node concept="17R0WA" id="3S1cLRkZ8pp" role="3uHU7w">
                        <node concept="2OqwBi" id="3S1cLRkZ8pq" role="3uHU7B">
                          <node concept="37vLTw" id="3S1cLRkZ8pr" role="2Oq$k0">
                            <ref role="3cqZAo" node="3S1cLRkZ8pg" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8ps" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3S1cLRkZ8pt" role="3uHU7w">
                          <node concept="1YBJjd" id="3S1cLRkZ8pu" role="2Oq$k0">
                            <ref role="1YBMHb" node="3S1cLRkZ8oV" resolve="state" />
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8pv" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
        <node concept="3clFbS" id="3S1cLRkZ8pw" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkZ8px" role="3cqZAp">
            <node concept="3cpWs3" id="3S1cLRkZ8py" role="2MkJ7o">
              <node concept="3cpWs3" id="3S1cLRkZ8pz" role="3uHU7B">
                <node concept="3cpWs3" id="3S1cLRkZ8p$" role="3uHU7B">
                  <node concept="3cpWs3" id="3S1cLRkZ8p_" role="3uHU7B">
                    <node concept="Xl_RD" id="3S1cLRkZ8pA" role="3uHU7B">
                      <property role="Xl_RC" value="Nombre duplicado: el dispositivo '" />
                    </node>
                    <node concept="2OqwBi" id="3S1cLRkZ8pB" role="3uHU7w">
                      <node concept="2OqwBi" id="3S1cLRkZ8pC" role="2Oq$k0">
                        <node concept="1YBJjd" id="3S1cLRkZ8pD" role="2Oq$k0">
                          <ref role="1YBMHb" node="3S1cLRkZ8oV" resolve="state" />
                        </node>
                        <node concept="3zqWPK" id="3S1cLRkZ8pE" role="2OqNvi">
                          <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="3S1cLRkZ8pF" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3S1cLRkZ8pG" role="3uHU7w">
                    <property role="Xl_RC" value="' ya tiene otro estado llamado '" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3S1cLRkZ8pH" role="3uHU7w">
                  <node concept="1YBJjd" id="3S1cLRkZ8pI" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8oV" resolve="state" />
                  </node>
                  <node concept="3TrcHB" id="3S1cLRkZ8pJ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3S1cLRkZ8pK" role="3uHU7w">
                <property role="Xl_RC" value="'. Cada nombre debe ser único." />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8pL" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkZ8oV" resolve="state" />
            </node>
            <node concept="2ODE4t" id="3S1cLRkZ8pM" role="1urrC5">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkZ8pN">
    <property role="TrG5h" value="check_Event_NombreUnico" />
    <node concept="1YaCAy" id="3S1cLRkZ8pO" role="1YuTPh">
      <property role="TrG5h" value="event" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_iY" resolve="Event" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8pP" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8pQ" role="3cqZAp">
        <node concept="1Wc70l" id="3S1cLRkZ8pR" role="3clFbw">
          <node concept="3y3z36" id="3S1cLRkZ8pS" role="3uHU7B">
            <node concept="2OqwBi" id="3S1cLRkZ8pT" role="3uHU7B">
              <node concept="1YBJjd" id="3S1cLRkZ8pU" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8pO" resolve="event" />
              </node>
              <node concept="3TrcHB" id="3S1cLRkZ8pV" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="10Nm6u" id="3S1cLRkZ8pW" role="3uHU7w" />
          </node>
          <node concept="2OqwBi" id="3S1cLRkZ8pX" role="3uHU7w">
            <node concept="2OqwBi" id="3S1cLRkZ8pY" role="2Oq$k0">
              <node concept="2OqwBi" id="3S1cLRkZ8pZ" role="2Oq$k0">
                <node concept="1YBJjd" id="3S1cLRkZ8q0" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8pO" resolve="event" />
                </node>
                <node concept="3zqWPK" id="3S1cLRkZ8q1" role="2OqNvi">
                  <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                </node>
              </node>
              <node concept="3Tsc0h" id="3S1cLRkZ8q2" role="2OqNvi">
                <ref role="3TtcxE" to="p4tm:57H1jONk_jh" resolve="events" />
              </node>
            </node>
            <node concept="2HwmR7" id="3S1cLRkZ8q3" role="2OqNvi">
              <node concept="1bVj0M" id="3S1cLRkZ8q8" role="23t8la">
                <node concept="gl6BB" id="3S1cLRkZ8q9" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <property role="2Lvdk3" value="it" />
                  <node concept="2jxLKc" id="3S1cLRkZ8qb" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="3S1cLRkZ8qc" role="1bW5cS">
                  <node concept="3clFbF" id="3S1cLRkZ8qd" role="3cqZAp">
                    <node concept="1Wc70l" id="3S1cLRkZ8qe" role="3clFbG">
                      <node concept="17QLQc" id="3S1cLRkZ8qf" role="3uHU7B">
                        <node concept="37vLTw" id="3S1cLRkZ8qg" role="3uHU7B">
                          <ref role="3cqZAo" node="3S1cLRkZ8q9" resolve="it" />
                        </node>
                        <node concept="1YBJjd" id="3S1cLRkZ8qh" role="3uHU7w">
                          <ref role="1YBMHb" node="3S1cLRkZ8pO" resolve="event" />
                        </node>
                      </node>
                      <node concept="17R0WA" id="3S1cLRkZ8qi" role="3uHU7w">
                        <node concept="2OqwBi" id="3S1cLRkZ8qj" role="3uHU7B">
                          <node concept="37vLTw" id="3S1cLRkZ8qk" role="2Oq$k0">
                            <ref role="3cqZAo" node="3S1cLRkZ8q9" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8ql" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3S1cLRkZ8qm" role="3uHU7w">
                          <node concept="1YBJjd" id="3S1cLRkZ8qn" role="2Oq$k0">
                            <ref role="1YBMHb" node="3S1cLRkZ8pO" resolve="event" />
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8qo" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
        <node concept="3clFbS" id="3S1cLRkZ8qp" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkZ8qq" role="3cqZAp">
            <node concept="3cpWs3" id="3S1cLRkZ8qr" role="2MkJ7o">
              <node concept="3cpWs3" id="3S1cLRkZ8qs" role="3uHU7B">
                <node concept="3cpWs3" id="3S1cLRkZ8qt" role="3uHU7B">
                  <node concept="3cpWs3" id="3S1cLRkZ8qu" role="3uHU7B">
                    <node concept="Xl_RD" id="3S1cLRkZ8qv" role="3uHU7B">
                      <property role="Xl_RC" value="Nombre duplicado: el dispositivo '" />
                    </node>
                    <node concept="2OqwBi" id="3S1cLRkZ8qw" role="3uHU7w">
                      <node concept="2OqwBi" id="3S1cLRkZ8qx" role="2Oq$k0">
                        <node concept="1YBJjd" id="3S1cLRkZ8qy" role="2Oq$k0">
                          <ref role="1YBMHb" node="3S1cLRkZ8pO" resolve="event" />
                        </node>
                        <node concept="3zqWPK" id="3S1cLRkZ8qz" role="2OqNvi">
                          <ref role="37wK5l" to="yke2:4iWSnKEtrTP" resolve="getDevice" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="3S1cLRkZ8q$" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3S1cLRkZ8q_" role="3uHU7w">
                    <property role="Xl_RC" value="' ya tiene otro evento llamado '" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3S1cLRkZ8qA" role="3uHU7w">
                  <node concept="1YBJjd" id="3S1cLRkZ8qB" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8pO" resolve="event" />
                  </node>
                  <node concept="3TrcHB" id="3S1cLRkZ8qC" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3S1cLRkZ8qD" role="3uHU7w">
                <property role="Xl_RC" value="'. Cada nombre debe ser único." />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8qE" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkZ8pO" resolve="event" />
            </node>
            <node concept="2ODE4t" id="3S1cLRkZ8qF" role="1urrC5">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkZ8qG">
    <property role="TrG5h" value="check_Device_NombreUnico" />
    <node concept="1YaCAy" id="3S1cLRkZ8qH" role="1YuTPh">
      <property role="TrG5h" value="device" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_j2" resolve="Device" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8qI" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8qJ" role="3cqZAp">
        <node concept="1Wc70l" id="3S1cLRkZ8qK" role="3clFbw">
          <node concept="3y3z36" id="3S1cLRkZ8qL" role="3uHU7B">
            <node concept="2OqwBi" id="3S1cLRkZ8qM" role="3uHU7B">
              <node concept="1YBJjd" id="3S1cLRkZ8qN" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8qH" resolve="device" />
              </node>
              <node concept="3TrcHB" id="3S1cLRkZ8qO" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="10Nm6u" id="3S1cLRkZ8qP" role="3uHU7w" />
          </node>
          <node concept="2OqwBi" id="3S1cLRkZ8qQ" role="3uHU7w">
            <node concept="2OqwBi" id="3S1cLRkZ8qR" role="2Oq$k0">
              <node concept="2OqwBi" id="3S1cLRkZ8qS" role="2Oq$k0">
                <node concept="1YBJjd" id="3S1cLRkZ8qT" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8qH" resolve="device" />
                </node>
                <node concept="2Xjw5R" id="3S1cLRkZ8qU" role="2OqNvi">
                  <node concept="1xMEDy" id="3S1cLRkZ8qX" role="1xVPHs">
                    <node concept="chp4Y" id="3S1cLRkZ8qY" role="ri$Ld">
                      <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tsc0h" id="3S1cLRkZ8qZ" role="2OqNvi">
                <ref role="3TtcxE" to="p4tm:57H1jONk_jV" resolve="devices" />
              </node>
            </node>
            <node concept="2HwmR7" id="3S1cLRkZ8r0" role="2OqNvi">
              <node concept="1bVj0M" id="3S1cLRkZ8r5" role="23t8la">
                <node concept="gl6BB" id="3S1cLRkZ8r6" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <property role="2Lvdk3" value="it" />
                  <node concept="2jxLKc" id="3S1cLRkZ8r8" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="3S1cLRkZ8r9" role="1bW5cS">
                  <node concept="3clFbF" id="3S1cLRkZ8ra" role="3cqZAp">
                    <node concept="1Wc70l" id="3S1cLRkZ8rb" role="3clFbG">
                      <node concept="17QLQc" id="3S1cLRkZ8rc" role="3uHU7B">
                        <node concept="37vLTw" id="3S1cLRkZ8rd" role="3uHU7B">
                          <ref role="3cqZAo" node="3S1cLRkZ8r6" resolve="it" />
                        </node>
                        <node concept="1YBJjd" id="3S1cLRkZ8re" role="3uHU7w">
                          <ref role="1YBMHb" node="3S1cLRkZ8qH" resolve="device" />
                        </node>
                      </node>
                      <node concept="17R0WA" id="3S1cLRkZ8rf" role="3uHU7w">
                        <node concept="2OqwBi" id="3S1cLRkZ8rg" role="3uHU7B">
                          <node concept="37vLTw" id="3S1cLRkZ8rh" role="2Oq$k0">
                            <ref role="3cqZAo" node="3S1cLRkZ8r6" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8ri" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3S1cLRkZ8rj" role="3uHU7w">
                          <node concept="1YBJjd" id="3S1cLRkZ8rk" role="2Oq$k0">
                            <ref role="1YBMHb" node="3S1cLRkZ8qH" resolve="device" />
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8rl" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
        <node concept="3clFbS" id="3S1cLRkZ8rm" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkZ8rn" role="3cqZAp">
            <node concept="3cpWs3" id="3S1cLRkZ8ro" role="2MkJ7o">
              <node concept="3cpWs3" id="3S1cLRkZ8rp" role="3uHU7B">
                <node concept="3cpWs3" id="3S1cLRkZ8rq" role="3uHU7B">
                  <node concept="3cpWs3" id="3S1cLRkZ8rr" role="3uHU7B">
                    <node concept="Xl_RD" id="3S1cLRkZ8rs" role="3uHU7B">
                      <property role="Xl_RC" value="Nombre duplicado: el sistema '" />
                    </node>
                    <node concept="2OqwBi" id="3S1cLRkZ8rt" role="3uHU7w">
                      <node concept="2OqwBi" id="3S1cLRkZ8ru" role="2Oq$k0">
                        <node concept="1YBJjd" id="3S1cLRkZ8rv" role="2Oq$k0">
                          <ref role="1YBMHb" node="3S1cLRkZ8qH" resolve="device" />
                        </node>
                        <node concept="2Xjw5R" id="3S1cLRkZ8rw" role="2OqNvi">
                          <node concept="1xMEDy" id="3S1cLRkZ8rz" role="1xVPHs">
                            <node concept="chp4Y" id="3S1cLRkZ8r$" role="ri$Ld">
                              <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3TrcHB" id="3S1cLRkZ8r_" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3S1cLRkZ8rA" role="3uHU7w">
                    <property role="Xl_RC" value="' ya tiene otro dispositivo llamado '" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3S1cLRkZ8rB" role="3uHU7w">
                  <node concept="1YBJjd" id="3S1cLRkZ8rC" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8qH" resolve="device" />
                  </node>
                  <node concept="3TrcHB" id="3S1cLRkZ8rD" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3S1cLRkZ8rE" role="3uHU7w">
                <property role="Xl_RC" value="'. Cada nombre debe ser único." />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8rF" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkZ8qH" resolve="device" />
            </node>
            <node concept="2ODE4t" id="3S1cLRkZ8rG" role="1urrC5">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkZ8rH">
    <property role="TrG5h" value="check_Role_NombreUnico" />
    <node concept="1YaCAy" id="3S1cLRkZ8rI" role="1YuTPh">
      <property role="TrG5h" value="role" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_iX" resolve="Role" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8rJ" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8rK" role="3cqZAp">
        <node concept="1Wc70l" id="3S1cLRkZ8rL" role="3clFbw">
          <node concept="3y3z36" id="3S1cLRkZ8rM" role="3uHU7B">
            <node concept="2OqwBi" id="3S1cLRkZ8rN" role="3uHU7B">
              <node concept="1YBJjd" id="3S1cLRkZ8rO" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8rI" resolve="role" />
              </node>
              <node concept="3TrcHB" id="3S1cLRkZ8rP" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="10Nm6u" id="3S1cLRkZ8rQ" role="3uHU7w" />
          </node>
          <node concept="2OqwBi" id="3S1cLRkZ8rR" role="3uHU7w">
            <node concept="2OqwBi" id="3S1cLRkZ8rS" role="2Oq$k0">
              <node concept="2OqwBi" id="3S1cLRkZ8rT" role="2Oq$k0">
                <node concept="1YBJjd" id="3S1cLRkZ8rU" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8rI" resolve="role" />
                </node>
                <node concept="2Xjw5R" id="3S1cLRkZ8rV" role="2OqNvi">
                  <node concept="1xMEDy" id="3S1cLRkZ8rY" role="1xVPHs">
                    <node concept="chp4Y" id="3S1cLRkZ8rZ" role="ri$Ld">
                      <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tsc0h" id="3S1cLRkZ8s0" role="2OqNvi">
                <ref role="3TtcxE" to="p4tm:57H1jONk_jU" resolve="roles" />
              </node>
            </node>
            <node concept="2HwmR7" id="3S1cLRkZ8s1" role="2OqNvi">
              <node concept="1bVj0M" id="3S1cLRkZ8s6" role="23t8la">
                <node concept="gl6BB" id="3S1cLRkZ8s7" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <property role="2Lvdk3" value="it" />
                  <node concept="2jxLKc" id="3S1cLRkZ8s9" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="3S1cLRkZ8sa" role="1bW5cS">
                  <node concept="3clFbF" id="3S1cLRkZ8sb" role="3cqZAp">
                    <node concept="1Wc70l" id="3S1cLRkZ8sc" role="3clFbG">
                      <node concept="17QLQc" id="3S1cLRkZ8sd" role="3uHU7B">
                        <node concept="37vLTw" id="3S1cLRkZ8se" role="3uHU7B">
                          <ref role="3cqZAo" node="3S1cLRkZ8s7" resolve="it" />
                        </node>
                        <node concept="1YBJjd" id="3S1cLRkZ8sf" role="3uHU7w">
                          <ref role="1YBMHb" node="3S1cLRkZ8rI" resolve="role" />
                        </node>
                      </node>
                      <node concept="17R0WA" id="3S1cLRkZ8sg" role="3uHU7w">
                        <node concept="2OqwBi" id="3S1cLRkZ8sh" role="3uHU7B">
                          <node concept="37vLTw" id="3S1cLRkZ8si" role="2Oq$k0">
                            <ref role="3cqZAo" node="3S1cLRkZ8s7" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8sj" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3S1cLRkZ8sk" role="3uHU7w">
                          <node concept="1YBJjd" id="3S1cLRkZ8sl" role="2Oq$k0">
                            <ref role="1YBMHb" node="3S1cLRkZ8rI" resolve="role" />
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8sm" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
        <node concept="3clFbS" id="3S1cLRkZ8sn" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkZ8so" role="3cqZAp">
            <node concept="3cpWs3" id="3S1cLRkZ8sp" role="2MkJ7o">
              <node concept="3cpWs3" id="3S1cLRkZ8sq" role="3uHU7B">
                <node concept="3cpWs3" id="3S1cLRkZ8sr" role="3uHU7B">
                  <node concept="3cpWs3" id="3S1cLRkZ8ss" role="3uHU7B">
                    <node concept="Xl_RD" id="3S1cLRkZ8st" role="3uHU7B">
                      <property role="Xl_RC" value="Nombre duplicado: el sistema '" />
                    </node>
                    <node concept="2OqwBi" id="3S1cLRkZ8su" role="3uHU7w">
                      <node concept="2OqwBi" id="3S1cLRkZ8sv" role="2Oq$k0">
                        <node concept="1YBJjd" id="3S1cLRkZ8sw" role="2Oq$k0">
                          <ref role="1YBMHb" node="3S1cLRkZ8rI" resolve="role" />
                        </node>
                        <node concept="2Xjw5R" id="3S1cLRkZ8sx" role="2OqNvi">
                          <node concept="1xMEDy" id="3S1cLRkZ8s$" role="1xVPHs">
                            <node concept="chp4Y" id="3S1cLRkZ8s_" role="ri$Ld">
                              <ref role="cht4Q" to="p4tm:57H1jONk_jT" resolve="HomeSystem" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3TrcHB" id="3S1cLRkZ8sA" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3S1cLRkZ8sB" role="3uHU7w">
                    <property role="Xl_RC" value="' ya tiene otro rol llamado '" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3S1cLRkZ8sC" role="3uHU7w">
                  <node concept="1YBJjd" id="3S1cLRkZ8sD" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8rI" resolve="role" />
                  </node>
                  <node concept="3TrcHB" id="3S1cLRkZ8sE" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3S1cLRkZ8sF" role="3uHU7w">
                <property role="Xl_RC" value="'. Cada nombre debe ser único." />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8sG" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkZ8rI" resolve="role" />
            </node>
            <node concept="2ODE4t" id="3S1cLRkZ8sH" role="1urrC5">
              <ref role="2ODJFN" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkZ8sI">
    <property role="TrG5h" value="check_AlarmState_NoAceptacion" />
    <node concept="1YaCAy" id="3S1cLRkZ8sJ" role="1YuTPh">
      <property role="TrG5h" value="alarm" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_j0" resolve="AlarmState" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8sK" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8sL" role="3cqZAp">
        <node concept="2OqwBi" id="3S1cLRkZ8sM" role="3clFbw">
          <node concept="1YBJjd" id="3S1cLRkZ8sN" role="2Oq$k0">
            <ref role="1YBMHb" node="3S1cLRkZ8sJ" resolve="alarm" />
          </node>
          <node concept="3TrcHB" id="3S1cLRkZ8sO" role="2OqNvi">
            <ref role="3TsBF5" to="p4tm:57H1jONk_ja" resolve="accepting" />
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8sP" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkZ8sQ" role="3cqZAp">
            <node concept="3cpWs3" id="3S1cLRkZ8sR" role="2MkJ7o">
              <node concept="3cpWs3" id="3S1cLRkZ8sS" role="3uHU7B">
                <node concept="Xl_RD" id="3S1cLRkZ8sT" role="3uHU7B">
                  <property role="Xl_RC" value="El estado de alarma '" />
                </node>
                <node concept="2OqwBi" id="3S1cLRkZ8sU" role="3uHU7w">
                  <node concept="1YBJjd" id="3S1cLRkZ8sV" role="2Oq$k0">
                    <ref role="1YBMHb" node="3S1cLRkZ8sJ" resolve="alarm" />
                  </node>
                  <node concept="3TrcHB" id="3S1cLRkZ8sW" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3S1cLRkZ8sX" role="3uHU7w">
                <property role="Xl_RC" value="' no puede ser de aceptación (◎): una alarma representa una situación anómala, nunca un final correcto." />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8sY" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkZ8sJ" resolve="alarm" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkZ8sZ">
    <property role="TrG5h" value="check_Event_SensorSinRol" />
    <node concept="1YaCAy" id="3S1cLRkZ8t0" role="1YuTPh">
      <property role="TrG5h" value="event" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_iY" resolve="Event" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8t1" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8t2" role="3cqZAp">
        <node concept="1Wc70l" id="3S1cLRkZ8t3" role="3clFbw">
          <node concept="3fqX7Q" id="3S1cLRkZ8t4" role="3uHU7B">
            <node concept="2OqwBi" id="3S1cLRkZ8t5" role="3fr31v">
              <node concept="2OqwBi" id="3S1cLRkZ8t6" role="2Oq$k0">
                <node concept="1YBJjd" id="3S1cLRkZ8t7" role="2Oq$k0">
                  <ref role="1YBMHb" node="3S1cLRkZ8t0" resolve="event" />
                </node>
                <node concept="3TrcHB" id="3S1cLRkZ8t8" role="2OqNvi">
                  <ref role="3TsBF5" to="p4tm:57H1jONk_j5" resolve="kind" />
                </node>
              </node>
              <node concept="21noJN" id="3S1cLRkZ8t9" role="2OqNvi">
                <node concept="21nZrQ" id="3S1cLRkZ8ta" role="21noJM">
                  <ref role="21nZrZ" to="p4tm:57H1jONk_iJ" resolve="COMMAND" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3S1cLRkZ8tb" role="3uHU7w">
            <node concept="2OqwBi" id="3S1cLRkZ8tc" role="2Oq$k0">
              <node concept="1YBJjd" id="3S1cLRkZ8td" role="2Oq$k0">
                <ref role="1YBMHb" node="3S1cLRkZ8t0" resolve="event" />
              </node>
              <node concept="3TrEf2" id="3S1cLRkZ8te" role="2OqNvi">
                <ref role="3Tt5mk" to="p4tm:57H1jONk_j6" resolve="requiredRole" />
              </node>
            </node>
            <node concept="3x8VRR" id="3S1cLRkZ8tf" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8tg" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkZ8th" role="3cqZAp">
            <node concept="3cpWs3" id="3S1cLRkZ8ti" role="2MkJ7o">
              <node concept="3cpWs3" id="3S1cLRkZ8tj" role="3uHU7B">
                <node concept="3cpWs3" id="3S1cLRkZ8tk" role="3uHU7B">
                  <node concept="3cpWs3" id="3S1cLRkZ8tl" role="3uHU7B">
                    <node concept="3cpWs3" id="3S1cLRkZ8tm" role="3uHU7B">
                      <node concept="3cpWs3" id="3S1cLRkZ8tn" role="3uHU7B">
                        <node concept="Xl_RD" id="3S1cLRkZ8to" role="3uHU7B">
                          <property role="Xl_RC" value="El evento '" />
                        </node>
                        <node concept="2OqwBi" id="3S1cLRkZ8tp" role="3uHU7w">
                          <node concept="1YBJjd" id="3S1cLRkZ8tq" role="2Oq$k0">
                            <ref role="1YBMHb" node="3S1cLRkZ8t0" resolve="event" />
                          </node>
                          <node concept="3TrcHB" id="3S1cLRkZ8tr" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3S1cLRkZ8ts" role="3uHU7w">
                        <property role="Xl_RC" value="' es de tipo " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3S1cLRkZ8tt" role="3uHU7w">
                      <node concept="2OqwBi" id="3S1cLRkZ8tu" role="2Oq$k0">
                        <node concept="1YBJjd" id="3S1cLRkZ8tv" role="2Oq$k0">
                          <ref role="1YBMHb" node="3S1cLRkZ8t0" resolve="event" />
                        </node>
                        <node concept="3TrcHB" id="3S1cLRkZ8tw" role="2OqNvi">
                          <ref role="3TsBF5" to="p4tm:57H1jONk_j5" resolve="kind" />
                        </node>
                      </node>
                      <node concept="24Tkf9" id="3S1cLRkZ8tx" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3S1cLRkZ8ty" role="3uHU7w">
                    <property role="Xl_RC" value=" y no puede requerir el rol '" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3S1cLRkZ8tz" role="3uHU7w">
                  <node concept="2OqwBi" id="3S1cLRkZ8t$" role="2Oq$k0">
                    <node concept="1YBJjd" id="3S1cLRkZ8t_" role="2Oq$k0">
                      <ref role="1YBMHb" node="3S1cLRkZ8t0" resolve="event" />
                    </node>
                    <node concept="3TrEf2" id="3S1cLRkZ8tA" role="2OqNvi">
                      <ref role="3Tt5mk" to="p4tm:57H1jONk_j6" resolve="requiredRole" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3S1cLRkZ8tB" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3S1cLRkZ8tC" role="3uHU7w">
                <property role="Xl_RC" value="': los sensores y temporizadores no los dispara una persona. Quite el rol o cambie el tipo a COMMAND." />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8tD" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkZ8t0" resolve="event" />
            </node>
            <node concept="2OE7Q9" id="3S1cLRkZ8tE" role="1urrC5">
              <ref role="2OEe5H" to="p4tm:57H1jONk_j6" resolve="requiredRole" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3S1cLRkZ8tF">
    <property role="TrG5h" value="check_Role_SinCiclos" />
    <node concept="1YaCAy" id="3S1cLRkZ8tG" role="1YuTPh">
      <property role="TrG5h" value="role" />
      <ref role="1YaFvo" to="p4tm:57H1jONk_iX" resolve="Role" />
    </node>
    <node concept="3clFbS" id="3S1cLRkZ8tH" role="18ibNy">
      <node concept="3clFbJ" id="3S1cLRkZ8tI" role="3cqZAp">
        <node concept="2OqwBi" id="3S1cLRkZ8tJ" role="3clFbw">
          <node concept="2OqwBi" id="3S1cLRkZ8tK" role="2Oq$k0">
            <node concept="1YBJjd" id="3S1cLRkZ8tL" role="2Oq$k0">
              <ref role="1YBMHb" node="3S1cLRkZ8tG" resolve="role" />
            </node>
            <node concept="3zqWPK" id="3S1cLRkZ8tM" role="2OqNvi">
              <ref role="37wK5l" to="yke2:4iWSnKEtrUy" resolve="ancestors" />
            </node>
          </node>
          <node concept="3JPx81" id="3S1cLRkZ8tN" role="2OqNvi">
            <node concept="1YBJjd" id="3S1cLRkZ8tO" role="25WWJ7">
              <ref role="1YBMHb" node="3S1cLRkZ8tG" resolve="role" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3S1cLRkZ8tP" role="3clFbx">
          <node concept="2MkqsV" id="3S1cLRkZ8tQ" role="3cqZAp">
            <node concept="3cpWs3" id="3S1cLRkZ8tR" role="2MkJ7o">
              <node concept="3cpWs3" id="3S1cLRkZ8tS" role="3uHU7B">
                <node concept="3cpWs3" id="3S1cLRkZ8tT" role="3uHU7B">
                  <node concept="3cpWs3" id="3S1cLRkZ8tU" role="3uHU7B">
                    <node concept="Xl_RD" id="3S1cLRkZ8tV" role="3uHU7B">
                      <property role="Xl_RC" value="Jerarquía de roles cíclica: el rol '" />
                    </node>
                    <node concept="2OqwBi" id="3S1cLRkZ8tW" role="3uHU7w">
                      <node concept="1YBJjd" id="3S1cLRkZ8tX" role="2Oq$k0">
                        <ref role="1YBMHb" node="3S1cLRkZ8tG" resolve="role" />
                      </node>
                      <node concept="3TrcHB" id="3S1cLRkZ8tY" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3S1cLRkZ8tZ" role="3uHU7w">
                    <property role="Xl_RC" value="' termina heredando de sí mismo (hereda de '" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3S1cLRkZ8u0" role="3uHU7w">
                  <node concept="2OqwBi" id="3S1cLRkZ8u1" role="2Oq$k0">
                    <node concept="1YBJjd" id="3S1cLRkZ8u2" role="2Oq$k0">
                      <ref role="1YBMHb" node="3S1cLRkZ8tG" resolve="role" />
                    </node>
                    <node concept="3TrEf2" id="3S1cLRkZ8u3" role="2OqNvi">
                      <ref role="3Tt5mk" to="p4tm:57H1jONk_j3" resolve="parent" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3S1cLRkZ8u4" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3S1cLRkZ8u5" role="3uHU7w">
                <property role="Xl_RC" value="'). Un rol no puede ser su propio ancestro." />
              </node>
            </node>
            <node concept="1YBJjd" id="3S1cLRkZ8u6" role="1urrMF">
              <ref role="1YBMHb" node="3S1cLRkZ8tG" resolve="role" />
            </node>
            <node concept="2OE7Q9" id="3S1cLRkZ8u7" role="1urrC5">
              <ref role="2OEe5H" to="p4tm:57H1jONk_j3" resolve="parent" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

