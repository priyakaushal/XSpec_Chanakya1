<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.lbu-indexing-terms-to-LexisAdvance_classify.classification_classscheme_lbu-subj-scheme">
		<title><sourcexml>docinfo:lbu-meta</sourcexml> to
				<targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]</targetxml>
			<lnpid>id-CCCC-10300</lnpid></title>
	
		<body>
			<section>
				<title>Instructions <i>[common element]</i></title>
				<p><sourcexml>docinfo:lbu-meta</sourcexml> becomes
						<targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]</targetxml>.
						<sourcexml>docinfo:metaitem</sourcexml> becomes
						<targetxml>meta/metaitem</targetxml>. The source attribute
						<sourcexml>@name</sourcexml> becomes <targetxml>metaitem[@name]</targetxml> and
						<sourcexml>@value</sourcexml> becomes <targetxml>metaitem[@value]</targetxml>. </p>
				<p><sourcexml>docinfo:metaitem</sourcexml> should be dropped if the attribute
						<sourcexml>@name</sourcexml> has any of the following drop list values: <ul>
						<li><sourcexml>@name="date"</sourcexml></li>
						<li><sourcexml>@name="juris"</sourcexml></li>
						<li><sourcexml>@name="court"</sourcexml></li>
						<li><sourcexml>@name="country"</sourcexml></li>
						<li><sourcexml>@name="parent-filename"</sourcexml></li>
					</ul>
				</p>
			</section>
	

			<example>
				<title>Source XML 1</title>
				<codeblock>
	<![CDATA[<docinfo>
	<docinfo:lbu-meta>
		<docinfo:metaitem name="date" value="18810104"/>
		<docinfo:metaitem name="country" value="2"/>
		<docinfo:metaitem name="court" value="2"/>
		<docinfo:metaitem name="date" value="18810104"/>
		<docinfo:metaitem name="juris" value="9"/>
		<docinfo:metaitem name="court" value="1"/>
		<docinfo:metaitem name="country" value="2"/>
		<docinfo:metaitem name="lbu-sourcename" value="New Zealand Law Reports"/>
		<docinfo:metaitem name="parent-docid" value="1NZLR_CA_1"/>
		<docinfo:metaitem name="parent-filename" value="1NZLR_CA_00001.xml"/>
	</docinfo:lbu-meta></docinfo>
	]]>
		</codeblock>
			</example>
	
			<example>
				<title>Target XML 1</title>
				<codeblock>
	<![CDATA[<doc:metadata>
	<doc:docinfo>
		<doc:legacy-metadata metadatasource="lbu-meta">
			<meta>
			   <metaitem name="lbu-sourcename" value="New Zealand Law Reports"/>
			   <metaitem name="parent-docid" value="1NZLR_CA_1"/>
			</meta>
		</doc:legacy-metadata>
	</doc:docinfo></doc:metadata>
	]]>
		</codeblock>
			</example>
	
			<example>
				<title>Source XML 2</title>
				<codeblock>
	<![CDATA[<docinfo>
	<docinfo:lbu-meta>
	<docinfo:metaitem name="SRCNAME" value="AGAA"></docinfo:metaitem>
	<docinfo:metaitem name="SRCDOCNO" value="00000008"></docinfo:metaitem>
	<docinfo:metaitem name="DPSI" value="03EN"></docinfo:metaitem>
	</docinfo:lbu-meta>
	</docinfo>
	]]>
		</codeblock>
			</example>
	
			<example>
				<title>Target XML 2</title>
				<codeblock>
	<![CDATA[<doc:metadata>
	<doc:docinfo>
		<doc:legacy-metadata metadatasource="lbu-meta">
			<meta>
			   <metaitem name="SRCNAME" value="AGAA"/>
			   <metaitem name="SRCDOCNO" value="00000008"/>
			   <metaitem name="DPSI" value="03EN"/>
			</meta>
		</doc:legacy-metadata>
	</doc:docinfo></doc:metadata>
	]]>
		</codeblock>
			</example>
			<example>
				<title>Source XML 3</title>
				<codeblock>
	<![CDATA[<docinfo>
	<docinfo:lbu-meta>
	<docinfo:metaitem name="QLDB" value="sb99"></docinfo:metaitem>
	</docinfo:lbu-meta>
	</docinfo>
	]]>
		</codeblock>
			</example>
	
			<example>
				<title>Target XML 3</title>
				<codeblock>
	<![CDATA[<doc:metadata>
	<doc:docinfo>
		<doc:legacy-metadata metadatasource="lbu-meta">
			<meta>
			   <metaitem name="QLDB" value="sb99"/>	       
			</meta>
		</doc:legacy-metadata>
	</doc:docinfo></doc:metadata>
	]]>
		</codeblock>
			</example>
	
			<example>
				<title>Source XML 4</title>
				<codeblock>
	<![CDATA[
	<docinfo>
	 <!-- ETC. -->
	 <docinfo:lbu-meta>
	  <docinfo:metaitem name="selection_criteria_variant" value="PCT207_regulation_1" />
	  <docinfo:metaitem name="lbu-sourcename" value="New Zealand Regulations" />
	  <docinfo:metaitem name="parent-docid" value="GCG-REGULATIONS-D" />
	  <docinfo:metaitem name="parent-filename" value="Regs-D.xml" />
	  <docinfo:metaitem name="parent-docid" value="NZREGS_REGS-D.SGM_2001R326-FRONT-CONTENTS" />
	  <docinfo:metaitem name="parent-filename" value="Regs-D1030.xml" />
	 </docinfo:lbu-meta>
	 <!-- ETC. -->
	</docinfo>]]>
				</codeblock>
			</example>
			<example>
				<title>Target XML 4</title>
				<codeblock>
					
	<![CDATA[<doc:metadata>
	<doc:docinfo>
		<doc:legacy-metadata metadatasource="lbu-meta">
			<meta>
			   <metaitem name="selection_criteria_variant" value="PCT207_regulation_1"/>
			   <metaitem name="lbu-sourcename" value="New Zealand Regulations"/>
			   <metaitem name="parent-docid" value="GCG-REGULATIONS-D"/>
			   <metaitem name="parent-docid" value="NZREGS_REGS-D.SGM_2001R326-FRONT-CONTENTS"/>
			</meta>
		</doc:legacy-metadata>
	</doc:docinfo></doc:metadata>
	]]>
				</codeblock>
			</example>
			
			<!-- McNally July 28 2016.  I'm commenting-out the following section "Special rules for UK14". 
			Will investigate intent.  If truly UK14 only then probably want separate submodule. 
			Will need some work. Narrative describes custom-metafield which can't occur in docinfo:lbu-meta.
			Example shows docinfo:metaitem which would be ok. 
			Also commented-out the change entry and moved it out of the changelog section. -->
			
			<!--<section>
				<note><b>Special rules for UK14:</b> These are rules for mapping certain instances of
					the source element <sourcexml>docinfo:custom-metafield</sourcexml> and instances are
					identified through the <sourcexml>@name</sourcexml> attribute. If given source
					present then below rules apply. </note>
				<p><b><u>Mapping to <targetxml>classify:classification</targetxml></u></b></p>
				<p>Source: <ul>
						<li><sourcexml>docinfo:custom-metafield[@name="alternative-title-formal"]</sourcexml></li>
						<li><sourcexml>docinfo:custom-metafield[@name="alternative-title-acronym"]</sourcexml></li>
						<li><sourcexml>docinfo:custom-metafield[@name="alternative-title-popular"]</sourcexml></li>
					</ul></p>
				<p>Target: Each source item becomes <targetxml>metaitem[@name @value]</targetxml> within
						<targetxml>classify:classification</targetxml> markup. As follows:</p>
				<p>Within <targetxml>doc:metadata/doc:docinfo</targetxml> -<ul>
						<li>Create
								<targetxml>classify:classification[@classscheme="uk-functional-information"]/classify:classitem</targetxml>.
							The <targetxml>@classscheme</targetxml> value is hard coded.<ul>
								<li>Create <targetxml>meta</targetxml><ul>
										<li>For each <sourcexml>docinfo:custom-metafield</sourcexml>
											specified above, create <targetxml>metaitem[@name
												@value]</targetxml>. Where <sourcexml>@name</sourcexml>
											value becomes <targetxml>@name</targetxml> value. And
											content of source element becomes
												<targetxml>@value</targetxml> value.</li>
									</ul></li>
								<li>Create
										<targetxml>classify:classitem-identifier/classify:classcode[@normval="functional-parameters"]</targetxml>.
									The <targetxml>@normval</targetxml> value is hard coded.</li>
							</ul></li>
					</ul><note>Create only one container
							<targetxml>classify:classification[@classscheme="uk-functional-information"]/classify:classitem</targetxml>.
						The container holds the items described above and may also hold mappings from
						elsewhere in the same source file.</note></p>
			</section>
			<example>
				<title>Source XML 5</title>
				<codeblock>
	<![CDATA[<docinfo>
	<docinfo:lbu-meta>
		<docinfo:metaitem name="alternative-title-formal" value="Merger confidentiality agreement in letter form"/>
		<docinfo:metaitem name="alternative-title-acronym" value="NDA" />
		<docinfo:metaitem name="alternative-title-popular" value="Non-disclosure clause for a shareholders’ agreement"/>
	</docinfo:lbu-meta>
	</docinfo>
	]]>
		</codeblock>
			</example>
	
			<example>
				<title>Target XML 5</title>
				<codeblock>
	<![CDATA[
	<doc:metadata>
		<doc:docinfo>
			<classify:classification classscheme="uk-functional-information">
				<classify:classitem>
					<meta>
						<metaitem name="alternative-title-formal" value="Merger confidentiality agreement in letter form"/>
						<metaitem name="alternative-title-acronym" value="NDA"/>
						<metaitem name="alternative-title-popular" value="Non-disclosure clause for a shareholders’ agreement"/>
					</meta>
					<classify:classitem-identifier>
						<classify:classcode normval="functional-parameters"/>
					</classify:classitem-identifier>
				</classify:classitem>
			</classify:classification>
		</doc:docinfo>
	</doc:metadata>
	]]>
		</codeblock>
			</example>
			
				<p>2016-07-28: <ph id="change_20160728_ss">Added rules for handling of
							<sourcexml>@name="alternative-title-formal"</sourcexml>,
							<sourcexml>@name="alternative-title-acronym"</sourcexml> and
							<sourcexml>@name="alternative-title-popular"</sourcexml> with updated
						example.</ph></p> -->
			<section>
				<title>Changes</title>
				<p>2013-08-12: <ph id="change_20130812_ab">We removed the docinfo:lbu-meta "include"
						list so now there is only a "drop" list. Anything not on the "drop" list should
						be passed through. <b>Webteam 230557</b>.</ph></p>
				<p>2013-08-02: <ph id="change_20130802_ab">Added
							<sourcexml>@name="selection_criteria_variant"</sourcexml> to the list of
						values in docinfo:metaitem/@name that should be retained. And added a
						example.</ph></p>
				<p>2013-05-31: <ph id="change_20130531_DSF">Added "document-type" to the list of values
						in docinfo:metaitem/@name that should be retained.</ph></p>
				<p>2013-04-09: <ph id="change_20130409_vv">Added the instruction for handling
							<sourcexml>docinfo:metaitem[@name="QLDB"]</sourcexml>.</ph></p>
				<p>2012-08-30: Created.</p>
			</section>
	
			
		</body>
	</dita:topic>

	<xsl:template match="docinfo:lbu-meta">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="docinfo:metaitem">
		<xsl:choose>
			<xsl:when
				test="@name='date' or 
				@name='juris' or 
				@name='court' or 
				@name='country' or 
				@name='parent-filename' or 
				@name='PA-PGUID' or 
				@name='TOPIC-PGUID' or 
				@name='SUB-TOPIC-PGUID'				
				"/>
			<xsl:otherwise>
				<!-- @name='parent-docid'and name='lbu-sourcename' are two values that need to be converted for court cases -->
				<metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:attribute name="name">
						<xsl:value-of select="@name"/>
					</xsl:attribute>
					<xsl:attribute name="value">
						<xsl:value-of select="@value"/>
					</xsl:attribute>
				</metaitem>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>