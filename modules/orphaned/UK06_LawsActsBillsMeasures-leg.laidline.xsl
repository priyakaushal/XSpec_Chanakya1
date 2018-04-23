<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.laidline">
  <title>leg:laidline <lnpid>id-UK06-28037</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:laidline</sourcexml> becomes <targetxml>primlawinfo:presenteddate</targetxml> and
        children are described as below: <ul>
          <li><sourcexml>date</sourcexml> become <targetxml>date-text</targetxml> and the attributes
            will be moved in the parent <targetxml>primlawinfo:presenteddate</targetxml> element and
            populated as below: <ul>
              <li><sourcexml>date/@day</sourcexml> becomes
                <targetxml>primlawinfo:presenteddate/@day</targetxml></li>
              <li><sourcexml>date/@month</sourcexml> becomes
                <targetxml>primlawinfo:presenteddate/@month</targetxml></li>
              <li><sourcexml>date/@year</sourcexml> becomes
                <targetxml>primlawinfo:presenteddate/@year</targetxml></li>
            </ul><p>
              <b>Populating the attribute <targetxml>@normdate</targetxml></b>
              <ul>
                <li>If one or more of the three date values (year, month or day) are absent, then
                  primlawinfo:presenteddate/@normdate should not be populated.</li>
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
          <targetxml>primlawinfo:presenteddate</targetxml> elements must be in 'DD Month YYYY' format where: <ul>
            <li>DD is a day number containing one or two digits</li>
            <li>Month is the month's full name (January, February, etc.)</li>
            <li>YYYY is the four digit year</li>
          </ul></p>
        <note>Multiple <sourcexml>date</sourcexml> elements that occur within
            <sourcexml>leg:laidline</sourcexml> are mark-up errors and only the element around the
          actual date text will be used in conversion. And remaining <sourcexml>date</sourcexml>
          will be suppressed (not content) from conversion.</note>
        <note>If <sourcexml>leg:laidline</sourcexml> has only PCDTA then convert
            <sourcexml>leg:laidline</sourcexml> to
          <targetxml>primlawinfo:presenteddate</targetxml>.</note>
      <note>Please see <xref href="UK06_LawsActsBillsMeasures-leg.dates.dita"/> for details
        regarding where to create the parent <targetxml>primlawinfo:dates</targetxml> element.
        Please see <xref href="UK06_LawsActsBillsMeasures-leg.laidline-source1.dita"/> and <xref href="UK06_LawsActsBillsMeasures-leg.laidline-target1.dita"/> for a source and target
        example of creating <targetxml>primlawinfo:presenteddate</targetxml> within
        <targetxml>legis:body/primlaw:prelim/primlawinfo:primlawinfo</targetxml>.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-10-27 <ph id="change_20161027_HP">Added instruction for
        <targetxml>@normdate</targetxml> attribute that falls on various NL date elements.</ph></p>
      <p>2015-08-19 <ph id="change_20150819_AB"> Conversion Instruction Created. (DB #2375).</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.laidline.dita  -->
	 
  <!-- Sudhanshu Srivastava :-
       Edited :- 15 June 2017.
       Comments :- This is content specific module handling leg:laidline.
  -->
	<xsl:template match="leg:laidline">
		<!--  Original Target XPath:  primlawinfo:presenteddate   -->
	  <primlawinfo:presenteddate year="{date[1]/@year}" month="{date[1]/@month}" day="{date[1]/@day}">
	    <xsl:choose>
	      <xsl:when test="not(date[1]/@year or date[1]/@month or date[1]/@day)"/>
	      <xsl:otherwise>
	        <xsl:attribute name="normdate" select="concat(date[1]/@year,'-',date[1]/@month,'-',date[1]/@day)"/>
	      </xsl:otherwise>
	    </xsl:choose>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:presenteddate>
	</xsl:template>

  <xsl:template match="leg:laidline/date">
		<!--  Original Target XPath:  date-text   -->
    <xsl:variable name="locmonth" select="@month"/>
    <xsl:choose>
      <xsl:when test="following-sibling::date">
        <xsl:apply-templates select="node()"/>
        <date-text>
          <xsl:choose>
            <xsl:when test="@day=('01','21','31','1')">
              <xsl:value-of select="@day"/>
              <xsl:text>st</xsl:text>
              <xsl:text> </xsl:text>
              <xsl:value-of select="$month/mon/code[@key=$locmonth]/@value"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="@year"/>
            </xsl:when>
            <xsl:when test="@day=('02','22','2')">
              <xsl:value-of select="@day"/>
              <xsl:text>nd</xsl:text>
              <xsl:text> </xsl:text>
              <xsl:value-of select="$month/mon/code[@key=$locmonth]/@value"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="@year"/>
            </xsl:when>
            <xsl:when test="@day=('03','23','3')">
              <xsl:value-of select="@day"/>
              <xsl:text>rd</xsl:text>
              <xsl:text> </xsl:text>
              <xsl:value-of select="$month/mon/code[@key=$locmonth]/@value"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="@year"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="@day"/>
              <xsl:text>th</xsl:text>
              <xsl:text> </xsl:text>
              <xsl:value-of select="$month/mon/code[@key=$locmonth]/@value"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="@year"/>
            </xsl:otherwise>
          </xsl:choose>
        </date-text>
      </xsl:when>
      <xsl:otherwise>
        <date-text>
          <xsl:choose>
            <xsl:when test="@day=('01','21','31','1')">
              <xsl:value-of select="@day"/>
              <xsl:text>st</xsl:text>
              <xsl:text> </xsl:text>
              <xsl:value-of select="$month/mon/code[@key=$locmonth]/@value"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="@year"/>
            </xsl:when>
            <xsl:when test="@day=('02','22','2')">
              <xsl:value-of select="@day"/>
              <xsl:text>nd</xsl:text>
              <xsl:text> </xsl:text>
              <xsl:value-of select="$month/mon/code[@key=$locmonth]/@value"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="@year"/>
            </xsl:when>
            <xsl:when test="@day=('03','23','3')">
              <xsl:value-of select="@day"/>
              <xsl:text>rd</xsl:text>
              <xsl:text> </xsl:text>
              <xsl:value-of select="$month/mon/code[@key=$locmonth]/@value"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="@year"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="@day"/>
              <xsl:text>th</xsl:text>
              <xsl:text> </xsl:text>
              <xsl:value-of select="$month/mon/code[@key=$locmonth]/@value"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="@year"/>
            </xsl:otherwise>
          </xsl:choose>
        </date-text>		
      </xsl:otherwise>
    </xsl:choose>
	</xsl:template>
</xsl:stylesheet>