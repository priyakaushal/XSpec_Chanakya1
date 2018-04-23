<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_glp.note_ChildOf_leg.comntry_level_level-to-LexisAdvance_annot.annotationlevel_annot.bodytext_note">
    <title><sourcexml>leg:comntry/level/level/glp:note</sourcexml> to 
    	<targetxml>primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/
    		annot:annotation/annot:annotationlevel/annot:bodytext/note</targetxml> <lnpid>id-CCCC-10332</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:comntry/level/level/glp:note</sourcexml> becomes
                    <targetxml>primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]
                    	/annot:annotation/annot:annotationlevel/annot:bodytext/note</targetxml>.</p>
            <p>The value of <targetxml>note/@notetype</targetxml> is set to "xref".</p>
        </section>
        <section>
            <title>Changes</title>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-Chof-leg.comntry_level_level-LxAdv-annot.annotationlevel_annot.bodytext_note.dita  -->
	<xsl:template match="leg:comntry/level/level/glp:note">

		<!--  Original Target XPath:  primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel/annot:bodytext/note   -->
		<!-- 20170522:  MCJ:  Updated so that the resulting primlaw:level uses @leveltype='unclassified'.  Note that this is not clarified in the CI. -->
		<primlaw:excerpt>
			<primlaw:level leveltype="unclassified">
				<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
					<annot:annotation-grp grptype="COMMENTARY">
						<annot:annotation>
							<annot:annotationlevel>
								<annot:bodytext>
									<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" notetype="xref">
										<!-- 20170606:  MCJ:  The transform of most glp:note children need to be wrapped in a bodytext. -->
										<xsl:for-each-group select="node()" group-adjacent="if (self::glp:note | self::note | self::page | self::heading) then 1 else 0">
											<xsl:choose>
												<xsl:when test="current-grouping-key()=1">
													<xsl:for-each select="current-group()">
														<xsl:apply-templates select="." />
													</xsl:for-each>
												</xsl:when>
												<xsl:otherwise>
													<bodytext>
														<xsl:for-each select="current-group()">
															<xsl:apply-templates select="."/>
														</xsl:for-each>
													</bodytext>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each-group>
										<!-- <xsl:apply-templates select="@* | node()"/> -->
									</note>
								</annot:bodytext>
							</annot:annotationlevel>
						</annot:annotation>
					</annot:annotation-grp>
				</annot:annotations>
			</primlaw:level>
		</primlaw:excerpt>

	</xsl:template>

</xsl:stylesheet>