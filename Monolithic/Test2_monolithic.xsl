<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    

    
    <xsl:template match="p/T2">
        <p>
<!--            PriyaK-->
            <T2>
                <xsl:value-of select="."/>
            </T2>
        </p>
    </xsl:template>
    
    <xsl:template match="p/T3"/>
    

    <xsl:template match="T3">
        <p>
            <T3>
<!--                Chaitanya-->
                <xsl:value-of select="."/>
            </T3>
        </p>
    </xsl:template>
<!--  I have put the comments only for testing of monolithic generation  -->
    
    

</xsl:stylesheet>