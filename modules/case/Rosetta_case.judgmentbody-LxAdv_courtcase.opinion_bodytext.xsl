<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
  xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.judgmentbody-LxAdv_courtcase.opinion_bodytext">
  <title>case:judgmentbody <lnpid>id-CCCC-12016</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:judgmentbody</sourcexml> becomes
          <targetxml>courtcase:opinion/bodytext</targetxml>.</p>
      <p>With the exception of <sourcexml>heading</sourcexml>, every child of
          <sourcexml>case:judgmentbody</sourcexml> should be mapped to
          <targetxml>courtcase:opinion/bodytext</targetxml>.
          <sourcexml>case:judgmentbody/heading</sourcexml> becomes
          <targetxml>courtcase:opinion/heading</targetxml>.</p>
    </section>
    <example>
      <title>Example: CA content</title>
      <codeblock>
&lt;case:judgments&gt;
  &lt;case:judgment&gt;
    &lt;case:judgmentbody&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;MITCHELL, J.&lt;/emph&gt; (for the Court, allowing the appeal): This
          case concerns the interpretation of municipal bylaws and the availability of injunctive
          relief to restrain their violation.&lt;/text&gt;
      &lt;/p&gt;
      ...
    &lt;/case:judgmentbody&gt;
  &lt;/case:judgment&gt;
&lt;/case:judgments&gt;
            </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:opinions&gt;
  &lt;courtcase:opinion&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;&lt;emph typestyle="bf"&gt;MITCHELL, J.&lt;/emph&gt; (for the Court, allowing the appeal): This
          case concerns the interpretation of municipal bylaws and the availability of injunctive
          relief to restrain their violation.&lt;/text&gt;
      &lt;/p&gt;
      ...
    &lt;/bodytext&gt;
  &lt;/courtcase:opinion&gt;
&lt;/courtcase:opinions&gt;
    </codeblock>
    </example>
    <example>
      <title>Example: AU content</title>
      <codeblock>
&lt;case:judgmentbody&gt;
  &lt;pgrp&gt;
    &lt;heading&gt;&lt;title&gt;Background&lt;/title&gt;&lt;/heading&gt;
    &lt;p&gt;
      &lt;pnum count="1"&gt;[1]&lt;/pnum&gt;
      &lt;text&gt;The present applicants are five individuals who at one time or another were engaged by
        Combined Insurance Company of America (Combined) as insurance agents. In recent times, the
        five have sued Combined in the Chief Industrial Magistrates&amp;#x2019; Court of New South Wales
        claiming entitlements both to annual leave and long service leave. One of the principal
        issues to be resolved in those proceedings is the question of whether the agents were
        employees of Combined, as they contend, or rather independent contractors, as Combined
        contends. No doubt the resolution of that issue will involve a close consideration of a
        broad range of indicia. One of the matters to which Combined points is a term in its
        contract with each agent by which each agreed, or appears to have agreed, that his
        relationship with Combined was not one of employment.&lt;/text&gt;
    &lt;/p&gt;
  &lt;/pgrp&gt;
  ...
&lt;/case:judgmentbody&gt;
            </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:opinion&gt;
  &lt;bodytext&gt;
    &lt;pgrp&gt;
      &lt;heading&gt;&lt;title&gt;Background&lt;/title&gt;&lt;/heading&gt;
      &lt;p&gt;
        &lt;desig value="1"&gt;[1]&lt;/desig&gt;
        &lt;text&gt;The present applicants are five individuals who at one time or another were engaged by
          Combined Insurance Company of America (Combined) as insurance agents. In recent times, the
          five have sued Combined in the Chief Industrial Magistrates&amp;#x2019; Court of New South
          Wales claiming entitlements both to annual leave and long service leave. One of the
          principal issues to be resolved in those proceedings is the question of whether the agents
          were employees of Combined, as they contend, or rather independent contractors, as
          Combined contends. No doubt the resolution of that issue will involve a close
          consideration of a broad range of indicia. One of the matters to which Combined points is
          a term in its contract with each agent by which each agreed, or appears to have agreed,
          that his relationship with Combined was not one of employment.&lt;/text&gt;
      &lt;/p&gt;
    &lt;/pgrp&gt;
    ...
  &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;
    </codeblock>
    </example>
    <example>
      <title>Example: NZ content</title>
      <codeblock>
