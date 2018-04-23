<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
  version="2.0" exclude-result-prefixes="dita docinfo leg">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_doc.overview">
    <title><sourcexml>docinfo:overview</sourcexml> to <targetxml>doc:overview</targetxml>
      <lnpid>id-CCCC-10303</lnpid></title>
    <body>
      <section>
        <title>Instructions <i>[common element]</i></title>
        <p><sourcexml>docinfo:overview</sourcexml> becomes <targetxml>doc:overview</targetxml>, with
          child <targetxml>doc:overview/bodytext</targetxml> created to hold the converted
            <sourcexml>docinfo:overview</sourcexml> content.</p>
        <p>If <sourcexml>docinfo:overview</sourcexml> has attribute <sourcexml>@type</sourcexml>
          then retain and carry into the target xml <targetxml>doc:overview/@type</targetxml> as
          shown below.</p>
        <p>(i.e <sourcexml>docinfo:overview type="extracted"</sourcexml> becomes
            <targetxml>doc:overview type="extracted"</targetxml>).</p>
        <note>Conversion needs to suppress <sourcexml>docinfo:overview</sourcexml> when it's the
          child of <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>. This
          will be applicable to all <b>Pacific Content Streams</b>.</note>
      </section>
      <example>
        <title>Source XML</title>
        <codeblock> &lt;docinfo&gt; &lt;docinfo:overview type="editorial"&gt; &lt;p&gt;
          &lt;text&gt;This is a document transactional overview sample for AU05 Commentary Form
          content type/stream. It is indicative text only and not a sample of actual text that will
          be included but used here to identify the particular element used for this
          purpose.&lt;/text&gt; &lt;/p&gt; &lt;/docinfo:overview&gt; &lt;/docinfo&gt; </codeblock>
      </example>
      <example>
        <title>Target XML</title>
        <codeblock> &lt;doc:docinfo&gt; &lt;doc:overview type="editorial"&gt; &lt;bodytext&gt;
          &lt;p&gt; &lt;text&gt;This is a document transactional overview sample for AU05 Commentary
          Form content type/stream. It is indicative text only and not a sample of actual text that
          will be included but used here to identify the particular element used for this
          purpose.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/doc:overview&gt;
          &lt;/doc:docinfo&gt; </codeblock>
      </example>
      <note><b><u>For UK streams</u></b>: If input documents is having
          <sourcexml>docinfo:overview@type</sourcexml> markup with attribute value "<u>abstract</u>"
        then conversion needs to mapped <targetxml>doc:overview@type="abstract"</targetxml> in
        NewLexis target. Refer input and target examples;</note>
      <example>
        <title>Source XML</title>
        <codeblock> &lt;docinfo&gt; &lt;docinfo:overview type="abstract"&gt; &lt;p&gt;
          &lt;text&gt;VAT – default surcharge – reasonable excuse – dismissal of key employee –
          reliance on another person&lt;/text&gt; &lt;/p&gt; &lt;/docinfo:overview&gt;
          &lt;/docinfo&gt; </codeblock>
      </example>
      <example>
        <title>Target XML</title>
        <codeblock> &lt;doc:docinfo&gt; &lt;doc:overview type="abstract"&gt; &lt;bodytext&gt;
          &lt;p&gt; &lt;text&gt;VAT – default surcharge – reasonable excuse – dismissal of key
          employee – reliance on another person&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt;
          &lt;/doc:overview&gt; &lt;/doc:docinfo&gt; </codeblock>
      </example>
      <section>
        <title>Changes</title>
        <p>2013-04-10: <ph id="change_20130410_WLL"> Created</ph></p>
        <p>2013-06-25: <ph id="change_20130625_WLL">added to AU and NZ ditamap for content
            enrichment</ph></p>
        <p>2013-09-16: <ph id="change_20130916_VV">Instruction added for suppressing
              <sourcexml>docinfo:overview</sourcexml> when it is child of
              <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.Affects all
            Pacific content streams. WebTeam # is 234193.</ph></p>
        <p>2013-09-16: <ph id="change_20131029_AB">WebTeam <b>#233318</b> created for pacific
            content stream inorder to suppress <sourcexml>docinfo:overview</sourcexml> with in
              <sourcexml>leg:levelinfo</sourcexml> and <sourcexml>levelinfo</sourcexml>.</ph></p>
        <p>2014-08-04: <ph id="change_20140804_BRT">added to UK05 ditamap.</ph></p>
        <p>2014-10-21: <ph id="change_20141021_ARC">added to UK09 ditamap.</ph></p>
        <p>2014-11-04: <ph id="change_20141104_JCG">Clarification only: added text to explicitly
            indicate that the child <targetxml>doc:overview/bodytext</targetxml> should be created.
            Not a change to instructions.</ph></p>
        <p>2015-09-08: <ph id="change_20150908_SS">Added the handling of new attribute value
              "<b>abstract</b>" inside the <targetxml>docinfo:overview@type</targetxml> markup for
            UK streams and it should be mapped with
              <targetxml>doc:overview@type="abstract"</targetxml>. R4.5 Content Issue List
            #2391.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.overview-LxAdv-docinfo.overview.dita  -->

  <!-- CSN: Added docinfo:overview from base.xsl. -->
  <xsl:template match="docinfo:overview">
    <xsl:choose>
      <xsl:when test="(parent::levelinfo or parent::leg:levelinfo) and (//docinfo:doc-country/@iso-cc = 'NZ' or //docinfo:doc-country/@iso-cc = 'AU')"/>
      <xsl:otherwise>
        <xsl:element name="doc:overview">
          <xsl:attribute name="type">
            <xsl:value-of select="@type"/>
          </xsl:attribute>
          <xsl:choose>
            <xsl:when test="bodytext">
              <xsl:apply-templates select="node()"/>
            </xsl:when>
            <xsl:otherwise>
              <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:apply-templates select="node()"/>
              </bodytext>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:element>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
