<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info_case.courtinfo_case.judges">
   <title>case:judges <lnpid>id-AU07-19226</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:judges</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/courtorder:authors</targetxml>. 
                                                                                                                              
                                The child element is described below:
                                <ul class="- topic/ul ">
                                    <li class="- topic/li ">
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:courtinfo/case:judges/case:judge</sourcexml> becomes 
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/courtorder:authors/person:judge/person:person/person:name.text</targetxml>
                                    </li>
                                </ul>
                            
                        <pre xml:space="preserve" class="- topic/pre ">
&lt;case:courtinfo&gt;
    &lt;case:judges&gt;&lt;case:judge&gt;SHANAHAN&lt;/case:judge&gt; CJ&lt;/case:judges&gt;
&lt;/case:courtinfo&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:head&gt;
    &lt;courtorder:authors&gt;
        &lt;person:judge&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;SHANAHAN CJ&lt;/person:name.text&gt;                                                
            &lt;/person:person&gt;
        &lt;/person:judge&gt;
    &lt;/courtorder:authors&gt;
&lt;/courtorder:head&gt;                
</pre>
                            </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.judges.dita  -->

	<xsl:template match="case:info/case:courtinfo/case:judges">
		<courtorder:authors>
			<xsl:apply-templates select="@*|node()"/>
		</courtorder:authors>
	</xsl:template>

	<xsl:template match="case:info/case:courtinfo/case:judges/case:judge">
		<person:judge>
			<person:person>
				<person:name.text>
					<xsl:apply-templates select="@* | node()"/>
				</person:name.text>
			</person:person>
		</person:judge>
	</xsl:template>

</xsl:stylesheet>