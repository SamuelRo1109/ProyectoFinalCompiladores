<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dbde8baf-0fe0-4595-838d-181b53f5988b(domus.lang.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="25R3W" id="57H1jONk_iH">
    <property role="3F6X1D" value="5903380446964765869" />
    <property role="TrG5h" value="EventKind" />
    <ref role="1H5jkz" node="57H1jONk_iJ" resolve="COMMAND" />
    <node concept="25R33" id="57H1jONk_iJ" role="25R1y">
      <property role="3tVfz5" value="6938794274484549698" />
      <property role="TrG5h" value="COMMAND" />
      <property role="1L1pqM" value="COMMAND" />
    </node>
    <node concept="25R33" id="57H1jONk_iK" role="25R1y">
      <property role="3tVfz5" value="4029148300659557768" />
      <property role="TrG5h" value="SENSOR" />
      <property role="1L1pqM" value="SENSOR" />
    </node>
    <node concept="25R33" id="57H1jONk_iL" role="25R1y">
      <property role="3tVfz5" value="6390115836894964165" />
      <property role="TrG5h" value="TIMER" />
      <property role="1L1pqM" value="TIMER" />
    </node>
  </node>
  <node concept="25R3W" id="57H1jONk_iO">
    <property role="3F6X1D" value="5903380446964765876" />
    <property role="TrG5h" value="PolicyMode" />
    <ref role="1H5jkz" node="57H1jONk_iQ" resolve="REQUIRED" />
    <node concept="25R33" id="57H1jONk_iQ" role="25R1y">
      <property role="3tVfz5" value="3070729614599672803" />
      <property role="TrG5h" value="REQUIRED" />
      <property role="1L1pqM" value="REQUIRED" />
    </node>
    <node concept="25R33" id="57H1jONk_iR" role="25R1y">
      <property role="3tVfz5" value="7705488184732664862" />
      <property role="TrG5h" value="FORBIDDEN" />
      <property role="1L1pqM" value="FORBIDDEN" />
    </node>
  </node>
  <node concept="PlHQZ" id="57H1jONk_iU">
    <property role="EcuMT" value="5903380446964765882" />
    <property role="TrG5h" value="IDeviceElement" />
    <property role="R4oN_" value="Elemento que pertenece a un dispositivo (evento, estado o transición)" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_iX">
    <property role="EcuMT" value="5903380446964765885" />
    <property role="TrG5h" value="Role" />
    <property role="34LRSv" value="rol" />
    <property role="R4oN_" value="Rol de usuario; puede heredar de otro rol" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="57H1jONk_j3" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765891" />
      <property role="20kJfa" value="parent" />
      <ref role="20lvS9" node="57H1jONk_iX" resolve="Role" />
    </node>
    <node concept="PrWs8" id="57H1jONk_j4" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_iY">
    <property role="EcuMT" value="5903380446964765886" />
    <property role="TrG5h" value="Event" />
    <property role="34LRSv" value="evento" />
    <property role="R4oN_" value="Símbolo del alfabeto de un dispositivo" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="57H1jONk_j5" role="1TKVEl">
      <property role="IQ2nx" value="5903380446964765893" />
      <property role="TrG5h" value="kind" />
      <ref role="AX2Wp" node="57H1jONk_iH" resolve="EventKind" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_j6" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765894" />
      <property role="20kJfa" value="requiredRole" />
      <ref role="20lvS9" node="57H1jONk_iX" resolve="Role" />
    </node>
    <node concept="PrWs8" id="57H1jONk_j7" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="57H1jONk_j8" role="PzmwI">
      <ref role="PrY4T" node="57H1jONk_iU" resolve="IDeviceElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_iZ">
    <property role="EcuMT" value="5903380446964765887" />
    <property role="TrG5h" value="State" />
    <property role="34LRSv" value="estado" />
    <property role="R4oN_" value="Estado del autómata de un dispositivo" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="57H1jONk_j9" role="1TKVEl">
      <property role="IQ2nx" value="5903380446964765897" />
      <property role="TrG5h" value="initial" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="57H1jONk_ja" role="1TKVEl">
      <property role="IQ2nx" value="5903380446964765898" />
      <property role="TrG5h" value="accepting" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="57H1jONk_jb" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="57H1jONk_jc" role="PzmwI">
      <ref role="PrY4T" node="57H1jONk_iU" resolve="IDeviceElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_j0">
    <property role="EcuMT" value="5903380446964765888" />
    <property role="TrG5h" value="AlarmState" />
    <property role="34LRSv" value="alarma" />
    <property role="R4oN_" value="Estado de alarma (estado peligroso)" />
    <ref role="1TJDcQ" node="57H1jONk_iZ" resolve="State" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_j1">
    <property role="EcuMT" value="5903380446964765889" />
    <property role="TrG5h" value="Transition" />
    <property role="34LRSv" value="transicion" />
    <property role="R4oN_" value="Transición δ(origen, evento) = destino" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="57H1jONk_jd" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765901" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_iZ" resolve="State" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_je" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765902" />
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_iY" resolve="Event" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_jf" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765903" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_iZ" resolve="State" />
    </node>
    <node concept="PrWs8" id="57H1jONk_jg" role="PzmwI">
      <ref role="PrY4T" node="57H1jONk_iU" resolve="IDeviceElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_j2">
    <property role="EcuMT" value="5903380446964765890" />
    <property role="TrG5h" value="Device" />
    <property role="34LRSv" value="dispositivo" />
    <property role="R4oN_" value="Dispositivo modelado como autómata finito" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="57H1jONk_jh" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765905" />
      <property role="20kJfa" value="events" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="57H1jONk_iY" resolve="Event" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_ji" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765906" />
      <property role="20kJfa" value="states" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="57H1jONk_iZ" resolve="State" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_jj" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765907" />
      <property role="20kJfa" value="transitions" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="57H1jONk_j1" resolve="Transition" />
    </node>
    <node concept="PrWs8" id="57H1jONk_jk" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_jn">
    <property role="EcuMT" value="5903380446964765911" />
    <property role="TrG5h" value="RegexExpr" />
    <property role="R4oN_" value="Expresión regular sobre los eventos de un dispositivo" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_jo">
    <property role="EcuMT" value="5903380446964765912" />
    <property role="TrG5h" value="BinaryRegexExpr" />
    <property role="R4oN_" value="Expresión regular binaria" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="57H1jONk_jn" resolve="RegexExpr" />
    <node concept="1TJgyj" id="57H1jONk_jz" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765923" />
      <property role="20kJfa" value="left" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_jn" resolve="RegexExpr" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_j$" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765924" />
      <property role="20kJfa" value="right" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_jn" resolve="RegexExpr" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_jp">
    <property role="EcuMT" value="5903380446964765913" />
    <property role="TrG5h" value="UnaryRegexExpr" />
    <property role="R4oN_" value="Expresión regular unaria" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="57H1jONk_jn" resolve="RegexExpr" />
    <node concept="1TJgyj" id="57H1jONk_j_" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765925" />
      <property role="20kJfa" value="operand" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_jn" resolve="RegexExpr" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_jq">
    <property role="EcuMT" value="5903380446964765914" />
    <property role="TrG5h" value="SymbolExpr" />
    <property role="R4oN_" value="Un evento del alfabeto" />
    <ref role="1TJDcQ" node="57H1jONk_jn" resolve="RegexExpr" />
    <node concept="1TJgyj" id="57H1jONk_jA" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765926" />
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_iY" resolve="Event" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_jr">
    <property role="EcuMT" value="5903380446964765915" />
    <property role="TrG5h" value="EpsilonExpr" />
    <property role="34LRSv" value="eps" />
    <property role="R4oN_" value="Palabra vacía (ε)" />
    <ref role="1TJDcQ" node="57H1jONk_jn" resolve="RegexExpr" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_js">
    <property role="EcuMT" value="5903380446964765916" />
    <property role="TrG5h" value="AnySymbolExpr" />
    <property role="34LRSv" value="." />
    <property role="R4oN_" value="Cualquier evento del alfabeto" />
    <ref role="1TJDcQ" node="57H1jONk_jn" resolve="RegexExpr" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_jt">
    <property role="EcuMT" value="5903380446964765917" />
    <property role="TrG5h" value="UnionExpr" />
    <property role="34LRSv" value="|" />
    <property role="R4oN_" value="Unión (alternativa)" />
    <ref role="1TJDcQ" node="57H1jONk_jo" resolve="BinaryRegexExpr" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_ju">
    <property role="EcuMT" value="5903380446964765918" />
    <property role="TrG5h" value="ConcatExpr" />
    <property role="34LRSv" value="·" />
    <property role="R4oN_" value="Concatenación (secuencia)" />
    <ref role="1TJDcQ" node="57H1jONk_jo" resolve="BinaryRegexExpr" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_jv">
    <property role="EcuMT" value="5903380446964765919" />
    <property role="TrG5h" value="StarExpr" />
    <property role="34LRSv" value="*" />
    <property role="R4oN_" value="Estrella de Kleene (cero o más)" />
    <ref role="1TJDcQ" node="57H1jONk_jp" resolve="UnaryRegexExpr" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_jw">
    <property role="EcuMT" value="5903380446964765920" />
    <property role="TrG5h" value="PlusExpr" />
    <property role="34LRSv" value="+" />
    <property role="R4oN_" value="Clausura positiva (uno o más)" />
    <ref role="1TJDcQ" node="57H1jONk_jp" resolve="UnaryRegexExpr" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_jx">
    <property role="EcuMT" value="5903380446964765921" />
    <property role="TrG5h" value="OptionalExpr" />
    <property role="34LRSv" value="?" />
    <property role="R4oN_" value="Opcional (cero o uno)" />
    <ref role="1TJDcQ" node="57H1jONk_jp" resolve="UnaryRegexExpr" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_jy">
    <property role="EcuMT" value="5903380446964765922" />
    <property role="TrG5h" value="ParenExpr" />
    <property role="34LRSv" value="(" />
    <property role="R4oN_" value="Expresión entre paréntesis" />
    <ref role="1TJDcQ" node="57H1jONk_jp" resolve="UnaryRegexExpr" />
  </node>
  <node concept="1TIwiD" id="57H1jONk_jD">
    <property role="EcuMT" value="5903380446964765929" />
    <property role="TrG5h" value="Policy" />
    <property role="34LRSv" value="politica" />
    <property role="R4oN_" value="Política: expresión regular exigida o prohibida sobre un dispositivo" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="57H1jONk_jH" role="1TKVEl">
      <property role="IQ2nx" value="5903380446964765933" />
      <property role="TrG5h" value="mode" />
      <ref role="AX2Wp" node="57H1jONk_iO" resolve="PolicyMode" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_jI" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765934" />
      <property role="20kJfa" value="expr" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_jn" resolve="RegexExpr" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_jJ" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765935" />
      <property role="20kJfa" value="device" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_j2" resolve="Device" />
    </node>
    <node concept="PrWs8" id="57H1jONk_jK" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_jE">
    <property role="EcuMT" value="5903380446964765930" />
    <property role="TrG5h" value="ActorRef" />
    <property role="34LRSv" value="actor" />
    <property role="R4oN_" value="Rol con el que se ejecuta un escenario" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="57H1jONk_jL" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765937" />
      <property role="20kJfa" value="role" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_iX" resolve="Role" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_jF">
    <property role="EcuMT" value="5903380446964765931" />
    <property role="TrG5h" value="ScenarioStep" />
    <property role="R4oN_" value="Paso de un escenario: ocurre un evento" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="57H1jONk_jM" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765938" />
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_iY" resolve="Event" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_jG">
    <property role="EcuMT" value="5903380446964765932" />
    <property role="TrG5h" value="Scenario" />
    <property role="34LRSv" value="escenario" />
    <property role="R4oN_" value="Secuencia de eventos a simular sobre un dispositivo" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="57H1jONk_jN" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765939" />
      <property role="20kJfa" value="actor" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_jE" resolve="ActorRef" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_jO" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765940" />
      <property role="20kJfa" value="steps" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="57H1jONk_jF" resolve="ScenarioStep" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_jP" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765941" />
      <property role="20kJfa" value="device" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_j2" resolve="Device" />
    </node>
    <node concept="PrWs8" id="57H1jONk_jQ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_jT">
    <property role="EcuMT" value="5903380446964765945" />
    <property role="TrG5h" value="HomeSystem" />
    <property role="34LRSv" value="sistema" />
    <property role="R4oN_" value="Sistema domótico: roles, dispositivos, políticas y escenarios" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="57H1jONk_jU" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765946" />
      <property role="20kJfa" value="roles" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="57H1jONk_iX" resolve="Role" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_jV" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765947" />
      <property role="20kJfa" value="devices" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="57H1jONk_j2" resolve="Device" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_jW" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765948" />
      <property role="20kJfa" value="policies" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="57H1jONk_jD" resolve="Policy" />
    </node>
    <node concept="1TJgyj" id="57H1jONk_jX" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765949" />
      <property role="20kJfa" value="scenarios" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="57H1jONk_jG" resolve="Scenario" />
    </node>
    <node concept="PrWs8" id="57H1jONk_jY" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_k1">
    <property role="EcuMT" value="5903380446964765953" />
    <property role="TrG5h" value="RoleType" />
    <property role="R4oN_" value="Tipo de un rol (solo lo usa el sistema de tipos)" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="57H1jONk_k3" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765955" />
      <property role="20kJfa" value="role" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_iX" resolve="Role" />
    </node>
  </node>
  <node concept="1TIwiD" id="57H1jONk_k2">
    <property role="EcuMT" value="5903380446964765954" />
    <property role="TrG5h" value="AlphabetType" />
    <property role="R4oN_" value="Tipo alfabeto de un dispositivo (solo lo usa el sistema de tipos)" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="57H1jONk_k4" role="1TKVEi">
      <property role="IQ2ns" value="5903380446964765956" />
      <property role="20kJfa" value="device" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="57H1jONk_j2" resolve="Device" />
    </node>
  </node>
</model>

