<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"     
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_sub_to-LexisAdvance_sub">
    <title><sourcexml>sub</sourcexml> to <targetxml>sub</targetxml> <lnpid>id-CCCC-10472</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><sourcexml>sub</sourcexml> becomes <targetxml>sub</targetxml>. </p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;emph typestyle="it"&gt;
  &lt;sub&gt;*&lt;/sub&gt;
&lt;/emph&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;emph typestyle="it"&gt;
  &lt;sub&gt;*&lt;/sub&gt;
&lt;/emph&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2011-12-15: Created. </p>
        </section>
    </body>
	</dita:topic>

	<xsl:template match="sub">
	    <sub xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</sub>
	</xsl:template>

</xsl:stylesheet>