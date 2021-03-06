<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
  xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" 
  xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
  xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtrule-Head">
  <title>Head <lnpid>id-HK04-36607</lnpid></title>
  <body>
    <p><targetxml>courtrule:courtrule/courtrule:head</targetxml> is created as described in the
      Introduction.</p>
    
    <section>
      <title>leg:juris</title>
      
      <p>       
        <ul>
          <li>When <sourcexml>leg:juris</sourcexml> has Country code: <note>If value for
                <sourcexml>leg:juris</sourcexml> is "HK" then <sourcexml>leg:juris</sourcexml> will
              become
                <targetxml>courtrule:head/jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
              and create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with
              attributes @codescheme="ISO-3166-1" and @countrycode="HK". </note>
            <pre>
              
              &lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;HK&lt;/leg:juris&gt;
              
              
              <b>Becomes</b>
              
             &lt;courtrule:head&gt;
                  &lt;jurisinfo:legisbodyinfo&gt;
                    &lt;jurisinfo:jurisdiction&gt;
                       &lt;jurisinfo:system&gt;HK&lt;/jurisinfo:system&gt;
                     &lt;/jurisinfo:jurisdiction&gt;
                  &lt;/jurisinfo:legisbodyinfo&gt;
               &lt;/courtrule:head&gt;
            &lt;dc:metadata&gt;
                &lt;dc:coverage&gt;
                    &lt;location:country codescheme="ISO-3166-1" countrycode="HK"/&gt;
                &lt;/dc:coverage&gt;
            &lt;/dc:metadata&gt;
                     
                  </pre>
            <note>If <sourcexml>leg:juris</sourcexml> has attribute
                <sourcexml>@ln.user-displayed="false"</sourcexml> then map it as usual (as if the
              @ln.user-displayed did not exist).</note>
            <note>For handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref href="../../common_newest/Rosetta_leg.juris_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>
            <note>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion
              except for the citation element.</note>
          </li>
          
        </ul>         
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
    </section>
  </body>
	</dita:topic>


	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  courtrule:head/jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
			<jurisinfo:legisbodyinfo>
				<jurisinfo:jurisdiction>
					<jurisinfo:system>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:system>
				</jurisinfo:jurisdiction>
			</jurisinfo:legisbodyinfo>
	</xsl:template>
  
  <xsl:template match="leg:juris" mode="metadata">
    <xsl:if test=".='HK'">
    <dc:coverage>
      <location:country codescheme="ISO-3166-1" countrycode="HK"/>
    </dc:coverage>
    </xsl:if>
  </xsl:template>

	<xsl:template match="leg:juris/@ln.user-displayed[contains(., 'false')]"/>

	<xsl:template match="@searchtype"/>

</xsl:stylesheet>