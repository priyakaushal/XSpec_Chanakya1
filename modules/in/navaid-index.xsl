<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
	xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" 
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-index">
    <title><sourcexml>in:lev1</sourcexml> Elements and Their Subelements <lnpid>id-AU16-21020</lnpid></title>
		<body>
			<p>The first occurance of <sourcexml>in:lev1</sourcexml> that follows a
				non-<sourcexml>in:lev1</sourcexml> causes an <targetxml>index:index</targetxml> to be
				created. </p>
			<note>There is one exception to the above sentence. If all of the following are true: <ul>
				<li>An <sourcexml>in:lev1</sourcexml> is <b>not</b> immediately followed by another
					<sourcexml>in:lev1</sourcexml>.</li>
				<li>The <sourcexml>in:lev1</sourcexml>
					<b>does not</b> contain an <sourcexml>in:lev2</sourcexml>.</li>
				<li>The <sourcexml>in:lev1</sourcexml> contains <b>only one</b>
					<sourcexml>in:entry</sourcexml> and that entry contains an
					<sourcexml>in:entry-text</sourcexml> or <sourcexml>in:entry-text/emph</sourcexml> that
					contains a special title phrase.</li>
			</ul> Then this <sourcexml>in:lev1</sourcexml> should be converted as described in <xref
				href="navaid-alt-heading.dita">Convert Certain Text To
				<targetxml>alt-heading</targetxml></xref>. See this subtopic for a full list of the special
				title phrases as well as details regarding how to convert to an
				<targetxml>alt-heading</targetxml>. </note>          
			<p>The value of <targetxml>index:index/@indextype</targetxml> depends on certain content earlier in the document, as follows: <ul>
				<li>If earlier in the document there is a <sourcexml>docinfo:hierlev/heading/title</sourcexml>
					with the value "Defined Terms", then
					<targetxml>index:index/@indextype="definedTerms"</targetxml>.</li>
				<li>If earlier in the document there is a <sourcexml>docinfo:doc-id</sourcexml> that
					contains any of these three text sequences anywhere within it: "_LASTSITTINGDAYRESULT_",
					"_KEYWORDS_", "_SUBJECT_", or "_HISTORICALVERSIONS_" then
					<targetxml>index:index/@indextype="descriptive"</targetxml>.</li>
				<li>Otherwise,
					<targetxml>index:index/@indextype="topical"</targetxml>.</li>
			</ul>
			</p>
			<note>The <sourcexml>docinfo:hierlev</sourcexml> will be contained within
				<sourcexml>INDEXDOC/docinfo/</sourcexml> that occurs at the beginning of the source
				document.</note>
			<p>After the <targetxml>index:index</targetxml> is created, the first
				<sourcexml>in:lev</sourcexml> and all immediately following sibling
				<sourcexml>in:lev1</sourcexml> elements and Attributes are converted as follows: <ul>
					<li><sourcexml>in:lev1@id</sourcexml> mapped to <targetxml>index:index@xml:id/index:item</targetxml>.</li>
					<li><sourcexml>in:lev1@subdoc</sourcexml> mapped to <targetxml>index:index@includeintoc/index:item</targetxml>.</li>
					<li><sourcexml>in:lev1@toc-caption</sourcexml> mapped to  <targetxml>index:index@alternatetoccaption/index:item</targetxml>.</li>
					
					<li><sourcexml>in:lev1</sourcexml> becomes
						<targetxml>index:index/index:item</targetxml></li>
					<li><sourcexml>in:lev1/in:entry</sourcexml> becomes
						<targetxml>index:index/index:item/index:entry</targetxml>.</li>
					<li>Each <sourcexml>in:entry</sourcexml> is converted to <targetxml>index:entry</targetxml>
						as follows: <ul>
							<li>If there is any content before the first <sourcexml>remotelink</sourcexml> within
								the <sourcexml>in:entry</sourcexml>, an
								<targetxml>index:entry/index:entrytext</targetxml> element is created and the
								content appearing within the <sourcexml>in:entry</sourcexml> before
								<sourcexml>remotelink</sourcexml> is moved to this created
								<targetxml>index:entry/index:entrytext</targetxml>. If this
								<targetxml>index:entrytext</targetxml> ends with "," or ";" (comma or semicolon) the
								"," or ";" is not output but is instead dropped so that the
								<targetxml>index:entrytext</targetxml> never ends with "," or ";".</li>
							<li>For each <sourcexml>remotelink</sourcexml> an
								<targetxml>index:entry/index:locator/ref:lnlink/@service="DOCUMENT"</targetxml>
								element is created (create child <targetxml>index:entry/index:locator</targetxml> and
								then create grandchild element
								<targetxml>index:entry/index:locator/ref:lnlink</targetxml> with attribute
								<targetxml>ref:lnlink/@service="DOCUMENT"</targetxml>). The
								<targetxml>ref:lnlink</targetxml> element is populated as follows:<ul>
									<li>Element <targetxml>index:locator/ref:lnlink/ref:marker</targetxml> is created,
										and the content of the <sourcexml>remotelink</sourcexml> becomes the content of
										<targetxml>ref:lnlink/ref:marker</targetxml>.</li>
									<li>Element <targetxml>index:locator/ref:lnlink/ref:locator</targetxml> is created
										along with sub-element <targetxml>ref:lnlink/ref:locator-key</targetxml> and
										sub-sub-elements <targetxml>ref:locator/ref:locator-key/ref:key-name</targetxml>
										and <targetxml>ref:locator/ref:locator-key/ref:key-value</targetxml>. The
										attribute <targetxml>ref:key-name/@name</targetxml> is set to "DOC-ID".</li>
									<li>If <sourcexml>remotelink/@remotekey1="DOC-ID"</sourcexml>:<ul>
										<li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
											<sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it
											is concatenated with the value of
											<sourcexml>remotelink/@remotekey2</sourcexml>. If and only if
											<sourcexml>remotelink/@remotelink2</sourcexml> is <b>not</b> present, use
											<sourcexml>remotelink/@refpt</sourcexml> instead.</li>
									</ul></li>
									<li>If <sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>:<ul>
										<li><targetxml>ref:key-value/@value</targetxml> is set to the the value of
											<sourcexml>remotelink/@dpsi</sourcexml>, followed by a hyphen ("-"). Then it
											is concatenated with the value of <sourcexml>remotelink/@docidref</sourcexml>.
											If <sourcexml>remotelink/@docidref</sourcexml> is not present when
											<sourcexml>remotelink/@remotekey1="REFPTID"</sourcexml>, this is a data
											error and the link is invalid. As a work-around, use the value "MISSINGDOCID"
											if the <sourcexml>remotelink/@docidref</sourcexml> attribute is missing in
											this context.</li>
										<li>The attribute <targetxml>ref:lnlink/ref:locator/@anchoridref</targetxml> is
											set to the value of <sourcexml>remotelink/@refpt</sourcexml>. If and only if
											<sourcexml>remotelink/@refpt</sourcexml> is <b>not</b> present, use
											<sourcexml>remotelink/@remotelink2</sourcexml> instead. If this value begins
											with a number, an underscore (_) is added to the front. Any colons (":")
											present in the Rosetta source value are replaced with an underscore ("_") in
											the NewLexis output value.</li>
									</ul>
									</li>
									<li>When creating the value for <targetxml>ref:key-value/@value</targetxml>: if
										<sourcexml>remotelink/@dpsi</sourcexml> is not present, the value from
										<sourcexml>docinfo:dpsi/@id-string</sourcexml> is used. If there is no
										<sourcexml>docinfo:dpsi/@id-string</sourcexml> value, the value from the LBU
										manifest file is captured and used.</li>
								</ul>
							</li>
							<li>If there is content between two <sourcexml>remotelink</sourcexml> elements such as:
								"-", "--" (dashes), "," (comma), ";" (semicolon), "|" (vertical bar), "and", or "to",
								along with optional white-space, this content is moved to an
								<targetxml>index:entry/connector</targetxml> element that is created between the two
								<targetxml>index:entry/index:locator</targetxml> elements. </li>
							<li>If there is content following all <sourcexml>remotelink</sourcexml> elements within
								an <sourcexml>in:entry</sourcexml>, this content is moved to an
								<targetxml>index:entry/inlinenote/[@notetype="reference-in-text"]</targetxml>
								element following the <targetxml>index:entry/index:locator</targetxml> element, with
								all elements within this content converted as described in the <xref
									href="NavAidLandingPages_General.dita">General Mark-Up</xref> section.</li>
						</ul></li>
					<li>Each <sourcexml>in:lev1/in:lev2</sourcexml> becomes a nested
						<targetxml>index:item</targetxml> within the <targetxml>index:item</targetxml> created
						as a result of <sourcexml>in:lev1</sourcexml>. In other words, each
						<sourcexml>in:lev1/in:lev2</sourcexml> becomes
						<targetxml>index:index/index:item/index:item</targetxml>. Then
						<sourcexml>in:lev1/in:lev2/in:entry</sourcexml> becomes
						<targetxml>index:index/index:item/index:item/index:entry</targetxml> and is converted as
						described above for <sourcexml>in:entry</sourcexml> becomimg
						<targetxml>index:entry</targetxml>. <note>All other nested child levels
							"<sourcexml>in:lev3</sourcexml>, <sourcexml>in:lev4</sourcexml>,
							<sourcexml>in:lev5</sourcexml> and <sourcexml>in:lev6</sourcexml>" should be handled
							in same pattern and create nested target levels. </note>
						<note>There is one exception to the previous instruction. If <b><u>all</u></b>
							<sourcexml>in:lev1</sourcexml> elements in an index contain
							<sourcexml>/entry/entry-text</sourcexml> children that have only whitespace, or their
							<sourcexml>entry</sourcexml> and/or <sourcexml>entry-text</sourcexml> are empty
							children, then all the <sourcexml>in:lev1</sourcexml> start-tags and end-tags, as well
							as any <sourcexml>entry</sourcexml> and <sourcexml>entry-text</sourcexml> children, are
							dropped. In this case, the <sourcexml>entry</sourcexml> and
							<sourcexml>entry-text</sourcexml> children of <sourcexml>in:lev1</sourcexml> are
							dropped entirely: not just their start-tags and end-tags, but their white-space content
							also. Then, the <sourcexml>in:lev2</sourcexml> children of all
							<sourcexml>in:lev1</sourcexml> elements are treated as if they were
							<sourcexml>in:lev1</sourcexml> elements. That is, each
							<sourcexml>in:lev1/in:lve2</sourcexml> element in this special circumstance becomes
							<targetxml>index:index/index:item</targetxml> (instead of
							<targetxml>index:index/index:item/index:item</targetxml>). Then
							<sourcexml>in:lev1/in:lev2/in:entry</sourcexml> becomes
							<targetxml>index:index/index:item/index:entry</targetxml> and is converted as
							described above for <sourcexml>in:entry</sourcexml> becomimg
							<targetxml>index:entry</targetxml>. </note>
					</li>
				</ul>
				<note>If the entire contents of an <sourcexml>in:entry</sourcexml> consists of a single empty
					child <sourcexml>in:entry/in:entry-text</sourcexml> element, or this child contains only
					white-space, then this <sourcexml>in:entry</sourcexml> and its empty child
					<sourcexml>in:entry/in:entry-text</sourcexml> is simply converted to an empty
					<targetxml>index:entry</targetxml>.</note>
			</p>
			
			<section>
				<title>Changes</title>
				<p>2013-06-27: <ph id="change_20130627_JCG">changed instructions to specify that attribute <targetxml>ref:lnlink/@service="DOCUMENT"</targetxml> should be created in target XML</ph></p>
				<p>2017-04-27: <ph id="change_20170427_RS">Added a note for handling nested child levels </ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-index.dita  -->
	<!--<xsl:message>navaid-index.xsl requires manual development!</xsl:message> -->

