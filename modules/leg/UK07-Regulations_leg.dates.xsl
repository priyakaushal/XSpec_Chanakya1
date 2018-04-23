<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita docinfo leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates">
        <title>leg:dates <lnpid>id-UK07-28213</lnpid></title>
        <body>
            <section>
                <p><sourcexml>leg:dates</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:dates</targetxml>, and children are populated as below:</p>
                <ul>
                    <li>
                        <p><sourcexml>leg:enactdate</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml> and children are described as below:</p>
                        <ul>
                            <li>
                                <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:enactdate</targetxml> element and populated as
                                    below:</p>
                                <ul>
                                    <li>
                                        <p><sourcexml>date/@day</sourcexml> becomes <targetxml>primlawinfo:enactdate/@day</targetxml></p>
                                    </li>
                                    <li>
                                        <p><sourcexml>date/@month</sourcexml> becomes <targetxml>primlawinfo:enactdate/@month</targetxml></p>
                                    </li>
                                    <li>
                                        <p><sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:enactdate/@year</targetxml></p>
                                    </li>
                                </ul>
                                <p>
                                    <b>Populating the attribute <targetxml>@normdate</targetxml></b> These below rules are applicable for <targetxml>primlawinfo:assentdate</targetxml>,
                                        <targetxml>primlawinfo:enactdate</targetxml>, <targetxml>primlawinfo:presenteddate</targetxml> and <targetxml>primlawinfo:effdate</targetxml>. <ul>
                                        <li>Using leg:enactdate as an example if one or more of the three date values (year, month or day) are absent, then primlawinfo:enactdate/@normdate should not be populated.</li>
                                        <li>The <sourcexml>@normdate</sourcexml> should be populated with the values of date elements within New Lexis. </li>
                                        <li>Using case:decisiondate as an example the ru: case:decisiondate/date/@year, case:decisiondate/date/@month and case:decisiondate/date/@day concatenated and separated by a single
                                            hyphen. The values of case:decisiondate/date/@month and case:decisiondate/date/@day should be padded with zeroes so that they are 2 digits. </li>
                                    </ul>
                                    <note>The format of the content of all <targetxml>date</targetxml> elements must be in 'YYYY-MM-DD'.</note></p>
                                <note>The format of the content of <targetxml>primlawinfo:enactdate</targetxml> elements must be in 'YYYY-MM-DD'</note>
                                <note>If <sourcexml>leg:enactdate</sourcexml> has only PCDTA then convert <sourcexml>leg:enactdate</sourcexml> into <targetxml>primlawinfo:enactdate</targetxml>.</note>
                                <note>When we have CDATA in <sourcexml>date</sourcexml> or <sourcexml>primlawinfo:enactdate</sourcexml> element then CDATA will comes under <targetxml>primlawinfo:enactdate</targetxml> in
                                    target.</note>
                                <pre>
&lt;leg:dates&gt;
    &lt;leg:enactdate&gt;
        &lt;date day="21" month="06" year="2011"&gt;Made&lt;/date&gt;
        &lt;date day="21" month="06" year="2011"&gt;     21st June 2011&lt;/date&gt;
    &lt;/leg:enactdate&gt;
&lt;/leg:dates&gt;

<b>Becomes</b>
                
&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
        &lt;primlawinfo:enactdate year="2011" month="06" day="21" normdate="2011-06-21"&gt;Made
            &lt;date-text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;21st June 2011&lt;/date-text&gt;
        &lt;/primlawinfo:enactdate&gt;
&lt;/primlawinfo:primlawinfo&gt;
              </pre>
                                <note>If multiple <sourcexml>date</sourcexml> elements with different dates occur within <sourcexml>leg:enactdate</sourcexml> then create multiple
                                        <targetxml>primlawinfo:enactdate</targetxml>. For more clarification please refer the below example.</note>
                                <pre>
&lt;leg:dates&gt;
    &lt;leg:enactdate&gt;Coming into Operationas to Rules 1, 3 and 4 - - - &lt;date day="01"
        month="10" year="1986"&gt;1st October 1986&lt;/date&gt;as to Rules 2, 5 and 6 - - -
        &lt;date day="01" month="01" year="1987"&gt;1st January
            1987&lt;/date&gt;&lt;/leg:enactdate&gt;
&lt;/leg:dates&gt;                

<b>Becomes</b>

