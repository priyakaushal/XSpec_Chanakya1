<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita source_case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
   <title>casename <lnpid>id-AU02-18415</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:casename</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">title</targetxml>
                          <ul class="- topic/ul ">
                              <li class="- topic/li ">
                                  Both the tags <sourcexml class="+ topic/keyword xml-d/sourcexml ">emph</sourcexml> and <sourcexml class="+ topic/keyword xml-d/sourcexml ">refpt</sourcexml> are omitted.
                              </li>
                          </ul>
                          
            <pre xml:space="preserve" class="- topic/pre ">
&lt;case:info&gt;
    &lt;case:casename&gt;
        &lt;emph typestyle="ro"&gt;
            &lt;refpt id="10957" type="ext"/&gt;
        &lt;/emph&gt;Queensland Wire Industries Pty Ltd v Broken Hill Proprietary Co Ltd
    &lt;/case:casename&gt;
&lt;/case:info&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:citedarticle&gt;
    &lt;title&gt;Queensland Wire Industries Pty Ltd v Broken Hill Proprietary Co Ltd&lt;/title&gt;
&lt;/citedarticle&gt;                
</pre>
                      </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\Citator_Journal.casename.dita  -->

	<xsl:template match="source_case:casename" mode="citator-journal">
		<title xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
		    <xsl:apply-templates select="@* | node() except refpt"/>
		</title>
	</xsl:template>

	<!-- emph template in citator casename module should work for this track as well -->
	
</xsl:stylesheet>