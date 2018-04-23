<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.dates">
  <title>case:dates <lnpid>id-AU01-18217</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml>case:dates</sourcexml> becomes <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates</targetxml>
          <note>Conversion should not create consecutive <targetxml>caseinfo:caseinfo</targetxml>
            elements. When 2 or more consecutive sibling source elements map to
              <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to a single
              <targetxml>caseinfo:caseinfo</targetxml> element unless this would hamper content
            ordering.</note>
          <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml>case:hearingdates</sourcexml> becomes
                <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:argueddate</targetxml>
              <note class="- topic/note ">This likely not a complete date, rather just a day. Do not
                attempt to place a complete date if there is not sufficient content in source (year,
                month and day). It should remain PCDATA. See example.</note>
            </li>

            <li class="- topic/li ">
              <sourcexml>case:decisiondate</sourcexml> becomes
                <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate</targetxml>
              populated with below mentioned attributes:
                <sourcexml>case:decisiondate/date/@day</sourcexml> becomes <targetxml>decision:decisiondate/@day</targetxml>,
                <sourcexml>case:decisiondate/date/@month</sourcexml> becomes <targetxml>decision:decisiondate/@month</targetxml> and
                <sourcexml>case:decisiondate/date/@year</sourcexml> becomes <targetxml>decision:decisiondate/@year</targetxml>
              <p> The attribute <targetxml>decision:decisiondate/@normdate</targetxml> should be
                populated with the values of <sourcexml>case:decisiondate/date/@year</sourcexml>,
                  <sourcexml>case:decisiondate/date/@month</sourcexml> and
                  <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by a
                single hyphen. The values of <sourcexml>case:decisiondate/date/@month</sourcexml>
                and <sourcexml>case:decisiondate/date/@day</sourcexml> should be padded with zeroes
                so that they are 2 digits. <note>If one or more of the three date values (year,
                  month or day) are absent, then
                    <targetxml>decision:decisiondate/@normdate</targetxml> should <b>not</b> be
                  populated.</note>
              </p>
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml>date</sourcexml> becomes <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate/date-text</targetxml>
                </li>
              </ul>
              <pre xml:space="preserve" class="- topic/pre ">

  &lt;case:dates&gt;
    &lt;case:hearingdates&gt;8, &lt;/case:hearingdates&gt;
    &lt;case:decisiondate&gt;
      &lt;date day="20" month="05" year="2009"&gt;20 May 2009&lt;/date&gt;
    &lt;/case:decisiondate&gt;
  &lt;/case:dates&gt;
<b>Becomes</b>

  &lt;decision:dates&gt;
    &lt;decision:argueddate&gt;8, &lt;/decision:argueddate&gt;
    &lt;decision:decisiondate day="20" month="05" year="2009" normdate="2009-05-20"&gt;
      &lt;date-text&gt;20 May 2009&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
  &lt;/decision:dates&gt;
</pre>
              Example where complete date occurs within case:hearingdate: <pre xml:space="preserve" class="- topic/pre ">

&lt;case:hearingdates&gt;
  &lt;date day="12" month="05" year="2000"&gt;12 May 2000&lt;/date&gt;
&lt;/case:hearingdates&gt;

<b>Becomes</b>

&lt;decision:argueddate day="12" month="05" year="2000"&gt;
  &lt;date-text&gt;12 May 2000&lt;/date-text&gt;
&lt;/decision:argueddate&gt;
</pre>
              <note class="- topic/note ">when <sourcexml>@ln.user-displayed="false“</sourcexml>
                appears on a date element (i.e,
                  <sourcexml>case:decisiondate/@ln.user-displayed="false"</sourcexml>), that element
                is translated into the target but with the element content omitted. Only the
                attributes are populated. So there is no display content.</note>
              <pre xml:space="preserve" class="- topic/pre ">

