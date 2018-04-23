<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns = "http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0"
	exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="CA12_CA-Dictionaries_text-searchtype.dita">
		<title>text/@searchtype <lnpid>id-CA12-15019</lnpid></title>

		<body>
			<section>
				<p>When input documents is having <sourcexml
						class="+ topic/keyword xml-d/sourcexml ">text/@searchtype</sourcexml> then
					it will be converted as mentioned below:</p>

				<ul>
					<li>Conversion needs to remove <sourcexml>@searchtype</sourcexml> from their
						original location and convert them as is and create duplicate entry of
							<sourcexml>text@searchtype="COURT-NAME"</sourcexml> which will map to
							<targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/
							meta/metaitem</targetxml> with attributes <targetxml>@name</targetxml>
						value come from <sourcexml>text/@searchtype</sourcexml> attribute and
							<targetxml>@value</targetxml> value come from
							<targetxml>text</targetxml> element.</li>
					<li>Conversion needs to remove <sourcexml>@searchtype</sourcexml> from their
						original location and convert them as is and create duplicate entry of
							<sourcexml>text@searchtype="CASE-NAME"</sourcexml> which will map to
							<targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
						with attributes <targetxml>@name</targetxml> value come from
							<sourcexml>text/@searchtype</sourcexml> attribute and
							<targetxml>@value</targetxml> value come from
							<targetxml>text</targetxml> element and also create
							<targetxml>ref:anchor</targetxml> sibbling of
							<sourcexml>text</sourcexml> element where occurs in the source.
							<targetxml>ref:anchor/@id="dict-CASENAME-CITE"</targetxml> and
							<targetxml>anchortype="local"</targetxml>. <note>When source file is
							belong to WDPH (Canadian Words and Phrases) source (To identify WDPH
							source you need to check WDPH word in folder name in which XML's are
							lying. e,g. <b>CAN-wdph-20120730-115434_data01</b>) and
								<sourcexml>text/@searchtype="CASE-NAME"/emph/@typestyle="bf"</sourcexml>
							contains below mentioned keywords then conversion should suppress these
							keywords. See Example 2 below:<ul>
								<li>Indexed as: </li>
								<li>Cited as: </li>
								<li>Case Name: </li>
								<li>Intitulé de la cause: </li>
								<li>Intitulé de la cause : </li>
								<li>Répertorié: </li>
								<li>Répertorié : </li>
								<li>Cité: </li>
								<li>Cité :</li>
							</ul></note></li>
					<li>Conversion needs to remove <sourcexml>@searchtype</sourcexml> from their
						original location and convert them as is and create duplicate entry of
							<sourcexml>text@searchtype="REPORTER-CITE"</sourcexml> which will map to
							<targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/
							meta/metaitem</targetxml> with attributes <targetxml>@name</targetxml>
						value come from <sourcexml>text/@searchtype</sourcexml> attribute and
							<targetxml>@value</targetxml> value come from
							<targetxml>text/ci:cite/ci:content</targetxml> element.</li>
				</ul>
				<title>text@searchtype="COURT-NAME"</title>
				<pre xml:space="preserve" class="- topic/pre ">&lt;text searchtype="COURT-NAME"&gt;Ontario Licence Appeal Tribunal&lt;/text&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;text&gt;Ontario Licence Appeal Tribunal&lt;/text&gt;

<b class="+ topic/ph hi-d/b ">and</b>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="COURT-NAME" value="Ontario Licence Appeal Tribunal"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;</pre>

				<title>text@searchtype="CASE-NAME"</title>
				<pre xml:space="preserve" class="- topic/pre ">&lt;text searchtype="CASE-NAME"&gt;
    &lt;emph typestyle="bf"&gt;S.S. Peloubet, A Collection of Legal Maxims in Law and Equity, with
        English&lt;nl/&gt;Translations, New York: S.S. Peloubet Law Publisher, 1884&lt;/emph&gt;
&lt;/text&gt;
 
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;ref:anchor id="dict-CASENAME-CITE" anchortype="local"/&gt;
&lt;text&gt;
    &lt;emph typestyle="bf"&gt;S.S. Peloubet, A Collection of Legal Maxims in Law and Equity, with
        English&lt;proc:nl/&gt;Translations, New York: S.S. Peloubet Law Publisher, 1884&lt;/emph&gt;
&lt;/text&gt;

<b class="+ topic/ph hi-d/b ">and</b>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="CASE-NAME"
            value="S.S. Peloubet, A Collection of Legal Maxims in Law and Equity, with
            English Translations, New York: S.S. Peloubet Law Publisher, 1884"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;</pre>
				<title>Example 2</title>

				<pre xml:space="preserve" class="- topic/pre ">&lt;p&gt;
    &lt;text searchtype="CASE-NAME"&gt;
        &lt;emph typestyle="bf"&gt;Indexed as: Stearns v. Alberta Insurance Council&lt;/emph&gt;
    &lt;/text&gt;
    ...
