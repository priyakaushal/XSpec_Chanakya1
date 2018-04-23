<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="abstract">
   <title>abstract <lnpid>id-AU02-18407</lnpid></title>
   <body>
      <section>
        <ul><li class="- topic/li ">
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">abstract</sourcexml> becomes 
        <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:descriptors/cttr:descriptorsection @descriptortype="abstract"/casesum:editorialsummary @summarysource="lexis-casebase-editorial"/casesum:overview</targetxml>.
       The children are described below:
        <ul class="- topic/ul ">
               <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">heading</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">heading</targetxml>
                  <ul class="- topic/ul ">
                     <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">title</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">title</targetxml>
                     </li>
                  </ul>
               </li>
               <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">p</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">p</targetxml>
                  <ul class="- topic/ul ">
                     <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">text</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">text</targetxml>
                     </li>
                  </ul>
               </li>
            </ul>
        
            <pre xml:space="preserve" class="- topic/pre ">

&lt;cttr:body&gt;
  &lt;cttr:content&gt;
    &lt;abstract&gt;
      &lt;heading&gt;
        &lt;title&gt;Abstract&lt;/title&gt;
      &lt;/heading&gt;
      &lt;p&gt;
        &lt;text&gt;In proceedings brought by ASIC, Christopher Riotto, and the lending and
              finance companies he controlled, have been found to have breached the (CTH)
              Australian Securities and Investments Commission Act 2001 ss 12CA, 12CB and
              12DB. The contravening conduct involved, inter alia, having their borrowers
              sign business purpose declarations in respect of personal loans and engaging
              in 'asset lending'.
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/abstract&gt;
  &lt;/cttr:content&gt;
&lt;/cttr:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;cttr:body&gt;
  &lt;cttr:descriptors&gt;
    &lt;cttr:descriptorsection descriptortype="abstract"&gt;
      &lt;casesum:editorialsummary summarysource="lexis-casebase-editorial"&gt;
        &lt;casesum:overview&gt;
          &lt;heading&gt;
            &lt;title&gt;Abstract&lt;/title&gt;
          &lt;/heading&gt;
          &lt;p&gt;
           &lt;text&gt;In proceedings brought by ASIC, Christopher Riotto, and the lending and finance companies he controlled, have
                    been found to have breached the (CTH) Australian Securities and Investments Commission Act 2001 ss 12CA, 12CB and
                    12DB. The contravening conduct involved, inter alia, having their borrowers sign business purpose declarations in
                    respect of personal loans and engaging in 'asset lending'.
           &lt;/text&gt;
          &lt;/p&gt;
        &lt;/casesum:overview&gt;
      &lt;/casesum:editorialsummary&gt;
    &lt;/cttr:descriptorsection&gt;
  &lt;/cttr:descriptors&gt;
&lt;/cttr:body&gt;                
</pre>         
        
         </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\abstract.dita  -->
  
  <xsl:template match="abstract">
    <cttr:descriptors>
    <cttr:descriptorsection descriptortype="abstract">
      <casesum:editorialsummary summarysource="lexis-casebase-editorial">
        <casesum:overview>
          <xsl:apply-templates select="@*|node()"/>
        </casesum:overview>        
      </casesum:editorialsummary>
    </cttr:descriptorsection>
    </cttr:descriptors>
  </xsl:template>

</xsl:stylesheet>