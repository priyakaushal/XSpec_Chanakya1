<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-see">
  <title>see <lnpid>id-UK18-35217</lnpid></title>
  <body>
    <section>
      <p>If <sourcexml>see</sourcexml> element is a child of an entry levels that is itself a child
        of any of the <sourcexml>in:lev1</sourcexml>, <sourcexml>in:lev2</sourcexml> and
          <sourcexml>in:lev*</sourcexml> elements then it should be mapped to
          <targetxml>index:locator</targetxml>.</p>
 
        <ul>
          <li>Input xpath is <sourcexml>/INDEXDOC/in:body/in:lev1/see</sourcexml> then it should be
            mapped to
            <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index/index:item/index:entry/index:locator</targetxml>.</li> 
          <li>Input xpath is <sourcexml>/INDEXDOC/in:body/in:lev1/in:lev2/see</sourcexml> then it
          should be mapped to
            <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index/index:item/index:item/index:entry/index:locator</targetxml>.</li>
        </ul>
<note>If the source document has a <sourcexml>see</sourcexml> element which is a child of
          <sourcexml>in:lev*</sourcexml> and a sibling of <sourcexml>in:entry</sourcexml> then it
        should be mapped to <targetxml>index:locator</targetxml> as a child of
          <targetxml>index:entry</targetxml> element in NL target conversion.</note>
      <note>Each <sourcexml>in:lev1/in:lev2</sourcexml> becomes a nested
        <targetxml>index:item</targetxml> within the <targetxml>index:item</targetxml> created as
        a result of <sourcexml>in:lev1</sourcexml>. In other words, each
        <sourcexml>in:lev1/in:lev2</sourcexml> becomes
        <targetxml>index:index/index:item/index:item</targetxml>. Then
        <sourcexml>in:lev1/in:lev2/in:entry</sourcexml> becomes
        <targetxml>index:index/index:item/index:item/index:entry</targetxml>. and is converted as
        described in other section for <sourcexml>in:entry</sourcexml> becomimg
        <targetxml>index:entry</targetxml>. All other nested child levels
        "<sourcexml>in:lev3</sourcexml>, <sourcexml>in:lev4</sourcexml>,
        <sourcexml>in:lev5</sourcexml> and <sourcexml>in:lev6</sourcexml>" should be handled in
        same pattern and create nested target levels.</note>
      <p>Refer to the source and target examples in the following pages.</p>
    </section>
    <example>
      <lines><b>Source XML</b></lines>
      <codeblock>
        
&lt;in:body&gt;
  &lt;heading&gt;
    &lt;title&gt;PE&lt;/title&gt;
  &lt;/heading&gt;
  &lt;in:lev1 subdoc="true" toc-caption="PENALTY"&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;PENALTY&lt;/in:entry-text&gt;
    &lt;/in:entry&gt;
    &lt;in:lev2&gt;
      &lt;in:entry&gt;
        &lt;in:entry-text&gt;Value added tax—&lt;/in:entry-text&gt;
      &lt;/in:entry&gt;
      &lt;in:lev3&gt;
        &lt;in:entry&gt;
          &lt;in:entry-text&gt;European Union&lt;/in:entry-text&gt;
        &lt;/in:entry&gt;
        &lt;see&gt;
          &lt;emph typestyle="it"&gt;See &lt;/emph&gt;
          &lt;emph typestyle="bf"&gt;Value added tax&lt;/emph&gt;(European Union—Penalty).
        &lt;/see&gt;
      &lt;/in:lev3&gt;
    &lt;/in:lev2&gt;
  &lt;/in:lev1&gt;
&lt;/in:body&gt;
        
      </codeblock>
      <lines><b>Target XML</b> showing conversion from <sourcexml>see</sourcexml> to
    <targetxml>index:locator</targetxml></lines>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;heading&gt;
    &lt;title&gt;PE&lt;/title&gt;
  &lt;/heading&gt;
  &lt;index:index includeintoc="true" alternatetoccaption="PENALTY"&gt;
    &lt;index:item&gt;
      &lt;index:entry&gt;
        &lt;index:entrytext&gt;PENALTY&lt;/index:entrytext&gt;
      &lt;/index:entry&gt;
      &lt;index:item&gt;
        &lt;index:entry&gt;
          &lt;index:entrytext&gt;Value added tax—&lt;/index:entrytext&gt;
        &lt;/index:entry&gt;
        &lt;index:item&gt;
          &lt;index:entry&gt;
            &lt;index:entrytext&gt;European Union&lt;/index:entrytext&gt;
            &lt;index:locator&gt;&lt;emph typestyle="it"&gt;See &lt;/emph&gt;
              &lt;emph typestyle="bf"&gt;Value added tax&lt;/emph&gt;(European Union—Penalty).&lt;/index:locator&gt;
          &lt;/index:entry&gt;
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


  <xsl:template match="see[parent::in:lev1|parent::in:lev2|parent::in:lev3|parent::in:lev4|parent::in:lev5|parent::in:lev6]">	
    <!--  Original Target XPath:  index:locator   -->
    <index:locator>
      <xsl:apply-templates select="@* | node()"/>
    </index:locator>	
  </xsl:template>

</xsl:stylesheet>