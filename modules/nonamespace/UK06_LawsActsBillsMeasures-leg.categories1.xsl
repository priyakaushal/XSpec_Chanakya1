<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
xmlns:glp="http://www.lexis-nexis.com/glp"	
xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.categories1">
  <title>Exception scenario for leg:categories <lnpid>id-UK06-28015</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:categories/glp:note/pgrp</sourcexml> becomes <targetxml>primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/bodytext/pgrp</targetxml> and populated as below:</p>
      
      <note>If element <sourcexml>heading</sourcexml> occurs within <sourcexml>leg:categories/glp:note</sourcexml> then convert <sourcexml>leg:categories/glp:note/heading</sourcexml> to <targetxml>primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/heading</targetxml></note>
                                   
      <note>Please see <xref href="UK06_LawsActsBillsMeasures-leg.categories1-source2.dita"/> and <xref href="UK06_LawsActsBillsMeasures-leg.categories1-target2.dita"/> for a source and target example of <sourcexml>leg:categories/glp:note/heading</sourcexml> to <targetxml>primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/heading</targetxml>.</note>
      
      <note>If <sourcexml>emph</sourcexml> occurs within <sourcexml>title</sourcexml> or <sourcexml>subtitle</sourcexml> with the attribute's value <sourcexml>epmh/@typestyle="it"</sourcexml> or <sourcexml>epmh/@typestyle="un"</sourcexml> will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
    </section>
    <section>
      <title>Changes</title>
      <p>2015-08-19 <ph id="change_20150819_AB">Added instruction and example for <sourcexml>leg:categories/glp:note/heading</sourcexml> to <targetxml>primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp/annot:annotation/heading</targetxml>(WebTeam #2377).</ph>
      </p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.categories1.dita  -->
	 
	<!-- Sudhanshu Srivastava :
	     Edited :- 15 June 2017.
	     Comments :- This is conetent specific module.
-->

	<xsl:template match="leg:categories/glp:note/pgrp">
		<primlaw:level leveltype="'preamble'">
			<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
				<annot:annotation-grp>
					<annot:annotation>
						<xsl:apply-templates select="preceding-sibling::heading"/>
						<bodytext>
							<pgrp>
								<xsl:apply-templates select="@* | node()"/>
							</pgrp>
						</bodytext>
					</annot:annotation>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>
	</xsl:template>

<!--	<xsl:template match="leg:categories/glp:note/heading">
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>
	</xsl:template>-->
	
<!--	<xsl:template match="leg:categories/glp:note/heading/title">
		<title>
			<xsl:apply-templates select="node()"/>
		</title>
	</xsl:template>-->
</xsl:stylesheet>