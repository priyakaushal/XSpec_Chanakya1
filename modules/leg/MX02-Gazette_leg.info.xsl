<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info">
  <title>leg:info <lnpid>id-MX02-33814</lnpid></title>
  <body>
    <section>
            <p><sourcexml>leg:info</sourcexml> becomes
                    <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo</targetxml>
                and create attribute
                <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>.The mappings for the
                children of <targetxml>leg:info</targetxml> are discussed as separate
                    topics.</p>
</section>
        <example>
            <title>Source XML </title>
            <codeblock>

&lt;leg:body&gt;
    &lt;leg:info&gt;
        .......
        .......
    &lt;/leg:info&gt;
&lt;/leg:body&gt;

                 </codeblock>
           </example>
        <example>
            <title>Taregt XML </title>
            <codeblock>

&lt;legislaturerecord:body&gt;
 &lt;legislaturerecord:bodytext&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                    .......
                    .......
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlaw:levelinfo&gt;
    &lt;/primlaw:level&gt;
  &lt;legislaturerecord:bodytext&gt;
&lt;/legislaturerecord:body&gt;

                 </codeblock>
           </example>
      <section>
          <title>Changes</title>
          <p>2014-10-16: Created.</p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX02-Gazette\leg.info.dita  -->
	<xsl:message>MX02-Gazette_leg.info.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo   -->
		<primlaw:level>
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>