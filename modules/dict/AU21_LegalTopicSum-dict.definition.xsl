<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" 
    xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita source_dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_dict.definition">
    <title><sourcexml>dict:definition</sourcexml> to <targetxml>tei:def</targetxml> <lnpid>id-AU21-22408</lnpid></title>
    <body>
        <section>
            <p><sourcexml>dict:definition</sourcexml> becomes <targetxml>tei:def</targetxml>.</p>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>
        
        &lt;dict:term-entry&gt;
            &lt;defterm&gt;...&lt;/defterm&gt;
            &lt;dict:definition&gt;
                ...
            &lt;/dict:definition&gt;
        &lt;/dict:term-entry&gt;
        
	</codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>
    
    &lt;dict:defitem&gt;
            &lt;tei:entry&gt;
                &lt;tei:form&gt;
                    &lt;tei:orth&gt;...&lt;/tei:orth&gt;
                &lt;/tei:form&gt;
                &lt;tei:def&gt;
                    ...
                &lt;/tei:def&gt;
            &lt;/tei:entry&gt;
        &lt;/dict:defitem&gt;

	</codeblock>
            
        </example>
        <section>
            <title>Changes</title>
            <p>2013-04-03: <ph id="change_20130403_wl">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	

	<xsl:template match="source_dict:definition">
		<!--  Original Target XPath:  tei:def   -->
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

</xsl:stylesheet>