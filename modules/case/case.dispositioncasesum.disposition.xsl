<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.disposition-casesum.disposition">
  <title>case:disposition <lnpid>id-ST01-26233</lnpid></title>
  <body>
    <section conref="../../common_caselaw/conref_content/Rosetta_case.disposition-LxAdv_casesum.disposition.dita#Rosetta_case.disposition-LxAdv_casesum.disposition/mapping"/>
    <section>
      <p>The attributes of <sourcexml>case:disposition</sourcexml> are handled as follows:<ul>
          <li><sourcexml>case:disposition/@subdoc</sourcexml> becomes
              <targetxml>casesum:disposition/@includeintoc</targetxml>.</li>
          <li><sourcexml>case:disposition/@toc-caption</sourcexml> becomes
              <targetxml>casesum:disposition/@alternatetoccaption</targetxml>.</li>
        </ul></p>
      <note><sourcexml>case:disposition</sourcexml> occurs in two contexts. The full mappings from
        Rosetta to NL are as follows:<ul>
          <li><sourcexml>CASEDOC/case:body/case:headnote/case:disposition</sourcexml> becomes
              <targetxml>courtcase:head/casesum:summaries/casesum:disposition</targetxml>.</li>
          <li><sourcexml>CASEDOC/case:body/case:content/case:judgments/case:disposition</sourcexml>
            becomes
            <targetxml>courtcase:body/courtcase:opinions/casesum:disposition</targetxml>.</li>
        </ul>
      </note>
      <note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
        elements. When 2 or more consecutive sibling source elements map to
          <targetxml>casesum:summaries</targetxml>, target data should be merged to a single
          <targetxml>casesum:summaries</targetxml> element unless this would hamper content
        ordering.</note>
      <note>
        <p>For information on how to process the attribute
          <sourcexml>@ln.user-displayed</sourcexml>, refer to <xref href="../../common_newest/Rosetta_case.disposition_ln.user-displayed.dita#Rosetta_case.disposition_ln.user-displayed" format="dita"/>  for handling of <targetxml>@ln.user-displayed</targetxml></p>
      </note>
    </section>
    <example>
      <codeblock>
&lt;case:disposition&gt;Appeal dismissed.&lt;/case:disposition&gt;
       </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;casesum:disposition&gt;
    &lt;p&gt;
      &lt;text&gt;Appeal dismissed.&lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:disposition&gt;
       </codeblock>
    </example>
    <p>When there are multiple sibling <sourcexml>case:disposition</sourcexml> elements in
      source document, do not create adjacent
      <targetxml>casesum:disposition</targetxml> in target. Instead, merge data into a single
      <targetxml>casesum:disposition</targetxml> and create <targetxml>p/text</targetxml>
      for each <sourcexml>case:disposition</sourcexml>.</p>
    <example>
      <codeblock>

&lt;case:disposition&gt;
    On those grounds, the Court of Justice ...
&lt;/case:disposition&gt;
&lt;case:disposition&gt;
    (1) Sets aside the judgment of the Court ...
&lt;/case:disposition&gt;
&lt;case:disposition&gt;
    (2) Dismisses the action brought by Alrosa ...
&lt;/case:disposition&gt;
&lt;case:disposition&gt;
    (3) Orders Alrosa Co Ltd to pay the costs both ...
&lt;/case:disposition&gt;

       </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;casesum:disposition&gt;
 &lt;p&gt;
   &lt;text&gt;On those grounds, the Court of Justice ...&lt;/text&gt;
 &lt;/p&gt;
 &lt;p&gt;
   &lt;text&gt;(1) Sets aside the judgment of the Court ...&lt;/text&gt;
 &lt;/p&gt;
 &lt;p&gt;
  &lt;text&gt;(2) Dismisses the action brought by Alrosa ...&lt;/text&gt;
 &lt;/p&gt;
 &lt;p&gt;
  &lt;text&gt;(3) Orders Alrosa Co Ltd to pay the costs ...&lt;/text&gt;
 &lt;/p&gt;
&lt;/casesum:disposition&gt; 


       </codeblock>
    </example>
    <p><sourcexml>case:disposition/page</sourcexml> becomes
      <targetxml>casesum:disposition/p/text/ref:page</targetxml></p>
    <example>
     
      <codeblock>
      
  &lt;case:disposition&gt;(1) A contract...&lt;/case:disposition&gt; 
  &lt;case:disposition&gt;(2) In order to ...&lt;/case:disposition&gt; 
  &lt;case:disposition&gt;&lt;page text="[2011] 2 All ER (Comm) 888 at " count="934" reporter="ALLERCOM"/&gt;
934&lt;/case:disposition&gt;

      
      </codeblock>
      <b>Becomes</b>
      <codeblock>
      
      &lt;casesum:disposition&gt;
    &lt;p&gt;
       &lt;text&gt;(1) A contract...&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;(2) In order to ...&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;
        &lt;ref:page num="934" page-scheme="ALLERCOM" page-scheme-type="reporterabbreviation"/&gt;934&lt;/text&gt;
    &lt;/p&gt;
&lt;/casesum:disposition&gt;

      
      </codeblock>
    </example>
    
    <!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.disposition-LxAdv_casesum.disposition.dita#Rosetta_case.disposition-LxAdv_casesum.disposition/changes"/>-->
    <!--<section>
      <title>Changes Specific to AU01</title>
      </section>-->
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.dispositioncasesum.disposition.dita  -->
	<xsl:message>case.dispositioncasesum.disposition.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:disposition">

		<!--  Original Target XPath:  casesum:disposition/@includeintoc   -->
		<casesum:disposition>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</casesum:disposition>

	</xsl:template>

	<xsl:template match="case:disposition/@subdoc">

		<!--  Original Target XPath:  casesum:disposition/@includeintoc   -->
		<casesum:disposition>
			<xsl:attribute name="includeintoc">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</casesum:disposition>

	</xsl:template>

	<xsl:template match="case:disposition/@toc-caption">

		<!--  Original Target XPath:  casesum:disposition/@alternatetoccaption   -->
		<casesum:disposition>
			<xsl:attribute name="alternatetoccaption">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</casesum:disposition>

	</xsl:template>

	<xsl:template match="CASEDOC/case:body/case:headnote/case:disposition">

		<!--  Original Target XPath:  courtcase:head/casesum:summaries/casesum:disposition   -->
		<courtcase:head>
			<casesum:summaries>
				<casesum:disposition>
					<xsl:apply-templates select="@* | node()"/>
				</casesum:disposition>
			</casesum:summaries>
		</courtcase:head>

	</xsl:template>

	<xsl:template match="CASEDOC/case:body/case:content/case:judgments/case:disposition">

		<!--  Original Target XPath:  courtcase:body/courtcase:opinions/casesum:disposition   -->
		<courtcase:body>
			<courtcase:opinions>
				<casesum:disposition>
					<xsl:apply-templates select="@* | node()"/>
				</casesum:disposition>
			</courtcase:opinions>
		</courtcase:body>

	</xsl:template>

	<xsl:template match="@ln.user-displayed">

		<!--  Original Target XPath:  @ln.user-displayed   -->
		<xsl:attribute name="ln.user-displayed">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="case:disposition/page">

		<!--  Original Target XPath:  casesum:disposition/p/text/ref:page   -->
		<casesum:disposition>
			<p>
				<text>
					<ref:page xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
						<xsl:apply-templates select="@* | node()"/>
					</ref:page>
				</text>
			</p>
		</casesum:disposition>

	</xsl:template>

</xsl:stylesheet>