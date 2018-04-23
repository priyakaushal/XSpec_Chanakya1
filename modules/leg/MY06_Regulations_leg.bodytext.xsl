<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.bodytext">
   <title>leg:bodytext <lnpid>id-MY06-17210</lnpid></title>
   <body>
      <section>
        <ul>
          <li>
            <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML</title>
             <codeblock>

&lt;leg:bodytext&gt;
  &lt;pgrp&gt;
    &lt;p&gt;&lt;text&gt;An Act to amend the Farmers&amp;#x0027; Organization Act 1973.&lt;/text&gt;&lt;/p&gt;
    &lt;p&gt;&lt;text align="center"&gt;&amp;#x005B;1 November 1973&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
  &lt;/pgrp&gt;
&lt;/leg:bodytext&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;primlaw:bodytext&gt;
  &lt;pgrp&gt;
    &lt;p&gt;&lt;text&gt;An Act to amend the Farmers&amp;#x0027; Organization Act 1973.&lt;/text&gt;&lt;/p&gt;
    &lt;p&gt;&lt;text align="center"&gt;&amp;#x005B;1 November 1973&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
  &lt;/pgrp&gt;
&lt;/primlaw:bodytext&gt;

             </codeblock>
           </example>
 
     </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY06_Regulations\leg.bodytext.dita  -->
<!--	<xsl:message>MY06_Regulations_leg.bodytext.xsl requires manual development!</xsl:message> -->

  <xsl:template match="leg:bodytext">
    <!-- this will handle annotations interspersed with primlaw:bodytext elements in document order -->
    <xsl:for-each-group select="*"
      group-adjacent="
      if (self::leg:comntry) then
      0
      else
      1">
      <xsl:choose>
        <xsl:when test="current-grouping-key() = 0">
          <xsl:for-each select="current-group()">
            <xsl:apply-templates select="."/>
          </xsl:for-each>
        </xsl:when>
        <xsl:otherwise>
          <primlaw:bodytext>
            <xsl:apply-templates select="parent::leg:bodytext/@*"/>
            <xsl:for-each select="current-group()">
              <xsl:apply-templates select="."/>
            </xsl:for-each>
          </primlaw:bodytext>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each-group>
  </xsl:template>
  

</xsl:stylesheet>