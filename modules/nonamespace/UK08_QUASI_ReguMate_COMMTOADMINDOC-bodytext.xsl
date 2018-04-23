<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK08_QUASI_ReguMate_COMMTOADMINDOC-bodytext">
   <title>bodytext <lnpid>id-UK08CA-28609</lnpid></title>
   <body>
      <section>
         <p><sourcexml>bodytext</sourcexml> <b>Becomes</b> <targetxml>admindoc:bodytext</targetxml>. And populated as below:
         </p>
      </section>
   </body>
	</dita:topic>


	<xsl:template match="bodytext[parent::level]">

		<!--  Original Target XPath:  admindoc:bodytext   -->
		<admindoc:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:bodytext>

	</xsl:template>

</xsl:stylesheet>