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
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-LNPracticalGuidance">
		<title>cttr:body/cttr:content/cttr:annotations - LexisNexis Practical Guidance
				<lnpid>id-AU20-22246</lnpid></title>

		<body>

			<section>
				<p>If <sourcexml>cttr:annotations/@id</sourcexml> contains
						<sourcexml>"@id="OI10"</sourcexml> or <sourcexml>"@id="OP11"</sourcexml>
					create
						<targetxml>ref:relatedcontent[@xml:id="refsection-LPG"][@contenttype="guidance"]</targetxml>.</p>
				<p>Create <targetxml>ref:anchor[@id="ref-lexisnexis-practical-guidance"]</targetxml>
					within <targetxml>ref:relatedcontent</targetxml>.</p>
				<p>
					<sourcexml>heading/title</sourcexml> uses standard mapping to
						<targetxml>heading/title</targetxml> however the <sourcexml>note</sourcexml>
					and its content become a child of <targetxml>ref:relatedcontentitem</targetxml>
				</p>
				<p>Each <sourcexml>cttr:annot</sourcexml> becomes
						<targetxml>ref:relatedcontentitem/ref:related-content-link</targetxml>.</p>
				<p>
					<sourcexml>cttr:annot/lnlink</sourcexml> maps to
						<targetxml>ref:relatedcontentitem/ref:related-content-link/ref:lnlink</targetxml>
				</p>
				<p>Contents of <sourcexml>lnlink</sourcexml> follows the standard mapping to
						<targetxml>ref:lnlink</targetxml> using the instructions in the General
					Markup section, except that
						<targetxml>proc:param[@name="targetContentType"][@value="practicalguidance"]</targetxml>
					should be added to <targetxml>ref:locator/ref:locator-params</targetxml>.</p>
			</section>

			<example>
				<title>Source LNPG</title>
				<codeblock>
         &lt;cttr:annotations annotationtype="productuse" annotgroup="LPG" id="OI9"&gt;
            &lt;heading&gt;
               &lt;title&gt;LexisNexis Practical Guidance&lt;/title&gt;
            &lt;/heading&gt;
            &lt;cttr:annot&gt;
            	&lt;lnlink service="DOC-ID" status="unval"&gt;
            		&lt;marker&gt;Business&lt;/marker&gt;
            		&lt;api-params&gt;
            			&lt;param name="dpsi" value="0KKQ"/&gt;
            			&lt;param name="remotekey1" value="DOC-ID"/&gt;
            			&lt;param name="remotekey2" value="0KKQ_677"/&gt;
            			&lt;param name="topiccode" value="#PA#BUS"/&gt;
            		&lt;/api-params&gt;
            	&lt;/lnlink&gt;
            &lt;/cttr:annot&gt;          
            ...
        </codeblock>

				<title>Target LNPG</title>
				<codeblock>            
&lt;ref:relatedcontent xml:id="refsection-LPG" contenttype="guidance"&gt;
	&lt;ref:anchor id="ref-lexisnexis-practical-guidance"/&gt;
	&lt;heading&gt;
		&lt;title&gt;LexisNexis Practical Guidance&lt;/title&gt;
	&lt;/heading&gt;
	&lt;ref:relatedcontentitem&gt;
		&lt;!-- contenttype="#PA#BUS" --&gt;
		&lt;ref:related-content-link&gt;
			&lt;ref:lnlink service="DOCUMENT"&gt;
				&lt;ref:marker&gt;Business&lt;/ref:marker&gt;
				&lt;ref:locator&gt;
					&lt;ref:locator-key&gt;
						&lt;ref:key-name name="DOC-ID"/&gt;
						&lt;ref:key-value value="0KKQ-0KKQ_677"/&gt;
					&lt;/ref:locator-key&gt;
					&lt;ref:locator-params&gt;
						&lt;proc:param name="topiccode" value="#PA#BUS"/&gt;
						&lt;proc:param name="targetContentType" value="practicalguidance"/&gt;
					&lt;/ref:locator-params&gt;
				&lt;/ref:locator&gt;
			&lt;/ref:lnlink&gt;
		&lt;/ref:related-content-link&gt;
	&lt;/ref:relatedcontentitem&gt;
	...
