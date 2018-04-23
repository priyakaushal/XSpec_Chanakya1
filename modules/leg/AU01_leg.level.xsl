<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="leg:level" priority="35">
        <!--  Original Target XPath:  primlaw:level   -->
        
        <xsl:choose>
            <xsl:when test="parent::legfragment/parent::blockquote">
                <!--<primlaw:excerpt>-->
                    <primlaw:level>
                        <xsl:choose>
                            <xsl:when test="leg:level-vrnt[@leveltype='sect']">
                                <xsl:attribute name="leveltype" select="'section'"/>
                            </xsl:when>
                            <xsl:when test="leg:level-vrnt[@leveltype='subsect']">
                                <xsl:attribute name="leveltype" select="'subsection'"/>
                            </xsl:when>
                            <xsl:when test="leg:level-vrnt[@leveltype='sched']">
                                <xsl:attribute name="leveltype" select="'schedule'"/>
                            </xsl:when>
                            <xsl:when test="leg:level-vrnt[@leveltype='prov1']">
                                <xsl:attribute name="leveltype" select="'section'"/>
                            </xsl:when>
                            <xsl:when test="leg:level-vrnt[@leveltype='prov2']">
                                <xsl:attribute name="leveltype" select="'subsection'"/>
                            </xsl:when>
                            <xsl:when test="leg:level-vrnt[@leveltype='prov3']">
                                <xsl:attribute name="leveltype" select="'paragraph'"/>
                            </xsl:when>
                            <xsl:when test="leg:level-vrnt[@leveltype='prov4']">
                                <xsl:attribute name="leveltype" select="'subparagraph'"/>
                            </xsl:when>
                            <xsl:when test="ancestor:: leg:level/leg:level-vrnt[@leveltype='sched']/leg:level-vrnt[@leveltype='prov1']">
                                <xsl:attribute name="leveltype" select="'paragraph'"/>
                            </xsl:when>
                            <xsl:when test="ancestor:: leg:level/leg:level-vrnt[@leveltype='sched']/leg:level-vrnt[@leveltype='prov2']">
                                <xsl:attribute name="leveltype" select="'subparagraph'"/>
                            </xsl:when>
                            <xsl:when test="ancestor:: leg:level/leg:level-vrnt[@leveltype='sched']/leg:level-vrnt[@leveltype='prov3']">
                                <xsl:attribute name="leveltype" select="'subparagraph'"/>
                            </xsl:when>
                            <xsl:when test="ancestor:: leg:level/leg:level-vrnt[@leveltype='sched']/leg:level-vrnt[@leveltype='prov4']">
                                <xsl:attribute name="leveltype" select="'subparagraph'"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="leveltype" select="if(number(leg:level-vrnt/@leveltype)) then 'unclassified' else leg:level-vrnt/@leveltype"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <!-- <xsl:if test="(not(refpt) or not(leg:level-vrnt/refpt) or not(parent::leg:body/descendant::level/refpt) or not(parent::leg:body/descendant::leg:comntry/refpt) or   not(leg:level-vrnt/leg:levelbody/refpt) or not(leg:level-vrnt/refpt) or not(leg:level-vrnt/leg:heading/refpt) or not(leg:level-vrnt/leg:levelbody/refpt)) and not(parent::leg:endmatter or parent::leg:body)">
				<ref:anchor id="TOC00{position()}" anchortype="local"/>
			</xsl:if>-->
                        <xsl:apply-templates select="@* | node()"/>
                    </primlaw:level>
                    
                <!--</primlaw:excerpt>-->
            </xsl:when>
            <xsl:otherwise>
                <primlaw:level>
                    <xsl:choose>
                        <xsl:when test="leg:level-vrnt[@leveltype='sect']">
                            <xsl:attribute name="leveltype" select="'section'"/>
                        </xsl:when>
                        <xsl:when test="leg:level-vrnt[@leveltype='subsect']">
                            <xsl:attribute name="leveltype" select="'subsection'"/>
                        </xsl:when>
                        <xsl:when test="leg:level-vrnt[@leveltype='sched']">
                            <xsl:attribute name="leveltype" select="'schedule'"/>
                        </xsl:when>
                        <xsl:when test="leg:level-vrnt[@leveltype='prov1']">
                            <xsl:attribute name="leveltype" select="'section'"/>
                        </xsl:when>
                        <xsl:when test="leg:level-vrnt[@leveltype='prov2']">
                            <xsl:attribute name="leveltype" select="'subsection'"/>
                        </xsl:when>
                        <xsl:when test="leg:level-vrnt[@leveltype='prov3']">
                            <xsl:attribute name="leveltype" select="'paragraph'"/>
                        </xsl:when>
                        <xsl:when test="leg:level-vrnt[@leveltype='prov4']">
                            <xsl:attribute name="leveltype" select="'subparagraph'"/>
                        </xsl:when>
                        <xsl:when test="ancestor:: leg:level/leg:level-vrnt[@leveltype='sched']/leg:level-vrnt[@leveltype='prov1']">
                            <xsl:attribute name="leveltype" select="'paragraph'"/>
                        </xsl:when>
                        <xsl:when test="ancestor:: leg:level/leg:level-vrnt[@leveltype='sched']/leg:level-vrnt[@leveltype='prov2']">
                            <xsl:attribute name="leveltype" select="'subparagraph'"/>
                        </xsl:when>
                        <xsl:when test="ancestor:: leg:level/leg:level-vrnt[@leveltype='sched']/leg:level-vrnt[@leveltype='prov3']">
                            <xsl:attribute name="leveltype" select="'subparagraph'"/>
                        </xsl:when>
                        <xsl:when test="ancestor:: leg:level/leg:level-vrnt[@leveltype='sched']/leg:level-vrnt[@leveltype='prov4']">
                            <xsl:attribute name="leveltype" select="'subparagraph'"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="leveltype" select="if(number(leg:level-vrnt/@leveltype)) then 'unclassified' else leg:level-vrnt/@leveltype"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <!-- <xsl:if test="(not(refpt) or not(leg:level-vrnt/refpt) or not(parent::leg:body/descendant::level/refpt) or not(parent::leg:body/descendant::leg:comntry/refpt) or   not(leg:level-vrnt/leg:levelbody/refpt) or not(leg:level-vrnt/refpt) or not(leg:level-vrnt/leg:heading/refpt) or not(leg:level-vrnt/leg:levelbody/refpt)) and not(parent::leg:endmatter or parent::leg:body)">
				<ref:anchor id="TOC00{position()}" anchortype="local"/>
			</xsl:if>-->
                    <xsl:apply-templates select="@* | node()"/>
                </primlaw:level>
                
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>
    
    <xsl:template match="leg:level/@id">
        <!--  Original Target XPath:  @xml:id   -->
        <xsl:attribute name="xml:id" select="."/>
    </xsl:template>
    
    <xsl:template match="leg:level/@subdoc">
        <!--  Original Target XPath:  @includeintoc   -->
        <xsl:attribute name="includeintoc" select="."/>
    </xsl:template>
    
    <xsl:template match="leg:level/@toc-caption">
        <!--  Original Target XPath:  @alternatetoccaption   -->
        <xsl:attribute name="alternatetoccaption" select="."/>
    </xsl:template>
    
    <xsl:template match="leg:level-vrnt">
        <!--  Original Target XPath:  @leveltype   -->
        <xsl:apply-templates select="node()"/>
    </xsl:template>
    
    <xsl:template match="leg:levelbody">
        <!--  Original Target XPath:  primlaw:bodytext   -->
        <xsl:choose>
            <!-- Checking if leg:bodytext is comming simultanious under leg:levelbody. -->
            <xsl:when test="*[1][self::leg:bodytext]">
                <xsl:apply-templates select="@* | node()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="@* | node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="leg:heading">
        <!--  Original Target XPath:  heading   -->
        <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node() except leg:empleg"/>
        </heading>
        <xsl:apply-templates select="leg:empleg"/>
    </xsl:template>
    
    <xsl:template match="leg:heading/@align">
        <!--  Original Target XPath:  @align   -->
        <xsl:attribute name="align" select="."/>
    </xsl:template>
    
    <xsl:template match="leg:heading/@inline">
        <!--  Original Target XPath:  @inline   -->
        <xsl:attribute name="inline" select="."/>
    </xsl:template>
    
</xsl:stylesheet>