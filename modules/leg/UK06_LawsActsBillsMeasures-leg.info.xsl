<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"  xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"
xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"  
xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"	
xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita leg docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.info">
  <title>leg:info <lnpid>id-UK06-28025</lnpid></title>
  <body>
    <section>
        <p><sourcexml>leg:info</sourcexml> becomes <targetxml>legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> and attribute <sourcexml>@subseqdoc</sourcexml> will be suppressed from conversion. And populated as below:
        <note>Conversion should not create adjacent <targetxml>primlawinfo:primlawinfo</targetxml>. Data should be merged to single <targetxml>primlawinfo:primlawinfo</targetxml>.</note>
        </p>
      <note>When <sourcexml>leg:info</sourcexml> contains <b>only</b> one or more of these child elements: <ul>
        <li><sourcexml>leg:dates</sourcexml> (that becomes <targetxml>primlaw:prelim/primlawinfo:primlawinfo/primlaw:dates</targetxml>, see <xref href="UK06_LawsActsBillsMeasures-leg.dates.dita"/></li>
        <li><sourcexml>leg:longtitle</sourcexml> (that becomes <targetxml>primlaw:prelim/primlaw:synopsis</targetxml>, see <xref href="UK06_LawsActsBillsMeasures-leg.longtitle.dita"/></li>
        <li><sourcexml>leg:status</sourcexml> (that becomes <targetxml>primlaw:prelim/p/text</targetxml>, see <xref href="UK06_LawsActsBillsMeasures-leg.status.dita"/></li>
        <li><sourcexml>note</sourcexml> (that becomes <targetxml>legis:body/primlaw:prelim/note</targetxml>, see <xref href="../../common_newest/Rosetta_note-LxAdv-note.dita"/> in <b>General Markup</b> section.</li>
      </ul>
        then no <targetxml>legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> element is created. Instead, a <targetxml>legis:body/primlaw:prelim</targetxml> element is created containing one or more of the three target children listed above.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2014-08-19 <ph id="change_20140819_AB">Added a scnario for <sourcexml>leg:info/note</sourcexml> in above note describing scenarios where <targetxml>legis:body/primlaw:prelim</targetxml> should be created instead of <targetxml>legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> (R4.5 Content issue List #1809).</ph>
      </p>
      <p>2013-08-20 <ph id="change_20130820_JCG">Added a note describing scenarios where
            <targetxml>legis:body/primlaw:prelim</targetxml> should be created instead of
            <targetxml>legis:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml> (WebTeam #231496).</ph>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.info.dita  -->

<!-- 
  Children of leg:info
            x<Child nodeType="#comment">file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/ActPrelimsModel.xml</Child>
            x<abbrvname>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/1923_3m_10.xml</abbrvname>
            x<note>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/78_cols_binder_02_1_plm_0001_Merged_205.xml</note>
            x<leg:dates>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/1923_3m_10.xml</leg:dates>
            <leg:hier>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/ActScheduleModel.xml</leg:hier>
            x<leg:juris>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/1923_3m_10.xml</leg:juris>
            x<leg:longtitle>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/78_cols_binder_02_1_plm_0001_Merged_1.xml</leg:longtitle>
            <leg:officialname>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/1923_3m_10.xml</leg:officialname>
            x<leg:officialnum>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/1923_3m_10.xml</leg:officialnum>
            x<leg:sectionlist>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/78_cols_binder_02_1_plm_0001_Merged_1.xml</leg:sectionlist>
            x<leg:shorttitle>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/PS2017072816093330774LNIUKPBLCLAWSACTSBILLSMSRS_input_3990018.xml</leg:shorttitle>
            x<leg:status>file:/C:/svn/dataArch/XSLT/ContentArch/Rosetta-to-LA/drivers/UK06-LawsActsBillsMeasures/samplesInput/78_cols_binder_02_1_plm_0001_Merged_506.xml</leg:status>
  -->
	<xsl:template match="leg:info">
			<primlawinfo:primlawinfo>
			  <xsl:apply-templates select="docinfo:normcite|parent::leg:body/preceding-sibling::docinfo/docinfo:normcite" mode="enactorprov"/>
			  <!-- CSN - 2017-11-23 - Webstar 7054821 - Only create legisinfo:legisinfo if there is going to be content -->
			  <xsl:if test="leg:hier|leg:officialname|abbrvname|leg:shorttitle|parent::leg:body/preceding-sibling::docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='provision-status']">
				<legisinfo:legisinfo>
				  <xsl:apply-templates select="leg:hier|leg:officialname"/>
				  <xsl:apply-templates select="parent::leg:body/preceding-sibling::docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name='provision-status']" mode="statusgroup"/>
				  <xsl:if test="abbrvname | leg:shorttitle">
				    <legisinfo:names>
				      <xsl:apply-templates select="abbrvname | leg:shorttitle"/>
				    </legisinfo:names>
				  </xsl:if>
				</legisinfo:legisinfo>
			  </xsl:if>
			  <xsl:apply-templates select="leg:officialnum"/>
			  <xsl:if test="leg:dates/following-sibling::leg:longtitle or not(leg:longtitle)">
			   <xsl:apply-templates select="leg:dates"/>
			  </xsl:if>
			</primlawinfo:primlawinfo>
	</xsl:template>
  
  <xsl:template match="docinfo:custom-metafield[@name='provision-status']" mode="statusgroup">
    <legisinfo:statusgroup statusgroupcode="legislation-status" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
      <legisinfo:status statuscode="{.}"/> 
    </legisinfo:statusgroup>
  </xsl:template>
  
  <xsl:template match="docinfo:custom-metafield[@name='is-first-document-in-enactment']" mode="isfirstdocumentinenactment">
    <classify:classitem>
      <classify:classitem-identifier>
        <classify:classcode normval="{.}"/>
        <classify:classname>firstLegisItem</classify:classname>
      </classify:classitem-identifier>
    </classify:classitem>
  </xsl:template>
  
  <xsl:template match="docinfo:custom-metafield[@name='is-last-document-in-enactment']" mode="islastdocumentinenactment">
    <classify:classitem>
      <classify:classitem-identifier>
        <classify:classcode normval="{.}"/>
        <classify:classname>lastLegisItem</classify:classname>
      </classify:classitem-identifier>
    </classify:classitem>
  </xsl:template>
  
  
</xsl:stylesheet>