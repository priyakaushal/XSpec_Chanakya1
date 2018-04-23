<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="citator">
    <title>CITATORDOC to cttr:citator <lnpid>id-CA03-13224</lnpid></title>
    <body>
        <p><sourcexml>CITATORDOC</sourcexml> becomes <targetxml>cttr:citator</targetxml>, the root
            element for the Citator schema. </p>
        <p>Create <targetxml>cttr:head</targetxml>, <targetxml>cttr:body</targetxml>, and
                <targetxml>doc:metadata</targetxml> as required children of
                <targetxml>cttr:citator</targetxml>.</p>
        <p><pre>&lt;CITATORDOC&gt;
    ...
&lt;/CITATORDOC&gt;</pre> becomes <pre>&lt;cttr:citator&gt;
    &lt;cttr:head&gt;...&lt;/cttr:head&gt;
    &lt;cttr:body&gt;...&lt;/cttr:body&gt;
    &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/cttr:citator&gt; </pre>The source attributes are described below: <ul>
                <li>
                    <sourcexml>CITATORDOC/@signal</sourcexml> becomes
                        <targetxml>cttr:citator/@treatment</targetxml><pre>&lt;CITATORDOC signal="cautionary"&gt;
    ...
&lt;/CITATORDOC&gt;</pre> becomes <pre>&lt;cttr:citator treatment="cautionary"&gt;
    ...
    &lt;/cttr:citator&gt;</pre>
                    <note>In most instances the conversion of
                            <sourcexml>CITATORDOC/@signal</sourcexml> is a direct copy of the source
                        text to <targetxml>cttr:citator/@treatment</targetxml>. However,
                            <sourcexml>CITATORDOC/@signal="statute-cited"</sourcexml> becomes
                            <targetxml>cttr:citator/@treatment="leg-citator-available"</targetxml></note>
                </li>
                <li><sourcexml>CITATORDOC/@citatordoctype</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem[@name="citatordoctype"]</targetxml>
                    and <targetxml>doc:legacy-metadata/meta/metaitem[@value="xxxx"]</targetxml> with
                    xxxx being the contents of the original attribute. <pre>&lt;CITATORDOC citatordoctype="quick-cite"&gt;
    ...
&lt;/CITATORDOC&gt;</pre> becomes <pre>&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="citatordoctype" value="quick-cite"/&gt;
    &lt;/meta&gt;
    &lt;/doc:legacy-metadata&gt;</pre>
                </li>
                <li><sourcexml>CITATORDOC/@fullcourt</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem[@name="fullcourt"]</targetxml>
                    and <targetxml>doc:legacy-metadata/meta/metaitem[@value="xxxx"]</targetxml> with
                    xxxx being either "true" or "false" based on the source. <pre>&lt;CITATORDOC fullcourt="false"&gt;
    ...
&lt;/CITATORDOC&gt;</pre> becomes <pre>&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="fullcourt" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;</pre>
                </li>
                <li><sourcexml>CITATORDOC/@notannotated</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem[@name="notannotated"]</targetxml>
                    and <targetxml>doc:legacy-metadata/meta/metaitem[@value="xxxx"]</targetxml> with
                    xxxx being either "true" or "false" based on the source. <pre>&lt;CITATORDOC notannotated="true"&gt;
    ...
&lt;/CITATORDOC&gt;</pre> becomes <pre>&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="notannotated" value="true"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;</pre>
                </li>
                <li><sourcexml>CITATORDOC/@shortannot</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem[@name="shortannot"]</targetxml>
                    and <targetxml>doc:legacy-metadata/meta/metaitem[@value="xxxx"]</targetxml> with
                    xxxx being either "true" or "false" based on the source. <pre>&lt;CITATORDOC shortannot="false"&gt;
    ...
&lt;/CITATORDOC&gt;</pre> becomes <pre>&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="shortannot" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;</pre>
                </li>
                <li><sourcexml>CITATORDOC/@unreported</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem[@name="unreported"]</targetxml>
                    and <targetxml>doc:legacy-metadata/meta/metaitem[@value="xxxx"]</targetxml> with
                    xxxx being either "true" or "false" based on the source. <pre>&lt;CITATORDOC unreported="false"&gt;
    ...
&lt;/CITATORDOC&gt;</pre> becomes <pre>&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="unreported" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;</pre>
                </li>
                <li><sourcexml>CITATORDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem[@name="under-appeal"][@value="true"]</sourcexml>
                    becomes
                        <targetxml>doc:docinfo/doc:legacy-metadata/meta/docinfo:metaitem[@name="under-appeal"][@value="true"]</targetxml>. <pre>&lt;CITATORDOC&gt;
    ...
    &lt;docinfo&gt;
        &lt;docinfo:lbu-meta&gt;
            ...
            &lt;docinfo:metaitem name="under-appeal" value="true"/&gt;
        &lt;/docinfo:lbu-meta&gt;
    &lt;docinfo&gt;            
