<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"	
	xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"  
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"  
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	version="2.0" exclude-result-prefixes="cttr dita primlaw primlawinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Leg_Citator_AUNZ_Overview_cttr.annotations-ActName">
		<title>cttr:body/cttr:content/cttr:annotations - Act Name
			<lnpid>id-AU20-22237</lnpid></title>

		<body>

			<section>
				<p>When a <sourcexml>cttr:annotations/heading/note/h</sourcexml> contains either
					"Act Name" or "ActName" (case-insenstive), create
						<targetxml>primlawhist:primlawhist[@xml:id="refsection-OP14"]/primlawhist:histgrp[@grptype="act-name"]</targetxml>.</p>
				<p>NOTE: If an immediately preceding <targetxml>primlawhist:primlawhist</targetxml>
					element has already been inserted into the target document by another mapping
					instruction for the content immediately preceding this
						<sourcexml>cttr:annotations</sourcexml> element containing "Act Name" (or
					"ActName"), insert this
						<targetxml>primlawhist:histgrp[@grptype="act-name"]</targetxml> element as
					the last child inside the already-existing
						<targetxml>primlawhist:primlawhist</targetxml> element. Otherwise, create a
					new <targetxml>primlawhist:primlawhist</targetxml> element.</p>
				<p>Create <targetxml>primlawhist:histgrp/ref:anchor[@id="ref-act-name"]</targetxml>
					inside this <targetxml>primlawhist:histgrp</targetxml>.</p>
				<p>Map <sourcexml>heading/note/h</sourcexml> to <targetxml>heading/title</targetxml>
					as a child of the new
						<targetxml>primlawhist:histgrp[@grptype="act-name"]</targetxml>. Exception:
					if <sourcexml>heading/note/h</sourcexml> contains the text "ActName" (case
					insensitive), insert a space between "Act" and "Name" in the mapped
						<targetxml>heading/title</targetxml> text.</p>
				<p>Map each <sourcexml>heading/note/p/text</sourcexml> to be
						<targetxml>primlawhist:histitemm/textitem</targetxml> element, all within
					the same <targetxml>primlawhist:histitemm</targetxml> element.</p>
				<p>When a <sourcexml>p/text/inlineobject</sourcexml> or
						<sourcexml>p/inlineobject</sourcexml> follows a
						<sourcexml>p/text</sourcexml> with an instrument name such as "Act No 2 of
					1995", add a single space after the text for the instrument name, and then place
					the <targetxml>ref:inlineobject</targetxml> immediately following the text of
					the instrument name. Suppress text: "In Force" that occurs in
						<sourcexml>note/p/text</sourcexml>. See the example below for an example of
					the resulting output. The mapping of <sourcexml>inlineobject</sourcexml> to
						<targetxml>ref:inlineobject</targetxml> is described in the General Markup
					section.</p>
				<p>When a <sourcexml>p/text/inlineobject</sourcexml> or
						<sourcexml>p/inlineobject</sourcexml> does not follow a
						<sourcexml>p/text</sourcexml> with an instrument name such as "Act No 2 of
					1995", suppress the <sourcexml>inlineobject</sourcexml> element. If the parent
						<targetxml>p</targetxml> element's space-normalized text content equals (not
					contains) one of the text strings listed below inside
						<targetxml>p/text</targetxml>, or the parent <targetxml>text</targetxml>
					element's space-normalized text content equals (not contains) one of the text
					strings listed below, suppress the entire <targetxml>p</targetxml> element. <ul>
						<li>Repealed</li>
						<li>Disallowed</li>
						<li>Expired</li>
						<li>In force</li>
						<li>Part in force</li>
						<li>Uncommenced</li>
					</ul>
				</p>
				<p>When a <sourcexml>cttr:annotations/heading</sourcexml> contains
						<sourcexml>note/p/text/lnlink</sourcexml> map to
						<targetxml>primlawhist:histitem/textitem/ref:lnlink</targetxml> using
					standard mapping rules.</p>
				<p>When a <sourcexml>cttr:annotations/heading</sourcexml> contains
						<sourcexml>note/p/text/remotelink[@href]</sourcexml> map to
						<targetxml>primlawhist:histitem/textitem/ref:lnlink[@service="URL"]</targetxml>,
					and <sourcexml>remotelink/text()</sourcexml> becomes
						<targetxml>ref:lnlink/ref:marker/text()</targetxml>. Create a
						<targetxml>ref:locator</targetxml> element containing:
						<targetxml>ref:locator/ref:locator-key/ref:key-name[@name="URL"]</targetxml>
					and <sourcexml>remotelink/@href</sourcexml> becomes
						<targetxml>ref:locator/ref:locator-key/ref:key-value/@value</targetxml>.</p>
			</section>

			<example>
				<title>Example 1: Source with cttr:annotations/heading/note/h containing "Act
					Name"</title>
				<codeblock>
