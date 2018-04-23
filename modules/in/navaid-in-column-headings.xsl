<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-in-column-headings">
  <title>in:column-headings <lnpid>id-UK18-35210</lnpid></title>
  <body>
    <section>
      <p>This markup is a container for tabular indexing headings and conversion from Rosetta
        (source) to NewLexis (target) as per below Xpaths:</p>
      <p>Input xpath is <sourcexml>in:tabular-index/in:column-headings</sourcexml> then it should be
        mapped to <targetxml>index:tabularindex/index:columnheadings</targetxml>. Its child
        elements should be mapped as per below: <ul>
          <li>If <sourcexml>in:entry-text-heading</sourcexml> is a child element of
              <sourcexml>in:column-headings</sourcexml> then it should be mapped to
              <targetxml>index:columnheadings/index:entrytextheading</targetxml>. This input markup
            is used for describing heading of all index entries.</li>
          <li>If <sourcexml>in:index-ref-heading</sourcexml> is a child element of
              <sourcexml>index:columnheadings</sourcexml> then it should be mapped to
              <targetxml>index:columnheadings/index:locatorheading</targetxml>. This input markup is
            used for describing heading of all index reference entries. </li>
        </ul></p>
      
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
      &lt;in:entry-text&gt;Carter v Hunt (Inspector of Taxes) &lt;/in:entry-text&gt;
      ...
    &lt;/in:entry&gt;
  &lt;/in:lev1&gt;
&lt;/in:tabular-index&gt;
        
      </codeblock>
      <lines><b>Target XML</b> showing conversion from <sourcexml>in:column-headings</sourcexml> to
    <targetxml>index:columnheadings</targetxml></lines>
      <codeblock>

&lt;index:tabularindex&gt;
  &lt;index:columnheadings&gt;
    &lt;index:entrytextheading&gt;CASE NAME&lt;/index:entrytextheading&gt;
    &lt;index:locatorheading&gt;SCD REFERENCES&lt;/index:locatorheading&gt;
    &lt;index:locatorheading&gt;SpC NUMBER&lt;/index:locatorheading&gt;
  &lt;/index:columnheadings&gt;
  &lt;index:tabularentry&gt;
    &lt;index:entrytext&gt;Carter v Hunt (Inspector of Taxes) &lt;/index:entrytext&gt;
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

	
  <xsl:template match="in:column-headings[parent::in:tabular-index]">

		<!--  Original Target XPath:  index:tabularindex/index:columnheadings   -->
			<index:columnheadings>
				<xsl:apply-templates select="@* | node()"/>
			</index:columnheadings>		

	</xsl:template>

	<xsl:template match="in:entry-text-heading[parent::in:column-headings]">

		<!--  Original Target XPath:  index:columnheadings/index:entrytextheading   -->
			<index:entrytextheading>
				<xsl:apply-templates select="@* | node()"/>
			</index:entrytextheading>		

	</xsl:template>

  <xsl:template match="in:index-ref-heading[parent::in:column-headings]">

		<!--  Original Target XPath:  index:columnheadings/index:locatorheading   -->
			<index:locatorheading>
				<xsl:apply-templates select="@* | node()"/>
			</index:locatorheading>		

	</xsl:template>


</xsl:stylesheet>