<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/" xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="#all">


    <xsl:template match="leg:prelim">

        <!--  Original Target XPath:  courtrule:courtrule/courtrule:body/primlaw:level[@leveltype="unclassified"]/primlaw:prelim/primlawhist:primlawhist   -->
        <primlaw:level leveltype="unclassified">
            <primlaw:prelim>
                <xsl:apply-templates select="@* | node()"/>
            </primlaw:prelim>
        </primlaw:level>

    </xsl:template>


</xsl:stylesheet>
