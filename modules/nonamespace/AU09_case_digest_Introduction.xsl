<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case" 
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Introduction">
  <title>Introduction <lnpid>id-AU09-19612</lnpid></title>
  <shortdesc>This Conversion Instructions describes the conversion of the Rosetta CASEDOC DTD to
    <b>Case Digest V 8.7_PROD</b> schema.</shortdesc>
  <body>
    
    <p>AU Case Digest samples are identified using the root element <sourcexml>CASEDOC</sourcexml> with attribute
      <sourcexml>CASEDOC/@type=”summary”</sourcexml>.</p>
    
    <p>Handling of element <sourcexml>refpt</sourcexml>: As <sourcexml>refpt</sourcexml> has to be converted to <targetxml>ref:anchor</targetxml> and <targetxml>xml:id</targetxml> can stay as long as it does not duplicate. 
      If it duplicates with <targetxml>ref:anchor/@id</targetxml>, remove the <targetxml>@xml:id</targetxml> and retain <targetxml>ref:anchor</targetxml> with all it's conversion in output.</p>
    <p>Documents mapped to the Case Digest schema are tagged using the Rosetta Casedoc.DTD. These are not full text opinions but instead are summaries or digests of opinions.</p>
    
    <p>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.</p>
    <section>
      <sourcexml>CASEDOC</sourcexml> becomes <targetxml>casedigest:casedigest</targetxml>. It's a root element of Case Digest. The source attribute <sourcexml>@xml:lang</sourcexml>, if present, can be dropped, as a separate rule has been defined to populate <targetxml>casedigest:casedigest/@xml:lang</targetxml> and <sourcexml>@type</sourcexml> is dropped because the distinction made by this attribute in source is handled by separate schema in NL. <pre>
          &lt;CASEDOC type="summary" xml:lang="en-AU"&gt;
                      ...
                      &lt;docinfo:doc-lang lang="en"/&gt;
                      &lt;docinfo:doc-country iso-cc="AU"/&gt;
                      ...          
                   &lt;/CASEDOC&gt;
          <b>Becomes</b>
              &lt;casedigest:casedigest xml:lang="en-AU"&gt;
                        ...
                       &lt;/casedigest:casedigest&gt;
      </pre>
      
      <note>Not all casedoc sources become casedigest -- some become courtcase. <sourcexml>casedoc/@type="summary"</sourcexml> becomes <targetxml>casedigest:casedigest</targetxml>. There may be some <sourcexml>casedoc/@type="practicenote"</sourcexml> that should use the case digest schema until Australia changes their conversion so that <sourcexml>casedoc/@type="practicenote"</sourcexml> always uses the court order schema.</note>

      <p><b>Note:</b></p><p>Source elements and attributes are highlighted like this:
          <sourcexml>SOURCE XML</sourcexml></p><p>Target elements and attributes are highlighted
        like this: <targetxml>TARGET XML</targetxml></p><p>Copy source attributes to target
        attributes unless otherwise specified.</p><p>Every example is represented like
        EXAMPLE in all the Conversion Instructions and is captured under <pre>pre</pre>
        tag.</p></section>
  </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU09_case_digest\Introduction.dita  -->
	<!--<xsl:message>AU09_case_digest_Introduction.xsl requires manual development!</xsl:message>--> 
	<xsl:param name="outputSchemaLoc"
		select="'http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/ casedigest.xsd'"/>
	
	<xsl:template match="CASEDOC[@type='summary' or 'practicenote']">
		<!--  Original Target XPath:  courtcase:courtcase   -->
		<casedigest:casedigest>
			<xsl:call-template name="generateNSGlobalBindings"/>
			
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:call-template name="xml_lang"/>
			<xsl:apply-templates select="@*"/>
			<casedigest:head>
				<xsl:apply-templates select="case:body/case:headnote/case:info"/>
			</casedigest:head>
			
			<xsl:apply-templates select="case:body"/>
			
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</casedigest:casedigest>
		
	</xsl:template>
	<xsl:template match="@type"/>
	<xsl:template match="@xml:lang"/>
<!-- JL: removed docinfo:doc-id empty template to implement generic version -->
	
</xsl:stylesheet>