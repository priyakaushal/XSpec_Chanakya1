<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.engrossedtext">
  <title>leg:engrossedtext <lnpid>id-UK06-28045</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:engrossedtext</sourcexml> becomes <targetxml>primlaw:changedtext</targetxml> comes with following attributes:
      <ul>
        <li><sourcexml>@action</sourcexml> becomes <targetxml>@action</targetxml></li>
        <li><sourcexml>@leg:status</sourcexml> becomes <targetxml>@status</targetxml></li>
        <li><sourcexml>@leg:amendmentid</sourcexml> becomes <targetxml>@amendmentid</targetxml></li>
        <li>Conversion needs to create <targetxml>@issubstitution</targetxml>, and the value set to "true" if <sourcexml>@searchtype</sourcexml> is "substitution" otherwise "false".</li>
      </ul>
        <note>The <sourcexml>@searchtype</sourcexml> attribute will be suppressed from NL conversion.</note>
        And populated as below:
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-04-19 <ph id="change_20160419_AB">Instruction and example updated for <targetxml>leg:engrossedtext/@issubstitution</targetxml>.</ph></p>
      <p>2016-04-16 <ph id="change_20160416_AB">Created, element <sourcexml>leg:engrossedtext</sourcexml> encountered in new content source delivery. Created instruction and examples for handling <sourcexml>leg:engrossedtext</sourcexml> (RFA #2692).</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.engrossedtext.dita  -->
	
	<!-- Sudhanshu Srivastava 
	     Edited :- 19 June 2017.
	     Comments :- This is content specific module handling leg:engrossedtext. 
	-->
	<xsl:template match="leg:engrossedtext">
		<!--  Original Target XPath:  primlaw:changedtext   -->
		<primlaw:changedtext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:changedtext>
	</xsl:template>

	<xsl:template match="leg:engrossedtext/@action">
		<!--  Original Target XPath:  @action   -->
		<xsl:attribute name="action" select="."/>
	</xsl:template>

	<xsl:template match="leg:engrossedtext/@leg:status">
		<!--  Original Target XPath:  @status   -->
		<xsl:attribute name="status" select="."/>
	</xsl:template>

	<xsl:template match="leg:engrossedtext/@leg:amendmentid">
		<!--  Original Target XPath:  @amendmentid   -->
		<xsl:attribute name="amendmentid" select="."/>
	</xsl:template>

	<xsl:template match="leg:engrossedtext/@searchtype">
		<!--  CSN - 2017/10/01 - removed bug here by adding .=   -->
		<xsl:attribute name="issubstitution" select="if(.='substitution') then 'true' else 'false'"/>
	</xsl:template>

</xsl:stylesheet>