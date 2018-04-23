<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtname">
   <title>case:courtname <lnpid>id-CA02CC-12416</lnpid></title>
   <body>
      <section>
<ul>
         <li>
          <sourcexml>case:courtname</sourcexml> becomes
           <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
             <note> If <sourcexml>case:courtname</sourcexml> has <sourcexml>nl</sourcexml> as child element, then <sourcexml>nl</sourcexml> will be converted to <targetxml>proc:nl</targetxml>.</note> 
             
           <!--<note>From now
             onwards, <targetxml>casedigest:caseinfo</targetxml> will be placed under
             <targetxml>casedigest:head</targetxml> and not in
             <targetxml>casedigest:body</targetxml> and rest all converion scenarios
			 will remain same. Please see below target examples for more details.</note>-->
          <pre>

&lt;case:courtinfo&gt;
    &lt;case:courtname&gt;Newfoundland and Labrador Supreme Court - Trial Division&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;


<b>Becomes</b>
            

&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            &lt;jurisinfo:courtname&gt;Newfoundland and Labrador Supreme Court - Trial Division&lt;/jurisinfo:courtname&gt;
        &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;

          </pre>
        </li>
      </ul>
</section>
      
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.courtname.dita  -->
	
<!-- Sudhanshu Srivastava edited on 15-May-2017.-->
	<xsl:template match="case:courtname" mode="court">
		<!--  Original Target XPath:  casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname   -->
	               
	               <jurisinfo:courtname>
	                   <xsl:if test="preceding-sibling::abbrvname">
	                   <xsl:attribute name="normshortname">
	                       <xsl:value-of select="preceding-sibling::abbrvname"/>
	                   </xsl:attribute>
	                   </xsl:if>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:courtname>
	   
	</xsl:template>
</xsl:stylesheet>