&lt;cttr:annotations id="OP14"&gt;
	&lt;heading&gt;
		&lt;note&gt;
			&lt;h&gt;Act Name&lt;/h&gt;
			&lt;p&gt;
				&lt;text&gt;
					&lt;lnlink service="DOC-ID" status="valid"&gt;
						&lt;marker&gt;(CTH) EVIDENCE ACT 1995&lt;/marker&gt;
						&lt;api-params&gt;
							&lt;param name="remotekey1" value="DOC-ID"/&gt;
							&lt;param name="remotekey2" value="CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
							&lt;param name="dpsi" value="005X"/&gt;
						&lt;/api-params&gt;
					&lt;/lnlink&gt;
				&lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;text&gt;Act No 2 of 1995 &lt;/text&gt;
			&lt;/p&gt;
			&lt;p&gt;
				&lt;inlineobject type="image" key="green-icon" componentseq="1" smi="XXX"/&gt;
				&lt;text&gt;In Force &lt;/text&gt;
			&lt;/p&gt;
		&lt;/note&gt;
    ...
	&lt;/heading&gt;
  ...
&lt;/cttr:annotations&gt;
</codeblock>

				<title>Example 1: Target
					primlawhist:primlawhist/primlawhist:histitem/primlawhist:histgrp[@grptype="act-name"]/primlawhist:histitem</title>
				<codeblock>
&lt;primlawhist:primlawhist xml:id="refsection-OP14"&gt;
	&lt;primlawhist:histgrp grptype="act-name"&gt;
		&lt;ref:anchor id="ref-act-name"/&gt;
    &lt;primlawhist:histitem&gt;
			&lt;textitem&gt;Act Name&lt;/textitem&gt;
			&lt;textitem&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker&gt;(CTH) EVIDENCE ACT 1995&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="005X-CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/textitem&gt;
			&lt;textitem&gt;Act No 2 of 1995 &lt;ref:inlineobject&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="object-key"/&gt;
							&lt;ref:key-value value="IconStatusGreen.png"/&gt;
						&lt;/ref:locator-key&gt;
						&lt;ref:locator-params&gt;
							&lt;proc:param name="componentseq" value="1"/&gt;
							&lt;proc:param name="object-type" value="image"/&gt;
							&lt;proc:param name="object-smi" value="insertedByIcceConversion"/&gt;
						&lt;/ref:locator-params&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:inlineobject&gt;
			&lt;/textitem&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;
</codeblock>
			</example>
			<example>
				<title>Example 2: Source with cttr:annotations/heading/note/h containing "Act Name"
					and cttr:annotations/heading/note/p/inlineobject</title>
				<codeblock>     
    &lt;cttr:annotations id="OP14"&gt;
        &lt;heading&gt;
          &lt;note&gt;
            &lt;h&gt;Act Name&lt;/h&gt;
            &lt;p&gt;
              &lt;text&gt;
                &lt;lnlink service="DOC-ID" status="valid"&gt;
                	&lt;marker&gt;(CTH) EVIDENCE ACT 1995&lt;/marker&gt;
                	&lt;api-params&gt;
                		&lt;param name="remotekey1" value="DOC-ID"/&gt;
                		&lt;param name="remotekey2" value="CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
                		&lt;param name="dpsi" value="005X"/&gt;
                	&lt;/api-params&gt;
                &lt;/lnlink&gt;
              &lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
              &lt;text&gt;Act No 2 of 1995 &lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
              &lt;inlineobject type="image" key="green-icon" filename="IconStatusGreen.png"/&gt;
              &lt;text&gt;In Force &lt;/text&gt;
            &lt;/p&gt;
