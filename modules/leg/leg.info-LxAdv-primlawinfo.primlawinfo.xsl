<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" 
  version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info-LxAdv-primlawinfo.primlawinfo">
  <title>leg:info <lnpid>id-HK04-36615</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info</sourcexml> becomes
          <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>
        and create attribute <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>.The
        mappings for the children of <sourcexml>leg:info</sourcexml> are discussed as separate
        topics. </p>
      <p> To handle the children of <sourcexml>leg:info</sourcexml>
        <note>Conversion should not create adjacent <targetxml>primlaw:levelinfo</targetxml>. Data
          should be merged to single
          <targetxml>primlaw:levelinfo</targetxml>.</note><note>Conversion should not create
          adjacent <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be merged to single
            <targetxml>primlawinfo:primlawinfo</targetxml>.</note>
      </p>
      <pre>
  
&lt;leg:info&gt;
...
&lt;/leg:info&gt;
    
</pre>
      <b>Becomes</b>
      <pre>
      
&lt;primlaw:level leveltype="unclassified"&gt;
  &lt;primlaw:levelinfo&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;legisinfo:legisinfo&gt;
          ...
        &lt;/legisinfo:legisinfo&gt;
    &lt;/primlawinfo:primlawinfo&gt;
  &lt;/primlaw:levelinfo&gt;
&lt;/primlaw:level&gt;


</pre>
    </section>  
    <section>
      <title>Changes</title>
      <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo   -->
			<primlaw:level>
			  <xsl:attribute name="leveltype">unclassified</xsl:attribute>
			  <primlaw:levelinfo>
			    <primlawinfo:primlawinfo>
			      <xsl:apply-templates select="node() except(leg:officialname, leg:juris)"/>
			      <legisinfo:legisinfo>
			        <xsl:apply-templates select="@* | node() except(leg:juris, leg:officialnum, leg:year)"/>
			      </legisinfo:legisinfo>
			    </primlawinfo:primlawinfo>
			  </primlaw:levelinfo>
			</primlaw:level>

	</xsl:template>

</xsl:stylesheet>