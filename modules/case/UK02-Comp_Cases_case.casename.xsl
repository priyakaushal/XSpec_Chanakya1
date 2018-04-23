<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
   <title>case:casename <lnpid>id-UK02-27209</lnpid></title>
   <body>
      <section>
        <p>
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:casename</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">compcase:caseinfo/caseinfo:casename</targetxml> 
          and populate the child as below: 
          <ul class="- topic/ul ">
            <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">caseinfo:fullcasename</targetxml>
            </li>
          </ul>
        </p>
      <note>Please see <xref href="../../common_newest/Rosetta_UK_case.casename-Plus-case.reportercite-LxAdv-dc.title.dita"/> for an additional conversion that uses
        <sourcexml>case:info/case:casename</sourcexml>.</note>
      </section>
     
     <example>
       <title>Source XML</title>
       <codeblock>

&lt;case:casename&gt;Horn v Minister of Health&lt;/case:casename&gt;

       </codeblock>
     </example>
     
     <example>
       <title>Target XML</title>
       <codeblock>

&lt;caseinfo:casename&gt;
    &lt;caseinfo:fullcasename&gt;Horn v Minister of Health&lt;/caseinfo:fullcasename&gt;
&lt;/caseinfo:casename&gt;

       </codeblock>
     </example>
     

   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.casename.dita  -->

	<xsl:template match="case:casename">
		<!--  Original Target XPath:  compcase:caseinfo/caseinfo:casename   -->
		<caseinfo:casename>
			<caseinfo:fullcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:fullcasename>
		</caseinfo:casename>
	</xsl:template>

</xsl:stylesheet>