<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="levelinfo">
    <title>levelinfo <lnpid>id-UK07-28232</lnpid></title>
    <body>
        <section>
            <p><sourcexml>levelinfo</sourcexml> becomes <targetxml>primlaw:levelinfo</targetxml> and
                for child element conversion please refer below instruction: </p>
            <ul>
                <li><sourcexml>classification</sourcexml> becomes
                        <targetxml>primlaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/classify:classification</targetxml>,
                    attribute <sourcexml>@classscheme</sourcexml> becomes
                        <targetxml>@classscheme</targetxml>, <sourcexml>classitem</sourcexml>
                    becomes <targetxml>classify:classitem</targetxml>,
                        <sourcexml>classitem-identifier</sourcexml> becomes
                        <targetxml>classify:classitem-identifier</targetxml>,
                        <sourcexml>classname</sourcexml> becomes
                        <targetxml>classify:classname</targetxml>.</li>
                <li><sourcexml>leg:aboutreference</sourcexml> becomes
                        <targetxml>primlaw:level/primlaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/@contenttype="legaboutreference"</targetxml>.</li>
            </ul>
            <note>If <sourcexml>levelinfo</sourcexml> and <sourcexml>heading</sourcexml> elements
                are sibblings in source data then conversion should generate
                    <targetxml>primlaw:levelinfo</targetxml> markup after
                    <targetxml>heading</targetxml> element.</note>
            <p>For more confirmation please see below example:</p>
            <b>Example: </b>
            <pre>

&lt;leg:levelinfo&gt;
    &lt;classification classscheme="analysis-type"&gt;
        &lt;classitem&gt;
            &lt;classitem-identifier&gt;
                &lt;classname&gt;non-halsbury&lt;/classname&gt;
            &lt;/classitem-identifier&gt;
        &lt;/classitem&gt;
    &lt;/classification&gt;
    &lt;leg:aboutreference&gt;
        &lt;ci:cite searchtype="LEG-REF" normcite="UK_SI 2008 3229 Title"/&gt;
    &lt;/leg:aboutreference&gt;
&lt;/leg:levelinfo&gt;


<b>Becomes</b>
           

&lt;primlaw:levelinfo&gt;
    &lt;ref:relatedcontent&gt;
        &lt;ref:relatedcontentitem contenttype="legaboutreference"&gt;
            &lt;classify:classification classscheme="analysis-type"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;non-halsbury&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
            &lt;lnci:cite normcite="UK_SI 2008 3229 Title"/&gt;
        &lt;/ref:relatedcontentitem&gt;
    &lt;/ref:relatedcontent&gt;
&lt;/primlaw:levelinfo&gt;

</pre>
            <note>If <sourcexml>levelinfo</sourcexml> comes within
                    <sourcexml>leg:comntry/level</sourcexml> then it will become
                    <targetxml>annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annotinfo:annotinfo</targetxml>.
                For more clarification please refer the example below.</note></section>
        <example>Source XML<codeblock>
&lt;leg:body&gt;
    &lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="section"&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:comntry&gt;
                    &lt;level leveltype="analysis"&gt;
                        &lt;levelinfo&gt;
                            &lt;classification classscheme="analysis-type"&gt;
                                &lt;classitem&gt;
                                    &lt;classitem-identifier&gt;
                                        &lt;classname&gt;non-halsbury&lt;/classname&gt;
                                    &lt;/classitem-identifier&gt;
                                &lt;/classitem&gt;
                            &lt;/classification&gt;
                            ...
                        &lt;/levelinfo&gt;
                        ...
                    &lt;/level&gt;
                &lt;/leg:comntry&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
    ...
&lt;/leg:body&gt;              

            </codeblock>
            <b>Target XML </b><codeblock>

&lt;regulation:body&gt;
    &lt;primlaw:level&gt;
        &lt;primlaw:level&gt;
            &lt;annot:annotations&gt;
                &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
                    &lt;annot:annotation&gt;
                        &lt;annotinfo:annotinfo&gt;
                            &lt;classify:classification classscheme="analysis-type"&gt;
                                &lt;classify:classitem&gt;
                                    &lt;classify:classitem-identifier&gt;
                                        &lt;classify:classname&gt;non-halsbury&lt;/classify:classname&gt;
                                    &lt;/classify:classitem-identifier&gt;
                                &lt;/classify:classitem&gt;
                            &lt;/classify:classification&gt;
                        &lt;/annotinfo:annotinfo&gt;
                    &lt;/annot:annotation&gt;
                &lt;/annot:annotation-grp&gt;
            &lt;/annot:annotations&gt;
            ...
    &lt;/primlaw:level&gt;
        ...
&lt;/regulation:body&gt;
                
            </codeblock></example>
       
        <section>
            <title>Change Log</title>
            <p>2017-01-04: <ph id="change_20170104_AS">Added instructions for <sourcexml>leg:comntry/level/levelinfo</sourcexml>.</ph></p>
            <p>2016-02-24: <ph id="change_20160224_AS">Created. Applicable on UK07, RFA#, 2752.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\levelinfo.dita  -->
	<xsl:message>levelinfo.xsl requires manual development!</xsl:message> 

	<xsl:template match="levelinfo">

		<!--  Original Target XPath:  primlaw:levelinfo   -->
		<primlaw:levelinfo>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:levelinfo>

	</xsl:template>

	<xsl:template match="classification">

		<!--  Original Target XPath:  primlaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/classify:classification   -->
		<primlaw:levelinfo>
			<ref:relatedcontent xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<ref:relatedcontentitem>
					<classify:classification>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classification>
				</ref:relatedcontentitem>
			</ref:relatedcontent>
		</primlaw:levelinfo>

	</xsl:template>

	<xsl:template match="@classscheme">

		<!--  Original Target XPath:  @classscheme   -->
		<xsl:attribute name="classscheme">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="classitem">

		<!--  Original Target XPath:  classify:classitem   -->
		<classify:classitem>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem>

	</xsl:template>

	<xsl:template match="classitem-identifier">

		<!--  Original Target XPath:  classify:classitem-identifier   -->
		<classify:classitem-identifier>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem-identifier>

	</xsl:template>

	<xsl:template match="classname">

		<!--  Original Target XPath:  classify:classname   -->
		<classify:classname>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classname>

	</xsl:template>

	<xsl:template match="leg:aboutreference">

		<!--  Original Target XPath:  primlaw:level/primlaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/@contenttype="legaboutreference"   -->
		<primlaw:level>
			<primlaw:levelinfo>
				<ref:relatedcontent xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
					<ref:relatedcontentitem>
						<xsl:attribute name="contenttype">
							<xsl:text>legaboutreference</xsl:text>
						</xsl:attribute>
					</ref:relatedcontentitem>
				</ref:relatedcontent>
			</primlaw:levelinfo>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  primlaw:levelinfo   -->
		<primlaw:levelinfo>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:levelinfo>

	</xsl:template>

	<xsl:template match="leg:comntry/level">

		<!--  Original Target XPath:  annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annotinfo:annotinfo   -->
		<annot:annotations>
			<annot:annotation-grp>
				<annot:annotation>
					<annotinfo:annotinfo xmlns:annotinfo="http://www.lexisnexis.com/xmlschemas/content/shared/annotations-info/1/">
						<xsl:apply-templates select="@* | node()"/>
					</annotinfo:annotinfo>
				</annot:annotation>
			</annot:annotation-grp>
		</annot:annotations>

	</xsl:template>

	<xsl:template match="leg:comntry/level/levelinfo">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>