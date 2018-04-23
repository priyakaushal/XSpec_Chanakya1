<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:funddoc="urn:x-lexisnexis:content:fundamentallegaldocument:sharedservices:1" version="2.0"
    exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.endmatter">
        <title>
            <sourcexml>leg:endmatter</sourcexml>
            <lnpid>id-UK22CF-39012</lnpid>
        </title>
        <body>
            <section>
                <p><sourcexml>/comm:body/level/bodytext/legfragment/leg:endmatter</sourcexml>
                    becomes
                        <targetxml>funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level</targetxml>
                    with <targetxml>@leveltype="endnote"</targetxml>. </p>
            </section>
            <example>
                <codeblock>

&lt;leg:endmatter&gt;
        &lt;sigblock&gt;
            &lt;legfragment&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;Judith Simpson&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;Clerk of the Privy Council&lt;/text&gt;
                &lt;/p&gt;
            &lt;/legfragment&gt;
        &lt;/sigblock&gt;
        ...................
    &lt;/leg:endmatter&gt;

      </codeblock>
                <b>Becomes</b>
                <codeblock>

&lt;primlaw:bodytext&gt;
        &lt;sigblock&gt;
            &lt;primlaw:excerpt&gt;
                &lt;primlaw:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="it"&gt;Judith Simpson&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                        &lt;text&gt;Clerk of the Privy Council&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/primlaw:bodytext&gt;
            &lt;/primlaw:excerpt&gt;
        &lt;/sigblock&gt;
        ...................
    &lt;/primlaw:bodytext&gt;

      </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2016-09-19: <ph id="change_20160919_RS">Created</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CF\legis-leg.endmatter.dita  -->


    <xsl:template match="leg:endmatter">

        <!--  Original Target XPath:  funddoc:body/primlaw:level/primlaw:bodytext/primlaw:excerpt/primlaw:level   -->

        <primlaw:bodytext>
            <primlaw:excerpt>
                <primlaw:level>
                    <xsl:attribute name="leveltype">
                        <xsl:text>endnote</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates select="@* | node()"/>
                </primlaw:level>
            </primlaw:excerpt>
        </primlaw:bodytext>

    </xsl:template>



</xsl:stylesheet>