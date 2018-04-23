<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:const="http://www.lexisnexis.com/xmlschemas/content/legal/constitution/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN03_Rosetta_leg.officialnum">
    <title>leg:officialnum <lnpid>id-IN03-15818</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:officialnum</sourcexml> becomes
                    <targetxml>const:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier/@idtype="officialnum"</targetxml>.</p>
                    <pre>&lt;leg:info&gt;
    &lt;leg:officialnum ln.user-displayed="false" searchtype="LEGISLATION"&gt;
        &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;1950&lt;/leg:year&gt;
    &lt;/leg:officialnum&gt;
    ...
&lt;/leg:info&gt;

<b>becomes</b>

&lt;const:body&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;primlawinfo:identifier idtype="officialnum"&gt;
                    &lt;primlawinfo:identifier-component type="year"
                        &gt;1950&lt;/primlawinfo:identifier-component&gt;
                &lt;/primlawinfo:identifier&gt;
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlaw:levelinfo&gt;
    &lt;/primlaw:level&gt;
&lt;/const:body&gt;</pre>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN03-Constitutions\IN03_Rosetta_leg.officialnum.dita  -->
	<xsl:message>IN03_Rosetta_leg.officialnum.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:officialnum">

		<!--  Original Target XPath:  const:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier/@idtype="officialnum"   -->
		<const:body>
			<primlaw:level xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
				<primlaw:levelinfo>
					<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
						<primlawinfo:identifier>
							<xsl:attribute name="idtype">
								<xsl:text>officialnum</xsl:text>
							</xsl:attribute>
						</primlawinfo:identifier>
					</primlawinfo:primlawinfo>
				</primlaw:levelinfo>
			</primlaw:level>
		</const:body>

	</xsl:template>

</xsl:stylesheet>