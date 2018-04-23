<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtloc">
  <title>case:courtloc <lnpid>id-NZ17CC-25811</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtloc</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">/jurisinfo:jurisdiction/jurisinfo:location/location:city</targetxml>
          
<pre xml:space="preserve" class="- topic/pre ">

&lt;case:courtloc&gt;Auckland&lt;/case:courtloc&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
                              
&lt;jurisinfo:jurisdiction&gt;
      &lt;jurisinfo:location&gt;
          &lt;location:city&gt;Auckland&lt;/location:city&gt;
     &lt;/jurisinfo:location&gt;
&lt;/jurisinfo:jurisdiction&gt;
    
</pre>
          
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.courtloc.dita  -->


	<xsl:template match="case:courtloc">
		<jurisinfo:jurisdiction>
			<jurisinfo:location>
				<location:city>
					<xsl:apply-templates select="@* | node()"/>
				</location:city>
			</jurisinfo:location>
		</jurisinfo:jurisdiction>
	</xsl:template>

</xsl:stylesheet>