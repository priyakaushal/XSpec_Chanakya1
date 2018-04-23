<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

<!--	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-CA05-13615</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and <sourcexml>@toc-caption</sourcexml> <targetxml>@alternatetoccaption</targetxml> and <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml>.</p>
      <note>If <sourcexml>@align</sourcexml> attribute value is <b>"center"</b> (i.e.
        align="center") then remove the <sourcexml>@align</sourcexml>attribute because this
        attribute default value is <targetxml>"left"</targetxml>. This rule is applicable for three
        CAN content stream: CA05- Acts &amp; Bills, CA06-Regs and CA07-Court Rules. </note>
      <note>The attributes <targetxml>@includeintoc</targetxml> and <targetxml>@alternatetoccaption</targetxml> will be part of element <targetxml>primlaw:level</targetxml>.</note>      
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:heading</sourcexml></title>
      <codeblock>

&lt;leg:level&gt;
   &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt; 
     &lt;leg:heading subdoc="true" toc-caption="FORM B" align="center"&gt;
        &lt;title&gt;FORM B&lt;/title&gt;
    &lt;/leg:heading&gt;
  &lt;/leg:level-vrnt&gt;
      &lt;!-\-...-\-&gt;
&lt;/leg:level&gt;  

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:level leveltype="unclassified" includeintoc="true" alternatetoccaption="FORM B"&gt;
    &lt;heading&gt;
        &lt;title&gt;FORM B&lt;/title&gt;
     &lt;/heading&gt;
     &lt;!-\-...-\-&gt;
&lt;/primlaw:level&gt;
    
      </codeblock>
    </example>    
  </body>
	</dita:topic>

	<!-\-  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -\->
	<!-\-    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.heading.dita  -\->
	<xsl:message>leg.heading.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:heading" priority="2">

		<!--  Original Target XPath:  heading   -->
		<heading>
		
			<xsl:apply-templates select="node()"/>
			
		</heading>

	</xsl:template>
	
	
	<xsl:template match="title" priority="2">
		<title>
		<xsl:apply-templates select="@* | node() except @align"/>
		</title>
	</xsl:template>
	
	<xsl:template match="title[starts-with(.,'ENACTMENT NOT IN FORCE')]" priority="3">
		<subtitle>
			<xsl:apply-templates select="@* | node() except @align"/>
		</subtitle>
	</xsl:template>
	
	<xsl:template match="desig" priority="2">
		<desig>
			<xsl:value-of select="child::designum"/>
		</desig>
	</xsl:template>

<!--	<xsl:template match="@subdoc">

		<!-\-  Original Target XPath:  @includeintoc   -\->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!-\-  Original Target XPath:  @alternatetoccaption   -\->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@align">

		<!-\-  Original Target XPath:  @align   -\->
		<xsl:attribute name="align">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>-->

</xsl:stylesheet>