<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info">
  <title>leg:info <lnpid>id-MY06-17214</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info</sourcexml> becomes <targetxml>primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> and create attribute <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>.The mappings for the children of <targetxml>leg:info</targetxml> are discussed as separate topics.</p>
      <note>The attribute <sourcexml>leg:info/@subseqdoc</sourcexml> will be suppressed from conversion.</note>
   
      <b>Source Example:</b>
      
<pre>

&lt;leg:body&gt;
    &lt;leg:info&gt;
        .......
        .......
    &lt;/leg:info&gt;
&lt;/leg:body&gt;
  
</pre>    

<b>Target Example:</b>
      
      <pre>

&lt;regulation:body&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:levelinfo&gt;
            &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                    ............
                    ............
                &lt;/legisinfo:legisinfo&gt;
            &lt;/primlawinfo:primlawinfo&gt;
        &lt;/primlaw:levelinfo&gt;
    &lt;/primlaw:level&gt;
&lt;/regulation:body&gt;
        
      </pre>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY06_Regulations\leg.info.dita  -->
<!--	<xsl:message>MY06_Regulations_leg.info.xsl requires manual development!</xsl:message> -->

    <xsl:template match="leg:info">
        <!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo   -->
        <primlaw:level>
            <xsl:attribute name="leveltype">unclassified</xsl:attribute>
            <primlaw:levelinfo>
                <primlawinfo:primlawinfo>
                    <xsl:apply-templates select="node() except (leg:officialname, leg:juris, leg:dates)"/>
                    <legisinfo:legisinfo>
                        <xsl:apply-templates
                            select="@* | node() except (leg:juris, leg:dates, leg:officialnum, leg:year)"/>
                    </legisinfo:legisinfo>
                </primlawinfo:primlawinfo>
            </primlaw:levelinfo>
        </primlaw:level>
    </xsl:template>
    
	<xsl:template match="leg:info/@subseqdoc"/>


</xsl:stylesheet>