<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource">
  <title>case:parallelcite <lnpid>id-AU01-18232</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource.dita#Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource/mapping"/>
    <section><note>Text occurring between <sourcexml>case:parallelcite</sourcexml> and
          <sourcexml>ci:cite</sourcexml> should be dropped since it will be handled on a
        presentation spec level.</note></section>
    <section>
      <p>For <sourcexml>case:parallelcite[ci:cite@type="reporter"]</sourcexml>then it becomes
        <targetxml> ref:parallelcite[@citetype="reporter"]</targetxml>.</p>
    </section>
    <example>
      <codeblock>
&lt;case:info&gt;
  &lt;case:parallelcite&gt;Also reported at: &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:case&gt;
        &lt;ci:caseref ID="cr000001" spanref="cr000001-001"&gt;
          &lt;ci:reporter value="Qd R"/&gt;
          &lt;ci:volume num="2"/&gt;
          &lt;ci:edition&gt;
            &lt;ci:date year="1995"/&gt;
          &lt;/ci:edition&gt;
          &lt;ci:page num="506"/&gt;
        &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;
        &lt;citefragment searchtype="CASE-CITE-REF"&gt;
          &lt;ci:span spanid="cr000001-001"&gt;[1995] 2 Qd R 506&lt;/ci:span&gt;
        &lt;/citefragment&gt;
      &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
  &lt;/case:parallelcite&gt;
&lt;/case:info&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:caseinfo&gt;
  &lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="parallel"&gt;
      &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
          &lt;lnci:caseref ID="cr000001"&gt;
            &lt;lnci:reporter value="Qd R"/&gt;
            &lt;lnci:volume num="2"/&gt;
            &lt;lnci:edition&gt;
              &lt;lnci:date year="1995"/&gt;
            &lt;/lnci:edition&gt;
            &lt;lnci:page num="506"/&gt;
          &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[1995] 2 Qd R 506&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
  &lt;/ref:citations&gt;
&lt;/caseinfo:caseinfo&gt;
           </codeblock>
    </example>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource.dita#Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource/changes"/>
    <section>
            <title>Changes Specific to AU01</title>
      <p>2016-06-07: <ph id="change_20160607_HP">Added new instruction <sourcexml>case:parallelcite[ci:cite@type="reporter"]</sourcexml>to
        <targetxml> ref:parallelcite[@citetype="reporter"]</targetxml> Applicable on AU01, Webstar # 6497089.</ph></p>
      
            </section>

  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource.dita  -->

	<xsl:template match="case:parallelcite">
		<!--  Original Target XPath:  ref:parallelcite[@citetype="reporter"]
		-->
	  <ref:citations>
		<ref:cite4thisresource citetype="parallel">
			<xsl:apply-templates select="@* | node()"/>
		</ref:cite4thisresource>
	  </ref:citations>
	</xsl:template>

	<xsl:template match="case:parallelcite/@ln.user-displayed"/>
	
	<xsl:template match="text()[parent::case:parallelcite and following-sibling::ci:cite]"/>

	<xsl:template match="case:parallelcite[ci:cite[@type='reporter']]">
	  <ref:citations>
		<ref:parallelcite>
			<xsl:apply-templates select="@* | node()"/>
		</ref:parallelcite>
	  </ref:citations>
	</xsl:template>

</xsl:stylesheet>