<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
  version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_jrnlarticleinfo">
  <title>jrnlarticleinfo <lnpid>id-NZ07DN-23819</lnpid></title>

  <body>
    <note>This is a container element that does not need to be carried forward in the conversion. However,
      all content must be converted such that the order of elements is maintained whenever possible. Please
      see the Maintain the Order of Elements Whenever Possible section for more information.</note>
    </body>
	</dita:topic>
<xsl:template match="jrnl:articleinfo">
  <xsl:apply-templates select="@* | node() except (pubdate | pubnote[remotelink])"/>
</xsl:template>

</xsl:stylesheet>