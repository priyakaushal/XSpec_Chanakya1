<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.num">
    <title>leg:num <lnpid>id-AR01-34419</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:num</sourcexml> becomes
                    <targetxml>legis:body/primlawinfo:primlawinfo/classify:classification[@classscheme="legislation.indicator"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</p>
            <pre>

&lt;leg:num ln.user-displayed="false"&gt; L. 17562 &lt;/leg:num&gt;

     
<b>becomes</b>


&lt;primlawinfo:primlawinfo&gt;
    &lt;classify:classification classscheme="legislation.indicator"&gt;
        &lt;classify:classitem&gt;
            &lt;classify:classitem-identifier&gt;
                &lt;classify:classname&gt; L. 17562 &lt;/classify:classname&gt;
            &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
&lt;/primlawinfo:primlawinfo&gt;

	</pre>
        </section>
        <section>
            <title>Changes</title>
            <p>2014-12-05: <ph id="change_20141205_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR01-Legislation\leg.num.dita  -->
	<xsl:message>AR01-Legislation_leg.num.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:num">

		<!--  Original Target XPath:  legis:body/primlawinfo:primlawinfo/classify:classification[@classscheme="legislation.indicator"]/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<legis:body>
			<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
				<classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
					<classify:classitem>
						<classify:classitem-identifier>
							<classify:classname>
								<xsl:apply-templates select="@* | node()"/>
							</classify:classname>
						</classify:classitem-identifier>
					</classify:classitem>
				</classify:classification>
			</primlawinfo:primlawinfo>
		</legis:body>

	</xsl:template>

</xsl:stylesheet>