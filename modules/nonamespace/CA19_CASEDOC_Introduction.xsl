<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet	version="2.0"
						xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
						xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
						xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"

						xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
						xmlns:courtfiling="http://www.lexisnexis.com/xmlschemas/content/legal/courtfiling/1/"
						xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
						xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
						xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
						xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
						xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
						xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
						xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
						xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"
						xmlns:xs="http://www.w3.org/2001/XMLSchema"

						xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
						xmlns:glp="http://www.lexis-nexis.com/glp"
						xmlns:case="http://www.lexis-nexis.com/glp/case"

						exclude-result-prefixes="dita">

	<!--  @SBy:  for convenience, allow schemaloc to be passed in as a parameter but default to ROCKET output  -->
    <xsl:output indent="no" method="xml"/>
	<xsl:param name="outputSchemaLoc" select=" 'http://www.lexisnexis.com/xmlschemas/content/legal/courtfiling/1/ sch_courtfiling.xsd' "/>

	<!--SP TODO: search common modules for streamID='CA01' and check with LBU as typically CA19 should mimic CA01 for common modules.
		 For example Rosetta_l_virtual-nesting-LxAdv-list: <xsl:template match="l[@virtual-nesting='1'][$streamID='CA01' or ...-->

	<xsl:template match="CASEDOC">
		<courtfiling:courtfiling>
			<xsl:variable name="bpf_from_case_filenum">
				<xsl:variable name="chars1011" select="substring(case:body/case:headnote/case:info/case:reportercite,10,2)"/>
				<xsl:choose>
					<xsl:when test="$chars1011='FA'">brief</xsl:when>
					<xsl:when test="$chars1011='PL'">pleading</xsl:when>
					<xsl:when test="$chars1011='MO'">motion</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="'other'"/>
						<xsl:call-template name="outputErrorMessage">
							<xsl:with-param name="messageText" as="xs:string" 
								select=" 'could not determine brief/pleading/motion from case:body/case:headnote/case:info/case:reportercite characters 10 and 11. ' "/>
							<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
							<xsl:with-param name="errorCode" as="xs:string*" select=" '503' "/>
							<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/></xsl:with-param>
						</xsl:call-template>                   
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>

			<xsl:attribute name="filingtype" select="$bpf_from_case_filenum"/>

			<!--  @SBy:  output the LA namespace nodes onto the root element, and also schemaloc  
			<xsl:for-each select="$lexisAdvNamespaces/*">
				<xsl:sort/>
				<xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
			</xsl:for-each>-->
			<xsl:call-template name="generateNSGlobalBindings"/>

			<!-- can reliably create xml:lang as doc-lang and doc-country are required in dtd -->
			<!--  @SBy:  change to call template defined in another module  -->
			<xsl:call-template name="xml_lang"/>
			<xsl:apply-templates select="@*"/>
			<xsl:attribute name="xsi:schemaLocation" select=" $outputSchemaLoc "/>

			<courtfiling:head>
				<courtfiling:caseinfo>
					<xsl:apply-templates select="case:body/case:headnote/case:info/case:casename"/>
					<xsl:choose>
						<xsl:when test="case:body/case:headnote/case:info/case:courtinfo/case:filenum">
							<xsl:apply-templates select="case:body/case:headnote/case:info/case:courtinfo/case:filenum"/>
						</xsl:when>
						<xsl:otherwise>
							<caseinfo:nodocketnum/>
							<xsl:call-template name="outputErrorMessage">
								<xsl:with-param name="messageText" as="xs:string" 
									select=" 'could not determine caseinfo:docketnum from case:info/case:courtinfo/case:filenum. ' "/>
								<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
								<xsl:with-param name="errorCode" as="xs:string*" select=" '503' "/>
								<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/></xsl:with-param>
							</xsl:call-template>                   
						</xsl:otherwise>
					</xsl:choose>
					<xsl:choose>
						<xsl:when test="case:body/case:headnote/case:info/case:courtinfo[case:juris|case:courtname]">
							<xsl:apply-templates select="case:body/case:headnote/case:info/case:courtinfo[case:juris|case:courtname]"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:call-template name="outputErrorMessage">
								<xsl:with-param name="messageText" as="xs:string" 
									select=" 'could not find case:info/case:courtinfo[case:juris|case:courtname]. ' "/>
								<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
								<xsl:with-param name="errorCode" as="xs:string*" select=" '503' "/>
								<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/></xsl:with-param>
							</xsl:call-template>                   
						</xsl:otherwise>
					</xsl:choose>
				</courtfiling:caseinfo>
				<courtfiling:filinginfo>
					<ref:citations>
						<ref:cite4thisresource citetype="reporter">
							<lnci:cite>
								<lnci:content>
									<!-- Reporter cite -->
									<xsl:choose>
										<xsl:when test="case:body/case:headnote/case:info/case:reportercite">
											<xsl:apply-templates select="case:body/case:headnote/case:info/case:reportercite"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:call-template name="outputErrorMessage">
												<xsl:with-param name="messageText" as="xs:string" 
													select=" 'could not find case:body/case:headnote/case:info/case:reportercite. ' "/>
												<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
												<xsl:with-param name="errorCode" as="xs:string*" select=" '503' "/>
												<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/></xsl:with-param>
											</xsl:call-template>                   
										</xsl:otherwise>
									</xsl:choose>
								</lnci:content>
							</lnci:cite>
						</ref:cite4thisresource>
						<xsl:choose>
							<xsl:when test="case:body/case:headnote/case:info/case:parallelcite">
								<ref:parallelcite>
									<!-- Official Court Docket Num -->
									<xsl:apply-templates select="case:body/case:headnote/case:info/case:parallelcite"/>
								</ref:parallelcite>
							</xsl:when>
							<!--<xsl:otherwise>
								<xsl:call-template name="outputErrorMessage">
									<xsl:with-param name="messageText" as="xs:string" 
										select=" 'could not find case:body/case:headnote/case:info/case:parallelcite. ' "/>
									<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
									<xsl:with-param name="errorCode" as="xs:string*" select=" '503' "/>
									<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/></xsl:with-param>
								</xsl:call-template>                   
							</xsl:otherwise>-->
						</xsl:choose>
					</ref:citations>
					<!--SP TODO: please see "RE: CAN Briefs, Pleadings, and Facta" email from Jason H., 4/24/17:
					[JH2] At this point we will not need to recognize revision and released dates. Please convert the hearing/decision date to filing date.
					SP: so for now, grab the mm/dd/yy attrs from case:decisiondate and the date text from case:hearingdates.
					this may need another look as the LBU changes how they are converting dates.
					Drawing the attrs and text from 2 different locations is not ideal; rest on the assumption LBU input data consistently parsed.-->
					<courtfiling:dates>
						<courtfiling:fileddate>
							<xsl:attribute name="year" select="case:body/case:headnote/case:info/case:courtinfo/case:dates/case:*/date/@year"/>
							<xsl:attribute name="month" select="case:body/case:headnote/case:info/case:courtinfo/case:dates/case:*/date/@month"/>
							<xsl:attribute name="day" select="case:body/case:headnote/case:info/case:courtinfo/case:dates/case:*/date/@day"/>
							<date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
								<xsl:choose>
									<xsl:when test="case:body/case:headnote/case:info/case:courtinfo/case:dates/case:fileddate">
										<xsl:apply-templates select="case:body/case:headnote/case:info/case:courtinfo/case:dates/case:fileddate"/>
									</xsl:when>
									<xsl:when test="case:body/case:headnote/case:info/case:courtinfo/case:dates/case:hearingdates">
										<xsl:apply-templates select="case:body/case:headnote/case:info/case:courtinfo/case:dates/case:hearingdates"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:call-template name="outputErrorMessage">
											<xsl:with-param name="messageText" as="xs:string" 
												select=" 'date-text template was expecting case:courtinfo/case:dates/case:hearingdates or case:fileddate but not found. ' "/>
											<xsl:with-param name="errorType" as="xs:string" select=" 'ICCE' "/>
											<xsl:with-param name="errorCode" as="xs:string*" select=" '503' "/>
											<xsl:with-param name="context" as="xs:string"><xsl:value-of select="base-uri()"/></xsl:with-param>
										</xsl:call-template>                   
									</xsl:otherwise>
								</xsl:choose>
							</date-text>
						</courtfiling:fileddate>
					</courtfiling:dates>
					<xsl:apply-templates select="case:body/case:headnote/case:info/case:constituents"/>
					<!--be sure to cover the judges in the case where case:constituents doesn't exist-->
					<xsl:if test="not(case:body/case:headnote/case:info/case:constituents)">
						<xsl:apply-templates select="case:body/case:headnote/case:info/case:courtinfo/case:judges"/>
					</xsl:if>
				</courtfiling:filinginfo>
			</courtfiling:head>

			<xsl:apply-templates select="case:body">
				<xsl:with-param name="bpf_from_case_filenum" select="$bpf_from_case_filenum" tunnel="yes"/>
			</xsl:apply-templates>

			<doc:metadata>
				<xsl:apply-templates select="docinfo"/>
			</doc:metadata>

		</courtfiling:courtfiling>

	</xsl:template>

	<!-- suppressed.  separate rule for xmllang on root  -->
	<xsl:template match="CASEDOC/@xml:lang"/>


	<!-- Does Case Rollup apply to PMF? From LBU: No, we can disregard this attr for now.  -->
	<xsl:template match="CASEDOC/@type"/>


    <!-- suppress Rosetta-dtd specific atts -->
    <xsl:template match="CASEDOC/@version"/>
    <xsl:template match="CASEDOC/@versionminor"/>
    

	<!-- suppressed "except citation" -->
	<xsl:template match="@searchtype"/>

	<xsl:template match="case:casename">

		<caseinfo:casename>
			<caseinfo:fullcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:fullcasename>
			<!--caseinfo:shortcasename comes from abbrvname in the input, similar to CA01.
				 Note: all input documents to date have abbrvname appearing as a sibling before case:casename. -->
			<xsl:apply-templates select="preceding-sibling::abbrvname[@searchtype='SHORT-CASE-NAME']"/>
		</caseinfo:casename>

	</xsl:template>

	<xsl:template match="case:courtname">
		<jurisinfo:courtname>
			<xsl:attribute name="normscheme" select="'calongabbr'"/>
			<xsl:attribute name="normshortname" select="../abbrvname"/>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtname>
	</xsl:template>

	<!--SP: most input files have multiple case:courtinfo, not ideal, but we handle by pulling out necessary info, and applying templates where possible. 
		 Recent bundle had one instance file, CA00000007815108_00000912.xml, where structure was nonstandard, so eliminate these 3 paths to remove 401 errors.-->
	<xsl:template match="case:courtcode[preceding-sibling::case:filenum]"/>
	<xsl:template match="abbrvname[preceding-sibling::case:filenum]"/>
	<xsl:template match="case:dates[preceding-sibling::case:filenum]"/>

	<xsl:template match="case:courtinfo">
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="case:courtname"/>
			<xsl:apply-templates select="case:juris"/>
		</jurisinfo:courtinfo>
	</xsl:template>

	<xsl:template match="@constituenttype"/>

	<xsl:template match="company">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="case:constituent[@constituenttype='lawfirm'][company]">
		<!--<pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</text>
			</p>
		</pgrp>-->
	</xsl:template>

	<xsl:template match="case:constituent[@constituenttype='lawyers']">
			<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</text>
			</p>
	</xsl:template>

	<!--Note: this template should only be hit when judges exists but case:constituents does not.-->
	<xsl:template match="case:judges">
		<courtfiling:appearances>
			<courtcase:panel>
				<courtcase:judges>
					<xsl:apply-templates select="@* | node()"/>
				</courtcase:judges>
			</courtcase:panel>
		</courtfiling:appearances>
	</xsl:template>

	<!--remove the trailing colon for "List of Authorities:", etc being output target under courtfiling:citedauthorities -->
	<xsl:template match="emph[parent::title[parent::heading[parent::case:references]]]" priority="1">
		<xsl:value-of select="replace(.,':','')"/>
	</xsl:template>

	<xsl:template match="title[parent::heading[parent::case:constituents]]" priority="1">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="heading[parent::case:constituents]">
			<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</text>
			</p>
	</xsl:template>

	<xsl:template match="case:constituents">
				<courtfiling:appearances>
					<courtcase:representation>
						<courtcase:counsel>
							<!--output whatever is before the colon, similar to CA01 CI.-->
							<xsl:if test="contains(pgrp/heading/title,':')">
								<pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
									<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
										<title xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
											<xsl:value-of select="substring-before(pgrp/heading/title,':')"/>
										</title>
									</heading>
								</pgrp>
							</xsl:if>
							<xsl:if test="contains(heading/title,':')">
								<pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
									<heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
										<title xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
											<xsl:value-of select="substring-before(heading/title,':')"/>
										</title>
									</heading>
								</pgrp>
							</xsl:if>
							<!-- if the pgrp is not already in the source then add it here, to support valid output in both scenarios.-->
							<xsl:choose>
								<xsl:when test="pgrp">
									<xsl:apply-templates select="@* | node() except heading"/>
								</xsl:when>
								<xsl:otherwise>
									<pgrp xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
										<xsl:apply-templates select="@* | node() except heading"/>
									</pgrp>
								</xsl:otherwise>
							</xsl:choose>
						</courtcase:counsel>
					</courtcase:representation>
					<xsl:if test="../case:courtinfo/case:judges/node()">
						<courtcase:panel>
							<courtcase:judges>
								<xsl:apply-templates select="../case:courtinfo/case:judges/node()"/>
							</courtcase:judges>
						</courtcase:panel>
					</xsl:if>
				</courtfiling:appearances>
	</xsl:template>

	<!--SP TODO: glp:note modules not yet done, so handle here. Check again for common module. -->
	<xsl:template match="glp:note[parent::case:casename]">
		<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:attribute name="notetype" select="'other'"/>
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:apply-templates select="@* | node()"/>
					</text>
				</p>
			</bodytext>
		</note>
	</xsl:template>
	<xsl:template match="glp:note[not(parent::case:casename)]">
		<inlinenote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:attribute name="notetype" select="'editor-note'"/>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>
	</xsl:template>
	<xsl:template match="p[parent::glp:note]">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>
	<xsl:template match="text[ancestor::glp:note]">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<!--SP TODO  suppress nl (convert to space) only in case:casename. Otherwise proc:nl. Check for existing CA01 module.-->
	<xsl:template match="nl">
		<xsl:choose>
			<xsl:when test="parent::case:casename">
				<xsl:value-of select="' '"/>
			</xsl:when>
			<xsl:when test="parent::case:casename">
				<xsl:value-of select="' '"/>
			</xsl:when>
			<xsl:otherwise>
				<proc:nl/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="heading[parent::pgrp[parent::case:constituents]]"/>

	<xsl:template match="case:filenum">
		<caseinfo:docketnum>
			<xsl:apply-templates select="@* | node()"/>
		</caseinfo:docketnum>
	</xsl:template>

	<xsl:template match="case:parallelcite">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="case:reportercite">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="date">
		<xsl:apply-templates select=" node() "/>
	</xsl:template>

	<xsl:template match="case:hearingdates">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="case:fileddate">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="case:body">
		<xsl:apply-templates select="@*"/>
		<xsl:apply-templates select="* except (case:headnote)"/>
	</xsl:template>

	<xsl:template match="case:headnote">
		<xsl:apply-templates select="@*"/>
		<xsl:apply-templates select="* except (case:info, case:references)"/>
	</xsl:template>

</xsl:stylesheet>
