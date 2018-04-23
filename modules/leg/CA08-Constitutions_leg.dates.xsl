<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates">
  <title>leg:dates <lnpid>id-CA08-14213</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:dates</sourcexml> becomes <targetxml>primlawinfo:primlawinfo/primlawinfo:dates</targetxml></p>
      <note>Note: The formatting of the date-text should not be normalized to YYYY-MM-DD. The attributes are
        used for normalization, but the element content should remain the same.</note>     
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:dates</sourcexml></title>
      <codeblock>

&lt;leg:info&gt;
  &lt;leg:dates&gt;
    &lt;!-- ... --&gt;
  &lt;/leg:dates&gt;
&lt;/leg:info&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;legis:head&gt;
  &lt;primlawinfo:primlawinfo&gt;
    &lt;primlawinfo:dates&gt;
      &lt;!-- ... --&gt;
    &lt;/primlawinfo:dates&gt;
  &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;

        </codeblock>
    </example>      
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA08-Constitutions\leg.dates.dita  -->
  <xsl:template match="leg:dates">
    <xsl:if test="descendant::remotelink"/>
       <xsl:apply-templates select="@* | node()"/>
    
  </xsl:template>
		

	
	

</xsl:stylesheet>