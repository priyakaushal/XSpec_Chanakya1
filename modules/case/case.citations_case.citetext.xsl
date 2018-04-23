<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.citations_case.citetext">
  <title>case:citations_case:citetext <lnpid>id-NZ17CC-25808</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:citations/case:citetext</sourcexml>
          becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:cite4thisresource/@citetype="reporter"</targetxml> is a child element
          of <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations</targetxml>.
            When <sourcexml>cttr:annotations@searchtype="CONSIDERED-CASES"</sourcexml> or <sourcexml>cttr:annotations@searchtype="CONSIDERED-LEG"
            </sourcexml> place the value as lower case in attribute <targetxml>ref:cite4thisresource@citetype="case"</targetxml> or
            <targetxml>ref:cite4thisresource@citetype="leg"</targetxml>
          
          <note>Conversion needs to place the
            <targetxml>ref:citations/ref:cite4thisresource/@citetype="parallel"</targetxml>
            within <targetxml>casedigest:caseinfo</targetxml>. Also, for handling Citation
            refer the <xref href="../../../common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">ci:cite</xref> section in CI.</note>
          <note>Conversion needs to capture Keyword <b>REPORTED:</b> within <targetxml>connector</targetxml> as first child of <targetxml>ref:citations</targetxml> and suppress <sourcexml>nl</sourcexml> from conversion.</note>
          <note>Conversion needs to capture <sourcexml>cttr:use{text}</sourcexml> and place in child of <targetxml>ref:citations/connector</targetxml>. </note>
            
          <pre xml:space="preserve" class="- topic/pre ">

&lt;cttr:annotations&gt;
    &lt;cttr:annot&gt;
        &lt;case:citations&gt;
            &lt;case:citetext&gt;
                &lt;nl/&gt;
                &lt;process-ignore process="kwd"&gt;REPORTED: &lt;/process-ignore&gt;
                &lt;ci:cite searchtype="CASE-REF"&gt;
                    &lt;ci:case&gt;
                        &lt;ci:caseref ID="x-2" spanref="x-2-1"&gt;
                            &lt;ci:reporter value="prnz" country="nz"/&gt;
                            &lt;ci:volume num="9"/&gt;
                            &lt;ci:edition&gt;
                                &lt;ci:date year="1995"/&gt;
                            &lt;/ci:edition&gt;
                            &lt;ci:page num="131"/&gt;
                        &lt;/ci:caseref&gt;
                    &lt;/ci:case&gt;
                    &lt;ci:content&gt;
                        &lt;citefragment searchtype="CASE-NAME-REF"&gt;
                            &lt;emph typestyle="it"&gt;Glaxo Group Ltd v Apotex NZ Ltd&lt;/emph&gt;
                        &lt;/citefragment&gt;
                        &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                            &lt;ci:span spanid="x-2-1"&gt;(1995) 9 PRNZ 131&lt;/ci:span&gt;
                        &lt;/citefragment&gt;
                    &lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/case:citetext&gt;
        &lt;/case:citations&gt;
    &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;


<b class="+ topic/ph hi-d/b ">Becomes</b>


&lt;ref:citations&gt;
    &lt;connector&gt;REPORTED: &lt;/connector&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref ID="x-2" spanref="x-2-1"&gt;
                    &lt;lnci:reporter value="prnz" country="nz"/&gt;
                    &lt;lnci:volume num="9"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1995"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="131"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;
                &lt;emph typestyle="it"&gt;Glaxo Group Ltd v Apotex NZ Ltd&lt;/emph&gt;
                (1995) 9 PRNZ 131               
            &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;      
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;

          </pre>
        </li>
<li>
    <pre>
        
 &lt;cttr:annotations searchtype="CONSIDERED-CASES"&gt;
  &lt;cttr:annot&gt;
    &lt;case:citations&gt;
      &lt;case:citetext&gt;
        &lt;ci:cite searchtype="CASE-REF"&gt;
          &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-NAME-REF"&gt;
              &lt;emph typestyle="it"&gt;Kirella Pty Ltd v Hooper&lt;/emph&gt; 
            &lt;/citefragment&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;(1999) 161 ALR 447; (1999) 44 IPR 199&lt;/citefragment&gt; 
          &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/case:citetext&gt;
    &lt;/case:citations&gt;
    
    &lt;cttr:use&gt;, affirmed.&lt;/cttr:use&gt; 
    
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;       
        
    </pre>
    <b class="+ topic/ph hi-d/b ">Becomes</b>
    <pre>
        
&lt;ref:citations&gt;
   &lt;ref:cite4thisresource citetype="case"&gt;
        &lt;lnci:cite&gt;
          &lt;lnci:content&gt;
              &lt;emph typestyle="it"&gt;Kirella Pty Ltd v Hooper&lt;/emph&gt; 
            (1999) 161 ALR 447; (1999) 44 IPR 199 
          &lt;/ci:content&gt;
        &lt;/ci:cite&gt;   
   &lt;/ref:cite4thisresource&gt;   
  &lt;connector&gt;, affirmed.&lt;/connector&gt;
&lt;/ref:citations&gt;        
        
    </pre>
</li>          
          
      </ul>
    </section>
      <section>
          <title>Changes:</title>
          <p>2015-02-03: <ph id="change_20150203_mlv">Removed instructions for cttr:usage and in place added markup to mapping
              <sourcexml>cttr:annotations searchtype="CONSIDERED-CASES"/cttr:annot/cttr:use</sourcexml> to
              <targetxml>ref:citations/ref:cite4thisresource citetype</targetxml> and <targetxml>ref:citations/connector</targetxml></ph> </p>
      </section>
      
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.citations_case.citetext.dita  -->

	<xsl:template match="case:citations/case:citetext">
	    <ref:cite4thisresource>
	       <xsl:attribute name="citetype">
	       <xsl:choose>
	          <xsl:when test="ancestor::source_cttr:annotations[@searchtype='CONSIDERED-CASES']">case</xsl:when>
	           <xsl:when test="ancestor::source_cttr:annotations[@searchtype='CONSIDERED-LEG']">legislation</xsl:when>
	          <xsl:otherwise>reporter</xsl:otherwise>
	       </xsl:choose>
	       </xsl:attribute>
		   <xsl:apply-templates select="@* | node()"/>
	    </ref:cite4thisresource>		
	</xsl:template>

	

	<xsl:template match="nl[parent::cttr:annotations]">
		<xsl:text> </xsl:text>
	</xsl:template>
	

	<!--  Original Target XPath:  ref:citations/connector   -->
	<xsl:template match="case:citetext/process-ignore">
			<connector>
				<xsl:apply-templates select="@* | node()"/>
			</connector>
	</xsl:template>

    <xsl:template match="case:citations">
        <ref:citations>
            <xsl:apply-templates/>
            <xsl:apply-templates select="following-sibling::source_cttr:use"/>
        </ref:citations>    
    </xsl:template>
    
    
    <xsl:template match="source_cttr:use">
        <connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates/>	
        </connector>  	
    </xsl:template>

</xsl:stylesheet>