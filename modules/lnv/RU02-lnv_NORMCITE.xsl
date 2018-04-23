<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:lnv="http://www.lexis-nexis.com/lnv" xmlns:statcode="http://www.lexisnexis.com/xmlschemas/content/legal/statutorycode/1/" version="2.0" exclude-result-prefixes="dita lnci lnv">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lnv_NORMCITE">
    <title>lnv:NORMCITE <lnpid>id-RU02-32043</lnpid>
    </title>

    <body>
        <p>
            <sourcexml>lnv:NORMCITE</sourcexml> becomes
                <targetxml>statcode:head/ref:citations/ref:cite4thisresource/@citetype="normcite</targetxml>.
<note>If data comes after <sourcexml>lnci:cite</sourcexml> then drop it in New Lexis conversion. For more clarification please refer the example below.</note> </p>
        <pre>
&lt;lnv:NORMCITE&gt;
    &lt;lnci:cite normcite="#A118#ART137" pub="none" pub-status="none" status="valid"
        type="cite4thisdoc" validate="1"&gt;
        &lt;lnci:content status="valid"&gt;Civil Code of the RF, Part I, Art. 137&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt; #A118#ART137
&lt;/lnv:NORMCITE&gt;

<b>Becomes</b>

&lt;statcode:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="normcite"&gt;
            &lt;lnci:cite normcite="#A118#ART137" pub="none" pub-status="none" status="valid"
                type="cite4thisdoc" validate="1"&gt;
                &lt;lnci:content status="valid"&gt;Civil Code of the RF, Part I, Art. 137&lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/statcode:head&gt;
</pre>

        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lnv_NORMCITE.dita  -->
	<xsl:message>RU02-lnv_NORMCITE.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnv:NORMCITE"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  statcode:head/ref:citations/ref:cite4thisresource/@citetype="normcite   -->
		<statcode:head>
			<ref:citations xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<ref:cite4thisresource>
					<xsl:attribute name="citetype">
						<xsl:text>normcite</xsl:text>
					</xsl:attribute>
				</ref:cite4thisresource>
			</ref:citations>
		</statcode:head>

	</xsl:template>

	<xsl:template match="lnci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>