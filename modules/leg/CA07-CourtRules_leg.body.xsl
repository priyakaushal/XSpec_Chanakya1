<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"   xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.body">
  <title>leg:body <lnpid>id-CA07-14009</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:body</sourcexml> becomes <targetxml>courtrule:body</targetxml>. The mappings
        for the children of <targetxml>courtrule:body</targetxml> are discussed as separate
        topics.</p>
      <note> If the input document is having no legislative body information i.e,
          <sourcexml>leg:body</sourcexml> then converion will create an empty output structure of
          <targetxml>primlaw:level</targetxml> in target within
          <targetxml>courtrule:body</targetxml> as shown below:</note>
      
&lt;courtrule:body&gt;
  &lt;primlaw:level leveltype="unclassified"&gt;
    &lt;!--courtrule:body is not present in Document which creates Body part. As 'Body' is mandatory, creating empty body structure--&gt;
  &lt;/primlaw:level&gt;
&lt;/courtrule:body&gt;

    </section>
    
    <section>
      <title>Changes</title>
      <p>2013-03-28: <ph id="change_20130328_SP">Updated target example [added <targetxml>@leveltype="unclassified"</targetxml> to 
        <targetxml>primlaw:level</targetxml>.</ph></p>
      <p>2013-03-20: <ph id="change_20130320_SP">Added instruction and example for handling where document is having no legislative body information 
        i.e, <sourcexml>leg:body</sourcexml>.</ph></p>
    </section>
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.body.dita  -->
	
  <xsl:template match="leg:body">
    <xsl:variable name="status_text"
      select="upper-case(/LEGDOC/leg:body/leg:info/leg:history/leg:histnote/p/text)"/>
  
    <courtrule:head>
    <xsl:apply-templates select="child::leg:info"/>
    </courtrule:head>
    <courtrule:body>
      <xsl:apply-templates select="leg:info/leg:longtitle"/>
      <xsl:apply-templates select="child::leg:preamble"/>
      <xsl:apply-templates select="child::leg:level"/>   
    <!--<xsl:if test="not(child::leg:level)">
      <primlaw:level leveltype="unclassified">
        <primlaw:levelinfo>
          <primlawinfo:primlawinfo>
            <legisinfo:legisinfo>
              <legisinfo:statusgroup>
                <legisinfo:status statuscode="consolidated">
                </legisinfo:status>
              </legisinfo:statusgroup>
            </legisinfo:legisinfo>
          </primlawinfo:primlawinfo>
        </primlaw:levelinfo>
      </primlaw:level>
   
    </xsl:if>  -->
      <xsl:if test="not(following-sibling::leg:level) and not(starts-with($status_text,'REPEALED BY') or starts-with($status_text,'ABROGÉ PAR') or starts-with($status_text,'ABROGÉE PAR'))">
        <primlaw:level leveltype="unclassified">
          <primlaw:levelinfo>
            <primlawinfo:primlawinfo>
              <legisinfo:legisinfo>
                <legisinfo:statusgroup>
                  <legisinfo:status statuscode="consolidated"/>
                </legisinfo:statusgroup>
              </legisinfo:legisinfo>
            </primlawinfo:primlawinfo>
          </primlaw:levelinfo>
        </primlaw:level>
      </xsl:if>
      <xsl:if test="not(following-sibling::leg:level) and starts-with($status_text,'REPEALED BY') or starts-with($status_text,'ABROGÉ PAR') or starts-with($status_text,'ABROGÉE PAR')">
        <primlaw:level leveltype="unclassified">
          <primlaw:levelinfo>
            <primlawinfo:primlawinfo>
              <legisinfo:legisinfo>
                <legisinfo:statusgroup>
                  <legisinfo:status statuscode="repealedshell">
                  <legisinfo:statustext>
                    <xsl:value-of select="/LEGDOC/leg:body/leg:info/leg:history/leg:histnote/p/text"/>
                  </legisinfo:statustext>
                  </legisinfo:status>
                </legisinfo:statusgroup>
              </legisinfo:legisinfo>
            </primlawinfo:primlawinfo>
          </primlaw:levelinfo>
        </primlaw:level>
      </xsl:if>
    </courtrule:body>
  </xsl:template>

</xsl:stylesheet>