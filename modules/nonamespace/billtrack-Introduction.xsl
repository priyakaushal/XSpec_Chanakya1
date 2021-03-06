<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:billtrack="urn:x-lexisnexis:content:billtracking:1" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:dig="http://www.lexis-nexis.com/glp/dig"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	version="2.0" exclude-result-prefixes="dita docinfo xs dig leg xsi">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="billtrack-Introduction">
  <title>Introduction <lnpid>id-AU12-20209</lnpid></title>
  
  <shortdesc>This Conversion Instruction describes the conversion of the Rosetta DIGESTDOC DTD to
    billtrack 2.8 PROD schema in the document.</shortdesc>
  
  <body>
    <section><title>Root Element</title>
      
      <p>
        <sourcexml>DIGESTDOC</sourcexml> or <sourcexml>DIGESTDOC[@type="bill"]</sourcexml> becomes <targetxml>billtrack:billtrack</targetxml> and is the root element for Billtrack, attributes
        are populated as follows:
        <sourcexml>DIGESTDOC[@id]</sourcexml> becomes <targetxml>billtrack:billtrack[@xml:id]</targetxml> and provides a unique identifier for this
        element. The presence or absence of attribute value will not affect delivery product behavior and default value is 'none'. 
        <note>All the Billtrack documents will be identified using the root element <sourcexml>DIGESTDOC</sourcexml> and <sourcexml>docinfo:selector</sourcexml> having value as "bill" (case-sensitive). If a file does not have <sourcexml>docinfo:selector</sourcexml> with value "bill" it is a status file for a jurisdiction. (Such files will also have filename "XXXX_STATUS.xml") 
           and it will be identified only by root <sourcexml>DIGESTDOC</sourcexml>.</note> 
        
        <codeblock>
          &lt;DIGESTDOC id="CTH_BIL_2008-31"&gt; 
        
        <b>becomes</b> 
        
        &lt;billtrack:billtrack xml:id="CTH_BIL_2008-31"&gt; 
        </codeblock>
        
       <codeblock>
         &lt;DIGESTDOC id="VIC_BIL_2013-28" type="bill"&gt; 
        
        <b>becomes</b> 
        
        &lt;billtrack:billtrack xml:id="VIC_BIL_2013-28"&gt;
       </codeblock> 
    
      </p>                
      
      
      <p>
        <targetxml>billtrack:head</targetxml>, <targetxml>billtrack:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as
        required children of <targetxml>billtrack:billtrack</targetxml>
      </p>
      
      <p>
        The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion except for the citation element.
      </p>
      
    </section>
    <section>
      <title>Notes</title>
      <p>The following information is meant to help the user understand the conventions used in this document.</p>
      <p>Source elements and attributes are highlighted like this: <sourcexml>XML SOURCE</sourcexml></p>
      <p>Target elements and attributes are highlighted like this: <targetxml>XML TARGET</targetxml></p>
      <p>Verify content of following target attributes: 
        <ul>
          <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12. Any numbers
            outside this range, do not output a <targetxml>@month</targetxml>.</li>
          <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any numbers outside
            this range, do not output <targetxml>@day</targetxml>.</li>
          <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in length. Any other
            lengths, do not output <targetxml>@year</targetxml>.</li>
        </ul>
      </p>
    </section>
    <section>
      <title>Changes</title>     
      <p>2013-09-10: <ph id="change_20130910_vv">Instruction and example added for handling DIGESTDOC[@type="bill"]</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU12_Bill_Tracking\billtrack-Introduction.dita  -->

	<xsl:param name="outputSchemaloc" select="'urn:x-lexisnexis:content:billtracking:1 sch_billtrack.xsd'"/>
	<xsl:template match="DIGESTDOC">
		<billtrack:billtrack>	
		  <xsl:for-each select="$lexisAdvNamespaces/*">
		    <xsl:sort/>
		    <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
		  </xsl:for-each>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaloc"/>
			<xsl:apply-templates select="@id"/>
			<xsl:call-template name="xml_lang"/>
			<billtrack:head>
				<xsl:apply-templates select="dig:body/dig:info/leg:info/leg:juris"/>
			</billtrack:head>					
			<xsl:apply-templates select="dig:body"/>
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</billtrack:billtrack>

	</xsl:template>

<xsl:template match="DIGESTDOC/@id" priority="2">
  <!-- we're suppressing the known matching refpt so this should be pretty safe -->
  <xsl:attribute name="xml:id">
    <xsl:call-template name="normalizeIdString"/>
  </xsl:attribute>
</xsl:template>
	

</xsl:stylesheet>