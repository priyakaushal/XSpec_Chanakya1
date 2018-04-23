<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
  xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:comm="http://www.lexis-nexis.com/glp/comm" 
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" 
  version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_Introduction">
  <title>Introduction <lnpid>id-UK12-29815</lnpid></title>

  <body>
    <p>These instructions describe the conversion of documents from the Rosetta COMMENTARYDOC DTD to
      the NewLexis Seclaw 8.29 PROD Schema.</p>
    <p>The data stream is UK12 Treatise.</p>
    <p><b>Root Element</b></p>
    <p>
      <sourcexml>COMMENTARYDOC</sourcexml> becomes
        <targetxml>seclaw:seclaw[@seclawtype="treatise"]</targetxml>. </p>
    <p><targetxml>seclaw:head</targetxml>, <targetxml>seclaw:body</targetxml>, and
        <targetxml>doc:metadata</targetxml> are created as required children of
        <targetxml>seclaw:seclaw</targetxml>.</p>

    <pre>
&lt;COMMENTARYDOC&gt;
    ...
&lt;/COMMENTARYDOC&gt;

<b>BECOMES</b>
      
&lt;seclaw:seclaw seclawtype="treatise"&gt;
  &lt;seclaw:head&gt;...&lt;/seclaw:head&gt;
  &lt;seclaw:body&gt;...&lt;/seclaw:body&gt;
  &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/seclaw:seclaw&gt;
