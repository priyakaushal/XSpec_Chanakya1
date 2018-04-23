<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.content">
    <title>case:content <lnpid>id-CA01-12212</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.content.dita#Rosetta_case.content/mapping"/>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.content.dita#Rosetta_case.content/changes"/>-->
        <!--<section>
            <title>Changes Specific to CA01</title>
        </section>-->
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.content.dita  -->
	 
    
    <!-- Sudhanshu 26/04/02017: This template is for case:content , only passthorugh it's child node.-->
    <xsl:template match="case:content">
        <xsl:apply-templates/>
    </xsl:template>    
            

</xsl:stylesheet>