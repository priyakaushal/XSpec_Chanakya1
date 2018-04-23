<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
  xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.length">
   <title>case:length <lnpid>id-NZ17CC-25819</lnpid></title>
   <body>
      <section>
        <ul>
         <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:length</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">/doc:docinfo/doc:doclength</targetxml>; the conversion also converts the attributes
            <targetxml class="+ topic/keyword xml-d/targetxml ">@num</targetxml> will contain the
          numeric value from source PCData, <targetxml class="+ topic/keyword xml-d/targetxml ">@source="conversion"</targetxml> and <targetxml class="+ topic/keyword xml-d/targetxml ">@unit</targetxml> will contain the textual value from source PCData. <pre xml:space="preserve" class="- topic/pre ">

&lt;case:length&gt;6 pages&lt;/case:length&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;doc:docinfo&gt; 
  &lt;doc:doclength num="6" source="conversion" unit="pages"/&gt;
&lt;/doc:docinfo&gt;
</pre>
          
        </li>
        </ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.length.dita  -->

  <xsl:template match="case:headnote/case:length">
    <doc:doclength>
      <xsl:if test="matches (. , '(page|PAGE|Page)[sS]?')">
        <xsl:attribute name="unit" select="'pages'"/>
      </xsl:if>
      <xsl:if test="matches (. , '\d+')">
        <xsl:attribute name="num">
          <xsl:analyze-string select="." regex="\d+">
            <xsl:matching-substring><xsl:value-of select="."/></xsl:matching-substring>
            <xsl:non-matching-substring/>
          </xsl:analyze-string>
        </xsl:attribute>		        
      </xsl:if>		    
      <xsl:attribute name="source" select="'conversion'"/>
    </doc:doclength>
  </xsl:template>
</xsl:stylesheet>