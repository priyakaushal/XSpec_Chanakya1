<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	version="2.0" exclude-result-prefixes="dita source_cttr">
	<xsl:output indent="no"/>

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Citator_Introduction">
    <title>Introduction <lnpid>id-HK08-37613</lnpid></title>
    <prolog>
        <metadata>
            <prodinfo>
                <prodname>HK08 Rosetta CITATORDOC to LxAdv cttr</prodname>
                <vrmlist>
                    <vrm version=""/>
                </vrmlist>
            </prodinfo>
        </metadata>
    </prolog>
    <body>
        <p>This Conversion Instruction describes the conversion of Citator 1.16_PROD schema in the
            document.</p>
        <p>
            <sourcexml>CITATORDOC</sourcexml> becomes <targetxml>cttr:citator</targetxml>.It's a
            root element for Citator. The source attributes are described below: <pre>
&lt;CITATORDOC&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator&gt;...
&lt;/cttr:citator&gt;
</pre>
            <ul>
                <li>
                    <sourcexml>@signal</sourcexml> becomes <targetxml>@treatment</targetxml>
                    <pre>
&lt;CITATORDOC signal="cautionary"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;cttr:citator treatment="cautionary"&gt;...
&lt;/cttr:citator&gt;
</pre>
                </li>

                <li>
                    <sourcexml>/CITATORDOC @citatordoctype="casebase"</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem
                        @name="citatordoctype"</targetxml> and
                        <targetxml>doc:legacy-metadata/meta/metaitem @value="casebase"</targetxml>
                    <pre>
&lt;CITATORDOC citatordoctype="casebase"&gt;...
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
                    <sourcexml>/CITATORDOC @daily_pub="false"</sourcexml> is dropped </li>

                <li>
                    <sourcexml>/CITATORDOC @fullcourt="false"</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem @name="fullcourt"</targetxml>
                    and <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the value
                    can be 'true' or 'false' based on the source. <pre>
&lt;CITATORDOC fullcourt="false"&gt;...
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
                    <sourcexml>/CITATORDOC @id="10957"</sourcexml> is dropped because
                        <targetxml>doc:docinfo/dc:metadata/dc:identifier</targetxml> captures its
                    content. </li>

                <li>
                    <sourcexml>/CITATORDOC @journalarticle="false"</sourcexml> is dropped.
                        <note>Please note that the attribute <sourcexml>CITATORDOC
                            @journalarticle</sourcexml> is dropped in all the scenarios(value
                        ="true" or "false").</note>
                </li>

                <li>
                    <sourcexml>/CITATORDOC @monthly_pub="false"</sourcexml> is dropped </li>

                <li>
                    <sourcexml>/CITATORDOC @notannotated="true"</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem
                        @name="notannotated"</targetxml> and
                        <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the value
                    can be 'true' or 'false' based on the source. <pre>
&lt;CITATORDOC notannotated="true"&gt;...
&lt;/CITATORDOC&gt;
<b>Becomes</b>
&lt;doc:legacy-metadata&gt;
    &lt;meta&gt;
        &lt;metaitem name="notannotated" value="true"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
 
</pre>
                </li>

                <li>
                    <sourcexml>/CITATORDOC @shortannot="false"</sourcexml> becomes
                        <targetxml>doc:legacy-metadata/meta/metaitem @name="shortannot"</targetxml>
                    and <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml> the value
                    can be 'true' or 'false' based on the source. <pre>
&lt;CITATORDOC shortannot="false"&gt;...
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
                    and <targetxml>doc:legacy-metadata/meta/metaitem @value</targetxml>the value can
                    be 'true' or 'false' based on the source. <pre>
&lt;CITATORDOC unreported="false"&gt;...
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
                        @name="under-appeal" @value="true"]</targetxml>. <pre>

&lt;CITATORDOC&gt;...
    &lt;docinfo&gt;
        &lt;docinfo:lbu-meta&gt;...
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
            <p>2014-09-04: <ph id="change_20140904_jm">Updated schema version to
                1.0_PROD.</ph></p>
            <p>2014-06-27: <ph id="change_20140627_jm">Updated schema version to
                3.11_ALPHA.</ph></p></section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK08_CaseCitator\HK08_Citator_Introduction.dita  -->


	<xsl:template match="CITATORDOC">
	    
	    <xsl:param name="outputSchemaLoc"
	        select="'urn:x-lexisnexis:content:citator:sharedservices:1 sch_cttr.xsd'"/>

		<!--  Original Target XPath:  cttr:citator   -->
		<cttr:citator>
		    <xsl:for-each select="$lexisAdvNamespaces/*">
		        <xsl:sort/>
		        <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
		    </xsl:for-each>
		    
		    <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
		   <!-- <xsl:call-template name="xml_lang"/>-->
		    <!-- Awantika:2017-11-17-After discussion Commenting out xsl:call-template name="xml_lang" as input files have <docinfo:doc-country iso-cc="AU"/> and hard coding en-HK -->
		    <xsl:attribute name="xml:lang">
		        <xsl:text>en-HK</xsl:text>
		    </xsl:attribute>
			<xsl:apply-templates select="@* except(@citatordoctype | @fullcourt | @id | @notannotated | @shortannot | @unreported)"/>
			<xsl:apply-templates select="source_cttr:body/case:headnote"/>
			<xsl:apply-templates select="source_cttr:body"/>
			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>
		</cttr:citator>

	</xsl:template>

	<xsl:template match="/CITATORDOC/@signal">

		<!--  Original Target XPath:  @treatment   -->
		<xsl:attribute name="treatment">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

	<!-- Suppress CITATORDOC/@daily_pub -->
	<xsl:template match="/CITATORDOC/@daily_pub | /CITATORDOC/@journalarticle | /CITATORDOC/@monthly_pub | /CITATORDOC/@weekly_pub"/>

</xsl:stylesheet>