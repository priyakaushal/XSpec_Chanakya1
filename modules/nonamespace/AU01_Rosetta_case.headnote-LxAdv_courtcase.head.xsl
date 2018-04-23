<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU01_Rosetta_case.headnote-LxAdv_courtcase.head">
    <title>case:headnote <lnpid>id-AU01-18223</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.headnote-LxAdv_courtcase.head.dita#Rosetta_case.headnote-LxAdv_courtcase.head/mapping"/>
        <example>
            <codeblock>
&lt;case:headnote&gt;
    ...
    &lt;glp:note&gt;
        &lt;p&gt;
            &lt;text&gt;[&lt;emph typestyle="bf"&gt;Note. &lt;/emph&gt; As to the distinction between exemplary and aggravated damages, see &lt;emph typestyle="it"&gt;Luntz on Assessment of Damages &lt;/emph&gt; (2nd ed) para 1.7.01 &lt;emph typestyle="it"&gt;et seq &lt;/emph&gt; and 12 &lt;emph typestyle="it"&gt;Halsbury's Laws of England &lt;/emph&gt; (4th ed) para 1189.] &lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
&lt;/case:headnote&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:head&gt;
    ...
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;[&lt;emph typestyle="bf"&gt;Note. &lt;/emph&gt; As to the distinction between exemplary and aggravated damages, see &lt;emph typestyle="it"&gt;Luntz on Assessment of Damages &lt;/emph&gt; (2nd ed) para 1.7.01 &lt;emph typestyle="it"&gt;et seq &lt;/emph&gt; and 12 &lt;emph typestyle="it"&gt;Halsbury's Laws of England &lt;/emph&gt; (4th ed) para 1189.] &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
&lt;/courtcase:head&gt;
       </codeblock>
        </example>
        <note>If <sourcexml>heading</sourcexml> occurs as a direct child of <sourcexml>case:headnote</sourcexml>, then conversion
            should create <targetxml>heading</targetxml> as direct child of <targetxml>caseinfo:caseinfo</targetxml>, i.e.
            <sourcexml>case:headnote/heading</sourcexml> becomes
            <targetxml>courtcase:head/caseinfo:caseinfo/heading</targetxml>.</note>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.headnote-LxAdv_courtcase.head.dita#Rosetta_case.headnote-LxAdv_courtcase.head/changes"/>-->
        <!--<section>
            <title>Changes Specific to AU01</title>
            </section>-->

     <section>
         <title>case:headnote/footnotegrp and case:headnote/page</title>
         <p>If <sourcexml>footnotegrp</sourcexml> occurs as a direct child of <sourcexml>case:headnote</sourcexml> 
             then the conversion should append this element as children of nearest element containing bodytext.</p>
         
         <p>If <sourcexml>page</sourcexml> occurs as a direct child of <sourcexml>case:headnote</sourcexml> 
             then the conversion should append this element as children of nearest element.</p>
         
         <p>The resulting conversion should maintain a physical order with the existing document content.</p>
     </section>
     
     
     <example>
         <title>Source: <sourcexml>case:headnote/footnotegrp and case:headnote/page</sourcexml></title>
         
         <codeblock>
             
&lt;case:body&gt;
  &lt;case:headnote&gt;
   &lt;case:length&gt;20 Pages&lt;/case:length&gt;
   &lt;case:info&gt;...&lt;/case:info&gt;
   &lt;catchwordgrp&gt;
    &lt;catchwords&gt;...&lt;/catchwords&gt;
   &lt;/catchwordgrp&gt;
   &lt;case:factsummary&gt;
   ...
    &lt;p&gt;
     &lt;text&gt;Section 135.4(9) provided that for a person to be guilty of such an offence, &lt;nl/&gt;that
      person must have entered into an agreement with one or more other persons, &lt;nl/&gt;the person and
      at least one other party to the agreement must have intended to do &lt;nl/&gt;the thing pursuant to
      the agreement, and those persons must have committed an &lt;nl/&gt;overt act pursuant to the
      agreement.&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
     &lt;text&gt;By s&amp;#x2009;4.1(1) of the Code, a physical element of an offence could be conduct,
      &lt;nl/&gt;and, under s&amp;#x2009;4.1(2), &amp;#x201C;conduct&amp;#x201D; was defined to mean &amp;#x201C;an act,
      an omission to &lt;nl/&gt;perform an act or a state of affairs&amp;#x201D;.&lt;/text&gt;
    &lt;/p&gt;
   &lt;/case:factsummary&gt;
   &lt;footnotegrp&gt;
    &lt;footnote fntoken="2011-80-NSWLR-486.fn_a" fnrtokens="2011-80-NSWLR-486.fnr_a"&gt;
     &lt;fnlabel&gt;*&lt;/fnlabel&gt;
     &lt;fnbody&gt;
      &lt;p&gt;
       &lt;text&gt;[EDITORIAL NOTE: An application for special leave to appeal to the High Court was
        refused.]&lt;/text&gt;
      &lt;/p&gt;
     &lt;/fnbody&gt;
    &lt;/footnote&gt;
   &lt;/footnotegrp&gt;
   &lt;page count="487" reporter="NSWLR" text="(2011) 80 NSWLR 486 at " subdoc="true"/&gt;
   &lt;case:decisionsummary&gt;
    &lt;p&gt;
     &lt;text&gt;...             
             
         </codeblock>
     </example>
        
        
        <example>
            <title>Target: <sourcexml>courtcase:head/casesum:summaries</sourcexml> with <targetxml>footnotegroup</targetxml> and <targetxml>ref:page</targetxml></title>
            
            <codeblock>
             
 &lt;courtcase:head&gt;
   &lt;caseinfo:caseinfo&gt;...&lt;/caseinfo:caseinfo&gt;
   &lt;casesum:summaries&gt;
      &lt;casesum:editorialsummary&gt;
         ...
         &lt;p&gt;
           &lt;text&gt;
           Section 135.4(9) provided that for a person to be guilty of such an offence, 
           &lt;proc:nl /&gt; 
           that person must have entered into an agreement with one or more other persons, 
           &lt;proc:nl /&gt; 
           the person and at least one other party to the agreement must have intended to do 
           &lt;proc:nl /&gt; 
           the thing pursuant to the agreement, and those persons must have committed an 
           &lt;proc:nl /&gt; 
           overt act pursuant to the agreement. 
           &lt;/text&gt;
         &lt;/p&gt;
          &lt;p&gt;
           &lt;text&gt;
           By s?4.1(1) of the Code, a physical element of an offence could be conduct, 
           &lt;proc:nl /&gt; 
           and, under s?4.1(2), “conduct” was defined to mean “an act, an omission to 
           &lt;proc:nl /&gt; 
           perform an act or a state of affairs”. 
           &lt;/text&gt;
         &lt;/p&gt;
         &lt;p&gt;
           &lt;text&gt;
             &lt;footnotegroup&gt;
               &lt;footnote&gt;
                 &lt;ref:anchor id="_2011-80-NSWLR-486.fn_a" /&gt; 
                 &lt;ref:returnreference&gt;
                    &lt;ref:locator anchoridref="_2011-80-NSWLR-486.fnr_a" anchortype="local" /&gt; 
                 &lt;/ref:returnreference&gt;
                 &lt;label&gt;*&lt;/label&gt; 
                 &lt;bodytext&gt;
                    &lt;p&gt;
                     &lt;text&gt;[EDITORIAL NOTE: An application for special leave to appeal to the High Court was refused.]&lt;/text&gt; 
                    &lt;/p&gt;
                 &lt;/bodytext&gt;
               &lt;/footnote&gt;
             &lt;/footnotegroup&gt;
           &lt;/text&gt;
        &lt;/p&gt;
       &lt;ref:page includeintoc="true" num="487" page-scheme="500067" page-scheme-type="reporter-series-code" /&gt; 
         &lt;/casesum:editorialsummary&gt;
         &lt;casesum:decisionsummary&gt;
           &lt;bodytext&gt;
             &lt;p&gt;...            
             
         </codeblock>
        </example>
        
        <section>
            <title>Changes</title>  
            <p>2015-01-21: <ph id="change_20150121_mlv-1">Added instruction and example for <sourcexml>footnotegroup and page</sourcexml> elements that
                occur as child of <sourcexml>case:headnote</sourcexml>.</ph></p> 
        </section> 
        
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU01_CaseLaw\AU01_Rosetta_case.headnote-LxAdv_courtcase.head.dita  -->
	
    <xsl:template match="case:headnote">
        
        <!--  Original Target XPath:  ref:page   -->
        <courtcase:head>
            <xsl:apply-templates select="case:info/case:reportercite[@searchtype='BCNUM']" mode="search"/>
            
            <xsl:for-each-group select="*" group-adjacent="if(self::case:info) then 1 else 0">
                <xsl:if test="current-grouping-key()=1">                    
                    <caseinfo:caseinfo>
                        <xsl:apply-templates select="preceding::heading[parent::case:body]"/> 
                        <xsl:for-each select="current-group()">
                        
                        <xsl:apply-templates select="//case:body/case:headnote/heading"/>                        
                            <xsl:apply-templates select="@* | node() except preceding::heading[parent::case:body] except fnr[preceding-sibling::case:casename]"/>   
                        <!--<xsl:apply-templates select="case:reportercite"/>-->
                        <xsl:apply-templates select="case:info/h"/>
                    <!--    <xsl:apply-templates select="case:courtinfo/case:judges[ancestor::case:headnote]"/>-->
                        <!--<xsl:apply-templates select="case:courtinfo/case:filenum"/> -->    
                            <!--  <xsl:apply-templates select="case:courtinfo/case:courtcite"/>--> <!--webstar 7046666 fix by Pawan Prasad-->
                       <!-- <xsl:apply-templates select="case:courtinfo/case:dates"/>-->
                        
                        </xsl:for-each>
                        <xsl:apply-templates select="following-sibling::catchwordgrp"/>   
                    </caseinfo:caseinfo>
                </xsl:if>
            </xsl:for-each-group>
            
            <!--<xsl:apply-templates select="case:body/case:headnote/catchwordgrp"/>-->			 
            
            <!-- Awantika: wrapper casesum:summaries for factsummary and decisionsummary -->
            <xsl:if test="case:factsummary | case:decisionsummary | case:references">
                
                <casesum:summaries>
                    <xsl:apply-templates select="case:factsummary" mode="summaries"/>
                    <xsl:apply-templates select="case:decisionsummary" mode="summaries"/>
                    <xsl:apply-templates select="case:disposition[parent::case:headnote]" mode="summaries"/>
                   
                    <!--<xsl:apply-templates select="case:body/case:headnote/case:citations" mode="summaries"></xsl:apply-templates>-->
                    <!--<xsl:apply-templates select="case:body/case:content/case:typeofcase" mode="summaries-->
                </casesum:summaries>
                <xsl:apply-templates select="case:references"/>
                <xsl:apply-templates select="case:citations"/>
            </xsl:if>
            <xsl:apply-templates select="footnotegrp"/>
         
        </courtcase:head>
  
    </xsl:template>
    <xsl:template match="case:headnote/heading">
        <heading>
            <xsl:apply-templates/>
        </heading>
    </xsl:template>
    
    
</xsl:stylesheet>