&lt;case:dates&gt;
  &lt;case:decisiondate ln.user-displayed="false"&gt;
    &lt;date year="1995" month="04" day="28"&gt;28 April 1995&lt;/date&gt; 
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

<b>Becomes</b>

&lt;decision:dates&gt;  
  &lt;decision:decisiondate day="28" month="04" year="1995" normdate="1995-04-28"/&gt;
&lt;/decision:dates&gt;

</pre>
            </li>
            <li class="- topic/li ">
              <sourcexml>case:publishdate</sourcexml> becomes <targetxml>decision:releaseddate</targetxml>
              <pre xml:space="preserve" class="- topic/pre ">

&lt;case:dates&gt;
  ...
  &lt;case:publishdate&gt;; Date of publication of reasons: 7 July 2009&lt;/case:publishdate&gt;
&lt;/case:dates&gt;
<b>Becomes</b>

&lt;decision:dates&gt;
  ...
  &lt;decision:releaseddate&gt;; Date of publication of reasons: 7 July 2009&lt;/decision:releaseddate&gt;
&lt;/decision:dates&gt;
</pre>
            </li>
            <li class="- topic/li ">
              <sourcexml>case:reviseddate</sourcexml> becomes
                <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:revisiondate</targetxml>
              populated with below mentioned attributes:
                <sourcexml>case:reviseddate/date/@day</sourcexml> becomes
                <targetxml>decision:revisiondate/@day</targetxml>,
                <sourcexml>case:reviseddate/date/@month</sourcexml> becomes
                <targetxml>decision:revisiondate/@month</targetxml> and
                <sourcexml>case:reviseddate/date/@year</sourcexml> becomes
                <targetxml>decision:revisiondate/@year</targetxml>
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml>date</sourcexml> becomes
                    <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:revisiondate/date-text</targetxml>
                </li>
              </ul>
              <pre xml:space="preserve" class="- topic/pre ">

&lt;case:dates&gt;
  &lt;case:hearingdates&gt;10–12 August&lt;/case:hearingdates&gt;
  &lt;case:decisiondate&gt;
    &lt;date day="16" month="09" year="2005"&gt;, 16 September 2005&lt;/date&gt;
  &lt;/case:decisiondate&gt;
  &lt;case:reviseddate&gt;
    &lt;date day="22" month="09" year="2005"&gt;, 22 September 2005&lt;/date&gt;
  &lt;/case:reviseddate&gt;
&lt;/case:dates&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;decision:dates&gt;
  &lt;decision:argueddate&gt;10–12 August&lt;/decision:argueddate&gt;
  &lt;decision:decisiondate day="16" month="09" year="2005" normdate="2005-09-16"&gt;, 
    &lt;date-text&gt;16 September 2005&lt;/date-text&gt;
  &lt;/decision:decisiondate&gt;
  &lt;decision:revisiondate day="22" month="09" year="2005"&gt;, 
    &lt;date-text&gt;22 September 2005&lt;/date-text&gt;
  &lt;/decision:revisiondate&gt;
&lt;/decision:dates&gt;

