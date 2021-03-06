<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:const="http://www.lexisnexis.com/xmlschemas/content/legal/constitution/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN03_Rosetta_leg.info">
    <title>leg:info <lnpid>id-IN03-15813</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:info</sourcexml> becomes <targetxml>const:body/primlaw:level]/primlaw:levelinfo/primlawinfo:primlawinfo</targetxml> and create
                attribute <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>.The mappings for the children of <sourcexml>leg:info</sourcexml> are discussed as
                separate topics.</p>
            <note><p>Conversion should not create adjacent <targetxml>primlaw:levelinfo</targetxml>. Data should be merged to single
                <targetxml>primlaw:levelinfo</targetxml>.</p></note>
            
            <note><p>Conversion should not create adjacent <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be merged to single
                <targetxml>primlawinfo:primlawinfo</targetxml>.</p></note>
                    <pre>&lt;leg:info&gt;
    &lt;leg:officialname ln.user-displayed="false" searchtype="LEGISLATION"&gt;THE CONSTITUTION OF
        INDIA&lt;/leg:officialname&gt;
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
                &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:names&gt;
                        &lt;legisinfo:officialtitle&gt;THE CONSTITUTION OF
                            INDIA&lt;/legisinfo:officialtitle&gt;
                    &lt;/legisinfo:names&gt;
                &lt;/legisinfo:legisinfo&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN03-Constitutions\IN03_Rosetta_leg.info.dita  -->
	<xsl:message>IN03_Rosetta_leg.info.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  const:body/primlaw:level]/primlaw:levelinfo/primlawinfo:primlawinfo   -->
		<const:body>
			<!--  Could not determine target element or attribute name:  <primlaw:level]/primlaw:levelinfo/primlawinfo:primlawinfo>  -->
				<primlaw:levelinfo>
					<primlawinfo:primlawinfo>
						<xsl:apply-templates select="@* | node()"/>
					</primlawinfo:primlawinfo>
				</primlaw:levelinfo>
			<!--  Could not determine target element or attribute name:  </primlaw:level]/primlaw:levelinfo/primlawinfo:primlawinfo>  -->
		</const:body>

	</xsl:template>

</xsl:stylesheet>