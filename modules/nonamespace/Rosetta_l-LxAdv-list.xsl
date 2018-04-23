<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:frm="http://www.lexis-nexis.com/glp/frm"
  xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
  version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_l-to-LexisAdvance_list">
  <title><sourcexml>l</sourcexml> to  <targetxml>list</targetxml> <lnpid>id-CCCC-10372</lnpid></title>
  <body>
    <section>
      <title>Instructions <i>[common element]</i></title>
      <p><sourcexml>l</sourcexml> becomes <targetxml>list</targetxml>.</p>
      <p>The child <sourcexml>li</sourcexml> becomes
        <targetxml>listitem</targetxml>. <targetxml>bodytext</targetxml> is the required child element for
        <targetxml>listitem</targetxml>. The child <sourcexml>lilabel</sourcexml> becomes <targetxml>label</targetxml>. </p>
      <p>Any <sourcexml>h</sourcexml> children of the <sourcexml>li</sourcexml> should be processed as <targetxml>h</targetxml> within the <targetxml>listitem/bodytext</targetxml>.  Process the children of <sourcexml>h</sourcexml>.</p>

       <p>Nested lists, when a <sourcexml>li</sourcexml> contains a <sourcexml>l</sourcexml> element, the mapping should appear as follows: create <targetxml>list/listitem/bodytext</targetxml>
       followed by a <sourcexml>list</sourcexml> within the <sourcexml>bodytext</sourcexml> element.</p>
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;l&gt;
  &lt;li&gt;
   &lt;lilabel&gt;
	   &lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;
   &lt;/lilabel&gt;
   &lt;p&gt;
	 &lt;text&gt;The plaintiffs&amp;#x2019; application is dismissed.&lt;/text&gt;
   &lt;/p&gt;
 &lt;/li&gt;
 &lt;li&gt;
   &lt;lilabel&gt;
	   &lt;emph typestyle="ro"&gt;(2)&lt;/emph&gt;
   &lt;/lilabel&gt;
   &lt;p&gt;
	 &lt;text&gt;The plaintiffs pay the defendant&amp;#x2019;s costs, including each appearance in the court, as taxed, if not agreed.&lt;/text&gt;
   &lt;/p&gt;
 &lt;/li&gt;
&lt;/l&gt;

	</codeblock>
    </example>
    
    <example>
      <title>Target XML </title>
      <codeblock>

&lt;list&gt;
 &lt;listitem&gt;
	&lt;label&gt;
	  &lt;emph typestyle="ro"&gt;(1)&lt;/emph&gt;
	&lt;/label&gt;
	&lt;bodytext&gt;
	 &lt;p&gt;
	  &lt;text&gt;The plaintiffs&amp;#x2019; application is dismissed.&lt;/text&gt;
	 &lt;/p&gt;
	&lt;/bodytext&gt; 
 &lt;/listitem&gt;
 &lt;listitem&gt;
	&lt;label&gt;
	  &lt;emph typestyle="ro"&gt;(2)&lt;/emph&gt;
	&lt;/label&gt;
	&lt;bodytext&gt;
	 &lt;p&gt;
	  &lt;text&gt;The plaintiffs pay the defendant&amp;#x2019;s costs, including each appearance in the court, as taxed, if not agreed.&lt;/text&gt;
	 &lt;/p&gt;
	&lt;/bodytext&gt; 
 &lt;/listitem&gt;
&lt;/list&gt;

	</codeblock>
    </example>

<example>
  <title>Nested list Source(l/li/l)</title>
  <codeblock>
    
              &lt;l&gt;
            &lt;li&gt;
              &lt;lilabel&gt;&amp;#x2022;&lt;/lilabel&gt;
              &lt;p&gt;
                &lt;text&gt;the health and safety of workers who are:&lt;/text&gt;
              &lt;/p&gt;
            &lt;/li&gt;
            &lt;li&gt;
              &lt;l&gt;
                &lt;li&gt;
                  &lt;lilabel&gt;&amp;#x25E6;&lt;/lilabel&gt;
                  &lt;p&gt;
                    &lt;text&gt;engaged by the person conducting the business or undertaking;&lt;/text&gt;
                  &lt;/p&gt;
                &lt;/li&gt;
              &lt;/l&gt;
            &lt;/li&gt;
            ...  
            
  </codeblock>
