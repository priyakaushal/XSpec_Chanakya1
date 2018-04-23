<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.casename-to-LxAdv_caseinfo.shortcasename">
	<title>case:casename to caseinfo:shortcasename <lnpid>id-CA03-13213</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p>Create <targetxml>caseinfo:casename</targetxml> and move <sourcexml>case:casename</sourcexml> to <targetxml>caseinfo:shortcasename</targetxml>.   If
				@xml:lang exist copy it over also.</p>
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>
&lt;case:casename xml:lang="en-CA"&gt;R v. Loewen&lt;/case:casename&gt;
&lt;case:casename xml:lang="fr-CA"&gt;R c. Loewen&lt;/case:casename&gt;
</codeblock>
			<title>Target XML</title>
			<codeblock>
&lt;caseinfo:casename&gt;
    &lt;caseinfo:shortcasename xml:lang="en-CA"&gt;R v. Loewen&lt;/caseinfo:shortcasename&gt;
    &lt;caseinfo:shortcasename xml:lang="fr-CA"&gt;R c. Loewen&lt;/caseinfo:shortcasename&gt;
&lt;/caseinfo:casename&gt;
</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2014-11-13: <ph id="change_20141113_csn">Changed instruction and example to include @xml:lang.  Addresses R4.5 RFA #2032.</ph></p>
			<p>2013-01-23: <ph id="change_20130123_rj">Changed target mapping to <targetxml>caseinfo:shortcasename</targetxml>.</ph></p>
			<p>2012-10-30: <ph id="change_20121030_bh">Corrected name of target XML to <targetxml>caseinfo:fullcasename</targetxml> (was caseinfo:casefullname).</ph></p>
		</section>
	</body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.casename-to-LxAdv_caseinfo.shortcasename.dita  -->
	 
<!-- Sudhanshu Srivastava : Initially drafted this module on 25 May 2017. if changes required please update module accordingly. -->
	<xsl:template match="case:casename">
		<!--  Original Target XPath:  caseinfo:shortcasename   -->
		<!--<caseinfo:casename>-->
			<caseinfo:shortcasename>
				<xsl:copy-of select="attribute::node()"/>
				<xsl:apply-templates/>
			</caseinfo:shortcasename>
		<!--</caseinfo:casename>-->
	</xsl:template>
	
	<xsl:template match="case:casename" mode="dc.title">
		<!--  Original Target XPath:  caseinfo:shortcasename   -->
		
		<dc:title>
			<xsl:copy-of select="attribute::node()"/>
			<xsl:apply-templates select="node()"/>
		</dc:title>
		
	</xsl:template>
</xsl:stylesheet>