<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_p-limited-to-LexisAdvance_p">
		 <title><sourcexml>p-limited</sourcexml> to <targetxml>p</targetxml> <lnpid>id-CCCC-10419</lnpid></title>
		 <body>
		 <section>
				<p><sourcexml>p-limited</sourcexml> becomes <targetxml>p</targetxml>. Also create a child element <targetxml>text</targetxml> within <targetxml>p</targetxml> for capturing the PCDATA of <sourcexml>p-limited</sourcexml>.</p>
			</section>
	
			<example>
				<title>Source XML</title>
				<codeblock>

&lt;entry align="center"&gt;
    &lt;p-limited&gt;
        &lt;emph typestyle="bu"&gt;AGENDA&lt;/emph&gt;
    &lt;/p-limited&gt;
&lt;/entry&gt;
			</codeblock>
			</example>
	
			<example>
				<title>Target XML</title>
				<codeblock>

&lt;entry align="center"&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="bu"&gt;AGENDA&lt;/emph&gt;
        &lt;/text&gt;
    &lt;/p&gt;
&lt;/entry&gt;
				</codeblock>
			</example>
		  <section>
		   <title>Changes</title>
		  </section>
		 </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_p-limited-LxAdv-p.dita  -->

             <!-- BRT: this is the same rule as in Rosetta_p-limited_emph-LxAdv-p_text_emph.dita, and is already addressed there. 
                 The otherwise condition in match="p-limited" creates p (no text), which conflicts with this rule. -->
	<!--Satbir: Define low priority in below template for p-limited because same template created in another xsl (Rosetta_entry_p-limited-LxAdv-entry_p.xsl)-->
	<xsl:template match="p-limited" priority="10">
		<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<text>
				<xsl:apply-templates select="@* | node()"/>
			</text>
		</p>
	</xsl:template>

</xsl:stylesheet>