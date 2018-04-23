<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.libnum-LxAdv_refnum-refnumscheme">
   <title>case:libnum <lnpid>id-AU01-18230</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
            <sourcexml>case:libnum</sourcexml> becomes <targetxml>jurisinfo:courtinfo/refnum/@refnumscheme="wa-AU-library-number"</targetxml>
            <pre xml:space="preserve" class="- topic/pre ">

&lt;case:info&gt;
  ...
  &lt;case:courtinfo&gt;
    ...
    &lt;case:filenum&gt;No. CIV 1695 of 1993&lt;/case:filenum&gt;
    &lt;case:dates&gt;
      &lt;case:hearingdates&gt;23 September 1996&lt;/case:hearingdates&gt;
      &lt;case:decisiondate&gt;
        &lt;date day="11" month="10" year="1996"&gt;, 11 October 1996&lt; /date&gt;
      &lt;/case:decisiondate&gt;
    &lt;/case:dates&gt;
    &lt;case:libnum&gt;960591&lt;/case:libnum&gt;
    &lt;case:juris&gt;wa&lt;/case:juris&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;caseinfo:caseinfo&gt;
  ...
  &lt;caseinfo:docketnum&gt;No. CIV 1695 of 1993&lt;/caseinfo:docketnum&gt;
  &lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;SUPREME COURT OF WESTERN AUSTRALIA IN CHAMBERS&lt;/jurisinfo:courtname&gt;
    &lt;refnum refnumscheme="wa-AU-library-number"&gt;960591&lt;/refnum&gt;
  &lt;/jurisinfo:courtinfo&gt;
  &lt;decision:dates&gt;
    &lt;decision:argueddate&gt;23 September 1996&lt;/decision:argueddate&gt;
    &lt;decision:decisiondate day="11" month="10" year="1996"&gt;, 
      &lt;datetext&gt;11 October 1996&lt;/datetext&gt;
    &lt;/decision:decisiondate&gt;
  &lt;/decision:dates&gt;
&lt;/caseinfo:caseinfo&gt;

</pre>
        </li>
      </ul>
</section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.libnum-LxAdv_refnum-refnumscheme.dita  -->

	<xsl:template match="case:libnum">
		<!--  Original Target XPath:  jurisinfo:courtinfo/refnum/@refnumscheme="wa-AU-library-number"   -->
		<!-- assume jurisinfo:courtinfo wrapper created elsewhere -->
		<!--<jurisinfo:courtinfo>-->
			<refnum refnumscheme="wa-AU-library-number">
				<xsl:apply-templates/>
			</refnum>
		<!--</jurisinfo:courtinfo>-->
	</xsl:template>

</xsl:stylesheet>