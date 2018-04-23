<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.info_abbrvname-LxAdv_caseinfo.shortcasename">
  <title>case:info/abbrvname <lnpid>id-CCCC-12015</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:info/abbrvname</sourcexml> becomes
          <targetxml>caseinfo:casename/caseinfo:shortcasename</targetxml>. The attributes of
          <sourcexml>abbrvname</sourcexml> are handled as follows: <ul>
          <li><sourcexml>abbrvname/@display-name</sourcexml> becomes
              <targetxml>caseinfo:shortcasename/@name</targetxml>.</li>
          <li><sourcexml>abbrvname/@searchtype</sourcexml> should be suppressed.</li>
        </ul></p>
      <p>Any <sourcexml>nl</sourcexml> elements in <sourcexml>abbrvname</sourcexml> should be
        suppressed.</p>
    </section>
    <example>
      <codeblock>
&lt;case:info&gt;
    ...
    &lt;abbrvname display-name="Répertorié:" searchtype="SHORT-CASE-NAME"&gt;Irving Oil Ltd. c.
    Canada&lt;/abbrvname&gt;
    ...
&lt;/case:info&gt;

           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;caseinfo:casename&gt;
  ...
  &lt;caseinfo:shortcasename name="Répertorié:"&gt;Irving Oil Ltd. c. Canada&lt;/caseinfo:shortcasename&gt;
  ...
&lt;/caseinfo:casename&gt;
           </codeblock>
    </example>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.info_abbrvname-LxAdv_caseinfo.shortcasename.dita  -->
	 
	<!--Vikas Rohilla : Template to match the case:info/abbrvname and creates -->
	<xsl:template match="case:info/abbrvname">
		<!--  Original Target XPath:  caseinfo:casename/caseinfo:shortcasename   -->
		<caseinfo:shortcasename>
		  <xsl:if test="@display-name">
		    <xsl:attribute name="name">
		      <xsl:value-of select="@display-name"/>
		    </xsl:attribute>
		  </xsl:if>
		  <xsl:apply-templates/>
			</caseinfo:shortcasename>
	</xsl:template>
  
<!-- Vikas Rohilla :Updated for the nl -->
  <xsl:template match="case:info/abbrvname/nl"/>
	
</xsl:stylesheet>