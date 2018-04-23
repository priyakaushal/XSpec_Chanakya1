<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita casedigest dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_level-to-LexisAdvance_section">
  <title>level-to-section <lnpid>id-UK03-27451</lnpid></title>
  <body>
    <p>
      <sourcexml>dig:body/level/bodytext</sourcexml> becomes <targetxml>casedigest:body/section/bodytext</targetxml>.
      
           
      The source attribute <sourcexml>level/@display-name</sourcexml> becomes <targetxml>casedigest:body/section @sectiontype</targetxml>.
      <sourcexml>dig:body/level/bodytext/glp:note</sourcexml> becomes <targetxml>casedigest:body/section/bodytext/note</targetxml>. 
      
      <note>Please note that UK currently using <sourcexml>level/@display-name</sourcexml> when they intended to use <sourcexml>level/@leveltype</sourcexml>. 
        LBU would like to change but as this would require an entire reload, we need to capture both the occurences. 
        For eg: The attributes <sourcexml>level/@display-name</sourcexml> or <sourcexml>level/@leveltype</sourcexml>, 
        whichever has the value <b>"Full Text"</b> OR <b>"Summary"</b> needs to be mapped to <targetxml>section/@sectiontype</targetxml>.</note>
      
      <note>Please note that the whitespace in the attribute value - for eg : <sourcexml>level/@display-name="Full Text"</sourcexml> should be converted
      to an underscore in conversion. Stylesheet can be made to display anything the user needs to see.</note>
         
      
      The source attribute <sourcexml>level/@leveltype</sourcexml> - if it has the value other than <b>"Full Text"</b> OR <b>"Summary"</b> can be dropped.
      
<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level leveltype="2" display-name="Full Text"&gt;
      &lt;bodytext&gt;...
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;section sectiontype="Full Text"&gt;
      &lt;bodytext&gt;...
      &lt;/bodytext&gt;
    &lt;/section&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>      
      
    </p>
    <section>
      <title>Changes</title>
      <p>2015-08-12: <ph id="change_20150812_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_level-to-LexisAdvance_section.dita  -->
	 
	<!-- Vikas Rohilla : Template to match the level -->
	<xsl:template match="level">
		<section>
		  <xsl:apply-templates select="@*|node()"/>
		</section>
	</xsl:template>
	
	<xsl:template match="level/@display-name"/>
	
	<xsl:template match="level/@leveltype">
		<xsl:attribute name="sectiontype">
		  <xsl:choose>
		    <xsl:when test=".='Full Text'">
		      <xsl:text>Full_Text</xsl:text>
		    </xsl:when>
		    <xsl:otherwise>
		      <xsl:value-of select="."/>
		    </xsl:otherwise>
		  </xsl:choose>
		  
		</xsl:attribute>
	</xsl:template>
	
	
</xsl:stylesheet>