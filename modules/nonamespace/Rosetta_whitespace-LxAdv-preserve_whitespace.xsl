<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"

						exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_target_whitespace">
		<title>Preserve Significant Whitespace <lnpid>id-CCCC-10488</lnpid></title>
		<body>
			<section>
				<title>Instructions</title>
				<p>All significant whitespace characters (i.e. newlines, spaces, tabs, non-breaking spaces, etc. in data content or mixed content in elements) should be preserved. No significant whitespace should be added, removed or altered. In some cases, an element that contains only whitespace in the input may be stripped from the output by specific instruction; in those cases, both the tags and the whitespace should be removed.</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2012-06-07: Created. </p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_whitespace-LxAdv-preserve_whitespace.dita  -->

	<!-- THIS IS INFORMATIONAL ONLY AND NEVER EVER EVER STRIP SPACE FOR EVERY ELEMENT.  -->
	
	

</xsl:stylesheet>