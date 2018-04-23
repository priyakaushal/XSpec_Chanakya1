<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.juris">
  <title>case:juris <lnpid>id-AU01-18228</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:juris</sourcexml> can have State/Territory code or Country code. <ol>
            <li> When <sourcexml>case:juris</sourcexml> has State/Territory code:
                <sourcexml>case:juris</sourcexml> becomes
                <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
              and create <targetxml>dc:metadata/dc:coverage/location:state</targetxml> with
              attributes @codescheme="ISO-3166-2" and @statecode, value for this attribute will be
              picked from the below mentioned pick list: <ol>
                <li> AU-NS : New South Wales (NSW) </li>
                <li> AU-QL : Queensland (QLD) </li>
                <li> AU-SA : South Australia (SA) </li>
                <li> AU-TS : Tasmania (TAS) </li>
                <li> AU-VI : Victoria (VIC) </li>
                <li> AU-WA : Western Australia (WA) </li>
                <li> AU-CT : Australian Capital Territory (ACT) </li>
                <li> AU-NT : Northern Territory (NT) </li>
              </ol> and the value for
                <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>
              will be picked up from
              <sourcexml>case:courtcode</sourcexml>.<pre xml:space="preserve">

&lt;case:courtinfo&gt;
  ...
  &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt;
  ...
  &lt;case:juris&gt;nsw&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;
<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="NSWSC" /&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;nsw&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"/&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

</pre>
            </li>
            <li> When <sourcexml>case:juris</sourcexml> has Country code: <note>If value for
                  <sourcexml>case:juris</sourcexml> is "CTH" then <sourcexml>case:juris</sourcexml>
                will become
                  <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with
                attributes @codescheme="ISO-3166-1" and @countrycode="AU". </note>
              <pre xml:space="preserve">
&lt;case:juris&gt;CTH&lt;/case:juris&gt;

<b>Becomes</b>
              
&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;CTH&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
</pre>
              <note>The ordering of the <targetxml>jurisinfo:alternatecourtcode</targetxml> and
                  <targetxml>jurisinfo:jurisdiction\jurisinfo:system</targetxml> is not significant
                in terms of display.</note>
            </li>
          </ol>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.juris.dita  -->
