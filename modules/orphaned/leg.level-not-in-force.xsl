<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
    exclude-result-prefixes="dita glp leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level-not-in-force">
        <title>leg:level-not-in-force <lnpid>id-CA05-13622</lnpid></title>
        <body>
            <section>
                <ul>
                    <li class="- topic/li "> The conversion of
                            <sourcexml>leg:level-not-in-force</sourcexml> depends upon the following
                        scenarios: <ul>
                            <li> If text of <sourcexml>leg:level-not-in-force</sourcexml> starts
                                with the French <b>Note de l'éditeur:</b> or English <b>Editor’s
                                    note:</b> or <b>Editor's Note:</b> then convert it to
                                    <targetxml>note[@notetype="instruction"]</targetxml>. <note>
                                    <sourcexml>leg:level-not-in-force/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>
                                    and
                                        <sourcexml>leg:level-not-in-force/leg:level-vrnt/leg:levelbody/leg:bodytext/p/glp:note/p/text</sourcexml>
                                    becomes <targetxml>note</targetxml>. </note>
                                <note>These <b>French</b> or <b>English</b> may also start with
                                    square bracket <b>(i.e.[Note de l'éditeur: or [Editor’s
                                        note:</b>) then also convert it to
                                        <targetxml>note[@notetype="instruction"].</targetxml></note>
                                <note>Conversion needs to place
                                        <targetxml>primlaw:level/@leveltype="amendment"</targetxml>
                                    in order to distinguish it from other
                                        <targetxml>primlaw:level</targetxml>.</note>
                            </li> <li>If text of <sourcexml>leg:level-not-in-force</sourcexml>
                                starts with normal text <b>"NOTE:"</b> OR <b>"Note:"</b> but it is
                                an official note that is added by the government then convert it to
                                    <targetxml>legisinfo:status/
                                    @statuscode="effectivenessinfo"</targetxml> and
                                    <targetxml>note</targetxml> with attributes
                                    <targetxml>[@notesource="official"]</targetxml> and
                                    <targetxml>[@notetype="other"]</targetxml>, complete target
                                Xpath is: <targetxml>primlaw:level/@leveltype="amendment"/
                                    primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/
                                    @statuscode="effectivenessinfo"</targetxml>. <note>Conversion
                                    needs to place
                                        <targetxml>primlaw:level/@leveltype="amendment"</targetxml>
                                    in order to distinguish it from other
                                        <targetxml>primlaw:level</targetxml>.</note></li> </ul>
                    </li>

                    <li> kindly note that if the input documents are having PCDATA <b>ENACTMENT NOT
                            IN FORCE</b> within <sourcexml>leg:heading/title</sourcexml> in
                            <sourcexml>leg:level-not-in-force</sourcexml> then conversion needs to
                        place them in <targetxml>heading/subtitle</targetxml>. By using this
                        approach one can distinguish between legislative title and a normal title.
                        Also conversion needs to place <targetxml>heading/subtitle</targetxml> as
                        sibling of <targetxml>primlaw:levelinfo</targetxml>. Refer below example
                        (Source XML and Target XML 3). </li>

                    <li> kindly note that if the input documents are having PCDATA <b>TRANSITIONAL
                            PROVISION</b> within
                            <sourcexml>leg:levelbody/leg:bodytext/l/li/p/text</sourcexml> and
                            <sourcexml>leg:levelbody/leg:bodytext/p/text</sourcexml> in
                            <sourcexml>leg:level-not-in-force</sourcexml> then conversion needs to
                        place them in <targetxml>heading/subtitle</targetxml>. By using this
                        approach one can distinguish between legislative title and a normal title.
                        Also conversion needs to place <targetxml>heading/subtitle</targetxml> as
                        sibling of <targetxml>primlaw:levelinfo</targetxml>. Refer below example
                        (Source XML and Target XML 4 and 5). </li>
                    <li> kindly note that if the input documents are having PCDATA <b>RELATED
                            PROVISION</b> or <b>INTERIM PROVISION</b> or <b>DISPOSITION
                            TRANSITOIRE:</b> within
                            <sourcexml>leg:levelbody/leg:bodytext/l/li/p/text</sourcexml> and
                            <sourcexml>leg:levelbody/leg:bodytext/p/text</sourcexml> in
                            <sourcexml>leg:level-not-in-force</sourcexml> then conversion needs to
                        place them in <targetxml>heading/subtitle</targetxml>. By using this
                        approach one can distinguish between legislative title and a normal title.
                        Also conversion needs to place <targetxml>heading/subtitle</targetxml> as
                        sibling of <targetxml>primlaw:levelinfo</targetxml>. Refer below example
                        (Source XML and Target XML 6). </li>
                </ul>
                <note>
                    <p>Conversion should generate seperate <targetxml>note</targetxml> when
                            <sourcexml>leg:level-not-in-force</sourcexml> starts with the French
                            <b>Note de l'éditeur:</b> or English <b>Editor’s note:</b>. Refer below
                        example (Source XML and Target XML 6).</p>
                </note>
                <note>
                    <p>Conversion should generate seperate <targetxml>primlaw:bodytext</targetxml>
                        within <targetxml>primlaw:level</targetxml> for capturing PCDATA. Refer
                        below example (Source XML and Target XML 6).</p>
                </note>
            </section>


            <example>
                <title>Source XML 1 : For <sourcexml>Editor's note</sourcexml></title>
                <codeblock> &lt;leg:level&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="2"&gt; &lt;leg:levelbody&gt; &lt;leg:level&gt; &lt;leg:level-vrnt
                    searchtype="LEGISLATION" leveltype="2"&gt; &lt;leg:heading align="center"&gt;
                    &lt;title inline="true"&gt;SECTION&lt;/title&gt; &lt;desig&gt; &lt;designum
                    searchtype="SECT-NUM"&gt;487.0911&lt;/designum&gt; &lt;/desig&gt;
                    &lt;/leg:heading&gt; &lt;leg:levelbody&gt; &lt;leg:level&gt; &lt;leg:level-vrnt
                    leveltype="3"&gt; &lt;leg:marginal-note&gt;Review by Attorney
                    General&lt;/leg:marginal-note&gt;&lt;/leg:level-vrnt&gt; &lt;/leg:level&gt;
                    &lt;leg:bodytext&gt; &lt;p&gt; &lt;text&gt;487.0911 (1) On receipt of a notice
                    from the Commissioner of the Royal Canadian Mounted Police under subsection
                    5.2(1) of the DNA Identification Act that an order made under section 487.051 or
                    an authorization granted under section 487.091 appears to be defective, the
                    Attorney General shall review the order or authorization and the court
                    record.&lt;/text&gt; &lt;/p&gt; &lt;/leg:bodytext&gt; ...
                    &lt;leg:level-not-in-force&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="3"&gt; &lt;leg:levelbody&gt; &lt;leg:bodytext&gt; &lt;p&gt;
                    &lt;text&gt;Editor's note: S.C. 2005, c. 25, s. 11 was amended prior to coming
                    into force by S.C. 2007, c. 22, s. 21, effective June 22, 2007
                    (R.A.).&lt;/text&gt; &lt;/p&gt; &lt;/leg:bodytext&gt; &lt;/leg:levelbody&gt;
                    &lt;/leg:level-vrnt&gt; &lt;/leg:level-not-in-force&gt; &lt;/leg:levelbody&gt;
                    &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; &lt;/leg:levelbody&gt;
                    &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; </codeblock>
            </example>

            <example>
                <title>Target XML 1 : For <sourcexml>Editor's note</sourcexml></title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"&gt; &lt;primlaw:level
                    leveltype="unclassified"&gt; &lt;heading align="center"&gt;&lt;title
                    inline="true"
                    &gt;SECTION&lt;/title&gt;&lt;desig&gt;487.0911&lt;/desig&gt;&lt;/heading&gt;
                    &lt;primlaw:level leveltype="amendment"&gt; &lt;primlaw:bodytext&gt;
                    &lt;p&gt;&lt;text&gt;&lt;marginnote&gt;&lt;ref:anchor
                    id="CA-01"/&gt;&lt;bodytext&gt;&lt;p&gt;&lt;text&gt;Review by Attorney
                    General&lt;/text&gt;&lt;/p&gt;&lt;/bodytext&gt;&lt;/marginnote&gt;&lt;/text&gt;&lt;/p&gt;
                    &lt;/primlaw:bodytext&gt; &lt;/primlaw:level&gt; &lt;primlaw:bodytext&gt;
                    &lt;p&gt;&lt;text&gt;487.0911 (1) On receipt of a notice from the Commissioner
                    of the Royal Canadian Mounted Police under subsection 5.2(1) of the DNA
                    Identification Act that an order made under section 487.051 or an authorization
                    granted under section 487.091 appears to be defective, the Attorney General
                    shall review the order or authorization and the court
                    record.&lt;/text&gt;&lt;/p&gt; &lt;/primlaw:bodytext&gt; ... &lt;note
                    notetype="instruction"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Editor's note:
                    S.C. 2005, c. 25, s. 11 was amended prior to coming into force by S.C. 2007, c.
                    22, s. 21, effective June 22, 2007 (R.A.).&lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/note&gt; &lt;/primlaw:level&gt; &lt;/primlaw:level&gt;
                </codeblock>
            </example>

            <example>
                <title>Source XML 2 : For normal text.</title>
                <codeblock> &lt;leg:level&gt; &lt;leg:level-vrnt&gt; &lt;leg:levelbody&gt;
                    &lt;leg:level-not-in-force&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="3"&gt; &lt;leg:levelbody&gt; &lt;leg:bodytext&gt; &lt;l&gt;
                    &lt;li&gt; &lt;lilabel/&gt; &lt;p&gt; &lt;text&gt;ENACTMENT NOT IN
                    FORCE&lt;/text&gt; &lt;/p&gt; &lt;/li&gt; &lt;/l&gt; &lt;/leg:bodytext&gt;
                    &lt;leg:bodytext&gt; &lt;l&gt; &lt;li&gt; &lt;lilabel/&gt; &lt;p&gt;
                    &lt;text&gt;NOTE: On a date to be fixed by regulation (RSBC 1996 (Supp) -6-54
                    (2) (e) [SBC 1993-35-54] (Act, s. 66)) the following is enacted:&lt;/text&gt;
                    &lt;/p&gt; &lt;/li&gt; &lt;/l&gt; &lt;/leg:bodytext&gt; &lt;leg:bodytext&gt;
                    &lt;l&gt; &lt;li&gt; &lt;lilabel/&gt; &lt;p&gt; &lt;text&gt;(e) a prescribed
                    advocacy organization;&lt;/text&gt; &lt;/p&gt; &lt;/li&gt; &lt;/l&gt;
                    &lt;/leg:bodytext&gt; &lt;leg:bodytext&gt; &lt;l&gt; &lt;li&gt; &lt;lilabel/&gt;
                    &lt;p&gt; &lt;text&gt;RSBC 1996 (Supp) -6-54 (2) (e) [SBC 1993-35-54] NOT IN
                    FORCE, requires regulation (Act, s. 66).&lt;/text&gt; &lt;/p&gt; &lt;/li&gt;
                    &lt;/l&gt; &lt;/leg:bodytext&gt; &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level-not-in-force&gt; &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level&gt; </codeblock>
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
                    &lt;listitem&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;ENACTMENT NOT IN
                    FORCE&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/listitem&gt; &lt;/list&gt;
                    &lt;/primlaw:bodytext&gt; &lt;primlaw:bodytext&gt; &lt;note
                    notesource="official" notetype="other"&gt; &lt;bodytext&gt; &lt;list&gt;
                    &lt;listitem&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;NOTE: On a date to be
                    fixed by regulation (RSBC 1996 (Supp) -6-54 (2) (e) [SBC 1993-35-54] (Act, s.
                    66)) the following is enacted:&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/listitem&gt; &lt;/list&gt; &lt;/bodytext&gt; &lt;/note&gt;
                    &lt;/primlaw:bodytext&gt; &lt;primlaw:bodytext&gt; &lt;list&gt; &lt;listitem&gt;
                    &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;(e) a prescribed advocacy
                    organization;&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/listitem&gt;
                    &lt;/list&gt; &lt;/primlaw:bodytext&gt; &lt;primlaw:bodytext&gt; &lt;list&gt;
                    &lt;listitem&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;RSBC 1996 (Supp) -6-54
                    (2) (e) [SBC 1993-35-54] NOT IN FORCE, requires regulation (Act, s.
                    66).&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/listitem&gt; &lt;/list&gt;
                    &lt;/primlaw:bodytext&gt; &lt;/primlaw:level&gt; &lt;/primlaw:level&gt;
                </codeblock>
            </example>
            <example>
                <title>Source XML 3</title>
                <codeblock> &lt;leg:level&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="2"&gt; &lt;leg:heading align="center"&gt; &lt;title&gt;GENERAL
                    PROVISIONS RE COLLEGE&lt;/title&gt; &lt;/leg:heading&gt; &lt;leg:levelbody&gt;
                    &lt;leg:level-not-in-force&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="3"&gt; &lt;leg:heading&gt; &lt;title&gt;ENACTMENT NOT IN
                    FORCE&lt;/title&gt; &lt;/leg:heading&gt; &lt;leg:levelbody&gt;
                    &lt;leg:bodytext&gt; &lt;p&gt; &lt;text&gt;NOTE: On a day to be fixed by
                    proclamation (S.M. 2009, c. 15, s. 212 (Act, s. 263)), the following is
                    enacted:&lt;/text&gt; &lt;/p&gt; &lt;/leg:bodytext&gt; &lt;/leg:levelbody&gt;
                    &lt;/leg:level-vrnt&gt; &lt;/leg:level-not-in-force&gt; &lt;/leg:levelbody&gt;
                    &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; </codeblock>
            </example>

            <example>
                <title>Target XML 3</title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"&gt; &lt;heading&gt;
                    &lt;title&gt;GENERAL PROVISIONS RE COLLEGE&lt;/title&gt; &lt;/heading&gt;
                    &lt;primlaw:level leveltype="amendment"&gt; &lt;primlaw:levelinfo&gt;
                    &lt;primlawinfo:primlawinfo&gt; &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:statusgroup&gt; &lt;legisinfo:status
                    statuscode="effectivenessinfo"/&gt; &lt;/legisinfo:statusgroup&gt;
                    &lt;/legisinfo:legisinfo&gt; &lt;/primlawinfo:primlawinfo&gt;
                    &lt;/primlaw:levelinfo&gt; &lt;heading&gt; &lt;subtitle&gt;ENACTMENT NOT IN
                    FORCE&lt;/subtitle&gt; &lt;/heading&gt; &lt;primlaw:bodytext&gt; &lt;note
                    notesource="official" notetype="other"&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;NOTE: On a day to be fixed by proclamation (S.M. 2009, c. 15, s. 212
                    (Act, s. 263)), the following is enacted:&lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/note&gt; &lt;/primlaw:bodytext&gt; &lt;/primlaw:level&gt;
                    &lt;/primlaw:level&gt; </codeblock>
            </example>

            <example>
                <title>Source XML 4</title>
                <codeblock> &lt;leg:level&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="2"&gt; &lt;leg:levelbody&gt; &lt;leg:bodytext&gt; &lt;p&gt;
                    &lt;text&gt;-&lt;/text&gt; &lt;/p&gt; &lt;/leg:bodytext&gt;
                    &lt;leg:level-not-in-force&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="3"&gt; &lt;leg:levelbody&gt; &lt;leg:bodytext&gt; &lt;l&gt;
                    &lt;li&gt; &lt;lilabel/&gt; &lt;p&gt; &lt;text&gt;TRANSITIONAL
                    PROVISION&lt;/text&gt; &lt;/p&gt; &lt;/li&gt; &lt;/l&gt; &lt;/leg:bodytext&gt;
                    &lt;leg:bodytext&gt; &lt;l&gt; &lt;li&gt; &lt;lilabel/&gt; &lt;p&gt;
                    &lt;text&gt;NOTE: On March 31, 2010 (SBC 2010-2-108 (R.A.)), the following
                    transitional provision was enacted:&lt;/text&gt; &lt;/p&gt; &lt;/li&gt;
                    &lt;/l&gt; &lt;/leg:bodytext&gt; &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level-not-in-force&gt; &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level&gt; </codeblock>
            </example>

            <example>
                <title>Target XML 4</title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"&gt; &lt;primlaw:bodytext&gt;
                    &lt;p&gt; &lt;text&gt;-&lt;/text&gt; &lt;/p&gt; &lt;/primlaw:bodytext&gt;
                    &lt;primlaw:level leveltype="amendment"&gt; &lt;primlaw:levelinfo&gt;
                    &lt;primlawinfo:primlawinfo&gt; &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:statusgroup&gt; &lt;legisinfo:status
                    statuscode="effectivenessinfo"&gt; &lt;/legisinfo:status&gt;
                    &lt;/legisinfo:statusgroup&gt; &lt;/legisinfo:legisinfo&gt;
                    &lt;/primlawinfo:primlawinfo&gt; &lt;/primlaw:levelinfo&gt; &lt;heading&gt;
                    &lt;subtitle&gt;TRANSITIONAL PROVISION&lt;/subtitle&gt; &lt;/heading&gt;
                    &lt;primlaw:bodytext&gt; &lt;note notesource="official" notetype="other"&gt;
                    &lt;bodytext&gt; &lt;list&gt; &lt;listitem&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;NOTE: On March 31, 2010 (SBC 2010-2-108 (R.A.)), the following
                    transitional provision was enacted:&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/listitem&gt; &lt;/list&gt; &lt;/bodytext&gt; &lt;/note&gt;
                    &lt;/primlaw:bodytext&gt; &lt;/primlaw:level&gt; &lt;/primlaw:level&gt;
                </codeblock>
            </example>
            <example>
                <title>Source XML 5</title>
                <codeblock> &lt;leg:level&gt; &lt;leg:level-vrnt&gt; &lt;leg:levelbody&gt;
                    &lt;leg:level-not-in-force&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="3"&gt; &lt;leg:levelbody&gt; &lt;leg:bodytext&gt; &lt;p&gt;
                    &lt;text&gt;TRANSITIONAL PROVISION&lt;/text&gt; &lt;text&gt;NOTE: SBC 1998-33-3,
                    effective August 1, 1998 (B.C. Reg. 274/98) contained the following transitional
                    provision:&lt;/text&gt; &lt;/p&gt; &lt;/leg:bodytext&gt; &lt;!-- ... --&gt;
                    &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level-not-in-force&gt;
                    &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; </codeblock>
            </example>
            <example>
                <title>Target XML 5</title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"&gt; &lt;primlaw:level
                    leveltype="amendment"&gt; &lt;primlaw:levelinfo&gt;
                    &lt;primlawinfo:primlawinfo&gt; &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:statusgroup&gt; &lt;legisinfo:status
                    statuscode="effectivenessinfo"&gt; &lt;/legisinfo:status&gt;
                    &lt;/legisinfo:statusgroup&gt; &lt;/legisinfo:legisinfo&gt;
                    &lt;/primlawinfo:primlawinfo&gt; &lt;/primlaw:levelinfo&gt; &lt;heading&gt;
                    &lt;subtitle&gt;TRANSITIONAL PROVISION&lt;/subtitle&gt; &lt;/heading&gt;
                    &lt;primlaw:bodytext&gt; &lt;note notesource="official" notetype="other"&gt;
                    &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;NOTE: SBC 1998-33-3, effective August 1,
                    1998 (B.C. Reg. 274/98) contained the following transitional
                    provision:&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
                    &lt;/primlaw:bodytext&gt; &lt;/primlaw:level&gt; &lt;/primlaw:level&gt;
                </codeblock>
            </example>

            <example>
                <title>Source XML 6</title>
                <codeblock> &lt;leg:level&gt; &lt;leg:level-vrnt&gt; &lt;leg:levelbody&gt;
                    &lt;leg:level-not-in-force&gt; &lt;leg:level-vrnt searchtype="LEGISLATION"
                    leveltype="3"&gt; &lt;leg:levelbody&gt; &lt;leg:bodytext&gt; &lt;p&gt;
                    &lt;text&gt;RELATED PROVISION&lt;/text&gt; &lt;text&gt;NOTE: S.C. 2007, c. 35,
                    s. 185(2), effective December 14, 2007 (R.A.) contained the following
                    provision:&lt;/text&gt; &lt;text&gt;Subsection (1) applies to the 2008 and
                    subsequent taxation years of an individual.&lt;/text&gt; &lt;text&gt;Editor's
                    note: S.C. 2006, c. 4, s. 4(2), effective June 22, 2006 (R.A.), contained the
                    following provision:&lt;/text&gt; &lt;text&gt;Subsection (1) applies to the 2006
                    and subsequent taxation years of an individual, except that for the 2006
                    taxation year, the reference to "5%" in the description of A in clause
                    173(1)(d)(vi)(B) of the Act shall be read as "5.5%".&lt;/text&gt;
                    &lt;text&gt;Editor's note: S.C. 1997, c. 10, s. 22(4) and (5), effective March
                    20, 1997 (R.A.), contained the following provisions:&lt;/text&gt;
                    &lt;text&gt;Subsections (1) and (2) apply to the 1996 and subsequent taxation
                    years.&lt;/text&gt; &lt;text&gt;Subsection (3) applies for the purpose of
                    determining the net tax of a registrant for reporting periods ending after 1995
                    except that paragraph 173(3)(d) of the Act, as enacted by subsection (3),
                    applies to property or services acquired or imported for consumption or use in
                    operating a vehicle or aircraft in respect of which an election under subsection
                    173(2) of the Act becomes effective before 1996 as if the election had become
                    effective on January 1, 1996."&lt;/text&gt; &lt;text&gt;Editor's note: S.C.
                    1997, c. 10, s. 165(9), effective March 20, 1997 (R.A.), contained the following
                    provision: Subsection... (5) applies to the 1997 and subsequent taxation years
                    of individuals except that, with respect to the 1997 taxation year, the
                    reference to... "tax rate for the participating province" in clause
                    173(1)(d)(vi)(B) of the English version of the Act, as enacted by subsection
                    (5), shall be read as a reference to "6%"."&lt;/text&gt;
                    &lt;text&gt;TRANSITIONAL PROVISION&lt;/text&gt; &lt;text&gt;NOTE: S.C. 1997, c.
                    10, s. 260, effective March 20, 1997 (R.A.), contained the following
                    transitional provision:&lt;/text&gt; &lt;/p&gt; &lt;/leg:bodytext&gt;
                    &lt;leg:level&gt; &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="3"&gt;
                    &lt;leg:marginal-note&gt;Application to imported goods&lt;/leg:marginal-note&gt;
                    &lt;/leg:level-vrnt&gt; &lt;/leg:level&gt; &lt;leg:bodytext&gt; &lt;p&gt;
                    &lt;text&gt;Where a provision of the Excise Tax Act, as enacted or amended by
                    this Act, applies to goods imported on or after a particular day, that provision
                    also applies to goods imported before that day that were not accounted for under
                    section 32 of the Customs Act before that day.&lt;/text&gt; &lt;/p&gt;
                    &lt;/leg:bodytext&gt; &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level-not-in-force&gt; &lt;/leg:levelbody&gt; &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level&gt; </codeblock>
            </example>
            <example>
                <title>Target XML 6</title>
                <codeblock> &lt;primlaw:level leveltype="unclassified"&gt; &lt;primlaw:level
                    leveltype="amendment"&gt; &lt;primlaw:levelinfo&gt;
                    &lt;primlawinfo:primlawinfo&gt; &lt;legisinfo:legisinfo&gt;
                    &lt;legisinfo:statusgroup&gt; &lt;legisinfo:status
                    statuscode="effectivenessinfo"/&gt; &lt;/legisinfo:statusgroup&gt;
                    &lt;/legisinfo:legisinfo&gt; &lt;/primlawinfo:primlawinfo&gt;
                    &lt;/primlaw:levelinfo&gt; &lt;heading&gt; &lt;subtitle&gt;RELATED
                    PROVISION&lt;/subtitle&gt; &lt;/heading&gt; &lt;primlaw:bodytext&gt; &lt;note
                    notesource="official" notetype="other"&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;NOTE: S.C. 2007, c. 35, s. 185(2), effective December 14, 2007
                    (R.A.) contained the following provision:&lt;/text&gt; &lt;text&gt;Subsection
                    (1) applies to the 2008 and subsequent taxation years of an
                    individual.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
                    &lt;/primlaw:bodytext&gt; &lt;note notetype="instruction"&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt;Editor's note: S.C. 2006, c. 4, s. 4(2), effective June
                    22, 2006 (R.A.), contained the following provision:&lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/note&gt; &lt;primlaw:bodytext&gt; &lt;p&gt;
                    &lt;text&gt;Subsection (1) applies to the 2006 and subsequent taxation years of
                    an individual, except that for the 2006 taxation year, the reference to "5%" in
                    the description of A in clause 173(1)(d)(vi)(B) of the Act shall be read as
                    "5.5%".&lt;/text&gt; &lt;/p&gt; &lt;/primlaw:bodytext&gt; &lt;note
                    notetype="instruction"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Editor's note:
                    S.C. 1997, c. 10, s. 22(4) and (5), effective March 20, 1997 (R.A.), contained
                    the following provisions:&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/note&gt; &lt;primlaw:bodytext&gt; &lt;p&gt; &lt;text&gt;Subsections (1) and
                    (2) apply to the 1996 and subsequent taxation years.&lt;/text&gt;
                    &lt;text&gt;Subsection (3) applies for the purpose of determining the net tax of
                    a registrant for reporting periods ending after 1995 except that paragraph
                    173(3)(d) of the Act, as enacted by subsection (3), applies to property or
                    services acquired or imported for consumption or use in operating a vehicle or
                    aircraft in respect of which an election under subsection 173(2) of the Act
                    becomes effective before 1996 as if the election had become effective on January
                    1, 1996."&lt;/text&gt; &lt;/p&gt; &lt;/primlaw:bodytext&gt; &lt;note
                    notetype="instruction"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Editor's note:
                    S.C. 1997, c. 10, s. 165(9), effective March 20, 1997 (R.A.), contained the
                    following provision: Subsection... (5) applies to the 1997 and subsequent
                    taxation years of individuals except that, with respect to the 1997 taxation
                    year, the reference to... "tax rate for the participating province" in clause
                    173(1)(d)(vi)(B) of the English version of the Act, as enacted by subsection
                    (5), shall be read as a reference to "6%"."&lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/note&gt; &lt;heading&gt; &lt;subtitle&gt;TRANSITIONAL
                    PROVISION&lt;/subtitle&gt; &lt;/heading&gt; &lt;primlaw:bodytext&gt; &lt;note
                    notesource="official" notetype="other"&gt; &lt;bodytext&gt; &lt;p&gt;
                    &lt;text&gt;NOTE: S.C. 1997, c. 10, s. 260, effective March 20, 1997 (R.A.),
                    contained the following transitional provision:&lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/note&gt; &lt;/primlaw:bodytext&gt; &lt;primlaw:level
                    leveltype="unclassified"&gt; &lt;primlaw:bodytext&gt; &lt;p&gt; &lt;text&gt;
                    &lt;marginnote&gt; &lt;ref:anchor id="CA-13783-001"/&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;text&gt;Application to imported goods&lt;/text&gt; &lt;/p&gt;
                    &lt;/bodytext&gt; &lt;/marginnote&gt; &lt;/text&gt; &lt;/p&gt;
                    &lt;/primlaw:bodytext&gt; &lt;/primlaw:level&gt; &lt;primlaw:bodytext&gt;
                    &lt;p&gt; &lt;text&gt;Where a provision of the Excise Tax Act, as enacted or
                    amended by this Act, applies to goods imported on or after a particular day,
                    that provision also applies to goods imported before that day that were not
                    accounted for under section 32 of the Customs Act before that day.&lt;/text&gt;
                    &lt;/p&gt; &lt;/primlaw:bodytext&gt; &lt;/primlaw:level&gt;
                    &lt;/primlaw:level&gt; </codeblock>
            </example>


            <section>
                <title>Changes</title>
                <p>2014-11-10: <ph id="change_20141110_PS">Added note that <b>French</b> or
                            <b>English</b> may also start with square bracket <b>(i.e.[Note de
                            l'éditeur: or [Editor’s note:</b>) then also convert it to
                            <targetxml>note[@notetype="instruction"].</targetxml> and added a note
                        to create <targetxml>primlaw:level/@leveltype="amendment"</targetxml> for
                            <targetxml>note[@notetype="instruction"]</targetxml>. Applicable on
                        CA05.</ph></p>
                <p>2014-10-06: <ph id="change_20141006_PS">Added <b>Editor's Note:</b> for creation
                        of <targetxml>note[@notetype="instruction"]</targetxml>. Applicable on
                        CA05.</ph></p>
                <p>2014-08-13: <ph id="change_20140813_PS">Instruction and example updated for
                        handling of <b>Editior Notes</b> and <b>Official Notes</b> which is comes
                        under the <sourcexml>leg:level-not-in-force</sourcexml> markup and its
                        mapped with <targetxml>note[@notetype="instruction"]</targetxml> and
                            <targetxml>note[@notesource="official"]</targetxml>.</ph></p>
                <p>2014-07-14: <ph id="change_20140714_PS">Added Instruction when
                            <sourcexml>glp:note</sourcexml> is a child of
                            <sourcexml>leg:level-not-in-force/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>.
                        This change immediate applies to CA05.</ph></p>
                <p>2014-06-11: <ph id="change_20140611_PS">Added more identifiers <b>RELATED
                            PROVISION</b> or <b>INTERIM PROVISION</b> or <b>DISPOSITION
                            TRANSITOIRE:</b> for capturing in
                            <targetxml>heading/subtitle</targetxml>. This change immediate applies
                        to CA05.</ph></p>
                <p>2013-08-16: <ph id="change_20130816_vv">Added additional instructions and
                        examples to recognize TRANSITIONAL PROVISION when the input markup isn't
                        list</ph>.</p>
                <p>2013-07-30: <ph id="change_20130730_vv">Instruction and example updated for
                        adding <targetxml>primlaw:level/@leveltype="amendment"</targetxml> as
                        wrapper element for <sourcexml>leg:level-not-in-force</sourcexml>
                        handling.</ph></p>
                <p>2013-07-10: <ph id="change_20130710_vv">Instruction and example added for
                        handling special use case of <sourcexml>leg:level-not-in-force</sourcexml>
                        for the PCDATA <b>TRANSITIONAL PROVISION</b> captured within
                            <sourcexml>leg:bodytext/l/li/p/text</sourcexml></ph>.</p>
                <p>2013-06-04: <ph id="change_20130604_vv">Instruction and example added for
                        handling special use case of <sourcexml>leg:level-not-in-force</sourcexml>
                        for the PCDATA <b>ENACTMENT NOT IN FORCE</b> captured within
                            <sourcexml>leg:heading/title</sourcexml></ph>.</p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.level-not-in-force.dita  -->
    <!--<xsl:message>leg.level-not-in-force.xsl requires manual development!</xsl:message> -->

    	<xsl:template match="leg:level-not-in-force">
    	    <xsl:choose>
    	        <xsl:when test="descendant::text[starts-with(.,'Note:') or starts-with(.,'NOTE:')]">
    	            <primlaw:level>
    	                <xsl:attribute name="leveltype">
    	                    <xsl:text>amendment</xsl:text>
    	                </xsl:attribute>
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
    	                <xsl:apply-templates select="@* | node()"/>
    	            </primlaw:level>
    	        </xsl:when>
    	        <xsl:otherwise>
    	            <primlaw:level>
    	                <xsl:attribute name="leveltype">
    	                    <xsl:text>amendment</xsl:text>
    	                </xsl:attribute>
    	                <xsl:apply-templates select="@* | node()"/>
    	            </primlaw:level> 
    	        </xsl:otherwise>
    	    </xsl:choose>
	</xsl:template>

 <!--   <xsl:template match="leg:level-not-in-force">
        <xsl:if
            test="descendant::text[starts-with(., 'Editor''s note:') or starts-with(., 'Note de l''éditeur:') or starts-with(., '[Editor’s note:') or starts-with(., '[Note de l''éditeur:')]">
            <primlaw:level leveltype="amendment">
            <primlaw:bodytext>
                <note notetype="instruction">
                    <bodytext>
                        <xsl:apply-templates select="@* | node()"></xsl:apply-templates>
                    </bodytext>
                </note>
            </primlaw:bodytext>
            </primlaw:level>
        </xsl:if>

        <primlaw:level leveltype="amendment">
<!-\-            <primlaw:levelinfo>
                <primlawinfo:primlawinfo>
                    <legisinfo:legisinfo>
                        <legisinfo:statusgroup>
                            <legisinfo:status statuscode="effectivenessinfo"> </legisinfo:status>
                        </legisinfo:statusgroup>
                    </legisinfo:legisinfo>
                </primlawinfo:primlawinfo>

            </primlaw:levelinfo>-\->

            <xsl:if test="descendant::text[starts-with(., 'Note:')]">
                <primlaw:bodytext>
                    <note notesource="official" notetype="other">
                        <bodytext>
                            <p>
                                <!-\-<text>-\->
                                <xsl:apply-templates
                                    select="descendant::text[starts-with(., 'Note:')]"/>
                                <!-\-</text>-\->
                            </p>
                        </bodytext>
                    </note>
                </primlaw:bodytext>

            </xsl:if>
            <xsl:apply-templates select="@* |node()"/>
        </primlaw:level>

    </xsl:template>
-->
</xsl:stylesheet>
