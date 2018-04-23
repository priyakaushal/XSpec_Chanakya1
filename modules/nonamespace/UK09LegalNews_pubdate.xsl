<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    version="2.0" exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK09LegalNews_pubdate">
        <title>pubdate <lnpid>id-UK09-29023</lnpid></title>
        <body>
            <p><sourcexml>pubdate</sourcexml> becomes
                    <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate</targetxml></p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;jrnl:info&gt; ... &lt;pubdate&gt; &lt;date day="01" month="11"
                    year="2005"&gt;1 November 2005&lt;/date&gt; &lt;/pubdate&gt; &lt;/jrnl:info&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;doc:metadata&gt; &lt;pubinfo:pubinfo&gt; ... &lt;pubinfo:dates&gt;
                    &lt;pubinfo:pubdate day="01" month="11" year="2005"&gt;1 November
                    2005&lt;/pubinfo:pubdate&gt; &lt;/pubinfo:dates&gt; ... &lt;/pubinfo:pubinfo&gt;
                    &lt;/doc:metadata&gt; </codeblock>
            </example>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09LegalNews_pubdate.dita  -->
    <!--<xsl:message>UK09LegalNews_pubdate.xsl requires manual development!</xsl:message> -->

    <xsl:template match="pubdate">

        <!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate   -->
        <!--<doc:metadata>
			<pubinfo:pubinfo >-->
        <pubinfo:dates>
            <pubinfo:pubdate>
                <xsl:attribute name="day">
                    <xsl:value-of select="date/@day"/>
                </xsl:attribute>
                <xsl:attribute name="month">
                    <xsl:value-of select="date/@month"/>
                </xsl:attribute>
                <xsl:attribute name="year">
                    <xsl:value-of select="date/@year"/>
                </xsl:attribute>
                <!--<xsl:apply-templates select="@* | node()"/>-->
                <xsl:value-of select="date"/>
            </pubinfo:pubdate>
        </pubinfo:dates>
        <!--</pubinfo:pubinfo>
		</doc:metadata>-->

    </xsl:template>

</xsl:stylesheet>