<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:source_case="http://www.lexis-nexis.com/glp/case"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	version="2.0" exclude-result-prefixes="docinfo cttr doc source_cttr xsi primlawinfo source_case leg dita docinfo">
	
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-FormerTitle">
		<title>cttr:body/cttr:content/cttr:annotations - Former Title
			<lnpid>id-AU20-22243</lnpid></title>

		<body>
			<section>
				<p>If <sourcexml>cttr:annotations/heading/title</sourcexml> or
						<sourcexml>cttr:annotations/heading/note/h</sourcexml> contains the text
					"Former Title" create <targetxml>primlawhist:primlawhist</targetxml> and child
					element <targetxml>primlawhist:histgrp[@grptype="former-title"]</targetxml>.</p>
				<note>EXCEPTION: if the source <sourcexml>cttr:annotations/heading/note</sourcexml>
					contains no descendant <sourcexml>p</sourcexml> elements with descendant text
					nodes (at any depth) with non-whitespace text, do not create any output for this
					source content at all.</note>
				<p>NOTE: If an immediately preceding <targetxml>primlawhist:primlawhist</targetxml>
					element has already been inserted into the target document by another mapping
					instruction for the content immediately preceding this
						<sourcexml>cttr:annotations</sourcexml> element containing "Former Title",
					insert this <targetxml>primlawhist:histgrp[@grptype="former-title"]</targetxml>
					element as the last child inside the already-existing
						<targetxml>primlawhist:primlawhist</targetxml> element. Otherwise, create a
					new <targetxml>primlawhist:primlawhist</targetxml> element.</p>
				<p>Create <targetxml>ref:anchor[@id="ref-former-title"]</targetxml> within
						<targetxml>primlawhist:histgrp</targetxml>.</p>
				<p>Add <targetxml>@xml:id</targetxml> to
						<targetxml>primlawhist:histgrp[@grptype="former-title"]</targetxml>,
					populating the attribute with the appropriate value by selecting the first
					condition below that is true: <ul>
						<li>If the <sourcexml>cttr:annotations</sourcexml> element contains only one
								<sourcexml>heading</sourcexml> child element, and
								<sourcexml>cttr:annotations/@id</sourcexml> exists, use
							"refsection-" concatenated with the value of
								<sourcexml>cttr:annotations/@id</sourcexml> (e.g.
								<targetxml>xml:id="refsection-OI1"</targetxml>).</li>
						<li>If the <sourcexml>cttr:annotations/heading/note/@id</sourcexml> exists,
							use "refsection-" concatenated with the value of
								<sourcexml>cttr:annotations/heading/note/@id</sourcexml> (e.g.
								<targetxml>xml:id="refsection-OP18"</targetxml>).</li>
						<li>Use "refsection-former-title"</li>
					</ul>
				</p>
				<p>
					<sourcexml>heading/title</sourcexml> or <sourcexml>heading/note/h</sourcexml>
					use standard mapping to <targetxml>heading/title</targetxml>.</p>
				<p>The content of <sourcexml>heading/note</sourcexml>, excluding any
						<sourcexml>title</sourcexml> or <sourcexml>h</sourcexml> element mapped to
						<targetxml>heading/title</targetxml> by the previous paragraph, maps to
						<targetxml>primlawhist:histitem/textitem</targetxml>, with each
						<sourcexml>p</sourcexml> element mapping to its own
						<targetxml>primlawhist:histitem/textitem</targetxml>.</p>
				<p>
					<sourcexml>leg:info/leg:officialname</sourcexml> becomes
						<targetxml>primlawhist:histitem/textitem</targetxml>
				</p>
				<p>When <sourcexml>cttr:annotations/heading</sourcexml> contains <sourcexml>At a
						glance</sourcexml> suppress the entire
						<sourcexml>cttr:annotations</sourcexml> element.</p>
				<p>If document contains a state message <sourcexml>id="OP1.2" or
						id="OP2.2"</sourcexml> create a <targetxml>primlawhist:histgrp</targetxml>
					with State message. If State message is not in document, create sibling element
					to <targetxml>primlawhist:histgrp/heading</targetxml> in the form of
						<targetxml>primlawhist:histitem/textitem</targetxml>.</p>
			</section>

			<example>
				<title>Example 1: Source Former Title for Instrument/Act</title>
				<codeblock>
