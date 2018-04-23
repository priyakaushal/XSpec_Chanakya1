<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:lnci="http://www.lexisnexis.com/namespace/common/lnci"
    exclude-result-prefixes="xs xd ci "
    version="2.0">

  <xsl:template match="ci:*">
  	<xsl:element name="{concat('lnci:',local-name())}">
        <xsl:apply-templates select="node()|@*"/>
  	</xsl:element>
    </xsl:template>
	
	<xsl:template match="ci:*/@*[not(name()=('ref','bk','cat','hrc'))][.!='']">
		<xsl:copy-of select="."/>
	</xsl:template>    

	<!-- NOTE: caseref follows a specific order -->
    <xsl:template match="ci:caseref">
      <lnci:caseref>
            <xsl:apply-templates select="ci:reporter[1]"/>
            <xsl:apply-templates select="ci:ldi[1]"/>
            <xsl:apply-templates select="ci:lni[1]"/>
            <xsl:apply-templates select="ci:volume[1]"/>
            <xsl:apply-templates select="ci:edition[1]"/>
            <xsl:apply-templates select="ci:placeofpub[1]"/>
            <xsl:apply-templates select="ci:hier[1]"/>
            <xsl:apply-templates select="ci:page[1]"/>
            <xsl:apply-templates select="ci:pinpoint"/>
            <xsl:apply-templates select="ci:line[1]"/>
            <xsl:apply-templates select="ci:syllabusnum"/>
            <xsl:apply-templates select="ci:refnum[1]"/>
      </lnci:caseref>
    </xsl:template>
    

</xsl:stylesheet>