&lt;/p&gt;
 
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;p&gt;
    &lt;ref:anchor id="dict-CASENAME-CITE" anchortype="local"/&gt;
    &lt;text&gt;
        &lt;emph typestyle="bf"&gt;Stearns v. Alberta Insurance Council&lt;/emph&gt;
    &lt;/text&gt;
    ...
&lt;/p&gt;

<b class="+ topic/ph hi-d/b ">and</b>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="CASE-NAME" value="Stearns v. Alberta Insurance Council"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;</pre>

				<title>text@searchtype="REPORTER-CITE"</title>
				<pre xml:space="preserve" class="- topic/pre ">&lt;text searchtype="REPORTER-CITE"&gt;
    &lt;ci:cite searchtype="SUMM-CASE-REF"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseref ID="cref00009179" spanref="cspan00009179"&gt;
                &lt;ci:reporter value="OLAT"/&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="2000"/&gt;
                &lt;/ci:edition&gt;
                &lt;ci:refnum num="399"/&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;ci:span spanid="cspan00009179"&gt;[2000] O.L.A.T.D. No. 399&lt;/ci:span&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/text&gt;
 
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;text&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:case&gt;
            &lt;lnci:caseref ID="cref00009179"&gt;
                &lt;lnci:reporter value="OLAT"/&gt;
                &lt;lnci:edition&gt;
                    &lt;lnci:date year="2000"/&gt;
                &lt;/lnci:edition&gt;
                &lt;lnci:refnum num="399"/&gt;
            &lt;/lnci:caseref&gt;
        &lt;/lnci:case&gt;
        &lt;lnci:content&gt;[2000] O.L.A.T.D. No. 399&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
&lt;/text&gt;

<b class="+ topic/ph hi-d/b ">and</b>

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="REPORTER-CITE" value="[2000] O.L.A.T.D. No. 399"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;</pre>


				<note>
					<p>If <sourcexml>text</sourcexml> has <sourcexml>nl</sourcexml> and
							<sourcexml>emph</sourcexml> in input documents then supress
							<sourcexml>nl</sourcexml> and <sourcexml>emph</sourcexml> in
							<targetxml>metaitem/@value</targetxml>.</p>
				</note>

				<note>
					<p>Conversion should not create consecutive
							<targetxml>doc:legacy-metadata/meta</targetxml> elements. When 2 or more
						consecutive sibling source elements map to
							<targetxml>doc:legacy-metadata/meta</targetxml>, data should be merged
						to a single <targetxml>doc:legacy-metadata/meta</targetxml> element unless
						this would hamper content ordering.</p>
				</note>
			</section>
			<section>
				<title>Changes</title>
				<p>2015-01-09: <ph id="change_20150109_AK">We use one jump-to
							<targetxml>ref:anchor/@id="dict-CASENAME-CITE"</targetxml> in the target
						for both <sourcexml>text/@searchtype="CASE-NAME"</sourcexml> and
							<sourcexml>CITE</sourcexml> in the source </ph></p>
				<p>2014-10-20: <ph id="change_20141020_PS">Added instruction and example to suppress
						keywords from
							<sourcexml>text/@searchtype="CASE-NAME"/emph/@typestyle="bf"</sourcexml>.
						Applicable on CA12.</ph></p>
				<p>2014-07-31: <ph id="change_20140731_PS">Added instruction to create
							<targetxml>ref:anchor</targetxml> when source documents are having
							<sourcexml>text/@searchtype="CASE-NAME"</sourcexml>.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA12-Dictionaries\CA12_CA-Dictionaries_text-searchtype.dita  -->
	<!--<xsl:message>CA12_CA-Dictionaries_text-searchtype.xsl requires manual development!</xsl:message> -->

	<xsl:template match="text[@searchtype[matches(., 'COURT-NAME')]]" mode="meta_court">
		<metaitem>
			<xsl:attribute name="name">COURT-NAME</xsl:attribute>
			<xsl:attribute name="value">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</metaitem>
	</xsl:template>


	<xsl:template match="text[@searchtype[matches(., 'CASE-NAME')]]" mode="meta_case">
		<metaitem>
			<xsl:attribute name="name">CASE-NAME</xsl:attribute>
			<xsl:attribute name="value">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</metaitem>
	</xsl:template>

	<xsl:template match="text[@searchtype[matches(., 'REPORTER-CITE')]]" mode="meta_reporter">
		<metaitem>
			<xsl:attribute name="name">REPORTER-CITE</xsl:attribute>
			<xsl:attribute name="value">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</metaitem>
	</xsl:template>

	<xsl:template match="text[@searchtype[matches(., 'CASE-NAME')]]">
		<ref:anchor>
			<xsl:attribute name="id">dict-CASENAME-CITE</xsl:attribute>
			<xsl:attribute name="anchortype">local</xsl:attribute>
		</ref:anchor>
		<text>
			<xsl:apply-templates select="node()"/>
		</text>
	</xsl:template>
</xsl:stylesheet>
