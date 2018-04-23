<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:comm="http://www.lexis-nexis.com/glp/comm"
  xmlns:ci="http://www.lexis-nexis.com/ci"
  xmlns:frm="http://www.lexis-nexis.com/glp/frm"
  xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
  exclude-result-prefixes="dita docinfo">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="UK14_Precedents_Introduction">
    <title>Introduction <lnpid>id-UK14-30214</lnpid></title>

    <body>
      <p>These instructions describe the conversion of documents from the Rosetta COMMENTARYDOC DTD
        to the NewLexis Seclaw 8.27 PROD Schema.</p>
      <p>The data stream is UK14 Precedents.</p>
      <p>
        <b>Root Element</b>
      </p>
      <p>
        <sourcexml>COMMENTARYDOC</sourcexml> becomes
          <targetxml>seclaw:seclaw[@seclawtype="precedent"]</targetxml>. </p>
      <p><targetxml>seclaw:head</targetxml>, <targetxml>seclaw:body</targetxml>, and
          <targetxml>doc:metadata</targetxml> are created as required children of
          <targetxml>seclaw:seclaw</targetxml>.</p>

      <pre>
&lt;COMMENTARYDOC&gt;
    ...
&lt;/COMMENTARYDOC&gt;

<b>BECOMES</b>
      
