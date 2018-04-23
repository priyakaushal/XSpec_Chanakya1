<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtloc">
	  <title>case:courtloc <lnpid>id-HK09-39416</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:courtloc</sourcexml> becomes
            <targetxml>/compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:city</targetxml>
          <pre xml:space="preserve">

&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;FEDERAL COURT OF AUSTRALIA&lt;/case:courtname&gt;
  &lt;case:courtcode&gt;FCA&lt;/case:courtcode&gt;  - will be moved under doc:legacy-metadata.
  &lt;case:courtloc&gt;Sydney&lt;/case:courtloc&gt;
&lt;/case:courtinfo&gt;
<b>Becomes</b>
                              
&lt;compcase:head&gt;
  &lt;compcase:caseinstanceinfo&gt;
    &lt;jurisinfo:courtinfo&gt;
      &lt;jurisinfo:courtname&gt;FEDERAL COURT OF AUSTRALIA&lt;/jurisinfo:courtname&gt;
      &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:location&gt;
          &lt;location:city&gt;Sydney&lt;/location:city&gt;
        &lt;/jurisinfo:location&gt;
      &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;
  &lt;/compcase:caseinstanceinfo&gt;
&lt;/compcase:head&gt;
</pre>
          <note>Connecting punctuation and text must be captured by using
              <targetxml>connector</targetxml> within
            <targetxml>jurisinfo:location</targetxml>.</note>
          <pre xml:space="preserve">

&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;COMMERCIAL TRIBUNAL OF NEW SOUTH WALES&lt;/case:courtname&gt; 
    &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt; 
    &lt;case:judges&gt;
        Deputy Chairman 
        &lt;case:judge&gt;Vermeesch&lt;/case:judge&gt; 
    &lt;/case:judges&gt;
    &lt;case:dates&gt;
        &lt;case:decisiondate&gt;
            &lt;date day="19" month="12" year="1994"&gt;19 December 1994&lt;/date&gt; 
        &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
    — 
    &lt;case:courtloc&gt;Sydney&lt;/case:courtloc&gt; 
    &lt;case:juris&gt;nsw&lt;/case:juris&gt; 
&lt;/case:courtinfo&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;COMMERCIAL TRIBUNAL OF NEW SOUTH WALES&lt;/jurisinfo:courtname&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:location&gt;
            &lt;connector&gt;
            —
            &lt;/connector&gt;
            &lt;location:city&gt;Sydney&lt;/location:city&gt;
        &lt;/jurisinfo:location&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

</pre>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>


	<xsl:template match="case:courtloc">

		<!--  Original Target XPath:  /compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:city   -->
						<jurisinfo:jurisdiction>
						  <jurisinfo:location>
						    <xsl:if test="preceding-sibling::text()[1]">
						      <connector><xsl:apply-templates select="preceding-sibling::text()[1]"/></connector>
						    </xsl:if>
						    <location:city xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/">
						      <xsl:apply-templates select="@* | node()"/>
						    </location:city>
						    <xsl:if test="following-sibling::text()[1]">
						      <connector><xsl:apply-templates select="following-sibling::text()[1]"/></connector>
						    </xsl:if>
						  </jurisinfo:location>
						  <xsl:apply-templates select="following-sibling::*[1][self::case:juris]"/>
						</jurisinfo:jurisdiction>

	</xsl:template>

</xsl:stylesheet>