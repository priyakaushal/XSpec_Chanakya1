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
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-UniformEquivalents">
		<title>cttr:body/cttr:content/cttr:annotations - Uniform Equivalents and International
				Equivalents<lnpid>id-AU20-22253</lnpid></title>

		<body>
			<section>
				<p>If <sourcexml>cttr:annotations/@id</sourcexml> contains <sourcexml>"@id="OI8" or
						"@id="OP7"</sourcexml> create
						<targetxml>primlaw:equivalentlaw[@xml:id="refsection-OI8"]</targetxml> OR
						<targetxml>primlaw:equivalentlaw[@xml:id="refsection-OP7"]</targetxml>, as
					appropriate based upon the value of <sourcexml>@id</sourcexml>.</p>
				<note>EXCEPTION: if the source <sourcexml>cttr:annotations[@id="OI8" OR
						@id="OP7"]/heading/note</sourcexml> contains no descendant text nodes with
					non-whitespace text, do not create any output for this source content at
					all.</note>
				<p>If <sourcexml>heading/title</sourcexml> contains the text "International
					Equivalents" (case insensitive), create
						<targetxml>ref:anchor[@id="ref-international-equivalents"]</targetxml>
					inside this <targetxml>primlaw:equivalentlaw</targetxml> element. Otherwise
					create <targetxml>ref:anchor[@id="ref-uniform-equivalents"]</targetxml> inside
					this <targetxml>primlaw:equivalentlaw</targetxml> element.</p>
				<p>
					<sourcexml>heading/title</sourcexml> uses standard mapping to
						<targetxml>heading/title</targetxml>.</p>
				<p>Each <sourcexml>heading/note/l/li</sourcexml> becomes a separate
						<targetxml>primlaw:equivalentlawitem</targetxml> child of
						<targetxml>primlaw:equivalentlaw</targetxml>.
						<sourcexml>li/p/text</sourcexml> becomes
						<targetxml>primlaw:equivalentlawitem/textitem</targetxml>.</p>
			</section>

			<example>
				<title>Example 1: Source Annotations with id="OI8" - Instrument/Act Document</title>
				<codeblock>
&lt;cttr:annotations id="OI8"&gt;
	&lt;heading&gt;
		&lt;title&gt;Uniform Equivalents&lt;/title&gt;
		&lt;note&gt;
			&lt;l&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="unval"&gt;
								&lt;marker&gt;(NSW) Evidence Act 1995&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="005Y"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="CTH_ACT_1995-55"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker&gt;(TAS) Evidence Act 2001 &lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0F3C"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="TAS_ACT_2001-76_LEG_INFO"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker&gt;(SA) Evidence Act 1929&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="dpsi" value="0F34"/&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="SA_ACT_1929-1907_LEG_INFO"/&gt;
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

				<title>Example 1: Target Annotations with id="OI8" - Instrument/Act Document</title>
				<codeblock>
&lt;cttr:legisinfo&gt;
  ...
  &lt;primlaw:equivalentlaw xml:id="refsection-OI8"&gt;
  	&lt;ref:anchor id="ref-uniform-equivalents"/&gt;
  	&lt;heading&gt;
  		&lt;title&gt;Uniform Equivalents&lt;/title&gt;
  	&lt;/heading&gt;
  	&lt;primlaw:equivalentlawitem&gt;
  		&lt;textitem&gt;
  			&lt;ref:lnlink service="DOCUMENT"&gt;
  				&lt;ref:marker&gt;(NSW) Evidence Act 1995&lt;/ref:marker&gt;
  				&lt;ref:locator&gt;
  					&lt;ref:locator-key&gt;
  						&lt;ref:key-name name="DOC-ID"/&gt;
  						&lt;ref:key-value value="005Y-CTH_ACT_1995-55"/&gt;
  					&lt;/ref:locator-key&gt;
  				&lt;/ref:locator&gt;
  			&lt;/ref:lnlink&gt;
  		&lt;/textitem&gt;
  	&lt;/primlaw:equivalentlawitem&gt;
  	&lt;primlaw:equivalentlawitem&gt;
  		&lt;textitem&gt;
  			&lt;ref:lnlink service="DOCUMENT"&gt;
  				&lt;ref:marker&gt;(TAS) Evidence Act 2001&lt;/ref:marker&gt;
  				&lt;ref:locator&gt;
  					&lt;ref:locator-key&gt;
  						&lt;ref:key-name name="DOC-ID"/&gt;
  						&lt;ref:key-value value="0F3C-TAS_ACT_2001-76_LEG_INFO"/&gt;
  					&lt;/ref:locator-key&gt;
  				&lt;/ref:locator&gt;
  			&lt;/ref:lnlink&gt;
  		&lt;/textitem&gt;
  	&lt;/primlaw:equivalentlawitem&gt;
  	&lt;primlaw:equivalentlawitem&gt;
  		&lt;textitem&gt;
  			&lt;ref:lnlink service="DOCUMENT"&gt;
  				&lt;ref:marker&gt;(SA) Evidence Act 1929&lt;/ref:marker&gt;
  				&lt;ref:locator&gt;
  					&lt;ref:locator-key&gt;
  						&lt;ref:key-name name="DOC-ID"/&gt;
  						&lt;ref:key-value value="0F34-SA_ACT_1929-1907_LEG_INFO"/&gt;
  					&lt;/ref:locator-key&gt;
  				&lt;/ref:locator&gt;
  			&lt;/ref:lnlink&gt;
  		&lt;/textitem&gt;
  	&lt;/primlaw:equivalentlawitem&gt;
  &lt;/primlaw:equivalentlaw&gt;
  ...
