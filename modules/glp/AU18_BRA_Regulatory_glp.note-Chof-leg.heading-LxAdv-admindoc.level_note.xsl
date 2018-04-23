<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:glp="http://www.lexis-nexis.com/glp"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns='http://www.lexisnexis.com/xmlschemas/content/shared/base/1/'
    xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0"
    exclude-result-prefixes="dita leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="Rosetta_glp.note_ChildOf_leg.heading-to-LexisAdvance_admindoc.level_note">
        <title><sourcexml>leg:heading/glp:note/glp:note</sourcexml> to
                <targetxml>admindoc:prelim/note</targetxml>
            <lnpid>id-AU18-21408</lnpid></title>
        <body>
            <section>
                <p><sourcexml>leg:heading/glp:note/glp:note</sourcexml> becomes
                        <targetxml>heading</targetxml> followed by
                        <targetxml>admindoc:prelim</targetxml>with <targetxml>note</targetxml> moved
                    outside of the heading and within <targetxml>admindoc:prelim</targetxml>.</p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock> &lt;leg:level id="BRA.BC1.BCA96.CLA1-1"&gt; &lt;leg:level-vrnt
                    leveltype="clause" searchtype="LEGISLATION CLAUSE" subdoc="true"
                    toc-caption="[A1.1] Definitions"&gt; &lt;leg:heading&gt; &lt;title
                    searchtype="CLAUSE-TITLE"&gt; &lt;refpt id="BRA.BC1.BCA96.CLA1-1"
                    type="ext"/&gt;Definitions&lt;/title&gt; &lt;glp:note&gt;
                    &lt;h&gt;Note:&lt;/h&gt; &lt;p&gt; &lt;text&gt;States and Territories may vary
                    or add to the definitions contained in &lt;ci:cite searchtype="LEG-REF"&gt;
                    &lt;ci:content&gt; &lt;remotelink dpsi="006Z" refpt="BRA.BC1.BCA96.CLA1-1"
                    remotekey1="REFPTID" service="DOC-ID"&gt;A1.1&lt;/remotelink&gt;
                    &lt;/ci:content&gt; &lt;/ci:cite&gt; at the relevant State or Territory
                    Appendix. &lt;/text&gt; &lt;/p&gt; &lt;/glp:note&gt; &lt;glp:note&gt;
                    &lt;h&gt;[Note from the author:&lt;/h&gt; &lt;p&gt; &lt;text&gt;The lead in
                    clause has been amended to refer you to the State and Territory Appendix
                    highlighting that appendices may vary or add to the definitions.] &lt;/text&gt;
                    &lt;/p&gt; &lt;/glp:note&gt; &lt;desig
                    searchtype="CLAUSE-NUM"&gt;&lt;designum&gt;[A1.1]&lt;/designum&gt;&lt;/desig&gt;
                    &lt;/leg:heading&gt; &lt;!-- ETC --&gt; &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;admindoc:level leveltype="clause" alternatetoccaption="[A.1.1]
                    Definitions" includeintoc="true"&gt; &lt;ref:anchor id="BRA.BC1.BCA96.CLA1-1"
                    anchortype="global"/&gt; &lt;heading&gt; &lt;title&gt;Definitions&lt;/title&gt;
                    &lt;/heading&gt; &lt;admindoc:prelim&gt; &lt;note&gt; &lt;bodytext&gt;
                    &lt;h&gt;Note:&lt;/h&gt; &lt;p&gt; &lt;text&gt;States and Territories may vary
                    or add to the definitions contained in &lt;lnci:cite&gt; &lt;lnci:content&gt;
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;A1.1&lt;/ref:content&gt; &lt;ref:locator
                    anchoridref="BRA.BC1.BCA96.CLA1-1"/&gt; &lt;/ref:crossreference&gt;
                    &lt;/lnci:content&gt; &lt;/lnci:cite&gt; at the relevant State or Territory
                    Appendix.&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt; &lt;note&gt;
                    &lt;bodytext&gt; &lt;h&gt;[Note from the author:&lt;/h&gt; &lt;p&gt;
                    &lt;text&gt;The lead in clause has been amended to refer you to the State and
                    Territory Appendix highlighting that appendices may vary or add to the
                    definitions.]&lt;/text&gt; &lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt;
                    &lt;/admindoc:prelim&gt; &lt;/admindoc:level&gt; </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2013-05-15 <ph id="change_20130515_wl">Updated the Target XML XPath moving
                        admindoc:prelim as a sibling follow heading instead of a child</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU18_BRA_Regulatory\AU_BRA_glp.note-Chof-leg.heading-LxAdv-admindoc.level_note.dita  -->
    <!--<xsl:message>AU_BRA_glp.note-Chof-leg.heading-LxAdv-admindoc.level_note.xsl requires manual development!</xsl:message>-->

    <xsl:template match="leg:heading[child::glp:note]">
        <heading>
             <xsl:if test="child::title">
                 <xsl:apply-templates select="@* | node() except glp:note"/>
            </xsl:if>
        </heading>
        <xsl:if test="child::glp:note">
            <admindoc:prelim>
                <xsl:apply-templates select="@* | node() except (title | desig)"/>
            </admindoc:prelim>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
