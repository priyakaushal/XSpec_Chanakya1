<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
  xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case-dates">
	<title>case:dates to decision:dates <lnpid>id-CA03-13217</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p><sourcexml>case:dates</sourcexml> becomes <targetxml>decision:dates</targetxml>
				within the parent <targetxml>cttr:caseinfo</targetxml>, and its descendants
					<sourcexml>case:decisiondate</sourcexml> and <sourcexml>date-text</sourcexml>
				are converted as detailed below. </p>
			<note>CA03 conversion will need to create two <targetxml>decision:decisiondate</targetxml> elements,
			  (one for xml:lang="en-CA" and another for xml:lang="fr-CA") within <targetxml>case:caseinfo/decision:dates</targetxml>. 
				This is ONLY for the "top line" cited case or statlaw. See the following table for details.</note>
			<p>The format of creating bi-lingual <targetxml>decision:decisiondate</targetxml> output is language
				dependent, conforming to the following table. When xml:lang = French, format is dd fullmonth yyyy, e.g. 02 mai 2000.</p>
			<p>When xml:lang = English, format is dd Fullmonth yyyy, e.g. 02 May 2000.</p>
	  <table id="table_xszb_pgu_go">
            <tgroup cols="3">
              <tbody>
                <row>
                  <entry>xml:lang=</entry>
                  <entry>en-CA</entry>
                  <entry>fr-CA</entry>
                </row>
                <row>
                  <entry>Date format – add leading zeroes on the days, e.g. “2” is not correct,
                    “02” is correct.</entry>
                  <entry>DD Month YYYY, e.g. 02 April 2014</entry>
                  <entry>DD month YYYY, e.g. 02 avril 2014 </entry>
                </row>
                <row>
                  <entry>Numerical month to month name:</entry>
                  <entry/>
                  <entry/>
                </row>
                <row>
                  <entry>01</entry>
                  <entry>January</entry>
                  <entry>janvier</entry>
                </row>
                <row>
                  <entry>02</entry>
                  <entry>February</entry>
                  <entry>février</entry>
                </row>
                <row>
                  <entry>03</entry>
                  <entry>March</entry>
                  <entry>mars</entry>
                </row>
                <row>
                  <entry>04</entry>
                  <entry>April</entry>
                  <entry>avril</entry>
                </row>
                <row>
                  <entry>05</entry>
                  <entry>May</entry>
                  <entry>mai</entry>
                </row>
                <row>
                  <entry>06</entry>
                  <entry>June</entry>
                  <entry>juin</entry>
                </row>
                <row>
                  <entry>07</entry>
                  <entry>July</entry>
                  <entry>juillet</entry>
                </row>
                <row>
                  <entry>08</entry>
                  <entry>August</entry>
                  <entry>août</entry>
                </row>
                <row>
                  <entry>09</entry>
                  <entry>September</entry>
                  <entry>septembre</entry>
                </row>
                <row>
                  <entry>10</entry>
                  <entry>October</entry>
                  <entry>octobre</entry>
                </row>
                <row>
                  <entry>11</entry>
                  <entry>November</entry>
                  <entry>novembre</entry>
                </row>
                <row>
                  <entry>12</entry>
                  <entry>December</entry>
                  <entry>décembre</entry>
                </row>
              </tbody>
            </tgroup>
          </table>
		
		
		</section>
		<example>
			<title>Source XML</title>
			<codeblock>&lt;case:dates&gt;
    &lt;case:decisiondate&gt;&lt;date day="2" month="11" year="1983"&gt;1983/11/2&lt;/date&gt;&lt;/case:decisiondate&gt;
