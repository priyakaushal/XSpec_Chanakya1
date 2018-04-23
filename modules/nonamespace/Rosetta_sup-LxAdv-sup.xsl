<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_sup_to-LexisAdvance_sup">
<title><sourcexml>sup</sourcexml> to <targetxml>sup</targetxml> <lnpid>id-CCCC-10474</lnpid></title>
<body>
	<section>
		<title>Instructions <i>[common element]</i></title>
		<p><sourcexml>sup</sourcexml> becomes <targetxml>sup</targetxml>
		</p>
    </section>
	
    <example>
		<title>Source XML</title>
		<codeblock>

&lt;emph typestyle="it"&gt;
  &lt;sup&gt;*&lt;/sup&gt;
&lt;/emph&gt;

	</codeblock>
    </example>
	
    <example>
		<title>Target XML</title>
		<codeblock>

&lt;emph typestyle="it"&gt;
  &lt;sup&gt;*&lt;/sup&gt;
&lt;/emph&gt;

	</codeblock>
    </example>

    <section>
		<title>Changes</title>
		<p>2011-12-15: Created.
		</p>
    </section>
</body>
	</dita:topic>

	<xsl:template match="sup">
		<sup xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</sup>

	</xsl:template>

</xsl:stylesheet>