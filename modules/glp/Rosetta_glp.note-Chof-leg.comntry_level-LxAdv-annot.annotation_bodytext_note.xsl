<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_glp.note-Chof-leg.comntry_level-LxAdv-annot.annotation_bodytext_note">
    <title><sourcexml>leg:comntry/level/glp:note</sourcexml> to <targetxml>primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/bodytext/note</targetxml> <lnpid>id-CCCC-10331</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:comntry/level/glp:note</sourcexml> becomes
                    <targetxml>primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/bodytext/note</targetxml>.</p>
            <p>The value of <targetxml>note/@notetype</targetxml> is set to "xref".</p>
        </section>
        <section>
            <title>Changes</title>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-Chof-leg.comntry_level-LxAdv-annot.annotation_bodytext_note.dita  -->

    <!-- 20170524:  MCJ:  I have commented out this template entirely.  While the CI does state to convert this path to a primlaw:excerpt, the suspicison is that 
    	                  this note should just be handled as any other glp:note and it is something further in the ancestry that creates the excerpt. 
                          The problem this was causing for AU06 is that the expert is being created directly within annot:annotation which is not allowed.
    -->
	<!-- <xsl:template match="leg:comntry/level/glp:note">

		...  Original Target XPath:  primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/bodytext/note   ...
		... 20170522:  MCJ:  Updated so that the resulting primlaw:level uses @leveltype='unclassified'.  Note that this is not clarified in the CI. ...
		... 20170522:  MCJ:  Also, the note should have a @notetype="xref". ...
		<primlaw:excerpt>
			<primlaw:level leveltype="unclassified">
				<annot:annotations xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/">
					<annot:annotation-grp grptype="COMMENTARY">
						<annot:annotation>
							<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								<note notetype="xref">
									<xsl:apply-templates select="@* | node()"/>
								</note>
							</bodytext>
						</annot:annotation>
					</annot:annotation-grp>
				</annot:annotations>
			</primlaw:level>
		</primlaw:excerpt>

	</xsl:template> -->

</xsl:stylesheet>