<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
    xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_pubnote">
    <title>pubnote <lnpid>id-NZ07DN-23826</lnpid></title>
    
    <body>
        
        <section>
            <title>Scenario 1</title>
            <p><sourcexml>pubnote</sourcexml> becomes <targetxml>nitf:body/nitf:body.head/note/bodytext/p/text</targetxml></p>
            <pre>
&lt;jrnl:articleinfo&gt;
    ...
    &lt;pubnote searchtype="PUB-SUMMARY"&gt;
        &lt;process-ignore process="kwd"&gt;
            &lt;emph typestyle="bf"&gt;Note(s) / Summary: &lt;/emph&gt;
        &lt;/process-ignore&gt;Article incorrectly attributes authorship to John
        Hughes
    &lt;/pubnote&gt;
    ...
&lt;/jrnl:articleinfo&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        ...
        &lt;note&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;emph typestyle="bf"&gt;Note(s) / Summary: &lt;/emph&gt;Article incorrectly
                        attributes authorship to John Hughes&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;
            </pre>
        </section>
        
        <section>
            <title>Scenario 2: When <sourcexml>remotelink</sourcexml> is an child of <sourcexml>pubnote</sourcexml> then conversion should follow below instruction.</title>

        <p><sourcexml>pubnote</sourcexml> becomes
                <targetxml>doc:metadata/doc:docinfo/doc:related-content/doc:related-content-item</targetxml>.</p>
        <p>The content of <sourcexml>pubnote</sourcexml> should be suppressed from the target.</p>
        <p><sourcexml>pubnote/remotelink</sourcexml> becomes
                    <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink</targetxml>
                and <sourcexml>remotelink/@service="DOC-ID"</sourcexml> becomes
                    <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml>.</p>
        <p>The content of <sourcexml>remotelink</sourcexml> becomes <targetxml>ref:marker</targetxml>.</p>
        <p>Create <targetxml>ref:locator/ref:locator-key/ref:key-name</targetxml> and populate the attribute <targetxml>ref:key-name/@name</targetxml> with the value of
            <sourcexml>remotelink/@remotekey1</sourcexml>.</p>
        <p>Create <targetxml>ref:locator/ref:locator-key/ref:key-value</targetxml> and populate the attribute <targetxml>ref:key-value/@value</targetxml> with the value of
            <sourcexml>remotelink/@dpsi-remotelink/@remotekey2</sourcexml>.</p>
        
        <pre xml:space="preserve" class="- topic/pre ">
&lt;pubnote&gt;
    &lt;process-ignore process="kwd"&gt;
        &lt;emph typestyle="bf"&gt;Location: &lt;/emph&gt;
    &lt;/process-ignore&gt;
    &lt;remotelink dpsi="02IH" remotekey1="DOC-ID" remotekey2="JD_JOURNALS" service="DOC-ID"&gt;Check
        holdings&lt;/remotelink&gt;
&lt;/pubnote&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="NZ"&gt;
        &lt;doc:related-content&gt;
            &lt;doc:related-content-item&gt;
                &lt;doc:related-content-link&gt;
                    &lt;ref:lnlink service="DOCUMENT"&gt;
                        &lt;ref:marker&gt;Check holdings&lt;/ref:marker&gt;
                        &lt;ref:locator&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="02IH-JD_JOURNALS"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:lnlink&gt;
                &lt;/doc:related-content-link&gt;
            &lt;/doc:related-content-item&gt;
        &lt;/doc:related-content&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
        </pre>
        <note><p>Conversion should not create consecutive <targetxml>doc:related-content</targetxml> elements. When 2 or more sibling source elements map to <targetxml>doc:related-content</targetxml>, the data should be merged into a single <targetxml>doc:related-content</targetxml> element unless this would interfere with content ordering.</p></note>
        </section>
        
        <section>
            <title>Changes</title>
            <p>2013-10-30: <ph id="change_20131030">Updated target example, removed <targetxml>proc:process-ignore</targetxml> mapping.</ph></p>
            <p>2013-12-02: <ph id="change_20131202">Updated Instruction and example, Webteam #: 247032, This change immediately applies to NZ07 Linxplus-Article.</ph></p>
            <p>2013-12-04: <ph id="change_20131203">Updated Instruction and example for PCDATA of
                        <sourcexml>pubnote</sourcexml> element, Webteam #: 247032, This change
                        immediately applies to NZ07 Linxplus-Article.</ph></p>
            <p>2013-12-10: <ph id="change_20131210">Updated Instruction and created 2 scenario for <sourcexml>pubnote</sourcexml> element, Webteam #: 247032, This change
            immediately applies to NZ07 Linxplus-Article.</ph></p>
            <p>2014-02-12: <ph id="change_20140212_PS">Updated Instruction and example for scenario 2, Webteam #: 251187, This change
                immediately applies to NZ07 Linxplus-Article.</ph></p>
        </section>
        
    </body>
	</dita:topic>

	<xsl:template match="pubnote[not(remotelink)]">

		<!--  Original Target XPath:  nitf:body/nitf:body.head/note/bodytext/p/text   -->
				<note>
					<bodytext>
						<p>
							<text>
								<xsl:apply-templates select="@* | node()"/>
							</text>
						</p>
					</bodytext>
				</note>

	</xsl:template>
    <!-- Fix done for webstar 7042660, as pubnote/@searchtype was not handled in previous version -->
    <xsl:template match="pubnote/@searchtype" priority="7"/>

	<xsl:template match="pubnote[remotelink]">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/doc:related-content/doc:related-content-item   -->
				<doc:related-content>
					<doc:related-content-item>
						<xsl:apply-templates select="@* | node()"/>
					</doc:related-content-item>
				</doc:related-content>

	</xsl:template>

	<xsl:template match="pubnote/remotelink" priority="25">

		<!--  Original Target XPath:  doc:related-content-item/doc:related-content-link/ref:lnlink   -->
			<doc:related-content-link>
				<ref:lnlink>
					<xsl:apply-templates select="@service"/>
				    <ref:marker>
				        <xsl:apply-templates select="node()"/>
				    </ref:marker>
				    <ref:locator>
				        <ref:locator-key>
				            <ref:key-name>
				                <xsl:attribute name="name" select="@remotekey1"/>
				            </ref:key-name>
				            <ref:key-value>
				                <xsl:attribute name="value" select="concat(@dpsi, '-', @remotekey2)"/>
				            </ref:key-value>
				        </ref:locator-key>
				    </ref:locator>
				</ref:lnlink>
			</doc:related-content-link>
		

	</xsl:template>
    
    <xsl:template match="pubnote/remotelink/@service" priority="25">
        <xsl:attribute name="service">
            <xsl:choose>
                <xsl:when test=". = 'DOC-ID'">DOCUMENT</xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="."/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>
    
</xsl:stylesheet>