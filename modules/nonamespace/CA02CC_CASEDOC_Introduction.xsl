<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Case-Summaries_Introduction">
  <title>Introduction <lnpid>id-CA02CC-12434</lnpid></title>
  <shortdesc>This Conversion Instructions describes the conversion of the Rosetta CASEDOC DTD to
      <b>casedigest 8.0_PROD</b> schema.</shortdesc>
  <body>
    
    <p>CA Case Summaries samples are identified using the root element <sourcexml>CASEDOC</sourcexml> with attribute
      <sourcexml>CASEDOC/@type=”summary”</sourcexml>.</p>

    <section>
      <sourcexml>CASEDOC</sourcexml> becomes <targetxml>casedigest:casedigest</targetxml>. It's a
      root element of Case Digest schema. The source attribute <sourcexml>@xml:lang</sourcexml>, if
      present, can be dropped, as a separate rule has been defined to populate
        <targetxml>casedigest:casedigest/@xml:lang</targetxml> and <sourcexml>@type</sourcexml> is
      dropped because the distinction made by this attribute in source is handled by separate schema
      in NL. </section>
    <section>
      <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion
        except citation markup.</note>
      <pre>

&lt;CASEDOC type="summary"&gt;
  ...
  &lt;docinfo:doc-lang lang="en"/&gt;
  &lt;docinfo:doc-country iso-cc="CA"/&gt;
  ...          
&lt;/CASEDOC&gt;


          <b>Becomes</b>


&lt;casedigest:casedigest xml:lang="en-CA"&gt;
  ...
&lt;/casedigest:casedigest&gt;

      </pre>
      <note>Elements <targetxml>casedigest:head</targetxml>, <targetxml>casedigest:body</targetxml>
        and <targetxml>doc:metadata</targetxml> are created as required children of root element
          <targetxml>casedigest:casedigest</targetxml> during conversion</note>
      
      <note>If there is no head related information found in input document, then conversion
        will create an empty tag of <targetxml>casedigest:head</targetxml> in output.</note>
      
      <p><b>Note:</b></p>
      <p>Source elements and attributes are highlighted like this:
        <sourcexml>SOURCEXML</sourcexml></p>
      <p>Target elements and attributes are highlighted like this:
        <targetxml>TARGETXML</targetxml></p>
      <p>Copy source attributes to target attributes unless otherwise specified.</p>
      <p>Every example is represented like EXAMPLE in all the Conversion Instructions
        and is captured under <pre>pre</pre> tag.</p>
    </section>
  </body>

	</dita:topic>

	
 
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\Introduction.dita  -->
	
  <!-- Sudhanshu Srivatava : template to transform Casedoc to  casedigest:casedigest target schema-->
  <xsl:template match="CASEDOC">    
		<!--  Original Target XPath:  courtcase:courtcase   -->
		<casedigest:casedigest>
		  <xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:attribute name="xml:lang">
				<xsl:value-of select="concat(docinfo/docinfo:doc-lang/@lang,'-',docinfo/docinfo:doc-country/@iso-cc)"/>
			</xsl:attribute>
			<!--court:casehead-->
		    <xsl:apply-templates select="case:body/case:headnote"/>
		  <!--casedigest:body-->
		    <xsl:apply-templates select="case:body"/>
			<!--doc:metadata-->
		  <doc:metadata>
				<xsl:apply-templates select="docinfo"/>
		  </doc:metadata>
		</casedigest:casedigest>
	</xsl:template>

	<xsl:template match="@xml:lang"/>
	<xsl:template match="@type"/>
  <!-- Awantika-2017-11-27- Added parent::docinfo:custom-metafield in not condition as getting ambigious issue from module Rosetta_CAN_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.xsl
    on line number 74. Webstar# 7051426 -->
  <xsl:template match="@searchtype[not(parent::ci:cite or parent::docinfo:custom-metafield)]"/>
</xsl:stylesheet>