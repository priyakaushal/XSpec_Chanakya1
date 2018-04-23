<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-abbrvname">
		<title>abbrvname <lnpid>id-UK06-28042</lnpid></title>
		<body>
			<section>
				<p><sourcexml>abbrvname</sourcexml> becomes <targetxml>abbrvname</targetxml> and populated as below:</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2016-01-06 <ph id="change_20160106_AB">Created. RFA #2689</ph></p>
			</section>
		</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-abbrvname.dita  -->

	<!-- Sudhanshu Srivastava :
	Edited :- 14 June 2017.
    Comments : This is content specific module handling abbrvname under head part.	
	-->
	<xsl:template match="abbrvname">
		<abbrvname>
			<xsl:apply-templates select="@* | node()"/>
		</abbrvname>
	</xsl:template>

	<xsl:template match="abbrvname/@suppliedby"/>

	<xsl:template match="leg:shorttitle">
		<legisinfo:shorttitle xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:shorttitle>
	</xsl:template>

	<xsl:template match="leg:shorttitle/@suppliedby"/>

</xsl:stylesheet>
