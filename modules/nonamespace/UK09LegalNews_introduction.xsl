<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/"
  xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
  version="2.0" exclude-result-prefixes="dita">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="UK09_Legal_News_Introduction">
    <title>Introduction <lnpid>id-UK09-29010</lnpid></title>

    <body>
      <p>These instructions describes the conversion of documents from the Rosetta JOURNALDOC DTD to
        the NewLexis NewsItem Schema.</p>

      <p>Legal News documents are identified by the root element
        <sourcexml>JOURNALDOC</sourcexml>.</p>

      <p><sourcexml>JOURNALDOC</sourcexml> becomes <targetxml>newsitem:newsitem</targetxml>. The
        value of the attribute <targetxml>newsitem:newsitem/@xml:lang</targetxml> should be set to
        "en-GB". The following elements are required children of
          <targetxml>newsitem:newsitem</targetxml>: <ul>
          <li><targetxml>newsitem:head</targetxml></li>
          <li><targetxml>nitf:body</targetxml></li>
          <li><targetxml>doc:metadata</targetxml></li>
        </ul>
      </p>
      <example>
        <title>Source XML</title>
        <codeblock> &lt;JOURNALDOC&gt; ... &lt;/JOURNALDOC&gt; </codeblock>
        <title>Target XML</title>
        <codeblock> &lt;newsitem:newsitem xml:lang="en-GB"&gt;
          &lt;newsitem:head&gt;...&lt;/newsitem:head&gt; &lt;nitf:body&gt;...&lt;/nitf:body&gt;
          &lt;doc:metadata&gt;...&lt;/doc:metadata&gt; &lt;/newsitem:newsitem&gt; </codeblock>
      </example>

      <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from conversion
        except for the citation elements.</note>
      <section>
        <title>Note:</title>
        <p>Source elements and attributes are highlighted like this:
            <sourcexml>SOURCEXML</sourcexml></p>
        <p>Target elements and attributes are highlighted like this:
            <targetxml>TARGETXML</targetxml></p>
        <p>Copy source attributes to target attributes unless otherwise specified.</p>
        <p>Every example is represented like "EXAMPLE" in all the dita's and is captured under
          <pre>pre</pre> tag.</p>
      </section>
    </body>

  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09LegalNews_introduction.dita  -->


  <xsl:output indent="no" method="xml"/>
  <xsl:param name="outputSchemaLoc" select="'urn:x-lexisnexis:content:newsitem:sharedservices:1 sch_newsitem.xsd'"/>
  
  <!-- ROOT ELEMENT ATTRIBUTES -->
  <xsl:template match="JOURNALDOC/@xml:lang"/>
  <xsl:template match="JOURNALDOC/@version"/>
  <xsl:template match="JOURNALDOC/@versionminor"/>
  <xsl:template match="JOURNALDOC/@id"/>
 
  <!-- ROOT ELEMENT CHILD ELEMENTS-->
  <xsl:template match="JOURNALDOC">
    <newsitem:newsitem>
      <xsl:for-each select="$lexisAdvNamespaces/*">
        <xsl:sort/>
        <xsl:namespace name="{substring-after(substring-before(., '='), ':')}"
          select="substring-after(translate(., '&#034;', ''), '=')"/>
      </xsl:for-each>
     <!--<xsl:call-template name="xml_lang"/>-->

      <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
      <xsl:apply-templates select="@*"/>

      <!-- Head -->
      <newsitem:head>
        <xsl:apply-templates select="jrnl:body/jrnl:info/jrnl:journalcite"/>
      </newsitem:head>

      <!-- BODY -->
      <xsl:apply-templates select="jrnl:body"/>

      <!-- METADATA -->
      <doc:metadata>
        <xsl:if test="descendant::jrnl:info |jrnl:prelim">
          <pubinfo:pubinfo>
            <xsl:apply-templates select="descendant::publication"/>
            <xsl:apply-templates select="descendant::pubdate"/>
            <xsl:apply-templates select="descendant::copyright" mode="prelim"/>
           </pubinfo:pubinfo>
        </xsl:if>
        <xsl:apply-templates select="docinfo"/>
      </doc:metadata>
    </newsitem:newsitem>
  </xsl:template>
 
</xsl:stylesheet>