<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-CaseDigest_case.courtname">
   <title>case:courtname <lnpid>id-NZ07DC-23613</lnpid></title>
   <body>
      <section>
          <p><sourcexml>case:courtname</sourcexml> becomes
          <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
      </p>

        <pre xml:space="preserve">
&lt;case:courtname&gt;Supreme Court&lt;/case:courtname&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;Supreme Court&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;
</pre>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ07_Linxplus\NZ07DC_Linxplus-CaseDigest\Linxplus-CaseDigest_case.courtname.dita  -->
	<!--<xsl:message>Linxplus-CaseDigest_case.courtname.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:courtname">

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:courtname   -->
		
			<jurisinfo:courtname>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:courtname>
		

	</xsl:template>

</xsl:stylesheet>