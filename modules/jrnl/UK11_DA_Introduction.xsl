<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:dig="http://www.lexis-nexis.com/glp/dig"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" 
  xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo jrnl leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_Introduction">
  <title>Introduction <lnpid>id-UK11DA-29423</lnpid></title>
  <body>
    <section><title>Target Schema</title><p>Content stream UK11-Digests converts to abstract or
        newsitem schema based on elements within the document.</p>
      <p>Abstract schema is target when any of the following is present:
          <sourcexml>jrnl:journalcite</sourcexml>, <sourcexml>leg:officialname</sourcexml>,
          <sourcexml>pubdate[@display-name="Issue Date"]</sourcexml>,
          <sourcexml>contrib[@contribtype="issuing-department"]</sourcexml>, or
          <sourcexml>otherinfo</sourcexml>.</p>
      <p>Otherwise Newsitem schema is target.</p></section>

    <section><p><b>This Conversion Instruction describes the conversion of Rosetta DIGESTDOC to
      Abstract Schema (Version 1.0 PROD).</b></p></section>

    <section>
      <title>Root Element</title>
      <p>
        <sourcexml>DIGESTDOC</sourcexml> becomes <targetxml>abstract:abstract</targetxml>. </p>
      <p><targetxml>abstract:head</targetxml>, <targetxml>abstract:body</targetxml>, and
          <targetxml>doc:metadata</targetxml> are created as required children of
          <targetxml>abstract:abstract</targetxml>.</p>
    </section>

    <pre>
&lt;DIGESTDOC&gt;
<b>Becomes</b>
&lt;abstract:abstract&gt;
  &lt;abstract:head&gt;...&lt;/abstract:head&gt;
  &lt;abstract:body&gt;...&lt;/abstract:body&gt;
  &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/abstract:abstract&gt;
</pre>
    <section>
      <title>Notes</title>
      <p>The following information is meant to help the user understand the conventions used in this
        document.</p>
      <p>Source elements and attributes are highlighted like this: <sourcexml>XML
        SOURCE</sourcexml></p>
      <p>Target elements and attributes are highlighted like this: <targetxml>XML
        TARGET</targetxml></p>
      <p>Verify content of following target attributes: <ul>
          <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between 01-12.
            Any numbers outside this range, do not output a <targetxml>@month</targetxml>.</li>
          <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31. Any
            numbers outside this range, do not output <targetxml>@day</targetxml>.</li>
          <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in
            length. Any other lengths, do not output <targetxml>@year</targetxml>.</li>
        </ul>
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2017-05-03: <ph id="change_20170503_RS">Updated schema version to 1.0 PROD.</ph></p>
      <p>2016-01-05: <ph id="change_20160105_jm">Note that the following module has been added to
        the General Markup section: <sourcexml>sup</sourcexml> to <targetxml>sup</targetxml>
        (id-CCCC-10474). RFA 2684.</ph></p>
      <p>2015-12-20: <ph id="change_20151220_jm">Note that the following module has been added to
          the General Markup section: <sourcexml>p-limited</sourcexml> to <targetxml>p</targetxml>
          (id-CCCC-10419). RFA 2617.</ph></p>
      <p>2015-05-19: <ph id="change_20150519_jm">Note that the following module has been added to
          the Metadata section: <sourcexml>docinfo:assoc-links</sourcexml> to
            <targetxml>doc:related-content</targetxml> (id-CCCC-10284). Data are new in recent
          Rosetta delivery. New target xpath. R4.5 Content Issue 2323.</ph></p>
      <p>2015-03-04: <ph id="change_20150304_jm">Note that the following module has been added to
          the Metadata section: <sourcexml>docinfo:dpsi[@id-string]</sourcexml> to
            <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
          (id-CCCC-10296). The data addition was announced in UK11-DA Audit Package Review Mar 3
          2015.</ph></p>
      <p>2014-10-14: <ph id="change_20141014_jm2">Updated schema version to 4.1 Beta</ph>.</p>
      <p>2014-10-14: <ph id="change_20141014_jm">Note that the following module has been added to
          the Metadata section: <sourcexml>docinfo:overview</sourcexml> to
            <targetxml>doc:overview</targetxml> (id-CCCC-10303). Data are new in Oct 2014
          redelivery. New target xpath. R4.5 Board Item 1959.</ph>.</p>
      <p>2013-10-30: <ph id="change_20131030_jm">Updated schema version to 3.11 Beta</ph>.</p>
      <p>2013-09-17: <ph id="change_20130917_jm">Updated schema version to 3.10 Beta</ph>.</p>
      <p>2013-08-30: <ph id="change_20130830_jm">Updated schema version to 3.9 Beta</ph>.</p>
      <p>2013-07-31: <ph id="change_20130731_jm">Updated schema version to 3.8 Beta</ph>.</p>
      <p>2013-07-26: <ph id="change_20130726_jm">Updated schema version to 3.6 Beta</ph>.</p>
      <p>2013-07-01: <ph id="change_20130701_jm">Target Schema: Removed jrnl:articleinfo as a
          condition for Abstract target; replaced with jrnl:journalcite.</ph> Reason: In June 2013
        redelivery, jrnl:articleinfo was added to some newsitem files (to hold disclaimer and
        copyright for the news summary) so jrnl:articleinfo is no longer a distinguishing
        element.</p>
      <p>2013-06-10: <ph id="change_20130610_jm">Updated schema version to 3.5 Beta</ph>.</p>
      <p>2013-05-13: <ph id="change_20130513_jm">Updated schema version to 3.3 Beta</ph>.</p>
      <p>2013-04-09: <ph id="change_20130409_jm">Updated schema version to 3.1 Beta</ph>.</p>
      <p>2013-04-08: <ph id="change_20130408_jm">Added <sourcexml>otherinfo</sourcexml> as a
          condition requiring Abstract schema target</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_Introduction.dita  -->
	
	
	<!--Vikas Rohilla : Template to match the root element DIGESTDOC nad create the target abstract:abstract 	-->
	<xsl:template match="DIGESTDOC">    
		<!--  Original Target XPath:  courtcase:courtcase   -->
		<xsl:element name="abstract:abstract" >
		  <xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>			
			<xsl:attribute name="xml:lang">
				<xsl:value-of select="$xml_lang"/>
			</xsl:attribute>
			
			<!-- abstract:head  -->
			<xsl:element name="abstract:head">
				<xsl:apply-templates select="dig:body/dig:info/dig:cite|
											 dig:body/dig:info/dig:type|
											 dig:body/dig:info/leg:info/leg:dates|
											 dig:body/dig:info/leg:info/leg:govoffice|
											 dig:body/dig:info/leg:info/leg:categories"/>			
			</xsl:element>
			
			<!-- abstract:body    -->
			<xsl:apply-templates select="dig:body"/>
			
			<!-- doc:metadata   -->
			<xsl:element name="doc:metadata">
				<xsl:element name="pubinfo:pubinfo">
				  <xsl:apply-templates select="dig:body/dig:info/pubdate[@display-name='Published Date']|
				                               dig:body/dig:review"/>
				</xsl:element>        
				<xsl:apply-templates select="docinfo"/>
			</xsl:element>
		</xsl:element>
		
	</xsl:template>
	
	
	
	<!-- supressed the @type  -->
	<xsl:template match="DIGESTDOC/@type"/>
	

	

</xsl:stylesheet>