&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
        &lt;primlawinfo:enactdate year="1986" month="10" day="01" normdate="1986-10-01"&gt;Coming into Operationas to Rules 1, 3 and 4 - - - 
            &lt;date-text&gt;1st October 1986&lt;/date-text&gt;
        &lt;/primlawinfo:enactdate&gt;
        &lt;primlawinfo:enactdate year="1987" month="01" day="01" normdate="1987-01-01"&gt;as to Rules 2, 5 and 6 - - -
            &lt;date-text&gt;1st January
                1987&lt;/date-text&gt;
        &lt;/primlawinfo:enactdate&gt;
    &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;              </pre>
                            </li>
                            <li>
                                <note>If <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield</sourcexml> has attribute <sourcexml>@searchtype="LEG-ENACT-DATE"</sourcexml> then in NewLexis markup it will be
                                    mapped to <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml></note>
                                <pre>
&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield searchtype="LEG-ENACT-DATE"
        &gt;2004-04-30&lt;/docinfo:custom-metafield&gt;
    &lt;docinfo:custom-metafield name="enact-date"&gt;20040430&lt;/docinfo:custom-metafield&gt;
    ...
&lt;/docinfo:custom-metafields&gt;

<b>Becomes</b>

&lt;primlawinfo:dates&gt;
    &lt;primlawinfo:enactdate&gt;30th April 2004&lt;/primlawinfo:enactdate&gt;
&lt;/primlawinfo:dates&gt;
                                                             </pre>
                            </li>
                        </ul>

                    </li>
                    <li>
                        <p><sourcexml>leg:effdate</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate</targetxml> and children are described as below:</p>
                        <ul>
                            <li>
                                <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:effdate</targetxml> element and populated as
                                    below:</p>
                                <ul>
                                    <li>
                                        <p><sourcexml>date/@day</sourcexml> becomes <targetxml>primlawinfo:effdate/@day</targetxml></p>
                                    </li>
                                    <li>
                                        <p><sourcexml>date/@month</sourcexml> becomes <targetxml>primlawinfo:effdate/@month</targetxml></p>
                                    </li>
                                    <li>
                                        <p><sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:effdate/@year</targetxml></p>
                                    </li>
                                </ul>
                                <p><b>Populating the attribute <targetxml>@normdate</targetxml></b>as mentioned above.</p>
                                <note>The format of the content of <targetxml>primlawinfo:effdate</targetxml> elements must be in 'YYYY-MM-DD'</note>
                                <note>Multiple date elements occur within <sourcexml>leg:effdate</sourcexml> are mark-up errors and only the element around the actual date text will be used in conversion. And remaining
                                        <sourcexml>date</sourcexml> will be suppressed (not content) from conversion.</note>
                                <note>If <sourcexml>leg:effdate</sourcexml> has only PCDTA then convert <sourcexml>leg:effdate</sourcexml> into <targetxml>primlawinfo:effdate</targetxml>.</note>
                                <pre>
&lt;leg:dates&gt;
    &lt;leg:effdate&gt;Coming into &lt;date day="25" month="07" year="2011"&gt;force&lt;/date&gt;
        &lt;date day="25" month="07" year="2011"&gt;     25th July 2011&lt;/date&gt;
    &lt;/leg:effdate&gt;
&lt;/leg:dates&gt;

<b>Becomes</b>

&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
        ..........
        &lt;primlawinfo:effdate year="2011" month="07" day="25" normdate="2011-07-25"&gt;Coming into force
            &lt;date-text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;25th July 2011&lt;/date-text&gt;
        &lt;/primlawinfo:effdate&gt;
        ............
    &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;
              </pre>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <p><sourcexml>leg:laidline</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:presenteddate</targetxml> and children are described as below:</p>
                        <ul>
                            <li>
                                <p><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes will be moved in the parent <targetxml>primlawinfo:presenteddate</targetxml> element and populated
                                    as below:</p>
                                <ul>
                                    <li>
                                        <p><sourcexml>date/@day</sourcexml> becomes <targetxml>primlawinfo:presenteddate/@day</targetxml></p>
                                    </li>
                                    <li>
                                        <p><sourcexml>date/@month</sourcexml> becomes <targetxml>primlawinfo:presenteddate/@month</targetxml></p>
                                    </li>
                                    <li>
                                        <p><sourcexml>date/@year</sourcexml> becomes <targetxml>primlawinfo:presenteddate/@year</targetxml></p>
                                    </li>
                                </ul>
                                <p><b>Populating the attribute <targetxml>@normdate</targetxml></b>as mentioned above.</p>
                                <note>The format of the content of <targetxml>primlawinfo:presenteddate</targetxml> elements must be in 'YYYY-MM-DD'</note>
                                <note>Multiple date elements occur within <sourcexml>leg:laidline</sourcexml> are mark-up errors and only the element around the actual date text will be used in conversion. And remaining
                                        <sourcexml>date</sourcexml> will be suppressed (not content) from conversion.</note>
                                <note>If <sourcexml>leg:laidline</sourcexml> has only PCDTA then convert <sourcexml>leg:laidline</sourcexml> into <targetxml>primlawinfo:presenteddate</targetxml>.</note>
                                <pre>
