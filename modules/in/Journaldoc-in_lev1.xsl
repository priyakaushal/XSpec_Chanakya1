<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc-in_lev1">
  <title>in:lev1 <lnpid>id-ST09-32619</lnpid></title>

  <body>
    <p><sourcexml>in:lev1</sourcexml> becomes <targetxml>index:item</targetxml></p>

    <note>If <sourcexml>in:lev2</sourcexml> to <sourcexml>in:lev10</sourcexml> 
      are present in the source then also becomes <targetxml>index:item</targetxml></note>
    
<pre>
  <b><i>Source example based on AU content</i></b>
  
&lt;index&gt;
	&lt;in:lev1&gt;
		&lt;in:entry&gt;
			&lt;in:entry-text&gt;&lt;emph typestyle="ro"&gt;Bradley and Minister for Immigration and Citizenship&lt;/emph&gt;&lt;/in:entry-text&gt;
			&lt;in:index-ref&gt;[8252]&lt;/in:index-ref&gt;
		&lt;/in:entry&gt;
	&lt;/in:lev1&gt;
....
&lt;/index&gt;

<b>Becomes</b>

&lt;index:index&gt;
	&lt;index:item&gt;
		&lt;index:entry&gt;
			&lt;index:entrytext&gt;&lt;emph typestyle="ro"&gt;Bradley and Minister for Immigration and Citizenship&lt;/emph&gt;&lt;/index:entrytext&gt;
      &lt;index:locator&gt;[8252]&lt;/index:locator&gt;
		&lt;/index:entry&gt;
	&lt;/index:item&gt;
....
&lt;/index:index&gt;
</pre>
    <section>
      <title>Changes</title>
      <p>Created.</p>
    </section>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc-in_lev1.dita  -->
	<xsl:message>Journaldoc-in_lev1.xsl requires manual development!</xsl:message> 

	<xsl:template match="in:lev1">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev2">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev10">

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

</xsl:stylesheet>