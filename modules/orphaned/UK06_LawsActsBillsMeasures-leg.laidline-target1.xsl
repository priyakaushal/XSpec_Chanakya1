<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.laidline-target1">
  <title>Target XML 1 : <sourcexml>leg:laidline</sourcexml> has only PCDATA</title>
  <body>
    <codeblock>

&lt;legis:head&gt;
 &lt;primlawinfo:primlawinfo&gt;
  &lt;!-- ETC. --&gt;
  &lt;primlawinfo:dates&gt;
   &lt;primlawinfo:presenteddate&gt;Laid before Parliament *** 2007&lt;/primlawinfo:presenteddate&gt;
  &lt;/primlawinfo:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
 &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;

    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.laidline-target1.dita  -->
	<xsl:message>UK06_LawsActsBillsMeasures-leg.laidline-target1.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:laidline">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>