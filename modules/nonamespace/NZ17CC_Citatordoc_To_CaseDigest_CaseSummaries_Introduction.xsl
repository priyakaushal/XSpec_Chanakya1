<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	version="2.0" exclude-result-prefixes="dita docinfo ci xs source_cttr case xsi">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CaseSummaries_Introduction">
  <title>Introduction <lnpid>id-NZ17CC-25823</lnpid></title>

  <body>
    <p>This Conversion Instruction describes the conversion of Rosetta CITATORDOC DTD to casedigest
      8.7 PROD schema in the document.</p>    
    <p>Case Summaries documents are identified using the root element <sourcexml>CITATORDOC</sourcexml> with attribute <sourcexml>@journalarticle="false"</sourcexml> and the value of <sourcexml>docinfo:selector</sourcexml> should be <b>digest</b>.</p>

    <p><sourcexml>CITATORDOC[journalarticle="false"]</sourcexml> becomes <targetxml>casedigest:casedigest</targetxml>. Its a root element for Case Summaries. The source attribute is: <sourcexml>citatordoctype</sourcexml>. If present, suppress this attribute and its content.
   </p>
    
    <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>

<pre>

&lt;CITATORDOC citatordoctype="bcl" journalarticle="false" xml:lang="en-NZ"&gt;
        ...
        &lt;docinfo:doc-lang lang="en"/&gt;
        &lt;docinfo:doc-country iso-cc="NZ"/&gt;
        ...
&lt;/CASEDOC&gt;
<b>Becomes</b>

&lt;casedigest:casedigest xml:lang="en-NZ"&gt;
      
      &lt;casedigest:head&gt;...&lt;/casedigest:head&gt;

      &lt;casedigest:body&gt;...&lt;/casedigest:body&gt;

      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      
&lt;/casedigest:casedigest&gt;
</pre>

    <p><targetxml>casedigest:head</targetxml>, <targetxml>casedigest:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>casedigest:casedigest</targetxml></p>

    <section>
      <title>Note:</title>
      <p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p>
      <p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml></p>
      <p>Copy source attributes to target attributes unless otherwise specified.</p>
      <p>Every example is represented like "EXAMPLE" in all the dita's and is captured
        under <pre>pre</pre>  tag.</p>
    </section>
  </body>

	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\CaseSummaries_Introduction.dita  -->

	<xsl:param name="outputSchemaloc" select="'http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/ sch_casedigest.xsd'"/>

	<xsl:template match="CITATORDOC">
		<xsl:choose>
			<!-- 2 potential error conditions -->
			<xsl:when test="not(@journalarticle='false')">
				<xsl:call-template name="outputErrorMessage">
					<xsl:with-param name="messageText" as="xs:string" select=" 'CITATORDOC/@journalarticle has unexpected value. Value should be false.'"/>
					<xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
					<xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
					<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
				</xsl:call-template>				
			</xsl:when>
			<!--<xsl:when test="not(docinfo/docinfo:selector[.='digest'])">
				<xsl:call-template name="outputErrorMessage">
					<xsl:with-param name="messageText" as="xs:string" select=" 'docinfo:selector has unexpected value. Value should be digest.'"/>
					<xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
					<xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
					<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
				</xsl:call-template>
			</xsl:when>-->
			<xsl:otherwise>
				<casedigest:casedigest>
					<xsl:call-template name="generateNSGlobalBindings"/>
					<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaloc"/>
					<xsl:apply-templates select="@* except @citatordoctype"/>					
					<xsl:call-template name="xml_lang"/>
					<xsl:apply-templates select="source_cttr:body/case:headnote"/>					
					<xsl:apply-templates select="source_cttr:body"/>					
					<doc:metadata>
						<xsl:apply-templates select="docinfo"/>
					</doc:metadata>
				</casedigest:casedigest>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	
	<xsl:template match="*[not(self::ci:*)]/@searchtype | CITATORDOC/@journalarticle | CITATORDOC/@xml:lang"/>
</xsl:stylesheet>