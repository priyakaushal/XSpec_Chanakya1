<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="2.0">
  
  <xsl:template name="SplitCamelCase">
    <xsl:param name="text" />
    <xsl:param name="digitsMode" select="0" />
    <xsl:variable name="upper">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
    <xsl:variable name="lower">abcdefghijklmnopqrstuvwxyz</xsl:variable>
    <xsl:variable name="digits">0123456789</xsl:variable>
    
    <xsl:if test="$text != ''">
      <xsl:variable name="letter" select="substring($text, 1, 1)" />
      <xsl:choose>
        <xsl:when test="contains($upper, $letter)">
          <xsl:text>-</xsl:text>
          <xsl:value-of select="translate($letter, $upper, $lower)" />
        </xsl:when>
        <xsl:when test="contains($digits, $letter)">
          <xsl:choose>
            <xsl:when test="$digitsMode != 1">
              <xsl:text>-</xsl:text>
            </xsl:when>
          </xsl:choose>
          <xsl:value-of select="$letter" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$letter"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:call-template name="SplitCamelCase">
        <xsl:with-param name="text" select="substring-after($text, $letter)" />
        <xsl:with-param name="digitsMode" select="contains($digits, $letter)" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>