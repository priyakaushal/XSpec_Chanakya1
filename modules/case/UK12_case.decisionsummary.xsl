<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm case leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK12_case.decisionsummary"> 
		<title>case:decisionsummary <lnpid>id-UK12-29839</lnpid> </title>
		<body>
			<section>
				<p>
					<sourcexml>case:embeddedcase/case:headnote/case:decisionsummary</sourcexml> becomes
					<targetxml>courtcase:caseexcerpt/courtcase:head/casesum:summaries/casesum:decisionsummary</targetxml>.
					The source attribute <sourcexml>@summarytype</sourcexml> becomes
					<targetxml>@summarysource</targetxml>.
					<note>Every element occuring within <sourcexml>case:decisionsummary</sourcexml> should be
						handled via <targetxml>bodytext</targetxml> within
						<targetxml>casesum:decisionsummary</targetxml> except <sourcexml>heading</sourcexml>
						element. A <targetxml>heading</targetxml> will be a sibling of
						<targetxml>bodytext</targetxml> within
						<targetxml>casesum:decisionsummary</targetxml>.</note>
					<note>Conversion should not create consecutive <targetxml>casesum:summaries</targetxml>
						elements. When 2 or more consecutive sibling source elements map to
						<targetxml>casesum:summaries</targetxml>, target data should be merged to a single
						<targetxml>casesum:summaries</targetxml> element unless this would hamper content
						ordering.</note>
				</p>
				
			</section>
			<example>
				<title>Source XML</title>
				<codeblock>
<![CDATA[
<case:decisionsummary summarytype="held">
    <h l="1">Held on appeal:</h>
    <p>
        <text>Whilst the aforementioned letter did not, in itself, constitute a valid retainer, it evidenced the long standing arrangement between the insurers and the solicitors. Further, any instructions to the solicitors to act on behalf of the insurer's clients would give rise to a retainer on terms previously agreed. Appeal dismissed.</text>
    </p>
</case:decisionsummary>
]]>
      </codeblock>
			</example>
			<example>
				<title>Target XML</title>
				<codeblock>
<![CDATA[
<casesum:summaries>
    <casesum:decisionsummary summarysource="held">
        <bodytext>
            <h level="1">Held on appeal:</h>
            <p>
                <text>Whilst the aforementioned letter did not, in itself, constitute a valid retainer, it evidenced the long standing arrangement between the insurers and the solicitors. Further, any instructions to the solicitors to act on behalf of the insurer's clients would give rise to a retainer on terms previously agreed. Appeal dismissed.</text>
            </p>
        </bodytext>
    </casesum:decisionsummary>
</casesum:summaries>
]]>
      </codeblock>
			</example>
			
			
			<section>
				<title>Changes</title>
				<p>2017-05-15: <ph id="change_20170515_RS">Added a note and Example for handling child of <sourcexml>case:decisionsummary</sourcexml>. VSTS Issue 272255 </ph></p>
				<p>2017-04-24: <ph id="change_20170424_RS">Created. VSTS Issue 272255</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK/UK12-Treatise/UK12_case.decisionsummary.dita -->
<!--	<xsl:message>UK12_case.decisionsummary.xsl requires manual development!</xsl:message> -->
	

	<xsl:template match="case:decisionsummary">
		<casesum:summaries>
			<casesum:decisionsummary>
				<xsl:apply-templates select="@*"/>
				<bodytext>
				<xsl:apply-templates select="node()"/>
				</bodytext>
			</casesum:decisionsummary>
		</casesum:summaries>		
	</xsl:template>
	
	<xsl:template match="case:decisionsummary/@summarytype">
		<xsl:attribute name="summarysource">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>


	

</xsl:stylesheet>