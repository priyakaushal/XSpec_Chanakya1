<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Introduction">
    <title>Introduction <lnpid>id-IN04-38815</lnpid></title>
    <prolog>
        <metadata>
            <prodinfo>
                <prodname>HK08 Rosetta CITATORDOC to LxAdv cttr:citator</prodname>
                <vrmlist>
                    <vrm version=""/>
                </vrmlist>
            </prodinfo>
        </metadata>
    </prolog>
    <body>
        <p>This Conversion Instruction describes the conversion of <b>Citator</b> schema in the
            document.</p>
        <p>
            <sourcexml>CITATORDOC</sourcexml> becomes <targetxml>cttr:citator</targetxml>.It's a
            root element for Citator. The source attributes are described below: <pre>
        
        &lt;CITATORDOC&gt;
            ...
        &lt;/CITATORDOC&gt;
        
        <b>Becomes</b>
        
        &lt;cttr:citator&gt;
            ...
        &lt;/cttr:citator&gt;
        
</pre>
            <ul>
                <li>
                    <sourcexml>@signal</sourcexml> becomes <targetxml>@treatment</targetxml> and
                    it's values mapped according to below: <ul>
                        <li><sourcexml>@signal="neutral"</sourcexml> becomes
                                <targetxml>@treatment="neutral"</targetxml></li>
                        <li><sourcexml>@signal="citation"</sourcexml> becomes
                                <targetxml>@treatment="citation"</targetxml></li>
                        <li><sourcexml>@signal="positive"</sourcexml> becomes
                                <targetxml>@treatment="positive"</targetxml></li>
                        <li><sourcexml>@signal="negative"</sourcexml> becomes
                                <targetxml>@treatment="negative"</targetxml></li>
                    </ul>
                    <pre>

&lt;CITATORDOC signal="neutral"&gt;
    ...
&lt;/CITATORDOC&gt;

<b>Becomes</b>

&lt;cttr:citator treatment="neutral"&gt;
    ...
&lt;/cttr:citator&gt;

</pre>
                </li>
                <li>
                    <sourcexml>/CITATORDOC @citatordoctype="casebase"</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem
                        @name="citatordoctype"</targetxml> and <targetxml>
                        @value="casebase"</targetxml>
                    <pre>

&lt;CITATORDOC citatordoctype="casebase"&gt;
    ...
&lt;/CITATORDOC&gt;

<b>Becomes</b>

&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="citatordoctype" value="casebase"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                </li>
                <li>
                    <sourcexml>/CITATORDOC @daily_pub="false"</sourcexml> is dropped.</li>
                <li>
                    <sourcexml>/CITATORDOC @fullcourt="false"</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem @name="fullcourt"</targetxml>
                    and <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the value
                    can be 'true' or 'false' based on the source. <pre>

&lt;CITATORDOC fullcourt="false"&gt;
    ...
&lt;/CITATORDOC&gt;

<b>Becomes</b>

&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="fullcourt" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                </li>
                <li>
                    <sourcexml>/CITATORDOC @id</sourcexml> becomes <targetxml>@xml:id</targetxml>.
                        <note>All <targetxml>@xml:id</targetxml> attribute that begin with a number
                        must have an underscore added at start.</note>
                </li>
                <li>
                    <sourcexml>/CITATORDOC @journalarticle="false"</sourcexml> is dropped.
                        <note>Please note that the attribute <sourcexml>CITATORDOC
                            @journalarticle</sourcexml> is dropped in all the scenarios(value
                        ="true" or "false").</note>
                </li>
                <li>
                    <sourcexml>/CITATORDOC @monthly_pub="false"</sourcexml> is dropped.</li>
                <li>
                    <sourcexml>/CITATORDOC @notannotated="true"</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem
                        @name="notannotated"</targetxml> and <targetxml>@value</targetxml> the value
                    can be 'true' or 'false' based on the source. <pre>
&lt;CITATORDOC notannotated="false"&gt;
    ...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="notannotated" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                </li>
                <li>
                    <sourcexml>/CITATORDOC @shortannot="false"</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem @name="shortannot"</targetxml>
                    and <targetxml>@value</targetxml> the value can be 'true' or 'false' based on
                    the source. <pre>
&lt;CITATORDOC shortannot="false"&gt;
    ...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="shortannot" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                </li>
                <li>
                    <sourcexml>/CITATORDOC @unreported="false"</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem @name="unreported"</targetxml>
                    and <targetxml>@value</targetxml>the value can be 'true' or 'false' based on the
                    source. <pre>
