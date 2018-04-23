<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.dates-decision.decisiondates">
  <title>case:dates <lnpid>id-ST01-26211</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:dates</sourcexml> becomes
            <targetxml>caseinfo:caseinfo/decision:dates</targetxml>
          <note>Conversion should not create consecutive <targetxml>caseinfo:caseinfo</targetxml>
            elements. When 2 or more consecutive sibling source elements map to
              <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to a single
              <targetxml>caseinfo:caseinfo</targetxml> element unless this would hamper content
            ordering.</note>
          <p>The children of case:dates are mapped as follows: </p><ul>
            <li>
              <sourcexml>case:hearingdates</sourcexml> becomes
                <targetxml>decision:dates/decision:argueddate</targetxml>
              <p>If there are any nl elements in case:hearingdates, then nl should be suppressed,
              but a new date-text should be started for every occurence of nl.</p>
              <note>The formatting of the date-text should not be normalized to
                YYYY-MM-DD. The attributes are used for normalization, but the element content should
                remain the same but whitespace and comma should retain outside the
                <targetxml>date-text</targetxml> element.</note>
              <pre xml:space="preserve">

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
              Example where complete date occurs within case:hearingdate: <pre xml:space="preserve">

&lt;case:hearingdates&gt;
  &lt;date day="12" month="05" year="2000"&gt;12 May 2000&lt;/date&gt;
&lt;/case:hearingdates&gt;

<b>Becomes</b>

&lt;decision:argueddate day="12" month="05" year="2000"&gt;
  &lt;date-text&gt;12 May 2000&lt;/date-text&gt;
&lt;/decision:argueddate&gt;
</pre>
            </li>
            <li>
              <sourcexml>case:decisiondate</sourcexml> becomes
                <targetxml>decision:dates/decision:decisiondate</targetxml> populated as follows: <ul>
                <li>
                  <sourcexml>case:decisiondate/date/@day</sourcexml> becomes
                    <targetxml>decision:decisiondate/@day</targetxml>
                  <note> The values of <sourcexml>@month</sourcexml> and <sourcexml>@day</sourcexml>
                    should be padded with zeroes so that they are 2 digits. </note></li>
                <li>
                  <sourcexml>case:decisiondate/date/@month</sourcexml> becomes
                    <targetxml>decision:decisiondate/@month</targetxml>
                </li>
                <li><sourcexml>case:decisiondate/date/@year</sourcexml> becomes
                    <targetxml>decision:decisiondate/@year</targetxml></li>
                <li>Populate the attribute <targetxml>decision:decisiondate/@normdate</targetxml>
                  with the values of <sourcexml>case:decisiondate/date/@year</sourcexml>,
                    <sourcexml>case:decisiondate/date/@month</sourcexml> and
                    <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated and separated by
                  a single hyphen. <note>If any of the three date values (year, month or day) are
                    absent, then <targetxml>decision:decisiondate/@normdate</targetxml> should
                      <b>not</b> be populated.</note></li>
                <li><sourcexml>date</sourcexml> becomes
                    <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate/date-text</targetxml></li>
              </ul>
              <codeblock>

&lt;case:dates&gt;
  &lt;case:decisiondate&gt;
    &lt;date day="18" month="02" year="1998"&gt;18 FEBRUARY 1998&lt;/date&gt;
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

              </codeblock> becomes <codeblock>

&lt;decision:dates&gt;
    &lt;decision:decisiondate day="18" month="02" year="1998" normdate="1998-02-18"&gt;
        &lt;date-text&gt;18 FEBRUARY 1998&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

              </codeblock>
              <p>If <sourcexml>case:decisiondate</sourcexml> occurs without the
                  <sourcexml>date</sourcexml> element as child, then capture the date in
                  <targetxml>decision:decisiondate</targetxml>.</p>
              <codeblock>

&lt;case:dates&gt;
    &lt;case:decisiondate&gt;13 October 1992&lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

      </codeblock> becomes <codeblock>

&lt;decision:dates&gt;
    &lt;decision:decisiondate&gt;13 October 1992&lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

      </codeblock>
when <sourcexml>@ln.user-displayed="false“</sourcexml> appears on a date element
                (i.e, <sourcexml>case:decisiondate/@ln.user-displayed="false"</sourcexml>), that
                element is translated into the target but with the element content omitted. Only the
                attributes are populated. So there is no display content.
              <pre xml:space="preserve">

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
         
                
            
            <li>
              <sourcexml>case:publishdate</sourcexml> becomes
                <targetxml>decision:releaseddate</targetxml>
              <pre xml:space="preserve">

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
            <li>
              <sourcexml>case:reviseddate</sourcexml> becomes
                <targetxml>decision:dates/decision:revisiondate</targetxml> populated as follows: 
              <ul><li> <sourcexml>case:reviseddate/date/@day</sourcexml> becomes
                <targetxml>decision:revisiondate/@day</targetxml></li>
              <li><sourcexml>case:reviseddate/date/@month</sourcexml> becomes
                <targetxml>decision:revisiondate/@month</targetxml></li>
              <li><sourcexml>case:reviseddate/date/@year</sourcexml> becomes
                <targetxml>decision:revisiondate/@year</targetxml></li>
                <li>
                  <sourcexml>date</sourcexml> becomes
                    <targetxml>decision:revisiondate/date-text</targetxml></li></ul>
              <pre xml:space="preserve">

