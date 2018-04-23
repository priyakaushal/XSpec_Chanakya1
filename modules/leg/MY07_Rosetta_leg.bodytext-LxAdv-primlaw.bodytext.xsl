<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY07_Rosetta_leg.bodytext-LxAdv-primlaw.bodytext">
  <title>leg:bodytext <lnpid>id-MY07-17414</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>. </li>
      </ul>
      <pre>

&lt;leg:bodytext&gt;
  &lt;pgrp&gt;
    &lt;p&gt;&lt;text&gt;An Act to amend the Farmers&amp;#x0027; Organization Act 1973.&lt;/text&gt;&lt;/p&gt;
    &lt;p&gt;&lt;text align="center"&gt;&amp;#x005B;1 November 1973&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
  &lt;/pgrp&gt;
&lt;/leg:bodytext&gt;

    </pre>
      <b>becomes</b>
      <pre>

&lt;primlaw:bodytext&gt;
  &lt;pgrp&gt;
    &lt;p&gt;&lt;text&gt;An Act to amend the Farmers&amp;#x0027; Organization Act 1973.&lt;/text&gt;&lt;/p&gt;
    &lt;p align="center"&gt;&lt;text&gt;&amp;#x005B;1 November 1973&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
  &lt;/pgrp&gt;
&lt;/primlaw:bodytext&gt;

    </pre>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY07_CourtRule\MY07_Rosetta_leg.bodytext-LxAdv-primlaw.bodytext.dita  -->
	<!--<xsl:message>MY07_Rosetta_leg.bodytext-LxAdv-primlaw.bodytext.xsl requires manual development!</xsl:message>--> 

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
          <!--<xsl:choose>
            <xsl:when test="current-group()/self::leg:heading">
              <xsl:for-each select="current-group()">
                <xsl:apply-templates select="."/>
                <xsl:apply-templates select="self::leg:heading/leg:empleg"/>
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
          </xsl:choose>-->
          <xsl:for-each select="current-group()[self::leg:heading]">
            <xsl:apply-templates select="."/>
            <xsl:apply-templates select="self::leg:heading/leg:empleg"/>
          </xsl:for-each>
          <primlaw:bodytext>
                  <xsl:apply-templates select="parent::leg:bodytext/@*"/>
                  <xsl:for-each select="current-group()[not(self::leg:heading)]">
                     <xsl:apply-templates select="."/>
                  </xsl:for-each>
               </primlaw:bodytext>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each-group>
  </xsl:template>

</xsl:stylesheet>