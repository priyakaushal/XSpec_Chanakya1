<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:functx="http://www.functx.com" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="#all">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.dates-to-LexisAdvance_decision.dates">
    <title>case:dates-to-decision:dates <lnpid>id-UK03-27419</lnpid></title>
    <body>
      <p>
        <ul>
          <li>
            <sourcexml>case:dates</sourcexml> becomes <targetxml>decision:dates</targetxml>. The child element is described below: <ul>
              <li>
                <sourcexml>case:dates/case:decisiondate/date</sourcexml> becomes <targetxml>decision:dates/decision:decisiondate/date-text</targetxml>. The attributes <sourcexml>date @day="" @month="" @year=""</sourcexml> becomes
                  <targetxml>decision:decisiondate @day="" @month="" @year=""</targetxml>. <note>The formatting of the <targetxml>date-text</targetxml> should not be normalized to YYYY-MM-DD. The attributes are used for normalization, but the element
                  content should remain the same but whitespace and comma should retain outside the <targetxml>date-text</targetxml> element.</note>
                <note>The source attribute <sourcexml>case:dates@display-name</sourcexml> can be ignored. LBU has indicated the standardized headings in the UX samples and will be handled in stylesheets.</note>
              </li>
            </ul>
            <pre>
&lt;case:dates display-name="Decision Date"&gt;
  &lt;case:decisiondate&gt;
    &lt;date day="14" month="06" year="2011"&gt;14 June 2011&lt;/date&gt;
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

<b>Becomes</b>
&lt;decision:dates&gt;
  &lt;decision:decisiondate day="14" month="06" year="2011"&gt;
    &lt;date-text&gt;14 June 2011&lt;/date-text&gt;
  &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

</pre>
          </li>
          <li>
            <p><note>If text (PCDATA) occuring inside <sourcexml>case:decisiondate</sourcexml> element then conversion need to create <targetxml>decision:decisiondate/date-text</targetxml> markup for capture the <u>PCDATA</u> in target. Refer below input
                and target examples.</note>
              <pre>

&lt;case:dates&gt;
  &lt;case:decisiondate&gt;13 July. The following judgments were delivered.&lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

<b>Becomes</b>

&lt;decision:dates&gt;
  &lt;decision:decisiondate&gt;
    &lt;date-text&gt;13 July. The following judgments were delivered.&lt;/date-text&gt;
  &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

</pre></p>
          </li>
        </ul>
        <note><p><b><u>Scenario 1st:</u></b> If "<sourcexml>case:decisiontype</sourcexml>" element is having attribute "<sourcexml>@searchtype</sourcexml>" with value "<b>OUT-OF-COURT</b>" then conversion need to convert
              <sourcexml>case:decisiondate</sourcexml> to <targetxml>decision:decisiondate@decisiontype</targetxml> with attribute value "<b>settlement</b>". Refer below input and output example:
            <pre>

&lt;case:info&gt;
    &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
            &lt;date day="18" month="07" year="1994"&gt;18 July 1994&lt;/date&gt;
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
    ...
    &lt;case:decisiontype searchtype="OUT-OF-COURT"&gt;Out of Court&lt;/case:decisiontype&gt;
&lt;/case:info&gt;

<b>Becomes</b>


&lt;casedigest:caseinfo&gt;
&lt;decision:dates&gt;
  &lt;decision:decisiondate day="18" month="07" year="1994" decisiontype="settlement"&gt;
    &lt;date-text&gt;18 July 1994&lt;/date-text&gt;
  &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;
  ...
  &lt;casedigest:decisionresult&gt;Out of Court&lt;/casedigest:decisionresult&gt;
&lt;/casedigest:caseinfo&gt;
...
&lt;metaitem name="SettledOrTrial" value="Settled"/&gt;


</pre>
          </p>
          <p><b><u>Scenario 2nd:</u></b> If "<sourcexml>case:decisiontype</sourcexml>" element is having attribute "<sourcexml>@searchtype</sourcexml>" comes with among values "<b>'COURT-APPROVED' OR 'COURT'</b>" then conversion need to convert
              <sourcexml>case:decisiondate</sourcexml> to <targetxml>decision:decisiondate@decisiontype</targetxml> with attribute value "<b>verdict</b>". Refer below input and output example:
            <pre>

&lt;case:info&gt;
    &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
            &lt;date day="18" month="07" year="1994"&gt;18 July 1994&lt;/date&gt;
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
    ...
    &lt;case:decisiontype searchtype="COURT-APPROVED"&gt;Court Approved&lt;/case:decisiontype&gt;
&lt;/case:info&gt;

<b>Becomes</b>


