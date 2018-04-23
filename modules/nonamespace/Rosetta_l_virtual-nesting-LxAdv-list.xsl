<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_l_virtual-nesting-to-LexisAdvance_listitem">
  <title><sourcexml>l/@virtual-nesting</sourcexml> to <targetxml>list</targetxml> <lnpid>id-CCCC-10398</lnpid></title>
  <body>
  <section>
    <p>When <sourcexml>l</sourcexml> has attribute <sourcexml>@virtual-nesting </sourcexml> then
        it should be converted to real list nesting (mean's creating some parent nested list on
        basis of attribute value i.e. "@virtual-nesting='3'"). Drop <sourcexml>@virtual-nesting</sourcexml> and add n-1 list wrappers, where <b>n</b> is the value of <sourcexml>@virtual-nesting</sourcexml>. Please refer the below input and target markups for more clarification: </p>
  </section>
    <example>
      <title>Source XML having l/@virtual-nesting</title>
      <codeblock>

&lt;l virtual-nesting="3"&gt;
    &lt;li&gt;
        &lt;lilabel/&gt;
        &lt;p&gt;
            &lt;text&gt;&lt;emph typestyle="bf"&gt;Unless the agreement provides otherwise...&lt;/emph&gt;&lt;/text&gt;
        &lt;/p&gt;
    &lt;/li&gt;
&lt;/l&gt;

	</codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;list&gt;
    &lt;listitem&gt;
      &lt;bodytext&gt;
        &lt;p&gt;
          &lt;list&gt;
            &lt;listitem&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;list&gt;
                    &lt;listitem&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Unless the agreement provides otherwise...&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
                      &lt;/bodytext&gt;
                    &lt;/listitem&gt;
                  &lt;/list&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/listitem&gt;
          &lt;/list&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/listitem&gt;
  &lt;/list&gt;

        </codeblock>
    </example> 
  </body>
	</dita:topic>
