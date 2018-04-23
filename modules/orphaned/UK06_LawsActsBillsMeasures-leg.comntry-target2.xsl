<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.comntry-target2">
 <title>Target XML 2 : <sourcexml>leg:preamble/leg:bodytext/leg:comntry</sourcexml></title>
  <body>
    <codeblock>

&lt;primlaw:level leveltype="preamble"&gt;
 &lt;annot:annotations&gt;
  &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
   &lt;annot:annotation&gt;
    &lt;bodytext&gt;
     &lt;h&gt;
      &lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;
     &lt;/h&gt;
    &lt;/bodytext&gt;
    &lt;!-- ETC. --&gt;
   &lt;/annot:annotation&gt;
  &lt;/annot:annotation-grp&gt;
 &lt;/annot:annotations&gt;
&lt;/primlaw:level&gt;

    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.comntry-target2.dita  -->
	<xsl:message>UK06_LawsActsBillsMeasures-leg.comntry-target2.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:preamble/leg:bodytext/leg:comntry">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>