<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="NZ-Regs-Services-leg_heading">
		<title>leg:heading <lnpid>id-NZ10-24411</lnpid></title>
		<body>
			<section>
				<ul>
					<li><sourcexml>leg:heading</sourcexml>
						<b>Becomes</b>
						<targetxml>heading</targetxml> with attributes
							<sourcexml>@inline</sourcexml>
						<b>becomes</b>
						<targetxml>@inline</targetxml> which has tokenized values and populated as: <ul>
							<li><targetxml>heading[@inline="true"]</targetxml></li>
							<li><targetxml>heading[@inline="false"]</targetxml></li>
						</ul>
						<pre>              
              <b><i>Example: Source XML 1</i></b>


&lt;leg:level id="1987R200.BODY"&gt;
	&lt;leg:level-vrnt leveltype="regulation" searchtype="LEGISLATION REGULATION"&gt;
		&lt;leg:heading&gt;
			&lt;title&gt;&lt;refpt id="1987R200" type="ext"/&gt;COSTS IN CRIMINAL CASES REGULATIONS 1987&lt;/title&gt;
		&lt;/leg:heading&gt;
		....
	&lt;/leg:level-vrnt &gt;
&lt;/leg:level&gt;

        
</pre>
						<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level xml:id="1987R200.BODY" leveltype="regulation"&gt;
		&lt;ref:anchor id="1987R200" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;title&gt;COSTS IN CRIMINAL CASES REGULATIONS 1987&lt;/title&gt;
		&lt;/heading&gt;
		....
&lt;/primlaw:level&gt;


            </pre>
						<pre>
              <b><i>Example: Source XML 2 - Handling of 'leg:heading' with '@inline' attribute</i></b>

&lt;leg:level id="1987R200S1"&gt;
	&lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION REG" subdoc="true" toc-caption="reg 1 Title and commencement"&gt;
		&lt;leg:heading inline="true"&gt;
			&lt;title searchtype="REG-TITLE"&gt;&lt;refpt id="1987R200S1" type="ext"/&gt;Title and commencement&lt;/title&gt;
			&lt;desig searchtype="REG-NUM"&gt;
				&lt;designum&gt;1&lt;/designum&gt;
			&lt;/desig&gt;
		&lt;/leg:heading&gt;
		...
&lt;/leg:level&gt;



</pre>
						<pre>

              <b><i>Example: Target XML 2</i></b>


&lt;primlaw:level leveltype="schedule" includeintoc="true" alternatetoccaption="reg 1 Title and commencement"&gt;
	&lt;ref:anchor id="1987R200S1" anchortype="global"/&gt;
	&lt;heading inline="true"&gt;
		&lt;desig&gt;(1)&lt;/desig&gt;
		&lt;title&gt;Title and commencement&lt;/title&gt;
	&lt;/heading&gt;
	....
&lt;/primlaw:level&gt;

</pre>
						<note>Duplicate anchors should be suppressed in mapping rosetta to NL and
							note this means exact duplicates. Repeating anchors are ok and should
							not be suppressed. (non duplicate multiple anchors). Refer common <xref
								href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita"
								>common_rosetta_refpt.dita</xref> file for handling of
								"<sourcexml>refpt</sourcexml>" element.</note>
					</li>

					<li>If the input document has scenarios
							<sourcexml>leg:heading/leg:histnote</sourcexml> then move the
							<targetxml>note</targetxml> after <targetxml>heading</targetxml> within
							<targetxml>primlaw:level</targetxml>. <pre>
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="2001R379-SCHD1"&gt;
	&lt;leg:level-vrnt leveltype="schedule"&gt;
		&lt;leg:heading&gt;
			&lt;desig searchtype="SCH-NUM"&gt;
				&lt;designum&gt;&lt;refpt id="2001R379-SCHD1" type="ext"/&gt;SCHEDULE 1&lt;/designum&gt;
			&lt;/desig&gt;
			&lt;title searchtype="SCH-TITLE"&gt;Notice of claim to interest, under Act, in certain land&lt;/title&gt;
			&lt;leg:empleg&gt;R4&lt;/leg:empleg&gt;
			&lt;leg:histnote&gt;
				&lt;p&gt;&lt;text&gt;[Section 42(2), Property (Relationships) Act 1976]&lt;/text&gt;&lt;/p&gt;
			&lt;/leg:histnote&gt;
		&lt;/leg:heading&gt;
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;


</pre>
						<pre>

              <b><i>Example: Target XML 1</i></b>


&lt;primlaw:level leveltype="schedule"&gt;
	&lt;ref:anchor id="2001R379-SCHD1" anchortype="global"/&gt;
	&lt;heading&gt;
		&lt;desig&gt;SCHEDULE 1&lt;/desig&gt;
		&lt;title&gt;Notice of claim to interest, under Act, in certain land&lt;/title&gt;
	&lt;/heading&gt;
	&lt;primlaw:authority&gt;
		&lt;primlaw:authority-item&gt;
			&lt;textitem&gt;R4&lt;/textitem&gt;
		&lt;/primlaw:authority-item&gt;
	&lt;/primlaw:authority&gt;
	&lt;note notetype="historical"&gt;
		&lt;bodytext&gt;
			&lt;p&gt;&lt;text&gt;[Section 42(2), Property (Relationships) Act 1976]&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
	&lt;/note&gt;
&lt;/primlaw:level&gt;


            </pre>
					</li>
				</ul>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ10_Regulation_From_Services\NZ-Regs-Services-leg_heading.dita  -->
	<!--<xsl:message>NZ-Regs-Services-leg_heading.xsl requires manual development!</xsl:message>-->

	<xsl:template match="leg:heading">
		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="desig | title | subtitle"/>
			
		
		</heading>
				
	</xsl:template>

	<xsl:template match="leg:heading/@inline">
		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>



	<xsl:template match="leg:heading/leg:histnote">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

</xsl:stylesheet>