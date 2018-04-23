<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
  xmlns:dc="http://purl.org/dc/elements/1.1/" 
  xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
  xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.juris">
	  <title>case:juris <lnpid>id-HK09-39427</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:juris</sourcexml> can have State/Territory code or Country code. <ol>
            <li> When <sourcexml>case:juris</sourcexml> has State/Territory code:
                <sourcexml>case:juris</sourcexml> becomes <targetxml>
                /compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
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
                  <sourcexml>case:juris</sourcexml> is "CTH" or "NZ" then
                  <sourcexml>case:juris</sourcexml> will become
                  <targetxml>/compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with
                attributes @codescheme="ISO-3166-1" and @countrycode="AU" or @countrycode="NZ". </note>
              <pre xml:space="preserve">
&lt;case:juris&gt;CTH&lt;/case:juris&gt;

OR

&lt;case:juris&gt;NZ&lt;/case:juris&gt;

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

OR
&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"/&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

</pre>
            </li>
          </ol>
        </li>
      </ul>
      <note><targetxml>dc:coverage</targetxml> should only be created once for each value of
          <sourcexml>case:juris</sourcexml> in the source. There is no need to create multiple
          <targetxml>dc:coverage</targetxml> elements that hold the same value.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-08-26: <ph id="change_20130826_DSF">Added a note for clarification stating that it is not necessary to create
          multiple dc:coverage elements that hold the same value.</ph></p>
    </section>
  </body>
	</dita:topic>


	<xsl:template match="case:juris">

		<!--  Original Target XPath:  /compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
					
	 <xsl:choose>
	   <xsl:when test="not(preceding-sibling::*)">
	     <jurisinfo:jurisdiction>
	       <!-- If the first case:courtcode following the case:juris has a following sibling that is itself not a node() -->
	       <xsl:if test="following-sibling::case:courtcode[1][following-sibling::node()[1][not(self::*)] and not(matches(following-sibling::node()[1], ': '))]">
	         <jurisinfo:location>
	           <xsl:analyze-string select="following-sibling::case:courtcode[1]/following-sibling::text()[1]" regex="^,\s(.*)$">
	             <xsl:matching-substring>
	               <connector>,</connector>
	               <location:city>
	                 <xsl:value-of select="normalize-space(regex-group(1))"/>
	               </location:city>
	             </xsl:matching-substring>
	             <xsl:non-matching-substring>
	               <location:city>
	                 <xsl:value-of select="normalize-space(.)"/>
	               </location:city>
	             </xsl:non-matching-substring>
	           </xsl:analyze-string>
	         </jurisinfo:location>
	       </xsl:if>
	       <jurisinfo:system>
	         <xsl:apply-templates select="@* | node()"/>
	       </jurisinfo:system>
	     </jurisinfo:jurisdiction>
	   </xsl:when>
	   <xsl:otherwise>
	     <jurisinfo:system>
	       <xsl:apply-templates select="@* | node()"/>
	     </jurisinfo:system>
	   </xsl:otherwise>
	 </xsl:choose>
	  
				
			
		

	</xsl:template>
  
  <xsl:template match="case:juris" mode="metadata">
    <dc:coverage>
      <xsl:choose>
        <xsl:when test="lower-case(.) = 'cth'">
          <location:country codescheme="ISO-3166-1" countrycode="AU"/>
        </xsl:when>
        <xsl:when test="lower-case(.) = 'nz'">
          <location:country codescheme="ISO-3166-1" countrycode="NZ"/>
        </xsl:when>
        <xsl:otherwise>
          <location:state codescheme="ISO-3166-2">
            <xsl:attribute name="statecode">
              <xsl:choose>
                <xsl:when test="lower-case(.) = 'nsw'">AU-NS</xsl:when>
                <xsl:when test="lower-case(.) = 'qld'">AU-QL</xsl:when>
                <xsl:when test="lower-case(.) = 'sa'">AU-SA</xsl:when>
                <xsl:when test="lower-case(.) = 'tas'">AU-TS</xsl:when>
                <xsl:when test="lower-case(.) = 'vic'">AU-VI</xsl:when>
                <xsl:when test="lower-case(.) = 'wa'">AU-WA</xsl:when>
                <xsl:when test="lower-case(.) = 'act'">AU-CT</xsl:when>
                <xsl:when test="lower-case(.) = 'nt'">AU-NT</xsl:when>
                <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
          </location:state>
        </xsl:otherwise>
      </xsl:choose>
    </dc:coverage>
  </xsl:template>

	<!--<xsl:template match="case:courtcode">

		<!-\-  Original Target XPath:  /compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -\->
		<compcase:head xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1">
			<compcase:caseinstanceinfo>
				<jurisinfo:courtinfo>
					<jurisinfo:jurisdiction>
						<jurisinfo:system>
							<xsl:apply-templates select="@* | node()"/>
						</jurisinfo:system>
					</jurisinfo:jurisdiction>
				</jurisinfo:courtinfo>
			</compcase:caseinstanceinfo>
		</compcase:head>

	</xsl:template>-->

</xsl:stylesheet>