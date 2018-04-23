<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
    xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita ci jrnl lnf xs">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="CA15_Rosetta_jrnl_journalcite">
        <title>jrnl:journalcite <lnpid>id-CA15-35417</lnpid></title>
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
                    <li>Set the value of <targetxml>lnci:cite/@type</targetxml> to "reporter".</li>
                    <li>Create <targetxml>lnci:content</targetxml> inside
                            <targetxml>lnci:cite</targetxml>.</li>
                    <li>Place the contents of <sourcexml>jrnl:journalcite</sourcexml> inside
                            <targetxml>lnci:content</targetxml>.</li>
                </ul></p>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;jrnl:info&gt; ... &lt;jrnl:journalcite&gt; &lt;ci:cite
                    type="cite4thisdoc"&gt; &lt;ci:lawrev&gt; &lt;ci:lawrevref ID="cref00006103"
                    spanref="cspan00006103"&gt; &lt;ci:lawrevlocator&gt; &lt;ci:publicationname
                    normpubcode="ULVCD"/&gt; &lt;ci:volume num="53"/&gt; &lt;ci:page num="189"/&gt;
                    &lt;/ci:lawrevlocator&gt; &lt;/ci:lawrevref&gt; &lt;/ci:lawrev&gt;
                    &lt;ci:content&gt;&lt;ci:span spanid="cspan00006103"&gt;(2012) 53 C. de D.
                    189&lt;/ci:span&gt; - 228&lt;/ci:content&gt; &lt;/ci:cite&gt;
                    &lt;/jrnl:journalcite&gt; ... &lt;/jrnl:info&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;newsitem:head&gt; &lt;ref:citations&gt; &lt;ref:cite4thisresource
                    citetype="reporter"&gt; &lt;lnci:cite status="valid"&gt; &lt;lnci:lawrev&gt;
                    &lt;lnci:lawrevref&gt; &lt;lnci:lawrevlocator&gt; &lt;lnci:publicationname
                    normpubcode="ULVCD"/&gt; &lt;lnci:volume num="53"/&gt; &lt;lnci:page
                    num="189"/&gt; &lt;/lnci:lawrevlocator&gt; &lt;/lnci:lawrevref&gt;
                    &lt;/lnci:lawrev&gt; &lt;lnci:content&gt;(2012) 53 C. de D. 189 -
                    228&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt;
                    &lt;/ref:citations&gt; &lt;/newsitem:head&gt; </codeblock>
            </example>

            <note>For multiple <sourcexml>ci:cite</sourcexml> in source then conversion need to
                generate separate <targetxml>ref:cite4thisresource</targetxml> for every
                    <sourcexml>ci:cite</sourcexml> element with attribute
                    <targetxml>@citetype="reporter"</targetxml></note>
            <note>Rule for forward slash: If forward slash, / , occurs as <b>first</b> or
                    <b>last</b> character in <sourcexml>ci:content</sourcexml>, then suppress the
                slash. Also suppress space preceding or following the slash.</note>
            <note><b>Exception for new line:</b> If <sourcexml>nl</sourcexml> occurs at the
                    <b>beginning </b>or <b>end </b>of <b><sourcexml>ci:content</sourcexml></b>, then
                suppress <b><sourcexml>nl</sourcexml></b>. Otherwise, <sourcexml>nl</sourcexml> is
                replaced with space for target, as per rule in <xref
                    href="../../common_newest/Rosetta_nl-Chof-ci.content-LxAdv-SingleSpaceCharacter.dita"
                    >General Markup section</xref>.</note>

            <example>
                <b>Source XML</b>
                <codeblock>&lt;jrnl:journalcite&gt; &lt;ci:cite type="cite4thisdoc"&gt;
                    &lt;ci:lawrev&gt; &lt;ci:lawrevref ID="cref00000001" spanref="cspan00000001"&gt;
                    &lt;ci:lawrevlocator&gt; &lt;ci:publicationname normpubcode="MCGSD"/&gt;
                    &lt;ci:volume num="1"/&gt; &lt;ci:page num="11"/&gt; &lt;/ci:lawrevlocator&gt;
                    &lt;/ci:lawrevref&gt; &lt;/ci:lawrev&gt; &lt;ci:content&gt;&lt;ci:span
                    spanid="cspan00000001"&gt;(2005) 1 McGill J.S.D.L.P. 11&lt;/ci:span&gt;-18
                    /&lt;nl/&gt;&lt;/ci:content&gt; &lt;/ci:cite&gt; &lt;ci:cite
                    type="cite4thisdoc"&gt; &lt;ci:lawrev&gt; &lt;ci:lawrevref ID="cref00000002"
                    spanref="cspan00000002"&gt; &lt;ci:lawrevlocator&gt; &lt;ci:publicationname
                    normpubcode="MCGSD"/&gt; &lt;ci:volume num="1"/&gt; &lt;ci:page num="11"/&gt;
                    &lt;/ci:lawrevlocator&gt; &lt;/ci:lawrevref&gt; &lt;/ci:lawrev&gt;
                    &lt;ci:content&gt; / &lt;ci:span spanid="cspan00000002"&gt;(2005) 1 R.D.P.D.D.
                    McGill 11&lt;/ci:span&gt;-18&lt;/ci:content&gt; &lt;/ci:cite&gt;
                    &lt;/jrnl:journalcite&gt; </codeblock> Target XML
                    <codeblock>&lt;newsitem:head&gt; &lt;ref:citations&gt; &lt;ref:cite4thisresource
                    citetype="reporter"&gt; &lt;lnci:cite&gt; &lt;lnci:lawrev&gt; &lt;lnci:lawrevref
                    ID="cref00000001"&gt; &lt;lnci:lawrevlocator&gt; &lt;lnci:publicationname
                    normpubcode="MCGSD"/&gt; &lt;lnci:volume num="1"/&gt; &lt;lnci:page
                    num="11"/&gt; &lt;/lnci:lawrevlocator&gt; &lt;/lnci:lawrevref&gt;
                    &lt;/lnci:lawrev&gt; &lt;lnci:content&gt;&amp;#x0028;2005&amp;#x0029; 1 McGill
                    J.S.D.L.P. 11-18&lt;/lnci:content&gt; &lt;/lnci:cite&gt;
                    &lt;/ref:cite4thisresource&gt; &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt; &lt;lnci:lawrev&gt; &lt;lnci:lawrevref ID="cref00000002"&gt;
                    &lt;lnci:lawrevlocator&gt; &lt;lnci:publicationname normpubcode="MCGSD"/&gt;
                    &lt;lnci:volume num="1"/&gt; &lt;lnci:page num="11"/&gt;
                    &lt;/lnci:lawrevlocator&gt; &lt;/lnci:lawrevref&gt; &lt;/lnci:lawrev&gt;
                    &lt;lnci:content&gt;&amp;#x0028;2005&amp;#x0029; 1 R.D.P.D.D. McGill
                    11-18&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt;
                    &lt;/ref:citations&gt; &lt;/newsitem:head&gt; </codeblock>
            </example>
            <!--<example>
            <title>Source XML (<sourcexml>jrnl:journalcite</sourcexml> only contains text)</title>
            <codeblock>
