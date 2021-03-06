<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.status">
    <title>leg:status <lnpid>id-UK07-28225</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:status</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml>, and populated as below:</p>
            <pre>

&lt;leg:info&gt;
    ........
    ........
    &lt;leg:status&gt;&lt;nl/&gt;At the Court at Buckingham Palace, the 28th day of November, 1910&lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;PRESENT,&lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;The King's Most Excellent Majesty in Council&lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;The following Draft Proclamation was this day read at the Board and approved.&lt;/leg:status&gt;
    &lt;leg:status&gt;
        &lt;nl/&gt;&lt;emph typestyle="it"&gt;Almeric FitzRoy&lt;/emph&gt;
    &lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;BY THE KING&lt;/leg:status&gt;
    &lt;leg:status&gt;&lt;nl/&gt;A Proclamation determining New Designs for Gold and Bronze Coins&lt;/leg:status&gt;
&lt;/leg:info&gt;


<b>Becomes</b>


&lt;regulation:head&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;legisinfo:legisinfo&gt;
            &lt;legisinfo:statusgroup&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;At the Court at Buckingham Palace, the 28th day of November,
                        1910&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;PRESENT,&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;The King's Most Excellent Majesty in Council&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;The following Draft Proclamation was this day read at the Board and
                        approved.&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;&lt;emph typestyle="it"&gt;Almeric FitzRoy&lt;/emph&gt;&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;BY THE KING&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
                &lt;legisinfo:status&gt;
                    &lt;legisinfo:statustext&gt;&lt;proc:nl/&gt;A Proclamation determining New Designs for Gold and Bronze
                        Coins&lt;/legisinfo:statustext&gt;
                &lt;/legisinfo:status&gt;
            &lt;/legisinfo:statusgroup&gt;
        &lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/regulation:head&gt;

            </pre>
            <note>Multiple occurences of <sourcexml>leg:status</sourcexml> element will be captured within single instance of <targetxml>legisinfo:statusgroup</targetxml> during conversion.</note>
        </section>    
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.status.dita  -->

	<xsl:template match="leg:status">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext   -->
		
					<legisinfo:statusgroup>
						<legisinfo:status>
							<legisinfo:statustext>
								<xsl:apply-templates select="@* | node()"/>
							</legisinfo:statustext>
						</legisinfo:status>
					</legisinfo:statusgroup>

	</xsl:template>

</xsl:stylesheet>