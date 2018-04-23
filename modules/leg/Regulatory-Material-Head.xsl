<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" 
  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" 
  xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Regulatory-Material-Head">
  <title>Head <lnpid>id-AU15-20819</lnpid></title>
  <body>
    <p><targetxml>admindoc:head</targetxml> is created as described in the Introduction.</p>

    <section>
      <title>admindoc:head</title>
      <p>
        <ul>
          <li><sourcexml>/LEGDOC/leg:body/leg:info</sourcexml> <b>becomes</b><targetxml>admindoc:admindoc/admindoc:head</targetxml> and child elements as described below: 

			<ul>
			<li><sourcexml>leg:info/leg:dates/leg:effdate</sourcexml>
                <b>becomes</b>
                <targetxml>admindoc:head/admindoc:agencymaterialinfo/admindoc:dates/admindoc:effdate</targetxml>
                which is populated as follows: 
			  <note>Presentation stylesheet will replicate the element ordering.</note>
                <pre>
              <b><i>Example: Source XML 1</i></b>


&lt;leg:info&gt;
	&lt;leg:dates&gt;
        &lt;leg:effdate&gt;[2 July 2004 &amp;mdash; amended 1 January 2010]&lt;/leg:effdate&gt;
	&lt;/leg:dates&gt;
&lt;/leg:info&gt;

	</pre>
                <pre>

              <b><i>Example: Target XML 1</i></b>
                 

