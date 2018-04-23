<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    version="2.0" exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info.leg.history">
        <title>leg:info/leg:history <lnpid>id-CA05-13620</lnpid></title>
        <body>
            <section>
                <ul>
                    <li class="- topic/li ">
                        <sourcexml>leg:history</sourcexml> becomes
                            <targetxml>primlawhist:primlawhist</targetxml>. </li>
                    <li> If input documents are having scenario
                            <sourcexml>leg:history/p/leg:histnote</sourcexml> then conversion need
                        to make <targetxml>note</targetxml> (mapping for
                            <sourcexml>leg:histnote</sourcexml>) as sibling of
                            <targetxml>p</targetxml>. </li>
                </ul>
                <note>If column1 contents contains either <sourcexml>Royal Assent</sourcexml>
                    (English) or <sourcexml>Sanction royale</sourcexml> (French) and column2
                    contains <sourcexml>date</sourcexml> element or PCDATA contains date, then
                    create <targetxml>primlawinfo:assentdate</targetxml> in target. French date
                    format start with <b>"le"</b> i.e. <targetxml>&lt;entry colname="col2"&gt;le 30
                        mars 2001&lt;/entry&gt;</targetxml> For more clarification please refer the
                    example below.</note>
            </section>

            <example>
                <title>Source XML 1</title>
                <codeblock> &lt;leg:info&gt; &lt;leg:history&gt; &lt;p&gt; &lt;table
                    frame="all"&gt;&lt;tgroup cols="2"&gt;&lt;colspec colname="col1"
                    colwidth="1*"/&gt;&lt;colspec colname="col2" colwidth="3*"/&gt; &lt;tbody&gt;
                    &lt;row&gt; &lt;entry colname="col1"&gt;Royal Assent&lt;/entry&gt; &lt;entry
                    colname="col2"&gt; &lt;date&gt;May 30, 2000&lt;/date&gt;&lt;/entry&gt;
                    &lt;/row&gt; &lt;row&gt; &lt;entry colname="col1"&gt;Commencement:&lt;/entry&gt;
                    &lt;entry colname="col2"&gt; Act in force September 28, 2000
                    (Alta.&lt;p-limited&gt;Gaz. 2000, p. 2029).&lt;/p-limited&gt;&lt;/entry&gt;
                    &lt;/row&gt; &lt;row&gt; &lt;entry colname="col1"&gt;Version&lt;/entry&gt;
                    &lt;entry colname="col2"&gt;Royal Assent, May 30, 2000 [Act is 23
                    pp.]&lt;/entry&gt; &lt;/row&gt; &lt;/tbody&gt; &lt;/tgroup&gt; &lt;/table&gt;
                    &lt;/p&gt; &lt;/leg:history&gt; &lt;/leg:info&gt; </codeblock>
            </example>
            <example>
                <title>Target XML 1</title>
                <codeblock> &lt;primlawinfo:dates&gt; &lt;primlawinfo:assentdate&gt;May 30,
                    2000&lt;/primlawinfo:assentdate&gt; &lt;/primlawinfo:dates&gt;
                    &lt;legisinfo:legisinfo&gt; &lt;primlawhist:primlawhist&gt;
                    &lt;primlawhist:histgrp&gt; &lt;primlawhist:histitem&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;table frame="all"&gt; &lt;tgroup cols="2"&gt; &lt;colspec
                    colname="col1" colwidth="1*"/&gt; &lt;colspec colname="col2" colwidth="3*"/&gt;
                    &lt;tbody&gt; &lt;row&gt; &lt;entry colname="col1"&gt;Royal Assent&lt;/entry&gt;
                    &lt;entry colname="col2"&gt; &lt;date&gt;May 30, 2000&lt;/date&gt;
                    &lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
                    colname="col1"&gt;Commencement:&lt;/entry&gt; &lt;entry colname="col2"&gt; Act
                    in force September 28, 2000 (Alta.&lt;p&gt;&lt;text&gt;Gaz. 2000, p.
                    2029).&lt;/text&gt;&lt;/p&gt;&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
                    colname="col1"&gt;Version&lt;/entry&gt; &lt;entry colname="col2"&gt;Royal
                    Assent, May 30, 2000 [Act is 23 pp.]&lt;/entry&gt; &lt;/row&gt; &lt;/tbody&gt;
                    &lt;/tgroup&gt; &lt;/table&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/primlawhist:histitem&gt; &lt;/primlawhist:histgrp&gt;
                    &lt;/primlawhist:primlawhist&gt; &lt;/legisinfo:legisinfo&gt; </codeblock>
            </example>
            <example>
                <title>Source XML 2: <sourcexml>leg:history/p/leg:histnote</sourcexml>
                    scenario</title>
                <codeblock> &lt;leg:history&gt; &lt;p&gt; &lt;table frame="all"&gt; &lt;tgroup
                    cols="2"&gt; &lt;colspec colname="col1" colwidth="1*"/&gt; &lt;colspec
                    colname="col2" colwidth="3*"/&gt; &lt;tbody&gt; &lt;row&gt; &lt;entry
                    colname="col1"&gt;Royal Assent&lt;/entry&gt; &lt;entry colname="col2"&gt;
                    &lt;date&gt;April 26, 1999&lt;/date&gt; &lt;/entry&gt; &lt;/row&gt;
                    &lt;/tbody&gt; &lt;/tgroup&gt; &lt;/table&gt; &lt;leg:histnote&gt; &lt;glp:note
                    notetype="warning"&gt; &lt;p&gt;&lt;text&gt;Editor's Note: This document
                    contains the full text of sections 1 to 70 and the Schedule. The Appendices to
                    the Act are found in a separate document. Please conduct a cite search for
                    "S.B.C. 1999, c. 2" to obtain all relevant documents.Acts Affected: Adoption
                    Act, R.S.B.C. 1996, c. 5; Child, Family and Community Service Act, R.S.B.C.
                    1996, c. 46; Environmental Assessment Act, R.S.B.C. 1996, c. 119; Estate
                    Administration Act, R.S.B.C. 1996, c. 122; Expropriation Act, R.S.B.C. 1996, c.
                    125; Family Relations Act, R.S.B.C. 1996, c. 128; Financial Administration Act,
                    R.S.B.C. 1996, c. 138; Income Tax Act, R.S.B.C. 1996, c. 215; Interpretation
                    Act, .... &lt;/text&gt; &lt;/p&gt; &lt;/glp:note&gt; &lt;/leg:histnote&gt;
                    &lt;/p&gt; &lt;/leg:history&gt; </codeblock>
            </example>
            <example>
                <title>Target XML 2</title>
                <codeblock> &lt;primlawinfo:dates&gt; &lt;primlawinfo:assentdate&gt;April 26,
                    1999&lt;/primlawinfo:assentdate&gt; &lt;/primlawinfo:dates&gt;
                    &lt;legisinfo:legisinfo&gt; &lt;primlawhist:primlawhist&gt;
                    &lt;primlawhist:histgrp&gt; &lt;primlawhist:histitem&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;table frame="all"&gt; &lt;tgroup cols="2"&gt; &lt;colspec
                    colname="col1" colwidth="1*"/&gt; &lt;colspec colname="col2" colwidth="3*"/&gt;
                    &lt;tbody&gt; &lt;row&gt; &lt;entry colname="col1"&gt;Royal Assent&lt;/entry&gt;
                    &lt;entry colname="col2"&gt; &lt;date&gt;April 26, 1999&lt;/date&gt;
                    &lt;/entry&gt; &lt;/row&gt; &lt;/tbody&gt; &lt;/tgroup&gt; &lt;/table&gt;
                    &lt;/p&gt; &lt;note notetype="historical"&gt; &lt;bodytext&gt; &lt;note
                    notetype="warning"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;Editor's Note:
                    This document contains the full text of sections 1 to 70 and the Schedule. The
                    Appendices to the Act are found in a separate document. Please conduct a cite
                    search for "S.B.C. 1999, c. 2" to obtain all relevant documents.Acts Affected:
                    Adoption Act, R.S.B.C. 1996, c. 5; Child, Family and Community Service Act,
                    R.S.B.C. 1996, c. 46; Environmental Assessment Act, R.S.B.C. 1996, c. 119;
                    Estate Administration Act, R.S.B.C. 1996, c. 122; Expropriation Act, R.S.B.C.
                    1996, c. 125; Family Relations Act, R.S.B.C. 1996, c. 128; Financial
                    Administration Act, R.S.B.C. 1996, c. 138; Income Tax Act, R.S.B.C. 1996, c.
                    215; Interpretation Act, .... &lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
                    &lt;/note&gt; &lt;/bodytext&gt; &lt;/note&gt; &lt;/bodytext&gt;
                    &lt;/primlawhist:histitem&gt; &lt;/primlawhist:histgrp&gt;
                    &lt;/primlawhist:primlawhist&gt; &lt;/legisinfo:legisinfo&gt; </codeblock>
            </example>

            <example>
                <title>Source XML 3: French date format scenario</title>
                <codeblock> &lt;p&gt; &lt;table frame="all"&gt; &lt;tgroup cols="2"&gt; &lt;colspec
                    colname="col1" colwidth="1*"/&gt; &lt;colspec colname="col2" colwidth="3*"/&gt;
                    &lt;tbody&gt; &lt;row&gt; &lt;entry colname="col1"&gt;Sanction
                    royale&lt;/entry&gt; &lt;entry colname="col2"&gt;le 30 mars 2001&lt;/entry&gt;
                    &lt;/row&gt; &lt;row&gt; &lt;entry colname="col1"&gt;Version&lt;/entry&gt;
                    &lt;entry colname="col2"&gt;Sanction royale, le 30 mars 2001 [Version
                    électronique de la loi. Vérification non détaillée de la copie
                    papier.]&lt;/entry&gt; &lt;/row&gt; &lt;/tbody&gt; &lt;/tgroup&gt;
                    &lt;/table&gt; &lt;/p&gt; </codeblock>
            </example>
            <example>
                <title>Target XML 3</title>
                <codeblock> &lt;primlawinfo:dates&gt; &lt;primlawinfo:assentdate&gt;le 30 mars
                    2001&lt;/primlawinfo:assentdate&gt; &lt;/primlawinfo:dates&gt;
                    &lt;legisinfo:legisinfo&gt; &lt;primlawhist:primlawhist&gt;
                    &lt;primlawhist:histgrp&gt; &lt;primlawhist:histitem&gt; &lt;bodytext&gt;
                    &lt;p&gt; &lt;table frame="all"&gt; &lt;tgroup cols="2"&gt; &lt;colspec
                    colname="col1" colwidth="1*"/&gt; &lt;colspec colname="col2" colwidth="3*"/&gt;
                    &lt;tbody&gt; &lt;row&gt; &lt;entry colname="col1"&gt;Sanction
                    royale&lt;/entry&gt; &lt;entry colname="col2"&gt;le 30 mars 2001&lt;/entry&gt;
                    &lt;/row&gt; &lt;row&gt; &lt;entry colname="col1"&gt;Version&lt;/entry&gt;
                    &lt;entry colname="col2"&gt;Sanction royale, le 30 mars 2001 [Version
                    électronique de la loi. Vérification non détaillée de la copie
                    papier.]&lt;/entry&gt; &lt;/row&gt; &lt;/tbody&gt; &lt;/tgroup&gt;
                    &lt;/table&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/primlawhist:histitem&gt;
                    &lt;/primlawhist:histgrp&gt; &lt;/primlawhist:primlawhist&gt;
                    &lt;/legisinfo:legisinfo&gt; </codeblock>
            </example>

            <section>
                <title>Changes</title>
                <p>2014-08-12: <ph id="change_20140812_PS">Updated instruction for French date and
                        added example also.</ph></p>
                <p>2014-05-21: <ph id="change_20140521_AS">note to pull Royal Assent out of the bill
                        tracking table into <targetxml>primlaw:assentdate</targetxml>
                    </ph>.</p>
                <p>2013-04-08: <ph id="change_20130408_VV">Instruction and example added for
                            <sourcexml>leg:history/p/leg:histnote</sourcexml> scenario and Updated
                        target example for Target Example 1 and removed
                            <targetxml>@grptype="tableofamend"</targetxml></ph>.</p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.info.leg.history.dita  -->
    <!--	<xsl:message>leg.info.leg.history.xsl requires manual development!</xsl:message> -->

    <xsl:template match="leg:history" mode="table">

        <!--  Original Target XPath:  primlawhist:primlawhist   -->
        <xsl:if test="descendant::entry">
        <xsl:apply-templates select="descendant::entry[@colname = 'col1'][contains(., 'Royal Assent')]" mode="date"/>
        </xsl:if>
        <legisinfo:legisinfo>
            <primlawhist:primlawhist>
                <primlawhist:histgrp>
                    <primlawhist:histitem>
                        <bodytext>
                            <xsl:apply-templates select="@* | node()"/>
                        </bodytext>
                    </primlawhist:histitem>
                </primlawhist:histgrp>
            </primlawhist:primlawhist>
        </legisinfo:legisinfo>
       
    </xsl:template>


    <xsl:template match="entry[@colname = 'col1'][contains(., 'Royal Assent')]" mode='date'>
        <xsl:if test="following-sibling::entry[@colname = 'col2']">
            <primlawinfo:dates>
                <primlawinfo:assentdate>
                    <xsl:value-of select="following::date[1]"/>
                </primlawinfo:assentdate>
            </primlawinfo:dates>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
