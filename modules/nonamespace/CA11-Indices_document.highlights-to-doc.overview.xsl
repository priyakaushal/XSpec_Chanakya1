<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA11_document.highlights">
		<title>Document Highlights become doc:overview <lnpid>id-CA11-14819</lnpid></title>
		<body>
			<section>
				<p>Up to 20 words (any PCDATA text separated by space, punctuation, or newline)
					shall be extracted, to become
						<targetxml>doc:metadata/doc:docinfo/doc:overview[@type="extracted-overview"]/bodytext/p/text</targetxml>,
					as follows:</p>
				<p>
					<b>Scenario - Extract from:</b> table entries that are subjects, i.e. extract
					from each <sourcexml>entry</sourcexml> that is subsequent to the
						<sourcexml>table/tgroup/tbody/row/entry</sourcexml> that contains
						<sourcexml>SUBJECTS/SUJETS:</sourcexml> or
						<sourcexml>Subjects\Sujets:</sourcexml>.</p>
				<p> For detailed instructions on "subjects", see <xref href="CA-Indices_table.dita"
						>table (id-CA11-14815)</xref>, at the rule that begins "When
						<sourcexml>tbody/row/entry</sourcexml> contains value
						<sourcexml>SUBJECTS/SUJETS:</sourcexml> or
						<sourcexml>Subjects\Sujets:</sourcexml>".</p>
				<p>
					<note>For those documents with multiple <sourcexml>entry</sourcexml>, the
						results should be concatenated together separated by EM DASH —, up to 20
						total words.</note>
				</p>
				<p>
					<note><b>Scenario re-stated using target markup:</b> This is the same scenario
						as above but here stated in terms of the usual target markup that is
						produced from the <sourcexml>table//entry</sourcexml> "subject" rules.
						Intended only for clarity. The target markup is more readily described.
						Thus: At
							<targetxml>classify:classification[@classscheme="Subjects"]</targetxml>,
						extract from each descendant <targetxml>classify:classname</targetxml> (up
						to 20 words).</note>
				</p>
			</section>
			<example>
				<title>Scenario - Mapping of Document Highlights from table entry</title>
				<codeblock> &lt;table frame="none"&gt; &lt;tgroup cols="2" colsep="0" rowsep="0"&gt;
					&lt;colspec colnum="1" colname="col1" colwidth="150" colsep="0" rowsep="0"/&gt;
					&lt;colspec colnum="2" colname="col2" colwidth="330" colsep="0" rowsep="0"/&gt;
					&lt;tbody&gt; &lt;row&gt; &lt;entry
					colname="col1"&gt;Subjects\Sujets:&lt;/entry&gt; &lt;entry
					colname="col2"&gt;National security -- Law and legislation --
					Canada.&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry colname="col1"/&gt;
					&lt;entry colname="col2"&gt;Sécurié nationale -- Aspect économique --
					États-Unis.&lt;/entry&gt; &lt;/row&gt; &lt;row&gt; &lt;entry colname="col1"/&gt;
					&lt;entry colname="col2"&gt;Droit international privé -- Canada.&lt;/entry&gt;
					&lt;/row&gt; &lt;row&gt; &lt;entry colname="col1"/&gt; &lt;entry
					colname="col2"&gt;Droit international privé -- États-Unis.&lt;/entry&gt;
					&lt;/row&gt; &lt;row&gt; &lt;entry colname="col1"/&gt; &lt;entry
					colname="col2"&gt;Security Law -- Canada.&lt;/entry&gt; &lt;/row&gt; ...
					&lt;/tbody&gt; &lt;/tgroup&gt; &lt;/table&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;doc:metadata&gt; ... &lt;doc:docinfo&gt; ... &lt;doc:overview
					type="extracted-overview"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;National
					security -- Law and legislation -- Canada. — Sécurié nationale -- Aspect
					économique -- États-Unis. — Droit international privé -- Canada. — Droit
					international privé -- États-Unis. — Security&lt;/text&gt; &lt;/p&gt;
					&lt;/bodytext&gt; &lt;/doc:overview&gt; ... &lt;/doc:docinfo&gt; ...
					&lt;/doc:metadata&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2015-04-23: <ph id="change_20150423_jm">New section. New target. Rules to create
						extracted overview. R4.5 RFA #2287.</ph></p>
			</section>
		</body>
	</dita:topic>

	

	<xsl:template match="row/entry[@colname = 'col1'][matches(., 'SUBJECTS/SUJETS:') or matches(., 'Subjects\\Sujets:')] " mode="highlights" >
		<doc:overview>
			<xsl:attribute name="type">extracted-overview</xsl:attribute>
			<bodytext>
				<p>
					<text>
						<xsl:variable name="text">
						<xsl:apply-templates select="following::entry[@colname='col2']" mode="highlights"/> 
						</xsl:variable>
						<xsl:value-of select="replace($text,'\s*-\s$','')"/>
					</text>
				</p>
			</bodytext>
		</doc:overview>
	</xsl:template>
	
	<!-- except following::entry[@colname='col2'][preceding::entry[@colname='col1'][contains(.,'STATUTES/LOIS:') or contains(.,'CONTRIB/CONTRIB:') or contains(.,'DATE INCLUDED IN ICLL:') or contains(.,'ICLL ISSUE NUMBER:') or contains(.,'CDN CURRENT LAW:')]] -->
	
	<xsl:template match="row/entry[@colname='col2'][preceding::entry[@colname='col1'][contains(.,'Subjects\Sujets:') or contains(.,'SUBJECTS/SUJETS:')]]" mode="highlights">
		<xsl:variable name="value">
		<xsl:if test=".!=''">
			<xsl:if test="not(preceding::entry[@colname='col1'][contains(.,'CONTRIB/CONTRIB:') or contains(.,'ICLL ISSUE NUMBER:') ])">
			<xsl:value-of select="concat(.,' - ')"/>
			</xsl:if>
		</xsl:if>
		</xsl:variable>
		<xsl:value-of select="$value"/>		
	</xsl:template>
	
	
</xsl:stylesheet>