&lt;/ref:relatedcontent&gt;            
        
      </codeblock>
			</example>

			<section>
				<title> Changes: </title>
				<p>2016-06-03: <ph id="change_20160603a_snb">Changed all mapping instructions for
							<sourcexml>lnlink[@service="DOC-ID" or @service="DOCID"]</sourcexml>
						throughout document to reference the new General Markup section for this
						conversion. This change was made in conjunction with LBU Rosetta source XML
						markup changes to make all source lnlink[@service="DOC-ID"] structure
						consistent in all documents. Modified both source and target markup examples
						to match new lnlink structures.</ph></p>
				<p>2015-12-11: <ph id="change_20151211p_snb">Added instruction to add
							<targetxml>proc:param[@name="targetContentType"][@value="practicalguidance"]</targetxml>
						to <targetxml>ref:lnlink/ref:locator/ref:locator-params</targetxml>, and
						added to target examples.</ph>
				</p>
				<p>2015-12-11: <ph id="change_20151211f_snb">Changed
							<sourcexml>"@id="OI9"</sourcexml> to be
							<sourcexml>"@id="OI10"</sourcexml>. Added
							<sourcexml>"@id="OP11"</sourcexml> for provision documents. Added
						creation of
							<targetxml>ref:anchor[@id="ref-lexisnexis-practical-guidance"]</targetxml>
						within <targetxml>ref:relatedcontent</targetxml>. Replaced
							<sourcexml>note</sourcexml> mapping to instead map
							<sourcexml>cttr:annot</sourcexml> to
							<targetxml>ref:relatedcontentitem/ref:related-content-link</targetxml>,
						and changed <sourcexml>cttr:annot/lnlink</sourcexml> to map to
							<targetxml>ref:lnlink</targetxml> instead of
							<targetxml>ref:related-content-link</targetxml>.</ph>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-LNPracticalGuidance.dita  -->
	
<!--	<xsl:template match="source_cttr:annotations[@id='OI10' or @id='OP11']">
		<ref:relatedcontent>			
				<xsl:attribute name="xml:id">
					<xsl:text>refsection-LPG</xsl:text>
				</xsl:attribute>
			<xsl:attribute name="contenttype">
				<xsl:text>guidance</xsl:text>
			</xsl:attribute>			
			<xsl:apply-templates select="child::heading/title" mode="guidance"/>
			<xsl:apply-templates select="child::source_cttr:annot"/>
			<!-\-<xsl:apply-templates select="child::source_cttr:annot/lnlink"/>-\->
		</ref:relatedcontent>
	</xsl:template>-->
	<!-- Awantika: used mode to create heading/title from here not from the common module, and terminate the heading after title as heading was
capturing the whole data  -->
	<!--<xsl:template match="source_cttr:annotations[@id='OI10' or @id='OP11']/heading/title" mode="guidance">
		<heading>
			<title>
				<xsl:apply-templates/>
			</title>
		</heading>
	</xsl:template>-->

	<!--<xsl:template match="source_cttr:annotations/source_cttr:annot[not(@*)][descendant::*[not(@*)][normalize-space(.)='']]"/>-->
	
	<!-- Awantika: CI changes to create empty ref:related-content-linkif cttr:annot has empty elements -->
	<xsl:template match="source_cttr:annotations[@id='OI10' or @id='OP11']/source_cttr:annot">
		<ref:relatedcontentitem>
			<ref:related-content-link>
				<xsl:if test="child::lnlink">
					<xsl:apply-templates/>
				</xsl:if>
			</ref:related-content-link>
		</ref:relatedcontentitem>
	</xsl:template>
	
<!--
	<xsl:template match="source_cttr:annotations[@id='OI10' or @id='OP11']/source_cttr:annot/lnlink">
		
		<xsl:apply-templates/>
	</xsl:template>-->
	

	<!--<xsl:template match="&#34;@id=&#34;OI10&#34;">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontent[@xml:id="refsection-LPG"][@contenttype="guidance"]   -\->
		<ref:relatedcontent>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="&#34;@id=&#34;OP11&#34;">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontent[@xml:id="refsection-LPG"][@contenttype="guidance"]   -\->
		<ref:relatedcontent>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="heading/title">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  heading/title   -\->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="note">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem   -\->
		<ref:relatedcontentitem>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="cttr:annot">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:related-content-link   -\->
		<ref:relatedcontentitem>
			<ref:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</ref:related-content-link>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="cttr:annot/lnlink">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:relatedcontentitem/ref:related-content-link/ref:lnlink   -\->
		<ref:relatedcontentitem>
			<ref:related-content-link>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</ref:related-content-link>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="lnlink">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink   -\->
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="lnlink[@service=&#34;DOC-ID&#34; or @service=&#34;DOCID&#34;]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  proc:param[@name="targetContentType"][@value="practicalguidance"]   -\->
		<proc:param>
			<xsl:apply-templates select="@* | node()"/>
		</proc:param>

	</xsl:template>

	<xsl:template match="&#34;@id=&#34;OI9&#34;">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:anchor[@id="ref-lexisnexis-practical-guidance"]   -\->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>
-->
</xsl:stylesheet>
