<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="ST11_Commentary_leg.histnote2">
  <title><sourcexml>leg:histnote</sourcexml> occured in <sourcexml>p</sourcexml> <lnpid>id-ST11-37821</lnpid></title>
  <body>
    <section>
      <p>In the source document, element <sourcexml>leg:histnote</sourcexml> occurred in element <sourcexml>p</sourcexml> but NL schema is not allowed element <targetxml>note[@notetype="historical"]</targetxml> within <targetxml>p</targetxml>. Please refer to below list for handling <sourcexml>p/leg:histnote</sourcexml> scenarios:
        <ul>
          <li>If element <sourcexml>leg:histnote</sourcexml> occurs within <sourcexml>p</sourcexml> without any sibling than outer element <sourcexml>p</sourcexml> will dropped in NL conversion.</li>
          <li>If element <sourcexml>leg:histnote</sourcexml> occurs within <sourcexml>p</sourcexml> with sibling element than element <targetxml>note[@notetype="historical"]</targetxml> will move from <targetxml>p</targetxml> in NL conversion.</li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Seclaw\ST11_Commentary_leg.histnote2.dita  -->
	<xsl:message>ST11_Commentary_leg.histnote2.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note[@notetype="historical"]   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  note[@notetype="historical"]   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="p/leg:histnote">

		<!--  Original Target XPath:  note[@notetype="historical"]   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

</xsl:stylesheet>