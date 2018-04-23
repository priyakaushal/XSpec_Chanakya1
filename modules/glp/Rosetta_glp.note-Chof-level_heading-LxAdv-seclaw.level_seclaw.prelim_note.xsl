<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_glp.note_ChildOf_level_heading-to-LexisAdvance_seclaw.level_seclaw.prelim_note">
    <title><sourcexml>level/heading/glp:note</sourcexml> to
            <targetxml>seclaw:level/seclaw:prelim/note</targetxml> <lnpid>id-CCCC-10334</lnpid></title>
    <body>
        <section>
            <p><sourcexml>level/heading/glp:note</sourcexml> becomes
                    <targetxml>seclaw:level/seclaw:prelim/note</targetxml> with
                    <targetxml>seclaw:prelim</targetxml> following
                <targetxml>heading</targetxml>.</p>
            <p>If there are multiple <sourcexml>glp:note</sourcexml> elements inside
                    <sourcexml>level/heading</sourcexml>, all <targetxml>note</targetxml> elements
                are placed in a single <targetxml>seclaw:prelim</targetxml>, which follows
                    <targetxml>heading</targetxml>.</p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;level id="ABCA_CHAP5.SGM_ABCA.CHAP5.PT5-1.S414" leveltype="para0" subdoc="true"
    toc-caption="[5.414] Acquisition of shares of shareholders dissenting from scheme or contract approved by majority &amp;#x2014; Annotations to section 414"&gt;
    &lt;heading searchtype="COMMENTARY"&gt;
        &lt;edpnum&gt;&lt;refpt id="ABCA.CHAP5.PT5-1.S414" type="ext"/&gt;[5.414] &lt;/edpnum&gt;
        &lt;title&gt;&lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;&lt;remotelink dpsi="006K" refpt="ACLL.CL.S414" remotekey1="REFPTID" service="DOC-ID"&gt;Acquisition of shares of shareholders dissenting
                from scheme or contract approved by majority &amp;#x2014; Annotations to section 414&lt;/remotelink&gt;&lt;/ci:content&gt;
        &lt;/ci:cite&gt;&lt;/title&gt;
        &lt;glp:note&gt;
            &lt;p&gt;
                &lt;text&gt;&lt;emph typestyle="ro"&gt;[Current to July 2010]&lt;/emph&gt;&lt;/text&gt;
            &lt;/p&gt;
        &lt;/glp:note&gt;
    &lt;/heading&gt;
    &lt;level id="ABCA_CHAP5.SGM_ABCA.CHAP5.PT5-1.S414-1" leveltype="subpara0" subdoc="true" toc-caption="Key principles"&gt;
        ...
    &lt;/level&gt;
    ...
&lt;/level&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:level xml:id="ABCA_CHAP5.SGM_ABCA.CHAP5.PT5-1.S414" leveltype="topic" includeintoc="true"
    alternatetoccaption="[5.414] Acquisition of shares of shareholders dissenting from scheme or contract approved by majority &amp;#x2014; Annotations to section 414"&gt;
    &lt;ref:anchor id="ABCA.CHAP5.PT5-1.S414" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;[5.414]&lt;/desig&gt;
        &lt;title&gt;
            &lt;lnci:cite type="legislation"&gt;
                &lt;lnci:content&gt;
                    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                        &lt;ref:content&gt;Acquisition of shares of shareholders dissenting from scheme or contract approved by majority &amp;#x2014;
                            Annotations to section 414&lt;/ref:content&gt;
                        &lt;ref:locator anchoridref="ACLL.CL.S414"&gt;
                            &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="006K-ACLL.CL.S414"/&gt;
                            &lt;/ref:locator-key&gt;
                        &lt;/ref:locator&gt;
                    &lt;/ref:crossreference&gt;
                &lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
    &lt;seclaw:prelim&gt;
        &lt;note&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="ro"&gt;[Current to July 2010]&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/seclaw:prelim&gt;
    &lt;seclaw:bodytext&gt;
        &lt;seclaw:level xml:id="ABCA_CHAP5.SGM_ABCA.CHAP5.PT5-1.S414-1" leveltype="topic" includeintoc="true" alternatetoccaption="Key principles"&gt;
        ...
        &lt;/seclaw:level&gt;
        ... 
    &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-08-22: <ph id="change_20130822_jm">Not a rule change. Target sample
                    modified to remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because
                    value captured in descendant
                        <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
                    Ancillary/illustrative within this module. Change made to promote uniformity
                    across samples.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_glp.note-Chof-level_heading-LxAdv-seclaw.level_seclaw.prelim_note.dita  -->
<!--	<xsl:message>Rosetta_glp.note-Chof-level_heading-LxAdv-seclaw.level_seclaw.prelim_note.xsl requires manual development!</xsl:message> -->

    
</xsl:stylesheet>