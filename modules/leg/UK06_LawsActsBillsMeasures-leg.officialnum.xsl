<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" version="2.0" exclude-result-prefixes="dita ci leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.officialnum">
  <title>leg:officialnum <lnpid>id-UK06-28031</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:officialnum</sourcexml> becomes <targetxml>primlawinfo:identifier</targetxml> with required attribute <targetxml>@idtype</targetxml> and children are described as below:
      <ul>
        <li><sourcexml>leg:year</sourcexml> becomes <targetxml>primlawinfo:identifier-component/@type="year"</targetxml>.</li>
        <li><sourcexml>leg:seriesnum</sourcexml> becomes <targetxml>primlawinfo:identifier-component/@type="seriesnum"</targetxml>.</li>
      </ul>
        <note>As per conteen requirement: if <b>"CHAPTER"</b> does not exist between <sourcexml>leg:year</sourcexml> and <sourcexml>leg:seriesnum</sourcexml> then conversion need to add <b>"CHAPTER"</b> (with single space before and after) before the target <targetxml>primlawinfo:identifier-component/@type="seriesnum"</targetxml>. To more clarify please refer below source and target example.</note>
        <note>If <sourcexml>leg:officialnum</sourcexml> does not contain <sourcexml>leg:year</sourcexml> and <sourcexml>ci:cite</sourcexml> occurred as a child of <sourcexml>leg:officialnum</sourcexml> then this is considered a data error.</note>
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-09-19 <ph id="change_20131909_AB">Added a note with instructions to add <b>"CHAPTER"</b> does not exist between <sourcexml>leg:year</sourcexml> and <sourcexml>leg:seriesnum</sourcexml> then conversion need to add <b>"CHAPTER"</b> (with single space before and after) before the target <targetxml>primlawinfo:identifier-component/@type="seriesnum"</targetxml> (WebTeam #236022).</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.officialnum.dita  -->
	
	<!-- Sudhanshu Srivastava :
		Edited - 14 June 2017.
		Comments :- This is content specific module handling leg:officialnum.
	-->

	<xsl:template match="leg:officialnum">
		<!--  Original Target XPath:  primlawinfo:identifier   -->
		<primlawinfo:identifier idtype="officialnum">
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:identifier>
	</xsl:template>

	<xsl:template match="leg:year[parent::leg:officialnum]">
		<!--  Original Target XPath:  primlawinfo:identifier-component/@type="year"   -->
		<primlawinfo:identifier-component type="year">
         	<xsl:apply-templates select="node()"/>		
		</primlawinfo:identifier-component>
		<xsl:if test="not(upper-case(normalize-space(following-sibling::text()[1]))='CHAPTER')">
			<xsl:text> CHAPTER </xsl:text>
		</xsl:if>
	</xsl:template>

	<xsl:template match="leg:seriesnum[parent::leg:officialnum]">
		<!--  Original Target XPath:  primlawinfo:identifier-component/@type="seriesnum"   -->
		<primlawinfo:identifier-component type="seriesnum">
			<xsl:apply-templates select="node()"/>
		</primlawinfo:identifier-component>
	</xsl:template>
</xsl:stylesheet>