&lt;case:dates&gt;
  &lt;case:hearingdates&gt;10–12 August&lt;/case:hearingdates&gt;
  &lt;case:decisiondate&gt;
    &lt;date day="16" month="09" year="2005"&gt;, 16 September 2005&lt;/date&gt;
  &lt;/case:decisiondate&gt;
  &lt;case:reviseddate&gt;
    &lt;date day="22" month="09" year="2005"&gt;, 22 September 2005&lt;/date&gt;
  &lt;/case:reviseddate&gt;
&lt;/case:dates&gt;

<b>Becomes</b>

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
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\courtcase\case.dates-decision.dates.dita  -->
	<xsl:message>case.dates-decision.dates.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:dates">

		<!--  Original Target XPath:  caseinfo:caseinfo/decision:dates   -->
		<caseinfo:caseinfo>
			<decision:dates>
				<xsl:apply-templates select="@* | node()"/>
			</decision:dates>
		</caseinfo:caseinfo>

	</xsl:template>

	<xsl:template match="case:hearingdates">

		<!--  Original Target XPath:  decision:dates/decision:argueddate   -->
		<decision:dates>
			<decision:argueddate>
				<xsl:apply-templates select="@* | node()"/>
			</decision:argueddate>
		</decision:dates>

	</xsl:template>

	<xsl:template match="case:decisiondate">

		<!--  Original Target XPath:  decision:dates/decision:decisiondate   -->
		<decision:dates>
			<decision:decisiondate>
				<xsl:apply-templates select="@* | node()"/>
			</decision:decisiondate>
		</decision:dates>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@day">

		<!--  Original Target XPath:  decision:decisiondate/@day   -->
		<decision:decisiondate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="@month">

		<!--  Original Target XPath:  decision:decisiondate/@month   -->
		<decision:decisiondate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="@day">

		<!--  Original Target XPath:  decision:decisiondate/@month   -->
		<decision:decisiondate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@month">

		<!--  Original Target XPath:  decision:decisiondate/@month   -->
		<decision:decisiondate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@year">

		<!--  Original Target XPath:  decision:decisiondate/@year   -->
		<decision:decisiondate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="date">

		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate/date-text   -->
		<courtcase:courtcase xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/">
			<courtcase:head>
				<caseinfo:caseinfo>
					<decision:dates>
						<decision:decisiondate>
							<date-text>
								<xsl:apply-templates select="@* | node()"/>
							</date-text>
						</decision:decisiondate>
					</decision:dates>
				</caseinfo:caseinfo>
			</courtcase:head>
		</courtcase:courtcase>

	</xsl:template>

	<xsl:template match="@ln.user-displayed=&#34;false“">

		<!--  Original Target XPath:  decision:releaseddate   -->
		<decision:releaseddate>
			<xsl:apply-templates select="@* | node()"/>
		</decision:releaseddate>

	</xsl:template>

	<xsl:template match="case:decisiondate/@ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:  decision:releaseddate   -->
		<decision:releaseddate>
			<xsl:apply-templates select="@* | node()"/>
		</decision:releaseddate>

	</xsl:template>

	<xsl:template match="case:publishdate">

		<!--  Original Target XPath:  decision:releaseddate   -->
		<decision:releaseddate>
			<xsl:apply-templates select="@* | node()"/>
		</decision:releaseddate>

	</xsl:template>

	<xsl:template match="case:reviseddate">

		<!--  Original Target XPath:  decision:dates/decision:revisiondate   -->
		<decision:dates>
			<decision:revisiondate>
				<xsl:apply-templates select="@* | node()"/>
			</decision:revisiondate>
		</decision:dates>

	</xsl:template>

	<xsl:template match="case:reviseddate/date/@day">

		<!--  Original Target XPath:  decision:revisiondate/@day   -->
		<decision:revisiondate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:revisiondate>

	</xsl:template>

	<xsl:template match="case:reviseddate/date/@month">

		<!--  Original Target XPath:  decision:revisiondate/@month   -->
		<decision:revisiondate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:revisiondate>

	</xsl:template>

	<xsl:template match="case:reviseddate/date/@year">

		<!--  Original Target XPath:  decision:revisiondate/@year   -->
		<decision:revisiondate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:revisiondate>

	</xsl:template>

</xsl:stylesheet>