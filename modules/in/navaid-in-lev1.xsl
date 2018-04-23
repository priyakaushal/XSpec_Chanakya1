<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-in-lev1">
  <title>in:lev1 <lnpid>id-UK18-35214</lnpid></title>
  <body>
    <section>
    <p>This markup used for first entry level for an Index in source
        documents and it should be mapped in target on the basis of below scenarios:</p>
      <p><b><u>First Scenario</u></b>: If input xpath is
          <sourcexml>/INDEXDOC/in:body/in:lev1</sourcexml> (means <sourcexml>in:lev1</sourcexml>
        element is direct child of <sourcexml>in:body</sourcexml>) then it should be mapped to
          <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item</targetxml>.
        Attributes and child elements should be mapped from source to target on the basis of below
        list: <ul>
          <li><sourcexml>in:lev1@subdoc</sourcexml> mapped to
              <targetxml>index:index@includeintoc/index:item</targetxml>.</li>
          <li><sourcexml>in:lev1@toc-caption</sourcexml> mapped to
              <targetxml>index:index@alternatetoccaption/index:item</targetxml>.</li>
          <li><sourcexml>in:entry</sourcexml> mapped to <targetxml>index:entry</targetxml>.</li>
          <li><sourcexml>in:entry-text</sourcexml> mapped to
              <targetxml>index:entrytext</targetxml>.</li>
          <li><sourcexml>in:index-ref</sourcexml> mapped to
            <targetxml>index:locator</targetxml>.</li>
        </ul>
      </p>
      <p><b><u>Second Scenario</u></b>: If input xpath is
          <sourcexml>/INDEXDOC/in:body/in:tabular-index/in:lev1</sourcexml> (means
          <sourcexml>in:lev1</sourcexml> element is a direct child of
          <sourcexml>in:tabular-index</sourcexml>) then it should be mapped to
          <targetxml>/navaid:landingpage/navaid:landingpagebody/index:tabularindex/index:tabularentry</targetxml>
        and its child elements should be mapped from source to target on the basis of below list: <ul>
          <li><sourcexml>in:lev1/in:entry</sourcexml> mapped to
              <targetxml>index:tabularentry</targetxml>.</li>
          <li><sourcexml>in:entry-text</sourcexml> mapped to
              <targetxml>index:entrytext</targetxml>.</li>
          <li><sourcexml>in:index-ref</sourcexml> mapped to
            <targetxml>index:locator</targetxml>.</li>
        </ul></p>
      <p>
        If <sourcexml>in:lev1</sourcexml> have child element as<sourcexml>heading</sourcexml> then it will be mapped to 
        <targetxml>index:index/heading</targetxml>
      </p>
      
      <note>The attribute <sourcexml>@searchtype</sourcexml> will be suppressed from the
        conversion except citation markup.</note>
      <p>Refer to the source and target examples in the following pages.</p>
    </section>
    <example>
      <lines><b>Source XML 1</b></lines>
      <codeblock>
        
&lt;in:body&gt;
    &lt;heading&gt;
      &lt;title&gt;PA&lt;/title&gt;
    &lt;/heading&gt;
    &lt;in:lev1 searchtype="1" subdoc="true" toc-caption="PA Holdings Ltd and anor v Revenue and Customs Comrs"&gt;
      &lt;in:entry&gt;
        &lt;in:entry-text&gt;PA Holdings Ltd and anor v Revenue and Customs Comrs &lt;/in:entry-text&gt;
        ...
      &lt;/in:entry&gt;
    &lt;/in:lev1&gt;
&lt;/in:body&gt;
        
      </codeblock>
      <lines><b>Target XML 1</b> showing conversion from <sourcexml>in:body/in:lev1</sourcexml> to
      <targetxml>navaid:landingpagebody/index:index[@indextype="topical"]/index:item</targetxml></lines>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;heading&gt;
    &lt;title&gt;PA&lt;/title&gt;
  &lt;/heading&gt;
  &lt;index:index indextype="topical" includeintoc="true" alternatetoccaption="PA Holdings Ltd and anor v Revenue and Customs Comrs"&gt;
    &lt;index:item&gt;
      &lt;index:entry&gt;
        &lt;index:entrytext&gt;PA Holdings Ltd and anor v Revenue and Customs Comrs &lt;/index:entrytext&gt;
      &lt;/index:entry&gt;
    &lt;/index:item&gt;
  &lt;/index:index&gt;
  ...
&lt;/navaid:landingpagebody&gt;

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
        &lt;in:entry-text&gt;F and another (personal representatives of F, deceased) v Inland Revenue Commissioners &lt;/in:entry-text&gt;
        ...
      &lt;/in:entry&gt;
    &lt;/in:lev1&gt;
