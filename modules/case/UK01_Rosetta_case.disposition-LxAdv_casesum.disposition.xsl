<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" version="2.0"
	exclude-result-prefixes="dita case xd">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.disposition-LxAdv_casesum.disposition">
		<title>case:disposition <lnpid>id-UK01-27025</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.disposition-LxAdv_casesum.disposition.dita#Rosetta_case.disposition-LxAdv_casesum.disposition/mapping"/>
			<example>
				<codeblock> &lt;case:disposition&gt;Appeal dismissed.Case remitted to trial judge for completion of
					hearing.&lt;/case:disposition&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;casesum:disposition&gt; &lt;p&gt; &lt;text&gt; Appeal dismissed.Case remitted to trial judge for
					completion of hearing. &lt;/text&gt; &lt;/p&gt; &lt;/casesum:disposition&gt; </codeblock>
			</example>
			<note>When We have multiple sibling <sourcexml>case:disposition</sourcexml> elements in source document then
				Conversion should not create adjacent <targetxml>casesum:disposition</targetxml> in target. Data should be
				merged to single <targetxml>casesum:disposition</targetxml> and should create <targetxml>p/text</targetxml> for
				each <sourcexml>case:disposition</sourcexml></note>
			<example>
				<codeblock> &lt;case:disposition&gt; On those grounds, the Court of Justice ... &lt;/case:disposition&gt;
					&lt;case:disposition&gt; (1) Sets aside the judgment of the Court ... &lt;/case:disposition&gt;
					&lt;case:disposition&gt; (2) Dismisses the action brought by Alrosa ... &lt;/case:disposition&gt;
					&lt;case:disposition&gt; (3) Orders Alrosa Co Ltd to pay the costs both ... &lt;/case:disposition&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;casesum:disposition&gt; &lt;p&gt; &lt;text&gt;On those grounds, the Court of Justice
					...&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;(1) Sets aside the judgment of the Court ...&lt;/text&gt;
					&lt;/p&gt; &lt;p&gt; &lt;text&gt;(2) Dismisses the action brought by Alrosa ...&lt;/text&gt; &lt;/p&gt;
					&lt;p&gt; &lt;text&gt;(3) Orders Alrosa Co Ltd to pay the costs ...&lt;/text&gt; &lt;/p&gt;
					&lt;/casesum:disposition&gt; </codeblock>
			</example>
			<example>
				<title>Showing <sourcexml>case:disposition/page</sourcexml>
				</title>
				<sourcexml>case:disposition/page</sourcexml> becomes <targetxml>casesum:disposition/p/text/ref:page</targetxml>
				<codeblock> &lt;case:disposition&gt;(1) A contract...&lt;/case:disposition&gt; &lt;case:disposition&gt;(2) In
					order to ...&lt;/case:disposition&gt; &lt;case:disposition&gt;&lt;page text="[2011] 2 All ER (Comm) 888 at "
					count="934" reporter="ALLERCOM"/&gt; 934&lt;/case:disposition&gt; </codeblock>
				<b>Becomes</b>
				<codeblock> &lt;casesum:disposition&gt; &lt;p&gt; &lt;text&gt;(1) A contract...&lt;/text&gt; &lt;/p&gt;
					&lt;p&gt; &lt;text&gt;(2) In order to ...&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt; &lt;ref:page
					num="934" page-scheme="ALLERCOM" page-scheme-type="reporterabbreviation"/&gt;934&lt;/text&gt; &lt;/p&gt;
					&lt;/casesum:disposition&gt; </codeblock>
			</example>
			<!--<section
      conref="../../common_caselaw/conref_content/Rosetta_case.disposition-LxAdv_casesum.disposition.dita#Rosetta_case.disposition-LxAdv_casesum.disposition/changes"/>-->
			<section>
				<title>Changes</title>
				<p>2014-01-08: <ph id="change_20140108_SSX">Added instruction for handling multiple sibling
							<sourcexml>casesum:disposition</sourcexml> elements. Webteam# 248990</ph></p>
				<p>2014-02-28 <ph id="change_20140228_SSX">Added an Example of
					<sourcexml>case:disposition/page</sourcexml></ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.disposition-LxAdv_casesum.disposition.dita  -->

	<xsl:template match="case:disposition[1]">
		<!--  Original Target XPath:  casesum:disposition   -->
		<casesum:disposition>
			<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<text>
					<xsl:apply-templates select="@* | node()"/>
				</text>
			</p>
			<xsl:for-each select="following-sibling::case:disposition">
				<p>
					<text>
						<xsl:apply-templates select="@* | node()"/>
					</text>
				</p>
			</xsl:for-each>
		</casesum:disposition>
	</xsl:template>
	
	<xd:doc>
		<xd:desc>
			<xd:p>Since we've grouped all casesum:disposition above, trap other instances</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="case:disposition[position()!=1]"/>

	<xsl:template match="page[parent::case:disposition]">
		<!--  Original Target XPath:  casesum:disposition/p/text/ref:page   -->
			<p>
				<text>
					<ref:page xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
						<xsl:apply-templates select="@* | node()"/>
					</ref:page>
				</text>
			</p>
	</xsl:template>


</xsl:stylesheet>
