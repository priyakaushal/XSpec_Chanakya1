<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK22LF_leg.endmatter">
    <title>leg:endmatter <lnpid>id-UK22LF-36010</lnpid></title>
    <body>
        <section>
            <p>Conversion should suppress <sourcexml>leg:endmatter</sourcexml> element from target
                conversion because its a container element for <sourcexml>leg:level</sourcexml>
                element.</p>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>
&lt;leg:endmatter&gt;
    &lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="section"&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;hrule width="100%"/&gt;
                    &lt;blockquote&gt;
                        &lt;l&gt;
                            &lt;li&gt;
                                &lt;p&gt;
                                    &lt;text align="right"&gt;
                                        &lt;process-ignore process="kwd"&gt;Only European Union
                                            legislation printed in the paper edition of the
                                            &lt;emph typestyle="it"&gt;Official Journal of the
                                                European Union&lt;/emph&gt; is deemed
                                            authentic&lt;/process-ignore&gt;
                                    &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/li&gt;
                            ...
                        &lt;/l&gt;
                    &lt;/blockquote&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:endmatter&gt;
              </codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>
&lt;primlaw:level leveltype="section"&gt;
    &lt;primlaw:bodytext&gt;
        &lt;hrule/&gt;
        &lt;blockquote&gt;
            &lt;list&gt;
                &lt;listitem&gt;
                    &lt;bodytext&gt;
                        &lt;p align="right"&gt;
                            &lt;text&gt;Only European Union legislation printed in the paper
                                edition of the &lt;emph typestyle="it"&gt;Official Journal of the
                                    European Union&lt;/emph&gt; is deemed authentic&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/listitem&gt;
                ...
            &lt;/list&gt;
        &lt;/blockquote&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
              </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-06-29: <ph id="change_20150629_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22LF\leg.endmatter.dita  -->
    
    <xsl:template match="leg:endmatter">
        <xsl:apply-templates/>		
    </xsl:template>

</xsl:stylesheet>