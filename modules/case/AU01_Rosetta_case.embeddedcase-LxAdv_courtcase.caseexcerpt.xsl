<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.embeddedcase-LxAdv_courtcase.caseexcerpt">
   <title>case:embeddedcase <lnpid>id-AU01-18220</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
                    <sourcexml>case:embeddedcase</sourcexml>
                    becomes <targetxml>courtcase:caseexcerpt</targetxml> and attribute <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>. <note><targetxml>courtcase:caseexcerpt/@xml:id</targetxml> that begins with a number
                        must have an underscore added at start.</note>
                    <note>If <sourcexml>case:embeddedcase</sourcexml>
                        occurs as a child element of <sourcexml>blockquote</sourcexml> then
                        conversion need to omit tag (<sourcexml>blockquote</sourcexml>) and
                        retain content.</note>
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:decisionsummary&gt;
  &lt;blockquote&gt;
      &lt;case:embeddedcase id="1980_QD_R_411"&gt;
            &lt;case:content&gt;
                &lt;case:judgments&gt;
                    &lt;case:judgment subdoc="true" toc-caption="Judgment 1"&gt;
                        &lt;case:judgmentbody&gt;
                            &lt;p&gt;
                                &lt;text&gt;This was an action...&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/case:judgmentbody&gt;
                    &lt;/case:judgment&gt;
                &lt;/case:judgments&gt;
            &lt;/case:content&gt;
      &lt;/case:embeddedcase&gt;
  &lt;/blockquote&gt;
&lt;/case:decisionsummary&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;casesum:decisionsummary&gt;
            &lt;courtcase:caseexcerpt xml:id="_1980_QD_R_411"&gt;
                &lt;courtcase:body&gt;
                    &lt;courtcase:opinions&gt;
                        &lt;courtcase:opinion includeintoc="true" alternatetoccaption="Judgment 1"&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;
                                    &lt;text&gt;This was an action...&lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/courtcase:opinion&gt;
                    &lt;/courtcase:opinions&gt;
                &lt;/courtcase:body&gt;    
            &lt;/courtcase:caseexcerpt&gt;
&lt;/casesum:decisionsummary&gt;

</pre>
                </li>
      </ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2012-08-23: Modified instructions to use an underscore instead of the two digit country code for <targetxml>xml:id</targetxml>.</p>
       </section>
       
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.embeddedcase-LxAdv_courtcase.caseexcerpt.dita  -->

	<xsl:template match="case:embeddedcase">
		<!--  Original Target XPath:  courtcase:caseexcerpt   -->
		<courtcase:caseexcerpt>
		    <xsl:choose>
		        <xsl:when test="case:body/case:headnote/case:factsummary | case:body/case:headnote/case:decisionsummary | case:body/case:headnote/case:references | case:body/case:headnote/case:info">
		            <courtcase:head>
		                <xsl:apply-templates select="case:body/case:headnote/case:info"/>
		            <casesum:summaries>
		                <xsl:apply-templates select="case:body/case:headnote/case:factsummary" mode="summaries"/>
		                <xsl:apply-templates select="case:body/case:headnote/case:decisionsummary" mode="summaries"/>
		                <xsl:apply-templates select="case:disposition[parent::case:headnote]" mode="summaries"/>
		                
		                <!--<xsl:apply-templates select="case:body/case:content/case:typeofcase" mode="summaries-->
		            </casesum:summaries>
		            <xsl:apply-templates select="case:body/case:headnote/case:references"/>
		            </courtcase:head>
		        </xsl:when>
		        <xsl:otherwise>
		            <courtcase:body>
		                <xsl:apply-templates select="case:content/case:typeofcase"/>
		                <xsl:apply-templates select="case:embeddedcase"/>
		                <xsl:apply-templates select="case:content/case:judgments"/>
		                <!--<xsl:apply-templates select="case:content/case:judgments/case:judgment/case:courtinfo/case:judges[ancestor::case:content]"/>-->
		                <!--<xsl:apply-templates select="case:content/case:judgments/case:constituents"/>-->
		                <!--<xsl:apply-templates select="case:content/case:judgments/case:disposition"/>-->
		                <!--<xsl:apply-templates select="case:content/case:judgments/case:appendix"/>-->
		                <xsl:apply-templates select="case:courtinfo"/>
		                <xsl:apply-templates select="case:content/case:author"/>
		                <xsl:apply-templates select="case:content/case:appendix[not(parent::case:judgments)]"/>
		                <xsl:apply-templates select="case:content/page"/>
		                <xsl:choose>
		                    <xsl:when test="heading">
		                        <xsl:apply-templates select="@* | node() except heading"/>
		                    </xsl:when>
		                </xsl:choose>
		                <!--			<xsl:apply-templates select="case:content/case:author"/>-->
		                <!--<xsl:apply-templates select="case:content/case:judgments"/>
			<xsl:apply-templates select="case:content/page"/>
			<xsl:apply-templates select="case:content/case:typeofcase"/>
			<xsl:apply-templates select="case:content/case:appendix[not(parent::case:judgments)]"/>
			
			<xsl:apply-templates select="case:content/case:judgments/case:constituents"/>
			<xsl:apply-templates select="case:content/case:author"/>
			<xsl:apply-templates select="@* | node() except case:info[parent::case:headnote]"/>-->
		            </courtcase:body>
		        </xsl:otherwise>
		    </xsl:choose>		    
		   
		</courtcase:caseexcerpt>
	</xsl:template>

	<!--<xsl:template match="case:embeddedcase/@id">
		<!-\-  Original Target XPath:  @xml:id   -\->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="@*"/>
		</xsl:attribute>
	</xsl:template>-->

   
	<!-- NOTE: this condition should be in the 'blockquote' or 'case:decionsummary' template (output element would already be created) 
	"Note: If case:embeddedcase occurs as a child element of blockquote then conversion need to omit tag (blockquote) and retain content."
	-->
<!--	<xsl:template match="blockquote">
		<!-\-  Original Target XPath:  xml:id   -\->
		<xml:id>
			<xsl:apply-templates select="@* | node()"/>
		</xml:id>

	</xsl:template>-->

</xsl:stylesheet>