&lt;/cttr:legisinfo&gt;
        </codeblock>
			</example>
			<example>
				<title>Example 2: Source Annotations with id="OP7" - AU Provision Document - Uniform
					Equivalents</title>
				<codeblock>
&lt;cttr:annotations id="OP7"&gt;
	&lt;heading&gt;
		&lt;title&gt;Uniform Equivalents&lt;/title&gt;
		&lt;note&gt;
			&lt;l&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker&gt;(NSW) Evidence Act 1995&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="NSW_ACT_1995-55_LEG_INFO"/&gt;
									&lt;param name="dpsi" value="005Y"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker&gt;(TAS) Evidence Act 2001 &lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="TAS_ACT_2001-76_LEG_INFO"/&gt;
									&lt;param name="dpsi" value="0F3C"/&gt;
								&lt;/api-params&gt;
							&lt;/lnlink&gt;
						&lt;/text&gt;
					&lt;/p&gt;
				&lt;/li&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;lnlink service="DOC-ID" status="valid"&gt;
								&lt;marker&gt;(SA) Evidence Act 1929&lt;/marker&gt;
								&lt;api-params&gt;
									&lt;param name="remotekey1" value="DOC-ID"/&gt;
									&lt;param name="remotekey2" value="SA_ACT_1929-1907_LEG_INFO"/&gt;
									&lt;param name="dpsi" value="0F34"/&gt;
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

				<title>Example 2: Target Annotations with id="OP7" - AU Provision Document - Uniform
					Equivalents</title>
				<codeblock>
&lt;cttr:legisinfo&gt;
  ...
  &lt;primlaw:equivalentlaw xml:id="refsection-OP7"&gt;
  	&lt;ref:anchor id="ref-uniform-equivalents"/&gt;
  	&lt;heading&gt;
  		&lt;title&gt;Uniform Equivalents&lt;/title&gt;
  	&lt;/heading&gt;
  	&lt;primlaw:equivalentlawitem&gt;
  		&lt;textitem&gt;
  			&lt;ref:lnlink service="DOCUMENT"&gt;
  				&lt;ref:marker&gt;(NSW) Evidence Act 1995&lt;/ref:marker&gt;
  				&lt;ref:locator&gt;
  					&lt;ref:locator-key&gt;
  						&lt;ref:key-name name="DOC-ID"/&gt;
  						&lt;ref:key-value value="005Y-NSW_ACT_1995-55_LEG_INFO"/&gt;
  					&lt;/ref:locator-key&gt;
  				&lt;/ref:locator&gt;
  			&lt;/ref:lnlink&gt;
  		&lt;/textitem&gt;
  	&lt;/primlaw:equivalentlawitem&gt;
  	&lt;primlaw:equivalentlawitem&gt;
  		&lt;textitem&gt;
  			&lt;ref:lnlink service="DOCUMENT"&gt;
  				&lt;ref:marker&gt;(TAS) Evidence Act 2001&lt;/ref:marker&gt;
  				&lt;ref:locator&gt;
  					&lt;ref:locator-key&gt;
  						&lt;ref:key-name name="DOC-ID"/&gt;
  						&lt;ref:key-value value="0F3C-TAS_ACT_2001-76_LEG_INFO"/&gt;
  					&lt;/ref:locator-key&gt;
  				&lt;/ref:locator&gt;
  			&lt;/ref:lnlink&gt;
  		&lt;/textitem&gt;
  	&lt;/primlaw:equivalentlawitem&gt;
  	&lt;primlaw:equivalentlawitem&gt;
  		&lt;textitem&gt;
  			&lt;ref:lnlink service="DOCUMENT"&gt;
  				&lt;ref:marker&gt;(SA) Evidence Act 1929&lt;/ref:marker&gt;
  				&lt;ref:locator&gt;
  					&lt;ref:locator-key&gt;
  						&lt;ref:key-name name="DOC-ID"/&gt;
  						&lt;ref:key-value value="0F34-SA_ACT_1929-1907_LEG_INFO"/&gt;
  					&lt;/ref:locator-key&gt;
  				&lt;/ref:locator&gt;
  			&lt;/ref:lnlink&gt;
  		&lt;/textitem&gt;
  	&lt;/primlaw:equivalentlawitem&gt;
  &lt;/primlaw:equivalentlaw&gt;
  ...
&lt;/cttr:legisinfo&gt;

         </codeblock>
			</example>
			<example>
				<title>Example 3: Source Annotations with id="OP7" - NZ Provision Document -
					International Equivalents</title>
				<codeblock>
