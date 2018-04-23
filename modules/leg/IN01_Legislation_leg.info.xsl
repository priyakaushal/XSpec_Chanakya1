<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info">
  <title>leg:info <lnpid>id-IN01-15417</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info</sourcexml> becomes
          <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo</targetxml> and create
        attribute <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>.The mappings for
        the children of <targetxml>leg:info</targetxml> are discussed as separate topics.</p>
      
    </section>  
    <note>Conversion should not create adjacent
      <targetxml>primlaw:levelinfo</targetxml>. Data should be merged to
      single <targetxml>primlaw:levelinfo</targetxml>.</note><note>Conversion
        should not create adjacent
        <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be
        merged to single <targetxml>primlawinfo:primlawinfo</targetxml>.
      </note>

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN01_Legislation\leg.info.dita  -->
	<xsl:message>IN01_Legislation_leg.info.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo   -->
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>