</codeblock>

				<title>Example 2: Target primlawhist:histitem with p/ref:inlineobject</title>
				<codeblock>
        
&lt;primlawhist:primlawhist xml:id="refsection-OP14"&gt;
	&lt;primlawhist:histgrp grptype="act-name"&gt;
		&lt;ref:anchor id="ref-act-name"/&gt;
    &lt;primlawhist:histitem&gt;
			&lt;textitem&gt;Act Name&lt;/textitem&gt;
			&lt;textitem&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker&gt;(CTH) EVIDENCE ACT 1995&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="005X-CTH_ACT_1995-2_CHP3PT3.2DV1"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/textitem&gt;
			&lt;textitem&gt;Act No 2 of 1995 &lt;ref:inlineobject&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="object-key"/&gt;
							&lt;ref:key-value value="IconStatusGreen.png"/&gt;
						&lt;/ref:locator-key&gt;
						&lt;ref:locator-params&gt;
							&lt;proc:param name="componentseq" value="1"/&gt;
							&lt;proc:param name="object-type" value="image"/&gt;
							&lt;proc:param name="object-smi" value="insertedByIcceConversion"/&gt;
						&lt;/ref:locator-params&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:inlineobject&gt;
			&lt;/textitem&gt;
		&lt;/primlawhist:histitem&gt;
	&lt;/primlawhist:histgrp&gt;
