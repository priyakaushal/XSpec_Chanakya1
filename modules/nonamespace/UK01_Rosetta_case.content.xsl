<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="2.0" exclude-result-prefixes="case dita xd">
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK01_Rosetta_case.content">
		<title>case:content <lnpid>id-UK01-27019</lnpid></title>
		<body>
			<section conref="../../common_caselaw/conref_content/Rosetta_case.content.dita#Rosetta_case.content/mapping"/>
			<!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.content.dita#Rosetta_case.content/changes"/>-->
			<!--<section>
            <title>Changes Specific to UK01</title>
        </section>-->
		</body>
	</dita:topic>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.content.dita  -->
	
	<xd:doc>
		<xd:desc>
			<xd:p>case:content is a container element that does not need to be carried forward in the conversion. However, all content
				inside it must be converted with the order of elements maintained whenever possible. Please see the section Maintain
				the Order of Elements Whenever Possible for more information</xd:p>
		</xd:desc>
	</xd:doc>
	
	<xsl:template match="case:content">
		<xsl:apply-templates/>
	</xsl:template>
</xsl:stylesheet>
