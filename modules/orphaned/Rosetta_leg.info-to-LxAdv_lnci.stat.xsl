<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg-info">
	<title>cttr:annot/leg:info to lnci:stat <lnpid>id-CA03-13235</lnpid></title>
	<body>
		<section>
			<title>Instructions</title>
			<p>When <sourcexml>leg:info</sourcexml> is a child of <sourcexml>cttr:annot</sourcexml>,
				it will be a descendant of
					<sourcexml>cttr:annotations[@annotationtype="subseqcases"]</sourcexml>. The
					<sourcexml>leg:info</sourcexml>, which contains the section number of the act or
				law being discussed, goes in the <targetxml>cttr:citingcase</targetxml> which was
				created to hold the contents of the <sourcexml>cttr:annot</sourcexml> as detailed
				below.</p>
			<p><sourcexml>cttr:annot/leg:info/leg:num</sourcexml> becomes
					<targetxml>lnci:cite/lnci:stat/lnci:statinfo/lnci:hier/lnci:hierlev</targetxml>
				within <targetxml>ref:crossreference/ref:content</targetxml>. There are two ways to
				handle this, depending on whether the <sourcexml>leg:num</sourcexml> is the same as
				the lowest <sourcexml>ci:hierlev/@num</sourcexml> in the full citation, or whether
				it includes additional level(s) below that. </p>
			<p>To determine the value of <targetxml>lnci:hierlev/@label</targetxml>, look at
					<sourcexml>cttr:body/leg:info/leg:officialnum/ci:cite</sourcexml> (the full
				citation) and find the lowest nested hierarchical level indicated by
					<sourcexml>ci:hierlev</sourcexml>. If the value of that element's
					<sourcexml>@num</sourcexml> is the same as the value in
					<sourcexml>leg:num</sourcexml>, then use the same values for both
					<targetxml>lnci:hierlev/@label</targetxml> and
					<targetxml>lnci:hierlev/@num</targetxml> as the lowest level in the full
				citation (first example below). </p>
			<p>If the value in the lowest <sourcexml>ci:hierlev</sourcexml> from the full citation
				is not the same as the value in <sourcexml>cttr:annot/leg:num</sourcexml>, it will
				be because the annotation is citing a lower level in the hierarchy than is covered
				by the full citation, and so the target xml will need an additional level of
					<targetxml>lnci:hierlev</targetxml>: one for the lowest-level of the full
				citation ("62" in the second example below), and another one as a child of that with
				the additional level ("2" in the second example). The values of the first
					<targetxml>lnci:hierlev/@label</targetxml> and
					<targetxml>lnci:hierlev/@num</targetxml> will be the same as the values in the
				full citation; the value for the second <targetxml>lnci:hierlev/@label</targetxml>
				will be the next logical sub-level of the full citation's lowest level -- i.e., if
				the full citation goes down to "section," then any additional level would be a
				"subsection" -- and the value for the second
					<targetxml>lnci:hierlev/@num</targetxml> will be the contents of
					<sourcexml>leg:num</sourcexml> with everything removed but the value in parens.
			</p>
		</section>
		<example>
			<title>Source XML 1</title>
			<codeblock>&lt;cttr:body&gt;
	&lt;leg:info&gt;
		&lt;leg:officialname&gt;NATIONAL PARKS ACT [REPEALED] / PARCS NATIONAUX, LOI SUR LES [ABROGÉE]&lt;/leg:officialname&gt;
		&lt;leg:num&gt;s. 2 / art. 2&lt;/leg:num&gt;
		&lt;leg:juris ln.user-displayed="false"&gt;CD&lt;/leg:juris&gt;
		&lt;leg:officialnum&gt;
			&lt;ci:cite&gt;
				&lt;ci:stat&gt;
					&lt;ci:statinfo spanref="stcspan1"&gt;
						&lt;ci:hier&gt;
							&lt;ci:hierlev label="year" num="1985"&gt;
								&lt;ci:hierlev label="chapter" num="N-14"&gt;
									&lt;ci:hierlev label="section" num="2"/&gt;
								&lt;/ci:hierlev&gt;
							&lt;/ci:hierlev&gt;
						&lt;/ci:hier&gt;
					&lt;/ci:statinfo&gt;
						...
				&lt;/ci:stat&gt;
					...
			&lt;/ci:cite&gt;
		&lt;/leg:officialnum&gt;
	&lt;/leg:info&gt;
	&lt;cttr:annotations annotationtype="subseqcases" searchtype="TREATMENT"&gt;
		&lt;cttr:annot signal="neutral"&gt;
			&lt;cttr:use-group&gt;
				&lt;cttr:use&gt;Referred to/Mentionné&lt;/cttr:use&gt;
			&lt;/cttr:use-group&gt;
			&lt;leg:info&gt;
				&lt;leg:num normval=""&gt;2&lt;/leg:num&gt;
			&lt;/leg:info&gt;
			&lt;case:info&gt;
				&lt;case:casename&gt;CDN PARKS &amp;amp; WILDERNESS SOCIETY v. WOOD BUFFALO NAT PARK&lt;/case:casename&gt;
				&lt;case:courtinfo juris-rank="010" court-rank="015"&gt;
				&lt;case:courtname&gt;CAFCTD(1reInst)&lt;/case:courtname&gt;
				&lt;case:courtcode ln.user-displayed="false"&gt;
					&lt;process-ignore process="kwd"&gt;CAFC&lt;/process-ignore&gt;
				&lt;/case:courtcode&gt;
				&lt;case:juris ln.user-displayed="false"&gt;CA&lt;/case:juris&gt;
				&lt;case:dates&gt;
					&lt;case:decisiondate&gt;
						&lt;date day="23" month="06" year="1992"&gt;1992/6/23&lt;/date&gt;
					&lt;/case:decisiondate&gt;
				&lt;/case:dates&gt;
			&lt;/case:courtinfo&gt;
		&lt;/case:info&gt;
		&lt;case:citations&gt;
			&lt;case:citetext&gt;
				...
			&lt;/case:citetext&gt;
		&lt;/case:citations&gt;
		&lt;remotelink dpsi="03SC" service="DOC-ID" remotekey1="DOCID" remotekey2="00069136"&gt;
			&lt;inlineobject type="image" attachment="web-server" filename="4.gif" alttext="QuickCITE - Neutral information/Traitement et historique neutres"/&gt;
		&lt;/remotelink&gt;
	&lt;/cttr:annot&gt;
	...
