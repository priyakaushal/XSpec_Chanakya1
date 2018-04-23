<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.info_case.reportercite">
   <title>case:reportercite <lnpid>id-AU07-19229</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">                        
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:reportercite</sourcexml> becomes 
                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="reporter"</targetxml>.
                                                
                        The source attribute <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite @searchtype</sourcexml> is dropped.
                        The source attribute <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite @ln.user-displayed</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">doc:legacy-metadata/meta/metaitem @name="" @value=""</targetxml>.
                        <note class="- topic/note ">Please note that there is no change in the above rule even when the value of the attribute <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite @ln.user-displayed</sourcexml> is "false".</note>
                  <pre xml:space="preserve" class="- topic/pre ">
&lt;case:reportercite ln.user-displayed="false"&gt;            
    &lt;/case:reportercite&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

    &lt;doc:legacy-metadata&gt;
        &lt;meta&gt;
            &lt;metaitem @name="case:reportercite@ln.user-displayed" value="false"/&gt;
        &lt;/meta&gt;
    &lt;/doc:legacy-metadata&gt;    
                
</pre>    
                        
                        The children are described below:
                        <ul class="- topic/ul ">
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite</sourcexml> becomes 
                                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>.                                 
                                
                                The source attributes : 
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite @type="cite4thisdoc"</sourcexml> becomes
                                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite</targetxml>.
                                
                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite @searchtype="CASE-REF"</sourcexml> is dropped.
                                
<pre xml:space="preserve" class="- topic/pre ">
&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:reportercite&gt;
            &lt;ci:cite type="cite4thisdoc" searchtype="CASE-REF"&gt;
            &lt;/ci:cite&gt;
        &lt;/case:reportercite&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="reporter"&gt;
            &lt;lnci:cite&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/courtorder:head&gt;                
</pre>    
                                The children are described below:
                                <ul class="- topic/ul ">
                                    <li class="- topic/li ">
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:case</sourcexml> becomes 
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite/lnci:courtorder</targetxml>
                                        
                                        <note class="- topic/note ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:case</sourcexml> will become <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:case</targetxml> 
                                            except when CASEDOC/@type="practicenote" and with the following xpath:
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite @type="cite4thisdoc"/ci:case</sourcexml> :                                            
                                            In this situation, the <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:case</sourcexml> will map to <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:cite/lnci:courtorder</targetxml>.                                            
                                        </note>                  
                                        The children are described below:
                                        <ul class="- topic/ul ">
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:case/ci:caseinfo</sourcexml> becomes
                                                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite/lnci:courtorder/lnci:courtorderinfo</targetxml>.
                                                The children are described below:
                                                <ul class="- topic/ul ">
                                                    <li class="- topic/li ">
                                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:case/ci:caseinfo/ci:decisiondate</sourcexml> becomes
                                                        <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite/lnci:courtorder/lnci:courtorderinfo/lnci:issueddate</targetxml>. The attribute
                                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:caseinfo/ci:decisiondate @year</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:courtorderinfo/lnci:issueddate @year</targetxml>.
                                                    </li>                                                  
                                                                                              
                                                </ul>
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:case/ci:caseref</sourcexml> becomes
                                                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite/lnci:courtorder/lnci:courtorderref</targetxml>.
                                                The children are described below:
                                                <ul class="- topic/ul ">
                                                    <li class="- topic/li ">
                                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:case/ci:caseref/ci:reporter @value="nswlr"</sourcexml> becomes
                                                        <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite/lnci:courtorder/lnci:courtorderref/lnci:reporter @value="nswlr"</targetxml>.
                                                    </li>
                                                    <li class="- topic/li ">
                                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:case/ci:caseref/ci:volume num="58"</sourcexml> becomes
                                                        <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite/lnci:courtorder/lnci:courtorderref/lnci:volume @num="58"</targetxml>.
                                                    </li>
                                                    <li class="- topic/li ">
                                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:case/ci:caseref/ci:page @num="94"</sourcexml> becomes
                                                        <targetxml class="+ topic/keyword xml-d/targetxml ">ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite/lnci:courtorder/lnci:courtorderref/lnci:page @num="94"</targetxml>.
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                                                       
                              <pre xml:space="preserve" class="- topic/pre ">
&lt;case:headnote&gt;&lt;case:info&gt;
    &lt;case:reportercite&gt;
        &lt;ci:cite type="cite4thisdoc" searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseinfo&gt;
                    &lt;ci:decisiondate year="2003"/&gt;
                &lt;/ci:caseinfo&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="nswlr"/&gt;
                    &lt;ci:volume num="58"/&gt;
                    &lt;ci:page num="94"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
        &lt;/ci:cite&gt;
    &lt;/case:reportercite&gt;
&lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:head&gt;&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:courtorder&gt;
                &lt;lnci:courtorderinfo&gt;
                    &lt;lnci:issueddate year="2003"/&gt;
                &lt;/lnci:courtorderinfo&gt;
                &lt;lnci:courtorderref&gt;
                    &lt;lnci:reporter value="nswlr"/&gt;
                    &lt;lnci:volume num="58"/&gt;     
                    &lt;lnci:page num="94"/&gt;
                &lt;/lnci:courtorderref&gt;
            &lt;/lnci:courtorder&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;
&lt;/courtorder:head&gt;                
</pre>
                                                                        
                                    </li>
                                    <li class="- topic/li ">
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:content</sourcexml> becomes
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite/lnci:content</targetxml>
                                        The children are described below:
                                        <ul class="- topic/ul ">
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:content/citefragment @searchtype="CASE-CITE-REF"</sourcexml> the element is dropped 
                                                but the content is maintained in <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/ref:citations/ref:cite4thisresource @citetype="reporter"/lnci:cite/lnci:content</targetxml>
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:reportercite/ci:cite/ci:content/refpt</sourcexml> - <sourcexml class="+ topic/keyword xml-d/sourcexml ">refpt</sourcexml> can be suppressed when it occurs 
                                                as a child of <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:content</sourcexml>.
                                                <note class="- topic/note ">Please refer to 'refpt' in the general markup section for more details.</note>
                                            </li>
                                        </ul>
                                    
                              <pre xml:space="preserve" class="- topic/pre ">
&lt;case:headnote&gt;&lt;case:info&gt;
    &lt;case:reportercite&gt;
        &lt;ci:cite type="cite4thisdoc" searchtype="CASE-REF"&gt;...
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;[1974] 2 NSWLR
                46&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;    
    &lt;/case:reportercite&gt;
&lt;/case:info&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:head&gt;&lt;ref:citations&gt;
    &lt;ref:cite4thisresource citetype="reporter"&gt;
        &lt;lnci:cite&gt;...
            &lt;lnci:content&gt;[1974] 2 NSWLR 46&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/ref:cite4thisresource&gt;
&lt;/ref:citations&gt;
&lt;/courtorder:head&gt;                
</pre>    
                                    
                                    </li>
                                </ul>                                
                            </li>
                        </ul>
                    
                    </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.reportercite.dita  -->

	<xsl:template match="case:reportercite">
		<ref:citations>
			<ref:cite4thisresource citetype="reporter">
				<xsl:apply-templates select="@* | node()"/>
			</ref:cite4thisresource>
		</ref:citations>	    
	</xsl:template>
    
    <xsl:template match="case:reportercite/@ln.user-displayed" mode="metadata">
        <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:attribute name="name">case:reportercite@ln.user-displayed</xsl:attribute>
            <xsl:attribute name="value" select="."/>
        </metaitem>
    </xsl:template>
	
	<xsl:template match="case:reportercite/ci:cite/@searchtype | case:reportercite/ci:cite/@type" priority="35"/>
	
    <xsl:template match="case:reportercite[/CASEDOC[lower-case(@type)='practicenote']]/ci:cite/ci:case" priority="35">
		<lnci:courtorder>
			<xsl:apply-templates select="@*"/>
		    <xsl:call-template name="courtorderCitation"/>
		</lnci:courtorder>
	</xsl:template>
	
	<xsl:template match="ci:caseinfo" mode="courtorder">
		<lnci:courtorderinfo>
			<xsl:apply-templates select="@*"/>
		    <xsl:call-template name="courtorderCitation"/>
		</lnci:courtorderinfo>
	</xsl:template>
	
	<xsl:template match="ci:decisiondate" mode="courtorder">
		<lnci:issueddate>
			<xsl:apply-templates select="@*|node()"/>
		</lnci:issueddate>
	</xsl:template>

	
	<xsl:template match="ci:caseref" mode="courtorder">
		<lnci:courtorderref>
			<xsl:apply-templates select="@*"/>
		    <xsl:call-template name="courtorderCitation"/>
		</lnci:courtorderref>
	</xsl:template>
	
	<xsl:template match="ci:reporter" mode="courtorder">
		<lnci:reporter>
			<xsl:apply-templates select="@*| node()"/>
		</lnci:reporter>
	</xsl:template>
	
	
	<xsl:template name="courtorderCitation">
	    <xsl:for-each select="node()">
	        <xsl:choose>
	            <xsl:when test="self::ci:reporter | self::ci:caseref | self::ci:decisiondate  | self::ci:caseinfo">
	                <xsl:apply-templates select="." mode="courtorder"/>
	            </xsl:when>
	            <xsl:otherwise>
	                <xsl:apply-templates select="."/>
	            </xsl:otherwise>
	        </xsl:choose>
	    </xsl:for-each>
	</xsl:template>
	
</xsl:stylesheet>