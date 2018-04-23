<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulatory-Material-Body">
  <title>Body <lnpid>id-AU15-20818</lnpid></title>
  <shortdesc>All of the following are descendants of <targetxml>admindoc:body</targetxml>. Handle in document
    order unless specifically stated otherwise. Refer to General Markup Section for handling of children
    (including mixed content).</shortdesc>
  <body>
       <p><sourcexml>leg:body</sourcexml> <b>Becomes</b> <targetxml>admindoc:body</targetxml>.</p>
  </body>
	</dita:topic>

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  admindoc:body   -->
		<admindoc:body>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:body>

	</xsl:template>

</xsl:stylesheet>