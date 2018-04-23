<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.comntry-source1">
 <title>Source XML 1 : <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry</sourcexml></title>
  <body>
    <codeblock>

&lt;leg:body&gt;
 &lt;leg:level&gt;
  &lt;leg:level-vrnt leveltype="sched"&gt;
   &lt;leg:levelbody&gt;
    &lt;leg:level&gt;
     &lt;leg:level-vrnt leveltype="prov1"&gt;
      &lt;leg:levelbody&gt;
       &lt;!-- ETC. --&gt;
       &lt;leg:comntry searchtype="ANNOTATIONS"&gt;
        &lt;level leveltype="comm30"&gt;
         &lt;bodytext&gt;
          &lt;heading searchtype="ANNOTATIONS"&gt;
           &lt;title&gt;&lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;&lt;/title&gt;
          &lt;/heading&gt;
         &lt;/bodytext&gt;
         &lt;level leveltype="comm32"&gt;
          &lt;heading searchtype="ANNOTATIONS"&gt;
           &lt;title&gt;&lt;emph typestyle="bf"&gt;Amendment&lt;/emph&gt;&lt;/title&gt;
          &lt;/heading&gt;
          &lt;bodytext&gt;
           &lt;!-- ETC. --&gt;
          &lt;/bodytext&gt;
         &lt;/level&gt;
        &lt;/level&gt;
       &lt;/leg:comntry&gt;
      &lt;/leg:levelbody&gt;
     &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
   &lt;/leg:levelbody&gt;
  &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;
&lt;/leg:body&gt;

    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.comntry-source1.dita  -->
	<xsl:message>UK06_LawsActsBillsMeasures-leg.comntry-source1.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:comntry">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>