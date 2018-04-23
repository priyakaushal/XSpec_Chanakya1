<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
  version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.bodytext">
   <title>leg:bodytext <lnpid>id-HK01-36810</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML</title>
             <codeblock>

&lt;leg:bodytext&gt;
  &lt;p&gt;
    &lt;text&gt;A company has the capacity and the rights, powers and privileges of a natural person.&lt;/text&gt;
  &lt;/p&gt;
&lt;/leg:bodytext&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;primlaw:bodytext&gt;
  &lt;p&gt;
    &lt;text&gt;A company has the capacity and the rights, powers and privileges of a natural person.&lt;/text&gt;
  &lt;/p&gt;
&lt;/primlaw:bodytext&gt;

             </codeblock>
           </example>
 <section>
       <title>Changes</title>
       <p>2016-03-04: <ph id="change_20160304_SS">Created</ph>.</p>
 </section>
     </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK01_Acts\leg.bodytext.dita  -->

<!-- MDS 2017-04-21 - Moved leg:comntry output out of primlaw:bodytext -->
  
  <!-- JL made this full - featured this should become a new generic really. Handles leg:comntry and histnote as bump outs, can add more -->
  <!-- SS 2017-11-21: Edit below template for stopping the Dummy <primlaw:bodytext> before and after leg:histnote and leg:comntry-->
  <xsl:template match="leg:bodytext">  
      <!--<xsl:apply-templates select="@*"/>-->
    <xsl:for-each-group select="node()" group-adjacent="if (self::node() except self::leg:comntry) then 1 else 0">
        <xsl:choose>
          <xsl:when test="current-grouping-key()=0">
            <xsl:apply-templates select="current-group()"/>
          </xsl:when>
          <xsl:otherwise>
            <primlaw:bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <xsl:apply-templates select="current-group()"/>
            </primlaw:bodytext>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each-group>
    
  </xsl:template>

<xsl:template match="leg:bodytext/@searchtype"/>
  
</xsl:stylesheet>