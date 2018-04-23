<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_note-Chof-ci.content-LxAdv-inlinenote">
    <title><sourcexml>ci:cite/ci:content/note</sourcexml> to
            <targetxml>inlinenote</targetxml> <lnpid>id-CCCC-10508</lnpid></title>
    <body>
        <p>This rule only applies when the XPaths
                <sourcexml>text/ci:cite/ci:content/note</sourcexml> or
                <sourcexml>entry/ci:cite/ci:content/note</sourcexml> occur. In this scenario, each
                <sourcexml>note</sourcexml> (the direct child of <sourcexml>ci:content</sourcexml>)
            is moved outside the <sourcexml>ci:cite</sourcexml> so that the
                <sourcexml>note</sourcexml> becomes the <sourcexml>ci:cite</sourcexml> element's
            immediate next sibling (and also now a direct child of <sourcexml>text</sourcexml> or
                <sourcexml>entry</sourcexml>). Conversion is then done on the
                <sourcexml>ci:cite</sourcexml> element as described in the section <b><i>General
                    Markup</i></b>. The moved <sourcexml>note</sourcexml> element becomes
                <targetxml>inlinenote</targetxml> and is converted as described in the topic <xref href="Rosetta_note-Chof-text-LxAdv-inlinenote.dita"/> or <xref href="Rosetta_note-Chof-entry-LxAdv-inlinenote.dita"/>.</p> 
        <note>The moved <sourcexml>note</sourcexml> becomes <targetxml>inlinenote</targetxml> because after being moved it is a direct child of <sourcexml>text</sourcexml> or <sourcexml>entry</sourcexml>.</note>
        <example>
            <title>Source XML </title>
            <codeblock>

&lt;text&gt;
    &lt;ci:cite searchtype="LEG-REF" status="invalid"&gt;
        &lt;ci:sesslaw&gt;
            &lt;ci:sesslawinfo&gt;
                &lt;ci:sesslawnum num="2010_15a"/&gt;
                &lt;ci:hierpinpoint&gt;&lt;ci:hierlev label="part" num="5"/&gt;&lt;/ci:hierpinpoint&gt;
            &lt;/ci:sesslawinfo&gt;
            &lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;
        &lt;/ci:sesslaw&gt;
        &lt;ci:content&gt;
            &lt;note notetype="xref"&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ci:cite searchtype="LEG-REF" status="invalid"&gt;
                            &lt;ci:sesslaw&gt;
                                &lt;ci:sesslawinfo&gt;
                                    &lt;ci:sesslawnum num="2010_15a"/&gt;
                                    &lt;ci:hierpinpoint&gt;&lt;ci:hierlev label="section" num="81"/&gt;&lt;/ci:hierpinpoint&gt;
                                &lt;/ci:sesslawinfo&gt;
                                &lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;
                            &lt;/ci:sesslaw&gt;
                            &lt;ci:content&gt;EqA 2010, s 81&lt;/ci:content&gt;
                        &lt;/ci:cite&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/note&gt;Part 5
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt; of the Equality Act 2010 (ss 39–83), 
    which contains current equality law relating to the
    workplace, only applies in such circumstances 
    'as are prescribed' to:
&lt;/text&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;text&gt;
    &lt;lnci:cite&gt;
        &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
                &lt;lnci:sesslawnum num="2010_15a"/&gt;
                &lt;lnci:hierpinpoint&gt;
                    &lt;lnci:hierlev label="part" num="5"/&gt;
                &lt;/lnci:hierpinpoint&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
                &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
            &lt;/lnci:sesslawref&gt;
        &lt;/lnci:sesslaw&gt;
        &lt;lnci:content&gt;Part 5&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    &lt;inlinenote notetype="xref"&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:sesslaw&gt;
                &lt;lnci:sesslawinfo&gt;
                    &lt;lnci:sesslawnum num="2010_15a"/&gt;
                    &lt;lnci:hierpinpoint&gt;
                        &lt;lnci:hierlev label="section" num="81"/&gt;
                    &lt;/lnci:hierpinpoint&gt;
                &lt;/lnci:sesslawinfo&gt;
                &lt;lnci:sesslawref&gt;
                    &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                &lt;/lnci:sesslawref&gt;
            &lt;/lnci:sesslaw&gt;
            &lt;lnci:content&gt;EqA 2010, s 81&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/inlinenote&gt; of the Equality Act 2010 (ss 39–83), 
    which contains current equality law relating to the
    workplace, only applies in such circumstances 
    'as are prescribed' to: 
&lt;/text&gt;

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-10-24: <ph id="change_20141024_JCG">Added this instruction. (R4.5 Content Issue List #1994)</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_note-Chof-ci.content-LxAdv-inlinenote.dita  -->
<!--	<xsl:message>Rosetta_note-Chof-ci.content-LxAdv-inlinenote.xsl requires manual development!</xsl:message> -->

	<xsl:template match="ci:cite/ci:content/note">

		<!--  Original Target XPath:  inlinenote   -->
		<inlinenote>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>

	</xsl:template>

	<xsl:template match="text/ci:cite/ci:content/note">

		<!--  Original Target XPath:  inlinenote   -->
		<inlinenote>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>

	</xsl:template>

	<xsl:template match="entry/ci:cite/ci:content/note">

		<!--  Original Target XPath:  inlinenote   -->
		<inlinenote>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>

	</xsl:template>

	<xsl:template match="note">

		<!--  Original Target XPath:  inlinenote   -->
		<inlinenote>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>

	</xsl:template>

	<xsl:template match="ci:content">

		<!--  Original Target XPath:  inlinenote   -->
		<inlinenote>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>

	</xsl:template>

	<xsl:template match="ci:cite">

		<!--  Original Target XPath:  inlinenote   -->
		<inlinenote>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>

	</xsl:template>

	<xsl:template match="text">

		<!--  Original Target XPath:  inlinenote   -->
		<inlinenote>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>

	</xsl:template>

	<xsl:template match="entry">

		<!--  Original Target XPath:  inlinenote   -->
		<inlinenote>
			<xsl:apply-templates select="@* | node()"/>
		</inlinenote>

	</xsl:template>

</xsl:stylesheet>