<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.body_case.content_page">
   <title>case:body/case:content/page <lnpid>id-AU07-19213</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">                    
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/case:content/page</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/ref:page</targetxml>
                    <note class="- topic/note ">Please refer to General Markup section for handling of its attributes.</note>               
                                    
                  <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;page reporter="vr" count="113" text="5 VR 107 at " subdoc="true"/&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;ref:page page-scheme="vr" num="113" page-scheme-type="reporter-abbreviation"/&gt;
&lt;/courtorder:body&gt;                
</pre> 
                
                </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.body_case.content_page.dita  -->
	<!-- I think this is handled through generic modules -->

</xsl:stylesheet>