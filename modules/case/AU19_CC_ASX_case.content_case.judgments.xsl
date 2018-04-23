<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_lnci="http://www.lexis-nexis.com/lnci"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.content_case.judgments">
		<title>case:content/case:judgments <lnpid>id-AU19CC-21808</lnpid></title>
		<body>
			<section>
				<ul>
					<li>
						<sourcexml>case:content/case:judgments</sourcexml> is a container element
						and need not be carried forward in the conversion. However, as mentioned
						above, all content must be converted such that the order of elements is
						maintained whenever possible. The children are described below: </li>
				</ul>
				<ul>
					<li>
						<sourcexml>case:judgments/case:judgment</sourcexml> becomes
							<targetxml>courtorder:body/section</targetxml>. The source attributes :
							<sourcexml>case:judgment @toc-caption</sourcexml> and
							<sourcexml>case:judgment @subdoc</sourcexml> : <note>The attributes are
							anomalies and the source data would be corrected so that these elements
							won’t appear at the time of conversion.</note> The children are
						described below: </li>
				</ul>
				<ul>
					<li>
						<sourcexml>case:judgment/case:judgmentbody</sourcexml> becomes
							<targetxml>courtorder:body/section/bodytext</targetxml>.
						<pre>
                    &lt;case:content&gt;
                        &lt;case:judgments&gt;
                            &lt;case:judgment&gt;
                                    &lt;case:judgmentbody&gt;...&lt;/case:judgmentbody&gt;
                            &lt;/case:judgment&gt;
                            &lt;/case:judgments&gt;
                  &lt;/case:content&gt;
                    
                                        <b>Becomes</b>
                    &lt;courtorder:body&gt;
                        &lt;section&gt;
                            &lt;bodytext&gt;...&lt;/bodytext&gt;
                        &lt;/section&gt;
                    &lt;/courtorder:body&gt;                
      </pre>
					</li>
				</ul>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19CC_ASX\AU19_CC_ASX_case.content_case.judgments.dita  -->
	<!--<xsl:message>AU19_CC_ASX_case.content_case.judgments.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:content/case:judgments">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="case:judgments/case:judgment">
		<section>
			<xsl:apply-templates select="@* | node()"/>
		</section>
	</xsl:template>

	<xsl:template match="case:judgment/case:judgmentbody">
		<bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>
	</xsl:template>
	
	<xsl:template match="@colsep" priority="2">
		<xsl:attribute name="colsep">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="@rowsep" priority="2">
		<xsl:attribute name="rowsep">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
     <xsl:template match="ci:cite/@searchtype" priority="28"/>
	
</xsl:stylesheet>