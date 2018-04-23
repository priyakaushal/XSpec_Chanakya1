<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.constituents">
		<title>case:constituents <lnpid>id-UK02-27210</lnpid></title>
		<body>
			<section>
				<p>
					<sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:constituents</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>/compcase:compositecourtcase/compcase:body/compcase:caseinstance/compcase:caseinstancebody/courtcase:opinions/courtcase:representation</targetxml>
					below mentioned is the child element: <ul class="- topic/ul ">
						<li class="- topic/li ">
							<sourcexml class="+ topic/keyword xml-d/sourcexml "
								>case:constituent</sourcexml> becomes <targetxml
								class="+ topic/keyword xml-d/targetxml "
								>courtcase:representation/courtcase:counsel</targetxml>
						</li>
					</ul>
					<note class="- topic/note ">There can be separate <sourcexml
							class="+ topic/keyword xml-d/sourcexml "
							>case:constituents</sourcexml> at different locations in the file
						(generally before and after the <sourcexml
							class="+ topic/keyword xml-d/sourcexml "
							>case:judgments</sourcexml>) which needs to be maintained in that
						location.</note>
					<note class="- topic/note ">If <sourcexml
							class="+ topic/keyword xml-d/sourcexml ">person</sourcexml> occurs
						inside <sourcexml class="+ topic/keyword xml-d/sourcexml "
							>case:constituent</sourcexml>, kindly refer to <xref
							href="../../common_newest/Rosetta_case.constituent_person-LxAdv-person.counselor_person.person.dita"
							class="- topic/xref ">person section</xref> for handling of this
						scenario.</note>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:constituents&gt; &lt;case:constituent&gt;
					&lt;person&gt; &lt;name.text&gt;Jacob and Stevens for the
					plaintiff.&lt;/name.text&gt; &lt;/person&gt; &lt;/case:constituent&gt;
					&lt;case:constituent&gt; &lt;person&gt; &lt;name.text&gt;Richards for
					the defendant, Lachlan.&lt;/name.text&gt; &lt;/person&gt;
					&lt;/case:constituent&gt; &lt;case:constituent&gt; &lt;person&gt;
					&lt;name.text&gt;Sir William Horne and Koe for the assignees in
					bankruptcy of Scott.&lt;/name.text&gt; &lt;/person&gt;
					&lt;/case:constituent&gt; &lt;/case:constituents&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;courtcase:opinions&gt; &lt;courtcase:representation&gt;
					&lt;courtcase:counsel&gt; &lt;person:counselor&gt;
					&lt;person:person&gt; &lt;person:name.text&gt; Jacob and Stevens for
					the plaintiff. &lt;/person:name.text&gt; &lt;/person:person&gt;
					&lt;/person:counselor&gt; &lt;/courtcase:counsel&gt;
					&lt;courtcase:counsel&gt; &lt;person:counselor&gt;
					&lt;person:person&gt; &lt;person:name.text&gt; Richards for the
					defendant, Lachlan. &lt;/person:name.text&gt; &lt;/person:person&gt;
					&lt;/person:counselor&gt; &lt;/courtcase:counsel&gt;
					&lt;courtcase:counsel&gt; &lt;person:counselor&gt;
					&lt;person:person&gt; &lt;person:name.text&gt; Sir William Horne and
					Koe for the assignees in bankruptcy of Scott.
					&lt;/person:name.text&gt; &lt;/person:person&gt;
					&lt;/person:counselor&gt; &lt;/courtcase:counsel&gt;
					&lt;/courtcase:representation&gt; &lt;/courtcase:opinions&gt;
				</codeblock>
			</example>

			<section>
				<p>Any other element under <sourcexml
						class="+ topic/keyword xml-d/sourcexml "
						>case:constituents</sourcexml> should be placed under <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>courtcase:representation/courtcase:arguments/bodytext</targetxml>.
					For example <sourcexml class="+ topic/keyword xml-d/sourcexml "
						>case:constituents/pgrp</sourcexml> becomes <targetxml
						class="+ topic/keyword xml-d/targetxml "
						>courtcase:representation/courtcase:arguments/bodytext/pgrp</targetxml>.</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;case:constituents&gt; &lt;pgrp&gt; &lt;p&gt;
					&lt;text&gt;The arguments upon the appeal were substantially the same
					as in the court below and the same authorities were relied
					upon.&lt;/text&gt; &lt;/p&gt; &lt;/pgrp&gt; &lt;/case:constituents&gt;
				</codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;courtcase:representation&gt; &lt;courtcase:arguments&gt;
					&lt;bodytext&gt; &lt;pgrp&gt; &lt;p&gt; &lt;text&gt;The arguments upon
					the appeal were substantially the same as in the court below and the
					same authorities were relied upon.&lt;/text&gt; &lt;/p&gt;
					&lt;/pgrp&gt; &lt;/bodytext&gt; &lt;/courtcase:arguments&gt;
					&lt;/courtcase:representation&gt; </codeblock>
			</example>

		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.constituents.dita  -->

	<xsl:template match="case:constituents">
		<courtcase:representation>
			<xsl:apply-templates select="@* | case:constituent"/>
			<xsl:if test="*[not(self::case:constituent)]">
				<courtcase:arguments>
					<bodytext
						xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates select="node() except case:constituent" />
					</bodytext>
				</courtcase:arguments>
			</xsl:if>
		</courtcase:representation>
	</xsl:template>

	<xsl:template match="case:constituent">
		<courtcase:counsel>
			<xsl:apply-templates select="@* | node()"/>
		</courtcase:counsel>
	</xsl:template>

</xsl:stylesheet>