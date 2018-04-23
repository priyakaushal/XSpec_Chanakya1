<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_refpt-to-LexisAdvance_ref.anchor">
		<title><sourcexml>refpt</sourcexml> to <targetxml>ref:anchor</targetxml>
			<lnpid>id-CCCC-10458</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p><b>Please note that the conversion of <sourcexml>refpt</sourcexml> into
							<targetxml>ref:anchor</targetxml> must follow specific rules based on
						its location in the source document.</b> These context sensitive aspects are
					not all discussed in detail in the general instructions given here. Please see
					the specific document type instructions for more information regarding the
					context sensitive conversion details of this element. If there is any
					contradiction between these general instructions and the document type specific
					instructions, the specific instructions should be given precedence.</p>
				<p>Drop <sourcexml>refpt</sourcexml> when it occurs as a child of
						<sourcexml>ci:content</sourcexml> or
					<sourcexml>case:casename</sourcexml>.</p>
				<p><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>. Attribute
						<sourcexml>@id</sourcexml> becomes <targetxml>@id</targetxml> and
						<sourcexml>@type</sourcexml> becomes <targetxml>@anchortype</targetxml> with
					values tokenized as follows: <ul>
						<li><targetxml>ref:anchor[@anchortype="global"]</targetxml></li>
						<li><targetxml>ref:anchor[@anchortype="local"]</targetxml></li>
					</ul>
				</p>
				<p>All occurrences of refpt/@type="ext" should map to
					ref:anchor/@anchortype="global". If value of refpt/@type="local", or is omitted
					or any other value the mapping should be ref:anchor/@anchortype="local" </p>
				<note><targetxml>ref:anchor/@id</targetxml> that begins with a number must have an
					underscore added at start. </note>
				<p>Duplicate anchors should be suppressed. Repeating anchors are ok however (non
					duplicate multiple anchors). Need to remove duplicates. </p>
				<p>If <sourcexml>refpt</sourcexml> comes within <sourcexml>l/li/lilabel</sourcexml>
					then <targetxml>ref:anchor</targetxml> will become the first child of
						<targetxml>listitem</targetxml>.</p>
				<p><sourcexml>entry/refpt</sourcexml> becomes
						<targetxml>entry/ref:anchor</targetxml></p>
				<p>If <sourcexml>refpt</sourcexml> comes within <sourcexml>figure</sourcexml> then
					drop the <sourcexml>refpt</sourcexml> since id has dummy values.</p>
				<p>If <sourcexml>refpt</sourcexml> comes with <sourcexml>page</sourcexml> as sibling
					then drop the <sourcexml>refpt</sourcexml> element.</p>
				<p>If <sourcexml>refpt</sourcexml> and <sourcexml>remotelink</sourcexml> occur as
					adjacent siblings, refer to topic <i><sourcexml>endnote</sourcexml> to
							<targetxml>endnote</targetxml></i>.</p>

				<!-- 2013-11-14 (JCG): Removed the xref to the endnote topic in the above sentence because there are times when the refpt topic is used in a CI but the endnote topic is not. In this case, the xref causes a validation warning because endnote is xref'ed but is not in the DITAMAP. 
		    NOTE: I purposely made this a comment rather than a change log entry because there is no need for it to appear in a change log. -->

				<note>Whenever an <targetxml>@xml:id</targetxml> has the same value as ANY
						<targetxml>ref:anchor/@id</targetxml>, suppress the
						<targetxml>@xml:id</targetxml>.</note>
			</section>
			<example>
				<title>Source XML 1</title>
				<codeblock> &lt;case:judgments&gt; &lt;glp:note&gt; &lt;refpt id="257_ALR_1_2"
					type="ext"/&gt; &lt;remotelink dpsi="000G" refpt="257_ALR_1_1"
					remotekey1="REFPTID" service="DOC-ID"&gt; Previous page in this case
					&lt;/remotelink&gt; &lt;/glp:note&gt; &lt;case:order subdoc="true"
					toc-caption="Orders"&gt; &lt;heading&gt; &lt;title&gt;Orders&lt;/title&gt;
					&lt;/heading&gt; &lt;p&gt; &lt;text&gt; Order that the questions stated in the
					amended special case be answered as follows: &lt;/text&gt; &lt;/p&gt;
					&lt;/case:order&gt; &lt;/case:judgments&gt; </codeblock>
			</example>
			<example>
				<title>Target XML 1</title>
				<codeblock> &lt;courtcase:opinions&gt; &lt;note&gt; &lt;ref:anchor id="_257_ALR_1_2"
					anchortype="global"/&gt; ... &lt;/note&gt; courtcase:order will be moved under
					courtcase:body... &lt;courtcase:opinions&gt; </codeblock>
			</example>
			<example>
				<title>Source XML 2</title>
				<p>Here is an example of <sourcexml>refpt</sourcexml> occurring within
						<sourcexml>ci:content</sourcexml>. </p>
				<codeblock> &lt;ci:cite type="cite4thisdoc"&gt; &lt;ci:case&gt; &lt;ci:caseref&gt;
					&lt;ci:reporter value="urj"/&gt; &lt;ci:refnum num="BC200702133"/&gt;
					&lt;/ci:caseref&gt; &lt;/ci:case&gt; &lt;ci:content&gt; &lt;citefragment
					searchtype="CASE-CITE-REF"&gt;BC200702133&lt;/citefragment&gt; &lt;refpt
					id="BC200702133" type="ext"&gt;&lt;/refpt&gt; &lt;/ci:content&gt;
					&lt;/ci:cite&gt; </codeblock>
			</example>
			<example>
				<title>Target XML 2</title>
				<p>When <sourcexml>refpt</sourcexml> occurs within
					<sourcexml>ci:content</sourcexml>, it is dropped. </p>
				<codeblock> &lt;ref:cite4thisresource citetype="reporter"&gt; &lt;lnci:case&gt;
					&lt;lnci:caseref&gt; &lt;lnci:reporter value="urj"/&gt; &lt;lnci:refnum
					num="BC200702133"/&gt; &lt;/lnci:caseref&gt; &lt;/lnci:case&gt;
					&lt;lnci:content&gt;BC200702133&lt;/lnci:content&gt;
					&lt;/ref:cite4thisresource&gt; </codeblock>
			</example>
			<example>
				<title>Source XML 3: Element refpt comes with page element.</title>
				<codeblock> &lt;p&gt; &lt;text&gt; &lt;refpt id="PAGE6" type="ext"/&gt; &lt;page
					reporter="PBAP" text="Page " count="6"/&gt; In civil trials the position is
					summarised by Wrottesley, &lt;emph typestyle="it"&gt;Principles of
					Advocacy&lt;/emph&gt;, p13: &lt;/text&gt; &lt;/p&gt; </codeblock>
			</example>
			<example>
				<title>Target XML 3</title>
				<codeblock> &lt;p&gt; &lt;text&gt; &lt;ref:page num="6" page-scheme="PBAP"
					page-scheme-type="reporter-abbreviation"/&gt; In civil trials the position is
					summarised by Wrottesley, &lt;emph typestyle="it"&gt;Principles of
					Advocacy&lt;/emph&gt;, p13: &lt;/text&gt; &lt;/p&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2012-08-30: Major revision for modularization.</p>
			</section>
		</body>
	</dita:topic>
	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_refpt-LxAdv-ref.anchor.dita  -->


	<xsl:template match="refpt" name="refpt-generic">
		
		<!--  Original Target XPath:  ref:anchor   -->
		<xsl:variable name="dup">
			<xsl:call-template name="amIaDuplicate"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when
				test="parent::leg:bodytext or parent::ci:content or parent::case:casename or ancestor::figure or preceding-sibling::page 
				or following-sibling::*[1][self::page] or $dup='true'"/>
			<xsl:otherwise>
				<ref:anchor>
					<xsl:apply-templates select="@*"/>
					<xsl:if test="not(@type)">
						<xsl:attribute name="anchortype" select="'local'"/>
					</xsl:if>
					<xsl:if test="node()">
						<ref:anchortext><xsl:apply-templates select="node()"/></ref:anchortext>
					</xsl:if>					
				</ref:anchor>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>


	<!-- JL: @id and @xml:id transformations handled by module
		XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_identifier-LxAdv-ID_data_type-HandlingDuplicates.xsl -->

	<xsl:template match="refpt/@type">
		<!--  Original Target XPath:  @anchortype   -->
		<xsl:attribute name="anchortype">
			<xsl:value-of select="if(.='ext') then 'global' else 'local'"/>
		</xsl:attribute>
	</xsl:template>
	


</xsl:stylesheet>
