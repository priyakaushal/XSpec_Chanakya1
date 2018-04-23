<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:case2="http://www.lexisnexis.com/xmlschemas/content/legal/case/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:dig="http://www.lexis-nexis.com/glp/dig"
	xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl"
	xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
	xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	exclude-result-prefixes="classify dita case case2 docinfo dig leg source_cttr jrnl comm ci xd  ref  dc location">

	<!-- *****************************************************************************
	this template uses a global $dpsi parameter that should be placed in the 
	stream driver file as:
	
		<xsl:param name="dpsi" as="xs:string" select=" 'From LBU Manifest File' "/>
	
    this parameter can be used in any module in your stream.  Do not add 
    it as a variable or parameter in this file to avoid conflicts.
	*******************************************************************************	
	
	-->
	<!--<xsl:variable name="dpsi"/>-->

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="Rosetta_docinfo-to-LexisAdvance_doc.metadata_doc.docinfo">
		<title><sourcexml>docinfo</sourcexml> to <targetxml>doc:metadata/doc:docinfo</targetxml>
			<lnpid>id-CCCC-10282</lnpid></title>
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p>
					<ul>
						<li><sourcexml>docinfo</sourcexml> becomes <targetxml>doc:metadata/doc:docinfo</targetxml>.
								<sourcexml>docinfo:dpsi[@id-string]</sourcexml>, <sourcexml>docinfo[@browseprev]</sourcexml>,
								<sourcexml>docinfo[@browsenext]</sourcexml>, <sourcexml>docinfo[@partitionnum]</sourcexml>,
								<sourcexml>docinfo[@majorrevision]</sourcexml>, and <sourcexml>docinfo[@excludefromalerts]</sourcexml>
							become <targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata</targetxml> with attribute
								<targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]</targetxml> with child elements: <ul>
								<li>Create <targetxml>meta</targetxml> and <targetxml>metaitem</targetxml> with attributes
										<targetxml>@name</targetxml> and <targetxml>@value</targetxml>. </li>
								<li>If document also contains an element <sourcexml>docinfo:lbu-meta</sourcexml> with child elements
									that are not explicitly dropped, include each metaitem after all of the <sourcexml>docinfo</sourcexml>
									attributes are placed here. See Example <sourcexml>docinfo</sourcexml> and
										<sourcexml>docinfo:lbu-meta</sourcexml> below. </li>
							</ul>
						</li>
					</ul>
				</p>
			</section>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;docinfo partitionnum="2"&gt; &lt;docinfo:dpsi id-string="006F"&gt; .................
					................. &lt;/docinfo&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;doc:metadata&gt; &lt;doc:docinfo doc-content-country="AU"&gt; &lt;dc:metadata&gt; ...... ......
					&lt;/dc:metadata&gt; &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt; &lt;meta&gt; &lt;metaitem
					name="partitionnum" value="2"/&gt; &lt;metaitem name="dpsi" value="006F"/&gt; &lt;/meta&gt;
					&lt;/doc:legacy-metadata&gt; &lt;/doc:docinfo&gt; &lt;/doc:metadata&gt; </codeblock>
			</example>

			<example>
				<title>Source XML</title>
				<codeblock> &lt;docinfo browseprev="true" browsenext="true" majorrevision="false" excludefromalerts="true"&gt;
					................. ................. &lt;/docinfo&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;doc:metadata&gt; &lt;doc:docinfo doc-content-country="AU"&gt; &lt;dc:metadata&gt; ...... ......
					&lt;/dc:metadata&gt; &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt; &lt;meta&gt; &lt;metaitem
					name="browseprev" value="true"/&gt; &lt;metaitem name="browsenext" value="true"/&gt; &lt;metaitem
					name="majorrevision" value="false"/&gt; &lt;metaitem name="excludefromalerts" value="true"/&gt; &lt;/meta&gt;
					&lt;/doc:legacy-metadata&gt; &lt;/doc:docinfo&gt; &lt;/doc:metadata&gt; </codeblock>
			</example>
			<example>
				<title>Source XML</title>
				<codeblock> &lt;docinfo partitionnum="1"&gt; ................. ................. &lt;/docinfo&gt; </codeblock>
			</example>

			<example>
				<title>Target XML</title>
				<codeblock> &lt;doc:metadata&gt; &lt;doc:docinfo doc-content-country="CA"&gt; &lt;dc:metadata&gt; ...... ......
					&lt;/dc:metadata&gt; &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt; &lt;meta&gt; &lt;metaitem
					name="partitionnum" value="1"/&gt; &lt;/meta&gt; &lt;/doc:legacy-metadata&gt; &lt;/doc:docinfo&gt;
					&lt;/doc:metadata&gt; </codeblock>
			</example>

			<example>
				<title>Example docinfo and docinfo:lbu-meta - Target</title>
				<codeblock> &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt; &lt;meta&gt; &lt;metaitem name="browsenext"
					value="false"/&gt; &lt;metaitem name="browseprev" value="false"/&gt; &lt;metaitem name="majorrevision"
					value="false"/&gt; &lt;metaitem name="excludefromalerts" value="true"/&gt; &lt;metaitem name="partitionnum"
					value="COMM1"/&gt; &lt;metaitem name="lbu-sourcename" value="Business Law Emerging Issues"/&gt; &lt;metaitem
					name="document-type" value="Emerging Issue"/&gt; &lt;metaitem name="filename" value="BusLaw_EI_1850.xml"/&gt;
					&lt;/meta&gt; &lt;/doc:legacy-metadata&gt; </codeblock>
			</example>


			<section>
				<title>Create Required <targetxml>dc:metadata</targetxml> Element</title>
				<p>The element <targetxml>dc:metadata</targetxml> is the first required child element of
						<targetxml>doc:metadata/doc:docinfo</targetxml>. As such, <targetxml>dc:metadata</targetxml> should be
					created immediately after creating <targetxml>doc:metadata/doc:docinfo</targetxml>.</p>
				<p>
					<note>
						<p>In addition, as part of workflow processing , ICCE will provide LNI values for each document. This PCDATA
							value will be mapped to the following:</p>
						<ul>
							<li>
								<targetxml>dc:identifier[@lnmeta:identifier-scheme="LNI"]</targetxml>
							</li>
							<li>
								<targetxml>dc:identifier[@lnmeta:identifier-scheme="PGUID"]</targetxml>
							</li>
						</ul>
						<p>The LNI value for <targetxml>dc:identifier[@lnmeta:identifier-scheme="PGUID"]</targetxml>will include the
							"urn:contentItem" namespace prefix.</p>
					</note>
				</p>
				<ul>
					<li>
						<p>Create <targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. This element will contain the
							date the output file was created during conversion. </p>
						<note>The format of the content of all <targetxml>dc:date</targetxml> elements must be in
							'YYYY-MM-DD'.</note>
					</li>
				</ul>
			</section>
			<example>
				<title>LNI Values from ICCE</title>
				<codeblock> &lt;dc:identifier
					lnmeta:identifier-scheme="LNI"&gt;5617-TBH1-67MJ-64K7-00000-00&lt;/dc:identifier&gt; &lt;dc:identifier
					lnmeta:identifier-scheme="PGUID"&gt;urn:contentItem:5617-TBH1-67MJ-64K7-00000-00&lt;/dc:identifier&gt;
				</codeblock>
			</example>
			<example>
				<title>dc:date[@lnmeta:datetype="conversion-date"]</title>
				<codeblock> &lt;dc:metadata&gt; ... &lt;dc:date lnmeta:datetype="conversion-date"&gt;2013-08-07&lt;/dc:date&gt;
					... &lt;/dc:metadata&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2017-03-15: <ph id="change_20170315_SBy">Added <targetxml>dc:identifier[@lnmeta:identifier-scheme =
							"LNI"]</targetxml> and <targetxml>dc:identifier[@lnmeta:identifier-scheme = "PGUID"]</targetxml> to
						XSLT</ph>.</p>
				<p>2015-04-14: <ph id="change_20150414_SA">Remove bullet icon in sub nested list for handling Indentation
						isssue.</ph></p>
				<p>2013-08-09: <ph id="change_20130809_raj">Added instruction for creating
							<targetxml>dc:date[@lnmeta:datetype="conversion-date"]</targetxml>. Previously, "conversion-date" was
						created only if "load-date" was not present. Going forward, conversion should always create
						"conversion-date". This is not a retroactive change. It should be applied only to streams developed after
						Aug. 9 2013.</ph></p>
				<p>2013-07-18: <ph id="change_20130718_jm">Added <sourcexml>@excludefromalerts</sourcexml> as one of the
							<sourcexml>docinfo</sourcexml> attributes to carry through</ph>. Also added
						<sourcexml>@majorrevision</sourcexml> to the narrative; already present in a target sample.</p>
				<p>2013-05-16: <ph id="change_20130516_WL">Fixed typo updating <b>urn:contentitem to
					urn:contentItem</b></ph></p>
				<p>2013-04-08: Removed instructions for 3.5 conversion as no longer applicable and to avoid confusion.</p>
				<p>2012-11-28: Added instructions for 3.5 conversion and 4.0 conversion.</p>
				<p>2012-10-05: Added instructions for consolidation of attributes from docinfo and content from lbu-meta from
					source into a single doc:legacy-metadata grouping.</p>
				<p>2012-09-06: Created. </p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.dita  -->

	<!-- CSN: Created docinfo and children from base.xsl -->
	<!-- this template processes all the content that goes into doc:docinfo. -->



	<xsl:template match="docinfo">

		<doc:docinfo xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/">
			<!--   add attribute doc-content-country   -->
			<!--Satbir: Added hardcore value inside attribute @doc-country-code only for HK-->
			<xsl:choose>
				<xsl:when test="starts-with($streamID, 'HK')">
					<xsl:attribute name="doc-content-country" select="'HK'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="doc_content_country"/>
				</xsl:otherwise>
			</xsl:choose>
			

			<dc:metadata>

				<dc:identifier lnmeta:identifier-scheme="LNI">0000-0000-0000-0000-00000-00</dc:identifier>
				<dc:identifier lnmeta:identifier-scheme="PGUID">urn:contentItem:0000-0000-0000-0000-00000-00</dc:identifier>

				<xsl:apply-templates select="docinfo:load-date"/>

				<dc:date lnmeta:datetype="conversion-date">
					<xsl:value-of select="format-date(current-date(), '[Y0001]-[M01]-[D01]')"/>
				</dc:date>
				<xsl:apply-templates select="/COMMENTARYDOC/comm:info/pubdate" mode="dc.metadata"/>
				<!-- PLEASE DO NOT REMOVE UK-SPECIFIC CONDITIONS  -->
				<xsl:if test="starts-with($streamID, 'UK')">
					<xsl:apply-templates
						select="docinfo:custom-metafields/docinfo:custom-metafield[@name = ('editorialPublishedDate', 'createdDate', 'updatedDate')]"
					/>
				</xsl:if>

				<!-- 20170623:  MCJ:  Removed AU06 from this list in preference to using modules/docinfo/Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.xsl. -->
				<!--  WPK 2017-11-06.  Due to webstar, all of the following streams must now use modules\docinfo\Rosetta_docinfo.doc-id-LxAdv-dcidentifier_lnmetaidentifier-scheme.xsl
				http://webstar.reedelsevier.com/WebStarWebApp/incident/viewIncident.do?incTktNum=7041473
				Also, streams need to remove any stream empty template that would conflict, i.e. <xsl:template match=”docinfo:doc=id”/>.  
				<xsl:if test="$streamID = ('AU10', 'AU13', 'AU16', 'AU17', 'AU19-CA', 'NZ14', 'NZ02', 'AU09', 'NZ10','HK09','AU19_CC')">
					<xsl:if test="docinfo:doc-id">
						<dc:identifier lnmeta:identifier-scheme="DOC-ID">
							<xsl:value-of select="docinfo:doc-id"/>
						</dc:identifier>
					</xsl:if>
				</xsl:if>
				
				<xsl:if test="$streamID=('NZ07-DN', 'NZ07DC','AU14','NZ08')">
					<xsl:if test="docinfo:doc-id">
						<dc:identifier lnmeta:identifier-scheme="DOC-ID">
							<xsl:value-of select="docinfo:dpsi/@id-string"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="docinfo:doc-id"/>
						</dc:identifier>
					</xsl:if>
				</xsl:if>
				-->
				
				<!-- Sudhanshu Srivastava: Added condition for CA03 to convert leg:officialname,leg:num to dc:title -->
				<xsl:if test="$streamID = 'CA03'">
					<xsl:choose>
						<xsl:when test="following-sibling::source_cttr:body/leg:info/leg:officialname">
							<xsl:apply-templates select="following-sibling::source_cttr:body/leg:info/leg:officialname"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:apply-templates select="following-sibling::source_cttr:body/case:headnote/case:info/case:casename" mode="dc.title"/>
						</xsl:otherwise>
					</xsl:choose>
					
				</xsl:if>

					<xsl:apply-templates select="docinfo:doc-heading | docinfo:doc-id"/>
			
			
			  <!-- JD: 2017-10-10: VSTS Bug 352379: use docinfo:doc-heading for dc:title for UK01 -->
			  <!-- CN: 2017-10-13: VSTS Bug 352379: use docinfo:doc-heading for dc:title added UK02 and UK04 -->
			  <xsl:if test="$streamID = ('UK01','UK02','UK04')">
			    <dc:title>
			      <xsl:value-of select="/CASEDOC/docinfo/docinfo:doc-heading"/>
			    </dc:title>
			  </xsl:if>
			
				<!-- JD: UK01-UK04: case:casename to dc:title (id-CCCC-10531) -->
				<!--
				<xsl:if test="$streamID = ('UK02','UK04')">
				  <dc:title>
  				  <xsl:value-of select="concat(/CASEDOC/case:body/case:headnote/case:info/case:casename, ' ',/CASEDOC/case:body/case:headnote/case:info/case:reportercite/ci:cite[@type='cite4thisdoc']/ci:content)"/>
				  </dc:title>
				</xsl:if>
				-->
				<!-- CN: 2017-10-13: VSTS Bug 352379: use docinfo:doc-heading for dc:title for UK03 -->
				<xsl:if test="$streamID='UK03'">
					<dc:title>
						<xsl:value-of select="/DIGESTDOC/docinfo/docinfo:doc-heading"/>
					</dc:title>
				</xsl:if>
							
				<!-- same as above, but different mode name -->				
				<!--<xsl:if test="$streamID = ('UK04')">
					<xsl:apply-templates select="/CASEDOC/case:body/case:headnote/case:info/case:casename[$streamID='UK04']" mode="title"/>
				</xsl:if>-->
				
				<!-- JD: UK05: case:casename to dc:title (id-UK05-27824) -->
				<xsl:if test="$streamID = 'UK05'">
					<xsl:apply-templates
						select="/CITATORDOC/source_cttr:body/case:headnote/case:info/case:casename | /CITATORDOC/source_cttr:body/case2:headnote/case2:info/case2:casename"
						mode="dc.metadata"/>
				</xsl:if>
				<xsl:apply-templates select="docinfo:authorattribution"/>
				<!--  @@@ TODO:  update DITA to match this code!!!  -->
				<!-- Awantika: Removed /CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:juris from apply templates as this was creating unnecessary content(hkhk) mapping needs to be converted to <dc:coverage> in HK03 -->
				<xsl:choose>
					<xsl:when test="starts-with($streamID, 'CA08')">
						<xsl:apply-templates
							select="
								/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:juris |
								/CITATORDOC/source_cttr:body/case:headnote/case:info/case:courtinfo/case:juris"
							mode="metadata"/>
					</xsl:when>
					<xsl:when test="$streamID = ('CA01', 'CA03', 'CA02CC','CA02DC', 'CA06', 'CA05', 'CA04', 'CA07','UK03','UK07','UK06', 'NZ07DN','NZ13')"/>
					<xsl:when test="$streamID='AU12'">
						<xsl:apply-templates select="/DIGESTDOC/dig:body/dig:info/leg:info/leg:juris" mode="metadata"/>
					</xsl:when>
					<xsl:when test="$streamID='NZ10'">
						<xsl:apply-templates select="/LEGDOC/leg:body/leg:info/leg:juris" mode="metadata"/>
					</xsl:when>
					<xsl:when test="$streamID='CA19'">
						<xsl:apply-templates select="/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:juris" mode="metadata"/>
					</xsl:when>
					<xsl:otherwise>
						<!--*********************
							Paul:  for AU08 this otherwise clause is applicable as is unedited.
							It creates dc:coverage/location:state because I have a stream specific "metadata" mode template for leg:juris.
							I've changed nothing here.  just noting that i'm leveraging this for AU08 court orders too.
							***************************-->
						<!-- Awantika: added xpath /CITATORDOC/source_cttr:body/leg:info/leg:juris for AU20 -->
						<!--Satbir: Added Xpath "/DIGESTDOC/dig:body/dig:info/case:info/case:courtinfo/case:juris" for NZ07DC-->
						<!--Satbir: Mentioned first position for jursi handling "case:courtinfo[1]/case:juris" because juris comes twicely-->
						<!-- Awantika:2017-10-17- Added not(streamID='AU01') to /CASEDOC/case:body/case:headnote/case:info/case:courtinfo[1]/case:juris as this was creating data outside identifier. -->
						<!-- Awantika:2017-10-31- Removed not(streamID='AU01') to /CASEDOC/case:body/case:headnote/case:info/case:courtinfo[1]/case:juris data given was for NZ so changed back for AU01 -->
						<xsl:apply-templates
							select="
								/CASEDOC/case:body/case:headnote/case:info/case:courtinfo[1]/case:juris |
								/LEGDOC/leg:body/leg:info/leg:juris | /CITATORDOC/source_cttr:body/leg:info/leg:juris |
								/CITATORDOC/source_cttr:body/case:headnote/case:info/case:courtinfo/case:juris |
								/CITATORDOC/source_cttr:body/case2:headnote/case2:info/case2:courtinfo/case2:juris | /DIGESTDOC/dig:body/dig:info/case:info/case:courtinfo/case:juris"
							mode="metadata"/>
					</xsl:otherwise>
				</xsl:choose>

				<!-- Awantika: case:juris will also be converted to <dc:coverage> in HK03  -->
				<!--<xsl:if test="/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:juris and $streamID = 'HK03'">
					<dc:coverage>
						<location:country>
							<xsl:attribute name="codescheme">
								<xsl:text>ISO-3166-1</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="countrycode">
								<xsl:text>HK</xsl:text>
							</xsl:attribute>
						</location:country>
					</dc:coverage>
				</xsl:if>-->
				<xsl:apply-templates select="/COMMENTARYDOC/comm:info [$streamID='USLPA']" mode="person_contributor"/>
				
				<xsl:if test="$streamID=('UK06','UK07')">
					<dc:coverage>
						<location:country>
							<xsl:attribute name="codescheme">
								<xsl:text>ISO-3166-1</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="countrycode">
								<xsl:text>GB</xsl:text>
							</xsl:attribute>
						</location:country>
					</dc:coverage>
				</xsl:if>
				
			</dc:metadata>
			
			<xsl:apply-templates select="docinfo:versioninfo[@hasotherversions='true'][$streamID='CA05']" mode="doc_version"/>
			
			<xsl:apply-templates select="/LEGDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'actFirstDoc'][contains(upper-case(.), 'TRUE')][$streamID='CA05']" mode="firstActDoc"/>
			
			<xsl:apply-templates select="/COMMENTARYDOC/comm:info/classification [$streamID='USLPA']" mode="metadata_classification"/>
			
			<xsl:apply-templates select="docinfo:custom-metafields [$streamID='USLPA']" mode="metadata_custom"/>
			
			<!-- Sudhanshu Srivastava:
			     Created on - 28-06-2017.
			     Comments : The below condition will create classify:classification inside doc:docinfo based on if input source having (docinfo:custom-metafield name="is-first-document-in-enactment") or (docinfo:custom-metafield name="is-last-document-in-enactment").
			-->
			<xsl:if test="($streamID=('UK06','UK07')) and (docinfo:custom-metafields/docinfo:custom-metafield[@name='is-first-document-in-enactment'] or docinfo:custom-metafields/docinfo:custom-metafield[@name='is-last-document-in-enactment'])">
				<classify:classification classscheme="actDocumentOrder">
					<xsl:apply-templates select="docinfo:custom-metafields/docinfo:custom-metafield[@name='is-first-document-in-enactment']" mode="isfirstdocumentinenactment"/>
					<xsl:apply-templates select="docinfo:custom-metafields/docinfo:custom-metafield[@name='is-last-document-in-enactment']" mode="islastdocumentinenactment"/>
				</classify:classification>
			</xsl:if>

			<!-- MDS - 2017-06-27 - For NZ07DN -->
			<xsl:if test="$streamID='NZ07-DN'">
				<xsl:apply-templates select="/DIGESTDOC/dig:body/dig:info/jrnl:articleinfo/pubnote[remotelink]"/>
			</xsl:if>
			
			<!-- process that belong in doc:docinfo -->
			<!--  @@@ TODO:  update DITA to match this code!!!  -->
			<!-- Sudhanshu Srivastava: in CA13 stream , i have no need to transform here 'docinfo:hier', so i am making changes for sequencing of 
			docinfo:heir-->
			<xsl:if test="not($streamID = 'CA13')">
				<xsl:apply-templates select="docinfo:hier"/>
			</xsl:if>
			<!-- Priya Kaushal : Added below for the stream UK15 -->
			<xsl:apply-templates select="classification[$streamID='UK15']"/>
		<!--	<xsl:if test = "$streamID='UK15'">
				<xsl:if test="./classification">
					<classify:classification>
						<xsl:attribute name="classscheme">
							<xsl:value-of select="./classification/@classscheme"/>
						</xsl:attribute>
						<xsl:for-each select="./classification/classitem">
							<classify:classitem>
								<xsl:attribute name="classscheme">
									<xsl:value-of select="./classification/classitem/@classscheme"/>
								</xsl:attribute>
								<meta>
									<metaitem name="appliedby" value="human"/>
								</meta>
								<topic:topicReference xmlns:topic="urn:x-lexisnexis:content:topic:global:1"
									xmlns:guid="urn:x-lexisnexis:content:guid:global:1">
									<xsl:attribute name="guid:guid">
									<xsl:value-of select="./classitem-identifier/classcode/@normval"/>
								</xsl:attribute>
								</topic:topicReference>
							</classify:classitem>
						</xsl:for-each>
						
						</classify:classification>	
				</xsl:if>				
			</xsl:if>
			-->
			<xsl:apply-templates select="//case:reportercite[$streamID=('CA01','CA04')]" mode="docrelated-content"/>
			
			<!-- Vikas Rohilla : Added for the stream CA01 -->
			<xsl:apply-templates
				select="//refnum[@refnumtype = 'UCN'][$streamID = ('CA01', 'CA02CC', 'CA02DC', 'CA19', 'CA02DS','CA04')]"
				mode="docinfoMember"/>
			<xsl:apply-templates select="docinfo:doc-id[$streamID='CA03']" mode="membership"/>
			<xsl:apply-templates select="docinfo:bookseqnum"/>
			<xsl:apply-templates select="docinfo:alt-renditions"/>
			<!-- Awantika: Added for UK11 -->
			<xsl:choose>
				<xsl:when test="$streamID='UK11DA'">
					<xsl:apply-templates select="following-sibling::dig:body/dig:info/dig:subject[@display-name='Jurisdiction']"/>		
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="//dig:body/dig:info/dig:subject"/>
				</xsl:otherwise>
			</xsl:choose>
			
		
			<xsl:call-template name="legacy-metadata"/>
			<!-- Sudhanshu Srivastava : transforming 'docinfo:hier' here for making sequence correct for CA13 stream. -->
			<xsl:if test="$streamID = 'CA13'">
				<xsl:apply-templates select="docinfo:hier"/>
			</xsl:if>
			<xsl:if test="$streamID = 'CA03' and following-sibling::source_cttr:body/leg:info/leg:relatedleg">
				<xsl:apply-templates select="following-sibling::source_cttr:body/leg:info/leg:relatedleg" mode="relatedcon"/>
			</xsl:if>
			<xsl:apply-templates select="docinfo:topiccodes"/>
			<xsl:apply-templates select="//case:headnote/case:length"/>
			<xsl:apply-templates select="docinfo:assoc-links"/>

			<!-- Sudhanshu added an applied template for  -->

			<xsl:apply-templates select="docinfo:changemanagementcode"/>


			<!-- process all docinfo:selector elements in the same wrapper -->
			<xsl:if test="docinfo:selector">
				<classify:classification classscheme="selector">
					<xsl:apply-templates select="docinfo:selector"/>
				</classify:classification>
			</xsl:if>
			<!-- CSN - 2017/09/26 - added parenthesis so this classification does not show up in every stream -->
			<xsl:if test="$streamID='AU18' and (parent::LEGDOC[@legtype='misc-inst'] or contains(child::docinfo:selector/text(), 'misc-inst'))">
				<classify:classification classscheme="au.admindoctype">
				<classify:classitem>
					<classify:classitem-identifier>
						<classify:classname>
							<xsl:text>miscellaneous-instrument</xsl:text>
						</classify:classname>
					</classify:classitem-identifier>
				</classify:classitem>
				</classify:classification>
			</xsl:if>
			<!-- CSN 2017-11-15 Added UK18 to accomodate docinfo/classification needed for Quantum Stub documents. VSTS Bug 402801. -->
			<xsl:apply-templates select="classification[$streamID=('UK13','UK18')]"/>
			<xsl:apply-templates select="docinfo:topiccodes[$streamID='NZ10']"/>
			<xsl:apply-templates select="/LEGDOC/@legtype[$streamID='NZ12']" mode="NZClassify"/>
			<xsl:if
				test="/COMMENTARYDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem[@name = 'PA-PGUID' or @name = 'TOPIC-PGUID' or @name = 'SUB-TOPIC-PGUID']">
				<classify:classification-grp classscheme="ln.indexing-terms">
					<classify:classification classscheme="ln.legal">
						<xsl:apply-templates
							select="/COMMENTARYDOC/docinfo/docinfo:lbu-meta/docinfo:metaitem[@name = 'PA-PGUID' or @name = 'TOPIC-PGUID' or @name = 'SUB-TOPIC-PGUID']"
							mode="classify"/>
					</classify:classification>
				</classify:classification-grp>
			</xsl:if>
			<!-- PLEASE DO NOT REMOVE UK-SPECIFIC CONDITIONS  -->
			<xsl:if
				test="starts-with($streamID, 'UK') and (@majorrevision or @excludefromalerts or docinfo:custom-metafields/docinfo:custom-metafield[@name = ('important', 'highlightFrequency', 'inEditorialReview', 'resultType', 'word-toc', 'isDocBuilderAvailable', 'isCorePrecedent')])">
				<xsl:apply-templates select="." mode="UKClassify"/>
			</xsl:if>
			<xsl:if test="//page">
				<xsl:variable name="pageList" select="//page"/>
				<doc:pagination>
					<xsl:for-each-group select="$pageList" group-by="@reporter">
						<doc:pagination-scheme>
							<xsl:if test="@reporter!=''">
								<xsl:attribute name="page-scheme">
									<xsl:value-of select="translate(@reporter,' ','_')"/>
								</xsl:attribute>
							</xsl:if>
							<xsl:attribute name="page-scheme-type">reporter-abbreviation</xsl:attribute>
						</doc:pagination-scheme>
					</xsl:for-each-group>
				</doc:pagination>
			</xsl:if>

			<xsl:apply-templates select="/LEGDOC/@legtype[$streamID = ('AU19LA', 'AU15')]" mode="AUClassify"/>

			<xsl:apply-templates select="docinfo:currencystatement"/>
			<xsl:apply-templates select="docinfo:keywords[$streamID = 'UK15_DS']"/> <!--pawan: added to create  classify:classification[@classscheme="keywords"] from docinfo:keywords-->
			<xsl:apply-templates select="docinfo:lbu-indexing-terms"/>
			<xsl:apply-templates select="docinfo:lbu-subj"/>
			<xsl:apply-templates select="docinfo:lbu-juris"/>
			<xsl:apply-templates select="docinfo:overview"/>
			<xsl:apply-templates select="docinfo:versioninfo[$streamID != 'CA05']"/>
			<!-- Vikas Rohilla : Apply template for the streamID UK11DA					-->
			<!-- Awantika: Apply template for UK11DN -->
			<xsl:apply-templates select="classification[$streamID=('UK11DA','UK11DN','UK03')]"/>
			<!-- Vikas Rohilla : Updated the template for the highlight becomes doc:overview -->
			<xsl:apply-templates
				select="//dig:info/highlight[not(preceding-sibling::highlight)][$streamID = 'CA14']" mode="doc-overview"/>
			<xsl:apply-templates
				select="//row/entry[@colname = 'col1'][matches(., 'SUBJECTS/SUJETS:') or matches(., 'Subjects\\Sujets:')][$streamID = 'CA11']"
				mode="highlights"/>
			<xsl:apply-templates
				select="docinfo:custom-metafields/docinfo:custom-metafield[@name = 'actFirstDoc'][contains(., 'true')][($streamID = 'CA06') or ($streamID = 'CA07')or ($streamID = 'CA08')]"
				mode="classify"/>
			<xsl:apply-templates
				select="docinfo:custom-metafields/docinfo:custom-metafield[@name='act-id' or @searchtype='act-id'][($streamID = 'CA08') or ($streamID = 'CA07')]"
				mode="doc_membership"/>
			<xsl:apply-templates select="docinfo:versioninfo/docinfo:versionbranch[$streamID = ('CA05', 'CA06', 'CA08')]"
				mode="member"/>
			<xsl:apply-templates select="docinfo:custom-metafields/docinfo:custom-metafield[@name = 'act-id'][$streamID = ('CA06')]"
				mode="membership"/>
			<xsl:apply-templates select="following::ci:content[$streamID = ('CA06', 'CA07')]" mode="doc-related"/>
			<xsl:apply-templates select="following::leg:num[not(starts-with(.,'solsak'))][$streamID = ('CA08')]" mode="doc_related_content-alt-lang"/>
			
			<xsl:apply-templates select="following::leg:num[1][$streamID=('CA05', 'CA07')]" mode="doc-related-content-alt-lang"/>
			
			<xsl:apply-templates select="following::leg:officialnum[1][not(child::ci:cite)][not(preceding-sibling::leg:num[child::ci:cite])][$streamID = ('CA06')]" mode="doc_related_content_officialnum"/>
			
			<xsl:apply-templates select="/LEGDOC/leg:body[child::leg:level][$streamID = ('CA06', 'CA07', 'CA08')]" mode="metadata"/>
			<xsl:apply-templates select="/LEGDOC/leg:body[$streamID = ('CA05')]" mode="doc_overview_bills"/>
			<xsl:apply-templates select="/COMMENTARYDOC/comm:body[$streamID = 'CA10']" mode="overviewmeta"/>
			<xsl:apply-templates select="/COMMENTARYDOC/comm:body[$streamID = 'CA09']" mode="doc_overview"/>
			<xsl:apply-templates select="/COMMENTARYDOC/docinfo/relationshipmetadata[$streamID='UK14']"/>
			<xsl:apply-templates
				select="//note[@notetype = 'other']/remotelink[contains(., '[version anglaise]') or contains(., '[French Version]')][$streamID = 'CA02DS']"
				mode="doc-related_content"/>
			<xsl:apply-templates select="//jrnl:body[$streamID = 'CA15']" mode="doc_overview"/>
			<!-- Awantika: Applied template for note scnario in AU20 -->
			<xsl:apply-templates
				select="//CITATORDOC/source_cttr:body/leg:info/note[@notetype = 'xref' and (@id = 'SCAP4' or 'SCAI4')]"/>
			<xsl:apply-templates select="docinfo:leginclude[$streamID = ('UK06','UK07')]"/>
		</doc:docinfo>

	</xsl:template>

	<xsl:template name="legacy-metadata">

		<!-- don't create doc:legacy-metadata unless at least one of the following is present -->
		<xsl:if
			test="docinfo:dpsi | /CITATORDOC/@citatordoctype | /CITATORDOC/@fullcourt | /CITATORDOC/@notannotated | /CITATORDOC/@shortannot | /CITATORDOC/@unreported | @browseprev | @browsenext | @partitionnum | @majorrevision | @excludefromalerts | @excludefromtoc | @id-string | docinfo:custom-metafields | //leg:info/leg:hier | docinfo:lbu-meta | docinfo:subtype | perjudge">

			<doc:legacy-metadata metadatasource="lbu-meta">

				<meta xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:for-each select="/*[1]/docinfo[1]/@excludefromtoc">
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>excludefromtoc</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="."/>
							</xsl:attribute>
						</metaitem>						
					</xsl:for-each>
					<xsl:choose>
						<!--			Vikas Rohilla : updated the and condition			-->
						<xsl:when
							test="docinfo:dpsi[@id-string] and not(./docinfo:lbu-meta/docinfo:metaitem[upper-case(@name) = 'DPSI'])">
							<xsl:apply-templates select="docinfo:dpsi"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:call-template name="findDPSI"/>
						</xsl:otherwise>
					</xsl:choose>
					<!-- Awantika: metaitem mapping for case:courtcode in HK03. SP: also using this for CA19. Sudhanshu : Added  -->
					<!-- Ravikant: 2018-03-09 Added the streamID MY01 for case:courtcode, metaitem mapping in MY01. -->
					<xsl:if test="//case:courtcode[$streamID = ('HK03', 'CA19', 'CA02CC', 'CA01' ,'NZ03', 'AU13', 'UK01', 'UK03', 'NZ07-DN', 'NZ07DC' , 'AU07' , 'NZ17CC', 'AU09','HK09','MY01')]">
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>case:courtcode</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="//case:courtcode/text()"/>
							</xsl:attribute>
						</metaitem>
						<!-- Awantika: instruction ends -->
					</xsl:if>
					<!-- 2018-03-16: Ravikant: metaitem mapping for case:courtcode in CA03-->
					<xsl:if test="//case:headnote/case:info/case:courtinfo/case:courtcode[$streamID = 'CA03']">
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>case:courtcode</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="//case:headnote/case:info/case:courtinfo/case:courtcode/text()"/>
							</xsl:attribute>
						</metaitem>
						
					</xsl:if>
					<!-- Ravikant: instruction ends -->
					
					<!-- Awantika: Added metaitem for UK11DN for alert:alertReference and topic:topicReference-->
					<!-- BRT 10/3/17: commented this out in favor of the code on line 680 -->
					<!--xsl:if test="/DIGESTDOC/docinfo/classification[child::classitem[@classscheme='alert:alertReference']/classitem-identifier/classname['ModuleID']][$streamID = ('UK11DN','UK03','UK11DA')]">
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>MODULE-CURRENTNESS-ALERT</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="/DIGESTDOC/docinfo/classification/classitem[@classscheme='alert:alertReference']/classitem-identifier[child::classname['ModuleID']]/classcode/@normval"/>
							</xsl:attribute>
						</metaitem>
					</xsl:if-->
					<!-- BRT 10/3/17 commented out, use alert code as model for @classscheme='topic:topicReference' further down -->
					<!--xsl:if test="/DIGESTDOC/docinfo/classification[child::classitem[@classscheme='topic:topicReference']/classitem-identifier/classname['ModuleID']][$streamID = 'UK11DN']">
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>MODULE-PGUID</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="/DIGESTDOC/docinfo/classification/classitem[@classscheme='topic:topicReference']/classitem-identifier[child::classname['ModuleID']]/classcode/@normval"/>
							</xsl:attribute>
						</metaitem>
					</xsl:if-->
					<!-- JD: 20170526: added for UK05
					"PLEASE NOTE that the element doc:legacy-metadata needs to be created only for case:courtcode occurring within
					case:headnote/case:info/case:courtinfo. There is NO NEED to create doc:legacy-metadata for all other occurrences, eg.,
					cttr:annot/case:info/case:courtinfo."
					-->
					<xsl:if
						test="/CITATORDOC/source_cttr:body/case:headnote/case:info/case:courtinfo/case:courtcode[$streamID = 'UK05']">
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>case:courtcode</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of
									select="/CITATORDOC/source_cttr:body/case:headnote/case:info/case:courtinfo/case:courtcode/text()"/>
							</xsl:attribute>
						</metaitem>
					</xsl:if>
					<xsl:apply-templates select="//case:info/case:reportercite/@ln.user-displayed[$streamID='AU07']" mode="metadata"/>
					<!-- JD: end add for UK05 -->
					<xsl:apply-templates
						select="/CITATORDOC/@citatordoctype | /CITATORDOC/@fullcourt | /CITATORDOC/@notannotated | /CITATORDOC/@shortannot | /CITATORDOC/@unreported | @browseprev | @browsenext | @partitionnum | @majorrevision | @excludefromalerts | @id-string"/>

					<xsl:apply-templates select="docinfo:custom-metafields [not($streamID='USLPA')]"/>
					<xsl:if test="not($streamID = 'CA05')">
						<xsl:apply-templates select="//leg:info/leg:hier"/>
					</xsl:if>
					<xsl:apply-templates select="docinfo:lbu-meta"/>
					<xsl:apply-templates select="docinfo:subtype"/>
					<!-- Vikas Rohilla	: Apply templates added for the streamID CA02DC -->
					<xsl:apply-templates select="//case:courtcode[$streamID = ('CA02DC', 'CA02DS')]" mode="meta_item"/>
					<xsl:apply-templates select="//classification[@rendition and @classscheme][$streamID = 'CA02DC']"
						mode="meta-item"/>

					<xsl:call-template name="perjudge"/>
					<!--<xsl:apply-templates select="//case:courtinfo/case:courtcode" mode="metadata"/>-->
					<xsl:if test="$streamID = ('HK08', 'AU02')">
						<xsl:apply-templates select="//case:headnote/case:info/case:courtinfo/case:courtcode" mode="metadata"/>
					</xsl:if>
				</meta>
			</doc:legacy-metadata>
			
			<xsl:if test="$streamID='USLPA'">
				<xsl:apply-templates select="docinfo:custom-metafields"/>
			</xsl:if>

			<!-- Awantika: Need to create two legacy metadata one isdefault one is with @metadatasource="tracking-timestamp". 
				1. For all documents, the conversion should add a date-timestamp in the format YYYYMMDDHHMMSS using doc:legacymetadata@
