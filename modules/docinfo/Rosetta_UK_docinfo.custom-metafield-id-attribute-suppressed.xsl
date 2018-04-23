<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_UK_docinfo.custom-metafield-id-attribute-suppressed">
    <title><sourcexml>docinfo:custom-metafield[@id]</sourcexml> suppress
            <sourcexml>[@id]</sourcexml>
        <lnpid>id-CCCC-10521</lnpid></title>
    <body>
        <section><p>This is a special rule concerning only the attribute
                <sourcexml>@id</sourcexml>.</p><p>Suppress <sourcexml>@id</sourcexml> when it occurs
                as <sourcexml>docinfo:custom-metafield[@id]</sourcexml>.</p><p>The element
                    <sourcexml>docinfo:custom-metafield</sourcexml> converts per usual rules, see
                    <xref href="../common_newest/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"><sourcexml>docinfo:custom-metafields</sourcexml> to
                        <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
                    (id-CCCC-10485).</xref>
            </p></section>


        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="practice-area-link-params" id="master"
       &gt;competition::Competition::94244::94973::NewsAnalysis&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

            </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="practice-area-link-params" 
             value="competition::Competition::94244::94973::NewsAnalysis"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2015-04-09: <ph id="change_20150409_jm">New rule. Suppresses <sourcexml>@id</sourcexml> at <sourcexml>docinfo:custom-metafield[@id]</sourcexml>. No change to target xpath. The attribute is new in recent rosetta. Immediately affects only UK11-DN. R4.5 Content Issue 2261.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_UK_docinfo.custom-metafield-id-attribute-suppressed.dita  -->
	<xsl:message>Rosetta_UK_docinfo.custom-metafield-id-attribute-suppressed.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:custom-metafield[@id]">

		<!--  Original Target XPath:  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="[@id]">

		<!--  Original Target XPath:  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="docinfo:custom-metafield">

		<!--  Original Target XPath:  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="docinfo:custom-metafields">

		<!--  Original Target XPath:  doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

</xsl:stylesheet>