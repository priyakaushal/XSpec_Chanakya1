<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
  xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"
  xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
  xmlns:glp="http://www.lexis-nexis.com/glp"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  version="2.0">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CourtOrder_Introduction">
  <title>Introduction <lnpid>id-AU07-19234</lnpid></title>
  
  <body>
    <p>These Conversion Instructions describe the conversion of Rosetta CASEDOC DTD mark-up to Lexis
      Advance CourtOrder schema mark-up.</p>
    <p>    
      The root element <sourcexml>CASEDOC</sourcexml> with the attribute <sourcexml>CASEDOC @type="practicenote"</sourcexml> becomes 
      <targetxml>courtorder:courtorder</targetxml>. 
      
      <note>Please note that the value of the attribute <sourcexml>CASEDOC @type="practicenote"</sourcexml> should be treated as case-insensitive.</note>
      
      It is a root element for CourtOrder. The source attributes are described below: 
      <pre>
        &lt;CASEDOC type="practicenote"&gt;...
        &lt;/CASEDOC&gt;
        <b>Becomes</b>
        &lt;courtorder:courtorder&gt;...
        &lt;/courtorder:courtorder&gt;
      </pre> 
      
      <ul>    
        <li>
            The source attribute <sourcexml>CASEDOC @type</sourcexml> is dropped because the distinction made by this attribute in
            source is handled by separate schema in NL.
        </li>
        <li>
          
          <sourcexml>CASEDOC @xml:lang</sourcexml> becomes <targetxml>courtorder:courtorder @xml:lang</targetxml>
          <note>Please refer 'Target @xml:lang' for more details </note>
        </li>       
      </ul>
      
    </p>
    
    <pre>
      &lt;CASEDOC&gt;
      <b>Becomes</b>
      &lt;courtorder:courtorder&gt;
        &lt;courtorder:head&gt;...&lt;/courtorder:head&gt;
        &lt;courtorder:body&gt;...&lt;/courtorder:body&gt;
        &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
      &lt;/courtorder:courtorder&gt;
    </pre>
    
    <p>
      <targetxml>courtorder:head</targetxml>, <targetxml>courtorder:body</targetxml>, and
      <targetxml>doc:metadata</targetxml> are created as required children of
      <targetxml>courtorder:courtorder</targetxml>
    </p>
    
    <section>
      <title>Note:</title>
      <p>Source elements and attributes are highlighted like this: <sourcexml>XML
        SOURCE</sourcexml></p>
      <p>Target elements and attributes are highlighted like this: <targetxml>XML
        TARGET</targetxml></p>
      <p>COPY SOURCE ATTRIBUTES TO TARGET ATTRIBUTES UNLESS OTHERWISE SPECIFIED.</p>
      <p>Every example is represented like "EXAMPLE" in all the dita's and is
        coming under <pre> </pre> tag.</p>      
    </section>      
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\AU07_CourtOrder_Introduction.dita  -->

  <xsl:param name="outputSchemaloc" select="'urn:x-lexisnexis:content:courtorder:sharedservices:1 sch_courtorder.xsd'"/>

	<xsl:template match="/CASEDOC">
	  <xsl:choose>
	    <xsl:when test="not(lower-case(@type)='practicenote')">
	      <xsl:call-template name="outputErrorMessage">
	        <xsl:with-param name="messageText" as="xs:string" select=" 'CASEDOC/@type has unexpected value. Value should be practicenote.'"/>
	        <xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
	        <xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
	        <xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/> </xsl:with-param>
	      </xsl:call-template>
	    </xsl:when>
	    <xsl:otherwise>
	      <courtorder:courtorder>
	        <xsl:call-template name="generateNSGlobalBindings"/>
	        <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaloc"/>
	        <xsl:apply-templates select="@*"/>
	        <xsl:call-template name="xml_lang"/>
	        <xsl:apply-templates select="case:body/case:headnote"/>
	        <xsl:if test="not(case:body/case:headnote) and case:body/heading">
	          <courtorder:head>
	            <xsl:apply-templates select="case:body/heading//refpt"/>
	            <xsl:apply-templates select="case:body/heading"/>
	          </courtorder:head>
	        </xsl:if>
	        <xsl:apply-templates select="case:body"/>
	        <doc:metadata>	          
	          <xsl:apply-templates select="case:body/case:content/glp:note/blockquote/p/text/copyright" mode="pubinfo"/>	          
	          <xsl:apply-templates select="docinfo"/>
	        </doc:metadata>
	      </courtorder:courtorder>
	    </xsl:otherwise>    
	  </xsl:choose>
	</xsl:template>

  <xsl:template match="CASEDOC/@type | case:disposition |CASEDOC/@xml:lang"/>



</xsl:stylesheet>