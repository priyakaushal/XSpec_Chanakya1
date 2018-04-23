<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  xmlns:local="http://www.example.com/functions/local"
  exclude-result-prefixes="xs xd local"
  version="2.0">
  <xd:doc scope="stylesheet">
    <xd:desc>
      <xd:p><xd:b>Created on:</xd:b> Oct 29, 2011</xd:p>
      <xd:p><xd:b>Author:</xd:b> DunninJX</xd:p>
      <xd:p></xd:p>
    </xd:desc>
  </xd:doc>
  
  <!-- take something like "C:\cc_code\DunninJX_view\dataArch\DITA\ConversionInstructions\CRE_and_Type3\lnv.INV-ON-HAND.dita" and produce "lnv.INV-ON-HAND.dita" -->
  <xsl:function name="local:filenameFromPath">
  	<xsl:param name="path"/>
	<xsl:sequence select="{tokenize(@xtrf, '\\')[last()]}"/>
  </xsl:function>

  <!-- take something like "file:///C:/cc_code/DunninJX_view/dataArch/DITA/ConversionInstructions/CRE_and_Type3/lnv.INV-ON-HAND.dita" and produce "lnv.INV-ON-HAND.dita" -->
  <xsl:function name="local:filenameFromPath">
  	<xsl:param name="path"/>
	<xsl:sequence select="{tokenize(@xtrf, '/')[last()]}"/>
  </xsl:function>

  <xsl:function name="local:basename" as="xs:string">
    <xsl:param name="pfile" as="xs:string"/>
    <xsl:sequence select="local:reverseStr(substring-before(local:reverseStr($pfile), '/'))" />
  </xsl:function>
  
  <xsl:function name="local:dirname" as="xs:string">
    <xsl:param name="pfile" as="xs:string"/>
    <xsl:sequence select="local:reverseStr(substring-after(local:reverseStr($pfile), '/'))" />
  </xsl:function>
  
  <xsl:function name="local:reverseStr" as="xs:string">
    <xsl:param name="pStr" as="xs:string"/>    
    <xsl:sequence select="codepoints-to-string(reverse(string-to-codepoints($pStr)))"/>
  </xsl:function>
  
  
  <!-- below by Eliot Kimber; copied from http://www.mhonarc.org/archive/html/xsl-list/2008-03/msg00222.html -->
  
  <xsl:function name="local:getRelativePath" as="xs:string">
	    <!-- Calculate relative path that gets from from source path to target path.
	      Given:
	      
	      
	      [1]  Target: /A/B/C
	      Source: /A/B/C/X
	      Return: "X"
	      
	      
	      [2]  Target: /A/B/C
	      Source: /E/F/G/X
	      Return: "/E/F/G/X"
	      
	      
	      [3]  Target: /A/B/C
	      Source: /A/D/E/X
	      Return: "../../D/E/X"
	      
	      
	      [4]  Target: /A/B/C
	      Source: /A/X
	      Return: "../../X"
	      
	      
	    -->
	    
	    <xsl:param name="source" as="xs:string"/><!-- Path to get relative path *from* -->
	    <xsl:param name="target" as="xs:string"/><!-- Path to get relataive path *to* -->
	    <xsl:if test="false()">
	      <xsl:message> + DEBUG: local:getRelativePath(): Starting...</xsl:message>
	      <xsl:message> + DEBUG: source="<xsl:value-of select="$source"/>"</xsl:message>
	      <xsl:message> + DEBUG: target="<xsl:value-of select="$target"/>"</xsl:message>
	    </xsl:if>
	    <xsl:variable name="sourceTokens" select="tokenize((if (starts-with($source, '/')) then substring-after($source, '/') else $source), '/')" as="xs:string*"/>
	    <xsl:variable name="targetTokens" select="tokenize((if (starts-with($target, '/')) then substring-after($target, '/') else $target), '/')" as="xs:string*"/>
	    <xsl:choose>
	      <xsl:when test="(count($sourceTokens) > 0 and count($targetTokens) > 0) and
	        (($sourceTokens[1] != $targetTokens[1]) and
	        (contains($sourceTokens[1], ':') or contains($targetTokens[1], ':')))">
	        <!-- Must be absolute URLs with different schemes, cannot be relative, return
	          target as is. -->
	        <xsl:value-of select="$target"/>
	      </xsl:when>
	      <xsl:otherwise>
	        <xsl:variable name="resultTokens"
	          select="local:analyzePathTokens($sourceTokens, $targetTokens, ())" as="xs:string*"/>
	        <xsl:variable name="result" select="string-join($resultTokens, '/')" as="xs:string"/>
	        <xsl:value-of select="$result"/>
	      </xsl:otherwise>
	    </xsl:choose>
	  </xsl:function>
	  
	  <xsl:function name="local:analyzePathTokens" as="xs:string*">
	    <xsl:param name="sourceTokens" as="xs:string*"/>
	    <xsl:param name="targetTokens" as="xs:string*"/>
	    <xsl:param name="resultTokens" as="xs:string*"/>
	    <xsl:if test="false()">
	      <xsl:message> + DEBUG: local:analyzePathTokens(): Starting...</xsl:message>
	      <xsl:message> + DEBUG: sourceTokens=<xsl:value-of select="string-join($sourceTokens, ',')"/></xsl:message>
	      <xsl:message> + DEBUG: targetTokens=<xsl:value-of select="string-join($targetTokens, ',')"/></xsl:message>
	      <xsl:message> + DEBUG: resultTokens=<xsl:value-of select="string-join($resultTokens, ',')"/></xsl:message>
	    </xsl:if>
	    <xsl:sequence
	      select="if (count($sourceTokens) = 0 and count($targetTokens) = 0)
	      then $resultTokens
	      else if (count($sourceTokens) = 0)
	      then trace(($resultTokens, $targetTokens), ' + DEBUG: count(sourceTokens) = 0')
	      else if (string($sourceTokens[1]) != string($targetTokens[1]))
	      then local:analyzePathTokens($sourceTokens[position() > 1], $targetTokens, ($resultTokens, '..'))
	      else local:analyzePathTokens($sourceTokens[position() > 1], $targetTokens[position() > 1], $resultTokens)"/>
	  </xsl:function>
	  
  
  
  
</xsl:stylesheet>