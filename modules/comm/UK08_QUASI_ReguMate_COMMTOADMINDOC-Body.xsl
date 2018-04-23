<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:op="http://www.lexis-nexis.com/glp/op"	
	
	xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1"
	version="2.0" exclude-result-prefixes="dita comm op">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08_QUASI_ReguMate_COMMTOADMINDOC-Body">
		<title>Body <lnpid>id-UK08CA-28608</lnpid></title>
		<shortdesc>All of the following are descendants of
				<targetxml>admindoc:body</targetxml>. Handle in document order unless
			specifically stated otherwise. Refer to General Markup Section for
			handling of children (including mixed content).</shortdesc>
		<body>
			<p><sourcexml>comm:body</sourcexml>
				<b>Becomes</b>
				<targetxml>admindoc:body</targetxml>.</p>


		</body>
	</dita:topic>


	<xsl:template match="comm:body">
		<!--  Original Target XPath:  admindoc:body   -->
		<admindoc:body>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:body>
	</xsl:template>

	<xsl:template match="op:body">
		<xsl:apply-templates/>
	</xsl:template>

</xsl:stylesheet>