<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	version="2.0" exclude-result-prefixes="dita leg">


	<!-- No original DITA file -->

	<xsl:template match="leg:attachments">
		<primlaw:level leveltype="attachment">
			<xsl:apply-templates/>
		</primlaw:level>
	</xsl:template>

</xsl:stylesheet>
