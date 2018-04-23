<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:in="http://www.lexis-nexis.com/glp/in"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	version="2.0" exclude-result-prefixes="dita">

  <dita:topic id="navaid-see-also">
    <title>see-also <lnpid>id-AU16-21037</lnpid> </title>
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
          <![CDATA[
<in:lev1 subdoc="true" toc-caption="Aggrieved">
    <in:entry>
        <in:entry-text>Aggrieved.</in:entry-text> 
        <in:index-ref>
            [Criminal Justice Act 1988, s 159],...
        </in:index-ref>
    </in:entry>
    <see-also>
        <emph typestyle="it">See</emph> 
        Person aggrieved. 
    </see-also>
</in:lev1>
        ]]>
        </codeblock>
        <lines><b>Target XML</b> showing conversion from <sourcexml>see-also</sourcexml> to
          <targetxml>index:locator</targetxml></lines>
        <codeblock>
          <![CDATA[
<index:index includeintoc="true" alternatetoccaption="Aggrieved">
    <index:item>
        <index:entry>
            <index:entrytext>Aggrieved.</index:entrytext>
            <index:locator>[Criminal Justice Act 1988, s 159],...</index:locator>
        </index:entry>
        <index:item>
            <index:entry>
                <index:entrytext><emph typestyle="it">See also</emph> Person aggrieved.</index:entrytext>
            </index:entry>
        </index:item>
    </index:item>
</index:index>
]]>
        </codeblock>
      </example>
      <section>
        <title>Changes</title>
        <p>2017-04-28: <ph id="change_20170428_RS">Created a new dita module (instruction) for
          <sourcexml>see-also</sourcexml> markup handling.</ph></p>
      </section>
    </body>
  </dita:topic>

<xsl:template match="see-also">
  <index:entry>
    <index:entrytext>
      <xsl:apply-templates select="@* | node()"/>
    </index:entrytext>
  </index:entry>
</xsl:template>
  
</xsl:stylesheet>