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

  <dita:topic id="navaid-see">
    <title>see <lnpid>id-AU16-21038</lnpid> </title>
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
          <![CDATA[
<in:body>
  <heading>
    <title>PE</title>
  </heading>
  <in:lev1 subdoc="true" toc-caption="PENALTY">
    <in:entry>
      <in:entry-text>PENALTY</in:entry-text>
    </in:entry>
    <in:lev2>
      <in:entry>
        <in:entry-text>Value added tax—</in:entry-text>
      </in:entry>
      <in:lev3>
        <in:entry>
          <in:entry-text>European Union</in:entry-text>
        </in:entry>
        <see>
          <emph typestyle="it">See </emph>
          <emph typestyle="bf">Value added tax</emph>(European Union—Penalty).
        </see>
      </in:lev3>
    </in:lev2>
  </in:lev1>
</in:body>
        ]]>
        </codeblock>
        <lines><b>Target XML</b> showing conversion from <sourcexml>see</sourcexml> to
          <targetxml>index:locator</targetxml></lines>
        <codeblock>
          <![CDATA[
<navaid:landingpagebody>
  <heading>
    <title>PE</title>
  </heading>
  <index:index includeintoc="true" alternatetoccaption="PENALTY">
    <index:item>
      <index:entry>
        <index:entrytext>PENALTY</index:entrytext>
      </index:entry>
      <index:item>
        <index:entry>
          <index:entrytext>Value added tax—</index:entrytext>
        </index:entry>
        <index:item>
          <index:entry>
            <index:entrytext>European Union</index:entrytext>
            <index:locator><emph typestyle="it">See </emph>
              <emph typestyle="bf">Value added tax</emph>(European Union—Penalty).</index:locator>
          </index:entry>
        </index:item>
      </index:item>
    </index:item>
  </index:index>
  ...
</navaid:landingpagebody>
]]>
        </codeblock>
      </example>
      <section>
        <title>Changes</title>
        <p>2017-04-28: <ph id="change_20170428_RS">Created.</ph></p>
      </section>
    </body>
  </dita:topic>

<xsl:template match="see">
  <index:locator>
    <xsl:apply-templates select="@* | node()"/>
  </index:locator>
</xsl:template>
  
</xsl:stylesheet>