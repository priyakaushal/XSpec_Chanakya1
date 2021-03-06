<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="ST11_Commentary_publication-target">
  <title>Target XML</title>
  <body>
    <codeblock>

&lt;doc:metadata&gt;
 &lt;pubinfo:pubinfo&gt;
  &lt;pubinfo:publicationname&gt;DIVISION I A Note on the Format&lt;/pubinfo:publicationname&gt;
 &lt;/pubinfo:pubinfo&gt;
 &lt;!-- ETC. --&gt;
&lt;/doc:metadata&gt;

    </codeblock>
   <note><sourcexml>comm:info</sourcexml> omit in NewLexis conversion.</note>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Seclaw\ST11_Commentary_publication-target.dita  -->
	<xsl:message>ST11_Commentary_publication-target.xsl requires manual development!</xsl:message> 

	<xsl:template match="comm:info">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>