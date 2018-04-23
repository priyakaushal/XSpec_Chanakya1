<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0"
	exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.info_case.courtinfo_case.juris">
		<title>NZ-case:juris <lnpid>id-NZ18-26009</lnpid></title>
		<body>
			<section>
				<lines/>
				<ul>
					<li class="- topic/li ">
						<p class="- topic/p ">
							<b class="+ topic/ph hi-d/b ">The following conversion instruction
								is specific to NZ CourtOrders:</b>
						</p>
						<sourcexml class="+ topic/keyword xml-d/sourcexml "
							>case:info/case:courtinfo/case:juris</sourcexml> becomes
							<targetxml class="+ topic/keyword xml-d/targetxml "
							>courtorder:head/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>
						and create <targetxml class="+ topic/keyword xml-d/targetxml "
							>dc:metadata/dc:coverage/location:country</targetxml> with
						attributes <targetxml class="+ topic/keyword xml-d/targetxml "
							>@codescheme="ISO-3166-1"</targetxml> and <targetxml
							class="+ topic/keyword xml-d/targetxml ">@countrycode</targetxml>,
						this is for capturing country value and the nomenclature will be to
						put the country code (NZ). <p class="- topic/p ">Example : NZ
							CourtOrders</p>
						<pre xml:space="preserve" class="- topic/pre ">
&lt;case:juris&gt;NZ&lt;/case:juris&gt;
              
<b class="+ topic/ph hi-d/b ">Becomes</b>    
              
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
                                    
&lt;dc:metadata&gt;...
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"&gt;&lt;/location:country&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;             
</pre>
					</li>
				</ul>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ18_courtorder\NZ-case.juris.dita  -->

	<xsl:template match="case:info/case:courtinfo/case:juris">
		<!--  Original Target XPath:  courtorder:head/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
		<jurisinfo:courtinfo
			xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/">
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="@* | node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		</jurisinfo:courtinfo>
	</xsl:template>

</xsl:stylesheet>
