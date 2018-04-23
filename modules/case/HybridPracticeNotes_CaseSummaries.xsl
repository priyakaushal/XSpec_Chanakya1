<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
	xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"
	version="2.0" exclude-result-prefixes="dita case glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="hybrid.practice.notes">
		<title>Hybrid Practice Notes-Case Summaries
			<lnpid>id-AU07-19239</lnpid></title>
		<body>
			<p>
				<ul>
					<li>
						<note><sourcexml>case:casename</sourcexml> of hybrid documents holds
								<b>"Practice Note" *and* “v” or “vs” (case insensitive)</b>.
							Please note that the hybrid documents only apply to NZ Practice
							Notes.</note>
						<p><b>Handling of <sourcexml>case:info</sourcexml> of hybrid
								practice notes/case summaries : </b></p>
						<sourcexml>case:info</sourcexml> becomes
							<targetxml>caseinfo:caseinfo</targetxml>. The children are
						described below: <ul>
							<li>
								<sourcexml>case:info/case:casename</sourcexml> becomes
									<targetxml>caseinfo:casename/caseinfo:fullcasename</targetxml>. </li>
							<li>
								<note>Handling of <sourcexml>case:reportercite</sourcexml> is
									already explained in
										<sourcexml>case:info/case:reportercite</sourcexml>
									section.</note>
							</li>
							<li>
								<sourcexml>case:info/case:courtinfo</sourcexml> becomes
									<targetxml>jurisinfo:courtinfo</targetxml>. The children are
								described below: <ul>
									<li>
										<sourcexml>case:courtname</sourcexml> becomes
											<targetxml>jurisinfo:courtname</targetxml>. </li>
									<li>
										<sourcexml>case:courtcode</sourcexml> becomes
											<targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>
										and create
											<targetxml>doc:legacy-metadata/meta/metaitem</targetxml>
										and the attributes will be populated as
											<targetxml>@name="case:courtcode"</targetxml> and
											<targetxml>@value</targetxml> will be the value of
											<sourcexml>case:courtcode</sourcexml>. </li>
									<li>
										<sourcexml>case:courtloc</sourcexml> becomes
											<targetxml>jurisinfo:jurisdiction/jurisinfo:location/location:city</targetxml>. </li>
									<li>
										<sourcexml>case:juris</sourcexml> becomes
											<targetxml>jurisinfo:jurisdiction/jurisinfo:system</targetxml>
										and create
											<targetxml>dc:metadata/dc:coverage/location:country</targetxml>
										with attributes
											<targetxml>@codescheme="ISO-3166-1"</targetxml> and
											<targetxml>@countrycode</targetxml>, this is for capturing
										country value and the nomenclature will be to put the
										country code (NZ). </li>
									<li>
										<sourcexml>case:filenum</sourcexml> becomes
											<targetxml>courtorder:head/caseinfo:caseinfo/caseinfo:docketnum</targetxml>. </li>
									<li>
										<sourcexml>case:info/case:courtinfo/case:dates</sourcexml>
										is a container element and need not be carried forward in
										the conversion. However, all content must be converted such
										that the order of elements is maintained whenever possible.
										Please see the "Maintain the Order of Elements Whenever
										Possible" section for more information. The child element is
										described as below: <ul>
											<li>
												<sourcexml>case:dates/case:decisiondate/date @day=""
													@month="" @year=""</sourcexml> becomes
													<targetxml>decision:dates/decision:decisiondate
													@day="" @month="" @year=""</targetxml>. The attribute
													<targetxml>decision:decisiondate/@normdate</targetxml>
												should be populated with the values of
													<sourcexml>case:decisiondate/date/@year</sourcexml>,
													<sourcexml>case:decisiondate/date/@month</sourcexml>
												and <sourcexml>case:decisiondate/date/@day</sourcexml>
												concatenated and separated by a single hyphen. The
												values of
													<sourcexml>case:decisiondate/date/@month</sourcexml>
												and <sourcexml>case:decisiondate/date/@day</sourcexml>
												should be padded with zeroes so that they are 2 digits.
													<note>If one or more of the three date values (year,
													month or day) are absent, then
														<targetxml>decision:decisiondate/@normdate</targetxml>
													should <b>not</b> be populated.</note>
											</li>
											<li>
												<p><b>The following conversion instruction is specific
														to NZ CourtOrders:</b></p>
												<sourcexml>case:info/case:courtinfo/case:dates/case:hearingdates</sourcexml>
												becomes
													<targetxml>/courtorder:head/caseinfo:caseinfo/decision:dates/decision:argueddate</targetxml>
												<note>This is likely not a complete date, rather just a
													day. Do not attempt to place a complete date if there
													is not sufficient content in source (year, month and
													day). It should remain PCDATA. See example.</note>
											</li>
										</ul>
									</li>
									<li>
										<sourcexml>case:judges/case:judge</sourcexml> becomes
											<targetxml>courtcase:panel/courtcase:judges/person:judge/person:person/person.name.text</targetxml>
									</li>
								</ul>
							</li>
							<li>
								<sourcexml>case:info/glp:note</sourcexml> becomes
									<targetxml>caseinfo:caseinfo/note</targetxml>. The children
								are described below: <ul>
									<li>
										<sourcexml>glp:note/remotelink</sourcexml> - Please refer to
										general markup section on how to handle
											<sourcexml>glp:note/remotelink</sourcexml>. </li>
								</ul>
							</li>
						</ul>
						<pre>

