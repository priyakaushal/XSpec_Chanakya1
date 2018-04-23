<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="usm_landingpgs-docinfo.selector">
  <title><sourcexml>docinfo:selector</sourcexml> suppressed <lnpid>id-MY08-17627</lnpid></title>
  <body>
    <p>The element <sourcexml>docinfo:selector</sourcexml> is entirely suppressed and
      not output to the target document. This includes the start-tag, end-tag, and its CDATA content.</p>
    <note>The usual target of <sourcexml>docinfo:selector</sourcexml> is <targetxml>classify:classification[@classscheme="selector"]/ classify:classitem/classify:classitem-identifier/classify:classname</targetxml>, but for this stream the target will be created without reference to the contents of <sourcexml>docinfo:selector</sourcexml>. Please see <xref href="classify.classification_classscheme_selector.dita"/> for details.</note>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY08_navaid\docinfo.selector.dita  -->
	<xsl:message>docinfo.selector.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:selector">

		<!--  Original Target XPath:  classify:classification[@classscheme="selector"]/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classification>
			<classify:classitem>
				<classify:classitem-identifier>
					<classify:classname>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classname>
				</classify:classitem-identifier>
			</classify:classitem>
		</classify:classification>

	</xsl:template>

</xsl:stylesheet>