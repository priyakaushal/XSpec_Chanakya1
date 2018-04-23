<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.bodytext">
   <title>leg:bodytext <lnpid>id-CA07-14010</lnpid></title>
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
        &lt;text&gt;18 An appeal book is required in every
            appeal, unless otherwise ordered.&lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:bodytext&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;18 An appeal book is required in every
            appeal, unless otherwise ordered.&lt;/text&gt;
    &lt;/p&gt;
&lt;/primlaw:bodytext&gt;

             </codeblock>
           </example>

   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.bodytext.dita  -->
	
	
  
  <xsl:template match="leg:bodytext[not(descendant::text[starts-with(.,'Note:') or starts-with(., 'Editor''s Note:') or starts-with(., 'Editor''s note:') or starts-with(.,'[Note de l''')])]">
    
    <!--  Original Target XPath:  primlaw:bodytext   -->
    <primlaw:bodytext>
      <xsl:apply-templates select="@* | node() except leg:history"/>
    </primlaw:bodytext>
    <xsl:apply-templates select="child::leg:history"/>
  </xsl:template>
  
  <xsl:template match="figure" priority="2">
    <xsl:apply-templates select="descendant::text"/>
  </xsl:template>
  
  <xsl:template match="text[ancestor::figure]" priority="2">
    <xsl:apply-templates select="@*"/>
    <xsl:apply-templates select="node() except refpt"/>
  </xsl:template>
  
  <xsl:template match="leg:bodytext[descendant::text[starts-with(.,'Note:') or starts-with(., 'Editor''s Note:') or starts-with(., 'Editor''s note:') or starts-with(.,'[Note de l''')]]">
    
    
    
  </xsl:template>
  <xsl:template match="sup">
    <xsl:apply-templates select="node()|@*"/>
  </xsl:template>

</xsl:stylesheet>