<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_p_text_deflist-to-LexisAdvance_p_deflist">
    <title><sourcexml>p/text/deflist</sourcexml> to  <targetxml>p/deflist</targetxml> <lnpid>id-CCCC-10276</lnpid></title>
    <body>
        <section>
            <p>
                If the source XML has the scenario <sourcexml>p/text/deflist</sourcexml> then drop the text tag, i.e., <sourcexml>p/text/deflist</sourcexml> becomes <targetxml>p/deflist</targetxml>.
            </p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
    &lt;text&gt;
        &lt;deflist&gt;
            &lt;defitem&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;defterm&gt;&lt;emph typestyle="bf"&gt;Australian Standard 1885.1&lt;/emph&gt;&lt;/defterm&gt; means
                        Australian Standard 1885, being that standard as approved 20 March 1990 and published 11 
                        June 1990 entitled &amp;#x2018;Workplace injury and disease recording standard&amp;#x2019;.
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/defitem&gt;
        &lt;/deflist&gt;
    &lt;/text&gt;
&lt;/p&gt;

            </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;p&gt;
    &lt;deflist&gt;
        &lt;defitem&gt;
            &lt;defterm&gt;
                &lt;emph typestyle="bf"&gt;Australian Standard 1885.1&lt;/emph&gt;
            &lt;/defterm&gt;
            &lt;defdesc&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;means Australian Standard 1885, being that 
                            standard as approved 20 March 1990 and published 11 June 1990 entitled 
                            &amp;#x201C;Workplace injury and disease recording standard&amp;#x201D;.
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/defdesc&gt;
        &lt;/defitem&gt;
    &lt;/deflist&gt;
&lt;/p&gt;

            </codeblock>
        </example>
        <section>
        <p><b>Special Scenario:</b> If source document having
                "<sourcexml>p/text/deflist</sourcexml>" with running text which is comes before
                starting of <sourcexml>deflist</sourcexml> element and under
                    <sourcexml>text</sourcexml> markup then conversion should not drop
                    <targetxml>text</targetxml> markup in target and retain running text under
                    <targetxml>text</targetxml> and closing of text markup before
                    <targetxml>deflist</targetxml> in target document. Refer below source and target
                examples:</p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>
                
&lt;p&gt;
    &lt;text&gt;In these Rules&amp;#x2014;
        &lt;deflist&gt;
            &lt;defitem&gt;
                ...
            &lt;/defitem&gt;
        &lt;/deflist&gt;
    &lt;/text&gt;
&lt;/p&gt;


            </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>
                
&lt;p&gt;
    &lt;text&gt;In these Rules—&lt;/text&gt;
    &lt;deflist&gt;
        &lt;defitem&gt;
            …
        &lt;/defitem&gt;
    &lt;/deflist&gt;
&lt;/p&gt;

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-12-08: <ph id="change_20161208_SS">Added instruction to handle running text
                    which is comes before <sourcexml>deflist</sourcexml> and it comes under
                        <sourcexml>p/text</sourcexml>.</ph>
            </p>
        </section>
        
    </body>
	</dita:topic>


	<xsl:template match="text[child::deflist]" priority="1">
		<!--  Original Target XPath:  text   -->
	    <xsl:for-each-group select="node()" group-adjacent="if (self::deflist) then 0 else 1">
	        <xsl:choose>
	            <xsl:when test="current-grouping-key()=0">
	                <xsl:for-each select="current-group()">
	                    <xsl:apply-templates select="."/>
	                </xsl:for-each>
	            </xsl:when>
	            <xsl:otherwise>
	                <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">	                    
	                    <xsl:for-each select="current-group()">
	                        <xsl:apply-templates select="."/>
	                    </xsl:for-each>
	                </text>
	            </xsl:otherwise>
	        </xsl:choose>
	    </xsl:for-each-group>
	</xsl:template>


</xsl:stylesheet>