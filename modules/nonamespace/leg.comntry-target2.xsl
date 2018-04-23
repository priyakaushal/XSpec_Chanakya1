<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.comntry-target3">
 <title>Target XML 2 : <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry/level</sourcexml></title>
  <body>
   <codeblock>

&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
 &lt;primlaw:level leveltype="section" alternatetoccaption="7 Terms and conditions of order" includeintoc="true"&gt;
  &lt;ref:anchor id="ASM.0257E.S7" anchortype="global"/&gt;
  &lt;heading&gt;
   &lt;desig inline="true"&gt;7&lt;/desig&gt;
   &lt;title inline="true"&gt;Terms and conditions of order&lt;/title&gt;
  &lt;/heading&gt;
  &lt;primlaw:bodytext&gt;
   &lt;!-- ETC. --&gt;
  &lt;/primlaw:bodytext&gt;
  &lt;annot:annotations&gt;
   &lt;annot:annotation-grp grptype="COMMENTARY" includeintoc="true" alternatetoccaption="Commentary"&gt;
    &lt;annot:annotation includeintoc="false"&gt;
     &lt;ref:anchor id="ASM.0257E.S7.COMNTRY_7-01" anchortype="global"/&gt;
     &lt;heading&gt;
      &lt;desig&gt;7-01&lt;/desig&gt;
     &lt;/heading&gt;
     &lt;bodytext&gt;
      &lt;!-- ETC. --&gt;
     &lt;/bodytext&gt;
    &lt;/annot:annotation&gt;
    &lt;!-- ETC. --&gt;
   &lt;/annot:annotation-grp&gt;
  &lt;/annot:annotations&gt;
 &lt;/primlaw:level&gt;
&lt;/legis:body&gt;

    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY04-Annotated_legislation\leg.comntry-target2.dita  -->
	<xsl:message>leg.comntry-target2.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry/level">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>