&lt;cttr:annotations id="OP7"&gt;
	&lt;!--OP7.1 International Equivalents--&gt;
	&lt;heading&gt;
		&lt;title&gt;International Equivalents&lt;/title&gt;
		&lt;note&gt;
			&lt;l&gt;
				&lt;li&gt;
					&lt;p&gt;
						&lt;text&gt;
							&lt;!--OP7.1.2 Instrument Info - Instrument Name--&gt; Forgery Act 1913, s 9 (U.K) &lt;/text&gt;
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

				<title>Example 3: Target Annotations with id="OP7" - NZ Provision Document -
					International Equivalents</title>
				<codeblock>
&lt;cttr:legisinfo&gt;
    ...
	&lt;primlaw:equivalentlaw xml:id="refsection-OP7"&gt;
		&lt;ref:anchor id="ref-international-equivalents"/&gt;
		&lt;heading&gt;
			&lt;title&gt;International Equivalents&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlaw:equivalentlawitem&gt;
			&lt;textitem&gt; Forgery Act 1913, s 9 (U.K) &lt;/textitem&gt;
		&lt;/primlaw:equivalentlawitem&gt;
	&lt;/primlaw:equivalentlaw&gt;
	...
&lt;/cttr:legisinfo&gt;

         </codeblock>
			</example>

			<section>
				<title> Changes: </title>
				<p>2016-07-06: <ph id="change_20160706_snb">Changed section title to indicate that
						New Zealand legislative citator content is also converted using this
						instruction. Added support for <targetxml>ref:anchor</targetxml> for
						international equivalents. Added an NZ international equivalents
						example.</ph></p>
				<p>2016-04-21: <ph id="change_20160421a_snb">Changed mapping to completely suppress
						output when only whitespace exists within descendant text nodes.</ph></p>
				<p>2015-12-11: <ph id="change_20151211e_snb">Minor corrections to typos in XPATHs in
						first paragraph, but elements and attributes are effectively unchanged.
						Added creation of
							<targetxml>ref:anchor[@id="ref-uniform-equivalents"]</targetxml>. Added
						clarification that each <sourcexml>heading/note/l/li</sourcexml> becomes a
						separate <targetxml>primlaw:equivalentlawitem</targetxml>, and child content
						is mapped within each. Replaced Examples</ph>
				</p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-UniformEquivalents.dita  -->
	

	<xsl:template match="source_cttr:annotations[@id='OI8' or @id='OP7']">
		<!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  primlaw:equivalentlaw[@xml:id="refsection-OI8"]   -->
		<xsl:variable name="annotation-data" select="normalize-space(.)"/>
		<xsl:variable name="title-data" select="normalize-space(./heading/title)"/>
		<xsl:choose>
			<xsl:when test="$annotation-data = $title-data"/>
			<xsl:otherwise>
				<primlaw:equivalentlaw>
					<xsl:if test="@id='OI8'">
						<xsl:attribute name="xml:id">
							<xsl:text>refsection-OI8</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:if test="@id='OP7'">
						<xsl:attribute name="xml:id">
							<xsl:text>refsection-OP7</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:if test="child::heading[title[.=lower-case('international equivalents')]]">
						<xsl:element name="ref:anchor">
							<xsl:attribute name="id">ref-international-equivalents</xsl:attribute>
						</xsl:element>
					</xsl:if>
					<xsl:if test="not(child::heading[title[.=lower-case('uniform equivalents')]])">
						<xsl:element name="ref:anchor">
							<xsl:attribute name="id">ref-uniform-equivalents</xsl:attribute>
						</xsl:element>
					</xsl:if>					
					<xsl:apply-templates select="node()"/>
					<xsl:for-each select="heading/note/l/li">
						<primlaw:equivalentlawitem>
							<textitem>
								<xsl:apply-templates select="node()"/>
							</textitem>
						</primlaw:equivalentlawitem>
					</xsl:for-each>
				</primlaw:equivalentlaw>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>

<!--	<xsl:template match="source_cttr:annotations[@id='OI8' or @id='OP7']/heading/note[not(@*)][descendant::*[not(@*)][normalize-space(.)='']]"/>-->
	
	<!-- Awantika: used mode to create heading/title from here not from the common module, and terminate the heading after title as heading was
capturing the whole data  -->
<!--	<xsl:template match="source_cttr:annotations[@id='OI8' or @id='OP7']/heading/title" mode="equivalent">
		<heading>
			<title>
				<xsl:apply-templates/>
			</title>
		</heading>
	</xsl:template>-->
	
	
	<xsl:template match="source_cttr:annotations[@id='OI8' or @id='OP7']/heading/note/l">
		<primlaw:equivalentlawitem>
			<xsl:if test="child::li/p/text">
				<textitem>
					<xsl:apply-templates select="@* | node()"/>
				</textitem>
			</xsl:if>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:equivalentlawitem>
	</xsl:template>

	<!--<xsl:template match="source_cttr:annotations[@id='OI8' or @id='OP7']/heading/note/l/li/p/text">
		<textitem>
			<xsl:apply-templates select="@* | node()"/>
		</textitem>
	</xsl:template>
	-->

</xsl:stylesheet>
