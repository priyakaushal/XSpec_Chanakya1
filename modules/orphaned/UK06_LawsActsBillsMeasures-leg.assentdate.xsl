<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.assentdate">
  <title>leg:assentdate <lnpid>id-UK06-28044</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:assentdate</sourcexml> becomes <targetxml>primlawinfo:assentdate</targetxml>
        and children are described as below: <ul>
          <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes
            will be moved in the parent <targetxml>primlawinfo:assentdate</targetxml> element and
            populated as below: <ul>
              <li><sourcexml>date/@day</sourcexml> becomes
                  <targetxml>primlawinfo:enactdate/@day</targetxml></li>
              <li><sourcexml>date/@month</sourcexml> becomes
                  <targetxml>primlawinfo:enactdate/@month</targetxml></li>
              <li><sourcexml>date/@year</sourcexml> becomes
                  <targetxml>primlawinfo:enactdate/@year</targetxml></li>
            </ul><p>
              <b>Populating the attribute <targetxml>@normdate</targetxml></b>
              <ul>
                <li>If one or more of the three date values (year, month or day) are absent, then
                  primlawinfo:assentdate/@normdate should not be populated.</li>
                <li>The <sourcexml>@normdate</sourcexml> should be populated with the values of date
                  elements within New Lexis. </li>
                <li>Using case:decisiondate as an example the ru: case:decisiondate/date/@year,
                  case:decisiondate/date/@month and case:decisiondate/date/@day concatenated and
                  separated by a single hyphen. The values of case:decisiondate/date/@month and
                  case:decisiondate/date/@day should be padded with zeroes so that they are 2
                  digits. </li>
              </ul>
              <note>The format of the content of all <targetxml>date</targetxml> elements must be in
                'YYYY-MM-DD'.</note></p>
          </li>
        </ul>
      </p>
      <p>The the date text within <sourcexml>date</sourcexml> can be in a variety of formats such as: DD-MM-YYYY, DD/MM/YYYY, DD Month YYYY, DDxx Month YYYY (where "xx" is "st", "nd", "rd", or "th"). All these formats should be accepted as input to conversion (source) and all such date text should be recognised as a date whenever possible. </p>
      <p>The format of the content of all output (target) date text within
        <targetxml>primlawinfo:assentdate</targetxml> elements must be in 'DDxx Month YYYY' format where: <ul>
            <li>DDxx is a day number containing one or two digits followed by an ordinal indicator as a suffix. The ordinal indicator suffix (xx) is created as follows: <ul>
              <li>if DD is "1", "21", or "31", xx is "st"</li>
              <li>if DD is "2" or "22", xx is "nd"</li>
              <li>if DD is "3" or "23", xx is "rd"</li>
              <li>if DD is any other value, xx is "th"</li>
            </ul></li>
            <li>Month is the month's full name (January, February, etc.)</li>
            <li>YYYY is the four digit year</li>
          </ul></p>
        <note>Multiple <sourcexml>date</sourcexml> elements that occur within
          <sourcexml>leg:assentdate</sourcexml> are mark-up errors and only the element around the
          actual date text will be used in conversion. And remaining <sourcexml>date</sourcexml>
          will be suppressed (not content) from conversion.</note>
      <note>If <sourcexml>leg:assentdate</sourcexml> has only PCDTA then convert
        <sourcexml>leg:assentdate</sourcexml> into
        <targetxml>primlawinfo:assentdate</targetxml>.</note>
        <note>Please see <xref href="UK06_LawsActsBillsMeasures-leg.dates.dita"/> for details
          regarding where to create the parent <targetxml>primlawinfo:dates</targetxml> element.
          Please see <xref href="UK06_LawsActsBillsMeasures-leg.enactdate-source4.dita"/> and <xref href="UK06_LawsActsBillsMeasures-leg.enactdate-target4.dita"/> for a source and target
          example of creating <targetxml>primlawinfo:assentdate</targetxml> within
            <targetxml>legis:body/primlaw:prelim/primlawinfo:primlawinfo</targetxml>.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-10-27 <ph id="change_20161027_HP">Added instruction for
        <targetxml>@normdate</targetxml> attribute that falls on various NL date elements.</ph></p>
      <p>2016-01-06 <ph id="change_20160106_AB">Created. (RFA #2691).</ph>
      </p>      
    </section>
  </body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.assentdate.dita  -->

<!-- Sudhanshu Srivastava :
     Edited :- 15 June 2017.
     Comments :- This is content specific module handling leg:assentdate.
  -->

  <xsl:template match="leg:assentdate">
    <xsl:if test="not(date[1]/@year='9999')">
      <primlawinfo:assentdate>
        <xsl:call-template name="leg:dates-attributes"/>
        <xsl:apply-templates select="@* | node()"/>
      </primlawinfo:assentdate>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>