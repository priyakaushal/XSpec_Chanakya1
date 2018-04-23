<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-in-lev2">
  <title>in:lev2 <lnpid>id-UK18-35215</lnpid></title>
  <body>
    <section>
    <p>This markup used for second entry level for an Index in source documents and
          <sourcexml>in:lev2</sourcexml> should be mapped to
          <targetxml>index:index[@indextype="topical"]/index:item/index:item</targetxml>.
          <targetxml>Index item</targetxml> containing the entry text and locator , and optionally,
        subitems.</p>
      <p>If the Input xpath is <sourcexml>/INDEXDOC/in:body/in:lev1/in:lev2</sourcexml> then it
        should be mapped to
          <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item/index:item</targetxml>. </p>
      
      <note>Each <sourcexml>in:lev1/in:lev2</sourcexml> becomes a nested
          <targetxml>index:item</targetxml> within the <targetxml>index:item</targetxml> created as
        a result of <sourcexml>in:lev1</sourcexml>. In other words, each
          <sourcexml>in:lev1/in:lev2</sourcexml> becomes
          <targetxml>index:index[@indextype="topical"]/index:item/index:item</targetxml>. Then
          <sourcexml>in:lev1/in:lev2/in:entry</sourcexml> becomes
          <targetxml>index:index/index:item/index:item/index:entry</targetxml>. and is converted as
        described in other section for <sourcexml>in:entry</sourcexml> becomimg
          <targetxml>index:entry</targetxml>. All other nested child levels
          "<sourcexml>in:lev3</sourcexml>, <sourcexml>in:lev4</sourcexml>,
          <sourcexml>in:lev5</sourcexml> and <sourcexml>in:lev6</sourcexml>" should be handled in
        same pattern and create nested target levels.</note>
      <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the conversion except citation markup.</note>
      <p>Refer to the source and target examples in the following pages.</p>
    </section>
    <example>
      <lines><b>Source XML</b></lines>
      <codeblock>
        
&lt;in:lev1 searchtype="1" subdoc="true" toc-caption="PA Holdings Ltd and anor v Revenue and Customs Comrs"&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;PA Holdings Ltd and anor v Revenue and Customs Comrs &lt;/in:entry-text&gt;
      ...
    &lt;/in:entry&gt;
    &lt;in:lev2 searchtype="2"&gt;
      &lt;in:entry&gt;
        &lt;in:entry-text&gt;Affirmed, &lt;/in:entry-text&gt;
        ...
      &lt;/in:entry&gt;
      &lt;in:lev3&gt;
        &lt;in:entry&gt;
          &lt;in:entry-text&gt;applications for disqualification orders&lt;/in:entry-text&gt;
        &lt;/in:entry&gt;
        &lt;in:lev4&gt;
          &lt;in:entry&gt;
            &lt;in:entry-text&gt;delay&lt;/in:entry-text&gt;
          &lt;/in:entry&gt;
        &lt;/in:lev4&gt;
      &lt;/in:lev3&gt;
    &lt;/in:lev2&gt;
&lt;/in:lev1&gt;
        
      </codeblock>
      <lines><b>Target XML</b> showing conversion from <sourcexml>in:lev2</sourcexml> to <targetxml>index:item/index:item</targetxml></lines>
      <codeblock>

&lt;navaid:landingpagebody&gt;
    &lt;index:index indextype="topical" includeintoc="true" alternatetoccaption="PA Holdings Ltd and anor v Revenue and Customs Comrs"&gt;
      &lt;index:item&gt;
        &lt;index:entry&gt;
          &lt;index:entrytext&gt;PA Holdings Ltd and anor v Revenue and Customs Comrs &lt;/index:entrytext&gt;
        &lt;/index:entry&gt;
        &lt;index:item&gt;
          &lt;index:entry&gt;
            &lt;index:entrytext&gt;Affirmed, &lt;/index:entrytext&gt;
          &lt;/index:entry&gt;
          &lt;index:item&gt;
            &lt;index:entry&gt;
              &lt;index:entrytext&gt;applications for disqualification orders&lt;/index:entrytext&gt;
            &lt;/index:entry&gt;
            &lt;index:item&gt;
              &lt;index:entry&gt;
                &lt;index:entrytext&gt;delay&lt;/index:entrytext&gt;
              &lt;/index:entry&gt;
            &lt;/index:item&gt;
          &lt;/index:item&gt;
        &lt;/index:item&gt;
      &lt;/index:item&gt;
    &lt;/index:index&gt;
    ...
&lt;/navaid:landingpagebody&gt;

      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2015-02-16: <ph id="change_20150516_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<xsl:template match="in:lev2|in:lev3|in:lev4|in:lev5|in:lev6|in:lev7">

		<!--  Original Target XPath:  index:index[@indextype="topical"]/index:item/index:item   -->
	  <xsl:apply-templates select="heading"/>
	   <index:item>
	     <!-- 2017-10-12 - MDS: Added handling for in:entry/in:entry-text/refpt due to Web* 7020088  -->
	     <xsl:apply-templates select="in:entry/in:index-ref/refpt|in:entry/in:entry-text/refpt"/>
	      <xsl:apply-templates select="@* | node() except (heading, see[preceding-sibling::in:entry])"/>
	   </index:item>

	</xsl:template>


</xsl:stylesheet>