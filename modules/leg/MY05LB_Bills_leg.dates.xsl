<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.dates">
  <title>leg:dates <lnpid>id-MY05LB-16809</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info/leg:dates</sourcexml>  becomes <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates</targetxml>.</p> 
      
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:dates</sourcexml></title>
      <codeblock>

&lt;leg:info&gt;
  &lt;leg:dates&gt;
    ...
  &lt;/leg:dates&gt;
&lt;/leg:info&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;primlaw:levelinfo&gt;
   &lt;primlawinfo:primlawinfo&gt;
     &lt;primlawinfo:dates&gt;
        ...
      &lt;/primlawinfo:dates&gt;
   &lt;/primlawinfo:primlawinfo&gt;
&lt;/primlaw:levelinfo&gt;

       </codeblock>
    </example>  
 <section>
       <title>Changes</title>
       <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LB_Bills\leg.dates.dita  -->
<!--	<xsl:message>MY05LB_Bills_leg.dates.xsl requires manual development!</xsl:message> -->


  <xsl:template match="leg:info/leg:dates">
    <xsl:choose>
      <xsl:when test="not(child::*[not(name() = 'pubdate')])"/>
      <xsl:otherwise>
        <primlawinfo:dates>
          <xsl:apply-templates select="node() except (pubdate)"/>
        </primlawinfo:dates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>