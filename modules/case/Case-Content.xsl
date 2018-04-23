<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"  version="2.0" exclude-result-prefixes="dita case leg casedigest courtcase primlaw">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Case-Content">
  <title>Case-Content <lnpid>id-AU09-19608</lnpid></title>
  <body>
    <p>
    <note>This is a container element that does not need to be carried forward in the conversion however all content must be verified to have a place.</note>
      
     <sourcexml>case:content</sourcexml>
      <note>If <sourcexml>case:judgments</sourcexml> occurs with XPATH: 
        <sourcexml>case:embeddedcase/case:content/case:judgments/case:judgment</sourcexml>, then conversion will be handled as below.</note>
        <ul>
          <li>
          <sourcexml>case:judgments</sourcexml> becomes <targetxml>courtcase:opinions</targetxml>. <ul>
            <li>
              <sourcexml>case:judgment</sourcexml> becomes <targetxml>courtcase:opinion</targetxml>,
              and <sourcexml>@subdoc</sourcexml> will become <targetxml>@includeintoc</targetxml>
              with it's boolean value and <sourcexml>@toc-caption</sourcexml> will become
                <targetxml>@alternatetoccaption</targetxml> with it's value as it is.<ul>
                <li>
                  <sourcexml>case:judgmentbody</sourcexml> becomes <targetxml>bodytext</targetxml>.
                </li>
              </ul>
            </li>
          </ul>
<pre>

&lt;case:judgments&gt;
  &lt;case:judgment searchtype="extract"&gt;
    &lt;case:judgmentbody&gt;                            
      &lt;p&gt;
           &lt;text&gt;The substantial issues before the Tribunal were summarized by the Tribunal as follows: &lt;/text&gt;
      &lt;/p&gt;
      &lt;blockquote&gt;
        &lt;p&gt;
          &lt;text&gt;(11) It was accepted during the hearing that Mrs&amp;#xA0;Johnstone&amp;apos;s claim
                  should be considered under the &amp;#x201C;disease&amp;#x201D; provisions of the Compensation
                  Act. Thus to establish an entitlement to compensation Mrs&amp;#xA0;Johnstone must show that
                  her incapacity for work since 8&amp;#xA0;June 1979 was due to a disease and that the
                  contraction of the disease or its aggravation, acceleration or recurrence was caused or
                  contributed to by her employment with the Commonwealth. There was no evidence that
                  Mrs&amp;#xA0;Johnstone suffered from any relevant disease prior to June 1979, so the words
                  &amp;#x201C;acceleration&amp;#x201D; or &amp;#x201C;recurrence&amp;#x201D; seem unlikely to be
                  relevant. It is necessary to consider both the nature of any disease suffered by
                  Mrs&amp;#xA0;Johnstone and the contribution of her employment, if any, to the contraction
                  or aggravation of that disease. &lt;/text&gt;
        &lt;/p&gt;
      &lt;/blockquote&gt;
      &lt;p&gt;
        &lt;text&gt;After considering certain medical evidence, the Tribunal found: &lt;/text&gt;
      &lt;/p&gt;                            
      &lt;p&gt;
        &lt;text&gt;After considering the evidence, including medical evidence, the Tribunal concluded:
        &lt;/text&gt;
      &lt;/p&gt;
      &lt;blockquote&gt;                                 
        &lt;p&gt;
          &lt;text&gt;(53) In finding that Mrs&amp;#xA0;Johnstone&amp;apos;s employment did not cause or
            aggravate her condition we also place reliance on the view of Dr Conron that
            Mrs&amp;#xA0;Johnstone did not look particularly upset when talking about her work and
            attributed her problems to her employment &amp;#x201C;because it was to her obvious
            advantage to do so&amp;#x201D;. It is significant too that Mrs&amp;#xA0;Johnstone said in
            evidence that she did not have any hassles coping with her work in May 1979 six months
            after being transferred to the family allowance section and one month prior to the date
            when she last worked with the Department. &lt;/text&gt;
        &lt;/p&gt;
      &lt;/blockquote&gt;
    &lt;/case:judgmentbody&gt;
  &lt;/case:judgment&gt;
&lt;/case:judgments&gt;
<b>Becomes</b>

