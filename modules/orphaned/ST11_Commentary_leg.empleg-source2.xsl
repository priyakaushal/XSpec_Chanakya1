<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="ST11_Commentary_leg.empleg-source2">
  <title>Source XML showing conversion from <sourcexml>leg:level/leg:level-vrnt/leg:heading/leg:empleg</sourcexml></title>
  <body>
    <codeblock>

&lt;legfragment&gt;
 &lt;leg:level&gt;
  &lt;leg:level-vrnt leveltype="form"&gt;
   &lt;leg:heading&gt;
    &lt;desig&gt;&lt;designum&gt;Form 3&lt;/designum&gt;&lt;/desig&gt;
    &lt;title&gt;Notice under section 2&lt;/title&gt;
    &lt;leg:empleg&gt;(subregulation 4(3))&lt;/leg:empleg&gt;
   &lt;/leg:heading&gt;
   &lt;!-- ETC. --&gt;
  &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;
&lt;/legfragment&gt;
    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Seclaw\ST11_Commentary_leg.empleg-source2.dita  -->
	<xsl:message>ST11_Commentary_leg.empleg-source2.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/leg:empleg">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>