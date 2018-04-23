<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_publength">
  <title>publength <lnpid>id-NZ07DN-23825</lnpid></title>

  <body>
    <p><sourcexml>publength</sourcexml> becomes <targetxml>pubinfo:pubinfo/pubinfo:publength</targetxml></p>
    

<pre xml:space="preserve" class="- topic/pre ">
&lt;publength&gt;41 p&lt;/publength&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;pubinfo:pubinfo&gt;
    ...
    &lt;pubinfo:publength&gt;41 p&lt;/pubinfo:publength&gt;
&lt;/pubinfo:pubinfo&gt;
</pre>
</body>
	</dita:topic>

	<xsl:template match="publength">

		<!--  Original Target XPath:  pubinfo:pubinfo/pubinfo:publength   -->
			<pubinfo:publength>
				<xsl:apply-templates select="@* | node()"/>
			</pubinfo:publength>
		

	</xsl:template>

</xsl:stylesheet>