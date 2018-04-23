<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_date-to-LexisAdvance_date">
	<title><sourcexml>date</sourcexml> to <targetxml>date</targetxml> <lnpid>id-CCCC-10275</lnpid></title>
	<body>
		<section>
			<p>
				<sourcexml>date</sourcexml> becomes <targetxml>date</targetxml> comes with following
				attributes: <ul>
					<li>
						<sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is
						between 01-12. Any numbers outside this range, do not output a
							<targetxml>@month</targetxml>. </li>

					<li>
						<sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between
						01-31. Any numbers outside this range, do not output
							<targetxml>@day</targetxml>. </li>

					<li>
						<sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4
						digits in length. Any other lengths, do not output
							<targetxml>@year</targetxml>. </li>
				</ul>
				<note>The format of the content of all <targetxml>date</targetxml> elements must be
					in 'YYYY-MM-DD'.</note>
			</p>
		</section>

		<example>
			<title>Source XML</title>
			<codeblock>

&lt;p&gt;
	&lt;text&gt;The paragraph below is current to 
		&lt;emph typestyle="bf"&gt;
			&lt;date day="11" month="05" year="2010"&gt;11 May 2010&lt;/date&gt;
		&lt;/emph&gt;
	&lt;/text&gt;
&lt;/p&gt;

		</codeblock>
		</example>

		<example>
			<title>Target XML</title>
			<codeblock>

&lt;p&gt;
	&lt;text&gt;The paragraph below is current to 
		&lt;emph typestyle="bf"&gt;
			&lt;date day="11" month="05" year="2010"&gt;11 May 2010&lt;/date&gt;
		&lt;/emph&gt;
	&lt;/text&gt;
&lt;/p&gt;

		</codeblock>
		</example>

		<section>
			<title>Populating the attribute @normdate</title>
			<p>
				<ul>
					<li>If one or more of the three date values (year, month or day) are absent,
						then decision:decisiondate/@normdate should not be populated.</li>
					<li>The <sourcexml>@normdate</sourcexml> should be populated with the values of
						date elements within New Lexis. </li>
					<li>Using case:decisiondate as an example the ru: case:decisiondate/date/@year,
						case:decisiondate/date/@month and case:decisiondate/date/@day concatenated
						and separated by a single hyphen. The values of
						case:decisiondate/date/@month and case:decisiondate/date/@day should be
						padded with zeroes so that they are 2 digits. </li>

				</ul>
				<note>The format of the content of all <targetxml>date</targetxml> elements must be
					in 'YYYY-MM-DD'.</note>
			</p>
		</section>

		<example>
<title>Source XML</title>
			<codeblock>
<b>Source 1</b>	

     &lt;admindecision:dates&gt;
         &lt;decision:fileddate  day="8" month="02" year="1989"&gt;
             &lt;date-text&gt;8/2/1989&lt;/date-text&gt;
          &lt;/decision:fileddate&gt;
     &lt;/admindecision:dates&gt;


<b>Source 2</b>

		&lt;decision:dates&gt;
           &lt;decision:decisiondate day="8" month="02" year="1989"&gt;
             &lt;date-text&gt;8/2/1989&lt;/date-text&gt;
           &lt;/decision:decisiondate&gt;
       &lt;/decision:dates&gt;
		
		
<b>Source 3</b>
		
		
	&lt;primlawinfo:primlawinfo&gt;
     &lt;primlawinfo:dates&gt;
        &lt;primlawinfo:effdate year="1961" month="06" day="22"&gt;
            &lt;date-text&gt;June 22, 1961&lt;/date-text&gt;
        &lt;/primlawinfo:effdate&gt;
      &lt;/primlawinfo:dates&gt;
   &lt;/primlawinfo:primlawinfo&gt;
		

		</codeblock>
		</example>


<example>
<title>Target XML</title>
			<codeblock>
<b>Target 1</b>	

   &lt;admindecision:dates&gt;
      &lt;decision:fileddate  day="8" month="02" year="1989" normdate="1989-02-08"&gt;
			&lt;date-text&gt;8/2/1989&lt;/date-text&gt;
		&lt;/decision:fileddate&gt;
   &lt;/admindecision:dates&gt;
		
		
<b>Target 2</b>

	&lt;decision:decisiondate day="8" month="02" year="1989" normdate="1989-02-08"&gt;
		&lt;date-text&gt;8/2/1989&lt;/date-text&gt;
	&lt;/decision:decisiondate&gt;
		
		
