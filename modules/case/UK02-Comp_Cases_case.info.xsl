<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.info">
		<title>case:info <lnpid>id-UK02-27222</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:info</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>compcase:caseinfo</targetxml>
				</p>
			</section>


			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:info&gt; ... &lt;case:casename&gt;Horn v Minister
					of Health&lt;/case:casename&gt; ... &lt;/case:info&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;compcase:caseinfo&gt; ... &lt;caseinfo:casename&gt;
					&lt;caseinfo:fullcasename&gt;Horn v Minister of
					Health&lt;/caseinfo:fullcasename&gt; &lt;/caseinfo:casename&gt; ...
					&lt;/compcase:caseinfo&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.info.dita  -->

	<xsl:template match="case:info">
		<compcase:caseinfo>
			<xsl:apply-templates select="case:pubinfo"/>
			<xsl:apply-templates select="case:casename"/>
			<!-- JD: note that CI appears to wrap both within a single <ref:citations> but DT output differs; matching DT -->
			<!--<xsl:if test="case:reportercite or case:parallelcite">
				<ref:citations>
					<xsl:apply-templates select="case:reportercite"/>
					<xsl:apply-templates select="case:parallelcite"/>
				</ref:citations>
			</xsl:if>-->
			<xsl:if test="case:reportercite">
				<ref:citations>
					<xsl:apply-templates select="case:reportercite"/>
				</ref:citations>
			</xsl:if>
			<xsl:if test="case:parallelcite">
				<ref:citations>
					<xsl:apply-templates select="case:parallelcite"/>
				</ref:citations>
			</xsl:if>
		</compcase:caseinfo>
		<xsl:for-each select="case:courtinfo">
			<compcase:caseinstanceinfo>
			  <xsl:apply-templates select="."/>
			  <xsl:apply-templates select="case:courtnum"/>
			</compcase:caseinstanceinfo>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>