<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
    xmlns:functx="http://www.functx.com" version="2.0" exclude-result-prefixes="#all">
    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.num">
        <title>leg:num <lnpid>id-CA07-14025</lnpid></title>
        <body>
            <section> When <sourcexml>leg:num</sourcexml> contains just text then it will get
                converted into
                    <targetxml>ref:citations/ref:cite4thisresource/@citetype="reporter"</targetxml>
                and create child <targetxml>lnci:cite/lnci:content</targetxml> to capture the text. </section>

            <example>
                <title>Mapping of <sourcexml>leg:num</sourcexml> with text only</title>
                <codeblock> &lt;leg:num&gt;OSC STAFF NOTICE 51-333 Notice&lt;/leg:num&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt; &lt;lnci:content&gt;OSC STAFF NOTICE 51-333
                    Notice&lt;/lnci:content&gt; &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt;
                    &lt;/ref:citations&gt; </codeblock>
            </example>
            <section>
                <note>If no <sourcexml>leg:num</sourcexml> exists in the document with text in it,
                    then we need to create
                        <targetxml>ref:citations/ref:cite4thisresource/@citetype="reporter"</targetxml>
                    and also create child <targetxml>lnci:cite/lnci:content</targetxml> and capture
                    the <b>first</b>
                    <sourcexml>leg:officialnum</sourcexml> text in it.</note>
                <note>If the value of <xref
                        href="../../common_newest/Rosetta_leg.num_ln.user-displayed-LxAdv-classify.classification.dita"
                            ><sourcexml>leg:num/@ln.user-displayed="false"</sourcexml></xref> is
                        <b>solsak</b> , we have seperate handling for this.</note>
            </section>
            <example>
                <title>If No <sourcexml>leg:num</sourcexml> exit in the document</title>
                <codeblock> &lt;leg:info&gt; &lt;leg:num
                    ln.user-displayed="false"&gt;solsak&lt;/leg:num&gt; &lt;!- - does’t have
                    &lt;leg:num&gt; with text in it - - &gt; &lt;leg:officialnum&gt;SA 2011, c.
                    C-11.5&lt;/leg:officialnum&gt; &lt;leg:officialnum&gt;[Bill 25,
                    2011]&lt;/leg:officialnum&gt; ...... &lt;/leg:info&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;primlawinfo:primlawinfo&gt; &lt;classify:classification
                    classscheme="legislation.indicator"&gt; &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;solsak&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt; &lt;/classify:classitem&gt;
                    &lt;/classify:classification&gt; &lt;/primlawinfo:primlawinfo&gt;
                    &lt;ref:citations&gt; &lt;ref:cite4thisresource citetype="reporter"&gt;
                    &lt;lnci:cite&gt; &lt;lnci:content&gt;SA 2011, c. C-11.5&lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt; &lt;/ref:cite4thisresource&gt; &lt;/ref:citations&gt;
                    &lt;primlawinfo:primlawinfo&gt; ..... &lt;primlawinfo:identifier
                    idtype="officialnum"&gt;SA 2011, c. C-11.5&lt;/primlawinfo:identifier&gt;
                    &lt;primlawinfo:identifier idtype="officialnum"&gt;[Bill 25,
                    2011]&lt;/primlawinfo:identifier&gt; &lt;/primlawinfo:primlawinfo&gt;
                </codeblock>
            </example>
            <section>
                <title>changes</title>
                <p>2014-06-27 : <ph id="change_20140627_SSX">Updated instruction and example to add
                        attribute
                        <sourcexml>ref:cite4thisresource/@citetype="reporter"</sourcexml></ph></p>
                <p>2014-05-29 : <ph id="change_20140529_SSX"> Added instruction and example, when NO
                            <b>leg:num</b> exists with text in it Webteam # 260692</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.num.dita  -->


    <xsl:variable name="sourceLanguage" select="/LEGDOC/docinfo/docinfo:doc-lang/@lang"/>

    <xsl:variable name="dpsiRestricted">
        <!-- no ref:cite4thisresource or alternate language versions should be created for these restricted dpsis.
            they get ref:citations/ref:parallelcite[@citetype="reporter"] -->
        <xsl:if
            test="
                /LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'dpsi'] = ('0U95',
                '0U96',
                '0U9A',
                '0U9B',
                '0U9S',
                '0U9T',
                '0U9V',
                '0U9W',
                '0U9X',
                '0U9Y',
                '0UA4',
                '0UA5',
                '0UA6',
                '0UA7',
                '0UAN',
                '0UAO',
                '0UAP',
                '0UAQ',
                '0UCM',
                '0UCN',
                '0UCO',
                '0UCP',
                '0UCV',
                '0UCW',
                '0UCX',
                '0UCY',
                '0UD9',
                '0UDA',
                '0UDB',
                '0UDC',
                '0UDF',
                '0UDG',
                '0UDL',
                '0UDM',
                '0UDN',
                '0UDO',
                '0UDT',
                '0UDU',
                '0UDV',
                '0UEE',
                '0UEF',
                '0UEG',
                '0UEJ',
                '0UFB',
                '0UFC',
                '0UFD',
                '0UFE',
                '0UFT',
                '0UFU',
                '0UHJ',
                '0UHK',
                '0UHL',
                '0UHM',
                '0UI1',
                '0UI2',
                '0UI3',
                '0UI4',
                '0UJ2',
                '0UJ3',
                '0UJ8',
                '0UJ9',
                '0UJA',
                '0UJB',
                '0UN0',
                '0UN5',
                '0UN6',
                '0UNO',
                '0UNP',
                '0UNZ',
                '0UOD',
                '0UOE',
                '0UOJ',
                '0UOK',
                '0UOS',
                '0UOT',
                '0UOV',
                '0UPV',
                '0UPW',
                '0UPX',
                '0UPY',
                '0US1',
                '0US6',
                '0US7',
                '0USC',
                '0USD',
                '0USP',
                '0UTB',
                '0UTC',
                '0UVY',
                '0UVZ')">
            <xsl:value-of select="'true'"/>
        </xsl:if>
    </xsl:variable>

    <xsl:variable name="citationTranslationTable">
        <!-- the identification of the source language and a term will trigger the translation process.
    subterms are translations that only kick in in the context of that term itself. Order
    of sub/terms matters because we don't want to translate substring of larger strings that translate differently first.
    These terms are stream-specific, while I don't think the list of DPSIs really is.
        -->
        <terms>
            <term en="SI" fr="TR"/>
            <term en="C.R.C." fr="C.R.C."/>
            <term en="SOR" fr="DORS"/>
            <term en="N.B. Reg." fr="Règl. du N.-B."/>
            <term en="RSQ" fr="LRQ"/>
            <term en="CQLR" fr="RLRQ"/>
            <subterm en="Repealed" fr="Abrogée"/>

            <subterm en="Repeal Schedules" fr="Annexe abrogratives"/>
            <subterm en="Repeal Sch" fr="ann abrogative"/>
            <subterm en="Table of Contents" fr="Table des matières"/>
            <subterm en="Appendix" fr="appendice"/>
            <subterm en="Preamble" fr="Préambule"/>
            <subterm en="Schedule" fr="annexe"/>
            <subterm en="Long Title" fr="Titre intégral"/>
            <subterm en="Short Title" fr="Titre abrégé"/>

            <subterm en="TP" fr="DT"/>
            <subterm en="RP" fr="DC"/>
            <subterm en="Form" fr="formule"/>
            <subterm en="Part" fr="Partie"/>
            <subterm en="Index" fr="Indice"/>
            <subterm en="Sch" fr="Ann"/>
            <subterm en="SCH" fr="ANN"/>
            <subterm en="s." fr="art."/>
            <subterm en="No." fr="no"/>
            <subterm en="c." fr="ch."/>
            <subterm en="(2nd Supp.)" fr="(2e suppl.)"/>
            <subterm en="(3rd Supp.)" fr="(3e suppl.)"/>
            <subterm en="(4th Supp.)" fr="(4e suppl.)"/>
            <subterm en="(5th Supp.)" fr="(5e suppl.)"/>
            <!-- <subterm en="Repeal Schedules" fr="Annexe abrogratives"/>
            <subterm en="Repeal Sch" fr="ann abrogative"/>
            <subterm en="Table of Contents" fr="Table des matières"/>
            <subterm en="Long Title" fr="Titre intégral"/>
            <subterm en="Short Title" fr="Titre abrégé"/>-->
            <subterm en="Enactment Clause" fr="Formule d'édiction"/>
            <!-- do Enactment Clause last because it does weird things in interaction with Form-->
        </terms>
    </xsl:variable>

    <xsl:variable name="citationContent">
        <!-- use leg:num if it has non-solsak content, otherwise use first leg:officialnum
        This is the pinpoint citation for the specific doc. -->
        <citationContent>
            <xsl:choose>
                <xsl:when
                    test="//leg:info[1]/leg:num[child::* or text()][not(contains(., 'solsak'))]">
                    <xsl:copy-of
                        select="//leg:info[1]/leg:num[child::* or text()][not(contains(., 'solsak'))]/node()"
                    />
                </xsl:when>
                <xsl:when test="//leg:info[1]/leg:officialnum[1][child::* or text()]">
                    <xsl:copy-of select="//leg:info[1]/leg:officialnum[1]/node()"/>
                </xsl:when>
            </xsl:choose>
        </citationContent>
    </xsl:variable>
    
    <xsl:variable name="citationTextPossibilities">
        <xsl:value-of select="string($citationContent)"/>
    </xsl:variable>


    <xsl:template match="leg:num[contains(., 'solsak')]" mode="solsak">
        <classify:classification classscheme="legislation.indicator">
            <classify:classitem>
                <classify:classitem-identifier>
                    <classify:classname>solsak</classify:classname>
                </classify:classitem-identifier>
            </classify:classitem>
        </classify:classification>
    </xsl:template>

    <xsl:template name="createRefCitations">
        <xsl:if test="$citationContent/citationContent/node()">
            <ref:citations>
                <xsl:choose>
                    <xsl:when test="$dpsiRestricted = 'true'">
                        <!-- restricted dpsi 'WK' sources ONLY get this parallelcite and nothing else. Customers don't want them
                            searched on in the same way as our proprietary collection -->
                        <ref:parallelcite citetype="reporter">
                            <xsl:choose>
                                <xsl:when test="$citationContent/citationContent/ci:cite">
                                    <xsl:apply-templates
                                        select="$citationContent/citationContent/node() except text()[preceding-sibling::node()[1][self::ci:cite]]"/>
                                    <!-- suppresses last text node sucked into lnci:content here -->
                                </xsl:when>
                                <xsl:otherwise>
                                    <lnci:cite>
                                        <lnci:content>
                                            <xsl:apply-templates select="$citationContent/citationContent/node()"/>
                                        </lnci:content>
                                    </lnci:cite>
                                </xsl:otherwise>
                            </xsl:choose>
                        </ref:parallelcite>
                    </xsl:when>
                    <xsl:otherwise>
                        <ref:cite4thisresource>
                            <xsl:attribute name="citetype">
                                <xsl:text>reporter</xsl:text>
                            </xsl:attribute>
                            <xsl:choose>
                                <xsl:when test="$citationContent/citationContent/ci:cite">
                                    <xsl:apply-templates
                                        select="$citationContent/citationContent/node() except text()[preceding-sibling::node()[1][self::ci:cite]]"/>
                                    <!-- suppresses last text node sucked into lnci:content here -->
                                </xsl:when>
                                <xsl:otherwise>
                                    <lnci:cite>
                                        <lnci:content>
                                            <xsl:apply-templates
                                                select="$citationContent/citationContent/node()"/>
                                        </lnci:content>
                                    </lnci:cite>
                                </xsl:otherwise>
                            </xsl:choose>

                        </ref:cite4thisresource>
                        <!-- create act level citation for first act docs.
                        does not apply to restricted dpsi 'WK' docs.
                        always pull content from leg:officialnum regardless of
                        where we pull content from for the citation because 
                        leg:num will often have pinpoint info for the doc while
                        leg:officialnum refers to the act level itself-->
                        <xsl:if test="$first_act = 'true'">
                            <ref:cite4thisresource>
                                <lnci:cite type="act">
                                    <lnci:content>
                                        <xsl:apply-templates
                                            select="
                                                if (/LEGDOC/leg:body/leg:info/leg:officialnum[1]//ci:content) then
                                                    //LEGDOC/leg:body/leg:info/leg:officialnum[1]//ci:content/node()
                                                else
                                                    //LEGDOC/leg:body/leg:info/leg:officialnum[1]/text()"
                                        />
                                    </lnci:content>
                                </lnci:cite>
                            </ref:cite4thisresource>
                        </xsl:if>
                        <xsl:choose>
                            <xsl:when
                                test="
                                    $sourceLanguage = 'en' and (some $i in $citationTranslationTable/terms/term/@en
                                        satisfies (contains($citationTextPossibilities , $i)))">
                                <!-- alt language version detected, create parallelcite translate English to French -->
                                <ref:parallelcite citetype="parallel">
                                    <lnci:cite>
                                        <lnci:content>
                                            <xsl:for-each
                                                select="$citationContent/citationContent/text() | $citationContent//ci:content/text() | $citationContent//ci:content//ci:span/text()">
                                                <!-- translate is now in globalFunctions.xsl -->
                                                <xsl:call-template name="translate">
                                                    <xsl:with-param name="string" select="."/>
                                                    <xsl:with-param name="old"
                                                        select="$citationTranslationTable/terms/*/@en/string()"/>
                                                    <xsl:with-param name="new"
                                                        select="$citationTranslationTable/terms/*/@fr/string()"/>
                                                    
                                                </xsl:call-template>
                                            </xsl:for-each>
                                        </lnci:content>
                                    </lnci:cite>
                                </ref:parallelcite>
                            </xsl:when>
                            <xsl:when
                                test="
                                    $sourceLanguage = 'fr' and (some $i in $citationTranslationTable/terms/term/@fr
                                    satisfies (contains($citationTextPossibilities , $i)))">
                                <!-- alt language version detected, create parallelcite translate French to English -->
                                <ref:parallelcite citetype="parallel">
                                    <lnci:cite>
                                        <lnci:content>
                                            <xsl:for-each
                                                select="$citationContent/citationContent/text() | $citationContent//ci:content/text() | $citationContent//ci:content//ci:span/text()">
                                                <xsl:call-template name="translate">
                                                    <xsl:with-param name="string" select="."/>
                                                    <xsl:with-param name="old"
                                                        select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@fr/string()"/>
                                                    <xsl:with-param name="new"
                                                        select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@en/string()"
                                                    />
                                                </xsl:call-template>
                                            </xsl:for-each>
                                        </lnci:content>
                                    </lnci:cite>
                                </ref:parallelcite>
                            </xsl:when>
                        </xsl:choose>

                    </xsl:otherwise>
                </xsl:choose>

            </ref:citations>
        </xsl:if>
    </xsl:template>

    <xsl:template match="ci:content[ancestor::leg:num or ancestor::leg:officialnum]" priority="25">
        <lnci:content>
            <xsl:apply-templates/>
            <xsl:apply-templates select="parent::ci:cite/following-sibling::text()[1]"/>
        </lnci:content>
    </xsl:template>


    <!--This template is called from doc:metadata and to be honest doesn't even use leg:num; I just left that in to 
        avoid a named tempate in doc:metadata module.  -->

    <xsl:template match="leg:num" mode="doc-related-content-alt-lang">
        <xsl:if test="not($dpsiRestricted = 'true')">
            <xsl:choose>
                <xsl:when
                    test="
                        $sourceLanguage = 'en' and (some $i in $citationTranslationTable/terms/term/@en
                        satisfies (contains($citationTextPossibilities , $i)))">

                    <!-- alt language version detected, create doc:related-content translate English to French -->
                    <doc:related-content>
                        <doc:related-content-grp content-type="alternate-language-version">
                            <doc:related-content-item>
                                <doc:related-content-link>
                                    <ref:lnlink service="TRAVERSE">
                                        <ref:marker>
                                            <xsl:text>French Version</xsl:text>
                                        </ref:marker>
                                        <ref:locator>
                                            <ref:locator-key>
                                                <ref:key-name name="normcite"/>
                                                <ref:key-value>
                                                  <xsl:attribute name="value">
                                                  <xsl:for-each
                                                  select="$citationContent/citationContent/text() | $citationContent//ci:content/text() | $citationContent//ci:content//ci:span/text()">
                                                      <xsl:call-template name="translate">
                                                          <xsl:with-param name="string" select="normalize-space(.)"/>
                                                          <xsl:with-param name="old"
                                                              select="$citationTranslationTable/terms/*/@en/string()"/>
                                                          <xsl:with-param name="new"
                                                              select="$citationTranslationTable/terms/*/@fr/string()"/>                                                          
                                                      </xsl:call-template>
                                                  </xsl:for-each>
                                                  </xsl:attribute>
                                                </ref:key-value>
                                            </ref:locator-key>
                                            <ref:locator-params>
                                                <proc:param name="normprotocol" value="CAEditorial"/>
                                                <proc:param name="countrycode" value="CA"/>
                                                <proc:param name="targetdoclang">
                                                  <xsl:attribute name="value" select="'fr-CA'"/>
                                                </proc:param>
                                            </ref:locator-params>
                                        </ref:locator>
                                    </ref:lnlink>
                                </doc:related-content-link>
                            </doc:related-content-item>
                        </doc:related-content-grp>
                    </doc:related-content>

                </xsl:when>
                <xsl:when
                    test="
                        $sourceLanguage = 'fr' and (some $i in $citationTranslationTable/terms/term/@fr
                        satisfies (contains($citationTextPossibilities , $i)))">
                    <!-- alt language version detected, create parallelcite translate French to English -->
                    <doc:related-content>
                        <doc:related-content-grp content-type="alternate-language-version">
                            <doc:related-content-item>
                                <doc:related-content-link>
                                    <ref:lnlink service="TRAVERSE">
                                        <ref:marker>
                                            <xsl:text>English Version</xsl:text>
                                        </ref:marker>
                                        <ref:locator>
                                            <ref:locator-key>
                                                <ref:key-name name="normcite"/>
                                                <ref:key-value>
                                                  <xsl:attribute name="value">
                                                  <xsl:for-each
                                                  select="$citationContent/citationContent/text() | $citationContent//ci:content/text() | $citationContent//ci:content//ci:span/text()">
                                                      <xsl:call-template name="translate">
                                                          <xsl:with-param name="string" select="normalize-space(.)"/>
                                                          <xsl:with-param name="old"
                                                              select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@fr/string()"/>
                                                          <xsl:with-param name="new"
                                                              select="$citationTranslationTable/terms/*[not(@replaceAsWord = 'yes')]/@en/string()"
                                                          />
                                                      </xsl:call-template>
                                                  </xsl:for-each>
                                                  </xsl:attribute>
                                                </ref:key-value>
                                            </ref:locator-key>
                                            <ref:locator-params>
                                                <proc:param name="normprotocol" value="CAEditorial"/>
                                                <proc:param name="countrycode" value="CA"/>
                                                <proc:param name="targetdoclang">
                                                  <xsl:attribute name="value" select="'en-CA'"/>
                                                </proc:param>
                                            </ref:locator-params>
                                        </ref:locator>
                                    </ref:lnlink>
                                </doc:related-content-link>
                            </doc:related-content-item>
                        </doc:related-content-grp>
                    </doc:related-content>
                </xsl:when>
            </xsl:choose>
        </xsl:if>
    </xsl:template>

    

</xsl:stylesheet>
