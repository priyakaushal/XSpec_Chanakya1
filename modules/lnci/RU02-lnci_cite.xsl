<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:statcode="http://www.lexisnexis.com/xmlschemas/content/legal/statutorycode/1/" version="2.0" exclude-result-prefixes="dita lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lnci_cite">
    <title>lnci:cite <lnpid>id-RU02-32009</lnpid>
    </title>

    <body>
        <p>
            <sourcexml>lnci:cite</sourcexml> becomes
                <targetxml>statcode:head/ref:citations/ref:cite4thisresource/lnci:cite</targetxml>. </p>
        <p>
            <sourcexml>lnci:content</sourcexml> becomes
                <targetxml>statcode:head/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content</targetxml>. </p>

        <p><b>Instructions</b></p>
        <p>In the Fab Pipeline, JCite/CFE shall conduct a lookup based on the lnci:content or the
            @normcite (if populated) and populate the markup with the additional keywords needed for
            cite traversal.</p>
        <p> The only markup needed for JCite/CFE is lnci:cite/lnci:content and optionally
                <targetxml>lnci:cite/@normcite</targetxml>. In order to resolve the correct “pile”
            target for cite link traversal, either a semantic child content type element as
            described below or the <targetxml>lnci:cite/@type</targetxml> attribute (but not both)
            must also be present in the output markup.</p>

        <p><sourcexml>lnci:cite</sourcexml> becomes <targetxml>lnci:cite</targetxml>, with all
            attribute names and values copied as they occur in the source. Convert all child
            elements of <sourcexml>lnci:cite</sourcexml> by copying the child elements and their
            attribute names and values from the <sourcexml>lnci:</sourcexml> namespace as is into
            the <targetxml>lnci:</targetxml> namespace. That is, every child of
                <sourcexml>lnci:cite</sourcexml> that has the form
                <sourcexml>lnci:{element-name}</sourcexml> is converted to
                <targetxml>lnci:{element-name}</targetxml>.</p>

        <pre>
&lt;lnci:cite&gt;
      &lt;lnci:content&gt;Civil Code of the RF, Part I, Art. 137&lt;/lnci:content&gt;
&lt;/lnci:cite&gt;
            


<b>Becomes</b>

&lt;statcode:head&gt;
    &lt;ref:citations&gt;
            &lt;ref:cite4thisresource&gt;
                &lt;lnci:cite&gt;
                    &lt;lnci:content&gt;Civil Code of the RF, Part I, Art. 137&lt;/lnci:content&gt;
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lnci_cite.dita  -->
	<xsl:message>RU02-lnci_cite.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  statcode:head/ref:citations/ref:cite4thisresource/lnci:cite   -->
		<statcode:head>
			<ref:citations xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<ref:cite4thisresource>
					<lnci:cite>
						<xsl:apply-templates select="@* | node()"/>
					</lnci:cite>
				</ref:cite4thisresource>
			</ref:citations>
		</statcode:head>

	</xsl:template>

	<xsl:template match="lnci:content"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  statcode:head/ref:citations/ref:cite4thisresource/lnci:cite/lnci:content   -->
		<statcode:head>
			<ref:citations xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<ref:cite4thisresource>
					<lnci:cite>
						<lnci:content>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:content>
					</lnci:cite>
				</ref:cite4thisresource>
			</ref:citations>
		</statcode:head>

	</xsl:template>

	<xsl:template match="lnci:"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:   -->
		<!--  Could not determine target element or attribute name:  <lnci:>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </lnci:>  -->

	</xsl:template>

	<xsl:template match="lnci:{element-name}"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:{element-name}   -->
		<!--  Could not determine target element or attribute name:  <lnci:{element-name}>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </lnci:{element-name}>  -->

	</xsl:template>

</xsl:stylesheet>