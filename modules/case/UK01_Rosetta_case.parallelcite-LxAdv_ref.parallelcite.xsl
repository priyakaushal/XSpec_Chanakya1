<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.parallelcite-LxAdv_ref.cite4thisresource">
  <title>case:parallelcite <lnpid>id-UK01-27038</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:parallelcite</sourcexml> becomes
          <targetxml>caseinfo:caseinfo/ref:citations/ref:parallelcite/@citetype="parallel"</targetxml></p>
    </section>
    <example>
      <codeblock>
&lt;case:parallelcite&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref&gt;
                &lt;lnci:reporter value="EWHCCOMM"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="2011"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:page num="2422"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2011] EWHC 2422 (Comm)&lt;/citefragment&gt;
        &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/case:parallelcite&gt;
    </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:caseinfo&gt;
    &lt;ref:citations&gt;
        &lt;ref:parallelcite citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="EWHCCOMM"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="2011"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="2422"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;[2011] EWHC 2422 (Comm)&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:parallelcite&gt;
    &lt;/ref:citations&gt;
&lt;/caseinfo:caseinfo&gt;
    </codeblock>
    </example>
    <section>
      <p>When <sourcexml>case:parallelcite</sourcexml> contains multiple
          <sourcexml>ci:cite</sourcexml> then conversion should create seperate
          <targetxml>ref:parallelcite/@citetype="parallel"</targetxml> for each
          <sourcexml>ci:cite</sourcexml> markup.</p>
      <p>PCDATA between <sourcexml>ci:cite</sourcexml> should be moved inside a
          <targetxml>ref:citations/connector</targetxml> element..</p>
    </section>
    <example>
      <codeblock>
&lt;case:parallelcite&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref&gt;
                &lt;lnci:reporter value="EWHCCOMM"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="2011"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:page num="2422"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2011] EWHC 2422 (Comm)&lt;/citefragment&gt;
        &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;,
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref&gt;
                &lt;lnci:reporter value="EWCACIV"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="2013"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:page num="14"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;[2013] EWCA Civ 14&lt;/citefragment&gt;
        &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/case:parallelcite&gt;
    </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:caseinfo&gt;
    &lt;ref:citations&gt;
        &lt;ref:parallelcite citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="EWHCCOMM"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="2011"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="2422"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;[2011] EWHC 2422 (Comm)&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:parallelcite&gt;
        &lt;connector&gt;,&lt;/connector&gt;
        &lt;ref:parallelcite citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="EWCACIV"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="2013"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="14"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;[2013] EWCA Civ 14&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:parallelcite&gt;
    &lt;/ref:citations&gt;
&lt;/caseinfo:caseinfo&gt;
    </codeblock>
    </example>

    <p>If <sourcexml>case:parallelcite</sourcexml> contains PCDATA directly, without a child
        <sourcexml>ci:cite</sourcexml>, then <targetxml>lnci:cite</targetxml> and child
        <targetxml>lnci:content</targetxml> are created and the PCDATA is placed within the created
        <targetxml>lnci:content</targetxml> element. Therefore, in this scenario,
        <sourcexml>case:info/case:parallelcite</sourcexml> becomes
        <targetxml>caseinfo:caseinfo/ref:citations/ref:parallelcite/@citetype="parallel/lnci:cite/lnci:content</targetxml>.</p>
    <example>
      <codeblock> 
&lt;case:parallelcite&gt;(Transcript)&lt;/case:parallelcite
    </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:caseinfo&gt;
    &lt;ref:citations&gt;
        &lt;ref:parallelcite citetype="parallel"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:content&gt;(Transcript)&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:parallelcite&gt;
    &lt;/ref:citations&gt;
&lt;/caseinfo:caseinfo&gt;
    </codeblock>
    </example>

    <section>
      <title>Changes</title>
        <p>2015-09-23: <ph id="change_20150923_PS">Updated target mapping and example of
            <sourcexml>case:parallelcite</sourcexml>, Applicable on UK01.</ph></p>
      <p>2013-10-30: <ph id="change_20131030_SSX">Added instruction to handle PCDATA when there is
          no citation in case:parallelcite. Webteam # 243687 </ph></p>
      </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.parallelcite-LxAdv_ref.parallelcite.dita  -->

	<xsl:template match="case:parallelcite">
		<!--  Original Target XPath:  caseinfo:caseinfo/ref:citations/ref:parallelcite/@citetype="parallel"   -->
			<ref:citations>
				<!-- #PCDATA becomes <connector> -->
				<xsl:apply-templates select="text()[following-sibling::ci:cite]"/>				
				<xsl:for-each select="ci:cite">
					<ref:parallelcite citetype="parallel">
						<xsl:apply-templates select="."/>
					</ref:parallelcite>
					<!-- #PCDATA becomes <connector> -->
					<xsl:apply-templates select="text()[following-sibling::ci:cite]"/>				
					
				</xsl:for-each>
				
			</ref:citations>
	</xsl:template>
	
	<xsl:template match="text()[normalize-space(.)!=''][parent::case:parallelcite][following-sibling::ci:cite]">
		<connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:value-of select="."/>
		</connector>
	</xsl:template>

<!--	<xsl:template match="ci:cite[parent::case:parallelcite]">
		<!-\-  Original Target XPath:  ref:parallelcite/@citetype="parallel"   -\->
		<ref:parallelcite citetype="parallel">
			<xsl:apply-templates select="ci.cite" />
		</ref:parallelcite>
	</xsl:template>
-->
</xsl:stylesheet>