<![CDATA[
<jrnl:info>
    ...
    <jrnl:journalcite>ELR 1 1 (36)</jrnl:journalcite>
    ...
</jrnl:info>
]]>
           </codeblock>
            <title>Target XML</title>
            <codeblock>
<![CDATA[
<newsitem:head>
    <ref:citations>
        <ref:cite4thisresource>
            <lnci:cite type="cite4thisdoc">
                <lnci:content>ELR 1 1 (36)</lnci:content>
            </lnci:cite>
        </ref:cite4thisresource>
    </ref:citations>
</newsitem:head>
]]>
           </codeblock>
        </example>-->
            <section>
                <title>Changes</title>
                <p>2015-06-11: <ph id="change_20150611_AS">Updated instructions for new line under
                            <sourcexml>ci:content</sourcexml>. RFA 74</ph></p>
                <p>2015-06-03: <ph id="change_20150603_jm">At example for multiple
                            <sourcexml>ci:cite</sourcexml>, added note to suppress forward slash, /
                        , if occurs as first or last character in <sourcexml>ci:content</sourcexml>.
                        RFA 71.</ph></p>
                <p>2015-04-01: <ph id="change_20150401_AS">Updated instructioins for multiple
                        ci:cite.</ph></p>
                <p>2015-02-17: <ph id="change_20150217_AS">Created.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15_Rosetta_jrnl_journalcite.dita  -->
    <!--<xsl:message>CA15_Rosetta_jrnl_journalcite.xsl requires manual development!</xsl:message> -->
    <xsl:param name="citeStringsToRemove" as="xs:string*"
        select="('CITED/CITÉ:', 'CITÉ/CITED:', 'CITE/CITED:', 'CITED:')"/>
    <xsl:template match="jrnl:journalcite">
        <ref:citations>

            <xsl:apply-templates select="@*|node()"/>

        </ref:citations>
    </xsl:template>

    <xsl:template match="ci:cite[parent::jrnl:journalcite]">

        <ref:cite4thisresource citetype="reporter">
            <lnci:cite>
                <xsl:apply-templates select="@* | node()"/>
            </lnci:cite>
        </ref:cite4thisresource>

    </xsl:template>
    <!-- 2018-04-06 MDS: Webstar 7153843
        Added '[not(normalize-space(.)='/')]' to variable 'OutputText' in order to remove any single slash in output.
        Added 'text()[last()][(normalize-space(.)='/')])' to except() in order to remove any trailing slash in output -->
    <xsl:template match="ci:content[parent::ci:cite[parent::jrnl:journalcite]]" priority="25">
        <lnci:content>
            <xsl:variable name="OutputText" select="text()[1][not(normalize-space(.)='/')]"/>
            <xsl:sequence select=" lnf:removeSequenceOfStrings( string-join( $OutputText , '' ) , $citeStringsToRemove , false() ) "/>
            <xsl:apply-templates select="@* | node() except (text()[1], text()[last()][(normalize-space(.)='/')])"/>
        </lnci:content>

    </xsl:template>
</xsl:stylesheet>
