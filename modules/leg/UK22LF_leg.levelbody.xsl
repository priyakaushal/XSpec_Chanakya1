<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK22LF_leg.levelbody">
    <title>leg:levelbody <lnpid>id-UK22LF-36013</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li "> The conversion of <sourcexml>leg:levelbody</sourcexml>
                    depends upon its child elements: <ul>
                        <li> If <sourcexml>leg:bodytext</sourcexml> is the immediate child of
                                <sourcexml>leg:levelbody</sourcexml> then it will become
                                <targetxml>primlaw:bodytext</targetxml> i.e,
                                <sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes
                                <targetxml>primlaw:bodytext</targetxml>. </li>
                    </ul>
                </li>
            </ul>
        </section>

        <example>
            <title>Source XML 1 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
            <codeblock>
&lt;leg:body id="1000848"&gt;
    &lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="section"&gt;
            ...
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;OJ. No. C 340, 10.11.1997, P. 273&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:body&gt;
                 </codeblock>
        </example>

        <example>
            <title>Target XML 1: For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
            <codeblock>
&lt;funddoc:body id="1000848"&gt;
    &lt;primlaw:level leveltype="section"&gt;
        ...
        &lt;primlaw:bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;OJ. No. C 340, 10.11.1997, P. 273&lt;/text&gt;
            &lt;/p&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
&lt;/funddoc:body&gt;
             </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-06-29: <ph id="change_20150629_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22LF\leg.levelbody.dita  -->
    
    <xsl:template match="leg:levelbody">
        <xsl:apply-templates/>		
    </xsl:template>

	<xsl:template match="leg:bodytext">
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>
	</xsl:template>

</xsl:stylesheet>