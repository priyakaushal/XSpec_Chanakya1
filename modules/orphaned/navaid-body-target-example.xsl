<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-body-target-example">
  <title>Target XML showing conversion from <sourcexml>in:body</sourcexml> to <targetxml>navaid:landingpagebody</targetxml></title>
  <body>
    <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;heading&gt;
    &lt;title&gt;Words and Phrases&lt;/title&gt;
  &lt;/heading&gt;
  ...
&lt;/navaid:landingpagebody&gt;
            
    </codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK18-Indexes\navaid-body-target-example.dita  -->
	<xsl:message>navaid-body-target-example.xsl requires manual development!</xsl:message> 

	<xsl:template match="in:body">

		<!--  Original Target XPath:  navaid:landingpagebody   -->
		<navaid:landingpagebody>
			<xsl:apply-templates select="@* | node()"/>
		</navaid:landingpagebody>

	</xsl:template>

</xsl:stylesheet>