<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.subtype-to-LexisAdvance_doc.legacy-metadata_metadatasource_lbu-meta-scheme">
  <title><sourcexml>docinfo:subtype</sourcexml> to  <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]</targetxml> <lnpid>id-CCCC-10305</lnpid></title>
  
  <body>
    <section>
      <title>Instructions <i>[common element]</i></title>
      <p><sourcexml>docinfo:subtype</sourcexml> becomes <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> with attributes <targetxml>@name="docinfo:subtype"</targetxml> and value will be the data from <sourcexml>docinfo:subtype</sourcexml>.
      </p>
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;docinfo:subtype&gt;cait&lt;/docinfo:subtype&gt;
&lt;docinfo:subtype&gt;cait&lt;/docinfo:subtype&gt;

	</codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
&lt;meta&gt;
    &lt;metaitem name="docinfo:subtype" value="cait"/&gt;
    &lt;metaitem name="docinfo:subtype" value="cait"/&gt;
&lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

	</codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>2012-11-30: Created.</p>
    </section>
  </body>
	</dita:topic>
  
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.subtype-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita  -->
       
  <!-- CSN: Added docinfo:subtype from base.xsl. -->
        <xsl:template match="docinfo:subtype">
          <xsl:element name="metaitem">
            <xsl:attribute name="name">
              <xsl:text>docinfo:subtype</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="value">
              <xsl:value-of select="."/>
            </xsl:attribute>
          </xsl:element>
        </xsl:template>
      
</xsl:stylesheet>