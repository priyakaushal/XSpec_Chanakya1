<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK17WEBINAR_DIGESTDOC">
    <title>DIGESTDOC <lnpid>id-UK17-30607</lnpid></title>

    <body>
        <p><sourcexml>DIGESTDOC</sourcexml> becomes <targetxml>seclaw:seclaw</targetxml> with the
            value of <targetxml>@seclawtype</targetxml> set to "practicalguidance".</p>
        <p><targetxml>seclaw:head</targetxml>, <targetxml>seclaw:body</targetxml>, and
                <targetxml>doc:metadata</targetxml> are created as required children of
                <targetxml>seclaw:seclaw</targetxml>. Create as empty element if necessary.</p>
        <example>
            <title>Source XML</title>
            <codeblock>&lt;DIGESTDOC&gt;
    ...
    &lt;docinfo:doc-lang lang="en" /&gt;
    &lt;docinfo:doc-country iso-cc="GB" /&gt;
    ...
&lt;/DIGESTDOC&gt;</codeblock>
            <title>Target XML</title>
            <codeblock>&lt;seclaw:seclaw seclawtype="practicalguidance" xml:lang="en-GB"&gt;
    &lt;seclaw:head&gt;
        ...
    &lt;/seclaw:head&gt;
    &lt;seclaw:body&gt;
        ...
    &lt;/seclaw:body&gt;
    &lt;doc:metadata&gt;
        ...
    &lt;/doc:metadata&gt;
&lt;/seclaw:seclaw&gt;</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p/>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-CLE_materials\UK17WEBINAR_DIGESTDOC.dita  -->
	<xsl:message>UK17WEBINAR_DIGESTDOC.xsl requires manual development!</xsl:message> 

	<xsl:template match="DIGESTDOC">

		<!--  Original Target XPath:  seclaw:seclaw   -->
		<seclaw:seclaw>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:seclaw>

	</xsl:template>

</xsl:stylesheet>