<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
    xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
    xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/"
    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0"
    exclude-result-prefixes="dita jrnl">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15_Rosetta_jrnl_body">
        <title>jrnl:body <lnpid>id-CA15-35414</lnpid></title>

        <body>
            <p><sourcexml>jrnl:body</sourcexml> becomes <targetxml>nitf:body</targetxml>.</p>

            <p><targetxml>nitf:body.head</targetxml> and <targetxml>nitf:body.content</targetxml>
                are created as children of <targetxml>nitf:body</targetxml></p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;JOURNALDOC&gt; ... &lt;jrnl:body&gt; ... &lt;/jrnl:body&gt;
                    &lt;/JOURNALDOC&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;newsitem:newsitem&gt; ... &lt;nitf:body&gt; &lt;nitf:body.head&gt;
                    ... &lt;/nitf:body.head&gt; &lt;nitf:body.content&gt; ...
                    &lt;/nitf:body.content&gt; &lt;/nitf:body&gt; ... &lt;/newsitem:newsitem&gt;
                </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-02-17: <ph id="change_20150217_AS">Created.</ph></p>
            </section>
        </body>

    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15_Rosetta_jrnl_body.dita  -->
    <!--<xsl:message>CA15_Rosetta_jrnl_body.xsl requires manual development!</xsl:message> -->

    <xsl:template match="jrnl:body">

        <!--  Original Target XPath:  nitf:body   -->
        <newsitem:head>
            <xsl:apply-templates select="jrnl:info/jrnl:journalcite"/>
            <xsl:apply-templates select="jrnl:prelim/bookinfo/pubunit"/>
        </newsitem:head>
        <nitf:body>
            <nitf:body.head>
                <xsl:apply-templates select="jrnl:prelim"/>
            </nitf:body.head>
            <nitf:body.content>
                <xsl:apply-templates select="jrnl:bodytext"/>
            </nitf:body.content>
        </nitf:body>
        <doc:metadata>
			<!--Webstar 7141212 fix:
				 <xsl:if test="jrnl:info/publication|jrnl:body/jrnl:info/pubdate|jrnl:body/jrnl:prelim/copyright">-->
            <xsl:if test="jrnl:info/publication|jrnl:info/pubdate|jrnl:prelim/copyright">
                <pubinfo:pubinfo>
                    <xsl:apply-templates select="jrnl:info/publication"/>
                    <xsl:apply-templates select="jrnl:prelim/copyright"/>
                    <xsl:apply-templates select="jrnl:info/pubdate"/>
                    <xsl:apply-templates select="jrnl:prelim/bookinfo/publength"/>
                </pubinfo:pubinfo>
            </xsl:if>
            <xsl:apply-templates select="preceding-sibling::docinfo"/>
        </doc:metadata>
    </xsl:template>

</xsl:stylesheet>