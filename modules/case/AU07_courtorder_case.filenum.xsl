<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.filenum">
   <title>case:filenum <lnpid>id-AU07-19224</lnpid></title>
   <body>
      <section>
        <ul> <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:filenum</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/caseinfo:caseinfo/caseinfo:docketnum</targetxml>.
                                
<pre xml:space="preserve" class="- topic/pre ">

&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:courtinfo&gt;...
            &lt;case:filenum&gt;CA 417/07; [2007] NZCA 452&lt;/case:filenum&gt;
        &lt;/case:courtinfo&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:head&gt;...
    &lt;caseinfo:caseinfo&gt;
        &lt;caseinfo:docketnum&gt;CA 417/07; [2007] NZCA 452&lt;/caseinfo:docketnum&gt;
    &lt;/caseinfo:caseinfo&gt;
&lt;/courtorder:head&gt;                
</pre>
                            
                            </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.filenum.dita  -->
	
    <xsl:template match="case:filenum">
	    <caseinfo:docketnum>
	        <xsl:apply-templates select="@*|node()"/>
	    </caseinfo:docketnum>
	</xsl:template>
</xsl:stylesheet>