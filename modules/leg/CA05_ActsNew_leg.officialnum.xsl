<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:ci="http://www.lexis-nexis.com/ci"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0"
  exclude-result-prefixes="#all">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum">
  <title>leg:officialnum <lnpid>id-CA05-13630</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:officialnum</sourcexml> becomes <targetxml>primlawinfo:primlawinfo/primlawinfo:identifier</targetxml> with required attribute <targetxml>@idtype="officialnum"</targetxml></p> 
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:officialnum</sourcexml></title>
      <codeblock>

&lt;leg:officialnum&gt;R.S.O. 1990, c. A.31&lt;/leg:officialnum&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

 &lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:identifier idtype="officialnum"&gt;R.S.O. 1990, c. A.31&lt;/primlawinfo:identifier&gt;
 &lt;/primlawinfo:primlawinfo&gt;   

       </codeblock>
    </example>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.officialnum.dita  -->
<!--	<xsl:message>leg.officialnum.xsl requires manual development!</xsl:message> -->

  <xsl:template match="leg:officialnum">
    <xsl:choose>
      <xsl:when
        test="preceding-sibling::*[1][not(self::leg:officialnum)][count(parent::node()/child::leg:officialnum) >= 3]"/>
      <xsl:otherwise>
        
        <primlawinfo:identifier idtype="officialnum">
          
          
          
          <!--<xsl:apply-templates select="@* | node()"/>-->
          
          <xsl:analyze-string select="." regex="^((\[Reprinted in)|(\[Reproduite dans))?\s*(.+)(\[)">
            <xsl:matching-substring>
              <xsl:value-of select="regex-group(4)"/>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
              <xsl:value-of select="."/>
            </xsl:non-matching-substring>
          </xsl:analyze-string>
          
        </primlawinfo:identifier>
        
      </xsl:otherwise>
    </xsl:choose>
    
    
    
  </xsl:template>

</xsl:stylesheet>
