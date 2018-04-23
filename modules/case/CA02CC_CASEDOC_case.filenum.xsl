<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita case caseinfo">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.filenum">
   <title>case:filenum <lnpid>id-CA02CC-12419</lnpid></title>
   <body>
      <section>
         <ul>
            <li>
               <sourcexml>case:filenum</sourcexml> becomes
                  <targetxml>casedigest:caseinfo/caseinfo:docketnum</targetxml>
               <!--<note>From now
                  onwards, <targetxml>casedigest:caseinfo</targetxml> will be placed under
                  <targetxml>casedigest:head</targetxml> and not in
                  <targetxml>casedigest:body</targetxml> and rest all converion scenarios
                  will remain same. Please see below target examples for more details.</note>-->
               <pre>

&lt;case:filenum&gt;No. 200301T1696&lt;/case:filenum&gt;


                  <b>Becomes</b>
                  
             
&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;caseinfo:docketnum&gt;No. 200301T1696&lt;/caseinfo:docketnum&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

</pre>
            </li>
         </ul>
      </section>
      <section>
          <title>Changes</title>
		  <p>2014-03-26 <ph id="change_20140326_SEP">Removed ambiguity caused by the note beginning "From now onwards..."<b>DB item # 145</b></ph></p>
      </section>
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.filenum.dita  -->
	
<!-- Sudhanshu Srivastava edited on 15-May-2017.-->
	<xsl:template match="case:filenum">
		<!--  Original Target XPath:  casedigest:caseinfo/caseinfo:docketnum   -->
			<caseinfo:docketnum>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:docketnum>
	</xsl:template>
</xsl:stylesheet>