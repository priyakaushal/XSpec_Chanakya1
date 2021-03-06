<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.juris">
  <title>leg:juris <lnpid>id-MX02-33815</lnpid></title>
  <body>
      <section>
      <p>       
         <ul>
                <li>When <sourcexml>leg:juris</sourcexml> has Country code: <note>If the value of
                                <sourcexml>leg:juris</sourcexml> is "MX" then
                                <sourcexml>leg:juris</sourcexml> will become
                                <targetxml>/legislaturerecord:head/jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
                            and create
                                <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with
                            attributes <targetxml>@codescheme="ISO-3166-1"</targetxml> and
                                <targetxml>@countrycode="MX"</targetxml>. </note>
                        <note>If any input (rosetta) document is not having
                                <sourcexml>leg:juris</sourcexml> markup with value "MX" then
                            conversion need to create above mentioned target markup with value
                                "<b>MX</b>".</note>
                        <pre>

&lt;leg:juris ln.user-displayed="false" searchtype="LEGISLATION"&gt;MX&lt;/leg:juris&gt;

              
              <b>Becomes</b>
              

&lt;jurisinfo:legisbodyinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;MX&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:legisbodyinfo&gt;
&lt;dc:metadata&gt;
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="MX"/&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
             
                  </pre>
                        <note>If <sourcexml>leg:juris</sourcexml> has attribute
                                <sourcexml>@ln.user-displayed="false"</sourcexml> then map it as
                            usual (as if the @ln.user-displayed did not exist).</note>
                        <note>For handling <b>@ln.user-displayed</b> attribute, refer the general
                            markup <xref href="../../common_newest/Rosetta_leg.juris_ln.user-displayed.dita">
                                ln.user_displayed="false"</xref> section in the CI.</note>
                        <note>The <sourcexml>@searchtype</sourcexml> attribute will be dropped from
                            conversion except for the citation element.</note>
                    </li>
     
     </ul>         
      </p>
      </section>
      <section>
          <title>Changes</title>
          <p>2014-10-16:<ph id="change_20141016_SS">Created.</ph></p>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\MX02-Gazette\leg.juris.dita  -->
	<xsl:message>MX02-Gazette_leg.juris.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:juris">

		<!--  Original Target XPath:  /legislaturerecord:head/jurisinfo:legisbodyinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<legislaturerecord:head xmlns:legislaturerecord="urn:x-lexisnexis:content:legislature-record:sharedservices:1">
			<jurisinfo:legisbodyinfo xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
				<jurisinfo:jurisdiction>
					<jurisinfo:system>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:system>
				</jurisinfo:jurisdiction>
			</jurisinfo:legisbodyinfo>
		</legislaturerecord:head>

	</xsl:template>

	<xsl:template match="@ln.user-displayed=&#34;false&#34;">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>