&lt;case:info&gt;
    &lt;case:casename&gt;Practice Note R v Leonard&lt;/case:casename&gt;
    &lt;case:reportercite&gt;
        &lt;ci:cite type="cite4thisdoc"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="NZLR"/&gt;
                    &lt;ci:volume num="2"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="2008"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="218"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;[2008] 2 NZLR 218&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:reportercite&gt;
    &lt;case:courtinfo&gt;
        &lt;case:courtname&gt;Court of Appeal&lt;/case:courtname&gt;
        &lt;case:courtcode&gt;NZCA&lt;/case:courtcode&gt;
        &lt;case:courtloc&gt;Wellington&lt;/case:courtloc&gt;
        &lt;case:juris&gt;NZ&lt;/case:juris&gt;
        &lt;case:filenum&gt;CA 417/07; [2007] NZCA 452&lt;/case:filenum&gt;
        &lt;case:dates&gt;
            &lt;case:hearingdates&gt;17 October; &lt;/case:hearingdates&gt;
            &lt;case:decisiondate&gt;
                &lt;date day="19" month="12" year="2007"&gt;19 December 2007&lt;/date&gt;
            &lt;/case:decisiondate&gt;
        &lt;/case:dates&gt;
        &lt;case:judges&gt;Glazebrook, Hammond and Ellen France JJ&lt;/case:judges&gt;
    &lt;/case:courtinfo&gt;
    &lt;glp:note&gt;
        &lt;remotelink alttext="Find this case in Linxplus and NZ Unreported Judgments"
            remotekey1="((CASE-NAME(Practice Note  R and Leonard) OR CASE-NAME(R and Leonard) ) and JUDGMENT-DATE(=19 December 2007)) or REPORTED-CITE(2008 2 NZLR 218)"
            remotekey2="Linxplus and NZ Unreported Judgments" service="QUERY"
            &gt;AccessLinxplus and NZ Unreported Judgments
        &lt;/remotelink&gt;
    &lt;/glp:note&gt;
&lt;/case:info&gt;

<b>Becomes</b>

&lt;caseinfo:caseinfo&gt;
    &lt;caseinfo:casename&gt;
        &lt;caseinfo:fullcasename&gt;Practice Note R v Leonard&lt;/caseinfo:fullcasename&gt;
    &lt;/caseinfo:casename&gt;
    &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:courtname&gt;Court of Appeal&lt;/jurisinfo:courtname&gt;
        &lt;jurisinfo:alternatecourtcode @alternatecourtcode="NZCA"/&gt; 
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:location&gt;
                &lt;location:city&gt;Wellington&lt;/location:city&gt;
            &lt;/jurisinfo:location&gt;
            &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;
    &lt;caseinfo:docketnum&gt;CA 417/07; [2007] NZCA 452&lt;/caseinfo:docketnum&gt;
    &lt;decision:dates&gt;
        &lt;decision:argueddate&gt;17 October; &lt;/decision:argueddate&gt;
        &lt;decision:decisiondate day="19" month="12" year="2007" normdate="2007-12-19"&gt;19 December 2007&lt;/decision:decisiondate&gt;
    &lt;/decision:dates&gt;
    &lt;courtcase:panel&gt;
        &lt;courtcase:judges&gt;
            &lt;person:judge&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;Glazebrook, Hammond and Ellen France JJ&lt;/person:name.text&gt;
                &lt;/person:person&gt;
            &lt;/person:judge&gt;
        &lt;/courtcase:judges&gt;
    &lt;/courtcase:panel&gt;
