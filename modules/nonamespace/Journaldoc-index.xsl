<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc-index">
  <title>index <lnpid>id-ST09-32613</lnpid></title>

  <body>
    <p><sourcexml>index</sourcexml> becomes <targetxml>index:index/@indextype="topical"</targetxml></p>

    <note>If <sourcexml>index</sourcexml> is the child of <sourcexml>section/bodytext</sourcexml> then move the
                <targetxml>index:index</targetxml> as the
            child of <targetxml>section</targetxml> and omit
            the <targetxml>bodytext</targetxml>
            element.</note>

<pre>
    <b><i>Source example based on AU content</i></b>
    
&lt;level&gt;
    &lt;heading&gt;[8241] TABLE OF CASES&lt;/heading&gt;
    &lt;bodytext&gt;
        &lt;index&gt;
            &lt;in:lev1&gt;
                &lt;in:entry&gt;
                    &lt;in:entry-text&gt;&lt;emph typestyle="ro"&gt;Bradley and Minister for Immigration and
                            Citizenship&lt;/emph&gt;&lt;/in:entry-text&gt;
                    &lt;in:index-ref&gt;[8252]&lt;/in:index-ref&gt;
                &lt;/in:entry&gt;
            &lt;/in:lev1&gt;
            ....
        &lt;/index&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;

<b>Becomes</b>

&lt;section&gt;
    &lt;heading&gt;[8241] TABLE OF CASES&lt;/heading&gt;
    &lt;index:index indextype="topical"&gt;
        &lt;index:item&gt;
            &lt;index:entry&gt;
                &lt;index:entrytext&gt;&lt;emph typestyle="ro"&gt;Bradley and Minister for Immigration and
                        Citizenship&lt;/emph&gt;&lt;/index:entrytext&gt;
                &lt;index:locator&gt;[8252]&lt;/index:locator&gt;
            &lt;/index:entry&gt;
        &lt;/index:item&gt;
        ....
    &lt;/index:index&gt;
&lt;/section&gt;
</pre>
      
      <section>
          <title>Changes</title>
          <p>Created.</p>
      </section>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc-index.dita  -->
	<xsl:message>Journaldoc-index.xsl requires manual development!</xsl:message> 

	<xsl:template match="index">

		<!--  Original Target XPath:  index:index/@indextype="topical"   -->
		<index:index>
			<xsl:attribute name="indextype">
				<xsl:text>topical</xsl:text>
			</xsl:attribute>
		</index:index>

	</xsl:template>

	<xsl:template match="section/bodytext">

		<!--  Original Target XPath:  index:index   -->
		<index:index>
			<xsl:apply-templates select="@* | node()"/>
		</index:index>

	</xsl:template>

</xsl:stylesheet>