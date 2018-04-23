<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_lndocmeta="http://www.lexis-nexis.com/lndocmeta" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita lndocmeta">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lndocmeta_lnfilenum">
    <title>lndocmeta:lnfilenum <lnpid>id-RU02-32019</lnpid>
    </title>

    <body>
        <p>
            <sourcexml>lndocmeta:lnfilenum</sourcexml> becomes
                <targetxml>doc:metadata/doc:sourcedocinfo/lndocmeta:docinfo/lndocmeta:lnfilenum</targetxml>
            with required attribute <targetxml>@lnfilenum</targetxml>. </p>

        <example>
            <title>Source XML</title>
            <codeblock>
&lt;lndocmeta:docinfo&gt;
     &lt;lndocmeta:lnfilenum lnfilenum="001"/&gt; .... &lt;/lndocmeta:docinfo&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML </title>
            <codeblock>
&lt;doc:sourcedocinfo&gt;
    &lt;lndocmeta:docinfo&gt;
         &lt;lndocmeta:lnfilenum lnfilenum="001"/&gt;
    &lt;/lndocmeta:docinfo&gt;
&lt;/doc:sourcedocinfo&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lndocmeta_lnfilenum.dita  -->
	<xsl:message>RU02-lndocmeta_lnfilenum.xsl requires manual development!</xsl:message> 

	<xsl:template match="lndocmeta:lnfilenum"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  doc:metadata/doc:sourcedocinfo/lndocmeta:docinfo/lndocmeta:lnfilenum   -->
		<doc:metadata>
			<doc:sourcedocinfo>
				<lndocmeta:docinfo xmlns:lndocmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lndocmeta/1/">
					<lndocmeta:lnfilenum>
						<xsl:apply-templates select="@* | node()"/>
					</lndocmeta:lnfilenum>
				</lndocmeta:docinfo>
			</doc:sourcedocinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>