<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.filenum">
   <title>case:filenum <lnpid>id-NZ17CC-25814</lnpid></title>
   <body>
      <section>
         <ul>
            <li class="- topic/li ">
               <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:filenum</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">caseinfo:docketnum</targetxml>
               <note>Conversion need to create a wrapper element <targetxml>casedigest:caseinfo</targetxml> to place the <targetxml>case:docketnum</targetxml>.</note>
               
               <pre xml:space="preserve" class="- topic/pre ">
             
&lt;case:filenum&gt;HC 219/94&lt;/case:filenum&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
             
&lt;caseinfo:docketnum&gt;HC 219/94&lt;/caseinfo:docketnum&gt;                
</pre>
            </li>
         </ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.filenum.dita  -->
	
	<!-- may need to integrate this with casedigest:caseinfo -->
	<xsl:template match="case:filenum">
		<caseinfo:docketnum>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:docketnum>
	</xsl:template>

</xsl:stylesheet>