&lt;casedigest:caseinfo&gt;
&lt;decision:dates&gt;
  &lt;decision:decisiondate day="18" month="07" year="1994" decisiontype="verdict"&gt;
    &lt;date-text&gt;18 July 1994&lt;/date-text&gt;
  &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;
  ...
  &lt;casedigest:decisionresult&gt;Court Approved&lt;/casedigest:decisionresult&gt;
&lt;/casedigest:caseinfo&gt;
...
&lt;metaitem name="SettledOrTrial" value="Trial"/&gt;


</pre>
          </p>
        </note>
        <note> If "<sourcexml>case:decisiondate</sourcexml> having two <sourcexml>date's</sourcexml> markup then we create two <targetxml>decision:decisiondate</targetxml> in a target. </note> Refer below input and output example: <pre>
<![CDATA[
<case:dates>
   <case:decisiondate>Opinions 
      <date day="15" month="09" year="1993">September 15, 1993</date>and
      <date day="06" month="04" year="1995">April 6, 1995</date>
   </case:decisiondate>
</case:dates>
]]>
<b>Becomes</b>
<![CDATA[

 <decision:dates>
      <decision:decisiondate day="15" month="09" year="1993">Opinions
            <date-text>September 15, 1993</date-text>
      </decision:decisiondate>
      <decision:decisiondate day="06" month="04" year="1995">and
            <date-text>April 6, 1995</date-text>
      </decision:decisiondate>
</decision:dates>

]]>      
      </pre>
      </p>
      <section>
        <title>Changes</title>
        <p>2017-02-23: <ph id="change_20170223_RS">Added the note and exmaple for handling having two date in <sourcexml>case:decisiondate</sourcexml>.</ph></p>
        <p>2017-01-31: <ph id="change_20170131_SS">Fixed typo error for updating case:decisiontype to <targetxml>decision:decisiondate</targetxml>.</ph></p>
        <p>2016-05-11: <ph id="change_20160511_SS">Including the correction of a typographic error and refer the updated instruction of "<sourcexml>case:decisiontype</sourcexml>".</ph></p>
        <p>2016-03-18: <ph id="change_20160318_SS">Instructions have been added on how to handle to create some specific <targetxml>@decisiontype</targetxml> attribute values insdie the target "decision:decisiondate".</ph></p>
        <p>2015-09-09: <ph id="change_20150909_SS">Instructions have been added on how to handle text (PCDATA) occuring in <sourcexml>case:decisiondate</sourcexml> markup. R4.5 Content Issue List #2389.</ph></p>
        <p>2014-01-24: <ph id="change_20140124_SS">Added the note and example for handling the attribute <sourcexml>[@display-name]</sourcexml> in <sourcexml>case:dates</sourcexml> element.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.dates-to-LexisAdvance_decision.dates.dita  -->

  <xsl:template match="case:dates">
    <decision:dates>
      <xsl:apply-templates select="@* | node()"/>
    </decision:dates>
  </xsl:template>

  <xsl:template match="case:dates[parent::case:judgments]">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>

  <xsl:template match="case:dates/@display-name"/>
  
  <xsl:template match="case:decisiondate">
    <decision:decisiondate>
      <xsl:apply-templates select="./date/@*"/>
      <xsl:apply-templates/>
    </decision:decisiondate>
  </xsl:template>

  <xsl:template match="text()[parent::case:decisiondate and not(preceding-sibling::* or following-sibling::*)]">
    <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:value-of select="."/>
    </date-text>
  </xsl:template>

  <xsl:template match="case:decisiondate/date/@day[. = '00']" priority="1">
    <xsl:attribute name="day">
      <xsl:value-of select="'01'"/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="case:decisiondate/date/@day[matches(., '^(0[1-9]|[12][0-9]|3[01])$')]">
    <xsl:attribute name="day">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="case:decisiondate/date/@month">
    <xsl:attribute name="month">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="case:decisiondate/date/@year">
    <xsl:attribute name="year">
      <xsl:value-of select="."/>
    </xsl:attribute>
    <xsl:choose>
      <xsl:when test="parent::date/@day[. = '00'] and parent::date/@month">
        <xsl:attribute name="normdate">
          <xsl:value-of select="concat(., '-', parent::date/@month, '-', '01')"/>
        </xsl:attribute>
      </xsl:when>
      <xsl:when test="parent::date/@day[matches(., '^(0[1-9]|[12][0-9]|3[01])$')] and parent::date/@month">
        <xsl:attribute name="normdate">
          <xsl:value-of select="concat(., '-', parent::date/@month, '-', parent::date/@day)"/>
        </xsl:attribute>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="emph[parent::case:decisiondate]">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>

</xsl:stylesheet>
