<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	version="2.0" exclude-result-prefixes="dita ci docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08_OPDOC_Regulation-docinfo-normcite">
		<title>docinfo:normcite <lnpid>id-UK08OR-28818</lnpid></title>
		<body>
			<section>
				<p><sourcexml>docinfo:normcite/ci:cite/ci:content</sourcexml> becomes
						<targetxml>ref:citations/ref:cite4thisresource[@citetype]/ref:nonciteidentifier/[@normprotocol]</targetxml>.
					Attributes value should be set to: <ul>
						<li><targetxml>ref:cite4thisresource[@citetype="normcite"]</targetxml></li>
						<li><targetxml>ref:nonciteidentifier[@normprotocol"unspecified"]</targetxml></li>
					</ul>
					<note>If <sourcexml>ci:cite</sourcexml> occurred without
							<sourcexml>@type</sourcexml> within
							<sourcexml>docinfo:normcite</sourcexml> then it is data error and
						conversion needs to follow same instruction as given above. </note>
					And populated as below:</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2016-01-06 <ph id="change_20160106_AB">Created. RFA #2671</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-docinfo-normcite.dita  -->

	<!-- JD: don't create ref:citations if there is an empty <ci:content/> -->
	<xsl:template match="docinfo:normcite/ci:cite/ci:content[normalize-space(.)!='']" mode="ref.citations">
		<!--  Original Target XPath:  ref:citations/ref:cite4thisresource[@citetype]/ref:nonciteidentifier/[@normprotocol]   -->
		<ref:citations>
			<ref:cite4thisresource citetype="normcite">
				<ref:nonciteidentifier normprotocol="unspecified">
					<xsl:apply-templates select="@* | node()"/>
				</ref:nonciteidentifier>
			</ref:cite4thisresource>
		</ref:citations>
	</xsl:template>

</xsl:stylesheet>
