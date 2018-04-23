<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="ST11_Commentary_body">
  <title>Body <lnpid>id-ST11-37807</lnpid></title>
  <shortdesc>All of the following are descendants of <targetxml>seclaw:body</targetxml>. Handle in document order unless specifically stated otherwise. Refer to General Markup Section for handling of children (including mixed content).</shortdesc>
  <body>
    <section>
      <title>seclaw:body</title>
        <p><sourcexml>/comm:body</sourcexml> becomes <targetxml>/seclaw:body</targetxml> is created and children as described below:</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Seclaw\ST11_Commentary_Body.dita  -->
	<xsl:message>ST11_Commentary_Body.xsl requires manual development!</xsl:message> 

	<xsl:template match="/comm:body">

		<!--  Original Target XPath:  /seclaw:body   -->
		<seclaw:body>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:body>

	</xsl:template>

</xsl:stylesheet>