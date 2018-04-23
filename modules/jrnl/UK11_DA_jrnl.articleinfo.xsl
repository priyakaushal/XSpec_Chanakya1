<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_jrnl.articleinfo">
  <title>jrnl:articleinfo <lnpid>id-UK11DA-29424</lnpid></title>
  <body>
    <section>
      <p><sourcexml>jrnl:articleinfo</sourcexml> is a container element that does not itself
        convert. For mapping of child elements, see instructions for
        <sourcexml>jrnl:journalcite</sourcexml> and <sourcexml>pubdate</sourcexml>.</p></section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_jrnl.articleinfo.dita  -->	 

	<!--Vikas Rohilla : Tempalate to match the jrnl:articleinfo-->
	<xsl:template match="jrnl:articleinfo">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>


</xsl:stylesheet>