&lt;courtcase:opinions&gt;
  &lt;courtcase:opinion&gt;
    &lt;bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;The substantial issues before the Tribunal were summarized by the Tribunal as
         follows: &lt;/text&gt;
      &lt;/p&gt;
      &lt;blockquote&gt;
        &lt;p&gt;
          &lt;text&gt;(11) It was accepted during the hearing that Mrs&amp;#xA0;Johnstone&amp;apos;s claim
           should be considered under the &amp;#x201C;disease&amp;#x201D; provisions of the Compensation
           Act. Thus to establish an entitlement to compensation Mrs&amp;#xA0;Johnstone must show that
           her incapacity for work since 8&amp;#xA0;June 1979 was due to a disease and that the
           contraction of the disease or its aggravation, acceleration or recurrence was caused or
           contributed to by her employment with the Commonwealth. There was no evidence that
           Mrs&amp;#xA0;Johnstone suffered from any relevant disease prior to June 1979, so the words
           &amp;#x201C;acceleration&amp;#x201D; or &amp;#x201C;recurrence&amp;#x201D; seem unlikely to be
           relevant. It is necessary to consider both the nature of any disease suffered by
           Mrs&amp;#xA0;Johnstone and the contribution of her employment, if any, to the contraction
           or aggravation of that disease. &lt;/text&gt;
        &lt;/p&gt;
      &lt;/blockquote&gt;
      &lt;p&gt;
        &lt;text&gt;After considering certain medical evidence, the Tribunal found: &lt;/text&gt;
      &lt;/p&gt;        
      &lt;p&gt;
        &lt;text&gt;After considering the evidence, including medical evidence, the Tribunal concluded:
        &lt;/text&gt;
      &lt;/p&gt;
      &lt;blockquote&gt;                                
        &lt;p&gt;
          &lt;text&gt;(53) In finding that Mrs&amp;#xA0;Johnstone&amp;apos;s employment did not cause or
           aggravate her condition we also place reliance on the view of Dr Conron that
           Mrs&amp;#xA0;Johnstone did not look particularly upset when talking about her work and
           attributed her problems to her employment &amp;#x201C;because it was to her obvious
           advantage to do so&amp;#x201D;. It is significant too that Mrs&amp;#xA0;Johnstone said in
           evidence that she did not have any hassles coping with her work in May 1979 six months
           after being transferred to the family allowance section and one month prior to the date
           when she last worked with the Department. &lt;/text&gt;
        &lt;/p&gt;
      &lt;/blockquote&gt;
    &lt;/bodytext&gt;
  &lt;/courtcase:opinion&gt;
&lt;/courtcase:opinions&gt;
</pre>
        </li>
            <li>
              <sourcexml>legfragment</sourcexml> becomes <targetxml>primlaw:excerpt</targetxml>
              <ul>
                <li>
              <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml> becomes
                <targetxml>primlaw:level</targetxml> with required attribute
                <targetxml>@leveltype</targetxml>, Pick the <targetxml>@leveltype</targetxml> value
              from <sourcexml>leg:level-vrnt/@leveltype</sourcexml> and suppress
                <sourcexml>leg:level-vrnt</sourcexml>
              <ul>
                <li>
                  <sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml>
                  becomes <targetxml>primlaw:bodytext</targetxml>
                </li>
                <li>
                  <sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> and
                  attribute <sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml>.
                </li>
              </ul>
              <note>A CR will be raised to add primlaw markup if it is required.</note>
<pre>

  &lt;legfragment&gt;
    &lt;leg:level&gt;
      &lt;leg:level-vrnt leveltype="subsect"&gt;
        &lt;leg:heading inline="true"&gt;
          &lt;desig&gt;
            &lt;designum&gt;(1)&lt;/designum&gt;
          &lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
          &lt;leg:bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;The Authority must not grant an application for approval of premises as suitable for gaming unless satisfied that&amp;mdash;&lt;/text&gt;
            &lt;/p&gt;
            &lt;l&gt;
              &lt;li&gt;
                &lt;lilabel&gt;(a)&lt;/lilabel&gt;
                &lt;p&gt;
                  &lt;text&gt;the applicant has authority to make the application in respect of the premises; and&lt;/text&gt;
                &lt;/p&gt;
              &lt;/li&gt;
              &lt;li&gt;
                &lt;lilabel&gt;(b)&lt;/lilabel&gt;
                &lt;p&gt;
                  &lt;text&gt;the premises are or, on the completion of building works will be, suitable for the management and operation of gaming machines; and&lt;/text&gt;
                &lt;/p&gt;
              &lt;/li&gt;
              &lt;li&gt;
                &lt;lilabel&gt;(c)&lt;/lilabel&gt;
                &lt;p&gt;
                  &lt;text&gt;the net economic and social impact of approval will not be detrimental to the well-being of the community of the municipal district in which the premises are located.&lt;/text&gt;
                &lt;/p&gt;
              &lt;/li&gt;
            &lt;/l&gt;
          &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
      &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
  &lt;/legfragment&gt;