&lt;/CITATORDOC&gt;</pre> becomes <pre>
&lt;doc:docinfo&gt;
    &lt;doc:legacy-metadata&gt;
        &lt;meta&gt;
            &lt;metaitem name="under-appeal" value="true"/&gt;
        &lt;/meta&gt;
    &lt;/doc:legacy-metadata&gt;
&lt;doc:docinfo&gt;</pre>
                </li>
            </ul><ul>
                <li><sourcexml>CITATORDOC/@id</sourcexml> is dropped because
                        <targetxml>doc:docinfo/dc:metadata/dc:identifier</targetxml> captures its
                    content. </li>
                <li><sourcexml>CITATORDOC/@journalarticle</sourcexml> is dropped. </li>
                <li><sourcexml>CITATORDOC/@daily_pub</sourcexml> is dropped </li>
                <li><sourcexml>CITATORDOC/@weekly_pub</sourcexml> is dropped </li>
                <li><sourcexml>CITATORDOC/@monthly_pub</sourcexml> is dropped </li>
            </ul></p>
        <section>
            <title>Changes</title>
            <p>2015-02-11: <ph id="change_20150211_sep">Change note for converting <sourcexml>CITATORDOC/@signal="statute-cited"</sourcexml> to become  <targetxml>cttr:citator/@treatment="leg-citator-available"</targetxml>. R4.5 RFA #2179</ph>. </p>
            <p>2014-02-12: <ph id="change_20140212_brt">Added note for converting <sourcexml>CITATORDOC/@signal="statute-cited"</sourcexml></ph>. </p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_CITATORDOC-to-LxAdv_cttr.citator.dita  -->
	<xsl:message>Rosetta_CITATORDOC-to-LxAdv_cttr.citator.xsl requires manual development!</xsl:message> 

	<xsl:template match="CITATORDOC">

		<!--  Original Target XPath:  cttr:citator   -->
		<cttr:citator>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="CITATORDOC/@signal">

		<!--  Original Target XPath:  cttr:citator/@treatment   -->
		<cttr:citator>
			<xsl:attribute name="treatment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="CITATORDOC/@signal=&#34;statute-cited&#34;">

		<!--  Original Target XPath:  cttr:citator/@treatment="leg-citator-available"   -->
		<cttr:citator>
			<xsl:attribute name="treatment">
				<xsl:text>leg-citator-available</xsl:text>
			</xsl:attribute>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="CITATORDOC/@citatordoctype">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem[@name="citatordoctype"]   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="CITATORDOC/@fullcourt">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem[@name="fullcourt"]   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="CITATORDOC/@notannotated">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem[@name="notannotated"]   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="CITATORDOC/@shortannot">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem[@name="shortannot"]   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="CITATORDOC/@unreported">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem[@name="unreported"]   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="CITATORDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem[@name=&#34;under-appeal&#34;][@value=&#34;true&#34;]">

		<!--  Original Target XPath:  doc:docinfo/doc:legacy-metadata/meta/docinfo:metaitem[@name="under-appeal"][@value="true"]   -->
		<doc:docinfo>
			<doc:legacy-metadata>
				<meta>
					<error_docinfo:metaitem xmlns:error_docinfo="docinfo_ERROR">
						<xsl:apply-templates select="@* | node()"/>
					</error_docinfo:metaitem>
				</meta>
			</doc:legacy-metadata>
		</doc:docinfo>

	</xsl:template>

	<xsl:template match="CITATORDOC/@id">

		<!--  Original Target XPath:  doc:docinfo/dc:metadata/dc:identifier   -->
		<doc:docinfo>
			<dc:metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
				<dc:identifier>
					<xsl:apply-templates select="@* | node()"/>
				</dc:identifier>
			</dc:metadata>
		</doc:docinfo>

	</xsl:template>

	<xsl:template match="CITATORDOC/@journalarticle">

		<!--  Original Target XPath:  cttr:citator/@treatment="leg-citator-available"   -->
		<cttr:citator>
			<xsl:attribute name="treatment">
				<xsl:text>leg-citator-available</xsl:text>
			</xsl:attribute>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="CITATORDOC/@daily_pub">

		<!--  Original Target XPath:  cttr:citator/@treatment="leg-citator-available"   -->
		<cttr:citator>
			<xsl:attribute name="treatment">
				<xsl:text>leg-citator-available</xsl:text>
			</xsl:attribute>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="CITATORDOC/@weekly_pub">

		<!--  Original Target XPath:  cttr:citator/@treatment="leg-citator-available"   -->
		<cttr:citator>
			<xsl:attribute name="treatment">
				<xsl:text>leg-citator-available</xsl:text>
			</xsl:attribute>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="CITATORDOC/@monthly_pub">

		<!--  Original Target XPath:  cttr:citator/@treatment="leg-citator-available"   -->
		<cttr:citator>
			<xsl:attribute name="treatment">
				<xsl:text>leg-citator-available</xsl:text>
			</xsl:attribute>
		</cttr:citator>

	</xsl:template>

</xsl:stylesheet>