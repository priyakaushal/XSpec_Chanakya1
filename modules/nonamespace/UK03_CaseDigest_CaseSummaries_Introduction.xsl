<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
  xmlns:ci="http://www.lexis-nexis.com/ci" exclude-result-prefixes="dita docinfo doc casedigest dig xsi pubinfo case">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CaseSummaries_Introduction">
    <title>Introduction <lnpid>id-UK03-27407</lnpid></title>
    <body>
      <p>This Conversion Instruction describes the conversion of CaseSummaries (casedigest 8.7 PROD) schema in the document.</p>

      <p>UK CaseSummaries are identified using the root element <sourcexml>DIGESTDOC</sourcexml>, the value of <sourcexml>docinfo:doc-country/@iso-cc="GB"</sourcexml> and the value of <sourcexml>docinfo:selector</sourcexml> should be "DIGEST".</p>

      <p>The root element <sourcexml>DIGESTDOC</sourcexml> becomes <targetxml>casedigest:casedigest</targetxml>. </p>

      <p>
        <targetxml>casedigest:head</targetxml>, <targetxml>casedigest:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required children of <targetxml>casedigest:casedigest</targetxml>
      </p>

      <note>Please note that the conversion needs to create an empty <targetxml>casedigest:head</targetxml> though we are not populating it.</note>

      <pre>
&lt;DIGESTDOC&gt;
<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;...&lt;/casedigest:head&gt;
  &lt;casedigest:body&gt;...&lt;/casedigest:body&gt;
  &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/casedigest:casedigest&gt;
</pre>

      <section>
        <title>Note:</title>
        <p>Source elements and attributes are highlighted in BLUE like this: <sourcexml>XML SOURCE</sourcexml></p>
        <p>Target elements and attributes are highlighted in GREEN like this: <targetxml>XML TARGET</targetxml></p>
        <p>COPY SOURCE ATTRIBUTES TO TARGET ATTRIBUTES UNLESS OTHERWISE SPECIFIED.</p>
        <p>Every example is represented like "EXAMPLE" in all the dita's and is coming under <pre> pre </pre> tag.</p>
      </section>
      <section>
        <title>Created</title>
        <p>2012-10-08</p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\CaseSummaries_Introduction.dita  -->

  <xsl:template match="DIGESTDOC">

    <xsl:element name="casedigest:casedigest">

      <!--  Add namespace attributes  -->
      <xsl:for-each select="$lexisAdvNamespaces/*">
        <xsl:sort/>
        <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
      </xsl:for-each>
      <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
      

      

      <xsl:element name="casedigest:head">
        <!-- Get all cites at the top -->
        <xsl:if test="docinfo:normcite/ci:cite/ci:content or dig:body/dig:info/dig:cite or dig:body/dig:info/case:info/case:parallelcite">
          <ref:citations>
            <xsl:apply-templates select="docinfo:normcite/ci:cite/ci:content"/>
            <xsl:apply-templates select="dig:body/dig:info/dig:cite"/>
            <xsl:apply-templates select="dig:body/dig:info/case:info/case:parallelcite"/>
          </ref:citations>
        </xsl:if>
        <!-- The remaining casedigest:head elements -->
        <xsl:apply-templates select="dig:body/dig:info | dig:body/dig:info/dig:type"/>
      </xsl:element>

      <!-- casedigest:body -->
      <xsl:apply-templates select="dig:body"/>

      <!-- doc:metadata   -->
      <xsl:element name="doc:metadata">
        <xsl:if test="dig:body/dig:info/pubdate/@display-name = ('Issue Date', 'Published Date') or dig:body/dig:info/contrib[@contribtype = 'issuing-department'] or dig:body/dig:review">
          <xsl:element name="pubinfo:pubinfo">
            <xsl:if test="dig:body/dig:info/pubdate/@display-name = ('Issue Date', 'Published Date')">
              <pubinfo:dates>
                <xsl:if test="dig:body/dig:info/pubdate/@display-name = 'Issue Date'">
                  <pubinfo:issuedate>
                    <xsl:apply-templates select="dig:body/dig:info/pubdate[@display-name = 'Issue Date']/date/@*"/>
                    <xsl:apply-templates select="dig:body/dig:info/pubdate[@display-name = 'Issue Date']/@* | dig:body/dig:info/pubdate[@display-name = 'Issue Date']/node()"/>
                  </pubinfo:issuedate>
                </xsl:if>
                <xsl:if test="dig:body/dig:info/pubdate/@display-name = 'Published Date'">
                  <pubinfo:pubdate>
                    <xsl:apply-templates select="dig:body/dig:info/pubdate[@display-name = 'Published Date']/date/@*"/>
                    <xsl:apply-templates select="dig:body/dig:info/pubdate[@display-name = 'Published Date']/@* | dig:body/dig:info/pubdate[@display-name = 'Published Date']/node()"/>
                  </pubinfo:pubdate>
                </xsl:if>
              </pubinfo:dates>
            </xsl:if>
            <xsl:apply-templates select="dig:body/dig:info/contrib[@contribtype = 'issuing-department']" mode="issue-dept"/>
            <xsl:apply-templates select="dig:body/dig:review"/>
          </xsl:element>
        </xsl:if>
        <xsl:apply-templates select="docinfo"/>
      </xsl:element>
    </xsl:element>

  </xsl:template>

  <xsl:template match="DIGESTDOC/@type">
    <xsl:copy-of select="."/>
  </xsl:template>
  
  

</xsl:stylesheet>
