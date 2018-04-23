<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
   <title>case:casename <lnpid>id-NZ17CC-25807</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:casename</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">caseinfo:casename</targetxml> and
          populate the child as below: <ul class="- topic/ul ">
            <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">caseinfo:fullcasename</targetxml>
            </li>
          </ul>
                       
<pre xml:space="preserve" class="- topic/pre ">

&lt;case:casename&gt;McPherson v ACC&lt;/case:casename&gt;
         
             
<b class="+ topic/ph hi-d/b ">Becomes</b>             
          

&lt;caseinfo:casename&gt;
    &lt;caseinfo:fullcasename&gt;McPherson v ACC&lt;/caseinfo:fullcasename&gt;
&lt;/caseinfo:casename&gt;

</pre>          
        </li>
      </ul>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.casename.dita  -->
	<!-- already done in case:headnote module -->

</xsl:stylesheet>