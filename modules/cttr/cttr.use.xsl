<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
  version="2.0" exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.use">
  <title>cttr:use <lnpid>id-NZ17CC-cttr.use</lnpid></title>
  <body>
    <p>cttr:use</p>
    
    <section>        
      <ul>
      <li class="- topic/li ">
        <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use</sourcexml> becomes <targetxml>cttr:usage/text</targetxml> and the attributes :
        <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use[@signal]</sourcexml> becomes <targetxml>cttr:usage[@usagetype]</targetxml>
      <note>
        <p>When cttr:use/@signal="[any other text or blank]" (not 'negative', cautionary', 'positive', or 'neutral') it should be converted to cttr:usage/@usagetype="unspecified" (since cttr:usage/@usagetype
          is a required attribute).</p>
      </note></li>
    </ul>
      <pre>
         &lt;cttr:use signal="neutral"&gt;Considered&lt;/cttr:use&gt;
         </pre>
      <b>Becomes</b>
      <pre>
         &lt;cttr:usage usagetype="neutral"&gt;
             &lt;text&gt;Considered&lt;/text&gt;
         &lt;/cttr:usage&gt;

         </pre>
    </section>
    
    <section>
      <title>Changes</title>  
      <p>2015-01-20: <ph id="change_20150120_mlv-3">Added instruction and example for <sourcexml>cttr:use</sourcexml>.
      </ph></p> 
    </section>  
    
  </body>
	</dita:topic>

	<xsl:template match="source_cttr:use"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:usage/text   -->
		<cttr:usage>
		  <xsl:apply-templates select="@*"/>
		  <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="node()"/>
			</text>
		</cttr:usage>

	</xsl:template>

	<xsl:template match="source_cttr:use/@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<xsl:attribute name="usagetype">
		  <xsl:choose>
		    <xsl:when test="matches(., 'negative') or matches(., 'cautionary') or matches(., 'positive') or matches(., 'neutral')">
		      <xsl:value-of select="."/>
		    </xsl:when>
		    <xsl:otherwise>
		      <xsl:text>unspecified</xsl:text>
		    </xsl:otherwise>
		  </xsl:choose>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>