</example>
    
    <example>
      <title>Nested list Target (list/listitem/bodytext/list)</title>
      <codeblock>
    
          &lt;list&gt;
            &lt;listitem&gt;
              &lt;label&gt;&amp;#x2022;&lt;/label&gt;
              &lt;bodytext&gt;
              &lt;p&gt;
                &lt;text&gt;the health and safety of workers who are:&lt;/text&gt;
              &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/listitem&gt;
            &lt;listitem&gt;
               &lt;bodytext&gt;
                 &lt;list&gt;
                   &lt;listitem&gt;
                      &lt;label&gt;&amp;#x25E6;&lt;/label&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;
                         &lt;text&gt;engaged by the person conducting the business or undertaking;&lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;  
                   &lt;/listitem&gt;
                 &lt;/list&gt;
               &lt;/bodytext&gt;  
            &lt;/listitem&gt;  
            ...
  
  </codeblock>
  </example>
  
 
    <section>
      <title>Changes</title>
      <p>2016-04-01: <ph id="change_20160401_list_1">Added mapping instruction for handling h within listitem.</ph></p>
      <p>2014-01-16: <ph id="change_20140106_mlv">Added mapping instruction for nested lists.</ph></p>
      
    </section>   
  </body>
	</dita:topic>
  <!-- Done as part of ROCKET but not for any particular stream JL 2017-03-14 -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_l-LxAdv-list.dita  -->


<!-- virtual nesting requires its own template -->
	<xsl:template match="l[not(@virtual-nesting)]">
<xsl:choose>
  <!-- Awantika: specific for AU20 -->
  <xsl:when test="$streamID='AU20' and ancestor::source_cttr:annotations[@id='OI7' or @id='OP3']/heading/note/l">   
        <xsl:for-each select="li/p/text">
          <primlaw:subordinatelaw-item>
          <textitem>
            <xsl:apply-templates select="@* | node()"/>
          </textitem>
          </primlaw:subordinatelaw-item>
        </xsl:for-each>  
  </xsl:when>
  <!-- 2017-10-17 - MDS: Added due to Webstar 7025682 -->
  <xsl:when test="parent::l">
    <xsl:apply-templates select="node()"/>
  </xsl:when>
  <xsl:otherwise>
    <!-- 2017-10-17 - MDS: Removed 'except l' because it was dropping content as found in Webstar 7025682.  See when statement 'parent::l'-->
    <xsl:element name="list">
     <xsl:apply-templates select="@*"/>
      <xsl:if test="$streamID='UK09' and note[not(preceding-sibling::li)]">
        <listitem>
          <bodytext/>
        </listitem>
      </xsl:if>
      <xsl:apply-templates select="node()"/>
    </xsl:element>
  </xsl:otherwise>
</xsl:choose>	  
	  
	</xsl:template>
  


  
  <xsl:template match="l[ancestor::frm:body][not(ancestor::footnote or ancestor::note)][$streamID='UK12']" priority="25">
    <form:list>
      <xsl:apply-templates select="@*|node() except l"/>
    </form:list>
  </xsl:template>
  
  
  
  <!-- Sudhanshu added this template as li and h element is not handled , so added for UK06. -->
	<!-- JD: 2017-07-10: this should be the default, not stream-specific; appears duplicate of /modules/nonamespace/Rosetta_li-LxAdv-listitem.xsl -->
	<xsl:template match="li[$streamID='UK06' or $streamID='USLPA']">
    <listitem>
      <xsl:apply-templates select="lilabel"/>
      <bodytext>
        <xsl:apply-templates select="h"/>
        <xsl:apply-templates select="@* | node() except (lilabel|h)"/>        
      </bodytext>
    </listitem>
  </xsl:template>
  
  <!-- JD: 2017-07-10: this should be the default, not stream-specific -->
	<!--<xsl:template match="h[$streamID='UK06']">
    <h>
      <xsl:apply-templates select="@*|node()"/>
    </h>
  </xsl:template>-->
  
