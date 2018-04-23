<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"
  xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.0">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Introduction">
    <title>Introduction <lnpid>id-UK07-28208</lnpid></title>
    <shortdesc>This Conversion Instructions describes the conversion of the Rosetta LEGDOC DTD to <b>Regulation Schema Version 8.3_PROD</b>.</shortdesc>
    <body>

      <p>UK07 Regulations samples are identified using the root element <sourcexml>LEGDOC</sourcexml> along with element <sourcexml>docinfo:selector</sourcexml> which contains value
          <sourcexml>StatutoryInstrument</sourcexml> only.</p>

      <section> Root element <sourcexml>LEGDOC</sourcexml> becomes <targetxml>regulation:regulation</targetxml> which is the root element of Regulation Schema. The source attribute <sourcexml>@xml:lang</sourcexml>, if
        present, can be dropped, as a separate rule has been defined to populate <targetxml>regulation:regulation/@xml:lang</targetxml>.</section>
      <section>
        <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>
        <pre>

&lt;LEGDOC&gt;
  ...
  &lt;docinfo:doc-lang lang="en"/&gt;
  &lt;docinfo:doc-country iso-cc="GB"/&gt;
  ...          
&lt;/LEGDOC&gt;


          <b>Becomes</b>


&lt;regulation:regulation xml:lang="en-GB"&gt;
  ...
&lt;/regulation:regulation&gt;

      </pre>

        <note>Elements <targetxml>regulation:head</targetxml>, <targetxml>regulation:body</targetxml> and <targetxml>doc:metadata</targetxml> are created as required children of root element
            <targetxml>regulation:regulation</targetxml> during conversion.</note>

        <p>
          <b>Note:</b>
        </p>
        <p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml></p>
        <p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml></p>
        <p>Copy source attributes to target attributes unless otherwise specified.</p>
        <p>Every example is represented like EXAMPLE in all the Conversion Instructions and is captured under</p>
      </section>
    </body>

  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\Introduction.dita  -->

  <xsl:output encoding="UTF-8"/>
  <xsl:output indent="no"/>
  <xsl:param name="outputSchemaLoc" select="'urn:x-lexisnexis:content:regulation:sharedservices:1 sch_regulation.xsd'"/>

  <xsl:template match="LEGDOC">
    <regulation:regulation>

      <xsl:for-each select="$lexisAdvNamespaces/*">
        <xsl:sort/>
        <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
      </xsl:for-each>
      <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
      <xsl:apply-templates select="@*"/>
      <xsl:call-template name="xml_lang"/>

      <regulation:head>
        <xsl:apply-templates select="docinfo/docinfo:normcite" mode="enactorprov"/>
        <xsl:apply-templates select="leg:body/leg:info"/>
        <xsl:apply-templates select="docinfo/docinfo:normcite"/>
      </regulation:head>
      <regulation:body>
        <xsl:apply-templates select="leg:body/leg:info/leg:longtitle"/>
        <xsl:apply-templates select="leg:body/leg:info/leg:sectionlist"/>
        <xsl:apply-templates select="leg:body/leg:preamble, leg:body/leg:level, leg:body/leg:endmatter"/>
      </regulation:body>

      <doc:metadata>
        <xsl:apply-templates select="docinfo"/>
      </doc:metadata>
    </regulation:regulation>
  </xsl:template>

  <xsl:template match="LEGDOC/@legtype"/>
  
  <xsl:template match="@searchtype"/>

</xsl:stylesheet>
