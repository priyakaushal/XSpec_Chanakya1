<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum">
  <title>leg:officialnum <lnpid>id-MX04-33618</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:officialnum</sourcexml> becomes
                    <targetxml>regulation:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier</targetxml>
                with required attribute <targetxml>@idtype="officialnum"</targetxml>.</p>
        <p>The value of attribute <sourcexml>@display-name</sourcexml> will be a part of
                    <targetxml>primlawinfo:identifier</targetxml> element.</p>
    <pre>
&lt;leg:body&gt;
    &lt;leg:info&gt;
        ...
        &lt;leg:officialnum display-name="Nombre corto:"&gt;02041306&lt;/leg:officialnum&gt;
    &lt;/leg:info&gt;
&lt;/leg:body&gt;

<b>becomes</b>

&lt;regulation:body&gt;
    &lt;primlaw:level xml:id="02042306.UNC.1" leveltype="unclassified"&gt;
        &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                ...
                &lt;primlawinfo:identifier idtype="officialnum"&gt;Nombre corto: 02041306&lt;/primlawinfo:identifier&gt;
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlaw:levelinfo&gt;
    &lt;/primlaw:level&gt;
&lt;/regulation:body&gt;
    </pre>
		</section>
        <section>
            <title>Changes</title>
            <p>2014-10-13: Created.</p>
        </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX04-Regulations\leg.officialnum.dita  -->
	<xsl:message>MX04-Regulations_leg.officialnum.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:officialnum">

		<!--  Original Target XPath:  regulation:body/primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:identifier   -->
		<regulation:body>
			<primlaw:level xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/">
				<primlaw:levelinfo>
					<primlawinfo:primlawinfo>
						<primlawinfo:identifier>
							<xsl:apply-templates select="@* | node()"/>
						</primlawinfo:identifier>
					</primlawinfo:primlawinfo>
				</primlaw:levelinfo>
			</primlaw:level>
		</regulation:body>

	</xsl:template>

	<xsl:template match="@display-name">

		<!--  Original Target XPath:  primlawinfo:identifier   -->
		<primlawinfo:identifier>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:identifier>

	</xsl:template>

</xsl:stylesheet>