metadatasource="tracking-timestamp"/meta containing meta/metaitem@name="conversiontimestamp"@
value="YYYYMMDDHHMMSS"
				2. If optional docinfo:custom-metafields/docinfo:custom-metafield[@name="lbu-publish-timestamp"] exists, create doc:legacymetadata[@
metadatasource="tracking-timestamp"] and add child meta/metaitem[@name="lbu-publish-timestamp"]
[@value="YYYYMMDDHHMMSS"] -->
			
<xsl:if test="$streamID='AU20'">
	<doc:legacy-metadata metadatasource="tracking-timestamp">
		<meta>
			<metaitem>
				<xsl:attribute name="name">
					<xsl:text>conversion-timestamp</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:choose>
						<xsl:when test="docinfo:custom-metafields/docinfo:custom-metafield[@name='lbu-publish-timestamp']">
							<xsl:value-of select="concat(docinfo:custom-metafields/docinfo:custom-metafield[@name='lbu-publish-timestamp'],format-dateTime(current-dateTime(),'[H01][m01][s]'))"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="format-dateTime(current-dateTime(),'[Y0001][M01][D01][H01][m01][s]')"/>
						</xsl:otherwise>
					</xsl:choose>					
				</xsl:attribute>
			</metaitem>
			<xsl:if test="docinfo:custom-metafields/docinfo:custom-metafield[@name='lbu-publish-timestamp']">
				<metaitem>
				<xsl:attribute name="name">
					<xsl:text>lbu-publish-timestamp</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="docinfo:custom-metafields/docinfo:custom-metafield[@name='lbu-publish-timestamp']"/>
				</xsl:attribute>
				</metaitem>
			</xsl:if>
		</meta>
	</doc:legacy-metadata>
