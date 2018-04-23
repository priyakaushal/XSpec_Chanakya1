<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.citations-LxAdv_ref.relatedrefs">
  <title>case:citations <lnpid>id-AU01-18211</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml>case:citations</sourcexml> becomes <targetxml>ref:relatedrefs</targetxml> with
          an attribute 'referencetype' set to <targetxml>@referencetype="case-citations"</targetxml>
          which contains <sourcexml>case:citetext</sourcexml> becomes
            <targetxml>ref:relatedrefs/bodytext/p/text</targetxml>
          <pre xml:space="preserve" class="- topic/pre ">

&lt;case:citations&gt;
  &lt;heading&gt;
    &lt;title&gt;C&lt;emph typestyle="smcaps"&gt;ASES&lt;/emph&gt; C&lt;emph typestyle="smcaps"&gt;ITED&lt;/emph&gt;&lt;/title&gt;
  &lt;/heading&gt;
  &lt;case:citetext&gt;The following cases are cited in the judgment:&lt;nl/&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:content&gt;
        &lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;Allgood v Blake&lt;/emph&gt;&lt;/citefragment&gt; 
        &lt;citefragment searchtype="CASE-CITE-REF"&gt;(1873) LR 8 Exch 160&lt;/citefragment&gt;.
      &lt;/ci:content&gt;
    &lt;/ci:cite&gt;&lt;nl/&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:content&gt;
        &lt;citefragment searchtype="CASE-NAME-REF"&gt;&lt;emph typestyle="it"&gt;Amber Holdings (Aust) Pty Ltd v Polona Pty Ltd&lt;/emph&gt;&lt;/citefragment&gt; 
        &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1982] 2 NSWLR 470&lt;/citefragment&gt;.
      &lt;/ci:content&gt;
    &lt;/ci:cite&gt;&lt;nl/&gt;
  &lt;/case:citetext&gt;
&lt;/case:citations&gt;
<b class="+ topic/ph hi-d/b ">Becomes:</b>

&lt;ref:relatedrefs referencetype="case-citations"&gt;
  &lt;heading&gt;
    &lt;title&gt;C&lt;emph typestyle="smcaps"&gt;ASES&lt;/emph&gt; C&lt;emph typestyle="smcaps"&gt;ITED&lt;/emph&gt;&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;The following cases are cited in the judgment:&lt;proc:nl/&gt;
        &lt;lnci:cite type="case"&gt;
          &lt;lnci:content&gt;
            &lt;emph typestyle="it"&gt;Allgood v Blake&lt;/emph&gt; (1873) LR 8 Exch 160
          &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;&lt;proc:nl/&gt;
        &lt;lnci:cite type="case"&gt;
          &lt;lnci:content&gt;
            &lt;emph typestyle="it"&gt;Amber Holdings (Aust) Pty Ltd v Polona Pty Ltd&lt;/emph&gt; [1982] 2 NSWLR 470
          &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;&lt;proc:nl/&gt;
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/ref:relatedrefs&gt;
</pre>
        </li>
      </ul>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.citations-LxAdv_ref.relatedrefs.dita  -->

  <xsl:template match="case:citations">
    <ref:relatedrefs>		
      <xsl:attribute name="referencetype">
        <xsl:text>case-citations</xsl:text>
      </xsl:attribute>
      <xsl:apply-templates select="@* | node()"/>
    </ref:relatedrefs>
  </xsl:template>

<!--  <xsl:template match="case:citations/case:citetext">
    
      <bodytext>
        <p>
          <text>
            <xsl:apply-templates select="@* | node() except heading"/>
          </text>
        </p>
      </bodytext>
    
  </xsl:template>-->
  
  
  <xsl:template match="case:citations/case:citetext">
    <xsl:variable name="name" select="local-name()"/>
    
    
    <xsl:if test="local-name(preceding-sibling::*[position()=1]) != $name">
      <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
        <p>
          <text>
        <xsl:apply-templates />
          </text>
        </p>
        <!-- Match the next sibling if it has the same name -->
        <xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="next"/>
      </bodytext>
    </xsl:if>
  </xsl:template>
  
  
  <xsl:template match="case:citations/case:citetext" mode="next">
    <xsl:variable name="name" select="local-name()"/>
    <p>
      <text>
    <xsl:apply-templates />
      </text>
    </p>
    <xsl:apply-templates select="following-sibling::*[1][local-name()=$name]" mode="next"/>
  </xsl:template>
  
  
 <!-- <xsl:template match="case:citations" mode="summaries">
	  <ref:relatedrefs>		
	    <xsl:attribute name="referencetype">
	      <xsl:text>case-citations</xsl:text>
	    </xsl:attribute>
	    <xsl:if test="child::heading">
	      <xsl:apply-templates select="heading"/>                   
	    </xsl:if>
	    <xsl:if test="node() except heading">
	      <bodytext>
	        <xsl:choose>
	          <xsl:when test="child::case:citetext">
	            <p>
	              <text>
	                <xsl:apply-templates select="@* | node() except heading"/>
	              </text>
	            </p>
	          </xsl:when>
	          <xsl:otherwise>
	            <xsl:apply-templates select="@* | node() except heading"/>
	          </xsl:otherwise>
	        </xsl:choose>
	      </bodytext>
	    </xsl:if>
	  </ref:relatedrefs>
	</xsl:template>-->

	
</xsl:stylesheet>