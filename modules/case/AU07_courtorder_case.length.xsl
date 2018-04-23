<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote_case.length">
   <title>case:length <lnpid>id-AU07-19227</lnpid></title>
   <body>
         <ul><li class="- topic/li ">
                <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/case:length</sourcexml> becomes 
                <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:courtorder/doc:metadata/doc:docinfo/doc:doclength @unit="page" @num="9" @source="conversion"</targetxml>
           <p>The values of the attributes <targetxml>@unit</targetxml> and <targetxml>@num</targetxml> are based on the content of <sourcexml>case:length</sourcexml>. Any punctuation (such as a colon, comma, or semicolon) that is part of <sourcexml>case:length</sourcexml> is dropped.</p>
         </li>
         </ul>
     <section>
       <title>Example showing common case of content without punctuation</title>
             <pre xml:space="preserve" class="- topic/pre ">

&lt;case:headnote&gt;
    &lt;case:length&gt;4 Pages&lt;/case:length&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:courtorder&gt;
    &lt;doc:metadata&gt;
        &lt;doc:docinfo&gt;
            &lt;doc:doclength unit="Pages" num="4" source="conversion"/&gt;
        &lt;/doc:docinfo&gt;
    &lt;/doc:metadata&gt;
&lt;/courtorder:courtorder&gt;                
             </pre>
     </section>
     <section>
       <title>Example showing content with punctuation (that is dropped in target)</title>
       
       <pre xml:space="preserve" class="- topic/pre ">

&lt;case:headnote&gt;
    &lt;case:length&gt;Pages: 1&lt;/case:length&gt;
&lt;/case:headnote&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:courtorder&gt;
    &lt;doc:metadata&gt;
        &lt;doc:docinfo&gt;
            &lt;doc:doclength unit="Pages" num="1" source="conversion"/&gt;
        &lt;/doc:docinfo&gt;
    &lt;/doc:metadata&gt;
&lt;/courtorder:courtorder&gt;                
</pre>
     </section>
     <section>
       <title>Changes</title>
       <p>2013-07-24: <ph id="change_20130724_JCG">Added instructions to drop punctuation within
            <sourcexml>case:length</sourcexml> and provided an example showing this
        scenario.</ph></p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.length.dita  -->
	
	<xsl:template match="case:headnote/case:length">
		<doc:doclength>
		    <xsl:if test="matches (. , '(page|PAGE|Page)[sS]?')">
		        <xsl:attribute name="unit" select="'page'"/>
		    </xsl:if>
		    <xsl:if test="matches (. , '\d+')">
		        <xsl:attribute name="num">
		            <xsl:analyze-string select="." regex="\d+">
		                <xsl:matching-substring><xsl:value-of select="."/></xsl:matching-substring>
		                <xsl:non-matching-substring/>
		            </xsl:analyze-string>
		        </xsl:attribute>		        
		    </xsl:if>		    
		    <xsl:attribute name="source" select="'conversion'"/>
		</doc:doclength>
	</xsl:template>

	

</xsl:stylesheet>