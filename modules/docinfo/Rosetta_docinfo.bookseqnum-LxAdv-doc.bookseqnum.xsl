<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"

						xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"

						exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.bookseqnum-to-LexisAdvance_doc.bookseqnum">
		<title><sourcexml>docinfo:bookseqnum</sourcexml> to  <targetxml>doc:bookseqnum</targetxml> <lnpid>id-CCCC-10288</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p>This is an LBU-supplied, unsigned numeric value that indicates the relative position of a document and must be unique within a source. 
					<sourcexml>docinfo:bookseqnum</sourcexml> becomes <targetxml>doc:bookseqnum</targetxml>.
				</p>
			</section>
			
			<example>
				<title>Source XML</title>
				<codeblock>
		
		&lt;docinfo:bookseqnum&gt;273181624&lt;/docinfo:bookseqnum&gt;
		
			</codeblock>
			</example>
			
			<example>
				<title>Target XML</title>
				<codeblock>
		
		&lt;doc:bookseqnum&gt;273181624&lt;/doc:bookseqnum&gt;
		
			</codeblock>
			</example>
		
			<section>
				<title>Changes</title>
				<p>2012-09-06: Created.
				</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.bookseqnum-LxAdv-doc.bookseqnum.dita  -->

	<xsl:template match="docinfo:bookseqnum[not( normalize-space( . ) = '' )]">

		<!--  Original Target XPath:  doc:bookseqnum   -->
		<doc:bookseqnum>
			<xsl:apply-templates select="@* | node()"/>
		</doc:bookseqnum>

	</xsl:template>
	<!--    From Rosetta_Elements-LxAdv-Empty_Elements.dita / .xsl   -->
	<xsl:template match="docinfo:bookseqnum[ normalize-space( . ) = '' ]"/>

</xsl:stylesheet>