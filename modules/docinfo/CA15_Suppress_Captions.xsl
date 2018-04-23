<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
    exclude-result-prefixes="dita">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15_Suppress_Captions">
        <title>Suppress Captions <lnpid>id-CA15-35427</lnpid></title>
        <body>
            <p>Some markup contains captions at the start of pcdata and the captions need to be
                suppressed. The markup and the captions are shown in the table below. The captions
                are shown as upper-case but coding should not be case-sensitive; the source data may
                be upper, lower, or mixed case. Captions are often followed by a space and the space
                should also be suppressed. <b>Note that a caption is suppressed only when it occurs
                    at the start of pcdata.</b></p>
            <p>Example:</p>
            <p>Source: <sourcexml>&lt;docinfo:doc-heading&gt;</sourcexml>Title: Choosing a Job
                Title: Industry Comparisons<sourcexml>&lt;/docinfo:doc-heading&gt;</sourcexml></p>
            <p>Target: <targetxml>&lt;dc:title&gt;</targetxml>Choosing a Job Title: Industry
                    Comparisons<targetxml>&lt;/dc:title&gt;</targetxml></p>


            <table id="table_atv_xvw_kr">
                <tgroup cols="2">
                    <tbody>
                        <row>
                            <entry>
                                <b>Source Markup</b>
                            </entry>
                            <entry>
                                <b>Captions To Suppress</b>
                            </entry>
                        </row>
                        <!-- empty rows here and below to help separate the groups -->
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry>&lt;contrib&gt;&lt;bio&gt;&lt;p&gt;&lt;text&gt;</entry>
                            <entry>
                                <p>AUTHOR:</p>
                                <p>AUTEUR:</p>
                                <p>AUTHOR/AUTEUR:</p>
                                <p>AUTHOR/AUTEURE:</p>
                                <p>AUTHORS/AUTEURES:</p>
                                <p>AUTHORS/AUTEURS:</p>
                                <p>AUTHORS:</p>
                                <p>AUTEUR/AUTHOR:</p>
                                <p>AUTEURE/AUTHOR:</p>
                                <p>AUTEURES/AUTHORS:</p>
                                <p>AUTEURS/AUTHORS:</p>
                                <p>AUTEURS/AUTHOR:</p>
                                <p>REVIEW:</p>
                                <p>REVIEW/CRITIQUE:</p>
                                <p>REVIEW/REVUE:</p>
                                <p>REVIEW/CHRONIQUE:</p>
                                <p>CHRONIQUE/REVIEW:</p>
                                <p>CHRONIQUE/REVIEWED:</p>
                                <p>CRITIQUE/REVIEW:</p>
                            </entry>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry>&lt;docinfo:doc-heading&gt;</entry>
                            <entry>
                                <p>TITLE:</p>
                                <p>TITRE:</p>
                                <p>TITLE/TITRE:</p>
                                <p>TITRE/TITLE:</p>
                            </entry>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry>&lt;docinfo:doc-heading&gt; <p><i>exceptional scenario</i>:
                                    suppress regardless of location within pcdata, i.e. these do not
                                    have to appear at start</p></entry>
                            <entry>
                                <p>CITED:</p>
                                <p>CITED/CITÉ:</p>
                                <p>CITÉ/CITED:</p>
                                <p>CITE/CITED:</p>
                            </entry>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry>&lt;docinfo:hier&gt; … &lt;heading&gt;&lt;title&gt;</entry>
                            <entry>
                                <p>TITLE:</p>
                                <p>TITRE:</p>
                                <p>TITLE/TITRE:</p>
                                <p>TITRE/TITLE:</p>
                            </entry>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry>&lt;jrnl:articletitle&gt;</entry>
                            <entry>
                                <p>TITLE:</p>
                                <p>TITRE:</p>
                                <p>TITLE/TITRE:</p>
                                <p>TITRE/TITLE:</p>
                            </entry>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry>&lt;jrnl:journalcite&gt;&lt;ci:cite
                                type="cite4thisdoc"&gt;&lt;ci:content&gt;</entry>
                            <entry>
                                <p>CITED:</p>
                                <p>CITED/CITÉ:</p>
                                <p>CITÉ/CITED:</p>
                                <p>CITE/CITED:</p>
                            </entry>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry/>
                        </row>
                        <row>
                            <entry>&lt;publication&gt;</entry>
                            <entry>
                                <p>SOURCE:</p>
                                <p>SOURCE/SOURCE:</p>
                            </entry>
                        </row>
                        <row>
                            <entry>&lt;publength&gt;</entry>
                            <entry>
                                <p>LENGTH:</p>
                            </entry>
                        </row>
                        <row>
                            <entry>&lt;copyright&gt;</entry>
                            <entry>
                                <p>COPYRIGHT:</p>
                            </entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <section>
                <title>Changes</title>
                <p>2016-04-01: <ph id="change_20160401_hp">Added caption variation AUTEURS/AUTHOR to
                        the suppress list: Webstar 6485528</ph></p>
                <p>2015-06-03: <ph id="change_201506035_jm">Added captions for docinfo:doc-heading,
                        four variations of CITED:. Included note that this is an exceptional
                        scenario. These captions are suppressed even if they do not occur at start
                        of pcdata. RFA 39.</ph></p>
                <p>2015-05-05: <ph id="change_20150505_AS">Added two captions. LENGTH: and
                        COPYRIGHT:. RFA 39.</ph></p>
                <p>2015-04-29: <ph id="change_20150429_AS">Added two captions. CRITIQUE/REVIEW: and
                        CITE/CITED: (without accent). And added rule to also suppress space
                        following a caption. RFA 39 and 36.</ph></p>
                <p>2015-03-26: <ph id="change_20150326_jm">New section. Concerns content, pcdata. No
                        impact for target xpaths. RFA 4.</ph></p>
            </section>
        </body>

    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15_Suppress_Captions.dita  -->
    <!--<xsl:message>CA15_Suppress_Captions.xsl requires manual development!</xsl:message> -->

  

    <!--</xsl:template>-->

</xsl:stylesheet>
