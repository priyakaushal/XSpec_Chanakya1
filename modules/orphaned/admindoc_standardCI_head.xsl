<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc_standardCI_head">
  <title>Head <lnpid>id-ST08-31610</lnpid></title>
  <body>
    <section>
      <p><targetxml>admindoc:admindoc/admindoc:head</targetxml> is created as described in the
        Introduction. The data described below occur within <sourcexml>leg:body/leg:info</sourcexml>
        and convert within <targetxml>admindoc:head</targetxml>. If no data are present then
        converted file will contain empty <targetxml>admindoc:head</targetxml>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Admindoc\admindoc_standardCI_head.dita  -->
	<xsl:message>admindoc_standardCI_head.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:body/leg:info">

		<!--  Original Target XPath:  admindoc:head   -->
		<admindoc:head>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:head>

	</xsl:template>

</xsl:stylesheet>