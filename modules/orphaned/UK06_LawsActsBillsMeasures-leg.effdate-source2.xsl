<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.effdate-source2">
  <title>Source XML 2 : Multiple <sourcexml>date</sourcexml> in <sourcexml>leg:effdate</sourcexml></title>
  <body>
    <codeblock>

&lt;leg:body&gt;
 &lt;leg:info subseqdoc="false"&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:dates&gt;
   &lt;leg:effdate&gt;Coming into 
    &lt;date day="16" month="02" year="2001"&gt;force&lt;/date&gt;
    &lt;date day="16" month="02" year="2001"&gt;     16th February 2001&lt;/date&gt;
   &lt;/leg:effdate&gt;
  &lt;/leg:dates&gt;
  &lt;!-- ETC. --&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.effdate-source2.dita  -->
	<xsl:message>UK06_LawsActsBillsMeasures-leg.effdate-source2.xsl requires manual development!</xsl:message> 

	<xsl:template match="date">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:effdate">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>