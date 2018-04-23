<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/">
        <title>leg:level</title>
        <body>
            <section>
                <ul>
                    <li><sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>.</li>
                </ul>
            </section>
        
            <example>
                <title>Source XML 1 : For <sourcexml>leg:level</sourcexml> to <targetxml>primlaw:level</targetxml></title>
                <codeblock>

                    ...
                 
                    <b>Becomes</b>
           
                    ...

                 </codeblock>
            </example>
        </body>
	</dita:topic>

    <!-- 20170426:  MCJ:  Manually created module. -->

    <!-- leg:level is a passthrough element because it is the leg:level-vrnt that turns into primlaw:level. -->
	<xsl:template match="leg:level">
    	<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
    
</xsl:stylesheet>