<b>Target 3</b>
		
		
	&lt;primlawinfo:dates&gt;
		&lt;primlawinfo:effdate year="1961" month="06" day="22" normdate="1961-06-22"&gt;
				&lt;date-text&gt;June 22, 1961&lt;/date-text&gt;
		&lt;/primlawinfo:effdate&gt;
	&lt;/primlawinfo:dates&gt;
		
				
		</codeblock>
		</example>

		<section>
			<title>Changes</title>
			<p>2013-03-08 <ph id="change_20130308_WLL">Added instruction for @normdate attribute that falls
					on various NL date elements</ph></p>
		</section>

	</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_date-LxAdv-date.dita  -->
	
<!-- IMPORTANT NOTE: if your stream wants to put the text content of the date element into a <date-text> wrapper, add 
		the streamID for your stream into the variable 'streamsThatUseDateTextChild' and it will add
		the date-text wrapper for that stream -->
	
	<!-- Awantika: Following the above instructions modified the template as in few streams date element is not required 
		but if date is coming in p/text then date element is created. -->
	<!-- Awantika: added stream AU20 to  streamsThatUseDateTextChild-->
	<xsl:template match="date">
		<xsl:variable name="streamsThatUseDateTextChild" select="('HK03','AU01','NZ03','NZ13','CA02DC','UK05','AU20','UK01','UK03','UK11DA','UK12','AU09','UK11DN','UK22CF')"/>
		<xsl:choose>
			<xsl:when test="ancestor::case:dates or $streamID=('CA02DC','AU20','UK11DA','UK12','NZ13','UK11DN','UK22CF')">
				<xsl:choose>
					<xsl:when test="($streamID=$streamsThatUseDateTextChild and parent::entry)">
						<date>
						<xsl:apply-templates select="@*|node()"/>
						</date>
					</xsl:when>
					<xsl:when test="($streamID=$streamsThatUseDateTextChild) and node()">
						<date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:apply-templates/>
						</date-text>
					</xsl:when>
					<xsl:when test="not($streamID=$streamsThatUseDateTextChild) and node()">
						<xsl:apply-templates/>					
					</xsl:when>
					<!-- JD: 2017-06-27: 
						Excluding this template from UK01 under case:hearingdates.  
						
						date/@* are applied in the case:hearindates template as any attributes
						must be created before creating any nodes (<date-text>, text() content, etc.)
						
						Previously, the 'otherwise' condition would apply to the data below and would 
						output as @day="06", @month="12" @year="1934; the correct output is 
						@day="23", @month="01" @year="1935"
						
						<case:hearingdates>
							<date day="29" month="11" year="1934"/>
							<date day="30" month="11" year="1934"/>
							<date day="06" month="12" year="1934"/>
							<date day="13" month="12" year="1934">29, 30 November, 6, 13
								December 1934</date>
							<date day="23" month="01" year="1935">23 January 1935</date>
						</case:hearingdates>
						-->
					<xsl:when test="$streamID=('UK01','UK03') and (parent::case:hearingdates or parent::case:decisiondate)">
						<!-- do nothing; date attributes have been handled and there is no child node() to process -->
					</xsl:when>
					<xsl:otherwise>
						<!-- just apply attributes -->
						<xsl:apply-templates select="@*"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<date>
					<xsl:call-template name="DATE_attributes">
						<xsl:with-param name="date">
							<xsl:copy-of select="."/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:apply-templates select="node()"/>
				</date>
			</xsl:otherwise>
		</xsl:choose>
		<!--<date xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:call-template name="DATE_attributes">
				<xsl:with-param name="date">
					<xsl:copy-of select="."/>
				</xsl:with-param>
			</xsl:call-template>
		<!-\-  Original Target XPath:  date   -\->
		<!-\- Awantika: date becomes date-text if text() is coming else date becomes date in HK03 -\->
			<xsl:choose>
				<xsl:when test="($streamID=$streamsThatUseDateTextChild) and node()">
					<date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates/>
					</date-text>
				</xsl:when>
				<xsl:when test="not($streamID=$streamsThatUseDateTextChild) and node()">
					<xsl:apply-templates/>					
				</xsl:when>
			</xsl:choose>
		</date>-->
	</xsl:template>
	
	<xsl:template match="date[parent::p-limited or ancestor::text][$streamID='UK12']">
		<date>
			<xsl:copy-of select="@*"/>
			<xsl:apply-templates select="node()"/>
		</date>
	</xsl:template>

	
</xsl:stylesheet>