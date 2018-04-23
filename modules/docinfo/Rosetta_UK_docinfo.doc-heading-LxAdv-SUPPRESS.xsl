<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0"
	exclude-result-prefixes="dita case docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_UK_docinfo.doc-heading-LxAdv-SUPPRESS">
		<title>(UK01-UK04) <sourcexml>docinfo:doc-heading</sourcexml> is SUPPRESSED <lnpid>id-CCCC-10532</lnpid></title>
		<body>
			<note>This instruction applies <u>only</u> to the streams UK01, UK02, UK03, and UK04.</note>
			<p>The element <sourcexml>docinfo:doc-heading</sourcexml> is suppressed; it is <b><u>not</u></b> converted to
					<targetxml>dc:title</targetxml> for these streams. Please see <xref
					href="Rosetta_UK_case.casename-Plus-case.reportercite-LxAdv-dc.title.dita"/> for details on the creation of
					<targetxml>dc:title</targetxml> from <sourcexml>case:casename</sourcexml> and
					<sourcexml>case:reportercite</sourcexml>.</p>
			<example>
				<title>Source XML </title>
				<codeblock> &lt;docinfo:doc-heading&gt; - [2002] 3 All ER 904&lt;/docinfo:doc-heading&gt; </codeblock>
				<p>Suppress this element.</p>
			</example>
			<section>
				<title>Changes</title>
				<p>2015-11-20: <ph id="change_20151120_JCG">Added this topic. Requested in UXRs for these streams during
						November 2015.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_UK_docinfo.doc-heading-LxAdv-SUPPRESS.dita  -->

	<xsl:template match="docinfo:doc-heading"/>

</xsl:stylesheet>
