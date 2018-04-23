<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita glp leg">
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-Chof-leg.heading-LxAdv-primlaw.level_note.dita  -->
    <!-- 
        ************************************************************************************************
        FUNCTIONALITY FROM /modules/glp/Rosetta_glp.note-Chof-leg.heading-LxAdv-primlaw.level_note.xsl 
		HAS BEEN MOVED TO THE /modules/leg/leg.heading-LxAdv-heading.xsl and
	    /modules/leg/leg.level-LxAdv-primlaw.level.xsl (and HK01 stream-specific modules as well) 
	    so this module is inactive for HK04 at least.  It
	    will probably need to be revived for AU04 at least, so I'm leaving invalid to attract attention. JL
        ************************************************************************************************-->
   <!-- <xsl:message>the basic functionality of this module has been moved to other modules but AU04 work remains to be done. </xsl:message>-->
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_glp.note_ChildOf_leg.heading-to-LexisAdvance_primlaw.level_note">
    <title><sourcexml>leg:heading/glp:note</sourcexml> to <targetxml>primlaw:level/note</targetxml>
        <lnpid>id-CCCC-10333</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:heading/glp:note</sourcexml> becomes
                    <targetxml>primlaw:level/note</targetxml> with <targetxml>note</targetxml>
                placed after <targetxml>heading</targetxml>.</p>
        </section>
        <example>
            <title>Source 1 XML</title>
            <codeblock>

&lt;leg:level id="CPSA.RSL.DAS05.SCH1"&gt;&lt;leg:level-vrnt leveltype="schedule" searchtype="LEGISLATION SCHEDULE" subdoc="false"
    toc-caption="SCHEDULE 1 RELATED AMENDMENTS AND TRANSITIONAL PROVISIONS"&gt;
    &lt;leg:heading&gt;
        &lt;desig searchtype="SCH-NUM"&gt;
            &lt;designum&gt;&lt;refpt id="CPSA.RSL.DAS05.SCH1" type="ext"/&gt;SCHEDULE 1&lt;/designum&gt;
        &lt;/desig&gt;
        &lt;title searchtype="SCH-TITLE"&gt;RELATED AMENDMENTS AND TRANSITIONAL PROVISIONS&lt;/title&gt;
        &lt;glp:note&gt;
            &lt;h&gt;Editor's note:&lt;/h&gt;
            &lt;p&gt;
                &lt;text&gt;Only Pt 6, the transitional provisions, is reproduced in the service.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/glp:note&gt;
    &lt;/leg:heading&gt;
    ...
&lt;/leg:level&gt;

            </codeblock></example>
        <example>
            <title>Target 1 XML</title>
            <codeblock>

&lt;primlaw:level xml:id="CPSA.RSL.DAS05.SCH1" leveltype="schedule" toc-caption="SCHEDULE 1 RELATED AMENDMENTS AND TRANSITIONAL
    PROVISIONS" subdoc="false"&gt;
    &lt;heading&gt;
        &lt;desig&gt;SCHEDULE 1&lt;/desig&gt;
        &lt;title&gt;RELATED AMENDMENTS AND TRANSITIONAL PROVISIONS&lt;/title&gt;
    &lt;/heading&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;h&gt;Editor's note:&lt;/h&gt;
            &lt;p&gt;
                &lt;text&gt;Only Pt 6, the transitional provisions, is reproduced in the service.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    ...
