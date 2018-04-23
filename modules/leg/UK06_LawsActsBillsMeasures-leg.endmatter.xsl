<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.endmatter">
		<title>leg:endmatter <lnpid>id-UK06-28021</lnpid></title>
		<body>
			<section>
				<p><sourcexml>leg:endmatter</sourcexml> becomes <targetxml>primlaw:level</targetxml> with attribute <targetxml>@leveltype="endnote"</targetxml> and populated as below:</p>
			</section>
			<section>
				<title>Changes</title>
				<p>2013-12-03 <ph id="change_20130312_AB">Created, element <sourcexml>leg:endmatter</sourcexml> encountered in new content source delivery. Created instruction and examples for handling
							<sourcexml>leg:endmatter</sourcexml> (WebTeam #245213).</ph></p>
			</section>
		</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.endmatter.dita  -->

	<!-- Sudhanshu Srivastava :
	     Edited :- 19 June 2017.
	     Comments :- This is content specific module handling leg:endmatter and pass through it's child.
	-->
	<!-- CSN - 2017/09/27 - added check to omit primlaw:level if it contains nothing but a copyright -->
	<xsl:template match="leg:endmatter">
		<xsl:if test="not(.//text() = .//copyright/text())">
			<primlaw:level leveltype="endnote">
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:level>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