&lt;case:judgmentbody&gt;
  &lt;p&gt;
    &lt;text&gt;[After stating the facts, as above:] Section 127 (10) of the Act provides that no order
      for the removal of any wholesale licence shall be made without the prior approval of the
      Licensing Control Commission. On 22 March 1960 a formal order of the Licensing Control
      Commission approving the removal was issued by the Commission. The Licensing Committee did not
      itself hold any further meeting to consider the application made by Mrs Kettle for a removal
        &lt;page count="37" reporter="NZLR" text="[1961] NZLR 35 page "/&gt;of the licence to the
      Blackmore Street premises. On receipt of the approval by the Licensing Control Commission the
      chairman and clerk of the Licensing Committee completed the endorsement upon the licence
      required by s. 129 (2) of the Act. This was done on 31 March 1960. &lt;/text&gt;
  &lt;/p&gt;
  &lt;p&gt;
    &lt;text&gt;A few days later Mrs Kettle lodged applications for temporary and permanent transfers of
      the licence to Grogan and Blackmores Cordials Ltd. (the fourth defendant &amp;#x2014; hereinafter
      referred to as &amp;quot;Grogan and Blackmores&amp;#x0022;). The temporary transfer was granted on 5
      April 1960. &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:judgmentbody&gt;
            </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:opinion&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;[After stating the facts, as above:] Section 127 (10) of the Act provides that no order
        for the removal of any wholesale licence shall be made without the prior approval of the
        Licensing Control Commission. On 22 March 1960 a formal order of the Licensing Control
        Commission approving the removal was issued by the Commission. The Licensing Committee did
        not itself hold any further meeting to consider the application made by Mrs Kettle for a
        removal &lt;ref:page num="37" page-scheme="NZLR" page-scheme-type="reporter-abbreviation"/&gt; of
        the licence to the Blackmore Street premises. On receipt of the approval by the Licensing
        Control Commission the chairman and clerk of the Licensing Committee completed the
        endorsement upon the licence required by s. 129 (2) of the Act. This was done on 31 March
        1960. &lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
      &lt;text&gt;A few days later Mrs Kettle lodged applications for temporary and permanent transfers of
        the licence to Grogan and Blackmores Cordials Ltd. (the fourth defendant &amp;#x2014;
        hereinafter referred to as &amp;quot;Grogan and Blackmores&amp;#x0022;). The temporary transfer was
        granted on 5 April 1960. &lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;
    </codeblock>
    </example>
    <example>
      <title>Example: UK content</title>
      <codeblock>
&lt;case:judgment&gt;
  &lt;case:judgmentbody&gt;
    &lt;pgrp&gt;
      &lt;p&gt;
        &lt;pnum&gt;1&lt;/pnum&gt;
      &lt;/p&gt;
    &lt;/pgrp&gt;
    &lt;pgrp&gt;
      &lt;p&gt;
        &lt;text&gt;&amp;#x201c;The applicant had been in the employ of the respondent company from 31st
          August 1953, when he started as an apprentice, until his employment terminated on 4th May
          1972. Over that period of time Mr Middlemass had worked in all sorts of capacities for the
          company. However, the capacity about which we are concerned is that relating to either
          sales manager or technical representative on behalf of the company.&lt;/text&gt;
      &lt;/p&gt;
    &lt;/pgrp&gt;
  &lt;/case:judgmentbody&gt;
&lt;/case:judgment&gt;
            </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;courtcase:opinion&gt;
  &lt;bodytext&gt;
    &lt;pgrp&gt;
      &lt;p&gt;
        &lt;desig&gt;1&lt;/desig&gt;
      &lt;/p&gt;
    &lt;/pgrp&gt;
    &lt;pgrp&gt;
      &lt;p&gt;
        &lt;text&gt;&amp;#x201C;The applicant had been in the employ of the respondent company from 31st
          August 1953, when he started as an apprentice, until his employment terminated on 4th May
          1972. Over that period of time Mr Middlemass had worked in all sorts of capacities for the
          company. However, the capacity about which we are concerned is that relating to either
          sales manager or technical representative on behalf of the company.&lt;/text&gt;
      &lt;/p&gt;
    &lt;/pgrp&gt;
  &lt;/bodytext&gt;
&lt;/courtcase:opinion&gt;
    </codeblock>
    </example>
    <!--<section>
      <title>Changes</title>
      </section>-->
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.judgmentbody-LxAdv_courtcase.opinion_bodytext.dita  -->
	 <!-- JL: refactored template to address issue in webstar -->
  <xsl:template match="case:judgmentbody[$streamID='CA01']" priority="2">
<!--    <xsl:variable name="caseJudgmentBody">
      <xsl:copy-of select="."/>
    </xsl:variable>-->
    <xsl:variable name="caseJudgmentBodyFirstText">
      <xsl:for-each select="child::*[1]//text[not(ancestor::text)]">
        <xsl:value-of select="string-join(. , '')"/>
      </xsl:for-each>
    </xsl:variable>
    <!-- dumping content into a variable so we can access it later to find the first node -->
    <xsl:apply-templates select="heading"/>    
    <xsl:for-each-group select="child::*" group-starting-with="
      *[(matches(.,':—') and (string-length(substring-before(normalize-space(.),':—')) &lt; 75))
      or 
      (matches(. , ':--') and  (string-length(substring-before(normalize-space(.),':--')) &lt; 75))
      or 
      (matches(. , ':&#x2014;') and (string-length(substring-before(normalize-space(.),':&#x2014;')) &lt; 75))]
      [self::p/pnum or self::p[@indent ='1st-line'] or self::l]">
     <!-- group-starting-with="*[matches(.,':—|:-\-|:&#x2014;')][(string-length(substring-before(normalize-space(.),':—')) &lt; 75) or (string-length(substring-before(normalize-space(.),':-\-')) &lt; 75) or (string-length(substring-before(normalize-space(.),':&#x2014;')) &lt; 75)][self::p/pnum or self::p[@indent ='1st-line'] or self::l] -->
     <xsl:variable name="opinionbytext"> 
        <xsl:for-each select=".//text[not(ancestor::text)]">
          <xsl:choose>
            <xsl:when test="matches(. ,':—') and string-length(substring-before(normalize-space(.),':—')) &lt; 75">
              <xsl:value-of select="substring-before(. , ':—')"/>
            </xsl:when>
            <xsl:when test="matches(. ,':--') and string-length(substring-before(normalize-space(.),':--')) &lt; 75">
              <xsl:value-of select="substring-before(. , ':--')"/>
            </xsl:when>
            <xsl:when test="matches(. ,':&#x2014;') and string-length(substring-before(normalize-space(.),':&#x2014;')) &lt; 75">
              <xsl:value-of select="substring-before(. , ':&#x2014;')"/>
            </xsl:when>
          </xsl:choose>          
        </xsl:for-each>
      </xsl:variable>
        <!--select="if(contains(.//text[not(descendant::text)],':-\-')) then substring-before(.//text[not(descendant::text)],':-\-') else if (contains(.,':&#x2014;')) then substring-before(.//text[not(descendant::text)],':&#x2014;') else substring-before(.//text[not(descendant::text)],':—')"-->
      <!--<xsl:variable name="opinionbytext" select="if(contains(.,':-\-')) then substring-before(.,':-\-') else if (contains(.,':&#x2014;')) then substring-before(.,':&#x2014;') else substring-before(.,':—')"/>-->
      <!--<xsl:variable name="mdash">
        <xsl:for-each select=".">
          <xsl:value-of select="if (matches(.,':—|:-\-|:&#x2014;') and ((string-length(substring-before(normalize-space(.),':—|:-\-|:&#x2014;')) &lt; 75) or (string-length(substring-before(normalize-space(.),':-\-')) &lt; 75) or (string-length(substring-before(normalize-space(.),':&#x2014;')) &lt; 75))) then '1' else '0'"/>
        </xsl:for-each>
      </xsl:variable>-->
     <xsl:choose>
       <xsl:when test="(not($opinionbytext) or $opinionbytext='') and position()=1">
         <xsl:if test="position()=last()">
           <courtcase:opinion>
             <bodytext>
               <xsl:apply-templates select="current-group()"/>
             </bodytext>
           </courtcase:opinion>
         </xsl:if>         
       </xsl:when>
       <xsl:otherwise>
         <courtcase:opinion> 
           <!--needed the variable for this info, for some reason grouping made the parent element impossible to find -->
           <xsl:if test="position() = 2 and not(matches($caseJudgmentBodyFirstText , ':—|:--|:&#x2014;'))">
             <bodytext>
               <xsl:apply-templates select="preceding-sibling::*[not(self::heading)]"/>
             </bodytext>
           </xsl:if>
           <xsl:if test="$opinionbytext != ''">
             <courtcase:opinionby>
               <person:judge>
                 <xsl:variable name="judgetext" select="replace($opinionbytext, '^[\[]\d+[\]]', '')"/>
                  <!-- <xsl:analyze-string select="normalize-space($opinionbytext)" regex="([\[]?[0-9]+[\]]?)\s(.+)">
                     <xsl:matching-substring>
                       <xsl:value-of select="regex-group(2)"/>
                     </xsl:matching-substring>
                     <xsl:non-matching-substring>
                       <xsl:value-of select="."/>
                     </xsl:non-matching-substring>
                   </xsl:analyze-string>
                 </xsl:variable>-->
                 <xsl:value-of select="normalize-space($judgetext)"/>
               </person:judge>
             </courtcase:opinionby>
           </xsl:if>
           <bodytext>
             <xsl:for-each select="current-group()">
               <xsl:choose>
                 <xsl:when test="position()=1 and self::l"/>
                 <xsl:otherwise>
                   <xsl:apply-templates select="."/>
                 </xsl:otherwise>
               </xsl:choose>
             </xsl:for-each>
           </bodytext>     
         </courtcase:opinion>
       </xsl:otherwise>
     </xsl:choose>
      </xsl:for-each-group>
    <xsl:apply-templates select="parent::case:judgement/following-sibling::case:appendix/p|        
      parent::case:judgement/following-sibling::case:appendix/case:headnote/case:priorhist[not(preceding-sibling::case:info or following-sibling::case:info)]"/>
    
  </xsl:template>
      
   

  <xsl:template match="case:judgmentbody">
    <!-- Awantika: added instruction for heading -->
    <xsl:apply-templates select="heading"/>
    <xsl:element name="bodytext">
      <xsl:apply-templates select="@* | node() except heading"/>
    </xsl:element>
  </xsl:template>
  
  
  
  
</xsl:stylesheet>