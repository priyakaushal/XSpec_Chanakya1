<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-in-tabular-index">
  <title>in:tabular-index <lnpid>id-UK18-35216</lnpid></title>
  <body>
    <section>
      <p>This markup is a container for tabular indexing content with two or more content specific
        headings from Rosetta (source) to NewLexis (target) as per below Xpath:</p>
      <p>Input xpath is <sourcexml>/INDEXDOC/in:body/in:tabular-index</sourcexml> then it should be
        mapped to
        <targetxml>/navaid:landingpage/navaid:landingpagebody/index:tabularindex</targetxml>.
      </p>
      
      <p>Refer to the source and target examples in the following pages.</p>
    </section>
    <example>
      <lines><b>Source XML</b></lines>
      <codeblock>
        
&lt;in:tabular-index&gt;
  &lt;in:column-headings&gt;
    &lt;in:entry-text-heading&gt;CASE NAME&lt;/in:entry-text-heading&gt;
    &lt;in:index-ref-heading&gt;SCD REFERENCES&lt;/in:index-ref-heading&gt;
    &lt;in:index-ref-heading&gt;SpC NUMBER&lt;/in:index-ref-heading&gt;
  &lt;/in:column-headings&gt;
  &lt;in:lev1&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;Camas plc v Atkinson (Inspector of Taxes) &lt;/in:entry-text&gt;
      ...
    &lt;/in:entry&gt;
  &lt;/in:lev1&gt;
&lt;/in:tabular-index&gt;
        
      </codeblock>
      <lines><b>Target XML</b> showing conversion from <sourcexml>in:tabular-index</sourcexml> to <targetxml>index:tabularindex</targetxml></lines>
      <codeblock>

&lt;index:tabularindex&gt;
  &lt;index:columnheadings&gt;
    &lt;index:entrytextheading&gt;CASE NAME&lt;/index:entrytextheading&gt;
    &lt;index:locatorheading&gt;SCD REFERENCES&lt;/index:locatorheading&gt;
    &lt;index:locatorheading&gt;SpC NUMBER&lt;/index:locatorheading&gt;
  &lt;/index:columnheadings&gt;
  &lt;index:tabularentry&gt;
    &lt;index:entrytext&gt;Camas plc v Atkinson (Inspector of Taxes) &lt;/index:entrytext&gt;
     ...
  &lt;/index:tabularentry&gt;
&lt;/index:tabularindex&gt;

      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2015-02-16: <ph id="change_20150516_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

  <xsl:template match="in:tabular-index">
    
    <!--  Original Target XPath:  /navaid:landingpage/navaid:landingpagebody/index:tabularindex/index:tabularentry   -->
    <index:tabularindex>
      <xsl:apply-templates select="@* | node()"/>					
    </index:tabularindex>
    
  </xsl:template>

</xsl:stylesheet>