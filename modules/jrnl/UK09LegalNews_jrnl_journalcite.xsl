<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita ci jrnl">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="UK09LegalNews_jrnl_journalcite">
        <title>jrnl:journalcite <lnpid>id-UK09-29015</lnpid></title>
        <body>
            <p><sourcexml>jrnl:journalcite</sourcexml> becomes
                    <targetxml>newsitem:head/ref:citations/ref:cite4thisresource</targetxml>. See
                the General Markup instructions for <xref
                    href="../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">ci:cite</xref>
                for details on how to map <sourcexml>ci:cite</sourcexml> to
                    <targetxml>lnci:cite</targetxml>.</p>
            <p>If <sourcexml>jrnl:journalcite</sourcexml> only contains text, then: <ul>
                    <li>Create <targetxml>ref:citations/ref:cite4thisresource/lnci:cite</targetxml>
                        inside <targetxml>newsitem:head</targetxml>.</li>
                    <li>Set the value of <targetxml>lnci:cite/@type</targetxml> to
                        "cite4thisdoc".</li>
                    <li>Create <targetxml>lnci:content</targetxml> inside
                            <targetxml>lnci:cite</targetxml>.</li>
                    <li>Place the contents of <sourcexml>jrnl:journalcite</sourcexml> inside
                            <targetxml>lnci:content</targetxml>.</li>
                </ul></p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;jrnl:info&gt; ... &lt;jrnl:journalcite&gt; &lt;ci:cite
                    type="cite4thisdoc"&gt; &lt;ci:lawrev&gt; &lt;ci:lawrevref&gt;
                    &lt;ci:lawrevlocator&gt; &lt;ci:publicationname normpubcode="PDP"/&gt;
                    &lt;ci:volume num="6"/&gt; &lt;ci:issue num="1"/&gt; &lt;ci:page num="6"/&gt;
                    &lt;/ci:lawrevlocator&gt; &lt;/ci:lawrevref&gt; &lt;/ci:lawrev&gt;
                    &lt;ci:content&gt;PDP 6 1 (6)&lt;/ci:content&gt; &lt;/ci:cite&gt;
                    &lt;/jrnl:journalcite&gt; ... &lt;/jrnl:info&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;newsitem:head&gt; &lt;ref:citations&gt;
                    &lt;ref:cite4thisresource&gt; &lt;lnci:cite type="cite4thisdoc"&gt;
                    &lt;lnci:lawrev&gt; &lt;lnci:lawrevref&gt; &lt;lnci:lawrevlocator&gt;
                    &lt;lnci:publicationname normpubcode="PDP"/&gt; &lt;lnci:volume num="6"/&gt;
                    &lt;lnci:issue num="1"/&gt; &lt;lnci:page num="6"/&gt;
                    &lt;/lnci:lawrevlocator&gt; &lt;/lnci:lawrevref&gt; &lt;/lnci:lawrev&gt;
                    &lt;lnci:content&gt;PDP 6 1 (6)&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt; &lt;/newsitem:head&gt;
                </codeblock>
            </example>
            <example>
                <title>Source XML (<sourcexml>jrnl:journalcite</sourcexml> only contains
                    text)</title>
                <codeblock> &lt;jrnl:info&gt; ... &lt;jrnl:journalcite&gt;ELR 1 1
                    (36)&lt;/jrnl:journalcite&gt; ... &lt;/jrnl:info&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;newsitem:head&gt; &lt;ref:citations&gt;
                    &lt;ref:cite4thisresource&gt; &lt;lnci:cite type="cite4thisdoc"&gt;
                    &lt;lnci:content&gt;ELR 1 1 (36)&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt; &lt;/newsitem:head&gt;
                </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2013-04-08: <ph id="change_20130408_DSF">Corrected the instructions for handling
                        the scenario when <sourcexml>jrnl:journalcite</sourcexml> only contains text
                        so that it states "Place the contents of
                            <sourcexml>jrnl:journalcite</sourcexml> inside
                                <b><targetxml>lnci:content</targetxml></b>."</ph></p>
                <p>2013-03-25: <ph id="change_20130325_DSF">Added instructions for handling the
                        scenario when <sourcexml>jrnl:journalcite</sourcexml> only contains
                        text.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09LegalNews_jrnl_journalcite.dita  -->
    <!--<xsl:message>UK09LegalNews_jrnl_journalcite.xsl requires manual development!</xsl:message> 
-->
    <xsl:output indent="no"/>
    <xsl:template match="jrnl:journalcite">

        <!--  Original Target XPath:  newsitem:head/ref:citations/ref:cite4thisresource   -->
        <xsl:choose>
            <xsl:when test="not(child::ci:cite)">
               <!-- <newsitem:head>-->
                    <ref:citations>
                        <ref:cite4thisresource>
                            <lnci:cite type="cite4thisdoc">
                                <lnci:content>
                                    <xsl:value-of select="."/>
                                </lnci:content>
                            </lnci:cite>
                        </ref:cite4thisresource>
                    </ref:citations>
                <!--</newsitem:head>-->
            </xsl:when>
            <xsl:otherwise>
               <!-- <newsitem:head>-->
                    <ref:citations>
                        <ref:cite4thisresource>
                           
                            <xsl:apply-templates select="ci:cite"/>
                        
                        </ref:cite4thisresource>
                    </ref:citations>
                <!--</newsitem:head>-->
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>
    
    <xsl:template match="ci:content" priority="2">
        <xsl:choose>
            <xsl:when test="ancestor::jrnl:journalcite">
                <lnci:content>
                    <xsl:value-of select="ancestor::jrnl:journalcite"/>
                </lnci:content>
            </xsl:when>
            <xsl:otherwise>
                <lnci:content>
                    <xsl:value-of select="."/>
                </lnci:content>
            </xsl:otherwise>
        </xsl:choose>
              
    </xsl:template>
    
    <!-- MDS 2017-12-12: Override to usual handling of pnum due to Webstar 7070198 -->
    <xsl:template match="jrnl:articletitle/pnum | jrnl:articlesubtitle/pnum" priority="25">
        <xsl:apply-templates select="node()"/>
        <xsl:text> </xsl:text>
    </xsl:template>

</xsl:stylesheet>