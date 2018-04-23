<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:source_case="http://www.lexis-nexis.com/glp/case"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	version="2.0" exclude-result-prefixes="cttr dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-EnablingLegislation">
		<title>cttr:body/cttr:content/cttr:annotations - Enabling Legislation
				<lnpid>id-AU20-22287</lnpid></title>

		<body>
			<section>
				<p>If <sourcexml>cttr:annotations/@id</sourcexml> contains
						<sourcexml>"@id="OI6"</sourcexml> create
						<targetxml>ref:relatedcontent[@contenttype="enabling-legislation"][@xml:id="refsection-OI6"]</targetxml>. </p>
				<p>Create child
					<targetxml>ref:anchor[@id="ref-enabling-legislation"]</targetxml>.</p>
				<note>EXCEPTION: if the source
						<sourcexml>cttr:annotations[@id="OI6"]/heading/note</sourcexml> contains no
					descendant text nodes with non-whitespace text, do not create any output for
					this source content at all.</note>
				<p><sourcexml>cttr:annotations/heading/title</sourcexml> uses standard mapping to
						<targetxml>ref:relatedcontent/heading/title</targetxml>.</p>
				<p>Each <sourcexml>heading/note/l/li</sourcexml> becomes a separate
						<targetxml>ref:relatedcontentitem</targetxml> child of
						<targetxml>ref:relatedcontent</targetxml>. <sourcexml>li/p/text</sourcexml>
					becomes <targetxml>ref:relatedcontentitem/ref:related-content-link</targetxml>.
					Any <sourcexml>lnlink</sourcexml> elements within <sourcexml>text</sourcexml>
					are mapped to <targetxml>ref:lnlink</targetxml> using the instructions in the
					General Markup section of this document.</p>
			</section>

			<example>
				<title>Example 1: Source Annotations with @id="OI6" - Enabling Legislation</title>
				<codeblock>
      	
&lt;cttr:annotations id="OI6"&gt;
	&lt;heading&gt;
		&lt;title&gt;Enabling Legislation&lt;/title&gt;
		&lt;note&gt;
			&lt;l&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker role="content"&gt;JUDICATURE ACT 1908&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0069"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="1908A89-FRONT-CONTENTS"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker role="content"&gt;CRIMES ACT 1961&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0069"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="1961A43-FRONT-CONTENTS"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker role="content"&gt;BAIL ACT 2000&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0069"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="2000A38-FRONT-CONTENTS"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
			&lt;/l&gt;
		&lt;/note&gt;
	&lt;/heading&gt;
	&lt;cttr:annot&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
		
      </codeblock>

				<title>Example 1: Target Annotations with @id="OI6" - Enabling Legislation</title>
				<codeblock>
&lt;cttr:legisinfo&gt;
    ...
	&lt;ref:relatedcontent xml:id="refsection-OI6" contenttype="enabling-legislation"&gt;
		&lt;ref:anchor anchortype="global" id="ref-enabling-legislation"/&gt;
		&lt;heading&gt;
			&lt;title&gt;Enabling Legislation&lt;/title&gt;
		&lt;/heading&gt;
		&lt;ref:relatedcontentitem&gt;
			&lt;ref:related-content-link&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker role="content"&gt;JUDICATURE ACT 1908&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0069-1908A89-FRONT-CONTENTS"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/ref:related-content-link&gt;
		&lt;/ref:relatedcontentitem&gt;
		&lt;ref:relatedcontentitem&gt;
			&lt;ref:related-content-link&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker role="content"&gt;CRIMES ACT 1961&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0069-1961A43-FRONT-CONTENTS"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/ref:related-content-link&gt;
		&lt;/ref:relatedcontentitem&gt;
		&lt;ref:relatedcontentitem&gt;
			&lt;ref:related-content-link&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker role="content"&gt;BAIL ACT 2000&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0069-2000A38-FRONT-CONTENTS"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/ref:related-content-link&gt;
		&lt;/ref:relatedcontentitem&gt;
	&lt;/ref:relatedcontent&gt;
    ...
&lt;/cttr:legisinfo&gt;
        </codeblock>
			</example>

			<section>
				<title> Changes: </title>
				<p>2016-07-06: <ph id="change_20160706_snb">Changes for NZ legislation citator
						content: added this new section for Enabling Legislation.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-EnablingLegislation.dita  -->
	
<!--
	<xsl:template match="source_cttr:annotations[@id='OI6']">   
		<ref:relatedcontent>		
			<xsl:attribute name="xml:id">
				<xsl:text>refsection-OI6</xsl:text>				
			</xsl:attribute>
			<xsl:attribute name="contenttype">
				<xsl:text>enabling-legislation</xsl:text>	
			</xsl:attribute>
			<xsl:element name="ref:anchor">
				<xsl:attribute name="id"><xsl:text>ref-enabling-legislation</xsl:text></xsl:attribute>
			</xsl:element>
			<xsl:apply-templates select="heading/note/l/li"/>
		</ref:relatedcontent>
	</xsl:template>-->
	
<!--	<xsl:template match="source_cttr:annotations[@id='OI6']/heading/note[not(@*)][descendant::*[not(@*)][normalize-space(.)='']]"/>-->
	
	
	<xsl:template match="source_cttr:annotations[@id='OI6']">
		<!--<ref:relatedcontentitem>
			<xsl:if test="child::li/p/text">
				<ref:related-content-link>
					<xsl:apply-templates select="@* | node()"/>
				</ref:related-content-link>
			</xsl:if>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontentitem>-->
		<ref:relatedcontent>
		<xsl:attribute name="xml:id">
			<xsl:text>refsection-OI6</xsl:text>
		</xsl:attribute>
		<xsl:attribute name="contenttype">
			<xsl:text>enabling-legislation</xsl:text>
		</xsl:attribute>
		<xsl:element name="ref:anchor">
			<xsl:attribute name="id">
				<xsl:text>ref-enabling-legislation</xsl:text>
			</xsl:attribute>
		</xsl:element>
			<xsl:apply-templates select="heading"/>
		<xsl:for-each select="heading/note/l/li">
			<ref:relatedcontentitem>
				<xsl:for-each select="p/text">
					<ref:related-content-link>
						<xsl:apply-templates select="node() except heading"/>
					</ref:related-content-link>
				</xsl:for-each>
				
			</ref:relatedcontentitem>
		</xsl:for-each>
		</ref:relatedcontent>
	</xsl:template>
	
	<!--<xsl:template match="source_cttr:annotations[@id='OI6']/heading/note/l/li/p/text">
		<ref:related-content-link>
			<xsl:apply-templates select="@* | node()"/>
		</ref:related-content-link>
	</xsl:template>
-->
	
</xsl:stylesheet>
