<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:dig="http://www.lexis-nexis.com/glp/dig"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
	xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
	xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/" 
	xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" 
	xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
	version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_Introduction">
  <title>Introduction <lnpid>id-NZ07DN-23818</lnpid></title>

  <body>
    <p>This Conversion Instruction describes the conversion of NewsItem 4.4 PROD Schema in the
      document.</p>
    
    <p>Linxplus - Article are identified using the root element <sourcexml>docinfo:selector[text()='article']</sourcexml>.</p>
    
    <p>If the input documents is having the file name <b>journalsindexed.xml</b> then it will be identified by <sourcexml>docinfo:lbu-subj[text()='INDEX']</sourcexml>.</p>

    <p><sourcexml>DIGESTDOC</sourcexml> becomes <targetxml>newsitem:newsitem</targetxml>. It's a
      root element for Linxplus - Article. The source attributes are:
        <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml>,
        <sourcexml>@xml:lang</sourcexml>, if present, suppress attribute and content, as a separate
      rule has been defined to populate <targetxml>newsitem:newsitem/@xml:lang</targetxml>.</p>

<pre>

&lt;DIGESTDOC ...&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="NZ"/&gt;
        ...
&lt;/DIGESTDOC&gt;
<b>Becomes</b>

&lt;newsitem:newsitem xml:lang="en-NZ"&gt;
      
      &lt;newsitem:head&gt;...&lt;/newsitem:head&gt;
      
      &lt;nitf:body&gt;...&lt;/nitf:body&gt;
      
      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;

&lt;/newsitem:newsitem&gt;
</pre>

    <p><targetxml>newsitem:head</targetxml>, <targetxml>nitf:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>newsitem:newsitem</targetxml></p>
    <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation elements.</note>
    <section>
      <title>Note:</title>
      <p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p>
      <p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml></p>
      <p>Copy source attributes to target attributes unless otherwise specified.</p>
      <p>Every example is represented like "EXAMPLE" in all the dita's and is captured under <pre>pre</pre> tag.</p>
    </section>

  <section>
    <title>Changes</title>
    <p>2014-01-15: <ph id="change_20140115">Added Source identification for <b>journalsindexed.xml</b> file, Webteam #: 249664, This change immediately applies to NZ07 Linxplus-Article.</ph></p>
  </section>
  </body>
  
	</dita:topic>
	
	<xsl:param name="outputSchemaLoc"
		select="'http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/ ../xsd/sch_newsitem.xsd'"/>

	<xsl:template match="DIGESTDOC">
		
		<!--  Original Target XPath:  newsitem:newsitem   -->
		<newsitem:newsitem>
			<xsl:call-template name="generateNSGlobalBindings"/>
			
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			
			<xsl:call-template name="xml_lang"/>
			<xsl:apply-templates select="@*"/>
			<xsl:choose>
				<xsl:when test="case:info | dig:body/dig:info/case:info">
					<newsitem:head>
						<xsl:apply-templates select="case:info | dig:body/dig:info/case:info"/>
					</newsitem:head>
				</xsl:when>
				<xsl:otherwise>
					<newsitem:head/>
				</xsl:otherwise>
			</xsl:choose>	
			<xsl:apply-templates select="node() except (docinfo)"/>
			<doc:metadata>
				<xsl:if test="dig:body/dig:info/jrnl:articleinfo/pubdate">
					<pubinfo:pubinfo>
						<xsl:apply-templates select="dig:body/dig:info/jrnl:articleinfo/pubdate"/>
					</pubinfo:pubinfo>
				</xsl:if>				
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</newsitem:newsitem>

	</xsl:template>
	
	

	

</xsl:stylesheet>