<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_strike-to-LexisAdvance_strike">
<title><sourcexml>strike</sourcexml> to <targetxml>strike</targetxml> <lnpid>id-CCCC-10471</lnpid></title>
<body>
	<section>
		<title>Instructions <i>[common element]</i></title>
		<p><sourcexml>strike</sourcexml> becomes <targetxml>strike</targetxml>. The optional attribute <sourcexml>@typestyle</sourcexml> becomes <targetxml>@typestyle</targetxml>.
		</p>
    </section>
	
    <example>
		<title>Source XML 1</title>
		<codeblock>

&lt;emph typestyle="ro"&gt;
    &lt;strike typestyle="lineout"&gt;s&amp;#xA0;&lt;/strike&gt;
&lt;/emph&gt;&gt;

	</codeblock>
    </example>
	
    <example>
		<title>Target XML</title>
		<codeblock>

&lt;emph typestyle="ro"&gt;
    &lt;strike typestyle="lineout"&gt;s&amp;#xA0;&lt;/strike&gt;
&lt;/emph&gt;

	</codeblock>
    </example>
	<example>
		<title>Source XML 2</title>
		<codeblock>

&lt;strike&gt;Gilles Prud'homme&lt;/strike&gt;

	</codeblock>
	</example>
	
	<example>
		<title>Target XML</title>
		<codeblock>

&lt;strike typestyle="lineout"&gt;Gilles Prud'homme&lt;/strike&gt;

	</codeblock>
	</example>

    <section>
		<title>Changes</title>
		<p>2011-12-15: Created.</p>
    </section>
</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_strike-LxAdv-strike.dita  -->
<!-- Vikas Rohilla : Updated the template hegher the priorty -->
	<!-- JD: removed priority; commented competing template in /modules/nonamespace/Rosetta_text-LxAdv-text.xsl; 
	this should be the default for all <strike> handling. -->
	<xsl:template match="strike">
		<strike>
			<xsl:apply-templates select="@* | node()"/>
		</strike>
	</xsl:template>

<!-- Vikas Rohilla : creted template for the @typestyle-->
	<xsl:template match="strike/@typestyle">
	<xsl:attribute name="typestyle">
		<xsl:value-of select="."/>   
	</xsl:attribute>
</xsl:template>


</xsl:stylesheet>