<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.casename">
    <title>casename <lnpid>id-IN04-38809</lnpid></title>
    <body>
        <section>
            <p>
                    <sourcexml>case:casename</sourcexml> becomes
                        <targetxml>caseinfo:casename/caseinfo:fullcasename</targetxml>
                    <ul>
                        <li> Both the tags <sourcexml>emph</sourcexml>, its attributes and
                                <sourcexml>refpt</sourcexml> are omitted. </li>
                    </ul>
            </p>
        </section>
           <example>
             <title>Source XML</title>
             <codeblock>

&lt;case:casename&gt;&lt;emph typestyle="ro"&gt;&lt;refpt id="LNIND_1909_ALL_53" type="ext"/&gt;&lt;/emph&gt;Chandradeo
    Singh Versus Mata Prasad&lt;/case:casename&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;caseinfo:casename&gt;
	&lt;caseinfo:fullcasename&gt;Chandradeo Singh Versus Mata Prasad&lt;/caseinfo:fullcasename&gt;
&lt;/caseinfo:casename&gt;

             </codeblock>
           </example>
 <section>
       <title>Changes</title>
       <p>2016-08-18: <ph id="change_20160818_SS">Created</ph>.</p>
 </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_casename.dita  -->
	<xsl:message>IN04_casename.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:casename">

		<!--  Original Target XPath:  caseinfo:casename/caseinfo:fullcasename   -->
		<caseinfo:casename>
			<caseinfo:fullcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:fullcasename>
		</caseinfo:casename>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>