<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.summary">
   <title>cttr:summary <lnpid>id-HK08-37619</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:summary</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:descriptors/cttr:descriptorsection @descriptortype="catchwords-and-digest"/casesum:editorialsummary @summarysource="lexis-casebase-editorial"</targetxml> and 
          the child element is described below :
          <ul class="- topic/ul ">
               <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">p</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">p</targetxml> and 
              the child element is described below :
              <ul class="- topic/ul ">
                     <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">text</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">text</targetxml>
                     </li>
                  </ul>
               </li>
            </ul>
        
            <pre xml:space="preserve" class="- topic/pre ">

&lt;cttr:summary&gt;
  &lt;p&gt;
    &lt;text&gt;Whether refusal to sell must be reprehensible before that refusal can constitute taking
    advantage of power in market within meaning of (CTH) Trade Practices Act 1974 s 46(1).&lt;/text&gt;
  &lt;/p&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;casesum:editorialsummary summarysource="lexis-casebase-editorial"&gt;
  &lt;p&gt;
    &lt;text&gt;Whether refusal to sell must be reprehensible before that refusal can constitute taking advantage of power in market
    within meaning of (CTH) Trade Practices Act 1974 s 46(1).&lt;/text&gt;
  &lt;/p&gt;
          
</pre>
        </li></ul>
      </section>
   </body>
	</dita:topic>


	<xsl:template match="source_cttr:summary"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:descriptors/cttr:descriptorsection@descriptortype="catchwords-and-digest"/casesum:editorialsummary@summarysource="lexis-casebase-editorial"   -->

				<casesum:editorialsummary xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/">
				  <xsl:attribute name="summarysource">lexis-casebase-editorial</xsl:attribute>
					<xsl:apply-templates select="@* | node()"/>
				</casesum:editorialsummary>

	</xsl:template>

</xsl:stylesheet>