<!--  <xsl:template match="h/@l[$streamID='UK06']"/>-->
 
 
  <!-- 
    ********************************************************************************************
    NOTE!
    from  /XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_refpt-LxAdv-ref.anchor.xsl
   
    this is **GENERIC** behavior. If your stream implements differently, fork template or give a streamID test
   
    <p>If <sourcexml>refpt</sourcexml> comes within <sourcexml>l/li/lilabel</sourcexml>
					then <targetxml>ref:anchor</targetxml> will become the first child of
						<targetxml>listitem</targetxml>.</p>
					-	JL
    ************************************************************************************************  -->
  

	<xsl:template match="lilabel">
	  <xsl:choose>
	    <!-- SS: Only for HK07 - Remove EMPTY label element inside list-->
	    <!-- Awantika: Corrected dropping of lilabel -->
	  	<!-- JD: 2017-07-24: added NZ18 to streams to suppress empty <label> from; added 'replace' test to get rid of characters not handled by normalize-space(e.g., nbsp) -->
	  	<xsl:when test="$streamID=('HK07','NZ18', 'AU16', 'NZ12','CA14', 'AU18') and normalize-space(replace(., '^[\t\p{Zs}]+$', '')) = ''">
	      <!--<xsl:if test=".[normalize-space() = '']"/>-->
	    </xsl:when>
	    <xsl:when test="$streamID=('NZ13', 'AU18') and normalize-space(replace(., '^Â $', '')) = ''"/>
	    <xsl:otherwise>
	      <xsl:element name="label">
	        <xsl:apply-templates select="@* | node() except(refpt)"/>
	      </xsl:element>   
	    </xsl:otherwise>
	  </xsl:choose>
	</xsl:template>

<!-- Awantika: wrapper p to be created around list if coming in case:factsummary and case:decisionsummary for HK03 -->
  <xsl:template match="l[not(@virtual-nesting)][parent::case:factsummary or parent::case:decisionsummary]" priority="25" >
  <!-- JD: 2017-06-16: removing $streamID test, as this is supposed to be the default handling.  
  	If stream-specific handling is required this should be moved to a stream-specific module. -->
   <!--<xsl:if test="$streamID='HK03'">-->
    <xsl:choose>
      <xsl:when test="$streamID=('NZ04', 'AU13')">
        <list>
          <xsl:apply-templates select="@* | node()"/>
        </list>
      </xsl:when>
    	<!-- JD: UK02 wraps in list when a child of case:decisionsummary but not case:factsummary -->
    	<xsl:when test="$streamID=('UK02') and parent::case:decisionsummary">
    		<list>
    			<xsl:apply-templates select="@* | node()"/>
    		</list>
    	</xsl:when>
    	<xsl:otherwise>
        <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <list>
            <xsl:apply-templates select="@* | node()"/>
          </list>
        </p>    
      </xsl:otherwise>
    </xsl:choose>
   <!--</xsl:if>-->
  </xsl:template>
  
<!-- Vikas Rohilla : Added template for the empty lilabel   -->
<!-- SP : don't apply this rule if child elements exist   -->
  <xsl:template match="lilabel[matches(.,'^$') and not(child::*)]"/>
  
 <!-- MDS 207-05-17 - Exception found in AU04 There is no target attribute in <list> for l/@type -->
  <xsl:template match="l/@type"/>

</xsl:stylesheet>
