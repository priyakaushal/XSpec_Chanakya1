<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.juris">
    <title>case:juris <lnpid>id-NZ17CC-25818</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:juris</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml> and create
                    <targetxml class="+ topic/keyword xml-d/targetxml ">dc:metadata/dc:coverage/location:country</targetxml> with attributes
                    <targetxml>@codescheme="ISO-3166-1"</targetxml> and
                    <targetxml>@countrycode="NZ"</targetxml>. And the value for <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> will
                    be picked up from <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtcode</sourcexml>.<pre xml:space="preserve" class="- topic/pre ">

&lt;case:courtinfo&gt;
  ...
  &lt;case:juris ln.user-displayed="false"&gt;NZ&lt;/case:juris&gt;
&lt;/case:courtinfo&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;jurisinfo:courtinfo&gt;  
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;NZ&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;

&lt;dc:coverage&gt;
  &lt;location:country codescheme="ISO-3166-1" countrycode="NZ"/&gt;
&lt;/dc:coverage&gt;

</pre>
                    <note>For more information on handling <b>@ln.user-displayed</b>
                        attribute, refer the general markup <xref href="../../../common_newest/Rosetta_case.juris_ln.user-displayed.dita">ln.user_displayed="false"</xref> section in the CI.</note>                 
                </li>
            </ul>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.juris.dita  -->


	<xsl:template match="case:juris">	    
	    <!-- I think the courtcode goes here too -->
		<jurisinfo:jurisdiction>
			<jurisinfo:system>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:system>
		</jurisinfo:jurisdiction>
    </xsl:template>

    <xsl:template match="case:juris" mode="metadata">
        <dc:coverage>
            <location:country codescheme="ISO-3166-1" countrycode="NZ"/>
        </dc:coverage>
    </xsl:template>
    
    <xsl:template match="case:juris/@ln.user-displayed"/>
	
</xsl:stylesheet>