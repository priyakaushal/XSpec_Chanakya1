<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_lndocmeta="http://www.lexis-nexis.com/lndocmeta" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita lndocmeta">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lndocmeta_lndoctypelang">
    <title>lndocmeta:lndoctypelang <lnpid>id-RU02-32016</lnpid>
    </title>

    <body>
        <p>
            <sourcexml>lndocmeta:lndoctypelang</sourcexml> becomes
                <targetxml>doc:metadata/doc:sourcedocinfo/lndocmeta:docinfo/lndocmeta:lndoctypelang</targetxml>
            with required attribute <targetxml>@lndoctypelang</targetxml>..</p>

        <p>Also create <targetxml>{target.root.element}[@xml:lang]</targetxml> and the value of
                <sourcexml>@lndoctypelang</sourcexml> becomes value of
                <targetxml>@xml:lang</targetxml>.</p>

        <example>
            <title>Source XML</title>
            <codeblock>
&lt;lndocmeta:docinfo&gt;
     &lt;lndocmeta:lndoctypelang lndoctypelang="EN"/&gt; .... &lt;/lndocmeta:docinfo&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML </title>
            <codeblock>
&lt;doc:sourcedocinfo&gt;
    &lt;lndocmeta:docinfo&gt;
         &lt;lndocmeta:lndoctypelang lndoctypelang="EN"/&gt;
    &lt;/lndocmeta:docinfo&gt;
&lt;/doc:sourcedocinfo&gt;

and

&lt;{target.root.elm}  xml:lang="en-RU" ...&gt;      
	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lndocmeta_lndoctypelang.dita  -->
	<xsl:message>RU02-lndocmeta_lndoctypelang.xsl requires manual development!</xsl:message> 

	<xsl:template match="lndocmeta:lndoctypelang"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:metadata/doc:sourcedocinfo/lndocmeta:docinfo/lndocmeta:lndoctypelang   -->
		<doc:metadata>
			<doc:sourcedocinfo>
				<lndocmeta:docinfo xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/">
					<lndocmeta:lndoctypelang>
						<xsl:apply-templates select="@* | node()"/>
					</lndocmeta:lndoctypelang>
				</lndocmeta:docinfo>
			</doc:sourcedocinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="@lndoctypelang"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  {target.root.element}[@xml:lang]   -->
		<!--  Could not determine target element or attribute name:  <{target.root.element}[@xml:lang]>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </{target.root.element}[@xml:lang]>  -->

	</xsl:template>

</xsl:stylesheet>