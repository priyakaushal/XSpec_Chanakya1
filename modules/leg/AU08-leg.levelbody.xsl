<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" 
    exclude-result-prefixes="dita">


    <xsl:template match="leg:levelbody">
        <!-- au08 PS2017042423432080024LNIAUCOURTRULES_input_famrules10043373.xml 
                heading is already applied at leg:bodytext so this would be duplicate
                the leg:bodytext is to wrap it in a unclassified level.  This is done at leg:bodytext.
                CI: – If the input documents are having scenario leg:bodytext/leg:heading/title then leg:bodytext becomes primlaw:bodytext and
                 create a wrapper primlaw:level[@leveltype="unclassified"] with child title becomes title
                <xsl:apply-templates select="leg:bodytext/leg:heading"/>
            leg:bodytext fires the heading in AU08 court rule body xsl at this template: <xsl:template match="leg:bodytext/leg:heading[title]">

        -->
        
        <xsl:apply-templates/>		
    </xsl:template>
    
    <xsl:template match="leg:bodytext">
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node()"/>
        </primlaw:bodytext>
    </xsl:template>
    

</xsl:stylesheet>