&lt;/case:dates&gt;</codeblock>
			<title>Target XML</title>
			<codeblock>&lt;decision:dates&gt;
    &lt;decision:decisiondate xml:lang="en-CA" day="2" month="11" year="1983" normdate="1983-11-02"&gt;&lt;date-text&gt;02 November 1983&lt;/date-text&gt;&lt;/decision:decisiondate&gt;
    &lt;decision:decisiondate xml:lang="fr-CA" day="2" month="11" year="1983" normdate="1983-11-02"&gt;&lt;date-text&gt;02 novembre 1983&lt;/date-text&gt;&lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2014-10-10: <ph id="change_20141010_sep">Added French/English table and instruction for 
					creating bi-lingual <targetxml>decision:decisiondate</targetxml> elements. R4.5 RFA# 1902.</ph></p>
			<p>2013-01-17: <ph id="change_20130117_dsf">Updated target example to include
						<targetxml>@normdate</targetxml> in
						<targetxml>decision:decisiondate</targetxml>.</ph></p>
		</section>
	</body>
	</dita:topic>

  <xsl:variable name="enmonth">
    <dita:codes>
      <dita:code key="01" value="January"/>
      <dita:code key="02" value="February"/>
      <dita:code key="03" value="March"/>
      <dita:code key="04" value="April"/>
      <dita:code key="05" value="May"/>
      <dita:code key="06" value="June"/>
      <dita:code key="07" value="July"/>
      <dita:code key="08" value="August"/>
      <dita:code key="09" value="September"/>
      <dita:code key="10" value="October"/>
      <dita:code key="11" value="November"/>
      <dita:code key="12" value="December"/>
    </dita:codes>
  </xsl:variable>
  <xsl:variable name="frmonth">
    <dita:codes>
      <dita:code key="01" value="janvier"/>
      <dita:code key="02" value="février"/>
      <dita:code key="03" value="mars"/>
      <dita:code key="04" value="avril"/>
      <dita:code key="05" value="mai"/>
      <dita:code key="06" value="juin"/>
      <dita:code key="07" value="juillet"/>
      <dita:code key="08" value="août"/>
      <dita:code key="09" value="septembre"/>
      <dita:code key="10" value="octobre"/>
      <dita:code key="11" value="novembre"/>
      <dita:code key="12" value="décembre"/>
    </dita:codes>
  </xsl:variable>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_case.dates-to-LxAdv_decision.dates.dita  -->

  <!-- Sudhanshu Srivastava : Initially drafted this module on 25-May-2017. If required please change accordingaly.--> 

	<xsl:template match="case:dates">
		<!--  Original Target XPath:  decision:dates   -->
		<decision:dates>
			<xsl:apply-templates/>
		</decision:dates>
	</xsl:template>
  
  <xsl:template match="case:decisiondate">
    <xsl:apply-templates/>
  </xsl:template>
  
	<xsl:template match="date">
		<!--  Original Target XPath:  decision:decisiondate   -->
        <xsl:choose>
          <xsl:when test="ancestor::source_cttr:content">
            <decision:decisiondate>
              <xsl:attribute name="month" select="@month"/>
              <xsl:attribute name="day" select="if(starts-with(@day,'0')) then replace(@day,'0','') else @day"/>
              <xsl:attribute name="year" select="@year"/>
              <xsl:attribute name="normdate" select="concat(@year,'-',@month,'-',@day)"/>
              <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:value-of select="."/>
              </date-text>
            </decision:decisiondate>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="mon" select="@month"/>
            <decision:decisiondate xml:lang="en-CA" month="{@month}" day="{if(starts-with(@day,'0')) then replace(@day,'0','') else @day}" year="{@year}" normdate="{concat(@year,'-',@month,'-',@day)}">
              <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:value-of select="@day"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="$enmonth/dita:codes/dita:code[@key = $mon]/@value"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="@year"/>
              </date-text>
            </decision:decisiondate>
            <decision:decisiondate xml:lang="fr-CA" month="{@month}" day="{if(starts-with(@day,'0')) then replace(@day,'0','') else @day}" year="{@year}" normdate="{concat(@year,'-',@month,'-',@day)}">
              <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:value-of select="@day"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="$frmonth/dita:codes/dita:code[@key = $mon]/@value"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="@year"/>
              </date-text>
            </decision:decisiondate>
          </xsl:otherwise>
        </xsl:choose>
	 	</xsl:template>
</xsl:stylesheet>