<!-- Awantika: 2017-11-01- Added fj value as AU-FJ source has fj value in case:juris -->
	<!-- Awantika: 2017-11-07- Added markup for uk,can,nz in case:juris. Webstar # 7041469  -->
	<!-- Ankita : 20-12-2017- Added markup for "us" in case:juris . Webtar# 7071460 -->
	<xsl:template match="case:juris[starts-with(upper-case(.),'NSW') or starts-with(upper-case(.),'QLD') or starts-with(upper-case(.),'SA') or starts-with(upper-case(.),'TAS') or starts-with(upper-case(.),'VIC') or starts-with(upper-case(.),'WA') or starts-with(upper-case(.),'ACT') or starts-with(upper-case(.),'NT') or starts-with(upper-case(.),'CTH') or starts-with(lower-case(.),'cth') or starts-with(lower-case(.),'fj') or starts-with(lower-case(.),'uk') or starts-with(lower-case(.),'nz') or starts-with(lower-case(.),'can') or starts-with(lower-case(.),'sg')or starts-with(lower-case(.),'us')]">
		<!-- TODO: check that jurisinfo:courtinfo is created from case:courtinfo -->
		<!--<jurisinfo:courtinfo-->
		<!--	<xsl:apply-templates select="preceding-sibling::case:courtcode[1]"/>-->
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
				<xsl:apply-templates select="case:courtloc"/>
				<!--<xsl:apply-templates select="preceding-sibling::case:courtloc[$streamID='AU01']"/>-->
			</jurisinfo:jurisdiction>
		<!--</jurisinfo:courtinfo>-->
	</xsl:template>
	
	<!-- Awantika: common module of case:courtcode is already created -->
	<!--<xsl:template match="case:courtcode">
		<jurisinfo:alternatecourtcode alternatecourtcode="{.}" />
	</xsl:template>-->
	
	<xsl:template match="case:juris[starts-with(upper-case(.),'NSW') or starts-with(upper-case(.),'QLD') or starts-with(upper-case(.),'SA') or starts-with(upper-case(.),'TAS') or starts-with(upper-case(.),'VIC') or starts-with(upper-case(.),'WA') or starts-with(upper-case(.),'ACT') or starts-with(upper-case(.),'NT') or starts-with(lower-case(.),'fj')]"
		mode="metadata">
		<dc:coverage>
			<location:state codescheme="ISO-3166-2">
				<xsl:attribute name="statecode">
					<xsl:choose>
						<xsl:when test="starts-with(upper-case(.),'NSW')"><xsl:value-of select="'AU-NS'"/></xsl:when>
						<xsl:when test="starts-with(upper-case(.),'QLD')"><xsl:value-of select="'AU-QL'"/></xsl:when>
						<xsl:when test="starts-with(upper-case(.),'SA')"><xsl:value-of select="'AU-SA'"/></xsl:when>
						<xsl:when test="starts-with(upper-case(.),'TAS')"><xsl:value-of select="'AU-TS'"/></xsl:when>
						<xsl:when test="starts-with(upper-case(.),'VIC')"><xsl:value-of select="'AU-VI'"/></xsl:when>
						<xsl:when test="starts-with(upper-case(.),'WA')"><xsl:value-of select="'AU-WA'"/></xsl:when>
						<xsl:when test="starts-with(upper-case(.),'ACT')"><xsl:value-of select="'AU-CT'"/></xsl:when>
						<xsl:when test="starts-with(upper-case(.),'NT')"><xsl:value-of select="'AU-NT'"/></xsl:when>
						<xsl:when test="starts-with(upper-case(.),'FJ')"><xsl:value-of select="'AU-FJ'"/></xsl:when>
						<!--<xsl:when test="starts-with(upper-case(.),'SG')"><xsl:value-of select="'AU-SG'"/></xsl:when>-->
					</xsl:choose>
				</xsl:attribute>
				<!--<xsl:apply-templates />-->
			</location:state>
		</dc:coverage>
	</xsl:template>

	<!--<xsl:template match="case:juris[starts-with(upper-case(.),'CTH') or starts-with(lower-case(.),'cth')]" mode="metadata" priority="20">
		<!-\-<jurisinfo:courtinfo>-\->
		<jurisinfo:jurisdiction>
			<jurisinfo:system>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>
		<!-\-</jurisinfo:courtinfo>-\->
	</xsl:template>-->
	
	<xsl:template match="case:juris[starts-with(upper-case(.),'CTH') or starts-with(lower-case(.),'cth')or starts-with(lower-case(.),'uk') or starts-with(lower-case(.),'nz') or starts-with(lower-case(.),'can') or starts-with(lower-case(.),'sg')or starts-with(lower-case(.),'us')]"
		mode="metadata" priority="20">
		<dc:coverage>
			<xsl:choose>
				<xsl:when test="starts-with(upper-case(.),'CTH') or starts-with(lower-case(.),'cth')">
					<location:country codescheme="ISO-3166-1">
						<xsl:attribute name="countrycode">
							<xsl:value-of select="'AU'"/>
						</xsl:attribute>
					</location:country>
				</xsl:when>
				<xsl:when test="starts-with(lower-case(.),'uk')">
					<location:country codescheme="ISO-3166-2">
						<xsl:attribute name="countrycode">
							<xsl:value-of select="'UK'"/>
						</xsl:attribute>
					</location:country>
				</xsl:when>
				<xsl:when test="starts-with(lower-case(.),'can')">
					<location:country codescheme="ISO-3166-1">
						<xsl:attribute name="countrycode">
							<xsl:value-of select="'CA'"/>
						</xsl:attribute>
					</location:country>
				</xsl:when>
				<xsl:when test="starts-with(lower-case(.),'sg')">
					<location:country codescheme="ISO-3166-1">
						<xsl:attribute name="countrycode">
							<xsl:value-of select="'SG'"/>
						</xsl:attribute>
					</location:country>
				</xsl:when>
				<xsl:when test="starts-with(lower-case(.),'us')">
					<location:country codescheme="ISO-3166-1">
						<xsl:attribute name="countrycode">
							<xsl:value-of select="'US'"/>
						</xsl:attribute>
					</location:country>
				</xsl:when>
					<xsl:when test="starts-with(lower-case(.),'nz')">
					<location:country codescheme="ISO-3166-1">
							<xsl:attribute name="countrycode">
								<xsl:value-of select="'NZ'"/>
							</xsl:attribute>
						</location:country>
					</xsl:when>
			</xsl:choose>
			
		</dc:coverage>
		<!--</jurisinfo:courtinfo>-->
	</xsl:template>
	<!--
	<xsl:template match="case:juris" mode="metadata">
		<dc:coverage>
			<location:country>
				<xsl:attribute name="countrycode" select="'AU'"/>
				<xsl:attribute name="codescheme">ISO-3166-2</xsl:attribute>       
			</location:country>						
		</dc:coverage>
	</xsl:template>
-->
</xsl:stylesheet>