</xsl:if>
		</xsl:if>
		<!-- Brad Thacker: corrected metaitem for classitem[@classscheme='topic:topicReference'] UK15CS, UK15ds, UK12cs, UK11dn -->
		<xsl:for-each select="/*/docinfo/classification/classitem[@classscheme='topic:topicReference'][classitem-identifier/classname['ModuleID']]">
			<xsl:if test="$streamID=('UK11DN','UK12', 'UK15')">
				<doc:legacy-metadata metadatasource="lbu-meta">
					<meta>
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>MODULE-PGUID</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="./classitem-identifier[child::classname['ModuleID']]/classcode/@normval"/>
							</xsl:attribute>
						</metaitem>
						
						<!-- BRT: comment out for now - don't need topic pguids in shared services (yet) -->
						<!--xsl:for-each select="./classitem-identifier/classcode">
							<xsl:if test="contains(./@normval, 'urn:topic:')">
								<metaitem>
									<xsl:attribute name="name">
										<xsl:text>TOPIC-CURRENTNESS-ALERT</xsl:text>
									</xsl:attribute>
									<xsl:attribute name="value">
										<xsl:value-of select="./@normval"/>
									</xsl:attribute>
								</metaitem>
							</xsl:if>
						</xsl:for-each-->
					</meta>
				</doc:legacy-metadata>
			</xsl:if>
		</xsl:for-each>
		<!-- Rohan Borkar: modifications end-->
		<!-- Rohan Borkar: corrected metaitem for UK11DA for alert:alertReference -->
		<xsl:for-each select="/DIGESTDOC/docinfo/classification/classitem[@classscheme='alert:alertReference']">
			<xsl:if test="$streamID=('UK11DN','UK03','UK11DA')">
				<doc:legacy-metadata metadatasource="lbu-meta">
					<meta>
						<metaitem>
							<xsl:attribute name="name">
								<xsl:text>MODULE-CURRENTNESS-ALERT</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="./classitem-identifier[child::classname['ModuleID']]/classcode/@normval"/>
							</xsl:attribute>
						</metaitem>
						
						<xsl:for-each select="./classitem-identifier/classcode">
							<xsl:if test="contains(./@normval, 'urn:topic:')">
								<metaitem>
									<xsl:attribute name="name">
										<xsl:text>TOPIC-CURRENTNESS-ALERT</xsl:text>
									</xsl:attribute>
									<xsl:attribute name="value">
										<xsl:value-of select="./@normval"/>
									</xsl:attribute>
								</metaitem>
							</xsl:if>
						</xsl:for-each>
					</meta>
				</doc:legacy-metadata>
			</xsl:if>
		</xsl:for-each>
		<!-- Rohan Borkar: modifications end-->
