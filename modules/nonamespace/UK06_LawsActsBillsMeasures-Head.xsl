<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
xmlns:ci="http://www.lexis-nexis.com/ci"
xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita docinfo ref ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-Head">
  <title>Head <lnpid>id-UK06-28011</lnpid></title>
  <body>
    <section>
      <title>legis:head</title>
      <p><targetxml>legis:legis/legis:head</targetxml> is created as described in the Introduction.</p>
    </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-Head.dita  -->

<!-- Sudhanshu Srivastava: 
  Edited :- 14 June 2017.
  Comments :- This is content specific module. In this module the normcite is bieng converted under legis:head part.
  -->
  <xsl:template match="docinfo:normcite">
    <ref:citations>
      <xsl:for-each select="ci:cite">
      <ref:cite4thisresource>
        <xsl:choose>
          <xsl:when test="not(attribute::type)">
            <xsl:attribute name="citetype" select="'normcite'"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:attribute name="citetype" select="if(@type='cite4thisdoc') then 'normcite' else 'parallel'"/>
          </xsl:otherwise>
        </xsl:choose>
        <ref:nonciteidentifier normprotocol="unspecified">
          <xsl:value-of select="ci:content"/>
        </ref:nonciteidentifier>
      </ref:cite4thisresource>
      </xsl:for-each>
    </ref:citations>
    
  </xsl:template>
</xsl:stylesheet>