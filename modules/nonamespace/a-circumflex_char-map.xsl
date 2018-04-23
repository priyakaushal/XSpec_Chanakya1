<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
     version="2.0" exclude-result-prefixes="dita">
    
    
    <xsl:character-map name="a-circumflex">
        <xsl:output-character character="Â" string=""/>
        <!--Satbir: Below junk character is equal to space character then replace with space keybaord charcater.-->
        <xsl:output-character character=" " string=" "/>
        <xsl:output-character character="&#x2003;" string=" "/>
    </xsl:character-map>
    
    
</xsl:stylesheet>