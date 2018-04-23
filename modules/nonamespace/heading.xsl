<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote_heading">
    <title>heading <lnpid>id-AU07-19238</lnpid></title>
    <body>
        <section>
          <p>The element <sourcexml>case:headnote/heading</sourcexml> becomes <targetxml>courtorder:head/heading</targetxml>. The attribute <sourcexml>heading/@searchtype="PRACTICE-NOTE"</sourcexml> is dropped.
          </p>
          <p>The child elements <sourcexml>case:headnote/heading/desig</sourcexml> and <sourcexml>case:headnote/heading/desig/designum</sourcexml> become <targetxml>courtorder:head/heading/desig</targetxml>. Please see the topic <xref href="../../common_newest/Rosetta_desig-LxAdv-desig.dita"/> and the topic <xref href="../../common_newest/Rosetta_designum-Chof-desig-LxAdv-desig.dita"/> for details.
            </p>
          <p>The child elements <sourcexml>case:headnote/heading/desig/refpt</sourcexml> and <sourcexml>case:headnote/heading/desig/designum/refpt</sourcexml> become <targetxml>courtorder:head/ref:anchor</targetxml>. The <targetxml>ref:anchor</targetxml> is moved, if required, before any other output elements so that it is the <b><u>first</u></b> child of <targetxml>courtorder:head</targetxml>. Please see the topic <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"/> for details regarding conversion.
          </p>
                      
                    <note>Conversion should not create consecutive <targetxml>heading</targetxml>
                        elements. When 2 or more consecutive sibling source elements map to
                            <targetxml>heading</targetxml>, data should be merged to a single
                            <targetxml>heading</targetxml> element unless this would hamper content
                        ordering.</note>
        </section>
      <section>
        <title>Changes</title>
        <p>2013-09-15: <ph id="change_20130915_JCG">Added instructions regarding <sourcexml>refpt</sourcexml>. (Webteam #234565)</ph></p>
      </section>
      
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\heading.dita  -->

	<xsl:template match="case:headnote/heading |case:body/heading" priority="40">	
		<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">	
			<xsl:apply-templates select="@* | node() except (refpt | leg:empleg)"/>
			<xsl:apply-templates select="parent::case:headnote/case:info/case:casename | parent::case:body/case:headnote/case:info/case:casename"/>	
			<!--    ... When 2 or more sibling source elements map to <targetxml>heading</targetxml>, the data should be merged into a single <targetxml>heading</targetxml> element unless this would interfere with content ordering.</note>     -->
			<xsl:for-each select="following-sibling::node()[1][ self::heading ]">
				<xsl:call-template name="combineSiblingsOfSameName"/>
			</xsl:for-each>			
		</heading>
		
	</xsl:template>
</xsl:stylesheet>