<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-CA07-14013</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes
          <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and
          <sourcexml>@toc-caption</sourcexml>
        <targetxml>@alternatetoccaption</targetxml>.
      </p>
      
      <note>The attributes <targetxml>@includeintoc</targetxml> and <targetxml>@alternatetoccaption</targetxml> will be part of element <targetxml>primlaw:level</targetxml>, if present in source documents.</note>
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading&gt;
            &lt;title align="center"&gt;A. Appeal Book&lt;/title&gt;
        &lt;/leg:heading&gt;
    &lt;/leg:level-vrnt&gt;
    &lt;!--...--&gt;
&lt;/leg:level&gt;

      </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;heading&gt;
        &lt;title&gt;A. Appeal Book&lt;/title&gt;
    &lt;/heading&gt;
    &lt;!--...--&gt;
&lt;/primlaw:level&gt;

      </codeblock>
    </example>
    <section>
      <title>Change</title>
      <p>2014-09-25: <ph id="change_20140925_SSX">Corrected output markup, We have instruction to
          remove <sourcexml>title/@align="center"</sourcexml> from target output.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.heading.dita  -->
	
	<!--<xsl:template match="leg:heading">

		<!-\-  Original Target XPath:  heading   -\->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>-->

  <xsl:template match="leg:heading" priority="2">
    
    <!--  Original Target XPath:  heading   -->
    <heading>
      <xsl:apply-templates select="node()"/>
    </heading>
    
  </xsl:template>
  
  <xsl:template match="title" priority="2">
    <title>
      <xsl:apply-templates select="@* | node()"/>
    </title>
  </xsl:template>
  
  <xsl:template match="desig" priority="2">
    <desig>
      <xsl:value-of select="child::designum"/>
    </desig>
  </xsl:template>
  
  <xsl:template match="title/@align" priority="2"> </xsl:template>
  <xsl:template match="leg:heading/@align" priority="2"> </xsl:template>
  
  <xsl:template match="title/emph">
    <emph typestyle="it">
      <xsl:apply-templates select="@* | node()"/>
    </emph>
  </xsl:template>
  
  <xsl:template match="heading/@align" priority="2"/>
  
  <xsl:template match="leg:heading/@subdoc" priority="2"> </xsl:template>
  
  <xsl:template match="leg:heading/@toc-caption" priority="2"> </xsl:template>
  
  <!--	<xsl:template match="@align">

		<!-\-  Original Target XPath:  @align   -\->
		<xsl:attribute name="align">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>-->

</xsl:stylesheet>