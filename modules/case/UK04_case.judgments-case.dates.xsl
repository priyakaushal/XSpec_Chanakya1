<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-case.info-case.judgments-case.dates">
    <title>case:dates <lnpid>id-UK04-27620</lnpid></title>
    <body>
        <p>The element <sourcexml>case:judgments/case:dates</sourcexml> is a container element, its
            start-tag and end-tag are dropped. Conversion of <sourcexml>case:dates</sourcexml> child
            element is described in detail along with the instructions for
            <sourcexml>case:headnote/case:info/case:courtinfo/case:dates</sourcexml>, since the child
            elements of these two elements must be considered together when converting. See the subtopic
            <xref href="case.info_case.dates.dita"/> for details. </p>
    </body>
    <!--
    <section>
        <title>Changes</title>
        <p>2015-02-04: <ph id="change_20150204_JCG">Description of change...</ph></p>
    </section>
    -->
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\case.judgments-case.dates.dita  -->
	<!--<xsl:message>case.judgments-case.dates.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:judgments/case:dates">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	</xsl:stylesheet>