</pre>
            </li>
          </ul>
          <note class="- topic/note ">The formatting of the date-text should not be normalized to
            YYYY-MM-DD. The attributes are used for normalization, but the element content should
            remain the same but whitespace and comma should retain outside the <targetxml>date-text</targetxml> element.</note>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.dates.dita  -->

	<xsl:template match="case:dates">	 
		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates   -->
		<!-- NOTE: it is assumed that this template will be called from whatever generates required parent wrapper elements -->
		<xsl:choose>
		  <xsl:when test="parent::case:judgments">
		    <xsl:apply-templates select="case:decisiondate"/>
		  </xsl:when>
		  <xsl:otherwise>
		    <decision:dates>
		      <xsl:apply-templates select="@* | node()"/>
		    </decision:dates>
		  </xsl:otherwise>
		</xsl:choose>
	 
	</xsl:template>

	<xsl:template match="case:hearingdates">
		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:argueddate   -->
		<decision:argueddate>
			<xsl:if test="./date/@year">
				<xsl:attribute name="year" select="./date/@year"/>
			</xsl:if>
			<xsl:if test="./date/@month">
				<xsl:attribute name="month" select="./date/@month"/>
			</xsl:if>
			<xsl:if test="./date/@day">
				<xsl:attribute name="day" select="./date/@day"/>
			</xsl:if>
			<xsl:if test="./date/@day and ./date/@month and ./date/@year">
				<xsl:attribute name="normdate" select="concat(./date/@year,'-',./date/@month,'-',./date/@day)"/>
			</xsl:if>
			<xsl:if test="@ln.user-displayed !='false' or not(@ln.user-displayed)">
				<xsl:apply-templates select="@* | node()"/>
			</xsl:if>
		</decision:argueddate>
	</xsl:template>

	<xsl:template match="case:decisiondate">
		<decision:decisiondate>
			<xsl:if test="./date/@year">
				<xsl:attribute name="year" select="./date/@year"/>
			</xsl:if>
			<xsl:if test="./date/@month">
				<xsl:attribute name="month" select="./date/@month"/>
			</xsl:if>
			<xsl:if test="./date/@day">
				<xsl:attribute name="day" select="./date/@day"/>
			</xsl:if>
			<xsl:if test="./date/@day and ./date/@month and ./date/@year">
				<xsl:attribute name="normdate" select="concat(./date/@year,'-',./date/@month,'-',./date/@day)"/>
			</xsl:if>
			<xsl:if test="@ln.user-displayed !='false' or not(@ln.user-displayed)">
				<xsl:apply-templates select="@* | node()"/>
			</xsl:if>
		</decision:decisiondate>
	</xsl:template>

	<!-- NOTE: probably belongs in a nonamespace module -->
	<!-- NOTE: source <date> attributes must be moved to target parent of <date-text> (see templates in this file) -->
<!--	<xsl:template match="date">
		<date-text>
			<xsl:apply-templates select="node()"/>
		</date-text>
	</xsl:template>-->

	<xsl:template match="case:publishdate">
		<!--  Original Target XPath:  decision:releaseddate   -->
		<decision:releaseddate>
			<xsl:if test="./date/@year">
				<xsl:attribute name="year" select="./date/@year"/>
			</xsl:if>
			<xsl:if test="./date/@month">
				<xsl:attribute name="month" select="./date/@month"/>
			</xsl:if>
			<xsl:if test="./date/@day">
				<xsl:attribute name="day" select="./date/@day"/>
			</xsl:if>
			<xsl:if test="./date/@day and ./date/@month and ./date/@year">
				<xsl:attribute name="normdate" select="concat(./date/@year,'-',./date/@month,'-',./date/@day)"/>
			</xsl:if>
			<xsl:if test="@ln.user-displayed !='false' or not(@ln.user-displayed)">
				<xsl:apply-templates select="@* | node()"/>
			</xsl:if>
		</decision:releaseddate>
	</xsl:template>

	<xsl:template match="case:reviseddate">
		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:revisiondate   -->
		<decision:revisiondate>
			<xsl:if test="./date/@year">
				<xsl:attribute name="year" select="./date/@year"/>
			</xsl:if>
			<xsl:if test="./date/@month">
				<xsl:attribute name="month" select="./date/@month"/>
			</xsl:if>
			<xsl:if test="./date/@day">
				<xsl:attribute name="day" select="./date/@day"/>
			</xsl:if>
			<xsl:if test="./date/@day and ./date/@month and ./date/@year">
				<xsl:attribute name="normdate" select="concat(./date/@year,'-',./date/@month,'-',./date/@day)"/>
			</xsl:if>
			<xsl:if test="@ln.user-displayed !='false' or not(@ln.user-displayed)">
				<xsl:apply-templates select="@* | node()"/>
			</xsl:if>
		</decision:revisiondate>
	</xsl:template>

</xsl:stylesheet>