&lt;/caseinfo:caseinfo&gt;
                
</pre>
					</li>
				</ul>
			</p>
			<section>
				<title>Changes</title>
				<p>2013-01-17: <ph id="change_20130117_dsf">Instructions on how to
						populate <targetxml>decision:decisiondate/@normdate</targetxml> were
						added. The target example was updated to include
							<targetxml>@normdate</targetxml> in
							<targetxml>decision:decisiondate</targetxml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\HybridPracticeNotes_CaseSummaries.dita  -->

	<!-- Note: case:casename of hybrid documents holds "Practice Note" *and* “v” or “vs” (case insensitive). Please note that the hybrid documents only apply to NZ Practice Notes -->
	
	<!-- JD: 2017-07-25: removing for now.  Creates invalid markup if all elements required by <caseinfo:caseinfo> are not present; this markup is not present in DT output for NZ18-->
	
	<!--<xsl:template
		match="case:info[case:casename[(contains(lower-case(.), 'practice note')) and (contains(lower-case(.), 'v') or contains(lower-case(.), 'vs'))]]" priority="1">
		<!-\-  Original Target XPath:  caseinfo:caseinfo   -\->
		<caseinfo:caseinfo>
			<xsl:apply-templates select="@* | node()" mode="fullcasename"/>
		</caseinfo:caseinfo>
	</xsl:template>
	
	<xsl:template match="case:info/case:casename" mode="fullcasename">
		<caseinfo:fullcasename>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:fullcasename>
	</xsl:template>-->
	
	<xsl:template match="case:info/case:casename">
		<xsl:choose>
			<!-- if there is a <heading> that will have created the <heading> output element -->
			<xsl:when test="parent::case:info/parent::case:headnote/preceding-sibling::heading">				
				<title xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</xsl:when>
			<!-- otherwise, create <heading> output element. -->
			<xsl:otherwise>
				<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<title>
						<xsl:apply-templates select="@* | node()"/>
					</title>
				</heading>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="case:casename/@searchtype"/>
	

<!--	<xsl:template match="case:info/case:casename">
		<!-\-  Original Target XPath:  caseinfo:casename/caseinfo:fullcasename   -\->
		<caseinfo:fullcasename>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:fullcasename>
	</xsl:template>
