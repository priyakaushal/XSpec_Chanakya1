<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	
xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
xmlns:case="http://www.lexis-nexis.com/glp/case"
xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CaseSummaries_Introduction">
  <title>Introduction <lnpid>id-NZ17CA-25612</lnpid></title>

  <body>
    <p>This Conversion Instruction describes the conversion of Rosetta CITATORDOC DTD to Abstract
      4.1_BETA schema in the document.</p>
        
    <p>Case Summaries documents are identified using the root element <sourcexml>CITATORDOC</sourcexml> with attribute
      <sourcexml>@journalarticle="true"</sourcexml>, the value of <sourcexml>docinfo:hier/docinfo:hierlev/heading/title</sourcexml> should be <b>Articles</b>, 
      <sourcexml>docinfo:doc-country/@iso-cc=”NZ”</sourcexml> and the value of <sourcexml>docinfo:selector</sourcexml> should be <b>Digest</b>.</p>
    
    <p><sourcexml>CITATORDOC[journalarticle="true"]</sourcexml> becomes <targetxml>abstract:abstract</targetxml>. It's a root element for Case Summaries. The source 
      attribute <sourcexml>@citatordoctype</sourcexml> should be suppressed from conversion.
   </p>
    
    <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>

<pre>

&lt;CITATORDOC citatordoctype="bcl" journalarticle="true" xml:lang="en-NZ"&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="NZ"/&gt;
        ...
&lt;/CASEDOC&gt;
<b>Becomes</b>

&lt;abstract:abstract xml:lang="en-NZ"&gt;
      
      &lt;abstract:head&gt;...&lt;/abstract:head&gt;

      &lt;abstract:body&gt;...&lt;/abstract:body&gt;

      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/abstract:abstract&gt;
</pre>

    <p><targetxml>abstract:head</targetxml>, <targetxml>abstract:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required 
      children of <targetxml>abstract:abstract</targetxml>.</p>

    <section>
      <title>Note:</title>
      <p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p>
      <p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml></p>
      <p>Copy source attributes to target attributes unless otherwise specified.</p>
      <p>Every example is represented like "EXAMPLE" in all the dita's and is captured under <pre>pre</pre>  tag.</p>
    </section>
  </body>

	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\CaseSummaries_Introduction.dita  -->
	 
	<!-- Sudhanshu Srivastava:
	 	  Edited on : 22 Aug 2017.
	 	  Comments : This is introduction module converting source citatordoc[@journalarticle='true'] to 'abstract:abstract' in the output result.
	 -->

	<xsl:template match="CITATORDOC[@journalarticle='true']">
		<!--  Original Target XPath:  abstract:abstract   -->
		<abstract:abstract>
			<xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:attribute name="xml:lang" select="concat(docinfo/docinfo:doc-lang/@lang, '-', docinfo/docinfo:doc-country/@iso-cc)"/>
			<!-- Head Part -->
			<abstract:head>
				<xsl:apply-templates select="source_cttr:body/case:headnote"/>
			</abstract:head>
			<!-- Body Part -->
			<abstract:body>
			<!--	<xsl:apply-templates select="cttr:body except cttr:annotations"/>
				<xsl:apply-templates select="cttr:body/cttr:content/cttr:annotations/cttr:annot/case:references"/>-->
				
				<xsl:apply-templates select="source_cttr:body"/>
			</abstract:body>
			<!-- Meta Part -->
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</abstract:abstract>
	</xsl:template>

	<xsl:template match="CITATORDOC/@citatordoctype" priority="2"/>

	<xsl:template match="@searchtype[not(parent::ci:cite)]"/>
</xsl:stylesheet>