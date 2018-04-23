<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    version="2.0" exclude-result-prefixes="#all">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15_document.highlights">
        <title>Document Highlights become doc:overview <lnpid>id-CA15-35428</lnpid></title>
        <body>
            <section>
                <p>Up to 75 words (any PCDATA text separated by space, punctuation, or newline)
                    shall be extracted, to become
                        <targetxml>doc:metadata/doc:docinfo/doc:overview[@type="extracted-overview"]/bodytext/p/text</targetxml>,
                    as follows:</p>
                <p>
                    <b>Scenario 1 - Extract from:</b> abstract, i.e. <!--<targetxml>///nitf:body/nitf:body.head/abstract/bodytext/p/text</targetxml>-->
                    <sourcexml>abstract/p/text</sourcexml> (any descendant PCDATA).</p>
                <p> (See related instruction <xref href="CA15_Rosetta_abstract.dita">here</xref>.) </p>
                <p>
                    <note>If <sourcexml>abstract</sourcexml> contains multiple
                            <sourcexml>p</sourcexml> elements, only the first one should be
                        used.</note>
                </p>
                <p>
                    <note><b><u>Exception:</u></b> If content of the first
                            <sourcexml>p/text</sourcexml> begins with square bracket, [ , then do
                        not use. Extract from the next <sourcexml>p/text</sourcexml> instead.</note>
                </p>
                <p> OR <b>Scenario 2</b> - For those source documents where there is no
                        <sourcexml>abstract</sourcexml>:</p>
                <p> Then <b>Extract from:</b> highlight, i.e. <!--<targetxml>/nitf:body/nitf:body.head/article:highlight/bodytext/p/text</targetxml>-->
                    <sourcexml>highlight/p/text</sourcexml> (any descendant PCDATA).</p>
                <p>(See related instruction <xref href="CA15_Rosetta_highlight.dita"
                    >here</xref>.)</p>
                <p>
                    <note>If <sourcexml>highlight</sourcexml> contains multiple
                            <sourcexml>p</sourcexml> elements, only the first one should be
                        used.</note>
                </p>
                <p> OR <b>Scenario 3</b> - Where <sourcexml>highlight</sourcexml> also does not
                    exist:</p>
                <p> Then <b>Extract from:</b> unclassified body text, i.e. <!--<targetxml>/nitf:body/nitf:body.content/bodytext/section/bodytext/p/text</targetxml>-->
                    <sourcexml>jrnl:body/jrnl:bodytext/level/bodytext//p/text</sourcexml> (any
                    descendant PCDATA).</p>
                <p>(See related instruction <xref href="CA15_Rosetta_level.dita">here</xref>.)</p>
                <p>
                    <note>If <sourcexml>bodytext</sourcexml> contains multiple
                            <sourcexml>p</sourcexml> elements, the results should be concatenated
                        together separated by EM DASH —, up to 75 total words.</note>
                    <note>Notice that sometimes the <sourcexml>p</sourcexml> element is not an
                        immediate child of <sourcexml>bodytext</sourcexml>. A common use case is
                            <sourcexml>bodytext/l/li/p</sourcexml>, as shown in the example
                        below.</note>
                </p>
                <p><b><u>Special rule for <sourcexml>fnr</sourcexml>, all scenarios:</u></b> If
                        <sourcexml>fnr</sourcexml> is present, then suppress
                        <sourcexml>fnr</sourcexml> tag and content for target. Illustrated in
                    example for Scenario 3 below, but applies to all scenarios.</p>
            </section>
            <example>
                <title>Scenario 1 - Mapping of Document Highlights from abstract</title>
                <codeblock> &lt;abstract&gt; &lt;heading&gt; &lt;title&gt;ABSTRACT:&lt;/title&gt;
                    &lt;/heading&gt; &lt;p&gt; &lt;text&gt;[Le résumé français suit
                    l&amp;apos;anglais]&lt;/text&gt; &lt;/p&gt; &lt;p i="5" indent="1st-line"&gt;
                    &lt;text&gt;This article examines the systemic reasons behind Aboriginal
                    over-representation as Dangerous Offenders (DO) subject to indefinite detention.
                    Colonialism has left behind various social traumas that continue to devastate
                    Aboriginal communities. It is not surprising that significant numbers of
                    Aboriginal persons accumulate lengthy violent criminal histories such that they
                    come under the radar of the DO regime. One approach this article will stress is
                    a call for greater emphasis on preventative social programming, and less
                    emphasis on incarceration after the fact.&lt;/text&gt; &lt;/p&gt; &lt;p&gt;
                    &lt;text align="center"&gt; * * *&lt;/text&gt; &lt;/p&gt; &lt;p i="5"
                    indent="1st-line"&gt; &lt;text&gt; Cet article examine les raisons systémiques
                    de la surreprésentation autochtone chez les délinquants dangereux passibles de
                    détention à durée indéterminée. ...&lt;/text&gt; &lt;/p&gt; &lt;/abstract&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;doc:metadata&gt; ... &lt;doc:docinfo&gt; ... &lt;doc:overview
                    type="extracted-overview"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;This
                    article examines the systemic reasons behind Aboriginal over-representation as
                    Dangerous Offenders (DO) subject to indefinite detention. Colonialism has left
                    behind various social traumas that continue to devastate Aboriginal communities.
                    It is not surprising that significant numbers of Aboriginal persons accumulate
                    lengthy violent criminal histories such that they come under the radar of the DO
                    regime. One approach this article will stress is a call for greater emphasis on
                    preventative social programming, and less emphasis&lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/doc:overview&gt; ... &lt;/doc:docinfo&gt; ...
                    &lt;/doc:metadata&gt; </codeblock>
            </example>
            <example>
                <title>Scenario 2 - Mapping of Document Highlights from highlight</title>
                <codeblock> &lt;highlight&gt; &lt;heading&gt; &lt;title&gt;HIGHLIGHTS:&lt;/title&gt;
                    &lt;/heading&gt; &lt;p&gt; &lt;text&gt;&lt;emph typestyle="it"&gt;The crises in
                    Canada&amp;apos;s fisheries demonstrate the failure of Canadian fisheries
                    management practices to achieve their public policy objectives. The author
                    proposes that a new fisheries management regime, based on principles of
                    community-based management, should be implemented to better ensure the
                    sustainability of both the fisheries and fishing
                    communities.&lt;/emph&gt;&lt;/text&gt; &lt;/p&gt; &lt;p&gt; &lt;text&gt;&lt;emph
                    typestyle="it"&gt;Les crises vécues par les pêcheries canadiennes sont la preuve
                    de l&amp;apos;échec des pratiques de gestion actuelles à atteindre les objectifs
                    des politiques en matière de pêcheries. Cet article propose qu&amp;apos;un
                    nouveau régime de gestion des pêcheries, fondé sur des principes de gestion
                    communautaire, soit implanté afin d&amp;apos;assurer un meilleur maintien des
                    pêcheries et des communautés s&amp;apos;y rattachant.&lt;/emph&gt;&lt;/text&gt;
                    &lt;/p&gt; &lt;/highlight&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;doc:metadata&gt; ... &lt;doc:docinfo&gt; ... &lt;doc:overview
                    type="extracted-overview"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;The crises
                    in Canada&amp;apos;s fisheries demonstrate the failure of Canadian fisheries
                    management practices to achieve their public policy objectives. The author
                    proposes that a new fisheries management regime, based on principles of
                    community-based management, should be implemented to better ensure the
                    sustainability of both the fisheries and fishing communities.&lt;/text&gt;
                    &lt;/p&gt; &lt;/bodytext&gt; &lt;/doc:overview&gt; ... &lt;/doc:docinfo&gt; ...
                    &lt;/doc:metadata&gt; </codeblock>
            </example>
            <example>
                <title>Scenario 3 - Mapping of Document Highlights from bodytext</title>
                <codeblock> &lt;jrnl:bodytext&gt; &lt;level leveltype="3"&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt;1.0 EXORDIUM&lt;/text&gt; &lt;/p&gt; &lt;l
                    virtual-nesting="2"&gt; &lt;li&gt; &lt;lilabel/&gt; &lt;p&gt; &lt;text&gt;In
                    McLean (Litigation Guardian of) v. Jorgenson
                    &lt;ci:cite&gt;&lt;ci:case&gt;&lt;ci:caseref ID="cref00019239"
                    spanref="cspan00019239"&gt; &lt;ci:reporter
                    value="OJ"/&gt;&lt;ci:edition&gt;&lt;ci:date year="2005"/&gt;&lt;/ci:edition&gt;
                    &lt;ci:refnum
                    num="5207"/&gt;&lt;/ci:caseref&gt;&lt;/ci:case&gt;&lt;ci:content&gt; &lt;ci:span
                    spanid="cspan00019239"&gt;[2005] O.J. No.
                    5207&lt;/ci:span&gt;&lt;/ci:content&gt; &lt;/ci:cite&gt;, the Court of Appeal
                    for Ontario addressed the issue of whether an insurer had the duty&lt;fnr
                    fnrtoken="fnr-233-1" fntoken="fn-233-1"&gt;1&lt;/fnr&gt; to defend an action
                    commenced by a plaintiff who suffered a below-the-knee amputation while he was
                    holding the rear end of a snowmobile off the ground as another person revved the
                    engine in hopes that it would start better.&lt;/text&gt; &lt;/p&gt; &lt;/li&gt;
                    &lt;/l&gt; &lt;p&gt; &lt;text&gt;The court followed the three principles
                    relating to the duty to defend.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/level&gt; &lt;/jrnl:bodytext&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;doc:metadata&gt; ... &lt;doc:docinfo&gt; ... &lt;doc:overview
                    type="extracted-overview"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;1.0
                    EXORDIUM — In McLean (Litigation Guardian of) v. Jorgenson [2005] O.J. No. 5207,
                    the Court of Appeal for Ontario addressed the issue of whether an insurer had
                    the duty to defend an action commenced by a plaintiff who suffered a
                    below-the-knee amputation while he was holding the rear end of a snowmobile off
                    the ground as another person revved the engine in hopes that it would start
                    better. — The court followed the three principles relating&lt;/text&gt;
                    &lt;/p&gt; &lt;/bodytext&gt; &lt;/doc:overview&gt; ... &lt;/doc:docinfo&gt; ...
                    &lt;/doc:metadata&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2015-08-12: <ph id="change_20150812_jm">Modified scenario 3, extracting from
                            <sourcexml>bodytext</sourcexml>, to concatenate contents of multiple
                            <sourcexml>p</sourcexml> elements. Previous rule extracted from only the
                        first <sourcexml>p</sourcexml>. No change to target xpath. RFA 131.</ph></p>
                <p>2015-07-21: <ph id="change_20150721_jm">Added special rule to suppress
                            <sourcexml>fnr</sourcexml> tag and content. RFA 79.</ph></p>
                <p>2015-06-09: <ph id="change_20150609_jm">Modified scenario 3, extracting from
                            <sourcexml>bodytext</sourcexml>, to state that first
                            <sourcexml>p</sourcexml> is used even if not an immediate child of
                            <sourcexml>bodytext</sourcexml>. No change to target xpath. RFA
                    73.</ph></p>
                <p>2015-05-11: <ph id="change_20150511_jm">New rule. Target xpath is not new. Added
                        scenario 3 to extract from <sourcexml>bodytext</sourcexml> when
                            <sourcexml>abstract</sourcexml> and <sourcexml>highlight</sourcexml> not
                        present. RFA #58.</ph></p>
                <p>2015-04-27: <ph id="change_20150427_jm">New section. New target. Rules to create
                        extracted overview. R4.5 RFA #2287.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\document.highlights-to-doc.overview.dita  -->
    <!--<xsl:message>CA15-Journal_Articles_document.highlights-to-doc.overview.xsl requires manual development!</xsl:message> -->



    <xsl:template match="jrnl:body" mode="doc_overview">
        <xsl:param name="Counter" select="0" />
        <doc:overview>
            <xsl:attribute name="type">
                <xsl:text>extracted-overview</xsl:text>
            </xsl:attribute>
            <bodytext>

                <xsl:choose>
                    <xsl:when
                        test="jrnl:prelim/abstract/p[not(starts-with(./text/., '['))][1]">

                        <xsl:apply-templates
                            select="jrnl:prelim/abstract/p[not(starts-with(./text/., '['))][1]"
                            mode="doc-overview"/>

                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="jrnl:prelim/highlight/p[1]">
                                <xsl:apply-templates select="jrnl:prelim/highlight/p[1]"
                                    mode="doc-overview"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <p>
                                    <text>
                           
                                        <xsl:variable name="Concat_text">
                                        <xsl:for-each select="jrnl:bodytext/level/bodytext//p/text">
                                            <xsl:value-of select="node()except child::fnr"/>
                                            <xsl:text>— </xsl:text>
                                        </xsl:for-each>
                                        </xsl:variable>
                                        <xsl:variable name="concat_string_list_remove_dot" select="replace($Concat_text,' .— ','.— ')"/>
                                        <xsl:variable name="concat_string_list" select="tokenize(normalize-space($concat_string_list_remove_dot), ' ')"/>  
                                       <!-- <xsl:variable name="concat_String_75">
                                            <xsl:for-each select="$concat_string_list">
                                            <xsl:if test="position() &lt; 76">
                                                <xsl:value-of select="concat(.,' ')"/>
                                            </xsl:if>
                                            </xsl:for-each>
                                        </xsl:variable>
                                        <xsl:variable name="countdash">
                                            <!-\-<xsl:value-of select="count(tokenize($concat_String_75,'—')) - 1+76"/>-\->
                                            <xsl:value-of select="count(contains($concat_String_75,'—'))+76"/>
                                        </xsl:variable>
                                            <xsl:for-each select="$concat_string_list">
                                                <xsl:if test="position() &lt; $countdash ">
                                                <xsl:value-of select="concat(.,' ')"/>
                                            </xsl:if>
                                        </xsl:for-each>-->
                                        <xsl:variable name="concat_String_75">
                                        <xsl:for-each select="$concat_string_list">
                                            <xsl:if test="position() &lt; 76 ">
                                                <xsl:value-of select="concat(.,' ')"/>
                                            </xsl:if>
                                        </xsl:for-each>
                                        </xsl:variable>
                                        
                                        <xsl:choose>
                                            <xsl:when test="ends-with($concat_String_75,'— ')">
                                                <xsl:value-of select="replace(substring($concat_String_75,1,string-length($concat_String_75)-2),'— ',' — ')"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="replace($concat_String_75,'— ',' — ')"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </text>
                                </p>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </bodytext>
        </doc:overview>
    </xsl:template>


    <xsl:template match="text" mode="upto_75_words">
<xsl:variable name="text_truncate">
    <xsl:value-of select="node()except child::fnr"/>
</xsl:variable>
        <xsl:variable name="stringList" select="tokenize(normalize-space($text_truncate), ' ')"/>

        <xsl:for-each select="$stringList">
            <xsl:if test="position() &lt; 76">

                <xsl:value-of select="concat(., ' ')"/>

            </xsl:if>
        </xsl:for-each>

    </xsl:template>

    <xsl:template match="jrnl:prelim/abstract/p[not(starts-with(./text/., '['))][1]"
        mode="doc-overview">
        <p>
            <text>
                <xsl:apply-templates select="text" mode="upto_75_words"/>
            </text>
        </p>
    </xsl:template>

    <xsl:template match="jrnl:prelim/highlight/p[1]" mode="doc-overview">
        <p>
            <text>
                <xsl:apply-templates select="text" mode="upto_75_words"/>
            </text>
        </p>

    </xsl:template>

    
  

</xsl:stylesheet>
