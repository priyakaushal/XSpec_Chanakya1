<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"
	xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote_footnotegrp">
  <title><sourcexml>case:headnote/footnotegrp</sourcexml> <lnpid>id-AU07-19230</lnpid></title>
  <body>
    <section>
      <p>The element <sourcexml>case:headnote/footnotegrp</sourcexml> becomes <targetxml>courtorder:head/courtorder:prelim/bodytext/p/text/footnotegroup</targetxml>. For details about converting <sourcexml>footnotegrp</sourcexml> and its child <sourcexml>footnote</sourcexml>, please see the topic <xref href="../../common_newest/Rosetta_footnote-LxAdv-footnote.dita"/>. All children of <sourcexml>footnote</sourcexml> are converted using the instructions specified in the section <xref href="general.dita"/>.
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-09-15: <ph id="change_20130915_JCG">Added this entirely new instruction to handle new XPaths. (Webteam #234565)</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\caseheadnote_footnotegrp.dita  -->

	<xsl:template match="case:headnote/footnotegrp" priority="35">
		<courtorder:prelim>
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<p>
					<text>
						<footnotegroup>
							<xsl:apply-templates select="@* | node()"/>
						</footnotegroup>
					</text>
				</p>
			</bodytext>
		</courtorder:prelim>
	</xsl:template>

	

</xsl:stylesheet>