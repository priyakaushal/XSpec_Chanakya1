<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_p-blockquote-legfragment-to-LexisAdvance_primlaw.excerpt-primlaw.bodytext">
  <title><sourcexml>p/blockquote/legfragment</sourcexml> to <targetxml>primlaw:excerpt/primlaw:bodytext</targetxml> <lnpid>id-CCCC-10418</lnpid></title>
  <body>
    <section>
      <p>
        <b>p/blockquote/legfragment:</b> Handling of p/blockquote/legfragment:
      <codeblock>
       &lt;p&gt;
       &lt;text&gt;The meaning of sexual penetration for the purposes of subdivisions (8A) to (8G) of Div 1 of Pt 1 of the Crimes Act 1958 is defined in s 35(1) of the Crimes Act in the following terms:&lt;/text&gt;
   &lt;blockquote&gt;
      &lt;legfragment&gt;
        &lt;deflist&gt;
          &lt;defitem&gt;
            &lt;defterm&gt;
                 &lt;emph typestyle="bf"&gt;sexual penetration&lt;/emph&gt;
            &lt;/defterm&gt;
            &lt;defdesc&gt;
          &lt;p&gt;
          &lt;text&gt;means&lt;/text&gt;
          &lt;/p&gt;
          ...
          &lt;/defdesc&gt;
          &lt;/defitem&gt;
        &lt;/deflist&gt;
      &lt;/legfragment&gt;
   &lt;/blockquote&gt;
&lt;/p&gt;
 
      </codeblock>
      <b>Becomes</b>
      <codeblock>
       &lt;p&gt;
       &lt;text&gt;The meaning of sexual penetration for the purposes of subdivisions (8A) to (8G) of Div 1 of Pt 1 of the Crimes Act 1958 is defined in s 35(1) of the Crimes Act in the following terms:&lt;/text&gt;&lt;/p&gt;
       &lt;primlaw:excerpt&gt;
      &lt;primlaw:bodytext&gt;
        &lt;deflist&gt;
          &lt;defitem&gt;
            &lt;defterm&gt;
                 &lt;emph typestyle="bf"&gt;sexual penetration&lt;/emph&gt;
            &lt;/defterm&gt;
           &lt;defdesc&gt;
          &lt;bodytext&gt;
          &lt;p&gt;
          &lt;text&gt;means&lt;/text&gt;
          &lt;/p&gt;
          ...
          &lt;/bodytext&gt;
          &lt;/defdesc&gt;
          &lt;/defitem&gt;
        &lt;/deflist&gt;
        &lt;/primlaw:bodytext&gt;
      &lt;/primlaw:excerpt&gt;
  
 
</codeblock>
      </p>
    </section>

  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_p-blockquote-legfragment-LxAdv-primlaw.excerpt-primlaw.bodytext.dita  -->

        <!-- JL: passthru for blockquote/legfragment is in blockquote template.  Here we just need to insert the wrappers -->
  
        <xsl:template match="p/blockquote/legfragment">
          <primlaw:excerpt>
            <xsl:apply-templates select="@*"/>
            <xsl:for-each-group select="*" group-adjacent="if (self::leg:level) then 0 else 1">
              <xsl:choose>
                <xsl:when test="current-grouping-key()=0">
                  <xsl:apply-templates select="current-group()"/>
                </xsl:when>
                <xsl:otherwise>
                  <primlaw:bodytext>
                    <xsl:apply-templates select="current-group()"/>
                  </primlaw:bodytext>		        
                </xsl:otherwise>
              </xsl:choose>
            </xsl:for-each-group>		 
          </primlaw:excerpt>
        </xsl:template>        
  
      
</xsl:stylesheet>