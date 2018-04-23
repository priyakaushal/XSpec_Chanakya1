<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
                xmlns:ci="http://www.lexis-nexis.com/ci" 
                xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
                xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
                xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" 
                xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
                xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" 
                version="2.0" 
                exclude-result-prefixes="dita ci leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="levelinfo">
        <title>levelinfo <lnpid>id-UK20-35812</lnpid></title>
        <body>
            <section>
                <p><sourcexml>levelinfo</sourcexml> becomes <targetxml>seclaw:levelinfo</targetxml> and
                    for child element conversion please refer below instruction: </p>
                <ul>
                    <li><sourcexml>classification</sourcexml> becomes
                            <targetxml>seclaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/classify:classification</targetxml>,
                        attribute <sourcexml>@classscheme</sourcexml> becomes
                            <targetxml>@classscheme</targetxml>, <sourcexml>classitem</sourcexml>
                        becomes <targetxml>classify:classitem</targetxml>,
                            <sourcexml>classitem-identifier</sourcexml> becomes
                            <targetxml>classify:classitem-identifier</targetxml>,
                            <sourcexml>classname</sourcexml> becomes
                            <targetxml>classify:classname</targetxml> (source content maps as both
                            <targetxml>@normval</targetxml> value and as element content).<ul>
                            <li>Regarding <sourcexml>classname</sourcexml>: Notice that
                                    <sourcexml>classname</sourcexml> content maps to two locations
                                within target <targetxml>classify:classname</targetxml>. Becomes value
                                of <targetxml>classify:classname[@normval]</targetxml> and also becomes
                                content (pcdata) of element
                                <targetxml>classify:classname</targetxml>.</li>
                        </ul></li>
                    <li><sourcexml>leg:aboutreference</sourcexml> or <sourcexml>leg:about</sourcexml>becomes
                            <targetxml>seclaw:level/seclaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/@contenttype="legaboutreference"</targetxml>.<ul>
                            <li>Child <sourcexml>ci:cite</sourcexml> has special rule, as follows:
                                    <sourcexml>ci:cite[@normcite]</sourcexml> becomes
                                    <targetxml>lnci:cite/lnci:content</targetxml>. The attribute
                                    <sourcexml>@normcite</sourcexml> is suppressed for target BUT the
                                value is mapped to become pcdata populating
                                    <targetxml>lnci:content</targetxml>.</li>
                        </ul></li>
                </ul>
                <note>Notice that in target, siblings <targetxml>classify:classification</targetxml> and
                        <targetxml>lnci:cite</targetxml> are contained within same
                        <targetxml>ref:relatedcontentitem</targetxml>.</note>
                <note>If <sourcexml>levelinfo</sourcexml> and <sourcexml>heading</sourcexml> elements
                    are sibblings in source data then conversion should generate
                        <targetxml>seclaw:levelinfo</targetxml> markup after
                        <targetxml>heading</targetxml> element.</note>
                <p>For more confirmation please see below example:</p>
                <b>Example: 1.</b>
                <pre>
                    &lt;level leveltype="subsection"&gt;
                        &lt;levelinfo&gt;
                            &lt;classification classscheme="analysis-type"&gt;
                                &lt;classitem&gt;
                                    &lt;classitem-identifier&gt;
                                        &lt;classname&gt;general-notes&lt;/classname&gt;
                                    &lt;/classitem-identifier&gt;
                                &lt;/classitem&gt;
                            &lt;/classification&gt;
                            &lt;leg:aboutreference&gt;
                                &lt;ci:cite normcite="UK_ACTS 1995 4 SECT 5"/&gt;
                            &lt;/leg:aboutreference&gt;
                        &lt;/levelinfo&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Sub-s (2): Governing body&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;As to the requirement for maintained schools to have a governing
                                    body, see s 19 and the note thereto.&lt;/text&gt;
                            &lt;/p&gt;
                            ...
                        &lt;/bodytext&gt;
                    &lt;/level&gt;
    
                    <b>Becomes</b>
               
                    &lt;seclaw:level leveltype="subsection"&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Sub-s (2): Governing body&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;seclaw:levelinfo&gt;
                            &lt;ref:relatedcontent&gt;
                                &lt;ref:relatedcontentitem contenttype="legaboutreference"&gt;
                                    &lt;classify:classification classscheme="analysis-type"&gt;
                                        &lt;classify:classitem&gt;
                                            &lt;classify:classitem-identifier&gt;
                                                &lt;classify:classname normval="general-notes"&gt;general-notes&lt;/classify:classname&gt;
                                            &lt;/classify:classitem-identifier&gt;
                                        &lt;/classify:classitem&gt;
                                    &lt;/classify:classification&gt;
                                    &lt;lnci:cite&gt;
                                      &lt;lnci:content&gt;UK_ACTS 1995 4 SECT 5&lt;/lnci:content&gt;
                                    &lt;/lnci:cite&gt;
                                &lt;/ref:relatedcontentitem&gt;
                            &lt;/ref:relatedcontent&gt;
                        &lt;/seclaw:levelinfo&gt;
                        &lt;seclaw:bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;As to the requirement for maintained schools to have a governing body, see s 19
                                    and the note thereto.&lt;/text&gt;
                            &lt;/p&gt;
                            ...
                        &lt;/seclaw:bodytext&gt;
                    &lt;/seclaw:level&gt;
                </pre>
            </section>
            <section>
                <title>Change Log</title>
                <p>2017-01-31: <ph id="change_20170131_jm">Within <sourcexml>classification</sourcexml>
                        instructions, rule for <sourcexml>classname</sourcexml> is expanded. Content of
                            <sourcexml>classname</sourcexml> continues to map as content of
                            <targetxml>classify:classname</targetxml> and in addition now maps as value
                    of <targetxml>@normval</targetxml>. VSTS 224984.</ph></p>
                <p>2016-12-13: <ph id="change_20161213_jm">Added special rule for
                            <sourcexml>ci:cite[@normcite]</sourcexml>. Create
                            <targetxml>lnci:cite/lnci:content</targetxml> for target, suppressing
                            <sourcexml>@normcite</sourcexml> attribute but mapping the value to populate
                            <targetxml>lnci:content</targetxml>.</ph></p>
                <p>2016-02-22: <ph id="change_20160222_PS">Created. Applicable on UK20, RFA#, 2687,
                        2699.</ph></p>
            </section>
        </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK20_Legislative_History\levelinfo.dita  -->
    <!-- 20170421:  MCJ:  Commented out the message during development... but this is not yet done. -->
	<!-- <xsl:message>UK20_Legislative_History_levelinfo.xsl requires manual development!</xsl:message> --> 

	<xsl:template match="levelinfo">

		<!--  Original Target XPath:  seclaw:levelinfo   -->
		<seclaw:levelinfo>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:levelinfo>

	</xsl:template>

	<!-- 2017/05/19: JD: added 'leg:about' (early version of 'leg:aboutreference' found in some files) -->
    <xsl:template match="levelinfo/classification">
        <ref:relatedcontent>
            <ref:relatedcontentitem>
                <xsl:if test="../leg:aboutreference or ../leg:about">
                    <xsl:attribute name="contenttype" select="'legaboutreference'" />
                </xsl:if>
                <classify:classification>
                    <xsl:copy-of select="./@classscheme" />
                    <xsl:apply-templates />
                </classify:classification>
                <xsl:if test="../leg:aboutreference/ci:cite">
                    <lnci:cite>
                        <lnci:content><xsl:value-of select="../leg:aboutreference/ci:cite/@normcite" /></lnci:content>
                    </lnci:cite>
                </xsl:if>
            	<xsl:if test="../leg:about/ci:cite"><!-- NOTE: leg:about is an invalid element left over from a UK development effort. -->
            		<lnci:cite>
            			<lnci:content><xsl:value-of select="../leg:about/ci:cite/@normcite" /></lnci:content>
            		</lnci:cite>
            	</xsl:if>
            </ref:relatedcontentitem>
        </ref:relatedcontent>
    </xsl:template>
    
    <xsl:template match="levelinfo/classification/classitem">
        <classify:classitem>
            <xsl:copy-of select="./@classscheme" />
            <xsl:apply-templates />
        </classify:classitem>
    </xsl:template>
    
    <xsl:template match="levelinfo/classification/classitem/classitem-identifier">
        <classify:classitem-identifier>
            <xsl:apply-templates />
        </classify:classitem-identifier>
    </xsl:template>
    
    <xsl:template match="levelinfo/classification/classitem/classitem-identifier/classname">
        <classify:classname>
            <xsl:attribute name="normval"><xsl:value-of select=".//text()" /></xsl:attribute>
            <xsl:apply-templates />
        </classify:classname>
    </xsl:template>
    
    <xsl:template match="levelinfo/classification/classitem/classitem-identifier/classcode">
        <classify:classcode>
            <xsl:apply-templates />
        </classify:classcode>
    </xsl:template>
    
    <xsl:template match="levelinfo/leg:aboutreference | levelinfo/leg:about"></xsl:template>



    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
    <!-- <xsl:template match="classification">

		...  Original Target XPath:  seclaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/classify:classification   ...
		<seclaw:levelinfo>
			<ref:relatedcontent>
				<ref:relatedcontentitem>
					<classify:classification>
						<xsl:apply-templates select="@* | node()"/>
					</classify:classification>
				</ref:relatedcontentitem>
			</ref:relatedcontent>
		</seclaw:levelinfo>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="@classscheme">

		...  Original Target XPath:  @classscheme   ...
		<xsl:attribute name="classscheme">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="classitem">

		...  Original Target XPath:  classify:classitem   ...
		<classify:classitem>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="classitem-identifier">

		...  Original Target XPath:  classify:classitem-identifier   ...
		<classify:classitem-identifier>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem-identifier>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="classname">

		...  Original Target XPath:  classify:classname   ...
		<classify:classname>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classname>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="leg:aboutreference">

		...  Original Target XPath:  seclaw:level/seclaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem/@contenttype="legaboutreference"   ...
		<seclaw:level>
			<seclaw:levelinfo>
				<ref:relatedcontent>
					<ref:relatedcontentitem>
						<xsl:attribute name="contenttype">
							<xsl:text>legaboutreference</xsl:text>
						</xsl:attribute>
					</ref:relatedcontentitem>
				</ref:relatedcontent>
			</seclaw:levelinfo>
		</seclaw:level>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="ci:cite">

		...  Original Target XPath:  lnci:cite/lnci:content   ...
		<lnci:cite>
			<lnci:content>
				<xsl:apply-templates select="@* | node()"/>
			</lnci:content>
		</lnci:cite>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="ci:cite[@normcite]">

		...  Original Target XPath:  lnci:cite/lnci:content   ...
		<lnci:cite>
			<lnci:content>
				<xsl:apply-templates select="@* | node()"/>
			</lnci:content>
		</lnci:cite>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for shared template. -->
	<!-- <xsl:template match="@normcite">

		...  Original Target XPath:  lnci:content   ...
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template> -->

    <!-- 20170424:  MCJ:  Removed in preference for template in Rosetta_heading-LxAdv-heading.xsl. -->
	<!-- <xsl:template match="heading">

		...  Original Target XPath:  seclaw:levelinfo   ...
		<seclaw:levelinfo>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:levelinfo>

	</xsl:template> -->

</xsl:stylesheet>