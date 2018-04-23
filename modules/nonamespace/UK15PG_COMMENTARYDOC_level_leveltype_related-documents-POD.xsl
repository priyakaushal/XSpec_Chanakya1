<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ci="http://www.lexis-nexis.com/ci" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_COMMENTARYDOC_level_related-documents-POD">
    <title>level[@leveltype="related-documents-POD"] <lnpid>id-UK15-30422</lnpid></title>

    <body>
        <p><sourcexml>level[@leveltype="related-documents-POD"]</sourcexml> becomes
                <targetxml>doc:metadata/doc:docinfo/doc:related-content</targetxml>. The children of
                <sourcexml>level[@leveltype="related-documents-POD"]</sourcexml> are mapped as follows:<ul>
                <li><sourcexml>bodytext</sourcexml> becomes
                        <targetxml>doc:related-content-grp</targetxml>. The descendants of
                        <sourcexml>bodytext</sourcexml> are mapped as follows: <ul>
                        <li><sourcexml>h</sourcexml> becomes
                            <targetxml>heading/title</targetxml>.</li>
                        <li><sourcexml>p/text[descendant::remotelink]</sourcexml> becomes
                                <targetxml>doc:related-content-item/doc:related-content-link</targetxml>:<ul>
                                <li><sourcexml>remotelink</sourcexml> becomes
                                        <targetxml>ref:lnlink</targetxml> according to the General
                                    Markup instructions for remotelink.</li>
                                <li><sourcexml>url/remotelink</sourcexml> becomes
                                        <targetxml>ref:lnlink</targetxml> according to the General
                                    Markup instructions for url/remotelink.</li>
                            </ul></li>
                        <li><sourcexml>p/text[child::ci:cite]</sourcexml> becomes
                                <targetxml>doc:related-content-item/doc:related-content-desc/p/text</targetxml>: <ul>
                                <li><sourcexml>ci:cite</sourcexml> becomes
                                        <targetxml>lnci:cite</targetxml> according to the General
                                    Markup instructions for ci:cite.</li>
                            </ul></li>


                    </ul></li>
            </ul></p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;level leveltype="related-documents-POD"&gt;
    &lt;bodytext&gt;
        &lt;h&gt;Related documents&lt;/h&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                    &lt;ci:sesslaw&gt;
                        &lt;ci:sesslawinfo&gt;
                            &lt;ci:sesslawnum num="1991_167s_Title"/&gt;
                        &lt;/ci:sesslawinfo&gt;
                        &lt;ci:sesslawref&gt;
                            &lt;ci:standardname normpubcode="UK_SI"/&gt;
                        &lt;/ci:sesslawref&gt;
                    &lt;/ci:sesslaw&gt;
                    &lt;ci:content&gt;SI 1991/167&lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;remotelink service="DOC-ID" remotekey1="DOC-ID" remotekey2="0ON9_156020"
                    dpsi="0ON9"&gt;Pension scheme incentive exercises&lt;/remotelink&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
    &lt;bodytext&gt;
        &lt;h&gt;Further reading on LexisLibrary&lt;/h&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;url&gt;
                    &lt;remotelink hrefclass="http"
                        href="www.lexisnexis.com/uk/legal/api/version1/sr?csi=280715&amp;amp;sr=HEADING(What+is+a+buy-in+policy?)&amp;amp;shr=t&amp;amp;oc=00254"
                        newwindow="YES"&gt;Buy-ins: Tolley's Pensions Law Service [G3]&lt;/remotelink&gt;
                &lt;/url&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="GB"&gt;
        ...
        &lt;doc:related-content&gt;
            &lt;doc:related-content-grp&gt;
                &lt;heading&gt;
                    &lt;title&gt;Related documents&lt;/title&gt;
                &lt;/heading&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-desc&gt;
                        &lt;p&gt;
                            &lt;text&gt;
                                &lt;lnci:cite status="valid"&gt;
                                    &lt;lnci:sesslaw&gt;
                                        &lt;lnci:sesslawinfo&gt;
                                            &lt;lnci:sesslawnum num="1991_167s_Title"/&gt;
                                        &lt;/lnci:sesslawinfo&gt;
                                        &lt;lnci:sesslawref&gt;
                                            &lt;lnci:standardname normpubcode="UK_SI"/&gt;
                                        &lt;/lnci:sesslawref&gt;
                                    &lt;/lnci:sesslaw&gt;
                                    &lt;lnci:content&gt;SI 1991/167&lt;/lnci:content&gt;
                                &lt;/lnci:cite&gt;
                            &lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/doc:related-content-desc&gt;
                &lt;/doc:related-content-item&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="DOCUMENT"&gt;
                            &lt;ref:marker&gt;Pension scheme incentive exercises&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="0ON9-0ON9_156020"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
            &lt;/doc:related-content-grp&gt;
            &lt;doc:related-content-grp&gt;
                &lt;heading&gt;
                    &lt;title&gt;Further reading on LexisLibrary&lt;/title&gt;
                &lt;/heading&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="URL"&gt;
                            &lt;ref:marker&gt;Buy-ins: Tolley's Pensions Law Service [G3]&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="URL"/&gt;
                                    &lt;ref:key-value
                                        value="http://www.lexisnexis.com/uk/legal/api/version1/sr?csi=280715&amp;amp;sr=HEADING(What+is+a+buy-in+policy?)&amp;amp;shr=t&amp;amp;oc=00254"
                                    /&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
            &lt;/doc:related-content-grp&gt;
        &lt;/doc:related-content&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

           </codeblock>
        </example>
      <section>
        <title>Changes</title>
        <p>2014-02-18: <ph id="change_20140218_JCG">Corrected mark-up in the example so that
            <targetxml>ref:lnlink</targetxml> specifies the attribute
            <targetxml>service="DOCUMENT"</targetxml>. Note that no conversion instructions were
          modified, only the example was corrected. (Webteam #)</ph></p>
        </section>
    </body>
	</dita:topic>
	
    <xsl:template match="level[@leveltype='related-documents-POD']">
		<doc:metadata>
			<doc:docinfo>
				<doc:related-content>
					<xsl:apply-templates select="@* | node()"/>
				</doc:related-content>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="bodytext">
		<doc:related-content-grp>
			<xsl:apply-templates select="@* | node()"/>
		</doc:related-content-grp>

	</xsl:template>

	<xsl:template match="h">
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="p/text[descendant::remotelink]">
		<doc:related-content-item>
			<doc:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</doc:related-content-link>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="remotelink">
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="url/remotelink">
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

    <xsl:template match="level[@leveltype='related-documents-POD']/p/text[child::ci:cite]">
		<doc:related-content-item>
			<doc:related-content-desc>
				<p>
					<text>
						<xsl:apply-templates select="@* | node()"/>
					</text>
				</p>
			</doc:related-content-desc>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="ci:cite">
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

</xsl:stylesheet>