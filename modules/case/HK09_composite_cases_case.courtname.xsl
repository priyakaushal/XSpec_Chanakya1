<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
  xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtname">
	  <title>case:courtname <lnpid>id-HK09-39417</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>case:courtname</sourcexml> becomes
            <targetxml>/compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
          <pre xml:space="preserve">

&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;FEDERAL COURT OF AUSTRALIA&lt;/case:courtname&gt;
  ...
&lt;/case:courtinfo&gt;
<b>Becomes</b>
                              
&lt;compcase:head&gt;
  &lt;compcase:caseinstanceinfo&gt;
    &lt;jurisinfo:courtinfo&gt;
      &lt;jurisinfo:courtname&gt;FEDERAL COURT OF AUSTRALIA&lt;/jurisinfo:courtname&gt;
      ...
    &lt;/jurisinfo:courtinfo&gt;
  &lt;/compcase:caseinstanceinfo&gt;
&lt;/compcase:head&gt;
</pre>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK09_composite_cases\case.courtname.dita  -->

	<xsl:template match="case:courtname">

		<!--  Original Target XPath:  /compcase:head/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:courtname   -->
					  <jurisinfo:courtname>
					    <xsl:apply-templates select="@* | node()"/>
					  </jurisinfo:courtname>

	</xsl:template>

</xsl:stylesheet>