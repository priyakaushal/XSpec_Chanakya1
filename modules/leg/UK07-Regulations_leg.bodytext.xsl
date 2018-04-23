<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.bodytext">
   <title>leg:bodytext <lnpid>id-UK07-28210</lnpid></title>
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

&lt;leg:bodytext searchtype="LEGISLATION"&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text searchtype="LEGISLATION"&gt;Signed by authority of the Secretary
                of State for Work and Pensions.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text searchtype="LEGISLATION"&gt;
                &lt;emph typestyle="it"&gt;Angela Eagle&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text searchtype="LEGISLATION"&gt;Minister of State,&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text searchtype="LEGISLATION"&gt;Department for Work and
                Pensions&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text searchtype="LEGISLATION"&gt;5th January 2010&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/leg:bodytext&gt;

</codeblock>
           </example>
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;pgrp&gt;
        &lt;p&gt;
            &lt;text&gt;Signed by authority of the Secretary
                of State for Work and Pensions.&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Angela Eagle&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Minister of State,&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Department for Work and
                Pensions&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;5th January 2010&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/primlaw:bodytext&gt;

             </codeblock>
           </example>

   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.bodytext.dita  -->
	

	<xsl:template match="leg:bodytext">
<xsl:choose>
    <xsl:when test="child::leg:heading">
        <xsl:apply-templates select="leg:heading"/>
        <xsl:if test="child::leg:heading[(following-sibling::*[1][self::*])]">
            <primlaw:bodytext>
                <xsl:apply-templates select="@* | node() except leg:heading"/>
            </primlaw:bodytext>
        </xsl:if>
        
        </xsl:when>
    <xsl:when test="child::leg:heading[not(following-sibling::*[1][self::*])]"/>
   <!-- <xsl:when test="child::leg:comntry[@searchtype='ANNOTATIONS']">
        <primlaw:level leveltype="preamble">
        <xsl:apply-templates select="@* | node() except leg:heading"/>
        </primlaw:level>
    </xsl:when>-->
    <xsl:otherwise>
        <primlaw:bodytext>
            <xsl:apply-templates select="@* | node() except (leg:heading |leg:comntry[@searchtype='ANNOTATIONS']) "/>
        </primlaw:bodytext>
        <xsl:apply-templates select="leg:comntry[@searchtype='ANNOTATIONS'] except (leg:heading)"/>
    </xsl:otherwise>    
    
        
    
</xsl:choose>
	       
	</xsl:template>
    
<!--    <xsl:template match="leg:bodytext[@searchtype]"/>-->

</xsl:stylesheet>