&lt;admindoc:head&gt;
	&lt;admindoc:agencymaterialinfo&gt;
		&lt;admindoc:dates&gt;
			&lt;admindoc:effdate&gt;[2 July 2004 &amp;#x2014; amended 1 January 2010]&lt;/admindoc:effdate&gt;
		&lt;/admindoc:dates&gt;
	&lt;/admindoc:agencymaterialinfo&gt;
&lt;/admindoc:head&gt;

                </pre>
              </li>
			</ul>
            <ul>
              <li>
                <sourcexml>leg:juris</sourcexml> can have State/Territory code or Country code. <ol>
                  <li> When <sourcexml>leg:juris</sourcexml> has State/Territory code: <note>The <targetxml>location:state</targetxml> will capture the
                    state and territory values which are NSW, VIC, TAS, SA, QLD, WA, ACT and NT.</note>
                    <sourcexml>leg:juris</sourcexml> becomes <targetxml>jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and
                    create <targetxml>dc:metadata/dc:coverage/location:state</targetxml> with attributes @codescheme="ISO-3166-2" and @statecode, value
                    for this attribute will be picked from the below mentioned pick list: <ol>
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
              &lt;leg:juris&gt;NSW&lt;/leg:juris&gt;
              
              <b>Becomes</b>
              
             &lt;jurisinfo:execbodyinfo&gt;
            &lt;jurisinfo:jurisdiction&gt;
                &lt;jurisinfo:system&gt;NSW&lt;/jurisinfo:system&gt;
            &lt;/jurisinfo:jurisdiction&gt;
        &lt;/jurisinfo:execbodyinfo&gt;
        &lt;dc:metadata&gt;
        &lt;dc:coverage&gt;
            &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"&gt;NSW&lt;/location:state&gt;
        &lt;/dc:coverage&gt;
        &lt;/dc:metadata&gt;
                     
                  </pre>
                    <pre>
              &lt;leg:juris&gt;ACT&lt;/leg:juris&gt;
              
              <b>Becomes</b>
              
             &lt;jurisinfo:execbodyinfo&gt;
            &lt;jurisinfo:jurisdiction&gt;
                &lt;jurisinfo:system&gt;ACT&lt;/jurisinfo:system&gt;
            &lt;/jurisinfo:jurisdiction&gt;
        &lt;/jurisinfo:execbodyinfo&gt;
        &lt;dc:metadata&gt;
        &lt;dc:coverage&gt;
            &lt;location:state codescheme="ISO-3166-2" statecode="AU-CT"&gt;ACT&lt;/location:state&gt;
        &lt;/dc:coverage&gt;
        &lt;/dc:metadata&gt;
                     
            </pre>
                  </li>
                  <li>When <sourcexml>leg:juris</sourcexml> has Country code: <note>If value for
                        <sourcexml>leg::juris</sourcexml> is "CTH" then
                        <sourcexml>leg:juris</sourcexml> will become
                        <targetxml>jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                      and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml>
                      with attributes @codescheme="ISO-3166-1" and @countrycode="AU". </note>
                    <pre>
              &lt;leg:juris&gt;CTH&lt;/leg:juris&gt;
              
              <b>Becomes</b>
              
             &lt;jurisinfo:execbodyinfo&gt;
            &lt;jurisinfo:jurisdiction&gt;
                &lt;jurisinfo:system&gt;CTH&lt;/jurisinfo:system&gt;
            &lt;/jurisinfo:jurisdiction&gt;
        &lt;/jurisinfo:execbodyinfo&gt;
        &lt;dc:metadata&gt;
        &lt;dc:coverage&gt;
            &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
        &lt;/dc:coverage&gt;
        &lt;/dc:metadata&gt;
                     
                </pre>
                    <p>If <sourcexml>leg:juris</sourcexml> has attribute
                        <sourcexml>@ln.user-displayed="false"</sourcexml> then map it as usual (as
                      if the <sourcexml>@ln.user-displayed</sourcexml> did not exist).</p>
                    <pre>
&lt;leg:juris searchtype="LEGISLATION" ln.user-displayed="false"&gt;ACT&lt;/leg:juris&gt;
              
<b>Becomes</b>
              
&lt;jurisinfo:execbodyinfo&gt;
     &lt;jurisinfo:jurisdiction&gt;
         &lt;jurisinfo:system&gt;ACT&lt;/jurisinfo:system&gt;
     &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:execbodyinfo&gt;
&lt;dc:metadata&gt;
    &lt;dc:coverage&gt;
        &lt;location:state codescheme="ISO-3166-2" statecode="AU-CT"&gt;ACT&lt;/location:state&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
                     
                </pre>
                    <note>If the input documents is having no jurisdiction information i.e.
                        <sourcexml>leg:juris</sourcexml> then conversion will create an empty output
                      structure shown below:</note>
                    <pre>
 &lt;admindoc:head&gt;
&lt;jurisinfo:execbodyinfo&gt;
&lt;jurisinfo:jurisdiction&gt;
&lt;jurisinfoystem&gt;&lt;!--Leg:juris is not present in Document which creates Head part. As 'Head' is mandatory, creating empty head structure--&gt;&lt;/jurisinfoystem&gt;
&lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:execbodyinfo&gt;
&lt;/admindoc:head&gt; 
</pre>
                  </li>
                </ol>
              </li>
            </ul>
           </li>
        </ul>
      </p>      
    </section>
    <section>
      <title>Changes</title>
      <p>2013-09-23: <ph id="change_20130923_VV">Instruction and example added for handling <sourcexml>leg:juris</sourcexml>.WebTeam # is 235110.</ph></p>      
    </section>
  </body>
	</dita:topic>

	

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  admindoc:admindoc/admindoc:head   -->
				<admindoc:info>
				  <xsl:apply-templates select="@*"/>
				  <xsl:apply-templates select="node() except(leg:dates|leg:juris|leg:year)"/>
				</admindoc:info>

	</xsl:template>

	<xsl:template match="leg:dates|leg:year">

		<!--  Original Target XPath:  admindoc:head/admindoc:agencymaterialinfo/admindoc:dates/admindoc:effdate   -->
			<admindoc:agencymaterialinfo>
				<admindoc:dates>
				  <xsl:choose>
				    <xsl:when test="self::leg:dates">
				      <xsl:apply-templates select="@* | node()"/>
				    </xsl:when>
				    <xsl:otherwise>
				      <miscdate datetype='leg.year'>
				        <xsl:apply-templates select="node()"/>
				      </miscdate>
				    </xsl:otherwise>
				  </xsl:choose>
				</admindoc:dates>
			</admindoc:agencymaterialinfo>
		

	</xsl:template>
  
  <xsl:template match="leg:effdate">
    
    <admindoc:effdate>
      <xsl:apply-templates select="@* | node()"/>
    </admindoc:effdate>
    
  </xsl:template>

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

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  jurisinfo:execbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:execbodyinfo>
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:execbodyinfo>

	</xsl:template>

</xsl:stylesheet>