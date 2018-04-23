<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    
    exclude-result-prefixes="dita docinfo">
 
   <!-- This is a generic module, this is coded as per CA11 CI. It can be modified if there is differnt scenario in other streams -->
   
    <xsl:template match="docinfo:custom-metafield[@name='COURT-CLASSIFY']" priority="2"/>
    <xsl:template match="docinfo:custom-metafield[@name='JURIS-CLASSIFY']" priority="2"/>
    <xsl:template match="docinfo:custom-metafield[@name='unhandled']" priority="2"/>
    <xsl:template match="docinfo:custom-metafield[@searchtype='JURIS-CLASSIFY']" priority="2"/>
    <xsl:template match="docinfo:custom-metafield[@searchtype='COURT-CLASSIFY']" priority="2"/>
    <xsl:template match="docinfo:custom-metafield[@searchtype='unhandled']" priority="2"/>
    
    <xsl:template match="docinfo:custom-metafields">
        
        <!-- Sudhanshu included streamID CA02CC and CA13for  legacy-metadata.-->
        <xsl:choose>
            <xsl:when test="$streamID='CA08' or $streamID='CA07' or $streamID='CA02CC' or $streamID='CA13' or $streamID='CA06' or $streamID='CA05' or $streamID='CA10' or $streamID='CA03' or $streamID='CA15' or $streamID='CA04'">
                <xsl:apply-templates select="@*|node()"/>
            </xsl:when>
            <xsl:when test="$streamID = 'CA12'">                
                <xsl:apply-templates select="@* | node()"/>
                <xsl:apply-templates select = "//heading/title/alias"/>
                <xsl:apply-templates select = "//text[@searchtype[matches(., 'COURT-NAME')]]" mode = 'meta_court'/>
                <xsl:apply-templates select = "//text[@searchtype[matches(., 'CASE-NAME')]]" mode = 'meta_case'/>
                <xsl:apply-templates select = "//text[@searchtype[matches(., 'REPORTER-CITE')]]" mode = 'meta_reporter'/>
                <xsl:apply-templates select = "//emph[@searchtype[matches(.,'JUDGES')]]" mode = 'meta_judge'/>
               
            </xsl:when>
<xsl:otherwise>
            <doc:legacy-metadata metadatasource="lbu-meta">
            <meta>
                <xsl:apply-templates select="@*|node()"/>
            </meta>
        </doc:legacy-metadata>
</xsl:otherwise></xsl:choose>
        
    </xsl:template>
    
    <!-- Vikas Rohilla : Template to match the  docinfo:custom-metafields and the streamID='CA01'  with the priority higher thn normal for avoid the ambiguity  -->
    <xsl:template match="docinfo:custom-metafields[$streamID='CA01' or $streamID='CA02DC' or $streamID='CA02DS' or $streamID='CA14']" priority="2">
        <xsl:apply-templates select="node()|@*"/>
    </xsl:template>
    
    <xsl:template match="docinfo:custom-metafield">
        <metaitem>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:attribute>
        </metaitem>
    </xsl:template>
    
    <xsl:template match="docinfo:custom-metafield[@name = 'effect-date'][$streamID = 'CA05' or $streamID='CA08' or $streamID='CA07']">
        <metaitem>
            <xsl:attribute name="name">
                <xsl:text>effect-date</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="value">
                <xsl:value-of
                    select="concat(substring(., 1, 4), '-', substring(., 5, 2), '-', substring(., 7, 2))"
                />
            </xsl:attribute>
        </metaitem>
    </xsl:template>
    
    <xsl:template match="docinfo:custom-metafield/@name|docinfo:custom-metafield/@searchtype">
        <xsl:attribute name="name">
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:attribute>
        
    </xsl:template>
    
</xsl:stylesheet>