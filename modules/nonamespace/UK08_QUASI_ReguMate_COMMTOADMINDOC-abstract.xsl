<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK08_QUASI_ReguMate_COMMTOADMINDOC-abstract">
   <title>levelprelim/abstract <lnpid>id-UK08CA-28607</lnpid></title>
   <body>
      <section>
         <p><sourcexml>levelprelim/abstract</sourcexml> <b>Becomes</b> <targetxml>admindoc:prelim/abstract/bodytext</targetxml>.
            And populated as below:
         </p>
      </section>
   </body>
	</dita:topic>

	<xsl:template match="levelprelim/abstract">

		<!--  Original Target XPath:  admindoc:prelim/abstract/bodytext   -->
		<admindoc:prelim>
			<abstract>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</abstract>
		</admindoc:prelim>

	</xsl:template>

</xsl:stylesheet>