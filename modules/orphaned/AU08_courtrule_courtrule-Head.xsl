<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0"
  exclude-result-prefixes="dita leg">

<!-- 
  replaced thsi file with AU_leg.juris.xsl
   don't use this one.
   paul
  
  -->


  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtrule-Head">
    <title>Head <lnpid>id-AU08-19408</lnpid></title>
    <body>
      <p><targetxml>courtrule:courtrule/courtrule:head</targetxml> is created as described in the Introduction.</p>

      <section>
        <title>courtrule:head</title>
        <p>
          <ul>
            <li>
              <sourcexml>leg:juris</sourcexml> can have State/Territory code or Country code. <ol>
                <li> When <sourcexml>leg:juris</sourcexml> has State/Territory code: <note>The <targetxml>location:state</targetxml> will capture the state and territory values which are NSW, VIC,
                    TAS, SA, QLD, WA, ACT and NT.</note>
                  <sourcexml>leg:juris</sourcexml> becomes <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and create
                    <targetxml>dc:metadata/dc:coverage/location:state</targetxml> with attributes @codescheme="ISO-3166-2" and @statecode, value for this attribute will be picked from the below
                  mentioned pick list: <ol>
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
              
             &lt;jurisinfo:legisbodyinfo&gt;
            &lt;jurisinfo:jurisdiction&gt;
                &lt;jurisinfo:system&gt;NSW&lt;/jurisinfo:system&gt;
            &lt;/jurisinfo:jurisdiction&gt;
        &lt;/jurisinfo:legisbodyinfo&gt;
        &lt;dc:metadata&gt;
        &lt;dc:coverage&gt;
            &lt;location:state codescheme="ISO-3166-2" statecode="AU-NS"&gt;NSW&lt;/location:state&gt;
        &lt;/dc:coverage&gt;
        &lt;/dc:metadata&gt;
                     
                  </pre>
                  <pre>
              &lt;leg:juris&gt;ACT&lt;/leg:juris&gt;
              
              <b>Becomes</b>
              
             &lt;jurisinfo:legisbodyinfo&gt;
            &lt;jurisinfo:jurisdiction&gt;
                &lt;jurisinfo:system&gt;ACT&lt;/jurisinfo:system&gt;
            &lt;/jurisinfo:jurisdiction&gt;
        &lt;/jurisinfo:legisbodyinfo&gt;
        &lt;dc:metadata&gt;
        &lt;dc:coverage&gt;
            &lt;location:state codescheme="ISO-3166-2" statecode="AU-CT"&gt;ACT&lt;/location:state&gt;
        &lt;/dc:coverage&gt;
        &lt;/dc:metadata&gt;
                     
            </pre>
                </li>
                <li>When <sourcexml>leg:juris</sourcexml> has Country code: <note>If value for <sourcexml>leg::juris</sourcexml> is "CTH" then <sourcexml>leg:juris</sourcexml> will become
                      <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with attributes
                    @codescheme="ISO-3166-1" and @countrycode="AU". </note>
                  <pre>
              &lt;leg:juris&gt;CTH&lt;/leg:juris&gt;
              
              <b>Becomes</b>
              
             &lt;jurisinfo:legisbodyinfo&gt;
            &lt;jurisinfo:jurisdiction&gt;
                &lt;jurisinfo:system&gt;CTH&lt;/jurisinfo:system&gt;
            &lt;/jurisinfo:jurisdiction&gt;
        &lt;/jurisinfo:legisbodyinfo&gt;
        &lt;dc:metadata&gt;
        &lt;dc:coverage&gt;
            &lt;location:country codescheme="ISO-3166-1" countrycode="AU"/&gt;
        &lt;/dc:coverage&gt;
        &lt;/dc:metadata&gt;
                     
                </pre>
                  <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.juris_ln.user-displayed.dita"
                      >ln.user_displayed="false"</xref> section in the CI.</note>
                  <note>If the input documents is having no jurisdiction information i.e. <sourcexml>leg:juris</sourcexml> then conversion will create an empty output structure shown below:</note>
                  <pre>
 &lt;courtrule:head&gt;
&lt;jurisinfo:legisbodyinfo&gt;
&lt;jurisinfo:jurisdiction&gt;
&lt;jurisinfoystem&gt;&lt;!--Leg:juris is not present in Document which creates Head part. As 'Head' is mandatory, creating empty head structure--&gt;&lt;/jurisinfoystem&gt;
&lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;
&lt;/courtrule:head&gt; 
</pre>
                </li>
              </ol>
            </li>
          </ul>
        </p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU08_courtrule\courtrule-Head.dita  -->
  <xsl:message>AU08_courtrule_courtrule-Head.xsl requires manual development!</xsl:message>

  <xsl:template match="leg:juris" mode="AUjurisinfo">
    <xsl:variable name="juris" select="."/>
    <!--  Original Target XPath:  location:state   -->
    <xsl:choose>
      <xsl:when test="$juris = 'NSW' or $juris = 'VIC' or $juris = 'TAS' or $juris = 'SA' or $juris = 'QLD' or $juris = 'WA' or $juris = 'ACT' or $juris = 'NT'">
        <jurisinfo:legisbodyinfo>
          <jurisinfo:jurisdiction>
            <jurisinfo:system>
              <xsl:apply-templates select="@* | node()"/>
            </jurisinfo:system>
          </jurisinfo:jurisdiction>
        </jurisinfo:legisbodyinfo>
      </xsl:when>
      <xsl:otherwise> THEN I GUESS ITS AN ISSSUE? </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template match="leg:juris" mode="AUdccoverage">
    <xsl:variable name="juris" select="."/>


    <!--  Original Target XPath:  location:state   -->
    <xsl:choose>
      <xsl:when test="$juris = 'NSW'">
        <location:state codescheme="ISO-3166-2" statecode="AU-NS">
          <xsl:apply-templates select="@* | node()"/>
        </location:state>
      </xsl:when>
      <xsl:when test="$juris = 'VIC'">
        <location:state codescheme="ISO-3166-2" statecode="AU-VI">
          <xsl:apply-templates select="@* | node()"/>
        </location:state>
      </xsl:when>
      <xsl:when test="$juris = 'TAS'">
        <location:state codescheme="ISO-3166-2" statecode="AU-TS">
          <xsl:apply-templates select="@* | node()"/>
        </location:state>
      </xsl:when>
      <xsl:when test="$juris = 'SA'">
        <location:state codescheme="ISO-3166-2" statecode="AU-SA">
          <xsl:apply-templates select="@* | node()"/>
        </location:state>
      </xsl:when>
      <xsl:when test="$juris = 'QLD'">
        <location:state codescheme="ISO-3166-2" statecode="AU-QL">
          <xsl:apply-templates select="@* | node()"/>
        </location:state>
      </xsl:when>
      <xsl:when test="$juris = 'WA'">
        <location:state codescheme="ISO-3166-2" statecode="AU-WA">
          <xsl:apply-templates select="@* | node()"/>
        </location:state>
      </xsl:when>
      <xsl:when test="$juris = 'ACT'">
        <location:state codescheme="ISO-3166-2" statecode="AU-CT">
          <xsl:apply-templates select="@* | node()"/>
        </location:state>
      </xsl:when>
      <xsl:when test="$juris = 'NT'">
        <location:state codescheme="ISO-3166-2" statecode="AU-NT">
          <xsl:apply-templates select="@* | node()"/>
        </location:state>
      </xsl:when>
      <xsl:otherwise> HOUSTON WE HVA A PROBLEM </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

</xsl:stylesheet>
