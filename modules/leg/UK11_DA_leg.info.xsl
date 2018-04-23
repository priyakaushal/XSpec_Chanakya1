<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita source_cttr dig leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_leg.info">
  <title>leg:info <lnpid>id-UK11DA-29428</lnpid></title>
  <body>
    <section>
      <p><sourcexml>dig:info/leg:info</sourcexml> is a container that does not itself convert.
        Children of <sourcexml>leg:info</sourcexml> convert as described below.</p></section>
    <note>For <sourcexml>cttr:annot/leg:info</sourcexml>, see rules covering
        <sourcexml>cttr:annotations</sourcexml>.</note>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_leg.info.dita  -->
	 


	<xsl:template match="leg:info">
    <xsl:apply-templates select="@* | node() except (leg:dates|leg:govoffice)"/>
	</xsl:template>

	
</xsl:stylesheet>