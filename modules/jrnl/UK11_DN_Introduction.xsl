<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
	xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" 
	xmlns:dig="http://www.lexis-nexis.com/glp/dig"
	xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
	xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/" 
	xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DN_Introduction">
  <title>Introduction <lnpid>id-UK11DN-29614</lnpid></title>
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
    	Newsitem Schema (Version 4.6 PROD).</b></p></section>

    <section>
      <title>Root Element</title>
      <p>
        <sourcexml>DIGESTDOC</sourcexml> becomes <targetxml>newsitem:newsitem</targetxml>. </p>
      <p><targetxml>newsitem:head</targetxml>, <targetxml>nitf:body</targetxml>, and
          <targetxml>doc:metadata</targetxml> are created as required children of
          <targetxml>newsitem:newsitem</targetxml>.</p>
    </section>

    <pre>
&lt;DIGESTDOC&gt;
<b>Becomes</b>
&lt;newsitem:newsitem&gt;
  &lt;newsitem:head&gt;...&lt;/newsitem:head&gt;
  &lt;nitf:body&gt;...&lt;/nitf:body&gt;
  &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/newsitem:newsitem&gt;
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
    	<p>2017-05-03: <ph id="change_20170503_RS">Updated schema version to 4.6 PROD.</ph></p>
      <p>2015-12-20: <ph id="change_20151220_jm2">Note that the following module has been added to
        the General Markup section: <sourcexml>p-limited</sourcexml> to <targetxml>p</targetxml>
        (id-CCCC-10419). RFA 2617.</ph></p>
      <p>2015-12-20: <ph id="change_20151220_jm">Updated schema version to 4.4 PROD.</ph></p>
      <p>2015-04-09: <ph id="change_20150409_jm2">Updated schema version to 4.1 PROD.</ph></p>
      <p>2015-04-09: <ph id="change_20150409_jm">Note that the following module has been added to
          the Metadata section:
            <sourcexml>classification/classitem[@classscheme="topic:topicReference"]</sourcexml> to
            <targetxml>classify:classification/classify:classitem/topic:topicReference</targetxml>
          (id-CCCC-10516). The data addition was announced in UK11-DN Audit Package Review.
          Subsequent R4.5 Board Item 2257.</ph></p>
      <p>2015-03-04: <ph id="change_20150304_jm">Note that the following module has been added to
          the Metadata section: <sourcexml>docinfo:dpsi[@id-string]</sourcexml> to
            <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
          (id-CCCC-10296). The data addition was announced in UK11-DN Audit Package Review Mar 3
          2015.</ph></p>
      <p>2014-10-16: <ph id="change_20141016_jm3">Updated schema version to 4.0 PROD.</ph></p>
      <p>2014-10-16: <ph id="change_20141016_jm2">Note that the following module has been added to
          the Metadata section: <sourcexml>docinfo:overview</sourcexml> to
            <targetxml>doc:overview</targetxml> (id-CCCC-10303). Data are new in Oct 2014
          redelivery. New target xpath. R4.5 Board Item 1970.</ph></p>
      <p>2014-10-16: <ph id="change_20141016_jm">Note that the following module has been added to
          the General Markup section: <sourcexml>figure</sourcexml> to <targetxml>figure</targetxml>
          (id-CCCC-10320). Data are new in Oct 2014 redelivery. New target xpath. R4.5 Board Item
          1971.</ph></p>
      <p>2014-08-18: <ph id="change_20140818_jm">Updated schema version to 3.9 PROD.</ph></p>
      <p>2014-08-17: <ph id="change_20140817_jm">Note that the following module has been added to
          the Metadata section: <sourcexml>docinfo:assoc-links</sourcexml> to
            <targetxml>doc:related-content</targetxml> (id-CCCC-10284). Responds to recently
          delivered data; Phase-5 Discussion Item 170.</ph></p>
      <p>2014-08-16: <ph id="change_20140816_jm">Note that the following module has been added to
          the General Markup section: <sourcexml>sup</sourcexml> to <targetxml>sup</targetxml>
          (id-CCCC-10474). Responds to recently delivered data; Phase-5 Discussion Item
        170.</ph></p>
      <p>2013-10-25: <ph id="change_20131025_jm">A Note about Oct 25 2013 CI release: The release
          incorporates updates to common instructions, particulary rules for table attributes
          morerows, colsep, rowsep (see webteams 235132 and 237774). There are no changes unique to
          UK11-DN.</ph>.</p>
      <p>2013-08-26: <ph id="change_20130826_jm">Updated schema version to 3.6 PROD</ph>.</p>
      <p>2013-07-01: <ph id="change_20130701_jm">Target Schema: Removed jrnl:articleinfo as a
          condition for Abstract target; replaced with jrnl:journalcite.</ph> Reason: In June 2013
        redelivery, jrnl:articleinfo was added to some newsitem files (to hold disclaimer and
        copyright for the news summary) so jrnl:articleinfo is no longer a distinguishing
        element.</p>
      <p>2013-07-01: <ph id="change_20130701_jhm">Updated schema version to 3.4 PROD</ph>.</p>
      <p>2013-06-10: <ph id="change_20130610_jm">Updated schema version to 3.3 PROD</ph>.</p>
      <p>2013-05-13: <ph id="change_20130513_jm">Updated schema version to 3.2 PROD</ph>.</p>
      <p>2013-04-09: <ph id="change_20130409_jm">Updated schema version to 3.0 PROD</ph>.</p>
      <p>2013-04-08: <ph id="change_20130408_jm">Added <sourcexml>otherinfo</sourcexml> as a
          condition requiring Abstract schema target</ph>.</p>
    </section>
  </body>
	</dita:topic>
	<xsl:param name="outputSchemaLoc"
		select="'http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/ sch_newsitem.xsd'"/>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DN-Digest-Newsitem\UK11_DN_Introduction.dita  -->
	

	<xsl:template match="DIGESTDOC">
		
		<!--<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>-->
		<!--  Original Target XPath:  courtcase:courtcase   -->
		<newsitem:newsitem>
			<xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
			<xsl:apply-templates select="@*"/>
			<xsl:if test="docinfo/docinfo:doc-lang">
				<xsl:call-template name="xml_lang"/>
			</xsl:if>
			<newsitem:head>
				<!-- Mandatory Element -->
				<xsl:comment>Mandatory Element</xsl:comment>
			  <xsl:if test="dig:cite">
			    <xsl:apply-templates select="@* | node()"/>
			  </xsl:if>
			</newsitem:head>
			
			<xsl:apply-templates select="dig:body"/>
			
			<doc:metadata>
			  <xsl:if test="dig:body/dig:info/pubdate">
			    <pubinfo:pubinfo>
			      <xsl:apply-templates select="dig:body/dig:info/pubdate"/>
			    	<xsl:apply-templates select="dig:body/dig:info/publication"/>
			    	<xsl:apply-templates select="dig:body/dig:info/jrnl:articleinfo"/>
			    	<xsl:apply-templates select="//copyright"/>
			    </pubinfo:pubinfo>
			  </xsl:if>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</newsitem:newsitem>
		
	</xsl:template>
	<!--<xsl:template match="XML&#xA;        SOURCE">

		<!-\-  Original Target XPath:  XMLTARGET   -\->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>-->

	<!--<xsl:template match="@month">

		<!-\-  Original Target XPath:  @month   -\->
		<xsl:attribute name="month">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@day">

		<!-\-  Original Target XPath:  @day   -\->
		<xsl:attribute name="day">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@year">

		<!-\-  Original Target XPath:  @year   -\->
		<xsl:attribute name="year">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>-->

	<!--<xsl:template match="jrnl:journalcite">
		
		<!-\-  Original Target XPath:  newsitem:newsitem   -\->
		<newsitem:newsitem>
			<xsl:apply-templates select="@* | node()"/>
		</newsitem:newsitem>
		
	</xsl:template>
	
	<xsl:template match="leg:officialname">
	
		<!-\-  Original Target XPath:  newsitem:newsitem   -\->
		<newsitem:newsitem>
			<xsl:apply-templates select="@* | node()"/>
		</newsitem:newsitem>
		
	</xsl:template>
	
	<xsl:template match="pubdate[@display-name=&#34;Issue Date&#34;]">
	
		<!-\-  Original Target XPath:  newsitem:newsitem   -\->
		<newsitem:newsitem>
			<xsl:apply-templates select="@* | node()"/>
		</newsitem:newsitem>
		
	</xsl:template>
	
	<xsl:template match="contrib[@contribtype=&#34;issuing-department&#34;]">
	
		<!-\-  Original Target XPath:  newsitem:newsitem   -\->
		<newsitem:newsitem>
			<xsl:apply-templates select="@* | node()"/>
		</newsitem:newsitem>
		
	</xsl:template>
	
	<xsl:template match="otherinfo">
	
		<!-\-  Original Target XPath:  newsitem:newsitem   -\->
		<newsitem:newsitem>
			<xsl:apply-templates select="@* | node()"/>
		</newsitem:newsitem>
		
	</xsl:template>-->
</xsl:stylesheet>