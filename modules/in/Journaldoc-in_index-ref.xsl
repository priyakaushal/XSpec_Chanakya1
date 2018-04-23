<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc-in_index-ref">
  <title>in:index-ref <lnpid>id-ST09-32618</lnpid></title>

  <body>
    <p><sourcexml>in:index-ref</sourcexml> with no <sourcexml>remotelink</sourcexml> within it becomes
        <targetxml>index:locator</targetxml>. The direct PCDATA content within <sourcexml>in:index-ref</sourcexml> becomes direct PCDATA content within <targetxml>index:locator</targetxml>.</p>

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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc-in_index-ref.dita  -->
	<xsl:message>Journaldoc-in_index-ref.xsl requires manual development!</xsl:message> 

	<xsl:template match="in:index-ref">

		<!--  Original Target XPath:  index:locator   -->
		<index:locator>
			<xsl:apply-templates select="@* | node()"/>
		</index:locator>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  index:locator   -->
		<index:locator>
			<xsl:apply-templates select="@* | node()"/>
		</index:locator>

	</xsl:template>

</xsl:stylesheet>