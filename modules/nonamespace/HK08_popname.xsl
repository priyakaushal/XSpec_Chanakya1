<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info_popname">
   <title>popname <lnpid>id-HK08-37622</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/popname</sourcexml> becomes
                                <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citeddecision/cttr:caseinfo/popname</targetxml>
            <pre xml:space="preserve" class="- topic/pre ">
&lt;case:info&gt;...             
    &lt;popname&gt;Star Picket Fence Post case&lt;/popname&gt;
&lt;/case:info&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:citeddecision&gt;           
    &lt;cttr:caseinfo&gt;...
        &lt;popname&gt;Star Picket Fence Post case&lt;/popname&gt;
    &lt;/cttr:caseinfo&gt;
&lt;/cttr:citeddecision&gt;                
</pre>
                        </li></ul>
      </section>
   </body>
	</dita:topic>

	<xsl:template match="case:info/popname">

		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo/popname   -->
	            <popname xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</popname>

	</xsl:template>

</xsl:stylesheet>