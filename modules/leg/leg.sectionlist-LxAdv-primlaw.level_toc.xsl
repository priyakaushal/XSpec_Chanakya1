<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ln-data="http://www.lexis-nexis.com/glp/ln-data" xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo glp in leg case ln-data xs">


<!-- Copied from AU08 specific module -->
    <xsl:template name="sectionlist-table-to-toc">

        <primlaw:level>
            <xsl:if test="not(leg:heading/title/refpt)">
                <xsl:apply-templates select="@id"/>
            </xsl:if>
            <xsl:attribute name="leveltype">table-of-contents</xsl:attribute>
            <xsl:apply-templates select="leg:heading/title/refpt"/>
            <xsl:apply-templates select="leg:heading"/>
            <primlaw:bodytext>
                <toc toctype="sectionlist" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@* except @id | node() except leg:heading"/>
                </toc>
            </primlaw:bodytext>
        </primlaw:level>

    </xsl:template>

    <xsl:template match="leg:sectionlist[@id or contains(@id, '_PROVLIST')]/p" priority="25">
        <xsl:choose>
            <xsl:when test="table/tgroup/tbody/row[1][not(entry[2])]">
                <!-- scenario 1 -->
                    <xsl:apply-templates select="table/tgroup/tbody/row[1]" mode="table-to-toc"/>
            </xsl:when>
            <xsl:when test="table/tgroup/tbody/row[1][entry[2]]">
                <!-- scenario 2 -->
                <toc-entry xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <heading/>
                    <xsl:apply-templates select="table/tgroup/tbody/row[1]" mode="table-to-toc"/>
                </toc-entry>
                <xsl:apply-templates select="table/tgroup/tbody/row[not(entry[2])][1]" mode="table-to-toc"/>
            </xsl:when>
            <xsl:otherwise>
                <!-- sometimes just p/text.   DT is dropping it although it is only formatting text -->
<!--                <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@* | node()"/>
                </p>
-->            </xsl:otherwise>
        </xsl:choose>




    </xsl:template>

    <xsl:template match="row[not(entry[2])]" mode="table-to-toc">
        <toc-entry xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="entry/remotelink" mode="table-to-toc"/>
            <heading>
                <desig>
                    <xsl:apply-templates select="entry/remotelink/text()"/>
                </desig>
            </heading>
            <xsl:apply-templates select="following-sibling::*[1][self::row][entry[2]]" mode="table-to-toc"/>
        </toc-entry>
        <xsl:apply-templates select="following-sibling::*[self::row][not(entry[2])][1]" mode="table-to-toc"/>
    </xsl:template>

<!-- MDS 2017-08-09 - Added choose statement in title to account for PCDATA in entry elements. -->
    <xsl:template match="row[entry[2]]" mode="table-to-toc">
        <toc-entry xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="entry[2]/remotelink" mode="table-to-toc"/>
            <heading>
                <desig>
                    <xsl:apply-templates select="entry[1]/text()"/>
                </desig>
                <title>
                    <xsl:choose>
                        <xsl:when test="entry[2]/remotelink/text() | entry[2]/emph">
                            <xsl:apply-templates select="entry[2]/remotelink/text() | entry[2]/emph"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="entry[2]/text()"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </title>
            </heading>
        </toc-entry>
                <xsl:apply-templates select="following-sibling::*[1][self::row][entry[2]]" mode="table-to-toc"/>
    </xsl:template>
    
    

    <xsl:template match="remotelink" mode="table-to-toc">
        <xsl:variable name="thisdpsi">
            <xsl:choose>
                <xsl:when test="@dpsi">
                    <xsl:value-of select="@dpsi"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$dpsi"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="@remotekey1 = 'DOC-ID'">
                <xsl:choose>
                    <xsl:when test="@remotekey2">
                        <xsl:attribute name="ref:locatorkey" select="concat($thisdpsi, '-', @remotekey2)"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:attribute name="ref:locatorkey" select="concat($thisdpsi, '-', @refpt)"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:attribute name="ref:locatorkeyprotocol" select="'DOC-ID'"/>
            </xsl:when>
            <xsl:when test="@remotekey1 = 'REFPTID'">
                <xsl:attribute name="ref:locatorkey" select="concat($thisdpsi, '-', @docidref)"/>
                <xsl:attribute name="ref:locatorkeyprotocol" select="'DOC-ID'"/>
                <xsl:choose>
                    <xsl:when test="@refpt">
                        <xsl:attribute name="anchoridref" select="@refpt"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:attribute name="anchoridref" select="@remotekey2"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
        </xsl:choose>
    </xsl:template>



</xsl:stylesheet>
