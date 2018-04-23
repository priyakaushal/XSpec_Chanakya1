<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita classify caseinfo">
    <xsl:template match="page[$streamID='AU01'][parent::case:info]" priority="1"><!--[parent::case:info and $streamID='AU01']-->
            <classify:classification>
                <classify:classitem>
                    <classify:classitem-identifier>
                        <classify:classname>
                            <xsl:element name="ref:page">
                                <xsl:attribute name="num">
                                    <xsl:value-of select="translate(@count,',.…','')"/>
                                </xsl:attribute>
                                <xsl:if test="@reporter!=''">
                                    <xsl:attribute name="page-scheme">
                                        <xsl:value-of select="translate(@reporter,' ','_')"/>
                                    </xsl:attribute>
                                </xsl:if>
                                <xsl:if test="@subdoc!=''">
                                    <xsl:attribute name="includeintoc">
                                        <xsl:value-of select="@subdoc"/>
                                    </xsl:attribute>
                                </xsl:if>
                                <xsl:attribute name="page-scheme-type">
                                    <xsl:text>reporter-abbreviation</xsl:text>
                                </xsl:attribute>
                            </xsl:element>
                        </classify:classname>
                    </classify:classitem-identifier>
                </classify:classitem>
            </classify:classification>
    </xsl:template>
    
</xsl:stylesheet>