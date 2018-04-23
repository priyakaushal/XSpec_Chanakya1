<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-in-entry">
  <title>in:entry <lnpid>id-UK18-35212</lnpid></title>
  <body>
    <section>
      <p>Index entries consist of text followed by an index-ref markup in the source document's
          <sourcexml>in:entry</sourcexml> element and should be mapped to target according to the
        following scenarios:</p>
      <ul>
        <li><b><u>First scenario</u></b>: If Input xpath is
            <sourcexml>/INDEXDOC/in:body/in:lev1/in:entry</sourcexml> then it should be mapped to
            <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:entry</targetxml>.</li>
        <li><b><u>Second scenario</u></b>: If Input xpath is
            <sourcexml>/INDEXDOC/in:body/in:tabular-index/in:lev1/in:entry</sourcexml> then it
          should be mapped to <targetxml>/navaid:landingpage/navaid:landingpagebody/index:tabularindex/index:tabularentry</targetxml>.</li>
      </ul>
      <note>If the source document has an <sourcexml>index-ref</sourcexml> element this should be
        mapped to <targetxml>index:locator</targetxml> and this markup becomes child element of
          <targetxml>index:entry</targetxml> OR <targetxml>index:tabularentry</targetxml> in NL
        target conversion.</note>
      <p>Refer to the source and target examples in the following pages.</p>
    </section>
    <example>
      <lines><b>Source XML 1</b></lines>
      <codeblock>
        
&lt;in:body&gt;
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
&lt;/in:body&gt;
        
      </codeblock>
      <lines><b>Target XML 1</b> showing conversion from <sourcexml>in:body/in:lev1/in:entry</sourcexml> to
    <targetxml>navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:entry</targetxml></lines>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;index:index indextype="topical"&gt;
    &lt;index:item&gt;
      &lt;index:entry&gt;
        &lt;index:entrytext&gt;administrator—&lt;/index:entrytext&gt;
      &lt;/index:entry&gt;
      &lt;index:item&gt;
        &lt;index:entry&gt;
          &lt;index:entrytext&gt;appointment by directors,&lt;/index:entrytext&gt;
        &lt;/index:entry&gt;
        ...
      &lt;/index:item&gt;
    &lt;/index:item&gt;
  &lt;/index:index&gt;
&lt;/navaid:landingpagebody&gt;

      </codeblock>
    </example>
    <example>
      <lines><b>Source XML 2</b></lines>
      <codeblock>
        
&lt;in:tabular-index&gt;
  &lt;in:column-headings&gt;
    &lt;in:entry-text-heading&gt;CASE NAME&lt;/in:entry-text-heading&gt;
    &lt;in:index-ref-heading&gt;SCDREFERENCES&lt;/in:index-ref-heading&gt;
    &lt;in:index-ref-heading&gt;SpC NUMBER&lt;/in:index-ref-heading&gt;
  &lt;/in:column-headings&gt;
  &lt;in:lev1&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;Maco Door &amp;amp; Window Hardware (UK) Ltd v Revenue and Customs Commissioners &lt;/in:entry-text&gt;
      ...
    &lt;/in:entry&gt;
  &lt;/in:lev1&gt;
&lt;/in:tabular-index&gt;
        
      </codeblock>
      <lines><b>Target XML 2</b> showing conversion from <sourcexml>in:tabular-index/in:lev1/in:entry</sourcexml> to
      <targetxml>index:tabularindex/index:tabularentry</targetxml></lines>
      <codeblock>

&lt;index:tabularindex&gt;
  &lt;index:columnheadings&gt;
    &lt;index:entrytextheading&gt;CASE NAME&lt;/index:entrytextheading&gt;
    &lt;index:locatorheading&gt;SCDREFERENCES&lt;/index:locatorheading&gt;
    &lt;index:locatorheading&gt;SpC NUMBER&lt;/index:locatorheading&gt;
  &lt;/index:columnheadings&gt;
  &lt;index:tabularentry&gt;
    &lt;index:entrytext&gt;Maco Door &amp;amp; Window Hardware (UK) Ltd v Revenue and Customs Commissioners &lt;/index:entrytext&gt;
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

  <xsl:template match="in:entry[ancestor::in:body]">
    
    <!--  Original Target XPath:  index:entry   -->
    <index:entry>
      <xsl:apply-templates select="@* | node()"/>
      <xsl:apply-templates select="following-sibling::see"/>
    </index:entry>
    
  </xsl:template>
  
  <xsl:template match="in:entry[ancestor::in:tabular-index]">
    
    <!--  Original Target XPath:  index:entry   -->
    <index:tabularentry>
      <xsl:apply-templates select="@* | node()"/>
    </index:tabularentry>
    
  </xsl:template>

</xsl:stylesheet>