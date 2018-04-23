<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.judgment-LxAdv_courtcase.opinion">
		<title>case:judgment <lnpid>id-UK01-27033</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.judgment-LxAdv_courtcase.opinion.dita#Rosetta_case.judgment-LxAdv_courtcase.opinion/mapping"/>
			<section>
				<p>The optional attributes of <sourcexml>case:judgment</sourcexml> are handled as follows:<ul>
						<li><sourcexml>case:judgment/@subdoc</sourcexml> becomes
								<targetxml>courtcase:opinion/@includeintoc</targetxml>.</li>
						<li><sourcexml>case:judgment/@toc-caption</sourcexml> becomes
								<targetxml>courtcase:opinion/@alternatetoccaption</targetxml>.</li>
					</ul></p>
			</section>
			<example>
				<codeblock> &lt;case:judgment&gt; &lt;case:judgmentbody&gt; &lt;pgrp&gt; &lt;p&gt; &lt;pnum&gt;1&lt;/pnum&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;&amp;#x201c;The applicant had been in the employ
					of the respondent company from 31st August 1953, when he started as an apprentice, until his employment
					terminated on 4th May 1972. Over that period of time Mr Middlemass had worked in all sorts of capacities for
					the company. However, the capacity about which we are concerned is that relating to either sales manager or
					technical representative on behalf of the company.&lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt;
					&lt;/case:judgmentbody&gt; &lt;/case:judgment&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;courtcase:opinion&gt; &lt;bodytext&gt; &lt;pgrp&gt; &lt;p&gt; &lt;desig&gt;1&lt;/desig&gt;
					&lt;/p&gt; &lt;/pgrp&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;&amp;#x201C;The applicant had been in the employ
					of the respondent company from 31st August 1953, when he started as an apprentice, until his employment
					terminated on 4th May 1972. Over that period of time Mr Middlemass had worked in all sorts of capacities for
					the company. However, the capacity about which we are concerned is that relating to either sales manager or
					technical representative on behalf of the company.&lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;/bodytext&gt;
					&lt;/courtcase:opinion&gt; </codeblock>
			</example>
			<!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.judgment-LxAdv_courtcase.opinion.dita#Rosetta_case.judgment-LxAdv_courtcase.opinion/changes"/>-->
			<!--<section>
      <title>Changes Specific to UK01</title>
    </section>-->
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.judgment-LxAdv_courtcase.opinion.dita  -->

	<xsl:template match="case:judgment">
		<!--  Original Target XPath:  courtcase:opinion/@includeintoc   -->
		<courtcase:opinion>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="case:courtinfo/case:judges"/>
				<xsl:apply-templates select="node()"/>
		</courtcase:opinion>
	</xsl:template>

	<xsl:template match="case:judgment/@subdoc">
		<!--  Original Target XPath:  courtcase:opinion/@includeintoc   -->
			<xsl:attribute name="includeintoc">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

	<xsl:template match="case:judgment/@toc-caption">
		<!--  Original Target XPath:  courtcase:opinion/@alternatetoccaption   -->
			<xsl:attribute name="alternatetoccaption">
				<xsl:value-of select="."/>
			</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>
