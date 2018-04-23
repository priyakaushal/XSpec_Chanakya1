<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita leg legisinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialname">
  <title>leg:officialname <lnpid>id-CA05-13629</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:officialname</sourcexml> becomes
        <targetxml>legisinfo:names/legisinfo:officialtitle</targetxml></p>      
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:officialname</sourcexml></title>
      <codeblock>

&lt;leg:officialname&gt;Assessment Act&lt;/leg:officialname&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;legisinfo:names&gt;
   &lt;legisinfo:officialtitle&gt;Assessment Act&lt;/legisinfo:officialtitle&gt;
&lt;/legisinfo:names&gt;   

       </codeblock>
    </example>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.officialname.dita  -->
	<!--<xsl:message>leg.officialname.xsl requires manual development!</xsl:message> -->

	<xsl:template match="leg:officialname">

		<!--  Original Target XPath:  legisinfo:names/legisinfo:officialtitle   -->
	  <legisinfo:legisinfo>
	  <legisinfo:names>
			<legisinfo:officialtitle>
				<xsl:apply-templates select="@* | node()"/>
			</legisinfo:officialtitle>
		</legisinfo:names>
	  </legisinfo:legisinfo>
	</xsl:template>
  <xsl:template match="leg:officialname/@ln.user-displayed"/>
</xsl:stylesheet>