&lt;/cttr:body&gt;      </codeblock>
			<title>Target XML 1</title>
			<codeblock>&lt;cttr:refitem&gt;
	&lt;cttr:citingcase&gt;
		&lt;cttr:caseinfo&gt;
			&lt;caseinfo:casename&gt;
				&lt;caseinfo:shortcasename&gt;CDN PARKS &amp;amp; WILDERNESS SOCIETY v. WOOD BUFFALO NAT PARK&lt;/caseinfo:shortcasename&gt;
			&lt;/caseinfo:casename&gt;
			&lt;cttr:citations&gt;
				...
			&lt;/cttr:citations&gt;
			&lt;jurisinfo:courtinfo&gt;
				&lt;jurisinfo:courtname&gt;CAFCTD(1reInst)&lt;/jurisinfo:courtname&gt;
				&lt;jurisinfo:jurisdiction&gt;
					&lt;jurisinfo:system&gt;CA&lt;/jurisinfo:system&gt;
				&lt;/jurisinfo:jurisdiction&gt;
			&lt;/jurisinfo:courtinfo&gt;
			&lt;decision:dates&gt;
				&lt;decision:decisiondate day="23" month="06" year="1992" normdate="1992-06-23"&gt;
					&lt;date-text&gt;1992/06/23&lt;/date-text&gt;
				&lt;/decision:decisiondate&gt;
			&lt;/decision:dates&gt;
		&lt;/cttr:caseinfo&gt;
		&lt;cttr:usagegroup&gt;
			&lt;cttr:usage usagetype="unspecified" xml:lang="en-CA"&gt;
				&lt;text&gt;Referred to&lt;/text&gt;
			&lt;/cttr:usage&gt;
			&lt;cttr:usage usagetype="unspecified" xml:lang="fr-CA"&gt;
				&lt;text&gt;Mentionné&lt;/text&gt;
			&lt;/cttr:usage&gt;
		&lt;/cttr:usagegroup&gt;
		&lt;ref:crossreference&gt;
			&lt;ref:content&gt;
				&lt;lnci:cite&gt;
					&lt;lnci:stat&gt;
						&lt;lnci:statinfo&gt;
							&lt;lnci:hier&gt;
								&lt;lnci:hierlev label="section" num="2"/&gt;
							&lt;/lnci:hier&gt;
						&lt;/lnci:statinfo&gt;
					&lt;/lnci:stat&gt;
				&lt;/lnci:cite&gt;
			&lt;/ref:content&gt;
		&lt;/ref:crossreference&gt;
	&lt;/cttr:citingcase&gt;
