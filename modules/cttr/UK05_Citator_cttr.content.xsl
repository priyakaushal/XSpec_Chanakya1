<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0"
	exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_References">
		<title>References <lnpid>id-UK05-27813</lnpid></title>
		<body>
			<p>
				<note>
					<sourcexml>cttr:content</sourcexml> - This is a container element that does not
					need to be carried forward in the conversion. However, all content must be
					converted such that the order of elements is maintained whenever possible.
					Please see the "Maintain the Order of Elements Whenever Possible" section for
					more information.</note>
			</p>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\Citator_References.dita  -->
    <!-- 20150510:  MCJ:  Renamed from UK05_Citator_Citator_References.xsl to UK05_Citator_cttr.content.xsl -->

	<xsl:template match="source_cttr:content">
		<!--  Original Target XPath:     -->
		<xsl:for-each-group select="node()" 
			group-adjacent="not(self::*:summary or self::catchwordgrp)">
				<xsl:choose>
					<xsl:when test="current-grouping-key()">
						<xsl:apply-templates select="current-group()"/>
					</xsl:when>
					<xsl:otherwise>
					  <xsl:choose>
					    <!-- when there is no text() content create no output (when source has had "No summary is available" removed, leaving
					     <cttr:summary><p><text><nl/></text></p></cttr:summary>) -->
					    <xsl:when test="not(string-length(normalize-space(.)))"/>
					    <xsl:otherwise>
					      <cttr:descriptors>
					        <cttr:descriptorsection descriptortype="catchwords-and-digest">
					          <xsl:apply-templates select="current-group()"/>
					        </cttr:descriptorsection>
					      </cttr:descriptors>					
					    </xsl:otherwise>
					  </xsl:choose>					  
					</xsl:otherwise>
				</xsl:choose>
		</xsl:for-each-group>
	</xsl:template>
</xsl:stylesheet>
