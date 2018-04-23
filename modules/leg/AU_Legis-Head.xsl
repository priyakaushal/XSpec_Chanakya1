<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Head">
  <title>Head <lnpid>id-AU04-18608</lnpid></title>
  <body>
    <p><targetxml>legis:legis/legis:head</targetxml> is created as described in the
      Introduction.</p>

    <section>
      <title>legis:head</title>

      <p>       
         <ul>
              <li>
              <sourcexml>leg:juris</sourcexml> can have State/Territory code or Country code.
              <ol>
                <li>
                  When <sourcexml>leg:juris</sourcexml> has State/Territory code: 
                  <note>The <targetxml>location:state</targetxml> will
                      capture the state and territory values which are NSW, VIC, TAS, SA, QLD, WA, ACT and
                      NT.</note>
                  <sourcexml>leg:juris</sourcexml> becomes <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                  and create <targetxml>dc:metadata/dc:coverage/location:state</targetxml> with attributes
                  @codescheme="ISO-3166-2" and @statecode, value for this attribute will be picked from
                  the below mentioned pick list: <ol>
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
                <li>When <sourcexml>leg:juris</sourcexml> has Country code: <note>If value for <sourcexml>leg:juris</sourcexml> is "CTH" then <sourcexml>leg:juris</sourcexml> will become <targetxml>jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with attributes @codescheme="ISO-3166-1" and @countrycode="AU". </note>
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
                    <note>For handling <b>@ln.user-displayed</b> attribute, refer the
                        general markup <xref href="../../common_newest/Rosetta_leg.juris_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
                    <note>If the input documents is having no jurisdiction information i.e. <sourcexml>leg:juris</sourcexml> then conversion will create an empty output structure shown below:</note>
                    <pre>
 &lt;legis:head&gt;
&lt;jurisinfo:legisbodyinfo&gt;
&lt;jurisinfo:jurisdiction&gt;
&lt;jurisinfoystem&gt;&lt;!--Leg:juris is not present in Document which creates Head part. As 'Head' is mandatory, creating empty head structure--&gt;&lt;/jurisinfoystem&gt;
&lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;
&lt;/legis:head&gt; 
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU04_Legis\AU_Legis-Head.dita  -->

	<xsl:template match="leg:juris">

	<jurisinfo:legisbodyinfo>
	    <jurisinfo:jurisdiction>
	        <jurisinfo:system>
	            <xsl:apply-templates select="node()"/>
	        </jurisinfo:system>
	    </jurisinfo:jurisdiction>
	</jurisinfo:legisbodyinfo>

	</xsl:template>
    
    <xsl:template match="leg:juris" mode="metadata">
        <dc:coverage>
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
        </dc:coverage>
    </xsl:template>

</xsl:stylesheet>