<!-- Needs predicate that handles the 'special title phrase' -->
	<!-- If change made to this template check that the following documents are not changed:
		'PS2017050805314465258LNIAUINDEX_input_LAWNOW_LEG_HISTORICALVERSIONS_SUBLEG_WA_0151010000.xml' -->
	<xsl:template match="in:lev1[preceding-sibling::*[1][not(self::in:lev1) or (self::in:lev1[in:entry/in:entry-text[matches(., '^[\t\p{Zs}]+$')]] and not(self::in:lev1/in:entry[2]))] and 
		in:lev2 and not(in:entry[2])]">

		<!--  Original Target XPath:  index:index   -->
		<index:index>
			<xsl:attribute name="indextype">
				<xsl:choose>
					<xsl:when test="../../docinfo/docinfo:hier//docinfo:hierlev/heading[matches(title, 'Defined Terms')]">definedTerms</xsl:when>
					<xsl:when test="../../docinfo/docinfo:doc-id[contains(., '_LASTSITTINGDAYRESULT_') or contains(., '_KEYWORDS_') or 
						contains(., '_SUBJECT_') or contains(., '_HISTORICALVERSIONS_')]">descriptive</xsl:when>
					<xsl:otherwise>topical</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
				<xsl:choose>
					<xsl:when test="self::in:lev1/in:entry/in:entry-text[not(node())]">
						<xsl:apply-templates select="in:lev2"/>
					</xsl:when>
					<xsl:otherwise>
						<index:item>
							<xsl:apply-templates select="node()"/>
						</index:item>
					</xsl:otherwise>
				</xsl:choose>
			
			<xsl:for-each select="following-sibling::in:lev1[not(in:entry/in:entry-text[matches(., '^[\t\p{Zs}]+$')])]">
					<xsl:choose>
						<xsl:when test="self::in:lev1/in:entry/in:entry-text[not(node())]">
							<xsl:apply-templates select="in:lev2"/>
						</xsl:when>
						<xsl:otherwise>
							<index:item>
								<xsl:apply-templates select="node()"/>
							</index:item>
						</xsl:otherwise>
					</xsl:choose>
				
			</xsl:for-each>
		</index:index>		

	</xsl:template>
	
	
	<xsl:template match="in:lev1[preceding-sibling::*[1][self::in:lev1[not(in:entry/in:entry-text[matches(., '^[\t\p{Zs}]+$')])]]]" priority="25"/>
	

	<xsl:template match="in:lev1[not(in:lev2) and in:entry[matches(in:entry-text, '^[\t\p{Zs}]+$')] and not(preceding-sibling::*[1][self::in:lev1])]"/>
	<xsl:template match="in:lev1[not(in:lev2) and in:entry[matches(in:entry-text, '^[\t\p{Zs}]+$')] and not(following-sibling::*[1][self::in:lev1])]"/>
	
	<xsl:template match="in:lev2|in:lev3|in:lev4|in:lev5|in:lev6">
		<index:item>
			<xsl:apply-templates select="in:entry/in:entry-text/refpt"/>
			<xsl:apply-templates select="node()"/>
		</index:item>
	</xsl:template>
	
	<xsl:template match="in:entry">
		<index:entry>
			<xsl:apply-templates select="node()"/>
		</index:entry>
	</xsl:template>
	
	<xsl:template match="in:entry-text[not(remotelink)]">
		<index:entrytext>
			<xsl:apply-templates select="node() except(refpt[not(emph)])"/>
		</index:entrytext>
	</xsl:template>
	
	<xsl:template match="in:entry-text[remotelink]">
		<xsl:for-each-group select="node()" group-adjacent="if(self::remotelink) then 0 else 1">
			<xsl:choose>
				<xsl:when test="current-grouping-key() = 0">
					<xsl:for-each select="current-group()">
						<xsl:apply-templates select="."/>
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<xsl:choose>
						<xsl:when test="current-group()[preceding-sibling::remotelink and following-sibling::remotelink]">
							<connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
									<xsl:apply-templates select="current-group()"/>								
							</connector>
						</xsl:when>
						<xsl:when test="current-group()[preceding-sibling::remotelink]">
							<inlinenote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" notetype='reference-in-text'>
									<xsl:apply-templates select="current-group()"/>								
							</inlinenote>
						</xsl:when>
						<xsl:otherwise>
							<index:entrytext>
									<xsl:apply-templates select="current-group()"/>								
							</index:entrytext>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each-group>
	</xsl:template>
	<!-- 
	<in:lev1>
      <in:entry>
        <in:entry-text>
          <remotelink dpsi="009K" remotekey1="REFPTID" service="DOC-ID" refpt="CTH_BIL_2017-74"
            status="unval">ASIC SUPERVISORY COST RECOVERY LEVY BILL 2017</remotelink>
        </in:entry-text>
      </in:entry>
      <in:lev2>
        <in:entry>
          <in:entry-text>Representatives - Moved second reading, debate adjourned</in:entry-text>
        </in:entry>
      </in:lev2>
    </in:lev1>
	-->

	

</xsl:stylesheet>