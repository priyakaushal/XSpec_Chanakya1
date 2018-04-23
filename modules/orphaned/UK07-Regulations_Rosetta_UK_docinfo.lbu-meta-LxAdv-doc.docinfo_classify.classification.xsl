<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification">
    <title>(UK) <sourcexml>docinfo:lbu-meta</sourcexml> to
            <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="actDocumentOrder"]</targetxml>
        <lnpid>id-UK07-28238</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <note>About This Module: These are special rules for UK06 and UK07 streams. The
                conversions described here are <u>in addition to</u> the conversions described in
                    <xref href="../../common_newest/Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">"<sourcexml>docinfo:lbu-meta</sourcexml> to
                        <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]</targetxml>
                    (id-CCCC-10300)"</xref></note>
            <p>These are rules to identify the first and last document of an Act. The instances are
                identified through the <sourcexml>@name</sourcexml> attribute in
                    <sourcexml>docinfo:metaitem</sourcexml>. The items may not be present in every
                stream. If present, the rules below apply.</p>
            <p>Source: <ul>
                    <li>If <sourcexml>docinfo:metaitem[@name="is-first-document-in-enactment"
                            @value="true | false"]</sourcexml> then within
                            <targetxml>doc:metadata/doc:docinfo</targetxml> create
                            <targetxml>classify:classification[@classscheme="actDocumentOrder"]/classify:classitem</targetxml>.
                        The <targetxml>@classscheme</targetxml> value is hard coded. <ul>
                            <li> Create
                                    <targetxml>classify:classitem-identifier/classify:classcode[@normval]</targetxml>.
                                The <targetxml>@normval</targetxml> value is taken from source
                                    <sourcexml>true | false</sourcexml>
                            </li>
                            <li> Create
                                    <targetxml>classify:classitem-identifier/classify:classname</targetxml>.
                                The value will be <targetxml>firstLegisItem</targetxml> which is
                                hard coded. Also,</li>
                            <li> Create
                                    <targetxml>doc:hier/proc:processinginfo[@process="LAToCBuilder"]/proc:param[@name="firstLegisItem"
                                    @value="true | false"]</targetxml></li>
                        </ul></li>
                </ul><ul>
                    <li>If <sourcexml>docinfo:metaitem[@name="is-last-document-in-enactment"
                            @value="true | false"]</sourcexml> then within
                            <targetxml>doc:metadata/doc:docinfo</targetxml> and create
                            <targetxml>classify:classification[@classscheme="actDocumentOrder"]/classify:classitem</targetxml>.
                        The <targetxml>@classscheme</targetxml> value is hard coded. <ul>
                            <li> Create
                                    <targetxml>classify:classitem-identifier/classify:classcode[@normval]</targetxml>.
                                The <targetxml>@normval</targetxml> value is taken from source
                                    <sourcexml>true | false</sourcexml>
                            </li>
                            <li> Create
                                    <targetxml>classify:classitem-identifier/classify:classname</targetxml>.
                                The value will be <targetxml>lastLegisItem</targetxml> which is hard
                                coded.</li>
                            <li> Create
                                    <targetxml>doc:hier/proc:processinginfo[@process="LAToCBuilder"]/proc:param[@name="lastLegisItem"
                                    @value="true | false"]</targetxml></li>
                        </ul></li>
                </ul></p>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo&gt;
    &lt;docinfo:lbu-meta&gt;
        &lt;docinfo:metaitem name="is-first-document-in-enactment" value="true"/&gt;
        
        &lt;docinfo:metaitem name="is-last-document-in-enactment" value="true"/&gt;
    &lt;/docinfo:lbu-meta&gt;
&lt;/docinfo&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        &lt;classify:classification classscheme="actDocumentOrder"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classcode normval="true"/&gt;
                    &lt;classify:classname&gt;firstLegisItem&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
            ...
        &lt;/classify:classification&gt;
        ...
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

&lt;!---- OR-----&gt;

&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        &lt;classify:classification classscheme="actDocumentOrder"&gt;
            
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classcode normval="true"/&gt;
                    &lt;classify:classname&gt;lastLegisItem&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

<b>And Create</b>

&lt;doc:hier&gt;
    
    &lt;proc:processinginfo process="LAToCBuilder"&gt;
        
           &lt;proc:param name="firstLegisItem" value="true"/&gt;
        
    &lt;/proc:processinginfo&gt;
    
    &lt;!-- ... --&gt;
    
&lt;/doc:hier&gt;

&lt;!----- OR -----&gt;

&lt;doc:hier&gt;
    
    &lt;proc:processinginfo process="LAToCBuilder"&gt;
        
        &lt;proc:param name="lastLegisItem" value="true"/&gt;
        
    &lt;/proc:processinginfo&gt;
    
    &lt;!-- ... --&gt;
    
&lt;/doc:hier&gt;	</codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2016-11-28: <ph id="change_20161128_AS">Updated Attribute value for
                        <targetxml>docinfo:metaitem name="is-first-document-in-enactment"
                        value="true | false"</targetxml>. VSTS #162173</ph></p>
            <p>2016-11-09: <ph id="change_20161109_AS">Updated Attribute value for
                        <targetxml>doc:hier/proc:processinginfo[@process="LAToCBuilder"]</targetxml></ph></p>
            <p>2016-10-12: <ph id="change_20161012_AS">Created.</ph></p>
        </section>

    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification.dita  -->
	<xsl:message>UK07-Regulations_Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:lbu-meta">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/classify:classification[@classscheme="actDocumentOrder"]   -->
		<doc:metadata>
			<doc:docinfo>
				<classify:classification>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classification>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="@name">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo   -->
		<doc:metadata>
			<doc:docinfo>
				<xsl:apply-templates select="@* | node()"/>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="docinfo:metaitem">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo   -->
		<doc:metadata>
			<doc:docinfo>
				<xsl:apply-templates select="@* | node()"/>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="docinfo:metaitem[@name=&#34;is-first-document-in-enactment&#34;&#xA;                            @value=&#34;true | false&#34;]">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo   -->
		<doc:metadata>
			<doc:docinfo>
				<xsl:apply-templates select="@* | node()"/>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="true | false">

		<!--  Original Target XPath:  classify:classitem-identifier/classify:classname   -->
		<classify:classitem-identifier>
			<classify:classname>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classname>
		</classify:classitem-identifier>

	</xsl:template>

	<xsl:template match="docinfo:metaitem[@name=&#34;is-last-document-in-enactment&#34;&#xA;                            @value=&#34;true | false&#34;]">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo   -->
		<doc:metadata>
			<doc:docinfo>
				<xsl:apply-templates select="@* | node()"/>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>