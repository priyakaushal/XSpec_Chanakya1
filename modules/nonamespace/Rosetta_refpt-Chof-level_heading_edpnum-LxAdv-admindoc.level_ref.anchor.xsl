<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_refpt_isChildOf_level_heading_edpnum-to-LexisAdvance_admindoc.level_ref.anchor">
		<title><sourcexml>refpt</sourcexml> child of <sourcexml>level/heading/edpnum</sourcexml> to
				<targetxml>admindoc:level/ref:anchor</targetxml>
			<lnpid>id-CCCC-10453</lnpid></title>
		<body>
			<section>
				<p>If <sourcexml>refpt</sourcexml> occurs under
						<sourcexml>level/heading/edpnum</sourcexml> then
						<targetxml>ref:anchor</targetxml> will become the first child of
						<targetxml>admindoc:level</targetxml>.</p>
			</section>
			<example>
				<title>Source XML</title>
				<codeblock> </codeblock>
			</example>
			<example>
				<title>Target XML</title>
				<codeblock> </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2012-08-30: Created. </p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_refpt-Chof-level_heading_edpnum-LxAdv-admindoc.level_ref.anchor.dita  -->
	<!-- <xsl:message>Rosetta_refpt-Chof-level_heading_edpnum-LxAdv-admindoc.level_ref.anchor.xsl
		requires manual development!</xsl:message> -->

    <!-- 20170512:  MCJ:  This is a do nothing module as it is unlikely that the instructions can be implemented
    	                  on their own... it is more likely that the handling of level/heading/epdnum to admindoc:level/ref:anchor
    	                  will occur elsewhere. -->

</xsl:stylesheet>