&lt;/cttr:refitem&gt;</codeblock>
		</example>
		<example>
			<title>Source XML 2</title>
			<codeblock>&lt;cttr:body&gt;
	&lt;leg:info&gt;
		&lt;leg:officialname&gt;PATENT ACT / BREVETS, LOI SUR LES&lt;/leg:officialname&gt;
		&lt;leg:num&gt;s. 62 / art. 62&lt;/leg:num&gt;
		&lt;leg:juris ln.user-displayed="false"&gt;CD&lt;/leg:juris&gt;
		&lt;leg:officialnum&gt;
			&lt;ci:cite&gt;
				&lt;ci:stat&gt;
					&lt;ci:statinfo spanref="stcspan1"&gt;
						&lt;ci:hier&gt;
							&lt;ci:hierlev label="year" num="1985"&gt;
								&lt;ci:hierlev label="chapter" num="P-4"&gt;
									&lt;ci:hierlev label="section" num="62"/&gt;
								&lt;/ci:hierlev&gt;
							&lt;/ci:hierlev&gt;
						&lt;/ci:hier&gt;
					&lt;/ci:statinfo&gt;
					...
			&lt;/leg:officialnum&gt;
		&lt;/leg:info&gt;
		&lt;cttr:content&gt;
			&lt;cttr:annotations annotationtype="subseqcases" searchtype="TREATMENT"&gt;
				&lt;cttr:annot signal="neutral"&gt;
					&lt;cttr:use-group&gt;
						&lt;cttr:use&gt;Referred to/Mentionné&lt;/cttr:use&gt;
					&lt;/cttr:use-group&gt;
					&lt;leg:info&gt;
						&lt;leg:num normval=""&gt;62(1)&lt;/leg:num&gt;
					&lt;/leg:info&gt;
					...
				&lt;/cttr:annot&gt;
				...
			&lt;/cttr:annotations&gt;
&lt;/cttr:body&gt;      </codeblock>
			<title>Target XML 2</title>
			<codeblock>&lt;cttr:refitem&gt;
	&lt;cttr:citingcase&gt;
		&lt;cttr:caseinfo&gt;
			&lt;cttr:caseinfo&gt;
				&lt;caseinfo:casename&gt;
					&lt;caseinfo:shortcasename&gt;Purcell Systems Inc. v. Argus Technologies Ltd.&lt;/caseinfo:shortcasename&gt;
				&lt;/caseinfo:casename&gt;
				...
		&lt;/cttr:caseinfo&gt;
		...
		&lt;ref:crossreference&gt;
			&lt;ref:content&gt;
				&lt;lnci:cite&gt;
					&lt;lnci:stat&gt;
						&lt;lnci:statinfo&gt;
							&lt;lnci:hier&gt;
								&lt;lnci:hierlev label="section" num="62"&gt;
									&lt;lnci:hierlev label="subsection" num="1"/&gt;
								&lt;/lnci:hierlev&gt;
							&lt;/lnci:hier&gt;
						&lt;/lnci:statinfo&gt;
					&lt;/lnci:stat&gt;
				&lt;/lnci:cite&gt;
			&lt;/ref:content&gt;
		&lt;/ref:crossreference&gt;
	&lt;/cttr:citingcase&gt;
