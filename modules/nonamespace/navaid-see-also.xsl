<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-see-also">
  <title>see-also <lnpid>id-UK18-35218</lnpid></title>
  <body>
    <section>
      <p>If <sourcexml>see-also</sourcexml> element is a child of an entry levels that is itself a child
        of any of the <sourcexml>in:lev1</sourcexml>, <sourcexml>in:lev2</sourcexml> and
          <sourcexml>in:lev*</sourcexml> elements then it should be mapped to
        <targetxml>index:item/index:netry/index:entrytext</targetxml>.</p>
 
        <ul>
          <li>Input xpath is <sourcexml>/INDEXDOC/in:body/in:lev1/see-also</sourcexml> then it should be
            mapped to
            <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index/index:item/index:entry/index:entrytext</targetxml>.</li> 
          <li>Input xpath is <sourcexml>/INDEXDOC/in:body/in:lev1/in:lev2/see-also</sourcexml> then
          it should be mapped to
            <targetxml>/navaid:landingpage/navaid:landingpagebody/index:index/index:item/index:item/index:entry/index:entrytext</targetxml>.</li>
        </ul>

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
        
&lt;in:lev1 subdoc="true" toc-caption="Aggrieved"&gt;
    &lt;in:entry&gt;
        &lt;in:entry-text&gt;Aggrieved.&lt;/in:entry-text&gt; 
        &lt;in:index-ref&gt;
            [Criminal Justice Act 1988, s 159],...
        &lt;/in:index-ref&gt;
    &lt;/in:entry&gt;
    &lt;see-also&gt;
        &lt;emph typestyle="it"&gt;See&lt;/emph&gt; 
        Person aggrieved. 
    &lt;/see-also&gt;
&lt;/in:lev1&gt;
        
      </codeblock>
      <lines><b>Target XML</b> showing conversion from <sourcexml>see-also</sourcexml> to
    <targetxml>index:locator</targetxml></lines>
      <codeblock>

&lt;index:index includeintoc="true" alternatetoccaption="Aggrieved"&gt;
    &lt;index:item&gt;
        &lt;index:entry&gt;
            &lt;index:entrytext&gt;Aggrieved.&lt;/index:entrytext&gt;
            &lt;index:locator&gt;[Criminal Justice Act 1988, s 159],...&lt;/index:locator&gt;
        &lt;/index:entry&gt;
        &lt;index:item&gt;
            &lt;index:entry&gt;
                &lt;index:entrytext&gt;&lt;emph typestyle="it"&gt;See also&lt;/emph&gt; Person aggrieved.&lt;/index:entrytext&gt;
            &lt;/index:entry&gt;
        &lt;/index:item&gt;
    &lt;/index:item&gt;
&lt;/index:index&gt;

      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2015-08-11: <ph id="change_20150811_SS">Created a new dita module (instruction) for
            <sourcexml>see-also</sourcexml> markup handling.</ph></p>
    </section>
  </body>
	</dita:topic>
	
	<xsl:template match="see-also[parent::in:lev1|parent::in:lev2|parent::in:lev3|parent::in:lev4|parent::in:lev5|parent::in:lev6]">

		<!--  Original Target XPath:  index:item/index:netry/index:entrytext   -->
			<index:item>
			  <index:entry>
			    <index:entrytext>
			      <xsl:apply-templates select="@* | node()"/>
			    </index:entrytext>
			  </index:entry>	
			</index:item>	

	</xsl:template>

</xsl:stylesheet>