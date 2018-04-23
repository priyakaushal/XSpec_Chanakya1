<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita ref case glp caseinfo casedigest proc">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-CaseDigest_case.info">
  <title>case:info <lnpid>id-NZ07DC-23617</lnpid></title>
	    
  <body>
    <section>
      <p>
        <sourcexml>case:info</sourcexml> becomes <targetxml>casedigest:head/casedigest:caseinfo</targetxml></p>
        <note>From now onwards, <targetxml>casedigest:caseinfo</targetxml> will be placed under <targetxml>casedigest:head</targetxml> and not in <targetxml>casedigest:body</targetxml> and rest all converion scenarios will remain same. Please see below target examples for more details.</note>
      
          <pre>
         &lt;case:info&gt;
            &lt;case:casename&gt;Payne v Payne&lt;/case:casename&gt;
            ...
        &lt;/case:info&gt;

<b>Becomes</b>
              

    &lt;casedigest:head&gt;
        &lt;casedigest:caseinfo&gt;
            &lt;caseinfo:casename&gt;
                &lt;caseinfo:fullcasename&gt;Payne v Payne&lt;/caseinfo:fullcasename&gt;
            &lt;/caseinfo:casename&gt;
            ...
        &lt;/casedigest:caseinfo&gt;
    &lt;/casedigest:head&gt;
   
   </pre>
        
        <note>Conversion should not create consecutive <targetxml>casedigest:caseinfo</targetxml>
            elements. When 2 or more consecutive sibling source elements map to
            <targetxml>casedigest:caseinfo</targetxml>, data should be merged to a single
            <targetxml>casedigest:caseinfo</targetxml> element unless this would hamper content
            ordering.</note>
      
      <p>When input documents has scenario <sourcexml>case:info/glp:note</sourcexml> becomes <targetxml>casedigest:caseinfo/note</targetxml>.</p>
      
      <p>Drop <targetxml>@searchtype</targetxml> attribute.</p>
      
      <pre xml:space="preserve">
&lt;case:info&gt;
    &lt;glp:note searchtype="ALT-CASE-NAME"&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;process-ignore process="kwd"&gt;
                    &lt;emph typestyle="bf"&gt;Note:&lt;/emph&gt;
                &lt;/process-ignore&gt;Citation: [2005] NZSC 11 &lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
&lt;/case:info&gt;

<b>Becomes</b>
          
&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;note&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="bf"&gt;Note:&lt;/emph&gt; Citation: [2005] NZSC 11 &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;
      </pre>
      
    </section>
      <section>
          <title>Changes</title>
          <p>2013-09-24 <ph id="change_20130924_WL">Updated the placement of element <targetxml>casedigest:caseinfo</targetxml> along with all its children. The conversion will be placed within
              <targetxml>casedigest:head</targetxml> and no longer within  <targetxml>casedigest:body</targetxml>. <b>WebTeam # 235783</b></ph></p>
          <p>2013-12-10 <ph id="change_20131210_PS">Updated target example, removed <targetxml>proc:process-ignore</targetxml> element, this change directly affects NZ07-Casedigest.</ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ07_Linxplus\NZ07DC_Linxplus-CaseDigest\Linxplus-CaseDigest_case.info.dita  -->
	<!--<xsl:message>Linxplus-CaseDigest_case.info.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="case:info">
		<!--  Original Target XPath:  casedigest:head/casedigest:caseinfo   -->
	   	<casedigest:caseinfo>
	   	    <xsl:apply-templates select="@* | node() except (case:decisiontype[@ln.user-displayed='false'] | case:litigants | case:constituents | descendant::case:courtcite | child::case:parallelcite)"/>
	   	    <xsl:if test="child::case:courtinfo/case:courtcite | child::case:parallelcite">
	   	        <ref:citations>
	   	            <xsl:apply-templates select="child::case:courtinfo/case:courtcite | child::case:parallelcite"/>
	   	        </ref:citations>
	   	    </xsl:if>
	   	    <xsl:if test="child::case:litigants | child::case:constituents">
	   	        <xsl:apply-templates select="case:litigants | case:constituents"/>   
	   	    </xsl:if>
	   	    
		</casedigest:caseinfo>
	</xsl:template>
    
    <xsl:template match="glp:note[parent::case:info]">
        <note>
            <bodytext>
               <xsl:apply-templates select="@* | node()"/> 
            </bodytext>
        </note>
    </xsl:template>
</xsl:stylesheet>