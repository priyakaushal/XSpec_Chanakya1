<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_leg.empleg-target2">
  <title>Target XML showing conversion from <sourcexml>leg:level/leg:level-vrnt/leg:heading/leg:empleg</sourcexml></title>
  <body>
    <codeblock>

&lt;primlaw:excerpt&gt;
 &lt;primlaw:level leveltype="form"&gt;
  &lt;heading&gt;
   &lt;desig&gt;Form 3&lt;/desig&gt;
   &lt;title&gt;Notice under section 2&lt;/title&gt;
  &lt;/heading&gt;
  &lt;primlaw:authority&gt;
   &lt;primlaw:authority-item&gt;
    &lt;textitem&gt;(subregulation 4(3))&lt;/textitem&gt;
   &lt;/primlaw:authority-item&gt;
  &lt;/primlaw:authority&gt;
  &lt;!-- ETC. --&gt;
 &lt;/primlaw:level&gt;
&lt;/primlaw:excerpt&gt;
    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU05_Comm_Form_Prec\Comm-Form-Pre_leg.empleg-target2.dita  -->
	<xsl:message>Comm-Form-Pre_leg.empleg-target2.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/leg:empleg">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>