&lt;cttr:annotations id="OI2"&gt;
	&lt;heading&gt;
		&lt;title id="OI2.1"&gt;Former Title&lt;/title&gt;
		&lt;note&gt;
			&lt;p&gt;
				&lt;text&gt;(CTH) EVIDENCE AND PROCEDURE ACT 1995&lt;/text&gt;
			&lt;/p&gt;
			&lt;!-- OI3 Instrument info - renamed by --&gt;
			&lt;p&gt;
				&lt;text&gt;renamed by &lt;lnlink service="DOC-ID" status="valid"&gt;
						&lt;marker&gt;(CTH) EVIDENCE AND PROCEDURE AMENDMENT ACT 2002&lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="dpsi" value="005X"/&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_ACT_1995-2_LEG_INFO"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt; &lt;/text&gt;
			&lt;/p&gt;
		&lt;/note&gt;
	&lt;/heading&gt;
	&lt;cttr:annot&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;        </codeblock>
				<title>Example 1: Target Former Title for Instrument/Act</title>
				<codeblock>
&lt;primlawhist:primlawhist&gt;
	&lt;primlawhist:histgrp xml:id="refsection-OI1" grptype="former-title"&gt;
		&lt;ref:anchor id="ref-former-title"/&gt;
		&lt;heading&gt;
			&lt;title xml:id="OI2.1"&gt;Former Title&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
			&lt;textitem&gt;(CTH) EVIDENCE AND PROCEDURE ACT 1995&lt;/textitem&gt;
		&lt;/primlawhist:histitem&gt;
		&lt;primlawhist:histitem&gt;
			&lt;textitem&gt;renamed by &lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker&gt;(CTH) EVIDENCE AND PROCEDURE AMENDMENT ACT 2002&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="005X-CTH_ACT_1995-2_LEG_INFO"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/textitem&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
    ...       
&lt;/primlawhist:primlawhist&gt;
        </codeblock>
			</example>
			<example>
				<title>Example 2: Source Former Title for Provision</title>
				<codeblock>
&lt;cttr:annotations id="OP14"&gt;
	&lt;heading&gt;
    ...       
		&lt;!-- OP18 Instrument info - Former Title --&gt;
		&lt;note&gt;
			&lt;h&gt;Former Title&lt;/h&gt;
			&lt;p&gt;
				&lt;text&gt;(CTH) EVIDENCE AND PROCEDURE ACT 1995&lt;/text&gt;
			&lt;/p&gt;
			&lt;!-- OP19 Instrument info - renamed by --&gt;
			&lt;p&gt;
				&lt;text&gt;renamed by &lt;lnlink service="DOC-ID" status="valid"&gt;
						&lt;marker&gt;(CTH) EVIDENCE AND PROCEDURE AMENDMENT ACT 2002&lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_ACT_1995-2_LEG_INFO"/&gt;
							&lt;param name="dpsi" value="005X"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt;
				&lt;/text&gt;
			&lt;/p&gt;
		&lt;/note&gt;
    ...       
	&lt;/heading&gt;
	&lt;cttr:annot&gt;
		&lt;!--Intentionally empty--&gt;
		&lt;comm:info&gt;
			&lt;title/&gt;
		&lt;/comm:info&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
        </codeblock>
				<title>Example 2: Target Former Title for Provision</title>
				<codeblock>
