<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU13_Rosetta_abbrvname-LxAdv_caseinfo.shortcasename">
  <title>abbrvname <lnpid>id-ST05-28407</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>abbrvname</sourcexml> becomes
            <targetxml>caseinfo:casename/caseinfo:shortcasename</targetxml>.</li>
      </ul>
      
 </section>

    <example>
      <title>Source Example - based on AU content</title>
      <codeblock>

&lt;case:courtinfo&gt;
  &lt;abbrvname&gt;SPEDDING v NOBLES;&lt;/abbrvname&gt;
&lt;/case:courtinfo&gt;

       </codeblock>
    </example>
    
    <example>
      <title>Target Example</title>
      <codeblock>

&lt;caseinfo:casename&gt;
  &lt;caseinfo:shortcasename&gt;SPEDDING v NOBLES;&lt;/caseinfo:shortcasename&gt;
&lt;/caseinfo:casename&gt;

       </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Compcase\abbrvname.dita  -->
	<xsl:message>Compcase_abbrvname.xsl requires manual development!</xsl:message> 

	<xsl:template match="abbrvname">

		<!--  Original Target XPath:  caseinfo:casename/caseinfo:shortcasename   -->
		<caseinfo:casename>
			<caseinfo:shortcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:shortcasename>
		</caseinfo:casename>

	</xsl:template>

</xsl:stylesheet>