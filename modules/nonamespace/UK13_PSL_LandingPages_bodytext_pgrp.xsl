<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
	exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="psl_landingpgs-pods_bodytext_pgrp">
		<title>POD <sourcexml>bodytext/pgrp</sourcexml>
			<lnpid>id-UK13-30014</lnpid></title>
		<body>
			<p>The element <sourcexml>bodytext</sourcexml> and its child element
					<sourcexml>pgrp</sourcexml> are both container elements, their start-tags and
				end-tags (but not their content) are dropped and the child elements of
					<sourcexml>pgrp</sourcexml> are converted as described in the following
				subtopics. </p>
			<section>
				<title>Changes</title>
				<p>2015-03-07: <ph id="change_20150307_JCG">Instructions changed,
							<sourcexml>bodytext/pgrp</sourcexml> are now treated as container
						elements and not used in any other way. Also, the special handing of the
						attribute <sourcexml>remotelink/@relationship</sourcexml> has been removed
						because this attribute is no longer used, its functionality replaced by
							<sourcexml>level/levelinfo/services/service/api-params/param[@name="content-type-digest-order"]</sourcexml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\pods_bodytext_pgrp.dita  -->
	<!--<xsl:message>pods_bodytext_pgrp.xsl requires manual development!</xsl:message> -->

	<xsl:template match="bodytext">
		<!--  Original Target XPath:     -->
		<seclaw:subjectmatterreference>			
			<xsl:apply-templates select = "pgrp"/>
			<xsl:apply-templates select="preceding-sibling::levelinfo" mode= "update_date"/>
		</seclaw:subjectmatterreference>

	</xsl:template>

	<xsl:template match="pgrp">
		<!-- BRT 12/13/17: commented out and revised to fix issue with ordering -->
		<!--  Original Target XPath:     -->
		<!--xsl:if test="child::p/text/text()[1]!=''">
			<seclaw:subjectmattertext>
				<xsl:value-of select="child::p/text/text()[1]"/>
			</seclaw:subjectmattertext>
		</xsl:if>
		<xsl:if test="child::p/text/ci:cite">
			<xsl:apply-templates select="child::p/text/ci:cite"/>
		</xsl:if>
		<xsl:if test="child::p/text/remotelink">
			<xsl:apply-templates select="child::p/text/remotelink"/>
		</xsl:if>
		<xsl:if test="child::p/text/lnlink">
			<xsl:apply-templates select="child::p/text/lnlink"/>
		</xsl:if>
		<xsl:if test="child::p/text/text()[2]!=''">
			<seclaw:subjectmattertext>
				<xsl:value-of select="child::p/text/text()[2]"/>
			</seclaw:subjectmattertext>
		</xsl:if-->
		<xsl:for-each select="child::p/text/* | child::p/text/text()">
			<xsl:choose>
				<xsl:when test="self::text()!=''">
					<seclaw:subjectmattertext>
						<xsl:value-of select="."/>
					</seclaw:subjectmattertext>
				</xsl:when>
				<xsl:otherwise><xsl:apply-templates select="self::*"/></xsl:otherwise>
			</xsl:choose>
			
		</xsl:for-each>
	</xsl:template>
	
	
	<xsl:template match="bodytext/pgrp/note[@notetype='summary']">
		<note notetype="summary">
			<bodytext>
				<xsl:apply-templates select = "child::p"/>
			</bodytext>
		</note>	
	</xsl:template>

</xsl:stylesheet>
