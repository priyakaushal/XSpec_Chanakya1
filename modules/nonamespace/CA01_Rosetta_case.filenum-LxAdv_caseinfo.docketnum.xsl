<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.filenum-LxAdv_caseinfo.docketnum">
    <title>case:filenum <lnpid>id-CA01-12217</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/mapping"/>
        <example>
            <codeblock>
&lt;case:courtinfo&gt;
    ...
    &lt;case:filenum&gt;S.K. 1012&lt;/case:filenum&gt;
    ...
&lt;/case:courtinfo&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;caseinfo:caseinfo&gt;
    ...
    &lt;caseinfo:docketnum&gt;S.K. 1012&lt;/caseinfo:docketnum&gt;
    ...
&lt;/caseinfo:caseinfo&gt;
       </codeblock>
        </example>
        <!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita#Rosetta_case.filenum-LxAdv_caseinfo.docketnum/changes"/>-->
        <!--<section>
            <title>Changes Specific to CA01</title>
            </section>-->

    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.filenum-LxAdv_caseinfo.docketnum.dita  -->

    <!-- Vikas Rohilla : Template to match the case:filename and create the caseinfo:docketnum	-->
    <xsl:template match="case:filenum">
        <xsl:element name="caseinfo:docketnum">
            <xsl:apply-templates select="node()"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>