</pre>
    <section>
      <title>Notes</title>
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
      <p>2017-09-08: <ph id="change_20170908_RS">Updated schema version to 8.29 PROD.</ph></p>
      <p>2017-07-20: <ph id="change_20170720_RS">Updated schema version to 8.27 PROD.</ph></p>
      <p>2017-07-18: <ph id="change_20170718_RS">Updated schema version to 8.26 PROD.</ph></p>
      <p>2017-06-08: <ph id="change_20170608_RS">Updated schema version to 8.24 PROD.</ph></p>
      <p>2017-05-03: <ph id="change_20170503_SS">Updated schema version to 8.23 PROD.</ph></p>
      <p>2017-01-25: <ph id="change_20170125_jm">Updated schema version to 8.19 PROD.</ph></p>
      <p>2016-10-28: <ph id="change_20161028_jm">Updated schema version to 8.17 PROD.</ph></p>
      <p>2016-10-04: <ph id="change_20161004_jm">Updated schema version to 8.16 PROD.</ph></p>
      <p>2016-06-14: <ph id="change_20160614_jm2">Updated schema version to 8.13 PROD.</ph></p>
      <p>2016-06-14: <ph id="change_20160614_jm">Note that the following module has been added to
          the General Markup section: <sourcexml>pnum</sourcexml> to <targetxml>desig</targetxml>
          (id-CCCC-10434).</ph>.</p>
      <p>2016-02-29: <ph id="change_20160229_jm">Updated schema version to 8.9 PROD.</ph></p>
      <p>2015-12-23: <ph id="change_20151223_jm">Updated schema version to 8.7 PROD.</ph></p>
      <p>2015-05-14: <ph id="change_20150514_jm2">Updated schema version to 8.5 PROD.</ph></p>
      <p>2015-05-14: <ph id="change_20150514_jm">Administrative. The following has been removed from
          General Markup section: 6.36.2. <sourcexml>page</sourcexml> with an ancestor of
            <sourcexml>entry</sourcexml> to <targetxml>ref:page</targetxml> (id-CCCC-10425). The
          markup does not occur in UK12. Would never have been coded. The change is strictly
          housekeeping.</ph></p>
      <p>2015-03-13: <ph id="change_20150313_jm">Updated schema version to 8.3 PROD.</ph></p>
      <p>2015-03-12: <ph id="change_20150312_jm">Note that modules for handling
            <sourcexml>p-limited</sourcexml> have been added to the General Markup section. Markup
          is new in recent rosetta delivery. R4.5 Content Issue 2230.</ph></p>
      <p>2015-03-04: <ph id="change_20150304_jm">Note that the following module has been added to
          the Metadata section:
            <sourcexml>classification/classitem[@classscheme="topic:topicReference"]</sourcexml> to
            <targetxml>classify:classification/classify:classitem/topic:topicReference</targetxml>
          (id-CCCC-10516). The data addition was announced in UK14 Audit Package Review Mar 3
          2015.</ph></p>
      <p>2015-02-10: <ph id="change_20150210_jm">Updated schema version to 8.2 PROD</ph>.</p>
      <p>2015-01-07: <ph id="change_20150107_jm">Note that the following module has been added to
          the Metadata section: <sourcexml>docinfo:overview</sourcexml> to
            <targetxml>doc:overview</targetxml> (id-CCCC-10303). Data are new in Dec 2014
          redelivery. New target xpath. R4.5 Content Issue 2114.</ph>.</p>
      <p>2014-10-20: <ph id="change_20141020_jm">Updated schema version to 8.1 PROD</ph>.</p>
      <p>2014-09-15: <ph id="change_20140915_jm">Updated schema version to 8.0 PROD</ph>.</p>
      <p>2014-09-02: <ph id="change_20140902_jm">Updated schema version to 7.13 PROD</ph>.</p>
      <p>2014-04-17: <ph id="change_20140417_jm">Updated schema version to 7.10 PROD</ph>.</p>
      <p>2014-03-20: <ph id="change_20140320_jm">Note that common rule for <xref href="../../common_newest/Rosetta_figure-LxAdv-figure.dita">"<sourcexml>figure</sourcexml> to <targetxml>figure</targetxml>"</xref> has been
          added to the General Markup section. Reflects new data in Mar 2014 redelivery. Known to
          occur in dpsi 041J and 04M3. Means new target xpath. Phase 6 UK Discussion Board Item 77.
          Webteam 252434.</ph>.</p>
      <p>2014-03-19: <ph id="change_20140319_jm">Note that common rule for <xref href="../../common_newest/Rosetta_sigblock-LxAdv-sigblock.dita">"<sourcexml>sigblock</sourcexml> to <targetxml>sigblock</targetxml>"</xref> has been
          added to the General Markup section. Reflects new data in Mar 2014 redelivery. Known to
          occur in dpsi 02GS. Means new target xpath. Phase 6 UK Discussion Board Item 76. Webteam
          252434.</ph>.</p>
      <p>2014-03-18: <ph id="change_20140318_jm">Note that common rule for <xref href="../../common_newest/Rosetta_pgrp-LxAdv-pgrp.dita">"<sourcexml>pgrp</sourcexml> to
              <targetxml>pgrp</targetxml>"</xref> has been added to the General Markup section.
          Reflects new data in Mar 2014 redelivery. Known to occur in dpsi 02GS. Means new target
          xpath. Phase 6 UK Discussion Board Item 74. Webteam 252434.</ph>.</p>
      <p>2014-03-17: <ph id="change_20140317_jm">Updated schema version to 7.9 PROD</ph>.</p>
      <p>2014-01-13: <ph id="change_20140113_jm">Note that common rule for <xref href="../../common_newest/Rosetta_credit-LxAdv-credit.dita">"<sourcexml>credit</sourcexml> to <targetxml>credit</targetxml>"</xref> has been
          added to the General Markup section. Reflects new data in Jan 2014 redelivery, dpsi 02H1.
          Means new target xpath. Phase 6 UK Discussion Board Item 65. Webteam 248201.</ph>.</p>
      <p>2013-11-13: <ph id="change_20131113_jm">Updated schema version to 7.8 PROD</ph>.</p>
      <p>2013-10-31: <ph id="change_20131031_jm">Updated schema version to 7.6 PROD</ph>.</p>
      <p>2013-09-12: <ph id="change_20130912_jm">Updated schema version to 7.4 PROD</ph>.</p>
      <p>2013-07-12: <ph id="change_20130712_jm">Updated schema version to 7.3 PROD</ph>.</p>
      <p>2013-06-12: <ph id="change_20130612_jm">Updated schema version to 7.0 PROD</ph>.</p>
      <p>2013-05-13: <ph id="change_20130513_jm">Updated schema version to 6.3 PROD</ph>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_introduction.dita  -->
<!--	<xsl:message>UK12_Treatise_introduction.xsl requires manual development!</xsl:message> -->

	<xsl:template match="COMMENTARYDOC">    
		<!--  Original Target XPath:  courtcase:courtcase   -->
		<xsl:element name="seclaw:seclaw">
		  <xsl:call-template name="generateNSGlobalBindings"/>
			<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>			
			<xsl:attribute name="xml:lang">
				<xsl:value-of select="$xml_lang"/>
			</xsl:attribute>
			<xsl:attribute name="seclawtype" select="'treatise'"/>
			
			<!-- abstract:head  -->
			<xsl:element name="seclaw:head">
			  <xsl:apply-templates select="docinfo/docinfo:normcite"/>
			</xsl:element>
			
			<!-- abstract:body    -->
			<xsl:apply-templates select="comm:body"/>
			
			<!-- doc:metadata   -->
			<xsl:element name="doc:metadata">        
				<xsl:apply-templates select="docinfo"/>
			</xsl:element>
		</xsl:element>
		
	</xsl:template>
</xsl:stylesheet>