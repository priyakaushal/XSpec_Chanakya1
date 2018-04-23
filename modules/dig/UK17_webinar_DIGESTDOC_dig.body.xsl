<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK17_webinar_DIGESTDOC_dig.body">
    <title>dig:body <lnpid>id-UK17-36215</lnpid></title>

    <body>
	
        <p><sourcexml>dig:body</sourcexml> becomes <targetxml>seclaw:body</targetxml>.</p>
	
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;DIGESTDOC&gt;
    ...
    &lt;dig:body&gt;
        ...
    &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:seclaw&gt;
    ...
    &lt;seclaw:body&gt;
        ...
    &lt;/seclaw:body&gt;
    ...
&lt;/seclaw:seclaw&gt;

           </codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2015-08-20: Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-Webinar\UK17_webinar_DIGESTDOC_dig.body.dita  -->

	<xsl:template match="dig:body">
		<seclaw:body>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:body>
	</xsl:template>

</xsl:stylesheet>