<b>Becomes</b>

&lt;primlaw:excerpt&gt;
  &lt;primlaw:level leveltype="subsection"&gt;
    &lt;heading inline="true"&gt;
      &lt;desig&gt;(1)&lt;/desig&gt;
    &lt;/heading&gt;
    &lt;primlaw:bodytext&gt;
      &lt;p&gt;
        &lt;text&gt;The Authority must not grant an application for approval of premises as suitable for gaming unless satisfied that&amp;#x2014;&lt;/text&gt;
      &lt;/p&gt;
      &lt;list&gt;
        &lt;listitem&gt;
          &lt;label&gt;(a)&lt;/label&gt;
          &lt;bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;the applicant has authority to make the application in respect of the premises; and&lt;/text&gt;
            &lt;/p&gt;
          &lt;/bodytext&gt;
        &lt;/listitem&gt;
        &lt;listitem&gt;
          &lt;label&gt;(b)&lt;/label&gt;
          &lt;bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;the premises are or, on the completion of building works will be, suitable for the management and operation of gaming machines; and&lt;/text&gt;
            &lt;/p&gt;
          &lt;/bodytext&gt;
        &lt;/listitem&gt;
        &lt;listitem&gt;
          &lt;label&gt;(c)&lt;/label&gt;
          &lt;bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;the net economic and social impact of approval will not be detrimental to the well-being of the community of the municipal district in which the premises are located.&lt;/text&gt;
            &lt;/p&gt;
          &lt;/bodytext&gt;
        &lt;/listitem&gt;
      &lt;/list&gt;
    &lt;/primlaw:bodytext&gt;
  &lt;/primlaw:level&gt;
&lt;/primlaw:excerpt&gt;
</pre>
                </li>
              </ul>
            </li>
          
          <li>
          <sourcexml>case:author</sourcexml> becomes
            <targetxml>casedigest:body/note/byline</targetxml>
          <note>If <sourcexml>person</sourcexml> occurs inside <sourcexml>case:author</sourcexml>,
            kindly refer <xref href="../../common_newest/Rosetta_person-LxAdv-person.person.dita">person section</xref> for
            handling of this scenario.</note>
          <pre>

&lt;case:author&gt;
    &lt;person&gt;
        &lt;name.text&gt; PETER LYNCH &lt;/name.text&gt;
        &lt;role&gt; SOLICITOR &lt;/role&gt;
    &lt;/person&gt;
&lt;/case:author&gt;


<b>Becomes</b>


&lt;casedigest:body&gt;
    &lt;note&gt;        
        &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt; PETER LYNCH &lt;/person:name.text&gt;
                    &lt;role&gt; SOLICITOR &lt;/role&gt;
                &lt;/person:person&gt;
            &lt;/person:contributor&gt;
        &lt;/byline&gt;
    &lt;/note&gt;
&lt;/casedigest:body&gt;
</pre>
          <ul>
            <li>
              <sourcexml>role</sourcexml> becomes <targetxml>role</targetxml>
              <pre>

&lt;role&gt; SOLICITOR &lt;/role&gt;


<b>Becomes</b>


