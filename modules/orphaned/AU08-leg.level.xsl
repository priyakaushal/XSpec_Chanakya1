<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ln-data="http://www.lexis-nexis.com/glp/ln-data"
    xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" 
    exclude-result-prefixes="dita ln-data">

    <xsl:variable name="leveltypes">
        <ln-data:leveltypes>
            <ln-data:level>act</ln-data:level>
            <ln-data:level>addendum</ln-data:level>
            <ln-data:level>amendment</ln-data:level>
            <ln-data:level>annex</ln-data:level>
            <ln-data:level>appendix</ln-data:level>
            <ln-data:level>article</ln-data:level>
            <ln-data:level>canon</ln-data:level>
            <ln-data:level>chapter</ln-data:level>
            <ln-data:level>clause</ln-data:level>
            <ln-data:level>constitution</ln-data:level>
            <ln-data:level>companion</ln-data:level>
            <ln-data:level>division</ln-data:level>
            <ln-data:level>dictionary</ln-data:level>
            <ln-data:level>exhibit</ln-data:level>
            <ln-data:level>endnote</ln-data:level>
            <ln-data:level>form</ln-data:level>
            <ln-data:level>hierarchy-note</ln-data:level>
            <ln-data:level>introduction</ln-data:level>
            <ln-data:level>instrument</ln-data:level>
            <ln-data:level>order</ln-data:level>
            <ln-data:level>paragraph</ln-data:level>
            <ln-data:level>part</ln-data:level>
            <ln-data:level>preamble</ln-data:level>
            <ln-data:level>regulation</ln-data:level>
            <ln-data:level>rule</ln-data:level>
            <ln-data:level>schedule</ln-data:level>
            <ln-data:level>section</ln-data:level>
            <ln-data:level>subarticle</ln-data:level>
            <ln-data:level>subchapter</ln-data:level>
            <ln-data:level>subclause</ln-data:level>
            <ln-data:level>subdivision</ln-data:level>
            <ln-data:level>subparagraph</ln-data:level>
            <ln-data:level>subpart</ln-data:level>
            <ln-data:level>subrule</ln-data:level>
            <ln-data:level>subregulation</ln-data:level>
            <ln-data:level>subschedule</ln-data:level>
            <ln-data:level>subsection</ln-data:level>
            <ln-data:level>subtitle</ln-data:level>
            <ln-data:level>supplement</ln-data:level>
            <ln-data:level>table-of-contents</ln-data:level>
            <ln-data:level>title</ln-data:level>
            <ln-data:level>topic</ln-data:level>
            <ln-data:level>treaty</ln-data:level>
            <ln-data:level>agency</ln-data:level>
            <ln-data:level>subagency</ln-data:level>
            <ln-data:level>unclassified</ln-data:level>
        </ln-data:leveltypes>
    </xsl:variable>
<!--
    <xsl:template match="leg:level">
        <primlaw:level>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="leg:level-vrnt/@*"/>
            <xsl:if test="not(leg:level-vrnt/@leveltype or @leveltype)">
                <xsl:attribute name="leveltype">
                    <xsl:text>unclassified</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:apply-templates select="leg:level-vrnt/leg:heading/desig/designum/refpt"/>
            <xsl:apply-templates select="leg:level-vrnt/leg:heading/edpnum/refpt"/>
            <xsl:apply-templates select="leg:level-vrnt/leg:bodytext/edpnum/refpt"/>
            <xsl:apply-templates select="node()"/>
        </primlaw:level>
    </xsl:template>

    <xsl:template match="leg:level-vrnt">
        <!-\-
        <xsl:apply-templates select="leg:heading/descendant::refpt | leg:levelinfo/leg:levelstatus/refpt"/>
        <xsl:apply-templates select="leg:heading"/>
        <xsl:apply-templates select="leg:heading/leg:empleg"/>
        <xsl:apply-templates select="node() except (leg:heading)"/>
        -\->
        <xsl:apply-templates select="node()"/>
    </xsl:template>-->
<!--

    <xsl:template match="leg:level-vrnt/@leveltype | leg:level/@leveltype">
        <xsl:variable name="thisleveltype" select="."/>
        <xsl:attribute name="leveltype">
            <xsl:choose>
                <xsl:when test="$thisleveltype='subrul'">subrule</xsl:when>
                <xsl:when test="$thisleveltype='rul'">rule</xsl:when>
                <xsl:when test="$thisleveltype='sect'">section</xsl:when>
                <xsl:when test="$leveltypes//ln-data:level=$thisleveltype">
                    <xsl:value-of select="$thisleveltype"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>unclassified</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>
-->
</xsl:stylesheet>