<xsl:if test="$streamID=('AU13','HK09')">
	<doc:legacy-metadata metadatasource='rosetta'>
		<meta xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:for-each select="/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:courtcode">
				<metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:attribute name='name'>case:courtcode</xsl:attribute>
					<xsl:attribute name="value" select="."/>
				</metaitem>
			</xsl:for-each>
		</meta>
	</doc:legacy-metadata>
</xsl:if>
	</xsl:template>

	<!-- JD: 20170524: adding this template (called above) -->
	<xsl:template match="docinfo:dpsi">
		<metaitem name="dpsi" value="{@id-string}"/>
	</xsl:template>


	<!-- person[@searchtype="JUDGES"] -->
	<xsl:template name="perjudge">
		<!-- JD: 2017-07-14: added 'judge'; probably a data error from UK XSLT development -->
		<xsl:if test="//person[@searchtype = ('JUDGES','judge')]">
			<metaitem name="JUDGES" value="{//person[ @searchtype = ('JUDGES','judge') ]/name.text}"
				xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"/>
		</xsl:if>

	</xsl:template>

	<xsl:template
		match="/CITATORDOC/@citatordoctype | /CITATORDOC/@fullcourt | /CITATORDOC/@notannotated | /CITATORDOC/@shortannot | /CITATORDOC/@unreported | @browseprev | @browsenext | @partitionnum | @majorrevision | @excludefromalerts | @id-string">

		<metaitem name="{name()}" value="{.}" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"/>

	</xsl:template>

	<xsl:template name="findDPSI">
		<xsl:choose>
			<!--	**************************************************************  
		Vikas Rohilla : Commented this part because findDPSI templete called in the docinfo
		template and after using the double dot (..) current element becomes
		the CASEDOC and the docinfo:lbu-meta never find in the CASEDOC. 
		and after match the conversion is skip becauese it is created by the 
		docinfo:metaitem template.
		**************************************************************-->


			<!--	<xsl:when test="../docinfo:lbu-meta/docinfo:metaitem[@name='DPSI']">
				<metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:attribute name="name">dpsi</xsl:attribute>
					<xsl:attribute name="value" select="../docinfo:lbu-meta/docinfo:metaitem[@name='DPSI']/@value"/>
				</metaitem>
			</xsl:when>-->
			<!-- Vikas Rohilla : replaced double dot(..) with the single dot (.)  -->
			<xsl:when test="./docinfo:lbu-meta/docinfo:metaitem[upper-case(@name) = 'DPSI']"> </xsl:when>
			<xsl:otherwise>
				<metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:attribute name="name">dpsi</xsl:attribute>
					<xsl:attribute name="value" select="$dpsi"/>
				</metaitem>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="comm:info/pubdate" mode="dc.metadata">
		<xsl:apply-templates mode="dc.metadata"/>
	</xsl:template>

	<xsl:template match="case:headnote/case:info/case:casename | case2:headnote/case2:info/case2:casename"
		mode="dc.metadata">
		<!--  Original Target XPath:  dc:metadata/dc:title   -->
		<dc:title>
			<xsl:apply-templates select="@* | node()" mode="dc.metadata"/>
		</dc:title>
	</xsl:template>

	<xsl:template match="comm:info/pubdate/date" mode="dc.metadata">
		<dc:date lnmeta:datetype="pubdate">
			<xsl:value-of select="@year"/>
			<xsl:text>-</xsl:text>
			<xsl:value-of select="@month"/>
			<xsl:text>-</xsl:text>
			<xsl:value-of select="@day"/>
		</dc:date>

	</xsl:template>

	<xsl:template
		match="docinfo:lbu-meta/docinfo:metaitem[@name = 'PA-PGUID' or @name = 'TOPIC-PGUID' or @name = 'SUB-TOPIC-PGUID']"
		priority="2" mode="classify">
		<classify:classitem>
			<meta>
				<metaitem name="appliedby" value="human"/>
			</meta>
			<topic:topicReference guid:guid="{@value}" xmlns:topic="urn:x-lexisnexis:content:topic:global:1"
				xmlns:guid="urn:x-lexisnexis:content:guid:global:1"/>
		</classify:classitem>
	</xsl:template>
	
	<xsl:template match="docinfo:versionbranch" priority="2" mode="member">
		<doc:membership>
			<ref:groupid group-type="variants-1">
				<ref:resourceid>
					<xsl:attribute name="ref:resourcekey">
						<xsl:text>urn:cldi-1:</xsl:text>
						<xsl:value-of select="translate(translate(translate(translate(@value,'          (&#09; ',''),'          &#09;) ',''),'          ,&#09; ',''),'          ''&#09; ','')"/>
					</xsl:attribute>
				</ref:resourceid>
			</ref:groupid>
		</doc:membership>
	</xsl:template>
	


</xsl:stylesheet>
