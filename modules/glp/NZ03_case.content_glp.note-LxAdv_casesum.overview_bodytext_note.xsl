<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0" exclude-result-prefixes="dita case casesum glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="NZ03_case.content_glp.note-LxAdv_casesum.overview_bodytext_note">
    <title>glp:note[parent::case:content][preceding-sibling::case:typeofcase] <lnpid>id-NZ03-23007</lnpid></title>
    <body>
        <section><p><sourcexml>glp:note[parent::case:content][preceding-sibling::case:typeofcase]</sourcexml>
                becomes <targetxml>casesum:overview/bodytext/note</targetxml>. When
                    <sourcexml>glp:note</sourcexml> occurs in other scenarios, the appropriate
                    instructions from the General Markup section should be used.</p></section>
        <example>
            <codeblock>
&lt;case:content&gt;
    &lt;case:typeofcase&gt;
        &lt;heading&gt;
            &lt;title&gt;Appeal&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;This was an appeal by the prosecution from dismissal in the District Court
                    of a charge of drink-driving on the basis of a ruling that a police officer
                    had no implied licence to enter onto private property to administer a
                    blood-alcohol test.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/case:typeofcase&gt;
    &lt;glp:note&gt;
        &lt;p indent="none"&gt;
            &lt;text&gt;
                &lt;emph typestyle="bf"&gt;Editorial note&lt;/emph&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p indent="none"&gt;
            &lt;text&gt;It has been held that it is a question of fact whether use by an occupier
                    of the phrase &amp;#x201C;fuck off&amp;#x201D; to a police officer is sufficient to
                    terminate the implied licence to enter or remain on private property (&lt;emph
                        typestyle="it"&gt;Snook v Mannion&lt;/emph&gt; [1982] RTR&amp;#x00A0;321 at
                    p&amp;#x00A0;324; &lt;emph typestyle="it"&gt;Gilham v Breidenbach&lt;/emph&gt; [1982]
                    RTR&amp;#x00A0;328n at&amp;#x00A0;p&amp;#x00A0;331; &lt;emph typestyle="it"&gt;Coster v
                        Attorney-General&lt;/emph&gt; HC&amp;#x00A0;Wellington CP&amp;#x00A0;144/95,
                    5&amp;#x00A0;March&amp;#x00A0;1998 at p&amp;#x00A0;7 per Doogue&amp;#x00A0;J.&lt;/text&gt;
        &lt;/p&gt;
            ...
    &lt;/glp:note&gt;
        ...
&lt;/case:content&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;casesum:editorialsummary summarysource="lexis-caselaw-editorial"&gt;
    &lt;casesum:overview&gt;
        &lt;heading&gt;
            &lt;title&gt;Appeal&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;This was an appeal by the prosecution from dismissal in the District Court
                        of a charge of drink-driving on the basis of a ruling that a police officer
                        had no implied licence to enter onto private property to administer a
                        blood-alcohol test.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/casesum:overview&gt;
    
&lt;!-- created to capture case:content/glp:note --&gt;
    &lt;casesum:overview&gt;
        &lt;bodytext&gt;
            &lt;note&gt;
                &lt;bodytext&gt;
                    &lt;p indent="none"&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="bf"&gt;Editorial note&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                    &lt;p indent="none"&gt;
                        &lt;text&gt;It has been held that it is a question of fact whether use by an occupier
                                of the phrase &amp;#x201C;fuck off&amp;#x201D; to a police officer is sufficient to
                                terminate the implied licence to enter or remain on private property (&lt;emph
                                    typestyle="it"&gt;Snook v Mannion&lt;/emph&gt; [1982] RTR&amp;#x00A0;321 at
                                p&amp;#x00A0;324; &lt;emph typestyle="it"&gt;Gilham v Breidenbach&lt;/emph&gt; [1982]
                                RTR&amp;#x00A0;328n at&amp;#x00A0;p&amp;#x00A0;331; &lt;emph typestyle="it"&gt;Coster v
                                    Attorney-General&lt;/emph&gt; HC&amp;#x00A0;Wellington CP&amp;#x00A0;144/95,
                                5&amp;#x00A0;March&amp;#x00A0;1998 at p&amp;#x00A0;7 per Doogue&amp;#x00A0;J.&lt;/text&gt;
                    &lt;/p&gt;
                        ...
                &lt;/bodytext&gt;
            &lt;/note&gt;
        &lt;/bodytext&gt;
    &lt;/casesum:overview&gt;
&lt;/casesum:editorialsummary&gt;
       </codeblock>
        </example>
        <!--<section>
            <title>Changes</title>
            </section>-->
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ03_CaseLaw\NZ03_case.content_glp.note-LxAdv_casesum.overview_bodytext_note.dita  -->
	<!--<xsl:message>NZ03_case.content_glp.note-LxAdv_casesum.overview_bodytext_note.xsl requires manual development!</xsl:message> -->

	<xsl:template match="glp:note[parent::case:content][preceding-sibling::case:typeofcase]">

		<!--  Original Target XPath:  casesum:overview/bodytext/note   -->
		<casesum:overview>
			<bodytext>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</bodytext>
		</casesum:overview>

	</xsl:template>

</xsl:stylesheet>