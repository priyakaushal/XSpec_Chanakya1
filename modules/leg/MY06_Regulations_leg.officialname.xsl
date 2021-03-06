<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialname">
  <title>leg:officialname <lnpid>id-MY06-17221</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:officialname</sourcexml> becomes
          <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml></p>      
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:officialname</sourcexml></title>
      <codeblock>

&lt;leg:officialname searchtype="LEGISLATION"&gt;PINEAPPLE INDUSTRY (AMENDMENT) ACT, 1961&lt;/leg:officialname&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlawinfo:primlawinfo&gt;
  &lt;legisinfo:names&gt;
     &lt;legisinfo:officialtitle&gt;PINEAPPLE INDUSTRY (AMENDMENT) ACT, 1961&lt;/legisinfo:officialtitle&gt;
  &lt;/legisinfo:names&gt;
&lt;/primlawinfo:primlawinfo&gt;

       </codeblock>
    </example>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</note>    
 
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY06_Regulations\leg.officialname.dita  -->
<!--	<xsl:message>MY06_Regulations_leg.officialname.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:info/leg:officialname[not(@ln.user-displayed)]">
		<legisinfo:names>
			<legisinfo:officialtitle>
				<xsl:apply-templates select="@* | node()"/>
			</legisinfo:officialtitle>
		</legisinfo:names>
	</xsl:template>

</xsl:stylesheet>