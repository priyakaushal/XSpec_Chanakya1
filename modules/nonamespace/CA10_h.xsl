<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    version="2.0"
    exclude-result-prefixes="#all">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_h">
        <title>h <lnpid>id-CA10-14625</lnpid></title>
        <body>
            <section>
                <title>h to h</title>
                <p><sourcexml>h</sourcexml> becomes <targetxml>base:h</targetxml>.</p>
                <p>If @align is present on input <sourcexml>h</sourcexml>, create @align on targeted
                        <targetxml>h</targetxml> and use the same value.</p>
                <p>Process child nodes of <sourcexml>h</sourcexml>.</p>
            </section>
            <example>
                <title>Example 1: Source XML</title>
                <codeblock> &lt;h align="center"&gt; &lt;emph typestyle="bf"&gt;ADVISORY
                    BOARD&lt;/emph&gt; &lt;/h&gt; </codeblock>
            </example>
            <example>
                <title>Example 1: Target XML</title>
                <codeblock> &lt;h align="center"&gt; &lt;emph typestyle="bf"&gt;ADVISORY
                    BOARD&lt;/emph&gt; &lt;/h&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2016-03-30: <ph id="change_20160330_h_1">Added instructions for mapping
                            <sourcexml>h</sourcexml> to <targetxml>base:h</targetxml>.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_h.dita  -->
    <!--<xsl:message>CA10_h.xsl requires manual development!</xsl:message> -->

    <xsl:template match="h">

        <!--  Original Target XPath:  base:h   -->
        <h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:choose>
                <xsl:when test="@align">
                    <xsl:attribute name="align">
                        <xsl:value-of select="@align"/>
                    </xsl:attribute>
                    <xsl:apply-templates select="node()"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="@* | node()"/>
                </xsl:otherwise>
            </xsl:choose>

        </h>

    </xsl:template>

</xsl:stylesheet>