&lt;role&gt; SOLICITOR &lt;/role&gt;
</pre>
            </li>
          </ul>
        </li>
          
        </ul>
    </p>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU09_case_digest\Case-Content.dita  -->
	<!--<xsl:message>Case-Content.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="case:content">
    <xsl:choose>
      <xsl:when test="parent::case:body and child::case:judgments">
        <casedigest:decision>
         <courtcase:caseexcerpt>
            <courtcase:body>
              <xsl:apply-templates select="@* | node() except (case:author)"/>
            </courtcase:body>
         </courtcase:caseexcerpt>
        </casedigest:decision>
        <xsl:if test="child::case:author">
          <note>
            <xsl:apply-templates select="case:author"/>
          </note>
        </xsl:if>
      </xsl:when>
      <xsl:when test="parent::case:body and child::case:author">
        <note>
          <xsl:apply-templates select="@* | node()"/>
        </note>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="@* | node()"/>
      </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template match="case:judgments">
  <courtcase:opinions>
    <xsl:choose>
      <xsl:when test="./@subdoc">
        <xsl:attribute name="includeintoc">
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:when>
      <xsl:when test="./@toc-caption">
        <xsl:attribute name="alternatetoccaption">
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:when>
      <xsl:when test="./@searchtype"/>
    </xsl:choose>
    <xsl:apply-templates select="@* | node()"/>
  </courtcase:opinions>
  </xsl:template>
  
  <xsl:template match="case:judgments/@subdoc"/>
  <xsl:template match="case:judgments/@toc-caption"/>

	<xsl:template match="case:judgment">
    <xsl:choose>
      <xsl:when test="parent::case:judgments/parent::case:content/parent::case:embeddedcase">
        <courtcase:opinion>
          <xsl:apply-templates select="@* | node()"/>
        </courtcase:opinion>
      </xsl:when>
      <xsl:otherwise>
        <courtcase:opinion>
          <xsl:apply-templates select="@* | node()"/>
        </courtcase:opinion>
      </xsl:otherwise>
    </xsl:choose>
	  <!--  Original Target XPath:  courtcase:opinion   -->
		

	</xsl:template>
  <xsl:template match="case:judgment/@searchtype"/>
	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
		  <xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="case:judgmentbody">

		<!--  Original Target XPath:  bodytext   -->
		<bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</bodytext>

	</xsl:template>

	<xsl:template match="legfragment">

		<!--  Original Target XPath:  primlaw:excerpt   -->
		<primlaw:excerpt>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:excerpt>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:value-of select="."/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="@inline">

		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="case:author">

		<!--  Original Target XPath:  casedigest:body/note/byline   -->
<xsl:choose>
  <xsl:when test="parent::case:content/parent::case:embeddedcase">
    <casedigest:body>
      <note>
        <byline>
          <xsl:apply-templates select="@* | node()"/>
        </byline>
      </note>
    </casedigest:body>
  </xsl:when>
  <xsl:otherwise>
    <byline>
      <xsl:apply-templates select="@* | node()"/>
    </byline>
  </xsl:otherwise>
  </xsl:choose>  
</xsl:template>

	<xsl:template match="person">

		<!--  Original Target XPath:  role   -->
		<role>
			<xsl:apply-templates select="@* | node()"/>
		</role>

	</xsl:template>

	<xsl:template match="role">

		<!--  Original Target XPath:  role   -->
		<role>
			<xsl:apply-templates select="@* | node()"/>
		</role>

	</xsl:template>
  
  <xsl:template match="case:typeofcase">
    <xsl:choose>
      <xsl:when test="parent::case:content">
        <casesum:summaries>
        <casesum:editorialsummary>
        <casesum:overview>
          <xsl:apply-templates select="heading"/>
          <bodytext>
            <xsl:apply-templates select="@* | node() except heading"/>
          </bodytext>
        </casesum:overview>
        </casesum:editorialsummary>
        </casesum:summaries>
      </xsl:when>
      <xsl:otherwise>
        <casesum:overview>
          <xsl:apply-templates select="heading"/>
          <bodytext>
            <xsl:apply-templates select="@* | node() except heading"/>
          </bodytext>
        </casesum:overview>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>
  
  <xsl:template match="prelim">
    <courtcase:prelim>
      <bodytext>
      <xsl:apply-templates select="@* | node()"/>
      </bodytext>
    </courtcase:prelim>    
  </xsl:template>

  <xsl:template match="pnum">
    <xsl:if test="parent::p[not(following-sibling::edpnum)]">
      <desig>
        <xsl:attribute name="value">
          <xsl:value-of select="@count"/>
        </xsl:attribute>
        <xsl:attribute name="inline">
          <xsl:choose>
            <xsl:when test="@inline">
              <xsl:value-of select="@inline"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="'true'"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
        <xsl:apply-templates select="@* | node()"/>
      </desig>
    </xsl:if>
    <xsl:if test="following-sibling::edpnum">
      <altdesig>
        <xsl:apply-templates select="@* | node()"/>
      </altdesig>     
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="pnum/@inline"/>
  <xsl:template match="pnum/@count"/>

<xsl:template match="case:order">
  <courtcase:orders>
    <xsl:apply-templates select="case:order/*[1][self::page]"/>
    <courtcase:order>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="heading|refpt"/>
      <bodytext>
        <xsl:apply-templates select="node() except(heading|refpt|page)"/>
      </bodytext>
    </courtcase:order>
  </courtcase:orders>
</xsl:template>
</xsl:stylesheet>