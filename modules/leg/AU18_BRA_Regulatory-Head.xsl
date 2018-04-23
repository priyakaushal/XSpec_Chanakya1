<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0"
	exclude-result-prefixes="dita leg jurisinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="admindoc-head">
		<title>Head <lnpid>id-AU18-21417</lnpid></title>
		<body>
			<p><targetxml>admindoc:head</targetxml> is created as described in the Introduction.</p>

			<section>
				<title>admindoc:head</title>

				<p>
					<ul>
						<li><sourcexml>leg:juris</sourcexml> can have State/Territory code or
							Country code. <ol>
								<li> When <sourcexml>leg:juris</sourcexml> has State/Territory code:
										<note>The <targetxml>location:state</targetxml> will capture
										the state and territory values which are NSW, VIC, TAS, SA,
										QLD, WA, ACT and NT.</note>
									<sourcexml>/LEGDOC/leg:body/leg:info/leg:juris</sourcexml>
									becomes
										<targetxml>admindoc:admindoc/admindoc:head/jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
									and create
										<targetxml>dc:metadata/dc:coverage/location:state</targetxml>
									with attributes @codescheme="ISO-3166-2" and @statecode, value
									for this attribute will be picked from the below mentioned pick
									list: <ol>
										<li> AU-NS : New South Wales (NSW) </li>
										<li> AU-QL : Queensland (QLD) </li>
										<li> AU-SA : South Australia (SA) </li>
										<li> AU-TS : Tasmania (TAS) </li>
										<li> AU-VI : Victoria (VIC) </li>
										<li> AU-WA : Western Australia (WA) </li>
										<li> AU-CT : Australian Capital Territory (ACT) </li>
										<li> AU-NT : Northern Territory (NT) </li>
									</ol>
									<pre>
              <b><i>Example: Source XML 1</i></b>


&lt;leg:juris&gt;NSW&lt;/leg:juris&gt;

                </pre>
									<pre>
              <b><i>Example: Target XML 1</i></b>


&lt;admindoc:head&gt;
&lt;jurisinfo:execbodyinfo&gt;
	&lt;jurisinfo:jurisdiction&gt;
		&lt;jurisinfo:system&gt;NSW&lt;/jurisinfo:system&gt;
	&lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;

&lt;dc:metadata&gt;
	&lt;dc:coverage&gt;
		&lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"&gt;NSW&lt;/location:state&gt;
	&lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

                </pre>
									<pre>
				      <b><i>Example: Source XML 2</i></b>        
              
              
              &lt;leg:juris&gt;ACT&lt;/leg:juris&gt;
              
              <b>Becomes</b>

                  <b><i>Example: Target XML 2</i></b>              
             

&lt;admindoc:head&gt;
&lt;jurisinfo:execbodyinfo&gt;
	&lt;jurisinfo:jurisdiction&gt;
		&lt;jurisinfo:system&gt;ACT&lt;/jurisinfo:system&gt;
	&lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;

        &lt;dc:metadata&gt;
        &lt;dc:coverage&gt;
            &lt;location:state codescheme="ISO-3166-2" statecode="AU-CT"/&gt;
        &lt;/dc:coverage&gt;
        &lt;/dc:metadata&gt;
                     
            </pre>
								</li> <li>When <sourcexml>leg:juris</sourcexml> has Country code:
										<note>If value for <sourcexml>leg::juris</sourcexml> is
										"CTH" then <sourcexml>leg:juris</sourcexml> will become
											<targetxml>admindoc:admindoc/admindoc:head/jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
										and create
											<targetxml>dc:metadata/dc:coverage/location:country</targetxml>
										with attributes @codescheme="ISO-3166-1" and
										@countrycode="AU". </note>
									<pre>
              &lt;leg:juris&gt;CTH&lt;/leg:juris&gt;
              
              <b>Becomes</b>
              
             
&lt;admindoc:head&gt;
&lt;jurisinfo:execbodyinfo&gt;
	&lt;jurisinfo:jurisdiction&gt;
		&lt;jurisinfo:system&gt;CTH&lt;/jurisinfo:system&gt;
	&lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;

        &lt;dc:metadata&gt;
        &lt;dc:coverage&gt;
            &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
        &lt;/dc:coverage&gt;
        &lt;/dc:metadata&gt;
                     
        </pre>
								</li> <li><note>When <sourcexml>leg:juris</sourcexml> has attribute
											<sourcexml>@ln.user-displayed="false"</sourcexml> then
										refer the general markup <xref
											href="../../common_newest/Rosetta_leg.juris_ln.user-displayed.dita"
											>@ln.user_displayed="false"</xref> section in the CI and
										target mapping example shown below:</note>
									<pre>
                  &lt;leg:juris ln.user-displayed="false"&gt;ACT&lt;/leg:juris&gt;
              
              <b>Becomes</b>
              
             
		&lt;admindoc:head&gt;