&lt;seclaw:seclaw seclawtype="precedent"&gt;
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
            <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is between
              01-12. Any numbers outside this range, do not output a
              <targetxml>@month</targetxml>.</li>
            <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between 01-31.
              Any numbers outside this range, do not output <targetxml>@day</targetxml>.</li>
            <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4 digits in
              length. Any other lengths, do not output <targetxml>@year</targetxml>.</li>
          </ul>
        </p>
      </section>
      <section>
        <title>Changes</title>
        <p>2017-07-20: <ph id="change_20170720_RS">Updated schema version to 8.27 PROD.</ph></p>
        <p>2017-07-14: <ph id="change_20170714_RS">Updated schema version to 8.26 PROD.</ph></p>
        <p>2017-06-19: <ph id="change_20170619_RS">Updated schema version to 8.25 PROD.</ph></p>
        <p>2017-05-22: <ph id="change_20170522_RS">Updated schema version to 8.24 PROD.</ph></p>
        <p>2017-05-04: <ph id="change_20170504_RS">Updated schema version to 8.23 PROD.</ph></p>
        <p>2017-03-03: <ph id="change_20170303_jm">Updated schema version to 8.20 PROD.</ph></p>
        <p>2016-12-13: <ph id="change_20161213_jm">Updated schema version to 8.18 PROD.</ph></p>
        <p>2016-10-05: <ph id="change_20161005_jm">Updated schema version to 8.16 PROD.</ph></p>
        <p>2016-05-25: <ph id="change_20150525_jm">Note that the following module has been added to
            the General Markup section: <sourcexml>hrule</sourcexml> to <targetxml>hrule</targetxml>
            (id-CCCC-10351). Markup is new in recent rosetta delivery.</ph></p>
        <p>2016-05-09: <ph id="change_20160509_jm">Updated schema version to 8.12 PROD.</ph></p>
        <p>2016-05-03: <ph id="change_20160503_jm">Updated schema version to 8.11 PROD.</ph></p>
        <p>2016-03-26: <ph id="change_20160326_jm">Administrative. Removed several modules from the
            General Markup section. Coding not affected. The modules concerned elements occurring as
            children of markup not used in UK14. For example, some removed modules had rules for
            elements as children of glp:note; UK14 does not use glp:note so the rules would never
            have been applied and do not need to be present in these Conversion
          Instructions.</ph></p>
        <p>2016-03-25: <ph id="change_20160325_jm">Updated schema version to 8.10 PROD.</ph></p>
        <p>2015-03-23: <ph id="change_20150323_jm">Updated schema version to 8.3 PROD.</ph></p>
        <p>2015-03-22: <ph id="change_20150322_jm">Note that modules for handling
              <sourcexml>p-limited</sourcexml> have been added to the General Markup section. Markup
            is new in recent rosetta delivery. R4.5 Content Issue 2232.</ph></p>
        <p>2015-03-04: <ph id="change_20150304_jm">Note that the following module has been added to
            the Metadata section:
              <sourcexml>classification/classitem[@classscheme="topic:topicReference"]</sourcexml>
            to
              <targetxml>classify:classification/classify:classitem/topic:topicReference</targetxml>
            (id-CCCC-10516). The data addition was announced in UK14 Audit Package Review Mar 3
            2015.</ph></p>
        <p>2014-06-19: <ph id="change_20140619_jm">Updated schema version to 7.12 PROD</ph>.</p>
        <p>2014-06-09: <ph id="change_20140609_jm">Note that the following module has been added to
            the Metadata section: <sourcexml>docinfo:currencystatement</sourcexml> to
              <targetxml>doc:docinfo/currencystatement</targetxml> (id-CCCC-10289). Responds to
            recently delivered data; Phase-6 Discussion Item 102</ph>.</p>
        <p>2014-03-21: <ph id="change_20140321_jm">Updated schema version to 7.9 PROD</ph>.</p>
        <p>2013-11-12: <ph id="change_20131112_jm">Updated schema version to 7.8 PROD</ph>.</p>
        <p>2013-10-31: <ph id="change_20131031_jm">Updated schema version to 7.6 PROD</ph>.</p>
        <p>2013-06-12: <ph id="change_20130612_jm">Updated schema version to 7.0 PROD</ph>.</p>
        <p>2013-05-13: <ph id="change_20130513_jm">Updated schema version to 6.3 PROD</ph>.</p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_introduction.dita  -->
  <!--<xsl:message>UK14_Precedents_introduction.xsl requires manual development!</xsl:message> -->

  <xsl:template match="COMMENTARYDOC">

    <!--  Original Target XPath:  seclaw:seclaw[@seclawtype="precedent"]   -->
    <seclaw:seclaw>
      <xsl:attribute name="seclawtype">
        <xsl:text>precedent</xsl:text>
      </xsl:attribute>
      <xsl:for-each select="$lexisAdvNamespaces/*">
        <xsl:sort/>
        <xsl:namespace name="{substring-after(substring-before(., '='), ':')}"
          select="substring-after(translate(., '&#034;', ''), '=')"/>
      </xsl:for-each>
      <xsl:attribute name="xml:lang">en-GB</xsl:attribute>
      <seclaw:head/>
      <seclaw:body>
        <xsl:if test="child::level">
          <xsl:apply-templates select="level"/>
        </xsl:if>
        <xsl:apply-templates select="comm:info"/>
      <xsl:apply-templates select="comm:body"/>
      </seclaw:body>

      <doc:metadata>
        <xsl:apply-templates select="docinfo"/>
      </doc:metadata>
    </seclaw:seclaw>

  </xsl:template>


  <xsl:template match="docinfo:currencystatement">

    <!--  Original Target XPath:  doc:docinfo/currencystatement   -->
    <doc:docinfo>
      <currencystatement>
        <xsl:apply-templates select="@* | node()"/>
      </currencystatement>
    </doc:docinfo>

  </xsl:template>

  <xsl:template match="ci:content/remotelink" priority="50">
    <!--WPK: it is a schema validation error to have a link within a citation.  
    Passing through displayable content only.  -->
    <xsl:value-of select="."/>
  </xsl:template>
  
  
<!--
  <xsl:template match="ci:content/frm:prompt/@alternateKey" priority="2"/>
  <xsl:template match="ci:content/frm:prompt/@optionalKey" priority="2"/>
  <xsl:template match="li/@alternateKey" priority="2"/>
  <xsl:template match="ci:content/link" priority="30"/>
  <xsl:template match="ci:content/frm:prompt" priority="30"/>
  <xsl:template match="address"/>
  <xsl:template match="email"/>
-->  

  <xsl:template match="ci:content/frm:prompt/@alternateKey" priority="2"/>
  <xsl:template match="ci:content/frm:prompt/@optionalKey" priority="2"/>
  <xsl:template match="ci:content/frm:prompt" priority="30"/>
  <xsl:template match="ci:content/link" priority="30"/>
  <xsl:template match="li/@alternateKey" priority="2"/>
  
  
  

</xsl:stylesheet>
