<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita">
	
	<dita:topic
		id="Rosetta_refpt_isChildOf_leg.level_leg.level-vrnt_leg.heading_edpnum-to-LexisAdvance_admindoc.level_ref.anchor"
		xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/">
		<title><sourcexml>refpt</sourcexml> child of
			<sourcexml>leg:level/leg:level-vrnt/leg:heading/edpnum</sourcexml> to <targetxml>admindoc:level/ref:anchor</targetxml> <lnpid>id-CCCC-10446</lnpid></title>
		<body>
			<section>
				<p>If <sourcexml>refpt</sourcexml> occurs under
					<sourcexml>leg:level/leg:level-vrnt/leg:heading/edpnum</sourcexml> then
					<targetxml>ref:anchor</targetxml> will become the first child of
					<targetxml>admindoc:level</targetxml>.</p>
			</section>
			<example>
				<title>Source XML</title>
				<codeblock>
					<![CDATA[

]]>
				</codeblock>
			</example>
			<example>
				<title>Target XML</title>
				<codeblock>
					<![CDATA[

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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_refpt-Chof-leg.level_leg.level-vrnt_leg.heading_edpnum-LxAdv-admindoc.level_ref.anchor.dita  -->
<!--	<xsl:message>Requires manual development!</xsl:message> 
-->	<!--
		**********************************
		Paul: this will need to be implemented in your leg:level template
		in AU08 implemented in courtrule_body.xsl
		**********************************
-->	</xsl:stylesheet>
