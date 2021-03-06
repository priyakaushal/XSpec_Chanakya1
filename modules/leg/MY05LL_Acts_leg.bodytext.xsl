<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.bodytext">
   <title>leg:bodytext <lnpid>id-MY05LL-17008</lnpid></title>
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
 <section>
       <title>Changes</title>
       <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
 </section>
     </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LL_Acts\leg.bodytext.dita  -->
<!--	<xsl:message>MY05LL_Acts_leg.bodytext.xsl requires manual development!</xsl:message> -->

  <xsl:template match="leg:bodytext">
    <primlaw:bodytext>
      <xsl:choose>
        <xsl:when test="child::leg:heading">
          <primlaw:level leveltype="unclassified">
            <xsl:apply-templates select="leg:heading"/>
            <xsl:choose>
              <xsl:when test="child::leg:heading/following-sibling::*[not(leg:bodytext)]">
                <primlaw:bodytext>
                  <xsl:apply-templates
                    select="@* | node() except (leg:comntry, leg:heading)"/>
                </primlaw:bodytext>
              </xsl:when>
              <xsl:otherwise>
                <xsl:apply-templates select="@* | node() except (leg:comntry, leg:heading)"
                />
              </xsl:otherwise>
            </xsl:choose>
            <!--<xsl:apply-templates select="@* | node() except (leg:comntry)"/>-->
          </primlaw:level>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="@* | node() except (leg:comntry)"/>
          <xsl:if test="child::p/text/glp:note">
            <xsl:call-template name="glp:note_inside_p"/>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
      <!-- <xsl:apply-templates select="@* | node() except (leg:comntry)"/>-->
    </primlaw:bodytext>
    <xsl:apply-templates select="leg:comntry"/>
  </xsl:template>
  
  <xsl:template name = "glp:note_inside_p">           
    <xsl:apply-templates select="child::p/text/glp:note"/>      
  </xsl:template>
  
  <xsl:template match="leg:bodytext/@searchtype"/>

</xsl:stylesheet>