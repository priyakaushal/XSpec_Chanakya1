<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.heading">
  <title>leg:heading <lnpid>id-UK06-28022</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml> which has tokenized values and populated as:
        <ul>
          <li><targetxml>heading[@align="left"]</targetxml></li>
          <li><targetxml>heading[@align="right"]</targetxml></li>
          <li><targetxml>heading[@align="center"]</targetxml></li>
        </ul>
      </p>
      <note>If <sourcexml>leg:heading</sourcexml> occurs as a first child of <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:heading</sourcexml> then <sourcexml>leg:heading</sourcexml> will become first child of <targetxml>primlaw:level</targetxml> in NewLexis conversion. And if <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml> contains only <sourcexml>leg:heading</sourcexml> and not any other sibling of <sourcexml>leg:heading</sourcexml> then <sourcexml>leg:levelbody/leg:bodytext</sourcexml> will suppress in NewLexis conversion. To more clarify please refer below source and target example.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-09-26 <ph id="change_20132609_AB">Added a note with instructions if <sourcexml>leg:heading</sourcexml> occurs as a first child of <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:heading</sourcexml> then <sourcexml>leg:heading</sourcexml> will become first child of <targetxml>primlaw:level</targetxml> in NewLexis conversion. (WebTeam #236020).</ph></p>
      
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.heading.dita  -->
	
	<!-- Sudhanshu Srivastava :
	     Edited :- 19 June 2017.
	     Comments :- This is content specific module handling leg:heading.
	-->
	<xsl:template match="leg:heading">
		<!--  Original Target XPath:  heading   -->
		<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node() except leg:empleg"/>
		</heading>
		<xsl:apply-templates select="leg:empleg"/>
	</xsl:template>

	<xsl:template match="leg:heading/@align">
		<!--  Original Target XPath:  @align   -->
		<xsl:attribute name="align" select="."/>
	</xsl:template>
	<xsl:template match="leg:heading/@inline">
		<!--  Original Target XPath:  @align   -->
		<xsl:attribute name="inline" select="."/>
	</xsl:template>
</xsl:stylesheet>