<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote_case.info_h">
   <title>h <lnpid>id-AU07-19237</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">                        
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/case:info/h</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/h</targetxml>                        
                        <note class="- topic/note ">Refer to General Markup section for handling of 'h' and its children.</note>                           
                  <pre xml:space="preserve" class="- topic/pre ">

&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;h align="right"&gt;
            &lt;ci:cite searchtype="LEG-REF"&gt;
                &lt;ci:content&gt;( 
                    &lt;remotelink refpt="OTH.SCRQ.O44.R1" dpsi="0075" docidref="EFGH_9876" remotekey1="REFPTID" service="DOC-ID"&gt;O 44 r 1&lt;/remotelink&gt; )
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/h&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:head&gt;
    &lt;h align="right"&gt;
        &lt;lnci:cite type="legislation" citeref="OTH.SCRQ.O44.R1"&gt;
            &lt;lnci:content&gt;( &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
              &lt;ref:content&gt;O 44 r 1&lt;/ref:content&gt;
              &lt;ref:locator anchoridref="OTH.SCRQ.O44.R1"&gt;
                  &lt;ref:locator-key&gt;
                      &lt;ref:key-name name="DOC-ID"/&gt;
                      &lt;ref:key-value value="0075-EFGH_9876"/&gt;
                  &lt;/ref:locator-key&gt;
              &lt;/ref:locator&gt;
          &lt;/ref:crossreference&gt; )&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/h&gt;
&lt;/courtorder:head&gt;                
</pre>   
                    </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\h.dita  -->
	
	<!-- covered in other modules -->

</xsl:stylesheet>