&lt;primlawhist:primlawhist&gt;
	&lt;primlawhist:histgrp xml:id="refsection-former-title" grptype="former-title"&gt;
		&lt;ref:anchor id="ref-former-title"/&gt;
		&lt;heading&gt;
			&lt;title&gt;Former Title&lt;/title&gt;
		&lt;/heading&gt;
		&lt;primlawhist:histitem&gt;
			&lt;textitem&gt;(CTH) EVIDENCE AND PROCEDURE ACT 1995&lt;/textitem&gt;
		&lt;/primlawhist:histitem&gt;
		&lt;primlawhist:histitem&gt;
			&lt;textitem&gt;renamed by &lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker&gt;(CTH) EVIDENCE AND PROCEDURE AMENDMENT ACT 2002&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="005X-CTH_ACT_1995-2_LEG_INFO"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/textitem&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;
        </codeblock>
			</example>

			<section>
				<title> Changes: </title>
				<p>2016-04-21: <ph id="change_20160421a_snb">Changed mapping to completely suppress
						output when only whitespace exists within descendant text nodes of
						descendant <sourcexml>p</sourcexml> elements.</ph></p>
				<p>2015-12-04: <ph id="change_20151204b_snb">Modified mapping of
						cttr:body/cttr:content/cttr:annotations, containing "Former Title"to support
						provision markup structure, and completely changed determination and
						placement of attributes. Added instruction to add
							<targetxml>ref:anchor[@id="ref-former-title"]</targetxml>. Removed the
						"replacing" example (already in appropriate section of this CI). Added
						instruction to place the <targetxml>primlawhist:histgrp</targetxml> at the
						end of any already existing <targetxml>primlawhist:primlawhist</targetxml>
						element if it is immediately before the target markup for this element.
						Corrected Example to match new instructions, and added example of provision
						markup structure. Added clarification to indicate when
							<targetxml>primlawhist:histgrp</targetxml> is inserted into a previously
						created <targetxml>primlawhist:primlawhist</targetxml> element, and when a
						new <targetxml>primlawhist:primlawhist</targetxml> element is created.</ph>
				</p>
			</section>

		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-FormerTitle.dita  -->

	
	
	<xsl:template match="source_cttr:annotations[not(@id='OI12')]/heading/note[not(@id='OI13' or @id='OI14' or @id='OI16' or @id='OI15' or @id='HI4')]/p/text | source_cttr:annotations/source_cttr:annot/leg:info/leg:officialname">
		<xsl:if test="contains(lower-case($docinfoidtext),'overview')">
		<xsl:choose>			
			<xsl:when test="normalize-space(.)='In Force'"/>
			<xsl:when test="normalize-space(.)='Repealed'"/>
			<xsl:when test="normalize-space(.)='Disallowed'"/>
			<xsl:when test="normalize-space(.)='Expired'"/>
			<xsl:when test="normalize-space(.)='Part in force'"/>
			<xsl:when test="normalize-space(.)='Uncommenced'"/>
	<xsl:otherwise>
		<primlawhist:histitem>
			<textitem>				
				<xsl:if test="not(ends-with(., ' ')) and normalize-space(.)='Act No 2 of 1995'">
					<xsl:text> </xsl:text>	
				</xsl:if> 
				<xsl:apply-templates select="@* |node()"/>
			</textitem>
		</primlawhist:histitem>
	</xsl:otherwise>
		</xsl:choose>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="source_cttr:annotations[child::heading/note/h[.='Former Title'] or child::heading/title[.='Former Title']]/source_cttr:annot/leg:info/leg:officialname | source_cttr:annotations[child::heading/note/h[.='Former Title'] or child::heading/title[.='Former Title']]/source_cttr:annot/leg:info/note" mode="formerOI2">
		<primlawhist:histitem>
			<textitem>				
				<xsl:if test="not(ends-with(., ' ')) and normalize-space(.)='Act No 2 of 1995'">
					<xsl:text> </xsl:text>	
				</xsl:if> 
				<xsl:apply-templates select="@* |node()"/>
			</textitem>
		</primlawhist:histitem>
	</xsl:template>
	
	<xsl:template match="source_cttr:annotations[child::heading/note/h[.='Former Title'] or child::heading/title[.='Former Title']]/source_cttr:annot/leg:info/note">
		<primlawhist:histitem>
			<textitem>				
				<xsl:if test="not(ends-with(., ' ')) and normalize-space(.)='Act No 2 of 1995'">
					<xsl:text> </xsl:text>	
				</xsl:if> 
				<xsl:apply-templates select="@* |node()"/>
			</textitem>
		</primlawhist:histitem>
	</xsl:template>
	

	
	<xsl:template match="source_cttr:annotations/heading[.='At a glance']"/>
	
	
	

</xsl:stylesheet>