&lt;CITATORDOC unreported="false"&gt;
    ...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="unreported" value="false"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                </li>
                <li>
                    <sourcexml>/CITATORDOC @weekly_pub="false"</sourcexml> is dropped </li>
                <li>
                    <sourcexml>CITATORDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem
                        @name="under-appeal" @value="true"</sourcexml> becomes
                        <targetxml>doc:docinfo/doc:legacy-metadata/meta/docinfo:metaitem
                        @name="under-appeal"</targetxml> and <targetxml>@value="true"</targetxml>. <pre>

&lt;CITATORDOC&gt;...
    &lt;docinfo&gt;
        &lt;docinfo:lbu-meta&gt;
            ...
            &lt;docinfo:metaitem name="under-appeal" value="true"/&gt;
        &lt;/docinfo:lbu-meta&gt;
    &lt;docinfo&gt;            
&lt;/CITATORDOC&gt;
<b>Becomes</b>

&lt;doc:docinfo&gt;
    &lt;doc:legacy-metadata&gt;
        &lt;meta&gt;
            &lt;metaitem name="under-appeal" value="true"/&gt;
        &lt;/meta&gt;
    &lt;/doc:legacy-metadata&gt;
&lt;doc:docinfo&gt;
 
</pre>
                </li>
            </ul>
        </p>

        <pre>
&lt;CITATORDOC&gt;
<b>Becomes</b>

&lt;cttr:citator&gt;
    &lt;cttr:head&gt;...&lt;/cttr:head&gt;
    &lt;cttr:body&gt;...&lt;/cttr:body&gt;
    &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/cttr:citator&gt;

</pre>

        <p>
            <targetxml>cttr:head</targetxml>, <targetxml>cttr:body</targetxml>, and
                <targetxml>doc:metadata</targetxml> are created as required children of
                <targetxml>cttr:citator</targetxml>
        </p>

        <section>
            <title>Note:</title>
            <p>Source elements and attributes are italicized and highlighted in BLUE like this:
                    <sourcexml>XML SOURCE</sourcexml></p>
            <p>Target elements and attributes are bold and highlighted in GREEN like this:
                    <targetxml>XML TARGET</targetxml></p>
            <p>COPY SOURCE ATTRIBUTES TO TARGET ATTRIBUTES UNLESS OTHERWISE SPECIFIED.</p>
            <p>Every example is represented like "EXAMPLE" and content is shaded -
                <pre> </pre></p>
        </section>
        <section>
            <title>Changes</title>
            <p>2016-08-18: <ph id="change_20160818_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_Citator_Introduction.dita  -->
	<xsl:message>IN04_Citator_Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="CITATORDOC">

		<!--  Original Target XPath:  cttr:citator   -->
		<cttr:citator>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="@signal">

		<!--  Original Target XPath:  @treatment   -->
		<xsl:attribute name="treatment">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@signal=&#34;neutral&#34;">

		<!--  Original Target XPath:  @treatment="neutral"   -->
		<xsl:attribute name="treatment">
			<xsl:text>neutral</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@signal=&#34;citation&#34;">

		<!--  Original Target XPath:  @treatment="citation"   -->
		<xsl:attribute name="treatment">
			<xsl:text>citation</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@signal=&#34;positive&#34;">

		<!--  Original Target XPath:  @treatment="positive"   -->
		<xsl:attribute name="treatment">
			<xsl:text>positive</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@signal=&#34;negative&#34;">

		<!--  Original Target XPath:  @treatment="negative"   -->
		<xsl:attribute name="treatment">
			<xsl:text>negative</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="/CITATORDOC @citatordoctype=&#34;casebase&#34;">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="citatordoctype"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @daily_pub=&#34;false&#34;">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="fullcourt"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @fullcourt=&#34;false&#34;">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="fullcourt"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="/CITATORDOC @journalarticle=&#34;false&#34;">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="notannotated"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="CITATORDOC&#xA;                            @journalarticle">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="notannotated"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @monthly_pub=&#34;false&#34;">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="notannotated"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @notannotated=&#34;true&#34;">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="notannotated"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @shortannot=&#34;false&#34;">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="shortannot"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @unreported=&#34;false&#34;">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem@name="unreported"   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

	<xsl:template match="/CITATORDOC @weekly_pub=&#34;false&#34;">

		<!--  Original Target XPath:  doc:docinfo/doc:legacy-metadata/meta/docinfo:metaitem@name="under-appeal"   -->
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

	<xsl:template match="CITATORDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem&#xA;                        @name=&#34;under-appeal&#34; @value=&#34;true&#34;">

		<!--  Original Target XPath:  doc:docinfo/doc:legacy-metadata/meta/docinfo:metaitem@name="under-appeal"   -->
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

	<xsl:template match="XML SOURCE">

		<!--  Original Target XPath:  XMLTARGET   -->
		<XMLTARGET>
			<xsl:apply-templates select="@* | node()"/>
		</XMLTARGET>

	</xsl:template>

</xsl:stylesheet>