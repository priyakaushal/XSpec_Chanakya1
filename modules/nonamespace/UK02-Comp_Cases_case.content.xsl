<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:compcase="urn:x-lexisnexis:content:compositecourtcase:sharedservices:1"
	exclude-result-prefixes="case dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="case.content">
		<title>case:content <lnpid>id-UK02-27211</lnpid></title>
		<body>
			<section>
				<ul>
					<li class="- topic/li ">
						<note class="- topic/note ">This is a container element that does
							not need to be carried forward in the conversion. However, all
							content must be converted such that the order of elements is
							maintained whenever possible. Please see the <xref
								href="../../common_newest/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita"
								class="- topic/xref ">Maintain the Order of Elements Whenever
								Possible</xref> section for more information.</note>

					</li>
				</ul>
			</section>
		</body>
	</dita:topic>

	<xsl:template match="case:content">
		<xsl:apply-templates select="node() except copyright"/>
	</xsl:template>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK02-Comp_Cases\case.content.dita  -->
</xsl:stylesheet>