&lt;/in:tabular-index&gt;
        
      </codeblock>
      <lines><b>Target XML 2</b> showing conversion from <sourcexml>in:tabular-index/in:lev1</sourcexml> to
      <targetxml>index:tabularindex/index:tabularentry</targetxml></lines>
      <codeblock>

&lt;index:tabularindex&gt;
  &lt;index:columnheadings&gt;
    &lt;index:entrytextheading&gt;CASE NAME&lt;/index:entrytextheading&gt;
    &lt;index:locatorheading&gt;SCD REFERENCES&lt;/index:locatorheading&gt;
    &lt;index:locatorheading&gt;SpC NUMBER&lt;/index:locatorheading&gt;
  &lt;/index:columnheadings&gt;
  &lt;index:tabularentry&gt;
    &lt;index:entrytext&gt;F and another (personal representatives of F, deceased) v Inland Revenue Commissioners &lt;/index:entrytext&gt;
    ...
  &lt;/index:tabularentry&gt;
&lt;/index:tabularindex&gt;

      </codeblock>
    </example>
    <example><b>Source Sample: <sourcexml>in:lev1/heading</sourcexml></b>
      <codeblock>
        &lt;INDEXDOC&gt;
    &lt;in:body&gt;
        &lt;in:lev1&gt;
            &lt;heading&gt;
                &lt;title&gt;R&lt;/title&gt;
            &lt;/heading&gt;.... .. 
        &lt;/in:lev1&gt; ..... 
    &lt;/in:body&gt;
&lt;/INDEXDOC&gt;        
        </codeblock><codeblock>
        <b>Target Markup: <targetxml>index:index/heading</targetxml></b>
        
        &lt;navaid:landingpage&gt;
    &lt;navaid:landingpagebody&gt;
        &lt;index:index indextype="topical"&gt;
            &lt;heading&gt;
                &lt;title&gt;R&lt;/title&gt;
            &lt;/heading&gt;....
        &lt;/index:index&gt;....
    &lt;/navaid:landingpagebody&gt;
&lt;/navaid:landingpage&gt;
        
      </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>2016-10-26:<ph id="change_20161026_HP">Added instruction for handling xpath : <sourcexml>in:lev1/heading</sourcexml></ph></p>
      <p>2015-02-16:<ph id="change_20150516_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>
	
	<xsl:template match="in:lev1[parent::in:body]">

		<!--  Original Target XPath:  /navaid:landingpage/navaid:landingpagebody/index:index[@indextype="topical"]/index:item   -->
				<index:index>
					<xsl:attribute name="indextype">topical</xsl:attribute>
				  <xsl:apply-templates select="@*"/>
					<xsl:apply-templates select="heading"/>
					<index:item>
					  <!-- 2017-10-12 - MDS: Added handling for in:entry/in:entry-text/refpt due to Web* 7020088  -->
					  <xsl:apply-templates select="in:entry/in:index-ref/refpt|in:entry/in:entry-text/refpt"/>
					  <xsl:apply-templates select="node() except (heading, see[preceding-sibling::in:entry])"/>
					</index:item>
				  <!-- MDS 2017-05-02 - DO NOT USE.  Instruction is to maintain individual index:index for each in:lev1 -->
				  <!-- MDS 2017-05-01 - This would combine all in:lev1 siblings under a single index:index.  Must add '[1]' to end of template match. -->
				 <!-- <xsl:for-each select="following-sibling::in:lev1">
				    <index:item>
				      <xsl:apply-templates select="node() except (heading, see[preceding-sibling::in:entry])"/>
				    </index:item>
				  </xsl:for-each>-->
				</index:index>

	</xsl:template>


	<xsl:template match="in:lev1/@subdoc">

		<!--  Original Target XPath:  index:index@includeintoc/index:item   -->
		<xsl:attribute name="includeintoc" select="."/>

	</xsl:template>

	<xsl:template match="in:lev1/@toc-caption">

		<!--  Original Target XPath:  index:index@alternatetoccaption/index:item   -->
		<xsl:attribute name="alternatetoccaption" select="."/>

	</xsl:template>


	<xsl:template match="in:lev1[parent::in:tabular-index]">

		<!--  Original Target XPath:  /navaid:landingpage/navaid:landingpagebody/index:tabularindex/index:tabularentry   -->
			<xsl:apply-templates select="@* | node()"/>
					

	</xsl:template>

 
  <!-- MDS 2017-05-02 - DO NOT USE.  Instruction is to maintain individual index:index for each in:lev1 -->
  <!-- MDS 2017-05-01 - used to suppress all non-[1] in:lev1 elements as they are handled in other template. -->
  <!--
  <xsl:template match="in:lev1[preceding-sibling::in:lev1]"/>-->


</xsl:stylesheet>