&lt;leg:dates&gt;
    &lt;leg:laidline&gt;Laid before Parliament     &lt;date day="28" month="06" year="2011"&gt;28th June 2011&lt;/date&gt;
    &lt;/leg:laidline&gt;
&lt;/leg:dates&gt;

<b>Becomes</b>
                
&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
        ..........
        &lt;primlawinfo:presenteddate year="2011" month="06" day="28" normdate="2011-06-28"&gt;Laid before Parliament&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;
            &lt;date-text&gt;28th June 2011&lt;/date-text&gt;
        &lt;/primlawinfo:presenteddate&gt;
        ............
    &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;
              </pre>

                            </li>
                        </ul>
                    </li>
                </ul>
                <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes are used for normalization, but the element content should remain the same.</note>
                <p>If multiple <sourcexml>leg:dates</sourcexml> elements occur within <sourcexml>leg:info</sourcexml> element, then conversion need to create single instance of <targetxml>primlawinfo:dates</targetxml>
                    during conversion and all children will be populated within it. Please see below example:</p>
                <pre>
&lt;leg:info&gt;
    ........
    &lt;leg:dates&gt;
        &lt;leg:enactdate&gt;
            &lt;date day="21" month="06" year="2011"&gt;Made&lt;/date&gt;
            &lt;date day="21" month="06" year="2011"&gt;     21st June 2011&lt;/date&gt;
        &lt;/leg:enactdate&gt;
    &lt;/leg:dates&gt;
    &lt;leg:dates&gt;
        &lt;leg:laidline&gt;Laid before Parliament     &lt;date day="28" month="06" year="2011"&gt;28th June 2011&lt;/date&gt;
        &lt;/leg:laidline&gt;
    &lt;/leg:dates&gt;
    &lt;leg:dates&gt;
        &lt;leg:effdate&gt;Coming into &lt;date day="25" month="07" year="2011"&gt;force&lt;/date&gt;
            &lt;date day="25" month="07" year="2011"&gt;     25th July 2011&lt;/date&gt;
        &lt;/leg:effdate&gt;
    &lt;/leg:dates&gt;
    ........
&lt;/leg:info&gt;

<b>Becomes</b>

&lt;primlawinfo:primlawinfo&gt;
    ........
    &lt;primlawinfo:dates&gt;
        &lt;primlawinfo:enactdate year="2011" month="06" day="21" normdate="2011-06-21"&gt;Made
            &lt;date-text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;21st June 2011&lt;/date-text&gt;
        &lt;/primlawinfo:enactdate&gt;
        &lt;primlawinfo:presenteddate year="2011" month="06" day="28" normdate="2011-06-28"&gt;Laid before Parliament&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;
            &lt;date-text&gt;28th June 2011&lt;/date-text&gt;
        &lt;/primlawinfo:presenteddate&gt;
        &lt;primlawinfo:effdate year="2011" month="07" day="25" normdate="2011-07-25"&gt;Coming into force
            &lt;date-text&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;25th July 2011&lt;/date-text&gt;
        &lt;/primlawinfo:effdate&gt;
    &lt;/primlawinfo:dates&gt;
    ........
&lt;/primlawinfo:primlawinfo&gt;
        
      </pre>


                <note>If multiple <sourcexml>date</sourcexml> elements with different dates occur within <sourcexml>leg:laidline</sourcexml> then create multiple <targetxml>primlawinfo:presenteddate</targetxml>. For more
                    clarification please refer the below example.</note>
                <pre>
&lt;leg:dates&gt;
    &lt;leg:laidline&gt;Laid before Parliament     &lt;date day="06" month="05" year="1977"&gt;6th May
            1977&lt;/date&gt;Coming into Operation—for purpose specifiedin regulation 1(2)     &lt;date
            day="09" month="05" year="1977"&gt;9th May 1977&lt;/date&gt;for all other purposes     &lt;date
            day="29" month="05" year="1977"&gt;29th May 1977&lt;/date&gt;&lt;/leg:laidline&gt;
&lt;/leg:dates&gt;                

