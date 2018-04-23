<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.body">
  <title>Body <lnpid>id-ST04-26807</lnpid></title>
  <body>
    <section>

<p>All of the following are descendants of <targetxml>regulation:body</targetxml>. Handle in document order unless specifically stated otherwise.
Refer to General Markup Section for handling of children (including mixed content).</p>

<p><b>regulation:body</b></p>

<p><sourcexml>leg:body</sourcexml> becomes <targetxml>regulation:body</targetxml> and child elements as described below:</p>
      
    </section>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\Body.dita  -->
	<xsl:message>Regulation_Body.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  regulation:body   -->
		<regulation:body>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:body>

	</xsl:template>

</xsl:stylesheet>