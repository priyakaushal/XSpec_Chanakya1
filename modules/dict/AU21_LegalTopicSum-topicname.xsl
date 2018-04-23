<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita source_dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_dict.topicname">
    <title><sourcexml>dict:topicname</sourcexml> to <targetxml>tei:usg</targetxml> <lnpid>id-AU21-22415</lnpid></title>
    <body>
        <section>
            <p>The element <sourcexml>dict:topicname</sourcexml> becomes
                    <targetxml>tei:usg</targetxml>. Set <targetxml>tei:usg[@type]</targetxml> to the
                text from <sourcexml>dict:topicname</sourcexml> (converted to lower-case with spaces
                removed).</p>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>

  &lt;dict:topicname&gt;&lt;emph typestyle="bf"&gt;Narrative definition&lt;/emph&gt;&lt;/dict:topicname&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>

&lt;tei:usg type="narrativedefinition"&gt;&lt;emph typestyle="bf"&gt;Narrative defintion&lt;/emph&gt;&lt;/tei:usg&gt;

	</codeblock>
            
        </example>
        <section>
            <title>Changes</title>
            <p>2013-04-03: <ph id="change_20130403_wl">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<xsl:template match="source_dict:topicname">
		<!--  Original Target XPath:  tei:usg   -->
		<tei:usg>
		    <xsl:attribute name="type">
		        <xsl:value-of select="translate(lower-case(.), ' ', '')"/>
		    </xsl:attribute>
			<xsl:apply-templates select="@* | node()"/>
		</tei:usg>
	</xsl:template>

</xsl:stylesheet>