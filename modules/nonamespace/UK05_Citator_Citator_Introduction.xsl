<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
	
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0" exclude-result-prefixes="case case2 dita docinfo source_cttr xd">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CaseSummaries_Introduction">
  <title>Introduction <lnpid>id-UK05-27811</lnpid></title>
  <prolog><metadata><prodinfo>
    <prodname>UK05 Rosetta CITATORDOC-to-LexisAdvance cttr:citator</prodname>
    <vrmlist>
      <vrm version=""/>
    </vrmlist>
  </prodinfo></metadata></prolog>
  <body>
    <p>This Conversion Instruction describes the conversion of Citator 1.18_PROD schema in the
      document.</p>
    
    <p>UK Citator documents are identified using the root element <sourcexml>CITATORDOC</sourcexml>, the value of <sourcexml>docinfo:doc-country/@iso-cc="GB"</sourcexml>
      and the value of <sourcexml>docinfo:selector</sourcexml> should be "CaseCitator".</p>
    
    <p>The root element <sourcexml>CITATORDOC</sourcexml> becomes <targetxml>cttr:citator</targetxml>. </p>
    
    <p>
      <targetxml>cttr:body</targetxml> and <targetxml>doc:metadata</targetxml> are created as required children of
      <targetxml>cttr:citator</targetxml>. <targetxml>cttr:head</targetxml> is an optional child of <targetxml>cttr:citator</targetxml>. 
      The source attributes are described below:
    </p>   
    
    
<pre>
&lt;CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator&gt;
  &lt;cttr:head&gt;...&lt;/cttr:head&gt;
  &lt;cttr:body&gt;...&lt;/cttr:body&gt;
  &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/cttr:citator&gt;
</pre>
    
    <ul>
      <li>
        <sourcexml>CITATORDOC/@id</sourcexml> is dropped because <targetxml>doc:docinfo/dc:metadata/dc:identifier</targetxml> captures its content.
      </li>
      <li>
        <sourcexml>CITATORDOC/@citatordoctype="CaseSearch"</sourcexml> becomes <targetxml>doc:legacy-metadata/meta/metaitem
          @name="citatordoctype"</targetxml> and <targetxml>doc:legacy-metadata/meta/metaitem @value="CaseSearch"</targetxml>.
<pre>
&lt;CITATORDOC citatordoctype="CaseSearch"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator&gt;
  &lt;doc:docinfo&gt;
    &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
      &lt;meta&gt;
        &lt;metaitem name="citatordoctype" value="CaseSearch"/&gt;
      &lt;/meta&gt;
    &lt;/doc:legacy-metadata&gt;
  &lt;/doc:docinfo&gt;
&lt;/cttr:citator&gt;
</pre>
      </li>
      <li>
        <sourcexml>CITATORDOC/@signal</sourcexml> becomes <targetxml>cttr:citator/@treatment</targetxml>.
<pre>
&lt;CITATORDOC signal="citation"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator treatment="citation"&gt;...  
&lt;/cttr:citator&gt;
</pre>
      </li>
    </ul>
    
    <section>
      <title>Note:</title>
      <p>Source elements and attributes are highlighted in BLUE like this: <sourcexml>XML
        SOURCE</sourcexml></p>
      <p>Target elements and attributes are highlighted in GREEN like this: <targetxml>XML
        TARGET</targetxml></p>
      <p>COPY SOURCE ATTRIBUTES TO TARGET ATTRIBUTES UNLESS OTHERWISE SPECIFIED.</p>
      <p>Every example is represented like "EXAMPLE" in all the dita's and is
        coming under <pre> pre </pre> tag.</p>      
    </section> 
    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\Citator_Introduction.dita  -->

	<xsl:template match="CITATORDOC">
		<!--  Original Target XPath:  cttr:citator   -->
		<cttr:citator>
			<xsl:for-each select="$lexisAdvNamespaces/*">
				<xsl:sort/>
				<xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
			</xsl:for-each>			
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:if test="docinfo/docinfo:doc-lang">
				<xsl:call-template name="xml_lang"/>
			</xsl:if>
			<xsl:apply-templates select="@signal"/>
			<!-- apply head section templates -->
			<xsl:apply-templates select="source_cttr:body/case:headnote | source_cttr:body/case2:headnote | source_cttr:body/case:info | source_cttr:body/case2:info"/>
			<!-- apply body section templates -->			
			<xsl:apply-templates select="source_cttr:body"/>
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</cttr:citator>
	</xsl:template>
	
	<xsl:template match="@signal">
		<xsl:attribute name="treatment">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>