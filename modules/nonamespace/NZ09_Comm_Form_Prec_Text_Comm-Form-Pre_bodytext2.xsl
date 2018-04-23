<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_bodytext2">
  <title>Convert <sourcexml>level/bodytext/heading</sourcexml> <lnpid>id-NZ09-24209</lnpid></title>
  <body>
    <section>
      <p>If in the source document, element <sourcexml>level/bodytext/heading</sourcexml> then it will become <targetxml>seclaw:level/seclaw:bodytext/h</targetxml> and <targetxml>form:form/form:document/form:bodytext/form:h</targetxml> in different content model.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ09_Comm_Form_Prec_Text\Comm-Form-Pre_bodytext2.dita  -->
	
	<xsl:template match="level/bodytext/heading" priority="20">
		<xsl:if test="not(matches(title , '^&#x2009;|&#160;|\s$'))">
			<h xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="title" mode="h"/>
			</h>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="title" mode="h">
		<xsl:apply-templates/>
	</xsl:template>
	
	<!-- form:h handled in level2 module -->
</xsl:stylesheet>