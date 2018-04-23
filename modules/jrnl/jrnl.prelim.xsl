<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"  xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="jrnl.prelim">
  <title>jrnl:prelim <lnpid>id-MY02-16220</lnpid></title>

  <body>
    <p><sourcexml>jrnl:prelim</sourcexml> is a container element and will be omitted from conversion.</p>      
  </body>    
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY02_Journals\jrnl.prelim.dita  -->
<!--	<xsl:message>jrnl.prelim.xsl requires manual development!</xsl:message> -->

	<xsl:template match="jrnl:prelim">
		<nitf:body.head>
			<xsl:apply-templates select="@* | node()"/>
		</nitf:body.head>
	</xsl:template>
	
	<xsl:template match="jrnl:prelim/heading/@searchtype"/>
	<!-- MY02-Articles heading handling -->
	<xsl:template match="heading[parent::jrnl:prelim]">
		<nitf:hedline>
			<nitf:hl1>
				<xsl:apply-templates/>
			</nitf:hl1>
		</nitf:hedline>
	</xsl:template>
	
	

</xsl:stylesheet>