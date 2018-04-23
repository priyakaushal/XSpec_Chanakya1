<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
    exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level-not-in-force">
        <title>leg:level-not-in-force <lnpid>id-CA06-13819</lnpid></title>
        <body>
            <section>
                <ul>
                    <li class="- topic/li "> The conversion of
                            <sourcexml>leg:level-not-in-force</sourcexml> depends upon the following
                        scenarios: <ul>
                            <li> If text of <sourcexml>leg:level-not-in-force</sourcexml> starts
                                with the French <b>Note de l'éditeur:</b> or English <b>Editor’s
                                    note:</b> then convert it to
                                    <targetxml>note[@notetype="instruction"]</targetxml>. <note>If
                                    text of French and English note starts with square bracket
                                        (i.e.<b>[Note de l'éditeur: </b> or <b>[Editor’s note:</b>)
                                    then also convert it to
                                        <targetxml>note[@notetype="instruction"]</targetxml>. </note>
                                <note><sourcexml>leg:level-not-in-force/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>
                                    becomes <targetxml>note</targetxml>. </note></li>
                        </ul></li>
                </ul>
            </section>
            <example>
                <title>Source XML 1 : For <sourcexml>Editor's note</sourcexml></title>
                <codeblock> &lt;leg:level&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="2"&gt; &lt;leg:heading&gt;
                    &lt;title&gt;General&lt;/title&gt;&lt;/leg:heading&gt; &lt;leg:levelbody&gt;
                    &lt;leg:level-not-in-force&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="3"&gt; &lt;leg:levelbody&gt; &lt;leg:bodytext&gt;
                    &lt;p&gt;&lt;text&gt;Editor's note: Alta. Reg. 52/2005 s2 was amended prior to
                    coming into force by Alta. Reg. 171/2005 s2 effective September 8, 2005 (Alta.
                    Gaz. September 30, 2005)&lt;/text&gt;&lt;/p&gt; &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level-not-in-force&gt;
                    ... &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt;
                </codeblock>
            </example>

            <example>
                <title>Target XML 1 : For <sourcexml>Editor's note</sourcexml></title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"&gt; &lt;primlaw:level
                    leveltype="unclassified"&gt; &lt;heading&gt; &lt;title&gt;General&lt;/title&gt;
                    &lt;/heading&gt; &lt;primlaw:bodytext&gt; ... &lt;note
                    notetype="instruction"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Editor's note:
                    Alta. Reg. 52/2005 s2 was amended prior to coming into force by Alta. Reg.
                    171/2005 s2 effective September 8, 2005 (Alta. Gaz. September 30,
                    2005)&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt; ...
                    &lt;/primlaw:bodytext&gt; &lt;/primlaw:level&gt; &lt;/primlaw:level&gt;
                </codeblock>
            </example>
            <ul>
                <li> If text of <sourcexml>leg:level-not-in-force</sourcexml> starts with the normal
                    text "<b>NOTE:</b>" OR "<b>Note:</b>" but it is an official note that is added
                    by the government then should be converted as
                        <targetxml>legisinfo:status[@statuscode="effectivenessinfo"]</targetxml> and
                        <targetxml>note</targetxml> with attributes
                        <targetxml>[@notesource="official"]</targetxml> and
                        <targetxml>[@notetype="other"]</targetxml>.</li>
                <li> Complete target Xpath is:
                        <targetxml>primlaw:level[@leveltype="amendment"]/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="effectivenessinfo"]</targetxml>.
                        <note>Conversion needs to place
                            <targetxml>primlaw:level[@leveltype="amendment"]</targetxml> in order to
                        distinguish it from other <targetxml>primlaw:level</targetxml>.</note>
                </li>
            </ul>
            <example>
                <title>Source XML 2 : For normal text.</title>
                <codeblock> &lt;leg:level&gt; &lt;leg:level-vrnt&gt; &lt;leg:levelbody&gt;
                    &lt;leg:level-not-in-force&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="3"&gt; &lt;leg:levelbody&gt; &lt;leg:bodytext&gt;
                    &lt;l&gt;&lt;li&gt;&lt;lilabel/&gt;&lt;p&gt;&lt;text&gt;TRANSITIONAL
                    PROVISION&lt;/text&gt;&lt;/p&gt;&lt;/li&gt;&lt;/l&gt; &lt;/leg:bodytext&gt;
                    &lt;leg:bodytext&gt; &lt;l virtual-nesting="2"&gt; &lt;li&gt; &lt;lilabel/&gt;
                    &lt;p&gt; &lt;text&gt;NOTE: AR 308/2000 s7 effective January 1, 2001 (Alta. Gaz.
                    Dec. 30, 2000), contained the following transitional provision:&lt;/text&gt;
                    &lt;/p&gt; &lt;/li&gt; &lt;/l&gt; &lt;/leg:bodytext&gt; ....
                    &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level-not-in-force&gt;
                    &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; </codeblock>
            </example>

            <example>
                <title>Target XML 2: For normal text.</title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"&gt; &lt;primlaw:level
                    leveltype="amendment"&gt; &lt;primlaw:levelinfo&gt;
                    &lt;primlawinfo:primlawinfo&gt; &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:statusgroup&gt; &lt;legisinfo:status
                    statuscode="effectivenessinfo"/&gt; &lt;/legisinfo:statusgroup&gt;
                    &lt;/legisinfo:legisinfo&gt; &lt;/primlawinfo:primlawinfo&gt;
                    &lt;/primlaw:levelinfo&gt; &lt;primlaw:bodytext&gt; &lt;list&gt;
                    &lt;listitem&gt; &lt;bodytext&gt; &lt;p&gt; &lt;list&gt; &lt;listitem&gt;
                    &lt;bodytext&gt; &lt;p&gt; &lt;list&gt; &lt;listitem&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt;TRANSITIONAL PROVISION&lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/listitem&gt; &lt;/list&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/listitem&gt; &lt;/list&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/listitem&gt;
                    &lt;/list&gt; &lt;/primlaw:bodytext&gt; &lt;primlaw:bodytext&gt; &lt;note
                    notesource="official" notetype="other"&gt; &lt;bodytext&gt; &lt;list&gt;
                    &lt;listitem&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;NOTE: AR 308/2000 s7
                    effective January 1, 2001 (Alta. Gaz. Dec. 30, 2000), contained the following
                    transitional provision:&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/listitem&gt; &lt;/list&gt; &lt;/bodytext&gt; &lt;/note&gt;
                    &lt;/primlaw:bodytext&gt; &lt;/primlaw:level&gt; .... &lt;/primlaw:level&gt;
                </codeblock>
            </example>
            <note>Please refer the common instruction for handling <b>[@virtual-nesting]</b>
                attribute mapping.</note>
            <section>
                <title>Changes</title>
                <p>2014-08-12: <ph id="change_20140812_ss">Instruction and example updated for
                        handling of <b>Editior Notes</b> and <b>Official Notes</b> which is comes
                        under the <sourcexml>leg:level-not-in-force</sourcexml> markup and its
                        mapped with <targetxml>note[@notetype="instruction"]</targetxml> and
                            <targetxml>note[@notesource="official"]</targetxml>.</ph></p>
                <p>2013-08-02: <ph id="change_20130802_ss">Instruction and example updated for
                        adding <targetxml>primlaw:level[@leveltype="amendment"]</targetxml> as
                        wrapper element for <sourcexml>leg:level-not-in-force</sourcexml>
                        handling.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA06-Regulation\leg.level-not-in-force.dita  -->
    <!--<xsl:message>CA06-Regulation_leg.level-not-in-force.xsl requires manual development!</xsl:message> -->

    <xsl:template match="leg:level-not-in-force">

        <xsl:choose>
            <xsl:when
                test="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]">
                <primlaw:bodytext>
                    <note notetype="instruction">
                        <bodytext>
                            <p>
                                <xsl:apply-templates select="descendant::text[not(starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l'))][following-sibling::*[1][self::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]]]"/>
                                <xsl:apply-templates
                                    select="descendant::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l')]"/>

                            </p>
                        </bodytext>
                    </note>
                    <xsl:if
                        test="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[1][not(starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l'))][following-sibling::text]">
                        <p>
                            <xsl:apply-templates
                                select="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[not(starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l'))][preceding-sibling::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l') or starts-with(., 'NOTE:') or starts-with(., 'Note:')]]"
                            />
                        </p>
                    </xsl:if>
                </primlaw:bodytext>
            </xsl:when>
            <xsl:when
                test="child::leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[starts-with(., 'Note:') or starts-with(., 'NOTE:')]">
                <primlaw:level leveltype="amendment">
                    <xsl:apply-templates select="leg:level-vrnt/leg:heading"/>
                    <primlaw:levelinfo>
                        <primlawinfo:primlawinfo>
                            <legisinfo:legisinfo>
                                <legisinfo:statusgroup>
                                    <legisinfo:status statuscode="effectivenessinfo"
                                    > </legisinfo:status>
                                </legisinfo:statusgroup>
                            </legisinfo:legisinfo>
                        </primlawinfo:primlawinfo>
                    </primlaw:levelinfo>
                    <primlaw:bodytext>
                        <note notesource="official" notetype="other">
                            <bodytext>
                                <p>

                                    <xsl:apply-templates
                                        select="descendant::text[starts-with(., 'NOTE:') or starts-with(., 'Note:')]"/>

                                </p>
                            </bodytext>
                        </note>
                        <xsl:if
                            test="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[1][following-sibling::text]">
                            <p>
                                <xsl:apply-templates
                                    select="leg:level-vrnt/leg:levelbody/leg:bodytext/p/text[preceding-sibling::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l') or starts-with(., 'NOTE:') or starts-with(., 'Note:')]]"
                                />
                            </p>
                        </xsl:if>
                    </primlaw:bodytext>
                    <xsl:apply-templates select="(descendant::leg:level-vrnt[child::leg:marginal-note][not(descendant::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l') or starts-with(., 'NOTE:') or starts-with(., 'Note:')])] | descendant::leg:bodytext[not(descendant::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l') or starts-with(., 'NOTE:') or starts-with(., 'Note:')])])"/>
                </primlaw:level>
            </xsl:when>
            <xsl:otherwise>
                <primlaw:level leveltype="amendment">
                    <primlaw:levelinfo>
                        <primlawinfo:primlawinfo>
                            <legisinfo:legisinfo>
                                <legisinfo:statusgroup>
                                    <legisinfo:status statuscode="effectivenessinfo"
                                    > </legisinfo:status>
                                </legisinfo:statusgroup>
                            </legisinfo:legisinfo>
                        </primlawinfo:primlawinfo>
                    </primlaw:levelinfo>
                    <xsl:apply-templates select="descendant::leg:bodytext | descendant::leg:level-vrnt/leg:levelbody/leg:level/leg:level-vrnt"/>
                </primlaw:level>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