&lt;/primlawhist:primlawhist&gt;


    &lt;ref:relatedcontentitem&gt; 
       &lt;bodytext&gt;
          &lt;h&gt;Act Name&lt;/h&gt; 
          &lt;p&gt;
           &lt;text&gt;
                 &lt;ref:lnlink service="DOCUMENT"&gt;
                     &lt;ref:marker&gt;(CTH) EVIDENCE ACT 1995&lt;/ref:marker&gt;
                     &lt;ref:locator&gt; 
                       &lt;ref:locator-key&gt; 
                          &lt;ref:key-name name="DOC-ID"/&gt; 
                          &lt;ref:key-value value="0069-1990A100"/&gt; 
                       &lt;/ref:locator-key&gt;
                       &lt;/ref:locator&gt;
                 &lt;/ref:lnlink&gt;             
            &lt;!--  OP15 Instrument Info Status   --&gt; 
           &lt;/text&gt;
         &lt;/p&gt;
         &lt;p&gt;
           &lt;text&gt;Act No 2 of 1995&lt;/text&gt;
         &lt;/p&gt;
     &lt;/ref:relatedcontentitem&gt;   
     </codeblock>
			</example>

			<section>
				<title> Changes: </title>

				<p>2016-06-03: <ph id="change_20160603a_snb">Removed
							<targetxml>[@service="DOCUMENT"]</targetxml> from
							<sourcexml>note/p/text/lnlink</sourcexml> mapping, and changed to
						indicate that standard mapping rules should be used.</ph></p>
				<p>2016-04-21: <ph id="change_20160421a_snb">Added exception for when
							<sourcexml>heading/note/h</sourcexml> contains the text "ActName" (case
						insensitive), insert a space between "Act" and "Name" in the mapped
							<targetxml>heading/title</targetxml> text.</ph>
				</p>
				<p>2016-01-25: <ph id="change_20160125a_snb">Add instruction for suppression of
							<sourcexml>p/text/inlineobject</sourcexml> or
							<sourcexml>p/inlineobject</sourcexml> that does not follow a
							<sourcexml>p/text</sourcexml> with an instrument name such as "Act No 2
						of 1995".</ph>
				</p>
				<p>2016-01-13: <ph id="change_20160113a_snb">Changed titles of source markup
						examples to remove "@id="OP14" since that is no longer part of the test
						condition for this section. Changed target of
							<sourcexml>heading/note/h</sourcexml> to be
							<targetxml>heading/title</targetxml> instead of
							<targetxml>primlawhist:histitemm/textitem</targetxml>, to be consistent
						with other primlaw history, per presentation team request.</ph>
				</p>
				<p>2015-12-04: <ph id="change_20151204c_snb">Created new section for
						"cttr:body/cttr:content/cttr:annotations - Act Name". This section contains
						modified/clarified instructions for the mapping instructions that were
						inside the Non-standard cttr:annotations: Instrument Info section of the CI.
						Modifications included (but were not limited to) changes to some of the
						source/target XPATHs, correcting
							<sourcexml>note/p/text/note/lnlink</sourcexml> within
							<sourcexml>cttr:annotations/heading</sourcexml> to instead be
							<sourcexml>note/p/text/lnlink</sourcexml>, changing mapping of Act Name
						content to target
							<targetxml>primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem</targetxml>
						instead of <targetxml>ref:relatedcontentitem</targetxml>, and mapping of
							<sourcexml>inlineobject</sourcexml>. Added clarification to indicate
						when <targetxml>primlawhist:histgrp</targetxml> is inserted into a
						previously created <targetxml>primlawhist:primlawhist</targetxml> element,
						and when a new <targetxml>primlawhist:primlawhist</targetxml> element is
						created.</ph>
				</p>
			</section>

		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Overview_cttr.annotations-ActName.dita  -->
	
	
	
	<!--<xsl:template match="source_cttr:annotations/heading/note/h[.='ActName' or .='Act Name']">
		<xsl:if test="p/text">
			<primlawhist:histitemm>
				<textitem>
					<xsl:apply-templates select="@* |node()"/>
				</textitem>
			</primlawhist:histitemm>
		</xsl:if>		
	</xsl:template>-->

	<!--<xsl:template match="source_cttr:annotations/heading/note/h[.=normalize-space(lower-case('Act Name'))]">
		
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<xsl:apply-templates select="@* | node()"/>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>

	<xsl:template match="cttr:annotations">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histgrp[@grptype="act-name"]   -\->
		<primlawhist:histgrp>
			<xsl:apply-templates select="@* | node()"/>
		</primlawhist:histgrp>

	</xsl:template>

	<xsl:template match="heading/note/h">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  heading/title   -\->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="heading/note/p/text">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitemm/textitem   -\->
		<primlawhist:histitemm>
			<textitem>
				<xsl:apply-templates select="@* | node()"/>
			</textitem>
		</primlawhist:histitemm>

	</xsl:template>

	<xsl:template match="p/text/inlineobject">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:inlineobject   -\->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="p/inlineobject">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:inlineobject   -\->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="p/text">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:inlineobject   -\->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="note/p/text">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:inlineobject   -\->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="inlineobject">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:inlineobject   -\->
		<ref:inlineobject>
			<xsl:apply-templates select="@* | node()"/>
		</ref:inlineobject>

	</xsl:template>

	<xsl:template match="cttr:annotations/heading">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitem/textitem/ref:lnlink   -\->
		<primlawhist:histitem>
			<textitem>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</textitem>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="note/p/text/lnlink">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitem/textitem/ref:lnlink   -\->
		<primlawhist:histitem>
			<textitem>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</textitem>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="note/p/text/remotelink[@href]">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:histitem/textitem/ref:lnlink[@service="URL"]   -\->
		<primlawhist:histitem>
			<textitem>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</textitem>
		</primlawhist:histitem>

	</xsl:template>

	<xsl:template match="remotelink/text()">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:lnlink/ref:marker/text()   -\->
		<ref:lnlink>
			<ref:marker>
				<!-\-  Could not determine target element or attribute name:  <text()>  -\->
				<xsl:apply-templates select="@* | node()"/>
				<!-\-  Could not determine target element or attribute name:  </text()>  -\->
			</ref:marker>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="remotelink/@href">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  ref:locator/ref:locator-key/ref:key-value/@value   -\->
		<ref:locator>
			<ref:locator-key>
				<ref:key-value>
					<xsl:attribute name="value">
						<xsl:apply-templates select="node()"/>
					</xsl:attribute>
				</ref:key-value>
			</ref:locator-key>
		</ref:locator>

	</xsl:template>

	<xsl:template match="note/p/text/note/lnlink">
		<!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  primlawhist:primlawhist/primlawhist:histgrp/primlawhist:histitem   -\->
		<primlawhist:primlawhist>
			<primlawhist:histgrp>
				<primlawhist:histitem>
					<xsl:apply-templates select="@* | node()"/>
				</primlawhist:histitem>
			</primlawhist:histgrp>
		</primlawhist:primlawhist>

	</xsl:template>
-->
</xsl:stylesheet>
