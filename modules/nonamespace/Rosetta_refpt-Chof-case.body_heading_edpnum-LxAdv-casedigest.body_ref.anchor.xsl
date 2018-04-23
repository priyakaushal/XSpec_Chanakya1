<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic
		id="Rosetta_refpt_isChildOf_case.body_heading_edpnum-to-LexisAdvance_casedigest.body_ref.anchor"
		xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/">
		<title><sourcexml>refpt</sourcexml> child of <sourcexml>case:body/heading/edpnum</sourcexml>
			to <targetxml>casedigest:body/ref:anchor</targetxml>
			<lnpid>id-CCCC-10441</lnpid></title>
		<body>
			<section>
				<p>If <sourcexml>refpt</sourcexml> is a child of
						<sourcexml>case:body/heading/edpnum</sourcexml> then
						<targetxml>ref:anchor</targetxml> will become the first child of
						<targetxml>casedigest:body</targetxml>.</p>
			</section>
			<example>
				<title>Source XML</title>
				<codeblock>
					<![CDATA[
<case:body>
	<heading searchtype="PRACTICE-NOTE">
		<edpnum>
			<refpt type="ext" id="LV.DC.CS6"/>[200,006]
		</edpnum>
	</heading>
  ...
]]>
				</codeblock>
			</example>
			<example>
				<title>Target XML</title>
				<codeblock>
					<![CDATA[
<casedigest:body>
	<ref:anchor id="LV.DC.CS6" anchortype="global"/>
		<heading>
			<desig>[200,006]</desig>
		</heading>
  ...
  ]]>
				</codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2012-08-30: Created. </p>
			</section>
		</body>
	</dita:topic>


	<!--  @@@ This file failed auto-generation and a stub was built manually.  However, requires manual development. Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_refpt-Chof-case.body_heading_edpnum-LxAdv-casedigest.body_ref.anchor.dita  -->
	<!--<xsl:message>Requires manual development!</xsl:message>-->


</xsl:stylesheet>