<!--Vikas Rohilla : updated for the streamID CA01  -->
  <!-- Sudhanshu Srivastava : Added CA02CC for listing conversion -->
  <xsl:template match="l[@virtual-nesting='1'][$streamID='CA01' or $streamID='CA02CC' or $streamID='CA12' or $streamID='CA19' or $streamID='CA14' or $streamID='CA15' or $streamID='CA04' ]" priority="2">
    <xsl:call-template name="virtualNesting">
      <xsl:with-param name="content" select="li"/>
      <xsl:with-param name="counter" select="number(@virtual-nesting)"/>
    </xsl:call-template>
  </xsl:template>
  
  

  <!-- Assumes @virtual-nesting is always a digit and never less than 2 -->
	<xsl:template match="l[@virtual-nesting]">
	  <xsl:choose>
	    <xsl:when test="$streamID='CA01' and(starts-with(ancestor::case:decisionsummary/child::heading/title,'Court Summary:') or 
	      starts-with(ancestor::case:decisionsummary/child::heading/title,'Court Summary:') or
	      starts-with(ancestor::case:decisionsummary/child::heading/title,'Résumé de la Cour :') or
	      starts-with(ancestor::case:decisionsummary/child::heading/title,'Commission Summary:') or
	      starts-with(ancestor::case:decisionsummary/child::heading/title,'Board Summary:') or
	      starts-with(ancestor::case:decisionsummary/child::heading/title,'Tribunal Summary:') or
	      starts-with(ancestor::case:decisionsummary/child::heading/title,'Executive Summary:') or
	      starts-with(ancestor::case:decisionsummary/child::heading/title,'Commissioner Summary:') or
	      starts-with(ancestor::case:decisionsummary/child::heading/title,'Résumé du tribunal :') or
	      starts-with(ancestor::case:decisionsummary/child::heading/title,'Sommaire du tribunal :') or
	      contains(ancestor::case:decisionsummary/child::heading/title,'Subsequent History') or contains(ancestor::case:decisionsummary/child::heading/title,'Historique subséquent') or contains(ancestor::case:decisionsummary/child::heading/title,'Court Catchwords') or contains(ancestor::case:decisionsummary/child::heading/title,'Indexation de la Cour') or contains(ancestor::case:decisionsummary/child::p[1]/text[1]/emph[1],'Subsequent History') or contains(ancestor::case:decisionsummary/child::p[1]/text[1]/emph[1],'Historique subséquent') or contains(ancestor::case:decisionsummary/child::p[1]/text[1]/emph[1],'Court Catchwords') or contains(ancestor::case:decisionsummary/child::p[1]/text[1]/emph[1],'Indexation de la Cour'))">
	      <p>
	        <list xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <listitem>
	          <bodytext>
	            <p>
	              <xsl:call-template name="virtualNesting">
	                <xsl:with-param name="content" select="li"/>
	                <xsl:with-param name="counter" select="number(@virtual-nesting)"/>
	              </xsl:call-template>
	            </p>
	          </bodytext>
	        </listitem>
	      </list>
	      </p>
	    </xsl:when>
	    <xsl:otherwise>
	      <list xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <listitem>
	          <bodytext>
	            <p>
	              <xsl:call-template name="virtualNesting">
	                <xsl:with-param name="content" select="li"/>
	                <xsl:with-param name="counter" select="number(@virtual-nesting)"/>
	              </xsl:call-template>
	            </p>
	          </bodytext>
	        </listitem>
	      </list>
	    </xsl:otherwise>
	  </xsl:choose>
	  
		<!--  Original Target XPath:  list   -->
	 

	</xsl:template>
  
  <xsl:template name="virtualNesting">
    <xsl:param name="content"/>
    <xsl:param name="counter"/>
    <xsl:choose>
      <xsl:when test="($counter - 1)&gt;1">
        <list xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <listitem>
            <bodytext>
              <p>
                <xsl:call-template name="virtualNesting">
                  <xsl:with-param name="content" select="$content"/>
                  <xsl:with-param name="counter" select="$counter - 1"/>
                </xsl:call-template>
              </p>
            </bodytext>
          </listitem>
        </list>
      </xsl:when>
      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="$streamID='CA04' or $streamID='CA02CC' or $streamID='CA12' or $streamID='CA19'">
            <xsl:choose>
              <xsl:when test="count(child::*) = 1 and (@virtual-nesting[.='1'] or not(@virtual-nesting))">
               <list>
                  <listitem>
                    <xsl:apply-templates select="$content/lilabel"/>
                    <bodytext>
                      <xsl:apply-templates select="$content/(* except lilabel)"/>
                    </bodytext>
                  </listitem>
                </list> 
              </xsl:when>
                  <xsl:when test="count(child::*) = 1">
                    <list xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                      <listitem>
                    <xsl:apply-templates select="$content/lilabel"/>
                    <bodytext>
                      <xsl:apply-templates select="$content/(* except lilabel)"/>
                    </bodytext>
                      </listitem>
                    </list>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:for-each select="child::*">
                        <list xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                          <xsl:apply-templates select="."/>
                        </list>
                    </xsl:for-each>
                  </xsl:otherwise>
                </xsl:choose>
          </xsl:when>
          <xsl:when test="$streamID='CA08'">
            <list xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <listitem>
                <bodytext>
                  <list>
                  <xsl:apply-templates select="$content | node() except lilabel"/>
                  </list>
                </bodytext>
              </listitem>
            </list>
          </xsl:when>
          <xsl:when test="$streamID='CA15' or $streamID='CA01' or $streamID='CA14'">
            <list>
              <xsl:for-each select="child::*">
                <xsl:apply-templates select="."/>
              </xsl:for-each>    
            </list>
          </xsl:when>
          <xsl:otherwise>
            <list xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <listitem>
                <bodytext>
                  <xsl:apply-templates select="$content/*"/>
                </bodytext>
              </listitem>
            </list>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


</xsl:stylesheet>
