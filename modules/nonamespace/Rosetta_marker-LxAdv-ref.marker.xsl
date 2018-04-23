<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_marker-to-LexisAdvance_ref.marker">
  <title><sourcexml>marker</sourcexml> to <targetxml>ref:marker</targetxml> <lnpid>id-CCCC-10399</lnpid></title>
  <body>
    <section>
      <p><sourcexml>marker</sourcexml> becomes <targetxml>ref:marker</targetxml>.</p>
    </section>
    <section>
      <title>Changes</title>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_marker-LxAdv-ref.marker.dita  -->

	<xsl:template match="marker">
		<ref:marker>
			<xsl:apply-templates select="@* | node()"/>
		</ref:marker>

	</xsl:template>

</xsl:stylesheet>