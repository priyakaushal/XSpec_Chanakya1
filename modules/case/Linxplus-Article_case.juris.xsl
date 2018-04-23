<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dc="http://purl.org/dc/elements/1.1/" 
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" 
    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
    version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_case.juris">
   <title>case:juris <lnpid>id-NZ07DN-23812</lnpid></title>
   <body>
      <section>
        <p><sourcexml>case:juris</sourcexml> becomes <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and 
            create <targetxml>dc:metadata/dc:coverage/location:country</targetxml> with attributes <targetxml>@codescheme="ISO-3166-1"</targetxml> and 
            <targetxml>@countrycode="NZ"</targetxml>.</p>

        <pre xml:space="preserve" class="- topic/pre ">
&lt;case:info&gt;
    &lt;case:courtinfo&gt;
        &lt;case:courtcode ln.user-displayed="false"&gt;NZOTHER&lt;/case:courtcode&gt;
        &lt;case:juris ln.user-displayed="false"&gt;nz&lt;/case:juris&gt;
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;article:caseinfo&gt;
    &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:alternatecourtcode alternatecourtcode="NZOTHER"/&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:system&gt;nz&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;
&lt;/article:caseinfo&gt;

&lt;dc:coverage&gt;
   &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"/&gt;
&lt;/dc:coverage&gt;
</pre>


                 <note class="- topic/note ">The ordering of the <targetxml>jurisinfo:alternatecourtcode</targetxml> and <targetxml>jurisinfo:jurisdiction\jurisinfo:system</targetxml> is not significant in terms of display.</note>
          
          <note class="- topic/note ">For handling @ln.user-displayed attribute, please refer to
                general markup ln.user_displayed="false" section in the CI.</note>
          </section>
   </body>
	</dita:topic>


	<xsl:template match="case:juris" priority="25">

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system   -->
			<jurisinfo:jurisdiction>
				<jurisinfo:system>
					<xsl:apply-templates select="node()"/>
				</jurisinfo:system>
			</jurisinfo:jurisdiction>
		

	</xsl:template>
    
    <xsl:template match="case:juris" mode="metadata">
        <dc:coverage>
            <location:country>
                <xsl:attribute name="codescheme">ISO-3166-1</xsl:attribute>
                <xsl:attribute name="countrycode">NZ</xsl:attribute>
            </location:country>
        </dc:coverage>
    </xsl:template>

</xsl:stylesheet>