-->
	<!--<xsl:template match="case:reportercite">

		<!-\-  Original Target XPath:  jurisinfo:courtinfo   -\->
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtinfo>

	</xsl:template>-->

	<!--<xsl:template match="case:info/case:reportercite">
		<!-\-  Original Target XPath:  jurisinfo:courtinfo   -\->
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtinfo>
	</xsl:template>-->

	<!--<xsl:template match="case:info/case:courtinfo">
		<!-\-  Original Target XPath:  jurisinfo:courtinfo   -\->
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtinfo>
	</xsl:template>-->

	<xsl:template match="case:courtname">
		<!--  Original Target XPath:  jurisinfo:courtname   -->
		<jurisinfo:courtname>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtname>
	</xsl:template>

	<xsl:template match="case:courtcode">
		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<!--<jurisinfo:courtinfo>-->
		<jurisinfo:alternatecourtcode>
			<xsl:attribute name="alternatecourtcode" select="."/>
		</jurisinfo:alternatecourtcode>
		<!--</jurisinfo:courtinfo>-->
	</xsl:template>

	<!--<xsl:template match="case:courtloc">
		<!-\-  Original Target XPath:  jurisinfo:jurisdiction/jurisinfo:location/location:city   -\->
		<jurisinfo:jurisdiction>
			<jurisinfo:location>
				<location:city
					xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/">
					<xsl:apply-templates select="@* | node()"/>
				</location:city>
			</jurisinfo:location>
		</jurisinfo:jurisdiction>

	</xsl:template>-->

	<xsl:template match="case:juris">
		<!--  Original Target XPath:  jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:jurisdiction>
			<jurisinfo:system>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>
	</xsl:template>



	<!--<xsl:template match="case:filenum">

		<!-\-  Original Target XPath:  courtorder:head/caseinfo:caseinfo/caseinfo:docketnum   -\->
		<!-\-<courtorder:head>
			<caseinfo:caseinfo>-\->
				<caseinfo:docketnum>
					<xsl:apply-templates select="@* | node()"/>
				</caseinfo:docketnum>
			<!-\-</caseinfo:caseinfo>
		</courtorder:head>-\->

	</xsl:template>-->

	<xsl:template match="case:info/case:courtinfo/case:dates">

		<!--  Original Target XPath:  decision:dates/decision:decisiondate@day=""@month=""@year=""   -->
		<decision:dates>
			<decision:decisiondate>
				<!--<xsl:apply-templates select="@* | node()"/>-->
				<xsl:call-template name="DATE_attributes">
					<xsl:with-param name="date" select="."/>
				</xsl:call-template>
				<xsl:apply-templates/>
			</decision:decisiondate>
		</decision:dates>

	</xsl:template>
	<!--
	<xsl:template match="case:dates/case:decisiondate/date @day=&#34;&#34;&#xA;                                                @month=&#34;&#34; @year=&#34;&#34;">

		<!-\-  Original Target XPath:  decision:dates/decision:decisiondate@day=""@month=""@year=""   -\->
		<decision:dates>
			<decision:decisiondate>
				<xsl:apply-templates select="@* | node()"/>
			</decision:decisiondate>
		</decision:dates>

	</xsl:template>
-->
	<!--	<xsl:template match="case:decisiondate/date/@year">

		<!-\-  Original Target XPath:  decision:decisiondate/@normdate   -\->
		<decision:decisiondate>
			<xsl:attribute name="normdate">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@month">

		<!-\-  Original Target XPath:  decision:decisiondate/@normdate   -\->
		<decision:decisiondate>
			<xsl:attribute name="normdate">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:decisiondate/date/@day">

		<!-\-  Original Target XPath:  decision:decisiondate/@normdate   -\->
		<decision:decisiondate>
			<xsl:attribute name="normdate">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>
-->
	<xsl:template match="case:info/case:courtinfo/case:dates/case:hearingdates">

		<!--  Original Target XPath:  /courtorder:head/caseinfo:caseinfo/decision:dates/decision:argueddate   -->
		<!--<courtorder:head>
			<caseinfo:caseinfo>-->
				<decision:dates>
					<decision:argueddate>
						<xsl:apply-templates select="@* | node()"/>
					</decision:argueddate>
				</decision:dates>
			<!--</caseinfo:caseinfo>
		</courtorder:head>-->

	</xsl:template>

	<xsl:template match="case:judges/case:judge">

		<!--  Original Target XPath:  courtcase:panel/courtcase:judges/person:judge/person:person/person.name.text   -->
		<courtcase:panel>
			<courtcase:judges>
				<person:judge
					xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
					<person:person>
						<person.name.text>
							<xsl:apply-templates select="@* | node()"/>
						</person.name.text>
					</person:person>
				</person:judge>
			</courtcase:judges>
		</courtcase:panel>

	</xsl:template>

	<xsl:template match="case:info/glp:note">
		<!--  Original Target XPath:  caseinfo:caseinfo/note   -->
		<!--<caseinfo:caseinfo>-->
			<note>
				<xsl:apply-templates select="@* | node()"/>
			</note>
		<!--</caseinfo:caseinfo>-->
	</xsl:template>
<!--
	<xsl:template match="glp:note/remotelink">

		<!-\-  Original Target XPath:  decision:decisiondate/@normdate   -\->
		<decision:decisiondate>
			<xsl:attribute name="normdate">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>-->

</xsl:stylesheet>
