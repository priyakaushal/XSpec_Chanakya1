<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info">
  <title>leg:info <lnpid>id-CA07-14017</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info</sourcexml> becomes
          <targetxml>courtrule:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>. The
        mappings for the children of <targetxml>leg:info</targetxml> are discussed as separate
        topics.</p>
      <note>The attribute <sourcexml>leg:info/@subseqdoc</sourcexml> will be suppressed from conversion.</note>
      <note>If the input documents is having no legislative information i.e. <sourcexml>leg:info</sourcexml> then conversion
      will create an empty output structure shown below:</note>

&lt;courtrule:head&gt;
    &lt;jurisinfo:legisbodyinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfoystem&gt;
                &lt;!--leg:info is not present in Document which creates Head part. As 'Head' is mandatory, creating empty head structure--&gt;
                &lt;/jurisinfoystem&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:legisbodyinfo&gt;
&lt;/courtrule:head&gt;

    </section>
    
    <section>
      <title>Changes</title>
      <p>2013-02-27: <ph id="change_20130227_SP">Added instruction and example for handling where document is having no legislative information.</ph></p>
    </section>
  </body>
	</dita:topic>

  
  
  
 
  
  
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.info.dita  -->

	<xsl:template match="leg:info">
	  <xsl:call-template name="createRefCitations"/>
<!--	  <xsl:apply-templates select="leg:officialnum[not(preceding-sibling::leg:num[not(contains(.,'solsak'))])]" mode="citation_officialnum"/>
	  <xsl:apply-templates select="child::leg:num[not(text()[contains(., 'solsak')])]"/>-->
	  <xsl:apply-templates select="child::leg:relatedleg"/>
	  <primlawinfo:primlawinfo>
	    
	    <xsl:apply-templates select="child::leg:num [text()[contains(., 'solsak')]]" mode="solsak"/>
	    <legisinfo:legisinfo>
	      <legisinfo:names>
	    <xsl:apply-templates select="child::leg:officialname"/>
	      </legisinfo:names>
	    </legisinfo:legisinfo>
	    <xsl:apply-templates select="child::leg:dates"/>
	    <xsl:apply-templates select="child::leg:officialnum"/>
	    
	  </primlawinfo:primlawinfo>
	  <xsl:apply-templates select="child::leg:juris"/>
	  
	 
	  
	  
	  

		
	</xsl:template>

	<xsl:template match="leg:info/@subseqdoc"/>

	

</xsl:stylesheet>