<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:lntbl="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-table-extensions/1/"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	exclude-result-prefixes="#all">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_table_to-LexisAdvance_table">
		<title><sourcexml>table</sourcexml> to <targetxml>table</targetxml>
			<lnpid>id-CCCC-10475</lnpid></title>
						xmlns:primlawhist="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-history/1/"
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p>Contains the titling content for a table, and titled groups that contain rows of
					cells ("entries"). Table now allows an optional heading element, which contains
					the titling content as well. The titling elements directly within table - title
					and subtitle - are deprecated in favor of using these elements inside the
					heading. </p>
				<ul>
					<li><sourcexml>table</sourcexml> becomes <targetxml>table</targetxml> comes with
							<sourcexml>@frame</sourcexml> becomes <targetxml>@frame</targetxml> and
						<sourcexml>@tablealign </sourcexml> becomes <targetxml>@lntbl:table-align</targetxml>
						which has tokenized values as (top | bottom | topbot | all | sides | none)
						and required child element is described below: <ul>
							<li>
								<sourcexml>tgroup</sourcexml> becomes <targetxml>tgroup</targetxml>
								with attributes <sourcexml>@cols</sourcexml> becomes
									<targetxml>@cols</targetxml> is the required attribute.
									<sourcexml>@colsep</sourcexml> becomes
									<targetxml>@colsep</targetxml>
								<sourcexml>@rowsep</sourcexml> becomes
									<targetxml>@rowsep</targetxml> and child element includes: <ul>
									<li><sourcexml>colspec</sourcexml> becomes
											<targetxml>colspec</targetxml> and attributes are
										converted as follows: <ul>
											<li><sourcexml>@align</sourcexml> becomes
												<targetxml>@align</targetxml></li>
											<li><sourcexml>@char</sourcexml> becomes
												<targetxml>@char</targetxml></li>
											<li><sourcexml>@charoff</sourcexml> becomes
												<targetxml>@charoff</targetxml></li>
											<li><sourcexml>@colname</sourcexml> becomes
												<targetxml>@colname</targetxml></li>
											<li><sourcexml>@colnum</sourcexml> becomes
												<targetxml>@colnum</targetxml></li>
											<li><sourcexml>@colsep</sourcexml> becomes
												<targetxml>@colsep</targetxml></li>
											<li><sourcexml>@colwidth</sourcexml> becomes
												<targetxml>@colwidth</targetxml></li>
											<li><sourcexml>@id</sourcexml> may be dropped or may
												require special handling. It may become
												<targetxml>@ref:anchor</targetxml> and if so is
												moved to the parent or higher ancestor element. This
												will be specified in the the particular CI as it
												will be done on a stream by stream basis and will
												depend on the particular XPath of the table element.
												In the absence of specific instructions elsewhere in
												the CI, <sourcexml>@id</sourcexml> is dropped.</li>
											<li><sourcexml>@rowsep</sourcexml> becomes
												<targetxml>@rowsep</targetxml></li>
											<li><sourcexml>@searchtype</sourcexml> is dropped</li>
											<li><sourcexml>@xml:lang</sourcexml> becomes
												<targetxml>@xml:lang</targetxml></li>
										</ul>
										<note>
											<p>CALS table markup allows for units to be embedded in
												the column width. Lexis Advance only recognizes an
												integer in pixels and proportional, identified by a
												number ending with "*".</p>
											<p>If a non-Lexis Advance format is discovered a warning
												should be raised.</p>
											<p>If the LBU requires a conversion of CALS units to LA
												accepted units, some of the conversions are detailed
												below.</p>
											<p>If colspec@colwidth ends in “in” (inch) them remove
												“in” and multiply the value by 96 to convert to
												pixel. Only keep the integer portion of the result.
												These are not valid: 0.1, 12.86. These are valid:
												12, 185</p>
											<p>cm; follow the inches example above but use a
												conversion value of 37.7952755904</p>
											<p>mm; follow the inches example above but use a
												conversion value of 3.77952755904</p>
											<p>pt; follow the inches example above but use a
												conversion value of 1.0</p>
										</note></li>
								</ul>
								<p>The following instructions apply to all table markup (table
									element and its decendents) with @morerows, @colsep, and @rowsep
										attributes:<ul id="ul_udb_cce_ml">
										<li>Remove any instances of @morerows=0</li>
										<li>If ALL occurrences of @colsep in one table have a value
											of zero, remove them all from that table. </li>
										<li>If ALL occurrences of @rowsep in one table have a value
											of zero, remove them all from that table. </li>
									</ul>
									<note>Although these instructions apply to all content streams,
										only the UK content streams and AU18 are known to have these
										issues.</note>
								</p>
								<ul>
									<li>
										<sourcexml>thead</sourcexml> becomes
											<targetxml>thead</targetxml> below is the required child
										element: <ul>
											<li>
												<sourcexml>row</sourcexml> becomes
												<targetxml>row</targetxml> below is the required
												child element: <ul>
												<li>
												<sourcexml>entry</sourcexml> becomes
												<targetxml>entry</targetxml> and comes with
												<sourcexml>@nameend</sourcexml> becomes
												<targetxml>@nameend</targetxml>
												<sourcexml>@namest</sourcexml> becomes
												<targetxml>@namest</targetxml>
												<sourcexml>@align</sourcexml> becomes
												<targetxml>@align</targetxml> with tokenized
												values as (left | right | center | justify | char)
												</li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
								<ul>
									<li><sourcexml>tbody</sourcexml> becomes
											<targetxml>tbody</targetxml> and child element includes: <ul>
											<li><sourcexml>row</sourcexml> becomes
												<targetxml>row</targetxml> and child element
												includes: <ul>
												<li><sourcexml>entry</sourcexml> becomes
												<targetxml>entry</targetxml> and comes with
												<sourcexml>@nameend</sourcexml> becomes
												<targetxml>@nameend</targetxml>
												<sourcexml>@namest</sourcexml> becomes
												<targetxml>@namest</targetxml>
												<sourcexml>@char</sourcexml> becomes
												<targetxml>@char</targetxml>
												<sourcexml>@align</sourcexml> becomes
												<targetxml>@align</targetxml> with tokenized
												values as (left | right | center | justify | char)
												</li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
				<note> Multiple <sourcexml>tgroup</sourcexml> are retained for conversion.</note>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;table frame="none"&gt; &lt;tgroup cols="3" colsep="0" rowsep="0"&gt;
					&lt;colspec colname="col1" colnum="1" colwidth="5*"/&gt; &lt;colspec
					colname="col2" colnum="2" colwidth="83*"/&gt; &lt;colspec align="left"
					colname="col3" colnum="3" colwidth="12*"/&gt; &lt;thead&gt; &lt;row&gt;
					&lt;entry align="center" nameend="col3" namest="col1"&gt;&lt;emph
					typestyle="bf"&gt;Table of contents&lt;/emph&gt;&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry/&gt;&lt;entry/&gt; &lt;entry align="right"
					colname="col3"&gt;&lt;emph typestyle="bf"&gt;Para no&lt;/emph&gt;&lt;/entry&gt;
					&lt;/row&gt; &lt;/thead&gt; &lt;tbody&gt; &lt;row&gt; &lt;entry align="left"
					nameend="col2" namest="col1"&gt;Introduction&lt;/entry&gt; &lt;entry
					align="right" colname="col3"&gt;[1]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt;
					&lt;entry align="left" nameend="col2" namest="col1"&gt;Mental health legislation
					concerning informal patients&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[6]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Procedural background&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[15]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;Applicable
					statutory provisions&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[22]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;The English position&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[33]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;Submissions
					of parties&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[39]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Protective provisions&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[43]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;The 1961 Act:
					Crown authority to treat informal patients&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[45]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Leave requirements&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[50]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;The 1969
					Act&lt;/entry&gt; &lt;entry align="right" colname="col3"&gt; &lt;/entry&gt;
					&lt;/row&gt; &lt;row&gt; &lt;entry/&gt; &lt;entry align="left"
					colname="col2"&gt;(a) Crown authority to treat informal patients&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[54]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry/&gt; &lt;entry align="left" colname="col2"&gt;(b)
					Authority of hospital boards to treat informal patients&lt;/entry&gt; &lt;entry
					align="right" colname="col3"&gt;[56]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt;
					&lt;entry align="left" nameend="col2" namest="col1"&gt;Conclusion&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[75]&lt;/entry&gt; &lt;/row&gt;
					&lt;/tbody&gt; &lt;/tgroup&gt; &lt;/table&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;table frame="none"&gt; &lt;tgroup cols="3"&gt; &lt;colspec
					colname="col1" colnum="1" colwidth="5*"/&gt; &lt;colspec colname="col2"
					colnum="2" colwidth="83*"/&gt; &lt;colspec align="left" colname="col3"
					colnum="3" colwidth="12*"/&gt; &lt;thead&gt; &lt;row&gt; &lt;entry
					align="center" nameend="col3" namest="col1"&gt;&lt;emph typestyle="bf"&gt;Table
					of contents&lt;/emph&gt;&lt;/entry&gt; &lt;/row&gt; &lt;row&gt;
					&lt;entry/&gt;&lt;entry/&gt; &lt;entry align="right" colname="col3"&gt;&lt;emph
					typestyle="bf"&gt;Para no&lt;/emph&gt;&lt;/entry&gt; &lt;/row&gt; &lt;/thead&gt;
					&lt;tbody&gt; &lt;row&gt; &lt;entry align="left" nameend="col2"
					namest="col1"&gt;Introduction&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[1]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Mental health legislation
					concerning informal patients&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[6]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Procedural background&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[15]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;Applicable
					statutory provisions&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[22]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;The English position&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[33]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;Submissions
					of parties&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[39]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Protective provisions&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[43]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;The 1961 Act:
					Crown authority to treat informal patients&lt;/entry&gt; &lt;entry align="right"
					colname="col3"&gt;[45]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry
					align="left" nameend="col2" namest="col1"&gt;Leave requirements&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[50]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry align="left" nameend="col2" namest="col1"&gt;The 1969
					Act&lt;/entry&gt; &lt;entry align="right" colname="col3"&gt; &lt;/entry&gt;
					&lt;/row&gt; &lt;row&gt; &lt;entry/&gt; &lt;entry align="left"
					colname="col2"&gt;(a) Crown authority to treat informal patients&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[54]&lt;/entry&gt; &lt;/row&gt;
					&lt;row&gt; &lt;entry/&gt; &lt;entry align="left" colname="col2"&gt;(b)
					Authority of hospital boards to treat informal patients&lt;/entry&gt; &lt;entry
					align="right" colname="col3"&gt;[56]&lt;/entry&gt; &lt;/row&gt; &lt;row&gt;
					&lt;entry align="left" nameend="col2" namest="col1"&gt;Conclusion&lt;/entry&gt;
					&lt;entry align="right" colname="col3"&gt;[75]&lt;/entry&gt; &lt;/row&gt;
					&lt;/tbody&gt; &lt;/tgroup&gt; &lt;/table&gt; </codeblock>
			</example>

			<section>
				<title>Changes</title>
				<p>2014-07-08: <ph id="change_20140708_SS">Updated instruction for added the
						following rarely occurring attributes <sourcexml>@char</sourcexml> inside
						the <sourcexml>entry</sourcexml>.</ph></p>
				<p>2014-06-04: <ph id="change_20140604_JCG">For completeness, added instructions for
						the following rarely occurring attributes of
							<sourcexml>table/tgroup/colspec</sourcexml>:
							<sourcexml>@align</sourcexml>, <sourcexml>@char</sourcexml>,
							<sourcexml>@charoff</sourcexml>, <sourcexml>@colsep</sourcexml>,
							<sourcexml>@id</sourcexml>, <sourcexml>@rowsep</sourcexml>,
							<sourcexml>@searchtype</sourcexml>, and
						<sourcexml>@xml:lang</sourcexml>. This is in response to various minor
						questions on message boards that have been asked and answered over the past
						two years. These instructions should not trigger changes to existing
						conversion programs, as the programs have already been changed in response
						to previous message board answers. These instructions have been added so
						this topic is up-to-date with respect to current conversion program behavior
						for these rarely occuring attributes.</ph></p>
				<p>2013-09-16: <ph id="change_20130916_JCG">Removed an obsolete note regarding
						visual styling of tables.</ph></p>
				<!--SP: 2013-09-16 added ph element so auto change log catches grabs it. Added webteam numbers 235130, 235126.-->
				<p>2013-09-12: <ph id="change_20130912_Rosetta_table_to-LexisAdvance_table_SP"
						>WebTeam #s 235116, 235130, 235126: Added instructions for deleting
						extraneous instances of @morerows, @colsep and @rowsep. These instructions
						apply immediately to all UK streams and also to AU18.</ph></p>
				<p>2012-01-12: Added a note for handling multiple tgroup. </p>
				<p>2011-12-15: Created. </p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_table-LxAdv-table.dita  -->

	<!--  @SBy:  this is from QC XSLT.  Should it appear here?  -->
	<!-- BRT: process table with page elements (break table in row before each row//page, create ref:page, create another table starting from row//page -->
	<xsl:template match="table[descendant::entry/descendant::page]" priority="15">
		<!-- BRT create a separate table before the start of a row that contains entry/descendant::page -->
		<xsl:for-each-group select=".//row" group-starting-with="row[entry/descendant::page]">
			<!-- BRT: If there is a ref:page in the current-group(), create the ref:page first -->
			<xsl:if test="current-group()//page">
				<xsl:element name="ref:page">
					<xsl:attribute name="num">
						<xsl:value-of select="translate(current-group()//page/@count, ',', '')"/>
					</xsl:attribute>
					<xsl:if test="current-group()//page/@reporter">
						<xsl:attribute name="page-scheme">
							<xsl:value-of
								select="translate(current-group()//page/@reporter, ' ', '_')"/>
						</xsl:attribute>
					</xsl:if>
					<xsl:if test="current-group()//page/@subdoc">
						<xsl:attribute name="includeintoc">
							<xsl:value-of select="current-group()//page/@subdoc"/>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="page-scheme-type">
						<xsl:text>reporter-abbreviation</xsl:text>
					</xsl:attribute>
				</xsl:element>
			</xsl:if>
			<!-- BRT create separate table for each group -->
			<xsl:element name="table"
				namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<!-- BRT: Convert table, tgroup, and colspec  -->
				<xsl:copy-of select="ancestor::table/(@* except @id)"/>
				<xsl:if test="ancestor::table/@id">
					<xsl:variable name="count" select="position()"/>
					<xsl:for-each select="ancestor::table/@id">
					<xsl:attribute name="xml:id">
						<xsl:value-of select="concat(ancestor::table/@id, '_', $count)"/>
					</xsl:attribute>
					</xsl:for-each>
				</xsl:if>
				<xsl:element name="tgroup"
					namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:copy-of select="ancestor::table[1]/tgroup/@*"/>
					<xsl:for-each select="ancestor::table[1]//colspec">
						<xsl:element name="colspec"
							namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:copy-of select="@*"/>
							<xsl:apply-templates/>
						</xsl:element>
					</xsl:for-each>
					<xsl:for-each select="ancestor::table[1]//thead">
						<xsl:element name="thead"
							namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<xsl:copy-of select="@*"/>
							<xsl:apply-templates/>
						</xsl:element>
					</xsl:for-each>
					<xsl:element name="tbody"
						namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:copy-of select="ancestor::table[1]//tbody/@*"/>
						<!-- apply all the rows of the current group to the current table -->
						<xsl:apply-templates select="current-group()"/>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:for-each-group>
	</xsl:template>

	<!--  @SBy:  modified from QC XSLT  -->
	<!-- 2017-10-17 - MDS: Added choose statment due to webstar 7025682.   -->
	<!-- 2017-11-16 - CSN: Added UK03|case:dicisionsummary to existing 'when'.  webstar 7050317.   -->
	<xsl:template match="table" name="table">
		<xsl:choose>
			<xsl:when test="parent::entry or ((parent::case:decisionsummary or parent::case:typeofcase) and $streamID='UK03')">
				<p>
					<table xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
						<xsl:copy-of select="@frame | @pgwide"/>
						<!--  @SBy:  only @frame is in DITA  -->
						
						<!--  @SBy:  note @colsep | @rowsep addressed specifically in other template rules below  -->
						<xsl:apply-templates select="@* except (@frame, @pgwide)"/>
						<xsl:apply-templates/>
						
					</table>
				</p>
			</xsl:when>
			<!-- MDS - 2018-02-09 - Added to handle those otherwise empty tables that seem to be in the development data.  STREAM SPECIFIC -->
			<!-- Awantika- 2018-10-04- Added choose for NZ14 to create table inside bodytext/p. W* 7136101 -->
			<xsl:when test="$streamID='AU16' and not(tgroup/tbody/row/entry[2]) and not(tgroup/tbody/row[2]) and tgroup/tbody/row/entry[contains(normalize-space(.), 'Â')]"/>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="parent::p[parent::bodytext/parent::level][$streamID='NZ14']">
						<bodytext>
							<p>
								<table xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
									<!--Ravikant: tablealign attribute handling webstar no 7046647  -->
									<xsl:if test="./@tablealign">
										<xsl:attribute name="lntbl:table-align">
											<xsl:value-of select="./@tablealign"/>   
										</xsl:attribute>  
									</xsl:if>
									<xsl:copy-of select="@frame"/>
									<!-- BRT 11/16/17 added special handling for @pgwide in UK content. If value is '0', output is '0', otherwise, the output is '1' -->
									<xsl:choose>
										<xsl:when test="$streamID = ('UK01', 'UK02', 'UK05', 'UK08CA','UK08OR', 'UK09', 'UK10', 'UK15', 'UK17', 'UK18','UK20','UK22LF')">
											<xsl:if test="@pgwide">
												<xsl:attribute name="pgwide">
													<xsl:choose><xsl:when test="@pgwide='0'"><xsl:value-of select="'0'"/></xsl:when>
														<xsl:otherwise><xsl:value-of select="'1'"/></xsl:otherwise></xsl:choose>
												</xsl:attribute>
											</xsl:if>
										</xsl:when>
										
										<xsl:otherwise><xsl:copy-of select="@pgwide"/></xsl:otherwise>
										
									</xsl:choose>
									<xsl:copy-of select="@frame"/>
									<!--  @SBy:  only @frame is in DITA  -->
									
									<!--  @SBy:  note @colsep | @rowsep addressed specifically in other template rules below  -->
									<xsl:apply-templates select="@* except (@frame, @pgwide, @tablealign)"/>
									<xsl:apply-templates/>
									
								</table>
							</p>
						</bodytext>
					</xsl:when>
					<xsl:otherwise>
						<table xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
							<!--Ravikant: tablealign attribute handling webstar no 7046647  -->
							<xsl:if test="./@tablealign">
								<xsl:attribute name="lntbl:table-align">
									<xsl:value-of select="./@tablealign"/>   
								</xsl:attribute>  
							</xsl:if>
							<xsl:copy-of select="@frame"/>
							<!-- BRT 11/16/17 added special handling for @pgwide in UK content. If value is '0', output is '0', otherwise, the output is '1' -->
							<xsl:choose>
								<xsl:when test="$streamID = ('UK01', 'UK02', 'UK05', 'UK08CA','UK08OR', 'UK09', 'UK10', 'UK15', 'UK17', 'UK18','UK20','UK22LF')">
									<xsl:if test="@pgwide">
										<xsl:attribute name="pgwide">
											<xsl:choose><xsl:when test="@pgwide='0'"><xsl:value-of select="'0'"/></xsl:when>
												<xsl:otherwise><xsl:value-of select="'1'"/></xsl:otherwise></xsl:choose>
										</xsl:attribute>
									</xsl:if>
								</xsl:when>
								
								<xsl:otherwise><xsl:copy-of select="@pgwide"/></xsl:otherwise>
								
							</xsl:choose>
							<xsl:copy-of select="@frame"/>
							<!--  @SBy:  only @frame is in DITA  -->
							
							<!--  @SBy:  note @colsep | @rowsep addressed specifically in other template rules below  -->
							<xsl:apply-templates select="@* except (@frame, @pgwide, @tablealign)"/>
							<xsl:apply-templates/>
							
						</table>
					</xsl:otherwise>
				</xsl:choose>
				
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	

	<xsl:template match="tgroup">

		<tgroup xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:copy-of select="@cols"/>

			<!--  @SBy:  note @colsep | @rowsep addressed specifically in other template rules below  -->
			<xsl:apply-templates select="@* except @cols"/>
			<xsl:apply-templates/>

		</tgroup>

	</xsl:template>

	<xsl:template match="tgroup/@align">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="colspec">
		<colspec xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:copy-of select="@align | @char | @charoff | @colname | @colnum | @xml:lang"/>

			<!--  @SBy:  note @colsep | @rowsep addressed specifically in other template rules below  -->
			<xsl:apply-templates
				select="@* except (@align, @char, @charoff, @colname, @colnum, @xml:lang)"/>
			<xsl:apply-templates/>

			<!--  ***NOTE  -  see DITA regarding conversions of @colwidth values; does the DT code do any of that?  ***  -->

		</colspec>

	</xsl:template>

	<xsl:template match="colspec/@colwidth">
		<xsl:attribute name="colwidth">
			<!--<xsl:value-of select="."/>-->
			<xsl:analyze-string select="." regex="([0-9]+)([*]|[a-z]+)">
				<xsl:matching-substring>
					<xsl:choose>
						<xsl:when test="regex-group(2) = 'in'">
							<xsl:variable name="var1">
								<xsl:value-of select="number(regex-group(1)) * 96"/>
							</xsl:variable>
							<xsl:value-of select="$var1"/>							
							<xsl:value-of select="concat($var1, '*')"/>
						</xsl:when>
						<xsl:when test="regex-group(2) = 'cm'">
							<xsl:variable name="var1">
								<xsl:value-of select="number(regex-group(1)) * 37.7952755904"/>
							</xsl:variable>
							<xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
						</xsl:when>
						<xsl:when test="regex-group(2) = 'mm'">
							<xsl:variable name="var1">
								<xsl:value-of select="number(regex-group(1)) * 3.77952755904"/>
							</xsl:variable>
							<xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
						</xsl:when>
						<xsl:when test="regex-group(2) = 'pt'">
							<xsl:variable name="var1">
								<xsl:value-of select="number(regex-group(1)) * 1"/>
							</xsl:variable>
							<xsl:value-of select="concat($var1, '*')"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="concat(regex-group(1), '*')"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:matching-substring>
			</xsl:analyze-string>
		</xsl:attribute>

	</xsl:template>

	<!-- SNB 2017-10-17 creating a new template that I think probably oght to be the template for all rosetta conversions for colwidth... 
		the above template creates flat out WRONG rarget markup when here's a decimal ( colwidth="78.50pt" resulted in 
		  colwidth="50*", and  colwidth="80.00pt" resulted in  colwidth="0*"), and catching an empty column width seems wise in general. 
		  For LPA, we need to catch numbers with no * or units, which none of these templates do. The ones below for NZ111 and AU10 catch 
		  decimal numbers well, but not the case of no units or *. -->
	<xsl:template match="colspec[$streamID=('USLPA')]/@colwidth" priority="3">
		<xsl:attribute name="colwidth">
			
			<xsl:choose>
				<!-- empty colwidth -->
				<xsl:when test="normalize-space(.)=''">
					<!-- converts empty colwidth to "*" -->
					<xsl:value-of select="'*'"/>
				</xsl:when>
				<!-- only a number, no decimal, no units, add * at end -->
				<xsl:when test="(not(matches(.,'[a-z\.*]+','i')))">
					<xsl:value-of select="concat(., '*')"/>
				</xsl:when>
				<!-- only a DECIMAL number, no units, strip decimal and following numbers and add * at end -->
				<xsl:when test="(not(matches(.,'[a-z*]+','i')))">
					<xsl:analyze-string select="." regex="([0-9]+)(\.+)([0-9]+)">
						<xsl:matching-substring>
							<!--Dont need to choose; just use regex-group(1) and throw rest away-->
							<xsl:value-of select="concat(regex-group(1), '*')"/>
						</xsl:matching-substring>
						<xsl:non-matching-substring/>
					</xsl:analyze-string>
				</xsl:when>
				<!-- number with decimal, with units, strip decimal, convert to specified unit, and add * at end -->				
				<xsl:when test="(matches(.,'[0-9]+[\.][0-9]*([*]|[a-z]+)','i'))">
					<xsl:analyze-string select="." regex="([0-9\.]+)([*]|[a-zA-Z]+)">
						<xsl:matching-substring>
							<xsl:variable name="wholenumber" select="number(substring-before(regex-group(1),'.'))"/>
							<xsl:choose>
								<xsl:when test="lower-case(regex-group(2)) = 'in'">
									<xsl:variable name="var1">
										<xsl:value-of select="number($wholenumber) * 96"/>
									</xsl:variable>						
									<xsl:value-of select="concat($var1, '*')"/>
								</xsl:when>
								<xsl:when test="lower-case(regex-group(2)) = 'cm'">
									<xsl:variable name="var1">
										<xsl:value-of select="number($wholenumber) * 37.7952755904"/>
									</xsl:variable>
									<xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
								</xsl:when>
								<xsl:when test="lower-case(regex-group(2)) = 'mm'">
									<xsl:variable name="var1">
										<xsl:value-of select="number($wholenumber) * 3.77952755904"/>
									</xsl:variable>
									<xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
								</xsl:when>
								<xsl:when test="lower-case(regex-group(2)) = 'pt'">
									<xsl:variable name="var1">
										<xsl:value-of select="number($wholenumber) * 1"/>
									</xsl:variable>
									<xsl:value-of select="concat($var1, '*')"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="concat($wholenumber, '*')"/>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:matching-substring>
					</xsl:analyze-string>
				</xsl:when>
				<!-- number without decimal, with units, convert to specified unit, and add * at end -->	
				<xsl:when test="(matches(.,'[0-9]+([*]|[a-z]+)','i'))">
					<xsl:analyze-string select="." regex="([0-9]+)([*]|[a-zA-Z]+)">
						<xsl:matching-substring>
							<xsl:choose>
								<xsl:when test="lower-case(regex-group(2)) = 'in'">
									<xsl:variable name="var1">
										<xsl:value-of select="number(regex-group(1)) * 96"/>
									</xsl:variable>							
									<xsl:value-of select="concat($var1, '*')"/>
								</xsl:when>
								<xsl:when test="lower-case(regex-group(2)) = 'cm'">
									<xsl:variable name="var1">
										<xsl:value-of select="number(regex-group(1)) * 37.7952755904"/>
									</xsl:variable>
									<xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
								</xsl:when>
								<xsl:when test="lower-case(regex-group(2))= 'mm'">
									<xsl:variable name="var1">
										<xsl:value-of select="number(regex-group(1)) * 3.77952755904"/>
									</xsl:variable>
									<xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
								</xsl:when>
								<xsl:when test="lower-case(regex-group(2)) = 'pt'">
									<xsl:variable name="var1">
										<xsl:value-of select="number(regex-group(1)) * 1"/>
									</xsl:variable>
									<xsl:value-of select="concat($var1, '*')"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="concat(regex-group(1), '*')"/>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:matching-substring>
					</xsl:analyze-string>
				</xsl:when>
				<!-- unsupported format -->				
				<xsl:otherwise>
					<!-- output whatever was in colwidth -->	
					<xsl:value-of select="."/>
					<!-- generate warning -->	
					<xsl:call-template name="outputErrorMessage">
						<xsl:with-param name="messageText" as="xs:string" select="concat('ERROR: unexpected format for @colwidth: ',.) "/>
						<xsl:with-param name="errorType" as="xs:string" select=" 'ROCKET' "/>
						<xsl:with-param name="errorCode" as="xs:string*" select=" '405' "/>
						<xsl:with-param name="context" as="xs:string"><xsl:call-template name="generateXPath"/></xsl:with-param>
					</xsl:call-template>					
				</xsl:otherwise>
			</xsl:choose>

		</xsl:attribute>
	</xsl:template>

	<xsl:template match="colspec[$streamID=('NZ11','AU10')]/@colwidth[.='']" priority="2">
		<!-- converts empty colwidth to "*" -->
		<xsl:attribute name="colwidth">*</xsl:attribute>
	</xsl:template>
	<xsl:template match="colspec[$streamID=('NZ11','AU10')]/@colwidth[contains(.,'.')]" priority="2">
		<!-- for use when there is a decimal value in @colwidth.  it truncates the whole number and passes it through -->
		<xsl:attribute name="colwidth">
			<!--<xsl:value-of select="."/>-->
			<xsl:analyze-string select="." regex="([0-9\.]+)([*]|[a-z]+)">
				<xsl:matching-substring>
					<xsl:variable name="wholenumber" select="number(substring-before(regex-group(1),'.'))"/>
					<xsl:choose>
						<xsl:when test="regex-group(2) = 'in'">
							<xsl:variable name="var1">
								<xsl:value-of select="number($wholenumber) * 96"/>
							</xsl:variable>
							<xsl:value-of select="$var1"/>							
							<xsl:value-of select="concat($var1, '*')"/>
						</xsl:when>
						<xsl:when test="regex-group(2) = 'cm'">
							<xsl:variable name="var1">
								<xsl:value-of select="number($wholenumber) * 37.7952755904"/>
							</xsl:variable>
							<xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
						</xsl:when>
						<xsl:when test="regex-group(2) = 'mm'">
							<xsl:variable name="var1">
								<xsl:value-of select="number($wholenumber) * 3.77952755904"/>
							</xsl:variable>
							<xsl:value-of select="concat(substring-before($var1, '.'), '*')"/>
						</xsl:when>
						<xsl:when test="regex-group(2) = 'pt'">
							<xsl:variable name="var1">
								<xsl:value-of select="number($wholenumber) * 1"/>
							</xsl:variable>
							<xsl:value-of select="concat($var1, '*')"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="concat($wholenumber, '*')"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:matching-substring>
			</xsl:analyze-string>
			
		</xsl:attribute>
		
	</xsl:template>
	
	<xsl:template match="colspec/@searchtype"/>

	<!--	  .... In the absence of specific instructions elsewhere
			  in the CI, <sourcexml>@id</sourcexml> is dropped.</li>  -->
	<!--  ***NOTE  -  NEED TO ADD TO THE $streamID LIST ALL STREAMS THAT HAVE SPECIFIC INSTRUCTIONS ON colspec/@id HANDLING!!!  ***  -->
	<xsl:template match="colspec/@id[not($streamID = ('XX', 'YY', 'ZZ'))]"/>

	<xsl:template
		match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@morerows[. = '0']"/>

	<!-- I think we want to preserve morerows if they're not 0, otherwise we lose formatting -->
	<xsl:template
		match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@morerows[. != '0']">
		<xsl:copy-of select="."/>
	</xsl:template>

	<!--  <li>If ALL occurrences of @colsep in one table have a value of
						zero, remove them all from that table.
				</li>
				<li>If ALL occurrences of @rowsep in one table have a value of zero,
					remove them all from that table. </li>  -->
	<xsl:template
		match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@colsep[. = '0'][not(ancestor-or-self::table//@colsep[. != '0'])]"/>
	<xsl:template
		match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@rowsep[. = '0'][not(ancestor-or-self::table//@rowsep[. != '0'])]"/>
	<xsl:template
		match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@colsep[ancestor-or-self::table//@colsep[. != '0']]">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template
		match="*[self::table or self::tgroup or self::colspec or self::thead or self::tbody or self::row or self::entry]/@rowsep[ancestor-or-self::table//@rowsep[. != '0']]">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="thead">

		<thead xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</thead>

	</xsl:template>

	<xsl:template match="row">

		<row xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</row>

	</xsl:template>

	<xsl:template match="entry">
		<!-- Awantika: For AU20 entry becomes  primlawhist:histitemdiv/textitem for different @id-->
		<xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
<xsl:choose>
	<xsl:when test="contains(lower-case($docinfoidtext),'history') and $streamID='AU20'">
		<!--<primlawhist:histitem>-->
		<xsl:if test="@id='HI5'">
			<primlawhist:histitemdiv>
				<xsl:attribute name="divtype">heading</xsl:attribute>
				<xsl:attribute name="status">assent</xsl:attribute>
			<textitem>
				<xsl:apply-templates/>
			</textitem>
			</primlawhist:histitemdiv>
		</xsl:if>
		<xsl:if test="@id='HI7'">
			<primlawhist:histitemdiv>
				<xsl:attribute name="divtype">text</xsl:attribute>
				<xsl:attribute name="status">assent</xsl:attribute>
				<textitem>
					<date>
					<xsl:apply-templates/>
					</date>
				</textitem>
			</primlawhist:histitemdiv>
		</xsl:if>	
		<xsl:if test="@id='HI6'">
			<primlawhist:histitemdiv>	
				<!-- Awantika:2017-11-02: Updated for entry/p-limited to create only one textitem -->
				<xsl:choose>
					<xsl:when test="child::p-limited">
						<xsl:apply-templates/>
					</xsl:when>
					<xsl:otherwise>
						<textitem>
							<xsl:apply-templates/>
						</textitem>
					</xsl:otherwise>
				</xsl:choose>
				
			</primlawhist:histitemdiv>
		</xsl:if>
		<xsl:if test="normalize-space(.)='Date of assent'">
			<primlawhist:histitemdiv>
			<textitem>
				<xsl:apply-templates/>
			</textitem>
			</primlawhist:histitemdiv>
		</xsl:if>			
		<!--</primlawhist:histitem>-->
	</xsl:when>
	<xsl:when test="contains(lower-case($docinfoidtext),'cases') and $streamID='AU20'">
		<xsl:apply-templates/>
	</xsl:when>
	<xsl:otherwise>
		<xsl:choose>
			<xsl:when test="$streamID='AU20' and contains(lower-case($docinfoidtext),'overview')">
				<xsl:apply-templates/>
			</xsl:when>
			<xsl:otherwise>
				<entry xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<!-- NOTE: @colsep and @rowsep should be handled above -->
					<xsl:copy-of
						select="@align | @char | @charoff | @colname | @nameend | @namest | @valign"/>
					
					<xsl:apply-templates
						select="@* except (@align, @char, @charoff, @colname, @nameend, @namest, @valign)"/>
					<xsl:apply-templates/>
					
				</entry>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:otherwise>
</xsl:choose>
		

	</xsl:template>

	<xsl:template match="tbody">

		<tbody xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</tbody>

	</xsl:template>

	<xsl:template match="tbody/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="row/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>
	
	<!-- Suppressed the highlight 	-->
	<xsl:template match="entry/@highlight"/>
		
	

	<!-- JD: 2017-06-13: added to "entry" above -->
	<!--	<xsl:template match="entry/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>
	
	<xsl:template match="entry/@align">
		<xsl:copy-of select="."/>
	</xsl:template>
-->
	<!--JL Got an error due to not dealing with thead/@valign -->

	<xsl:template match="thead/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="table/@frame">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template match="table/@pgwide"/>

</xsl:stylesheet>