&lt;/primlaw:level&gt;

        </codeblock>
        </example>
        <section>
            <p><b>For AU04 only</b></p>
            <p>If <sourcexml>leg:heading</sourcexml> contains following siblings of
                    <sourcexml>glp:note</sourcexml>, create a new
                    <targetxml>primlaw:level</targetxml> as the following sibling to the
                    <targetxml>primlaw:level</targetxml> containing <targetxml>note</targetxml>, and
                populate it as follows: <ul>
                    <li>Create the same attributes on the following sibling
                            <targetxml>primlaw:level</targetxml> as the one with the note, except
                        the value of <targetxml>@includeintoc</targetxml> is always 'false'.</li>
                    <li>Convert the siblings following <sourcexml>glp:note</sourcexml> to
                            <targetxml>heading/*</targetxml> as described elsewhere in this
                        document. </li>
                </ul></p>
        </section>
        <example>
            <title>Source 2 XML</title>
            <codeblock>
                
 &lt;leg:level id="AUE.CML.EA95.S141"&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION SECT" subdoc="false"
        leveltype="sect"
        toc-caption="[s 141] s 141 Criminal proceedings: standard of proof"&gt;
        &lt;leg:levelinfo&gt;
            &lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;
            &lt;docinfo:authorattribution&gt;
                &lt;contrib ln.user-displayed="false"&gt;Judge G Bellew and J K
                    Arthur&lt;/contrib&gt;
            &lt;/docinfo:authorattribution&gt;
        &lt;/leg:levelinfo&gt;
        &lt;leg:heading inline="true"&gt;
            &lt;edpnum&gt;
                &lt;refpt id="AUE.CML.EA95.S141" type="ext"/&gt;[s 141]&lt;/edpnum&gt;
            &lt;title searchtype="SECT-TITLE"&gt;Criminal proceedings: standard of
                proof&lt;/title&gt;
            &lt;glp:note&gt;
                &lt;h&gt;Comparison Point Vic&lt;/h&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="ro"&gt;Victoria uses &amp;#x201C;accused&amp;#x201D; in
                            place of &amp;#x201C;defendant&amp;#x201D; throughout this
                            section.&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/glp:note&gt;
            &lt;desig searchtype="SECT-NUM"&gt;
                &lt;designum&gt;141&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:level id="AUE.CML.EA95.S141.1"&gt;
                &lt;leg:level-vrnt searchtype="LEGISLATION SUBSECT" leveltype="subsect"&gt;
                    &lt;leg:levelinfo&gt;
                        &lt;leg:levelstatus isrepealed="false" ln.user-displayed="false"/&gt;
                    &lt;/leg:levelinfo&gt;
                    &lt;leg:heading inline="true"&gt;
                        &lt;desig&gt;
                            &lt;designum&gt;
                                &lt;refpt id="AUE.CML.EA95.S141.1" type="ext"/&gt;(1)&lt;/designum&gt;
                        &lt;/desig&gt;
                    &lt;/leg:heading&gt;
                    &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;In a criminal proceeding, the court is not to find the
                                    case of the prosecution proved unless it is satisfied that
                                    it has been proved beyond reasonable doubt.&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/leg:bodytext&gt;
                    &lt;/leg:levelbody&gt;
                &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
            &lt;!-- .... --&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

            </codeblock></example>
        <example>
            <title>Target 2 XML</title>
            <codeblock>
                
    &lt;primlaw:level alternatetoccaption="[s 141] s 141 Criminal proceedings: standard of proof" includeintoc="true" leveltype="section"&gt;
        &lt;ref:anchor anchortype="global" id="AUE.CML.EA95.S141"/&gt;
        &lt;heading inline="true"&gt;
            &lt;altdesig&gt;[s 141]&lt;/altdesig&gt;
            &lt;title&gt;Criminal proceedings: standard of proof&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlaw:bodytext&gt;
            &lt;note&gt;
                &lt;bodytext&gt;
                    &lt;h&gt;Comparison Point Vic&lt;/h&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="ro"&gt;Victoria uses “accused” in place of “defendant” throughout this section.&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/note&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;
    &lt;primlaw:level alternatetoccaption="[s 141] s 141 Criminal proceedings: standard of proof" includeintoc="false" leveltype="section"&gt;
        &lt;heading&gt;
            &lt;desig&gt;141&lt;/desig&gt;
        &lt;/heading&gt;
        &lt;primlaw:level leveltype="subsection"&gt;
            &lt;ref:anchor anchortype="global" id="AUE.CML.EA95.S141.1"/&gt;
            &lt;heading inline="true"&gt;
                &lt;desig&gt;(1)&lt;/desig&gt;
            &lt;/heading&gt;
            &lt;primlaw:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;In a criminal proceeding, the court is not to find the case of the prosecution proved unless it is satisfied that it has been proved beyond reasonable doubt.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:level&gt;
…
    &lt;/primlaw:level&gt; 


            </codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2016-03-08: <ph id="change_20160308_brt">(AU04 only) Added new section for converting heading markup following
                <sourcexml>glp:note</sourcexml>. Addresses WS6034981.</ph></p>
        </section>
    </body>
	</dita:topic>


</xsl:stylesheet>