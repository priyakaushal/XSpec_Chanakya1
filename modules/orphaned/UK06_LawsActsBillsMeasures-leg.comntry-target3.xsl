<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.comntry-target3">
 <title>Target XML 3 : <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level</sourcexml></title>
  <body>
    <codeblock>

&lt;legis:body&gt;
 &lt;primlaw:level leveltype="schedule"&gt;
  &lt;primlaw:level leveltype="paragraph"&gt;
   &lt;!-- ETC. --&gt;
   &lt;annot:annotations&gt;
    &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
     &lt;annot:annotation&gt;
      &lt;bodytext&gt;
       &lt;h&gt;&lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;&lt;/h&gt;
      &lt;/bodytext&gt;
      &lt;annot:annotationlevel&gt;
       &lt;heading&gt;
        &lt;title&gt;Amendment&lt;/title&gt;
       &lt;/heading&gt;
       &lt;annot:bodytext&gt;
        &lt;!-- ETC. --&gt;
       &lt;/annot:bodytext&gt;
      &lt;/annot:annotationlevel&gt;
     &lt;/annot:annotation&gt;
    &lt;/annot:annotation-grp&gt;
   &lt;/annot:annotations&gt;
  &lt;/primlaw:level&gt;
 &lt;/primlaw:level&gt;
&lt;/legis:body&gt;

    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.comntry-target3.dita  -->
	<xsl:message>UK06_LawsActsBillsMeasures-leg.comntry-target3.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>