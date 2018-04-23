<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-in-entry-text">
  <title>in:entry-text <lnpid>id-UK18-35211</lnpid></title>
  <body>
    <section>
      <p>Index entries consist of text followed by an index-ref markup in source document
          <sourcexml>in:entry-text</sourcexml> and it should be mapped in target on the basis of
        below scenarios:</p>
      <p><b><u>First Scenario</u></b>: If input xpath is
          <sourcexml>/INDEXDOC/in:body/in:lev1/in:entry/in:entry-text</sourcexml> then it should be
        mapped to
          <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:entry</targetxml>. </p>
      <p><b><u>Second Scenario</u></b>: If input xpath is
          <sourcexml>/INDEXDOC/in:body/in:tabular-index/in:lev1/in:entry/in:entry-text</sourcexml>
        then it should be mapped to
          <targetxml>/navaid:landingpage/navaid:landingpagebody/index:tabularindex/index:tabularentry/index:entrytext</targetxml>. </p>
      <note>Any <sourcexml>remotelink</sourcexml> element comes with a <b>@service</b> attribute
        with a value '<b>DOC-ID</b>' and <b>@docidref</b> attribute is not present then it should be
        mapped in target <targetxml>ref:lnlink</targetxml>.</note>
      <note>All other child elements (i.e. <sourcexml>ci:cite</sourcexml>,
          <sourcexml>emph</sourcexml>, <sourcexml>sup</sourcexml>, <sourcexml>sub</sourcexml> and
        others) of <sourcexml>in:entry-text</sourcexml> markup in source documents then it should be
        mapped to target according to the <b>General Markup</b> section.</note>
      <p>Refer to the source and target examples in the following pages.</p>
    </section>
    <example>
      <lines><b>Source XML 1</b></lines>
      <codeblock>
        
&lt;in:lev1&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;administrator—&lt;/in:entry-text&gt;
    &lt;/in:entry&gt;
    &lt;in:lev2&gt;
      &lt;in:entry&gt;
        &lt;in:entry-text&gt;appointment by directors,&lt;/in:entry-text&gt;
      &lt;/in:entry&gt;
      ...
    &lt;/in:lev2&gt;
&lt;/in:lev1&gt;
        
      </codeblock>
      <lines><b>Target XML 1</b> showing conversion from <sourcexml>in:body/in:lev1/in:entry/in:entry-text</sourcexml> to <targetxml>index:entrytext</targetxml></lines>
      <codeblock>

&lt;index:index indextype="topical"&gt;
  &lt;index:item&gt;
    &lt;index:entry&gt;
      &lt;index:entry-text&gt;administrator—&lt;/index:entry-text&gt;
    &lt;/index:entry&gt;
    &lt;index:item&gt;
      &lt;index:entry&gt;
        &lt;index:entry-text&gt;appointment by directors,&lt;/index:entry-text&gt;
      &lt;/index:entry&gt;
      ...
    &lt;/index:item&gt;
  &lt;/index:item&gt;
&lt;/index:index&gt;

      </codeblock>
    </example>
    <example>
      <lines><b>Source XML 2</b></lines>
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
      <lines><b>Target XML 2</b> showing conversion from <sourcexml>in:tabular-index/in:lev1/in:entry/in:entry-text</sourcexml> to <targetxml>index:entrytext</targetxml></lines>
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
    <note>If <sourcexml>refpt</sourcexml>occurs within <sourcexml>in:entry-text</sourcexml> then
      conversion need to move <targetxml>ref:anchor</targetxml> as child of
        <targetxml>index:item</targetxml>. Refer the below source and target instances;</note>
    <example>
      <lines><b>Source XML</b></lines>
      <codeblock>
        
&lt;in:lev3&gt;
    &lt;in:entry&gt;
        &lt;in:entry-text&gt;ADR&lt;refpt id="0IV4_1_PRECEDENTS_ADR:HTCOMM-ACF" type="ext"/&gt;&lt;/in:entry-text&gt;
    &lt;/in:entry&gt;
&lt;/in:lev3&gt;
      
      </codeblock>
      <lines><b>Target XML</b> </lines>
      <codeblock>

&lt;index:item&gt;
    &lt;ref:anchor id="0IV4_1_PRECEDENTS_ADR:HTCOMM-ACF" anchortype="global"/&gt;
    &lt;index:entry&gt;
        &lt;index:entrytext&gt;ADR&lt;/index:entrytext&gt;
    &lt;/index:entry&gt;
&lt;/index:item&gt;

      </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>2015-02-16: <ph id="change_20150516_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>


  <xsl:template match="in:entry-text">
    
    <!--  Original Target XPath:  index:entrytext   -->
    <index:entrytext>
      <xsl:apply-templates select="@* | node() except(refpt)"/>
    </index:entrytext>
    
  </xsl:template>

</xsl:stylesheet>