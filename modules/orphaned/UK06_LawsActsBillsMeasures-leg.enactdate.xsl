<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.enactdate">
  <title>leg:enactdate <lnpid>id-UK06-28020</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:enactdate</sourcexml> becomes <targetxml>primlawinfo:enactdate</targetxml>
        and children are described as below: <ul>
          <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes
            will be moved in the parent <targetxml>primlawinfo:enactdate</targetxml> element and
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
                  primlawinfo:enactdate/@normdate should not be populated.</li>
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
          </li></ul></p>
      <p>The the date text within <sourcexml>date</sourcexml> can be in a variety of formats such as: DD-MM-YYYY, DD/MM/YYYY, DD Month YYYY, DDxx Month YYYY (where "xx" is "st", "nd", "rd", or "th"). All these formats should be accepted as input to conversion (source) and all such date text should be recognised as a date whenever possible. </p>
      <p>The format of the content of all output (target) date text within
            <targetxml>primlawinfo:enactdate</targetxml> elements must be in 'DDxx Month YYYY' format where: <ul>
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
            <sourcexml>leg:enactdate</sourcexml> are mark-up errors and only the element around the
          actual date text will be used in conversion. And remaining <sourcexml>date</sourcexml>
          will be suppressed (not content) from conversion.</note>
        <note>If <sourcexml>leg:enactdate</sourcexml> has only PCDTA then convert
            <sourcexml>leg:enactdate</sourcexml> into
          <targetxml>primlawinfo:enactdate</targetxml>.</note>
        <note>Please see <xref href="UK06_LawsActsBillsMeasures-leg.dates.dita"/> for details
          regarding where to create the parent <targetxml>primlawinfo:dates</targetxml> element.
          Please see <xref href="UK06_LawsActsBillsMeasures-leg.enactdate-source4.dita"/> and <xref href="UK06_LawsActsBillsMeasures-leg.enactdate-target4.dita"/> for a source and target
          example of creating <targetxml>primlawinfo:enactdate</targetxml> within
            <targetxml>legis:body/primlaw:prelim/primlawinfo:primlawinfo</targetxml>.</note>
      
      <note>If <sourcexml>docinfo:custom-metafields/docinfo:custom-metafield</sourcexml> has attribute <sourcexml>@searchtype="LEG-ENACT-DATE"</sourcexml> then in NewLexis markup it will be mapped to <targetxml>primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml></note>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-10-27 <ph id="change_20161027_HP">Added instruction for
            <targetxml>@normdate</targetxml> attribute that falls on various NL date elements.</ph></p>
      <p>2016-05-31: <ph id="change_20160531_AB">Mapping for <sourcexml>docinfo:custom-metafield searchtype="LEG-ENACT-DATE"</sourcexml> to <targetxml>primlawinfo:enactdate</targetxml></ph></p>
      <p>2013-08-20 <ph id="change_20130820_JCG">Added example 4 showing the creation of <targetxml>legis:body/primlaw:prelim/primlawinfo:primlawinfo/primlawinfo:dates/primlawinfo:enactdate</targetxml>
          and a note refering to this new example as well as further details in the instructions for
            <sourcexml>leg:dates</sourcexml>. These instructions provide details regarding the new scenario where <sourcexml>leg:dates</sourcexml> occurs <b>after</b>
          <sourcexml>leg:longtitle</sourcexml>(WebTeam #231496).</ph>
      </p>
      <p>2013-08-19 <ph id="change_20130819_JCG">Modified the instructions to clarify that a variety
          of input (source) date text formats should be recognised and accepted, and that the output
          (target) date text should be in a specific format that includes using ordinal indicators
          ("st", "nd", "rd", or "th") as suffixes on the day number (WebTeam #231497).</ph>
      </p>      
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.enactdate.dita  -->
	
	
	
	
	<!-- Sudhanshu Srivastava :
	     Edited :- 15 June 2017.
	     Comments :- This is content specific module handling leg:enactdate.
	-->
	<xsl:template match="leg:enactdate">
		<primlawinfo:enactdate>
			<xsl:call-template name="leg:dates-attributes"/>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:enactdate>
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