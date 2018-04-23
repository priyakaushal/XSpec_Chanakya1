<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:dig="http://www.lexis-nexis.com/glp/dig" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.info">
  <title>dig:info <lnpid>id-UK03-27446</lnpid></title>
  <body>
    <p>
      <ul>
        <li>
          <sourcexml>dig:body/dig:info</sourcexml> is a container element and need not be carried forward 
          in the conversion.
          
<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;...
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;...&lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>     
        </li>
      </ul> 
    </p>
    <section>
      <title>Created</title>
      <p>2015-08-12</p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.info.dita  --> 

  <!--Vikas Rohilla : Updated the Template initial  -->
  <xsl:template match="dig:info" mode="head">
    <xsl:apply-templates select="node() except (catchwordgrp|contrib|note|references|dig:title|pubdate|dig:subject)|@*"/>
  </xsl:template>
  
  <xsl:template match="dig:info">
    <xsl:apply-templates select="node() except (case:info|catchwordgrp|dig:cite|dig:type|dig:subject|pubdate[@display-name='Published Date'])"/>
  </xsl:template>
  
  <xsl:template match="dig:info[$streamID='UK03'][not(preceding-sibling::dig:info)]">
    <xsl:apply-templates select="node() except (contrib|dig:title|references|note|catchwordgrp|dig:cite|dig:type|dig:subject|pubdate[@display-name=('Published Date','Issue Date')])"/>
  </xsl:template>
  
  <xsl:template match="dig:info[$streamID='CA02DC']">
    <xsl:apply-templates select="node() except (case:info|catchwordgrp|dig:cite)"/>
  </xsl:template>
  
  <!-- CSN - 2017/10/18 - throw away legislative information from the Case Digest stream to match DT -->
  <xsl:template match="leg:info[$streamID='UK03']"/>
  
</xsl:stylesheet>