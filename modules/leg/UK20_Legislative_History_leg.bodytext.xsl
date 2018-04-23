<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/">
        <title>leg:bodytext</title>
        <body>
            <section>
                <ul>
                    <li><sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.</li>
                </ul>
            </section>
            
            <example>
                <title>Source XML 1:</title>
                <codeblock>
                    
                    ...
                    
                    <b>Becomes</b>
                    
                    ...
                    
                </codeblock>
            </example>
        </body>
    </dita:topic>

    <!-- 20170426:  MCJ:  Manually created module. -->
    
	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>