<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0" exclude-result-prefixes="dita docinfo">

    <xsl:template match="docinfo:versioninfo">
        <doc:versioninfo>
            <xsl:apply-templates select="node()"/>
        </doc:versioninfo>
    </xsl:template>
    
    <xsl:template match="docinfo:versionbranch">
        <doc:versionbranch>
            <xsl:copy-of select="@*"/>
        </doc:versionbranch>
    </xsl:template>


</xsl:stylesheet>