<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU13_Rosetta_abbrvname-LxAdv_caseinfo.shortcasename">
  <title>abbrvname <lnpid>id-AU13-20409</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>abbrvname</sourcexml> becomes
            <targetxml>caseinfo:casename/caseinfo:shortcasename</targetxml>.
          <pre xml:space="preserve">

&lt;case:courtinfo&gt;
  &lt;abbrvname&gt;SPEDDING v NOBLES;&lt;/abbrvname&gt;
&lt;/case:courtinfo&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;caseinfo:casename&gt;
  &lt;caseinfo:shortcasename&gt;SPEDDING v NOBLES;&lt;/caseinfo:shortcasename&gt;
&lt;/caseinfo:casename&gt;
</pre>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU13_composite_cases\AU13_Rosetta_abbrvname-LxAdv_caseinfo.shortcasename.dita  -->
	

	<xsl:template match="abbrvname">

		<!--  Original Target XPath:  caseinfo:casename/caseinfo:shortcasename   -->
			<caseinfo:shortcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:shortcasename>		

	</xsl:template>

</xsl:stylesheet>