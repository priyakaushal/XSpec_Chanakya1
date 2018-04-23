<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    exclude-result-prefixes="#all"
    version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 05, 2017</xd:p>
            <xd:p><xd:b>Author:</xd:b> Mark Shellenberger</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:template match="case:disposition">
        <section>
            <bodytext>
                <p>
                    <text><xsl:apply-templates select="node()"/></text>
                </p>
            </bodytext>
        </section>
    </xsl:template>
    
</xsl:stylesheet>