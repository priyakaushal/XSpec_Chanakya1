<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-body">
  <title>Navaid Body <lnpid>id-UK18-35209</lnpid></title>
  <body>
    <section>
    <p>Throughout the landing page documents the same Rosetta element is often used to mark-up a
        variety of different semantics in the source landing page documents, and different Rosetta
        elements are used to mark-up the same semantic construct. As such, the same source elements
        map to different NewLexis target elements depending on what type of landing page document
        they occur in and their particular xpath within that type of landing page document. </p>
      <p>The 'body' part of Landing Page documents can have many different child elements such as
          "<sourcexml>in:lev1</sourcexml>", "<sourcexml>heading</sourcexml>",
          "<sourcexml>in:tabular-index</sourcexml>" and others. </p>
    <note>All content must be converted such that the order of elements is maintained whenever possible.</note>
      <p>Refer to the source and target examples in the following pages.</p>
    </section>
    <example>
      <lines><b>Source XML</b></lines>
      <codeblock>
        
&lt;in:body&gt;
  &lt;heading&gt;
    &lt;title&gt;Words and Phrases&lt;/title&gt;
  &lt;/heading&gt;
    ...
&lt;/in:body&gt;
        
      </codeblock>
      <lines><b>Target XML</b> showing conversion from <sourcexml>in:body</sourcexml> to <targetxml>navaid:landingpagebody</targetxml></lines>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;heading&gt;
    &lt;title&gt;Words and Phrases&lt;/title&gt;
  &lt;/heading&gt;
  ...
&lt;/navaid:landingpagebody&gt;

      </codeblock>
    </example>
    <section>
      <p>If input documents is having xpath "<sourcexml>in:body/p/text</sourcexml>" then it should
        be mapped with "<targetxml>navaid:landingpagebody/bodytext/p/text</targetxml>". Refer below
        input and target examples.</p>
    </section>
    <example>
      <lines><b>Source XML</b></lines>
      <codeblock>
        
&lt;in:body&gt;
  &lt;heading&gt;
    &lt;title&gt;WORDS &amp; PHRASES&lt;/title&gt;
  &lt;/heading&gt;
  &lt;p&gt;&lt;text align="center"&gt;Bold numbers denote Volume number.&lt;/text&gt;&lt;/p&gt;
  &lt;in:lev1&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;Words &amp; Phrases&lt;/in:entry-text&gt; 
  &lt;/in:entry&gt;
  ...
  &lt;/in:lev1&gt;
&lt;/in:body&gt;
  
        
      </codeblock>
      <lines><b>Target XML</b> showing conversion from <sourcexml>in:body/p/text</sourcexml> to <targetxml>navaid:landingpagebody/bodytext/p/text</targetxml></lines>
      <codeblock>

&lt;navaid:landingpagebody&gt;
  &lt;heading&gt;
    &lt;title&gt;WORDS &amp;amp; PHRASES&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext&gt;
    &lt;p align="center"&gt;&lt;text&gt;Bold numbers denote Volume number.&lt;/text&gt;&lt;/p&gt;
  &lt;/bodytext&gt;
  &lt;index:index indextype="topical"&gt;
    &lt;index:item&gt;
      &lt;index:entry&gt;
        &lt;index:entrytext&gt;Words &amp;amp; Phrases&lt;/index:entrytext&gt;
      &lt;/index:entry&gt;
    &lt;/index:item&gt;
  &lt;/index:index&gt;
  ....
&lt;/navaid:landingpagebody&gt;

      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2015-08-11: <ph id="change_20150811_SS">Added a new instruction for handling input Xpath
            "<sourcexml>in:body/p/text</sourcexml>".</ph></p>
      <p>2015-02-16: <ph id="change_20150516_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<xsl:template match="in:body[not(parent::INDEXDOC)]">

		<!--  Original Target XPath:  navaid:landingpagebody/bodytext/p/text   -->
			<bodytext>
						<xsl:apply-templates select="@* | node()"/>
			</bodytext>		

	</xsl:template>

</xsl:stylesheet>