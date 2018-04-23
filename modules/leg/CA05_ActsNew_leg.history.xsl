<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    version="2.0" exclude-result-prefixes="dita leg primlawinfo">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.history">
        <title>leg:history <lnpid>id-CA05-13618</lnpid></title>
        <body>
            <section>
                <ul>
                    <li class="- topic/li ">
                        <sourcexml>leg:history</sourcexml> becomes
                            <targetxml>primlawhist:primlawhist</targetxml>. </li>
                </ul>
                <note>If <sourcexml>leg:history</sourcexml> is the child of
                        <sourcexml>leg:bodytext</sourcexml> then
                        <targetxml>primlawhist:primlawhist</targetxml> will be sibling of
                        <targetxml>primlaw:bodytext</targetxml>.</note>
            </section>

            <example>
                <title>Source XML 1</title>
                <codeblock> &lt;leg:bodytext&gt; &lt;p&gt; &lt;text&gt;18 This Act does not affect
                    or interfere with the right of a person who is not a member of the institute to
                    practise as an accountant in British Columbia, or with the right of a person not
                    residing or having an office in British Columbia to use any designation as
                    accountant in British Columbia.&lt;/text&gt; &lt;/p&gt; &lt;leg:history&gt;
                    &lt;leg:tableofamend&gt; &lt;p&gt; &lt;text&gt; &lt;verbatim
                    verbatimclass="verbatim"&gt;&lt;nl/&gt; &lt;nl/&gt; ** Editor's Table
                    **&lt;nl/&gt; &lt;nl/&gt; Provision Changed by In force Authority&lt;nl/&gt;
                    &lt;nl/&gt; 18 2003-67-10 2004 Mar 24 BC Reg 87/04&lt;nl/&gt; &lt;nl/&gt;
                    *****&lt;/verbatim&gt; &lt;/text&gt; &lt;/p&gt; &lt;/leg:tableofamend&gt;
                    &lt;/leg:history&gt; &lt;/leg:bodytext&gt; </codeblock>
            </example>

            <example>
                <title>Target XML 1</title>
                <codeblock> &lt;primlaw:bodytext&gt; &lt;p&gt; &lt;text&gt;18 This Act does not
                    affect or interfere with the right of a person who is not a member of the
                    institute to practise as an accountant in British Columbia, or with the right of
                    a person not residing or having an office in British Columbia to use any
                    designation as accountant in British Columbia.&lt;/text&gt; &lt;/p&gt;
                    &lt;/primlaw:bodytext&gt; &lt;primlawhist:primlawhist&gt;
                    &lt;primlawhist:histgrp grptype="tableofamend"&gt; &lt;primlawhist:histitem&gt;
                    &lt;bodytext&gt; &lt;p&gt; &lt;text&gt; &lt;verbatim
                    verbatimclass="verbatim"&gt;&lt;proc:nl/&gt; &lt;proc:nl/&gt; ** Editor's Table
                    **&lt;proc:nl/&gt; &lt;proc:nl/&gt; Provision Changed by In force
                    Authority&lt;proc:nl/&gt; &lt;proc:nl/&gt; 18 2003-67-10 2004 Mar 24 BC Reg
                    87/04&lt;proc:nl/&gt; &lt;proc:nl/&gt; *****&lt;/verbatim&gt; &lt;/text&gt;
                    &lt;/p&gt; &lt;/bodytext&gt; &lt;/primlawhist:histitem&gt;
                    &lt;/primlawhist:histgrp&gt; &lt;/primlawhist:primlawhist&gt; </codeblock>
            </example>
            <example>
                <title>Source XML 2</title>
                <note>If column1 contents contains either <sourcexml>Royal Assent</sourcexml>
                    (English) or <sourcexml>Sanction royale</sourcexml> (French) and column2
                    contains <sourcexml>date</sourcexml>, then create
                        <targetxml>primlawinfo:assentdate</targetxml> in target. For more
                    clarification please refer the example below.</note>
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
                <title>Target XML 2</title>
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
            <section>
                <title>Changes</title>
                <p>2014-05-21: <ph id="change_20140521_AS">note to pull Royal Assent out of the bill
                        tracking table into <targetxml>primlaw:assentdate</targetxml>
                    </ph>.</p>
                <p>2013-05-07: <ph id="change_20130507_VV">Updated Target XML 2 by removing the
                            <targetxml>@grptype</targetxml></ph>.</p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.history.dita  -->
    <!--<xsl:message>leg.history.xsl requires manual development!</xsl:message> -->

    <xsl:template match="leg:history">
        <!--  Original Target XPath:  primlawhist:primlawhist   -->
        <primlawhist:primlawhist>
            <xsl:apply-templates select="@* | node()"/>
        </primlawhist:primlawhist>
    </xsl:template>
</xsl:stylesheet>
