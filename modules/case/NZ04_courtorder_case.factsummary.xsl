<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    exclude-result-prefixes="xs xd"
    version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Aug 9, 2017</xd:p>
            <xd:p><xd:b>Author:</xd:b> rohillvx</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:template match="case:factsummary">
        <section xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:apply-templates select="node()"/>
            </bodytext>
        </section>
    </xsl:template>
    
</xsl:stylesheet>