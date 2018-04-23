<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.effdate">
  <title>leg:effdate <lnpid>id-UK06-28019</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:effdate</sourcexml> becomes <targetxml>primlawinfo:effdate</targetxml> and
        children are described as below: <ul>
          <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes
            will be moved in the parent <targetxml>primlawinfo:effdate</targetxml> element and
            populated as below: <ul>
              <li><sourcexml>date/@day</sourcexml> becomes
                  <targetxml>primlawinfo:effdate/@day</targetxml></li>
              <li><sourcexml>date/@month</sourcexml> becomes
                  <targetxml>primlawinfo:effdate/@month</targetxml></li>
              <li><sourcexml>date/@year</sourcexml> becomes
                  <targetxml>primlawinfo:effdate/@year</targetxml></li>
            </ul><p>
              <b>Populating the attribute <targetxml>@normdate</targetxml></b>
              <ul>
                <li>If one or more of the three date values (year, month or day) are absent, then
                  primlawinfo:effdate/@normdate should not be populated.</li>
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
          <targetxml>primlawinfo:effdate</targetxml> elements must be in 'DD Month YYYY' format where: <ul>
            <li>DD is a day number containing one or two digits</li>
            <li>Month is the month's full name (January, February, etc.)</li>
            <li>YYYY is the four digit year</li>
          </ul></p>
        <note>Multiple <sourcexml>date</sourcexml> elements that occur within
            <sourcexml>leg:effdate</sourcexml> are mark-up errors and only the element around the
          actual date text will be used in conversion. And remaining <sourcexml>date</sourcexml>
          will be suppressed (not content) from conversion.</note>
        <note>If <sourcexml>leg:effdate</sourcexml> has only PCDTA then convert
            <sourcexml>leg:effdate</sourcexml> to
          <targetxml>primlawinfo:effdate</targetxml>.</note>
      <note>Please see <xref href="UK06_LawsActsBillsMeasures-leg.dates.dita"/> for details
        regarding where to create the parent <targetxml>primlawinfo:dates</targetxml> element.
        Please see <xref href="UK06_LawsActsBillsMeasures-leg.effdate-source3.dita"/> and <xref href="UK06_LawsActsBillsMeasures-leg.effdate-target3.dita"/> for a source and target
        example of creating <targetxml>primlawinfo:effdate</targetxml> within
        <targetxml>legis:body/primlaw:prelim/primlawinfo:primlawinfo</targetxml>.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-10-27 <ph id="change_20161027_HP">Added instruction for
        <targetxml>@normdate</targetxml> attribute that falls on various NL date elements.</ph></p>
      <p>2013-08-20 <ph id="change_20130820_JCG">Added example 3 showing the creation of
            <targetxml>legis:body/primlaw:prelim/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:effdate</targetxml>
          and a note refering to this new example as well as further details in the instructions for
            <sourcexml>leg:dates</sourcexml>. These instructions provide details regarding the new
          scenario where <sourcexml>leg:dates</sourcexml> occurs <b>after</b>
          <sourcexml>leg:longtitle</sourcexml>(WebTeam #231496).</ph>
      </p>
      <p>2013-08-19 <ph id="change_20130819_JCG">Modified the instructions to clarify that a variety
          of input (source) date text formats should be recognised and accepted, and that the output
          (target) date text should be in a specific format that includes using ordinal indicators
          ("st", "nd", "rd", or "th") as suffixes on the day number  (WebTeam #231497).</ph>
      </p>      
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.effdate.dita  -->
	 
  <!-- Sudhanshu Srivastava :
       Edited :- 15 June 2017.
       Comments :- This is content specific module handling leg:effdate.
   -->
  <xsl:template match="leg:effdate">
    <primlawinfo:effdate>
      <xsl:call-template name="leg:dates-attributes"/>
      <xsl:apply-templates select="@* | node()"/>
    </primlawinfo:effdate>
  </xsl:template>

</xsl:stylesheet>