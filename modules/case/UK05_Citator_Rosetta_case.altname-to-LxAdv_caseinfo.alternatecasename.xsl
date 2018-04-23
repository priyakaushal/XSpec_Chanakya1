<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"	
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" 
	version="2.0"
	exclude-result-prefixes="dita case case2">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_case.altname-to-LxAdv_caseinfo.alternatecasename">
		<title>case:altname to caseinfo:alternatecasename <lnpid>id-UK05-27817</lnpid></title>
		<body>
			<section>
				<title>Instructions</title>
				<p><sourcexml>case:altname</sourcexml> becomes <targetxml>caseinfo:alternatecasename</targetxml>. </p>
			</section>
			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:info&gt; &lt;case:altname&gt; O'Byrne v Aventis Pasteur SA: &lt;/case:altname&gt; ...
					&lt;/case:info&gt; </codeblock>
				<title>Target XML</title>
				<codeblock> &lt;cttr:caseinfo&gt; &lt;caseinfo:alternatecasename&gt; O'Byrne v Aventis Pasteur SA:
					&lt;/caseinfo:alternatecasename&gt; ... &lt;/cttr:caseinfo&gt; </codeblock>
			</example>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\Rosetta_case.altname-to-LxAdv_caseinfo.alternatecasename.dita  -->

	<xsl:template match="case:altname | case2:altname">
		<!--  Original Target XPath:  caseinfo:alternatecasename   -->
		<caseinfo:alternatecasename>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:alternatecasename>
	</xsl:template>
</xsl:stylesheet>
