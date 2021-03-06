<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_Rosetta_case.dates">
  <title>case:dates <lnpid>id-NZ03-23016</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:dates</sourcexml> becomes
            <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates</targetxml>
          <ul>
            <li>
              <sourcexml>case:hearingdates</sourcexml> becomes
                <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:argueddate</targetxml>
              <note>This likely not a complete date, rather just a day. Do not attempt to place a
                complete date if there is not sufficient content in source (year, month and day). It
                should remain PCDATA. See example.</note>
            </li>
            <li>
              <sourcexml>case:decisiondate</sourcexml> becomes
                <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate</targetxml>
              populated with below mentioned attributes:
                <sourcexml>case:decisiondate/date/@day</sourcexml> becomes
                <targetxml>decision:decisiondate/@day</targetxml>,
                <sourcexml>case:decisiondate/date/@month</sourcexml> becomes
                <targetxml>decision:decisiondate/@month</targetxml> and
                <sourcexml>case:decisiondate/date/@year</sourcexml> becomes
                <targetxml>decision:decisiondate/@year</targetxml>
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
              <ul>
                <li>
                  <sourcexml>date</sourcexml> becomes
                    <targetxml>/courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate/date-text</targetxml>
                </li>
              </ul>
            </li>
          </ul>
          <note>Conversion should not create consecutive <targetxml>caseinfo:caseinfo</targetxml>
            elements. When 2 or more sibling source elements map to
              <targetxml>caseinfo:caseinfo</targetxml>, data should be merged to a single
              <targetxml>caseinfo:caseinfo</targetxml> element.</note>
          <pre xml:space="preserve">

&lt;case:dates&gt;
  &lt;case:hearingdates&gt;26,&lt;/case:hearingdates&gt;
  &lt;case:decisiondate&gt;
    &lt;date day="27" month="11" year="1990"&gt;27 November 1990&lt;/date&gt;
  &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;
<b>Becomes</b>

&lt;decision:dates&gt;
  &lt;decision:argueddate&gt;26,&lt;/decision:argueddate&gt;
  &lt;decision:decisiondate day="27" month="11" year="1990" normdate="1990-11-27"&gt;
    &lt;date-text&gt;27 November 1990&lt;/date-text&gt;
  &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;
</pre>
          <note>The formatting of the date-text should not be normalized to YYYY-MM-DD. The
            attributes are used for normalization, but the element content should remain the same
            but whitespace and comma should retain outside the <targetxml>date-text</targetxml>
            element.</note>
          <note>when <sourcexml>@ln.user-displayed="false“</sourcexml> appears on a date element
            (i.e, <sourcexml>case:decisiondate/@ln.user-displayed="false"</sourcexml>), that element
            is translated into the target but with the element content omitted. Only the attributes
            are populated. So there is no display content.</note>
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
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_Rosetta_case.dates.dita  -->
	<!--<xsl:message>NZ03_Rosetta_case.dates.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="case:dates">
		
		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates   -->
		
		<decision:dates>
			<xsl:apply-templates select="@* | node()"/>
		</decision:dates>
		
		
	</xsl:template>


	<xsl:template match="case:hearingdates">
		<xsl:choose>
			<xsl:when test="child::date">
			<xsl:apply-templates select="@* | date"/>
			</xsl:when>
			<xsl:otherwise>
				<decision:argueddate>
					<xsl:apply-templates select="@* | node()"/>
				</decision:argueddate>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	<xsl:template match="case:hearingdates/date">
		<decision:argueddate>
				<xsl:attribute name="day">
					<xsl:value-of select="@day"/>
				</xsl:attribute>
				<xsl:attribute name="month">
					<xsl:value-of select="@month"/>
				</xsl:attribute>
			<xsl:attribute name="year">
				<xsl:value-of select="@year"/>
			</xsl:attribute>
			<date-text>
				<xsl:apply-templates select="@* |node()"/>
			</date-text>
			<xsl:apply-templates select="following-sibling::text()[1]"/>
		</decision:argueddate>
		
	</xsl:template>
	<xsl:template match="@year"/>
	<xsl:template match="@month"/>
	<xsl:template match="@day"/>
	
	<xsl:template match="case:decisiondate">
		
		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate   -->
		
		<decision:decisiondate>							
			<xsl:call-template name="process_date_attributes"/>		
			<xsl:apply-templates select="@* | node()"/>
		</decision:decisiondate>
		
	</xsl:template>	
	<xsl:template name="process_date_attributes">
		<!-- this template converts attributes in date/@* to attributes in the target. 
            If no date element exists as a child of the current node, the processing is skipped -->
		<xsl:choose>
			<xsl:when test="date">
				<xsl:variable name="year">
					<xsl:choose>
						<xsl:when test="date/@year='0000'">
							<xsl:value-of select="'2000'"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="date/@year"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:if test="date/@day">
					<xsl:attribute name="day">
						<xsl:value-of select="date/@day"/>
					</xsl:attribute>
				</xsl:if>
				<xsl:if test="date/@year">
					<xsl:attribute name="year">
						<xsl:value-of select="$year"/>
					</xsl:attribute>
				</xsl:if>
				<xsl:if test="date/@month">
					<xsl:attribute name="month">
						<xsl:value-of select="date/@month"/>
					</xsl:attribute>
				</xsl:if>				
				<xsl:if test="date/@month and date/@year and date/@day">					
					<xsl:attribute name="normdate">
						<xsl:value-of select="concat($year, '-', date/@month, '-', date/@day)"/>
					</xsl:attribute>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<!-- don't create attributes if no date element in source -->
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template> 

	<xsl:template match="case:decisiondate[@ln.user-displayed]">
		
		<!--  Original Target XPath:  decision:releaseddate   -->
		<decision:decisiondate>							
			<xsl:call-template name="process_date_attributes"/>	
		</decision:decisiondate>
		
	</xsl:template>

	<!--<xsl:template match="date">

		<!-\-  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:decisiondate/date-text   -\->
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

	</xsl:template>-->

	<xsl:template match="case:publishdate">
		
		<!--  Original Target XPath:  decision:releaseddate   -->
		<decision:releaseddate>
			<xsl:apply-templates select="@* | node()"/>
		</decision:releaseddate>
		
	</xsl:template>
	
	
	
	<xsl:template match="case:reviseddate">
		
		<!--  Original Target XPath:  /courtcase:courtcase/courtcase:head/caseinfo:caseinfo/decision:dates/decision:revisiondate   -->
		
		<decision:revisiondate>
			<xsl:attribute name="day">
				<xsl:value-of select="date/@day"/>
			</xsl:attribute>
			<xsl:attribute name="month">
				<xsl:value-of select="date/@month"/>
			</xsl:attribute>
			<xsl:attribute name="year">
				<xsl:value-of select="date/@year"/>
			</xsl:attribute>
			<xsl:apply-templates select="@* | node()"/>
		</decision:revisiondate>
		
	</xsl:template>

</xsl:stylesheet>