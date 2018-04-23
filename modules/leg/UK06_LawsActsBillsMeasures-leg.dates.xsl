<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-leg.dates">
		<title>leg:dates <lnpid>id-UK06-28018</lnpid></title>
		<body>
			<section>
				<p><sourcexml>leg:dates</sourcexml> becomes <targetxml>primlawinfo:dates</targetxml> and children are described as below:</p>
			</section>
			<note>If <sourcexml>leg:dates</sourcexml> occurs <b>after</b>
				<sourcexml>leg:longtitle</sourcexml> (that becomes <targetxml>legis:body/primlaw:prelim/primlaw:synopsis</targetxml>) or <sourcexml>leg:status</sourcexml> (that becomes
					<targetxml>legis:body/primlaw:prelim/p</targetxml>) then the dates must be placed in <targetxml>legis:body/primlaw:prelim</targetxml> after the <targetxml>primlaw:synopsis</targetxml> or
					<targetxml>p</targetxml> to maintain source content order of these dates. Therefore, <targetxml>primlawinfo:dates</targetxml> must be created within a parent
					<targetxml>primlawinfo:primlawinfo</targetxml> that is within the same <targetxml>legis:body/primlaw:prelim</targetxml> element as was created to contain the <sourcexml>leg:longtitle</sourcexml> or
					<sourcexml>leg:status</sourcexml> and not in <targetxml>legis:head/primlawinfo:primlawinfo</targetxml>. Therefore <sourcexml>leg:dates</sourcexml> occurs <b>after</b>
				<sourcexml>leg:longtitle</sourcexml> or <sourcexml>leg:status</sourcexml> becomes <targetxml>legis:body/primlaw:prelim/primlawinfo:primlawinfo/primlawinfo:dates</targetxml>. To more clarify please refer
				source and target example in <sourcexml>leg:enactdate</sourcexml> and <sourcexml>leg:effdate</sourcexml> section.</note>


			<note>If <sourcexml>leg:levelinfo/leg:dates</sourcexml> becomes <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/primlawinfo:dates</targetxml></note>
			<section>
				<title>Changes</title>
				<p>2017-03-15 <ph id="change_20170315_RS">Added a note with instructions for handling the scenario <sourcexml>leg:levelinfo/leg:dates</sourcexml>. Webstar #6822779</ph></p>
				<p>2013-09-09 <ph id="change_20130909_AB">Added a note with instructions for the scenario where <sourcexml>leg:dates</sourcexml> occurs <b>after</b>
						<sourcexml>leg:longtitle</sourcexml> or <sourcexml>leg:status</sourcexml>.</ph></p>
				<p>2013-08-20 <ph id="change_20130820_JCG">Added a note with instructions for the scenario where <sourcexml>leg:dates</sourcexml> occurs <b>after</b>
						<sourcexml>leg:longtitle</sourcexml> (WebTeam #231496).</ph>
				</p>
			</section>
		</body>

	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-leg.dates.dita  -->

	<!--  Sudhanshu Srivastava :-
		  Edited :- 15 June 2017.
		  Comments :- This is content specific module handling leg:dates.
	-->

	<xsl:template match="leg:dates">
		<xsl:if test="not(leg:assentdate/date/@year = '9999' and count(*) = 1)">
			<primlawinfo:dates>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:dates>
		</xsl:if>
	</xsl:template>

	<xsl:template match="leg:effdate">
		<primlawinfo:effdate>
			<xsl:call-template name="leg:dates-attributes"/>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:effdate>
	</xsl:template>

	<xsl:template match="leg:enactdate">
		<primlawinfo:enactdate>
			<xsl:call-template name="leg:dates-attributes"/>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:enactdate>
	</xsl:template>

	<xsl:template match="leg:repealdate">
		<primlawinfo:repealdate>
			<xsl:call-template name="leg:dates-attributes"/>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:repealdate>
	</xsl:template>

	<xsl:template match="leg:laidline">
		<primlawinfo:presenteddate>
			<xsl:call-template name="leg:dates-attributes"/>
			<xsl:apply-templates select="@* | node()"/>
		</primlawinfo:presenteddate>
	</xsl:template>

	<xsl:template match="leg:assentdate">
		<xsl:if test="not(date[1]/@year = '9999')">
			<primlawinfo:assentdate>
				<xsl:call-template name="leg:dates-attributes"/>
				<xsl:apply-templates select="@* | node()"/>
			</primlawinfo:assentdate>
		</xsl:if>
	</xsl:template>

	<xsl:template name="leg:dates-attributes">
		<xsl:if test="date/@year">
			<xsl:attribute name="year" select="date[1]/@year"/>
		</xsl:if>
		<xsl:if test="date/@month">
			<xsl:attribute name="month" select="date[1]/@month"/>
		</xsl:if>
		<xsl:if test="date/@day">
			<xsl:attribute name="day" select="number(date[1]/@day)"/>
		</xsl:if>
		<xsl:if test="date/@year and date/@month and date/@day">
			<xsl:attribute name="normdate" select="concat(date[1]/@year, '-', date[1]/@month, '-', date[1]/@day)"/>
		</xsl:if>
	</xsl:template>

	<xsl:template match="leg:effdate/date | leg:enactdate/date | leg:laidline/date | leg:assentdate/date | leg:repealdate/date">
		<xsl:choose>
			<xsl:when test="@year and @month and @day">
				<xsl:variable name="month-sequence" select="number(@month)"/>
				<date-text>
					<xsl:choose>
						<xsl:when test="@day = ('01', '21', '31', '1')">
							<xsl:value-of select="number(@day)"/>
							<xsl:text>st </xsl:text>
							<xsl:value-of select="$months[$month-sequence]"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="@year"/>
						</xsl:when>
						<xsl:when test="@day = ('02', '22', '2')">
							<xsl:value-of select="number(@day)"/>
							<xsl:text>nd </xsl:text>
							<xsl:value-of select="$months[$month-sequence]"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="@year"/>
						</xsl:when>
						<xsl:when test="@day = ('03', '23', '3')">
							<xsl:value-of select="number(@day)"/>
							<xsl:text>rd </xsl:text>
							<xsl:value-of select="$months[$month-sequence]"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="@year"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="number(@day)"/>
							<xsl:text>th </xsl:text>
							<xsl:value-of select="$months[$month-sequence]"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="@year"/>
						</xsl:otherwise>
					</xsl:choose>
				</date-text>
			</xsl:when>
			<xsl:otherwise>
				<date-text>
					<xsl:value-of select="."/>
				</date-text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="docinfo:custom-metafields/docinfo:custom-metafield[@searchtype = 'LEG-ENACT-DATE']">
		<xsl:variable name="datevalue" select="."/>
		<primlawinfo:dates>
			<primlawinfo:enactdate>
				<xsl:variable name="day" select="substring-after(substring-after($datevalue, '-'), '-')"/>
				<xsl:variable name="month-sequence" select="number(substring-before(substring-after($datevalue, '-'), '-'))"/>
				<xsl:variable name="year" select="substring-before($datevalue, '-')"/>
				<xsl:choose>
					<xsl:when test="$day = ('01', '21', '31', '1')">
						<xsl:value-of select="number($day)"/>
						<xsl:text>st </xsl:text>
						<xsl:value-of select="$months[$month-sequence]"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="@year"/>
					</xsl:when>
					<xsl:when test="$day = ('02', '22', '2')">
						<xsl:value-of select="number($day)"/>
						<xsl:text>nd </xsl:text>
						<xsl:value-of select="$months[$month-sequence]"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="@year"/>
					</xsl:when>
					<xsl:when test="$day = ('03', '23', '3')">
						<xsl:value-of select="number($day)"/>
						<xsl:text>rd </xsl:text>
						<xsl:value-of select="$months[$month-sequence]"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="@year"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="number($day)"/>
						<xsl:text>th </xsl:text>
						<xsl:value-of select="$months[$month-sequence]"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="@year"/>
					</xsl:otherwise>
				</xsl:choose>
			</primlawinfo:enactdate>
		</primlawinfo:dates>
	</xsl:template>

</xsl:stylesheet>
