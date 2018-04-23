<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtloc">
   <title>case:courtloc <lnpid>id-AU07-19220</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtloc</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:city</targetxml>.
<pre xml:space="preserve" class="- topic/pre ">
&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:courtinfo&gt;
             &lt;case:courtloc&gt;Wellington&lt;/case:courtloc&gt;
        &lt;/case:courtinfo&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:head&gt;
    &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:location&gt;
                &lt;location:city&gt;Wellington&lt;/location:city&gt;
            &lt;/jurisinfo:location&gt;
         &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;  
&lt;/courtorder:head&gt;                
</pre>
                            
                            </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.courtloc.dita  -->
	
	<xsl:template match="case:courtloc">
	    <jurisinfo:location>
			<location:city>
				<xsl:apply-templates select="@* | node()"/>
			</location:city>
		</jurisinfo:location>
	</xsl:template>

</xsl:stylesheet>