&lt;/cttr:refitem&gt;</codeblock>
		</example>
		<section>
			<title>Changes</title>
			<p>2013-01-29: <ph id="change_20130129_rj">Changed target markup to reflect that country
				code "CD" will be converted to "CA" in all instances.  Changed target, example for <sourcexml>case:casename</sourcexml> to
				<targetxml>caseinfo:shortcasename</targetxml>.</ph></p>
			<p>2013-01-23: <ph id="change_20130123_rj">Removed the value "citation" from source and markup examples in attributes
				<sourcexml>cttr:use/@signal</sourcexml> and <targetxml>cttr:usage/@usagetype</targetxml>.</ph></p>
			<p>2013-01-17: <ph id="change_20130117_rj">Corrected example 1 target mark-up for
						<targetxml>cttr:usage/@usagetype</targetxml>.</ph></p>
			<p>2012-11-07: <ph id="change_20121107_bh">Rewrote instructions to make them clearer
					(hopefully); added second XML example (and edited first).</ph></p>
			<p>2013-01-17: <ph id="change_20130117_dsf">Updated 1st target example to include
						<targetxml>@normdate</targetxml> in
						<targetxml>decision:decisiondate</targetxml>.</ph></p>
		</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA03-Citator\Rosetta_leg.info-to-LxAdv_lnci.stat.dita  -->
	<xsl:message>Rosetta_leg.info-to-LxAdv_lnci.stat.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingcase   -->
		<cttr:citingcase>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:citingcase>

	</xsl:template>

	<xsl:template match="cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingcase   -->
		<cttr:citingcase>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:citingcase>

	</xsl:template>

	<xsl:template match="cttr:annotations[@annotationtype=&#34;subseqcases&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingcase   -->
		<cttr:citingcase>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:citingcase>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:info/leg:num"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:cite/lnci:stat/lnci:statinfo/lnci:hier/lnci:hierlev   -->
		<lnci:cite>
			<lnci:stat>
				<lnci:statinfo>
					<lnci:hier>
						<lnci:hierlev>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:hierlev>
					</lnci:hier>
				</lnci:statinfo>
			</lnci:stat>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="leg:num"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:hierlev/@label   -->
		<lnci:hierlev>
			<xsl:attribute name="label">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</lnci:hierlev>

	</xsl:template>

	<xsl:template match="ci:hierlev/@num"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:hierlev/@label   -->
		<lnci:hierlev>
			<xsl:attribute name="label">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</lnci:hierlev>

	</xsl:template>

	<xsl:template match="cttr:body/leg:info/leg:officialnum/ci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:hierlev/@label   -->
		<lnci:hierlev>
			<xsl:attribute name="label">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</lnci:hierlev>

	</xsl:template>

	<xsl:template match="ci:hierlev"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:hierlev/@label   -->
		<lnci:hierlev>
			<xsl:attribute name="label">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</lnci:hierlev>

	</xsl:template>

	<xsl:template match="@num"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:hierlev/@label   -->
		<lnci:hierlev>
			<xsl:attribute name="label">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</lnci:hierlev>

	</xsl:template>

	<xsl:template match="cttr:annot/leg:num"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:hierlev   -->
		<lnci:hierlev>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:hierlev>

	</xsl:template>

	<xsl:template match="case:casename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  caseinfo:shortcasename   -->
		<caseinfo:shortcasename>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:shortcasename>

	</xsl:template>

	<xsl:template match="cttr:use/@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:usage/@usagetype   -->
		<cttr:usage>
			<xsl:attribute name="usagetype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</cttr:usage>

	</xsl:template>

</xsl:stylesheet>