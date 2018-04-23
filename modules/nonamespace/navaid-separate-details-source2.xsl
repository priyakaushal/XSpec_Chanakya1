<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-separate-entry-source">
          <title>Source XML showing conversion from <sourcexml>entry</sourcexml> to
			<targetxml>navaid:list/index:entry</targetxml></title>
          <body>
<codeblock>

	&lt;entry colsep="0" rowsep="0"&gt;
		&lt;remotelink refpt="ASMADE-REGS-ARCHIVE-A" dpsi="02IO" remotekey1="REFPTID" docidref="EXAMPLE_DOCID"
			service="DOC-ID"&gt;A&lt;/remotelink&gt;
	&lt;/entry&gt;
            
</codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-separate-details-source2.dita  -->
	<!--<xsl:message>navaid-separate-details-source2.xsl requires manual development!</xsl:message> -->

<!--	<xsl:template match="entry">

		<!-\-  Original Target XPath:  navaid:list/index:entry   -\->
		<navaid:list>
			<index:entry xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1">
				<xsl:apply-templates select="@* | node()"/>
			</index:entry>
		</navaid:list>

	</xsl:template>-->

</xsl:stylesheet>