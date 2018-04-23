<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0"
	exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ-Regs-Services-leg_body">
		<title>leg:body <lnpid>id-NZ10-24409</lnpid></title>
		<shortdesc>All of the following are descendants of <targetxml>regulation:body</targetxml>.
			Handle in document order unless specifically stated otherwise. Refer to General Markup
			Section for handling of children (including mixed content).</shortdesc>
		<body>
			<section>
				<p><sourcexml>leg:body</sourcexml>
					<b>Becomes</b>
					<targetxml>regulation:body</targetxml> is created and children elements are
					listed below:</p>
				<p><targetxml>leg:info</targetxml>, <targetxml>leg:officialname</targetxml>,
						<targetxml>leg:officialnum</targetxml>, <targetxml>leg:year</targetxml>,
						<targetxml>leg:level</targetxml>, <targetxml>leg:level-vrnt</targetxml>,
						<targetxml>leg:heading</targetxml>, <targetxml>leg:levelstatus</targetxml>,
						<targetxml>leg:levelinfo</targetxml>, <targetxml>leg:levelbody</targetxml>,
						<targetxml>leg:bodytext</targetxml>, <targetxml>leg:empleg</targetxml> and
						<targetxml>bodytext</targetxml>.</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ10_Regulation_From_Services\NZ-Regs-Services-leg_body.dita  -->
	<!--<xsl:message>NZ-Regs-Services-leg_body.xsl requires manual development!</xsl:message>-->

	<xsl:template match="leg:body" priority="5">
		<!--  Original Target XPath:  regulation:body   -->		
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

</xsl:stylesheet>