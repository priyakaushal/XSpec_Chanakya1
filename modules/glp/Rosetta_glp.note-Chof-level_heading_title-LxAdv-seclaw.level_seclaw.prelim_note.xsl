<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_glp.note-Chof-level_heading_title-LxAdv-seclaw.level_seclaw.prelim_note">
    <title>glp:note Child of level/heading/title <lnpid>id-CCCC-10335</lnpid></title>
    <body>
        <section><sourcexml>level/heading/title/glp:note</sourcexml> becomes
                <targetxml>seclaw:level/seclaw:prelim/note</targetxml> with
                <targetxml>seclaw:prelim</targetxml> following <targetxml>heading</targetxml>.<p>If
                there are multiple <sourcexml>glp:note</sourcexml> elements inside
                    <sourcexml>level/heading/title</sourcexml>, all <targetxml>note</targetxml>
                target elements are placed in a single <targetxml>seclaw:prelim</targetxml>, which
                follows <targetxml>heading</targetxml>. For more information on conversion of
                    <sourcexml>glp:note</sourcexml>, refer to <xref href="Rosetta_glp.note-LxAdv-note.dita"/>.</p></section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;level leveltype="1"&gt;
    &lt;heading align="center"&gt;
        &lt;title searchtype="CHAPTER-TITLE"&gt;1. Things&lt;/title&gt;
    &lt;/heading&gt;
    &lt;level leveltype="3"&gt;
        &lt;heading align="left"&gt;
            &lt;title searchtype="DOC-HEADING CHAPTER-TITLE"&gt;(b) Photographs &lt;glp:note&gt;
                    &lt;p&gt;&lt;text&gt; See B.A. MacFarlane, &amp;#8220;Photographic Evidence:
                            Its Probative Value at Trial and the Judicial
                            Discretion to Exclude it from Evidence&amp;#8221;
                            (1973-74) 16 C.L.Q. 149. See also Chapter 18,
                            &amp;#xa7; 18.79 ff.&lt;/text&gt;&lt;/p&gt;&lt;/glp:note&gt;&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext searchtype="COMMENTARY"&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="bf"&gt;&amp;#xa7;2.18 &lt;/emph&gt;The usefulness of
                    photographs as evidence is indisputable. As the Nova Scotia
                    Supreme Court's Appellate Division has put it:&lt;/text&gt;
            &lt;/p&gt;
            ...

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:level leveltype="unclassified"&gt;
            &lt;heading align="left"&gt;
                &lt;title&gt;1. Things&lt;/title&gt;
            &lt;/heading&gt;
            &lt;seclaw:bodytext&gt;
                &lt;seclaw:level leveltype="unclassified"&gt;
                    &lt;heading align="left"&gt;
                        &lt;title&gt;(b) Photographs &lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;seclaw:prelim&gt;
                        &lt;note&gt;
                            &lt;bodytext&gt;&lt;p&gt;&lt;text&gt;See B.A. MacFarlane, &amp;#8220;Photographic Evidence:
                            Its Probative Value at Trial and the Judicial
                            Discretion to Exclude it from Evidence&amp;#8221;
                            (1973-74) 16 C.L.Q. 149. See also Chapter 18,
                            &amp;#xa7; 18.79 ff.&lt;/text&gt;&lt;/p&gt;&lt;/bodytext&gt;
                        &lt;/note&gt;
                    &lt;/seclaw:prelim&gt;
                    ...

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-07-08: <ph id="change_20130708_raj">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-Chof-level_heading_title-LxAdv-seclaw.level_seclaw.prelim_note.dita  -->
	<xsl:message>Rosetta_glp.note-Chof-level_heading_title-LxAdv-seclaw.level_seclaw.prelim_note.xsl requires manual development!</xsl:message> 

	<xsl:template match="level/heading/title/glp:note">

		<!--  Original Target XPath:  seclaw:level/seclaw:prelim/note   -->
		<seclaw:level>
			<seclaw:prelim>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</seclaw:prelim>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="glp:note">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="level/heading/title">

		<!--  Original Target XPath:  note   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

</xsl:stylesheet>