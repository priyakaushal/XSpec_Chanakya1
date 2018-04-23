<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
  version="2.0" exclude-result-prefixes="#all">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.officialnum">
    <title>leg:officialnum <lnpid>id-CA07-14028</lnpid></title>
    <body>
      <section>
        <p><sourcexml>leg:officialnum</sourcexml> becomes
            <targetxml>primlawinfo:primlawinfo/primlawinfo:identifier</targetxml> with required
          attribute <targetxml>@idtype="officialnum"</targetxml>.</p>
      </section>

      <example>
        <title>Source XML</title>
        <codeblock> &lt;leg:officialnum&gt;C.P. 1993-68 25 janvier 1993&lt;/leg:officialnum&gt;
        </codeblock>
      </example>

      <example>
        <title>Target XML</title>
        <codeblock> &lt;primlawinfo:primlawinfo&gt; &lt;primlawinfo:identifier
          idtype="officialnum"&gt;C.P. 1993-68 25 janvier 1993&lt;/primlawinfo:identifier&gt;
          &lt;/primlawinfo:primlawinfo&gt; </codeblock>
      </example>

    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.officialnum.dita  -->

  <!--<xsl:template match="leg:officialnum">

		<!-\-  Original Target XPath:  primlawinfo:primlawinfo/primlawinfo:identifier   -\->
	
		  <primlawinfo:identifier idtype="officialnum">
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:identifier>
	

	</xsl:template>-->

 <!-- <xsl:template match="leg:officialnum" mode="parallelcite">
    <xsl:choose>
      <xsl:when
        test="not(preceding-sibling::leg:officialnum)">


        <ref:parallelcite citetype="parallel">
          <lnci:cite>
            <lnci:content>
              <xsl:apply-templates select="leg:officialnum[1]"/>
              <xsl:apply-templates select="@* | node()"/>
            </lnci:content>
          </lnci:cite>
        </ref:parallelcite>        
        <xsl:if test="contains($first_act, 'true')">
        <ref:cite4thisresource>
          <lnci:cite type="act">
            <lnci:content>
              <xsl:apply-templates select="leg:officialnum[1]"/>
              <xsl:apply-templates select="@* | node()"/>
            </lnci:content>
          </lnci:cite>
        </ref:cite4thisresource>
        </xsl:if>

      </xsl:when>
    </xsl:choose>
  </xsl:template>-->

 <!-- <xsl:template match="leg:officialnum[not(preceding-sibling::leg:num[not(contains(., 'solsak'))])]"
    mode="citation_officialnum">
    <xsl:variable name="content" select="."/>
    <!-\- JL: Exception and Single Document Retrieval handling For CA05,CA06,CA07,CA08 if 
      docinfo:custom-metafields/docinfo:custom-metafield[@name="actFirstDoc"] is having the value True
      then this should be handled to generate the firstActDocument in target and an additional 
      ref:cite4thisresource/lnci:cite/@type="act" will be created where target lnci:content will be a direct copy from leg:officialnum. -\->
    
    <xsl:for-each select="$Citation_Num/*:codes/*:code">
      <xsl:variable name="code" select="."/>
      <xsl:if test="starts-with($content, $code/@key)">
        <ref:citations>
          <ref:cite4thisresource citetype="reporter">
            <lnci:cite>
              <lnci:content>
                <xsl:value-of select="$content"/>
              </lnci:content>
            </lnci:cite>
          </ref:cite4thisresource>
          <ref:parallelcite citetype="parallel">
            <lnci:cite>
              <lnci:content>
                <xsl:value-of select="replace($content, $code/@key, $code/@value)"/>
              </lnci:content>
            </lnci:cite>
          </ref:parallelcite>
          <xsl:if test="contains($first_act, 'true')">
          <ref:cite4thisresource>
            <lnci:cite type="act">
              <lnci:content>
                <xsl:value-of select="$content"/>
              </lnci:content>
            </lnci:cite>
          </ref:cite4thisresource>
          </xsl:if>
        </ref:citations>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>-->
  <xsl:template match="leg:officialnum">
    <xsl:choose>
      <xsl:when
        test="preceding-sibling::*[1][not(self::leg:officialnum)][count(parent::node()/child::leg:officialnum) >= 2]"/>
      <xsl:otherwise>

        <primlawinfo:identifier idtype="officialnum">



          <!--<xsl:apply-templates select="@* | node()"/>-->

          <xsl:analyze-string select="." regex="^((\[Reprinted in)|(\[Reproduite dans))?\s*(.+)(\])">
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
