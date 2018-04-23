<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote_case.info_case.courtinfo_case.courtname">
   <title>case:courtname <lnpid>id-AU07-19221</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/case:info/case:courtinfo/case:courtname</sourcexml> becomes 
                                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
                            
                        <pre xml:space="preserve" class="- topic/pre ">
&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:courtinfo&gt;
            &lt;case:courtname&gt;SUPREME COURT OF THE AUSTRALIAN CAPITAL
            TERRITORY&lt;/case:courtname&gt;...
        &lt;/case:courtinfo&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:head&gt;
    &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:courtname&gt;SUPREME COURT OF THE AUSTRALIAN CAPITAL TERRITORY&lt;/jurisinfo:courtname&gt;...
    &lt;/jurisinfo:courtinfo&gt;
&lt;/courtorder:head&gt;                
</pre>
                            </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.courtname.dita  -->

	<xsl:template match="case:headnote/case:info/case:courtinfo/case:courtname">
        <jurisinfo:courtname>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtname>
	</xsl:template>

</xsl:stylesheet>