&lt;jurisinfo:execbodyinfo&gt;
	&lt;jurisinfo:jurisdiction&gt;
		&lt;jurisinfo:system&gt;ACT&lt;/jurisinfo:system&gt;
	&lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt;

        &lt;dc:metadata&gt;
			&lt;dc:coverage&gt;
				&lt;location:state codescheme="ISO-3166-2" statecode="AU-CT"&gt;ACT&lt;/location:state&gt;
			&lt;/dc:coverage&gt;
		&lt;/dc:metadata&gt;
        
      </pre>
								</li> </ol>
						</li>
						<li><sourcexml>/LEGDOC/leg:body/leg:info/leg:year</sourcexml>
							<b>becomes</b>
							<targetxml>admindoc:admindoc/admindoc:head/admindecision:decisioninfo/admindecision:dates/admindecision:adopteddate/date-text</targetxml>
							and populate as follows: <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:info&gt;
 &lt;leg:year ln.user-displayed="false" searchtype="LEGISLATION"&gt;2005&lt;/leg:year&gt;
&lt;/leg:info&gt;
            </pre>
							<pre>
              <b><i>Example: Target XML 1</i></b>

&lt;admindoc:head&gt;
 &lt;admindecision:decisioninfo&gt;
  &lt;admindecision:dates&gt;
   &lt;admindecision:adopteddate year="2005"&gt;
    &lt;date-text&gt;2005&lt;/date-text&gt;
   &lt;/admindecision:adopteddate&gt;
  &lt;/admindecision:dates&gt;
 &lt;/admindecision:decisioninfo&gt;
&lt;/admindoc:head&gt;

            </pre>
						</li>
					</ul>
				</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2013-12-03: <ph id="change_20131203_SSX">Added instruction to handle leg:juris
						and leg:year WebTeam # 247093</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU18_BRA_Regulatory\AU_BRA_Regulatory-Head.dita  -->
	<!--<xsl:message>AU18_BRA_Regulatory-Head.xsl requires manual development!</xsl:message>-->
	
	<xsl:template match="leg:info">
		
		<!--  Original Target XPath:  admindoc:admindoc/admindoc:head   -->
		<admindoc:info>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="node() except(leg:dates | leg:status[@statuscode='historical'])"/>
		</admindoc:info>
		
	</xsl:template>
	
	<xsl:template match="leg:dates">
		
		<!--  Original Target XPath:  admindoc:head/admindoc:agencymaterialinfo/admindoc:dates/admindoc:effdate   -->
		<admindoc:agencymaterialinfo>
			<admindoc:dates>
				<xsl:apply-templates select="@* | node()"/>
			</admindoc:dates>
		</admindoc:agencymaterialinfo>
		
		
	</xsl:template>
	
	<xsl:template match="leg:effdate">
		
		<admindoc:effdate>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:effdate>
		
	</xsl:template>
	
	<xsl:template match="leg:juris"/>
	
	<xsl:template match="leg:juris" mode="metadata">
		<dc:coverage>
			<xsl:choose>
				<xsl:when test="upper-case(.) = 'CTH'">
					<location:country codescheme="ISO-3166-1" countrycode='AU'/>
				</xsl:when>
				<xsl:otherwise>
					<location:state codescheme="ISO-3166-2">
						<xsl:attribute name="statecode">
							<xsl:choose>
								<xsl:when test="upper-case(.) = 'NSW'">AU-NS</xsl:when>
								<xsl:when test="upper-case(.) = 'QLD'">AU-QL</xsl:when>
								<xsl:when test="upper-case(.) = 'SA'">AU-SA</xsl:when>
								<xsl:when test="upper-case(.) = 'TAS'">AU-TS</xsl:when>
								<xsl:when test="upper-case(.) = 'VIC'">AU-VI</xsl:when>
								<xsl:when test="upper-case(.) = 'WA'">AU-WA</xsl:when>
								<xsl:when test="upper-case(.) = 'ACT'">AU-CT</xsl:when>
								<xsl:when test="upper-case(.) = 'NT'">AU-NT</xsl:when>
							</xsl:choose>
						</xsl:attribute>
						<xsl:apply-templates select="node()"/>
					</location:state>
				</xsl:otherwise>
			</xsl:choose>
		</dc:coverage>
	</xsl:template>
</xsl:stylesheet>
