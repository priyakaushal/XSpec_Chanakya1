<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/"
						xmlns:cm="urn:x-lexisnexis:configuration-management:1"
						xmlns:map="http://docs.oasis-open.org/dita/v1.1/OS/dtd/"
						exclude-result-prefixes="dita cm xs">

	<xsl:output method="xml" exclude-result-prefixes="#all" encoding="UTF-8" indent="yes"/>

	<xsl:template match="map">
		<xsl:element name="xsl:stylesheet">
			<xsl:attribute name="version" select="'2.0'"/>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="topicref">
		<xsl:for-each select="document(@href)">
			<xsl:apply-templates select="topic/body/xsltinclusion"/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="xsltinclusion">
		<xsl:apply-templates select="xsl:stylesheet/*"/>
	</xsl:template>

	<!-- Suppressed elements -->
	<xsl:template match="title | topicmeta | prodinfo"/>

	<!-- IdentityTransform -->
	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>