<b>Becomes</b>

&lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
        &lt;primlawinfo:presenteddate day="06" month="05" year="1977" normdate="1977-05-06"&gt;Laid before Parliament    
                &lt;date-text&gt;6th May 1977&lt;/date-text&gt;
        &lt;/primlawinfo:presenteddate&gt;
        &lt;primlawinfo:presenteddate day="09" month="05" year="1977" normdate="1977-05-09"&gt;Coming into Operation—for purpose
            specifiedin regulation 1(2)     &lt;date-text&gt;9th May 1977&lt;/date-text&gt;
        &lt;/primlawinfo:presenteddate&gt;
        &lt;primlawinfo:presenteddate day="29" month="05" year="1977" normdate="1977-05-29"&gt;for all other purposes    
                &lt;date-text&gt;29th May 1977&lt;/date-text&gt;
        &lt;/primlawinfo:presenteddate&gt;
    &lt;/primlawinfo:dates&gt;
&lt;/primlawinfo:primlawinfo&gt;</pre>



                <note>Conversion should not create adjacent <targetxml>primlawinfo:dates</targetxml>. Data should be merged to single <targetxml>primlawinfo:dates</targetxml>.</note>
            </section>
            <section>
                <title>Changes</title>
                <p>2016-10-27 <ph id="change_20161027_HP">Added instruction for <targetxml>@normdate</targetxml> attribute that falls on various NL date elements.</ph></p>
                <p>2016-05-23: <ph id="change_20160523_AS">Mapping for <sourcexml>docinfo:custom-metafield searchtype="LEG-ENACT-DATE" </sourcexml> to <targetxml>primlawinfo:enactdate</targetxml></ph></p>
                <p>2015-08-26: <ph id="change_20150826_PS">Added note in <sourcexml>leg:enactdate</sourcexml> for handling of PCDATA under <sourcexml>date</sourcexml> or <sourcexml>primlawinfo:enactdate</sourcexml>,
                        Applicable on UK07, R 4.5 issue # 2379.</ph></p>
                <p>2015-08-12: <ph id="change_20150812_PSS">Added note and example in <sourcexml>leg:laidline</sourcexml> when multiple <sourcexml>date</sourcexml> element occuring, Applicable on UK07, R4.5 issue #
                        2365.</ph></p>
                <p>2015-08-12: <ph id="change_20150812_PS">Removed note from <sourcexml>leg:enacdate</sourcexml>, Applicable on UK07, R4.5 issue # 2362.</ph></p>
                <p>2014-09-05: <ph id="change_20140905_AS">Clarification on mapping of multiple <sourcexml>date</sourcexml> with different dates inside <sourcexml>leg:enacdate</sourcexml>.... Db issue #1863 </ph></p>
            </section>
        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.dates.dita  -->
    
    <xsl:template match="leg:dates">
        <xsl:if test="not(leg:assentdate/date/@year='9999' and count(*)=1)">
            <primlawinfo:dates>
                <xsl:apply-templates select="@* | node()"/>
            </primlawinfo:dates>
        </xsl:if>
    </xsl:template>

    <xsl:template match="leg:effdate">
        <primlawinfo:effdate>
            <xsl:call-template name="leg:dates-attributes"/>
            <xsl:apply-templates select="@* | node()"/>
        </primlawinfo:effdate>
    </xsl:template>
    
    <xsl:template match="leg:enactdate">
        <primlawinfo:enactdate>
            <xsl:call-template name="leg:dates-attributes"/>
            <xsl:apply-templates select="@* | node()"/>
        </primlawinfo:enactdate>
    </xsl:template>
    
    <xsl:template match="leg:repealdate">
        <primlawinfo:repealdate>
            <xsl:call-template name="leg:dates-attributes"/>
            <xsl:apply-templates select="@* | node()"/>
        </primlawinfo:repealdate>
    </xsl:template>
    
    <xsl:template match="leg:laidline">
        <primlawinfo:presenteddate>
            <xsl:call-template name="leg:dates-attributes"/>
            <xsl:apply-templates select="@* | node()"/>
        </primlawinfo:presenteddate>
    </xsl:template>
    
    <xsl:template match="leg:assentdate">
        <xsl:if test="not(date[1]/@year='9999')">
        <primlawinfo:assentdate>
            <xsl:call-template name="leg:dates-attributes"/>
            <xsl:apply-templates select="@* | node()"/>
        </primlawinfo:assentdate>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="leg:dates-attributes">
        <xsl:if test="date/@year">
            <xsl:attribute name="year" select="date[1]/@year"/>
        </xsl:if>
        <xsl:if test="date/@month">
            <xsl:attribute name="month" select="date[1]/@month"/>
        </xsl:if>
        <xsl:if test="date/@day">
            <xsl:attribute name="day" select="date[1]/@day"/>
        </xsl:if>
        <xsl:if test="date/@year and date/@month and date/@day">
            <xsl:attribute name="normdate" select="concat(date[1]/@year, '-', date[1]/@month, '-', date[1]/@day)"/>
        </xsl:if>
    </xsl:template>

    <xsl:template match="leg:effdate/date | leg:enactdate/date | leg:laidline/date | leg:assentdate/date | leg:repealdate">
        <xsl:variable name="month-sequence" select="number(@month)"/>
        <xsl:choose>
            <xsl:when test="following-sibling::date">
                <xsl:apply-templates select="node()"/>
                <date-text>
                    <xsl:choose>
                        <xsl:when test="@day = ('01', '21', '31', '1')">
                            <xsl:value-of select="number(@day)"/>
                            <xsl:text>st </xsl:text>
                            <xsl:value-of select="$months[$month-sequence]"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="@year"/>
                        </xsl:when>
                        <xsl:when test="@day = ('02', '22', '2')">
                            <xsl:value-of select="number(@day)"/>
                            <xsl:text>nd </xsl:text>
                            <xsl:value-of select="$months[$month-sequence]"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="@year"/>
                        </xsl:when>
                        <xsl:when test="@day = ('03', '23', '3')">
                            <xsl:value-of select="number(@day)"/>
                            <xsl:text>rd </xsl:text>
                            <xsl:value-of select="$months[$month-sequence]"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="@year"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="number(@day)"/>
                            <xsl:text>th </xsl:text>
                            <xsl:value-of select="$months[$month-sequence]"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="@year"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </date-text>
            </xsl:when>
            <xsl:otherwise>
                <date-text>
                    <xsl:choose>
                        <xsl:when test="@day = ('01', '21', '31', '1')">
                            <xsl:value-of select="number(@day)"/>
                            <xsl:text>st </xsl:text>
                            <xsl:value-of select="$months[$month-sequence]"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="@year"/>
                        </xsl:when>
                        <xsl:when test="@day = ('02', '22', '2')">
                            <xsl:value-of select="number(@day)"/>
                            <xsl:text>nd </xsl:text>
                            <xsl:value-of select="$months[$month-sequence]"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="@year"/>
                        </xsl:when>
                        <xsl:when test="@day = ('03', '23', '3')">
                            <xsl:value-of select="number(@day)"/>
                            <xsl:text>rd </xsl:text>
                            <xsl:value-of select="$months[$month-sequence]"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="@year"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="number(@day)"/>
                            <xsl:text>th </xsl:text>
                            <xsl:value-of select="$months[$month-sequence]"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="@year"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </date-text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="docinfo:custom-metafields/docinfo:custom-metafield[@searchtype = 'LEG-ENACT-DATE']">
        <xsl:variable name="datevalue" select="."/>
        <primlawinfo:dates>
            <primlawinfo:enactdate>
                <xsl:variable name="day" select="substring-after(substring-after($datevalue, '-'), '-')"/>
                <xsl:variable name="month-sequence" select="number(substring-before(substring-after($datevalue, '-'), '-'))"/>
                <xsl:variable name="year" select="substring-before($datevalue, '-')"/>
                <xsl:choose>
                    <xsl:when test="$day = ('01', '21', '31', '1')">
                        <xsl:value-of select="number($day)"/>
                        <xsl:text>st </xsl:text>
                        <xsl:value-of select="$months[$month-sequence]"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="@year"/>
                    </xsl:when>
                    <xsl:when test="$day = ('02', '22', '2')">
                        <xsl:value-of select="number($day)"/>
                        <xsl:text>nd </xsl:text>
                        <xsl:value-of select="$months[$month-sequence]"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="@year"/>
                    </xsl:when>
                    <xsl:when test="$day = ('03', '23', '3')">
                        <xsl:value-of select="number($day)"/>
                        <xsl:text>rd </xsl:text>
                        <xsl:value-of select="$months[$month-sequence]"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="@year"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="number($day)"/>
                        <xsl:text>th </xsl:text>
                        <xsl:value-of select="$months[$month-sequence]"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="@year"/>
                    </xsl:otherwise>
                </xsl:choose>
            </primlawinfo:enactdate>
        </primlawinfo:dates>
    </xsl:template>

</xsl:stylesheet>
