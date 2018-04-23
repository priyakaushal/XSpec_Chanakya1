<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_consecutive-note-LxAdv-notes">
    <title>Consecutive <sourcexml>note</sourcexml> elements to <targetxml>notes</targetxml> <lnpid>id-CCCC-10407</lnpid></title>
    <body>
        <section>
            <p>The presentation specs for some NZ documents (NZ06 Acts From Services, NZ10 Regs From
        Services, NZ11 LNPG-Practical Guidance, NZ12 Regulatory Materials From Services, NZ13
        Treaties From Services, NZ18 Court Order from Services) require that consecutive notes
        appear in a single 'note' box that is displayed to the end-user. To get all notes in the
        same box, consecutive target <targetxml>note</targetxml> elements must be wrapped in
          <targetxml>notes</targetxml>. This instruction applies to all consecutive target
          <targetxml>note</targetxml> elements regardess of the source: <sourcexml>note</sourcexml>,
          <sourcexml>leg:histnote</sourcexml>, <sourcexml>glp:note</sourcexml>, etc. This
        instruction <b>only</b> applies to target <targetxml>note</targetxml> elements, and <b>does
          not</b> apply to other target elements such as <targetxml>marginnote</targetxml> or
          <targetxml>inlinenote</targetxml> elements.</p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;leg:bodytext&gt;
    &lt;leg:histnote&gt;
        &lt;p&gt;
            &lt;text&gt;Date of assent: 4 May 1999&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:histnote&gt;
    &lt;leg:histnote&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;Hist.&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;p&gt;
            &lt;text&gt;1981 No&amp;#x00A0;125: Repealed on 1 January 2004 by Wine Act 2003 (2003
                No&amp;#x00A0;114), s122.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/leg:histnote&gt;
    ...
&lt;/leg:bodytext&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;notes&gt;
      &lt;note notetype="historical"&gt;
        &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Date of assent: 4 May 1999&lt;/text&gt;
                &lt;/p&gt;
        &lt;/bodytext&gt;
      &lt;/note&gt;
      &lt;note notetype="historical"&gt;
        &lt;heading&gt;
            &lt;title&gt;Hist.&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;1981 No&amp;#x00A0;125: Repealed on 1 January 2004 by Wine Act
                    2003 (2003 No&amp;#x00A0;114), s122.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
       &lt;/note&gt;
    &lt;/notes&gt;
&lt;/primlaw:bodytext&gt;

    </codeblock>
        </example>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;leg:preamble&gt;
    &lt;leg:bodytext searchtype="LEGISLATION"&gt;
        &lt;p&gt;
            &lt;text align="center"&gt;&amp;#x00A0;&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Repealed&lt;nl/&gt;&lt;/emph&gt;
                &lt;glp:note&gt;
                    &lt;p&gt;
                        &lt;text&gt;{&amp;#x00A0;Editorial Note: s25 &amp;amp; 26 were continued in force
                            as if they were regulations made under 
                           &lt;ci:cite searchtype="LEG-REF"/&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/glp:note&gt;
                &lt;glp:note&gt;
                    &lt;p&gt;
                        &lt;text&gt;{&amp;#x00A0;Editorial Note: Notices given under s26A continue
                            under 2003 No 114&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/glp:note&gt;
            &lt;/text&gt;
            &lt;leg:histnote&gt;
                &lt;leg:heading&gt;
                    &lt;title&gt;Hist.&lt;/title&gt;
                &lt;/leg:heading&gt;
                &lt;p&gt;
                    &lt;text&gt;1981 No&amp;#x00A0;125: Repealed on 1 January 2004 by Wine Act 2003 (2003
                        No&amp;#x00A0;114), s122.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/leg:histnote&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text align="center"&gt;____________________________________&lt;/text&gt;
        &lt;/p&gt;
        &lt;leg:history id="1981A125_LEGISLATIVE_HISTORY"&gt;
            &lt;leg:heading ln.user-displayed="false"&gt;
                &lt;title&gt;
                    &lt;refpt id="1981A125_LEGISLATIVE_HISTORY" type="ext"/&gt;Legislative History
                    (Repealed) &lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;p&gt;
                &lt;text align="center"&gt;
                    &lt;emph typestyle="bf"&gt;Legislative History (Repealed)&lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/leg:history&gt;
        &lt;leg:history id="1981A125_INDEX"&gt;
            &lt;leg:heading ln.user-displayed="false"&gt;
                &lt;title&gt;
                    &lt;refpt id="1981A125_INDEX" type="ext"/&gt;Amending Legislation(Repealed)&lt;/
                    title&gt;
            &lt;/leg:heading&gt;
            &lt;p&gt;
                &lt;text align="center"&gt;
                    &lt;emph typestyle="bf"&gt;Amending Legislation (Repealed)&lt;/emph&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/leg:history&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:preamble&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;&amp;#x00A0;&lt;/text&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;
            &lt;emph typestyle="it"&gt;Repealed&lt;proc:nl/&gt;&lt;/emph&gt;&lt;/text&gt;
    &lt;/p&gt;
  &lt;notes&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;{&amp;#x00A0;Editorial Note: s25 &amp;amp; 26 were continued in
                    force as if they were regulations made under
                    &lt;lnci:cite/&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; {&amp;#x00A0;Editorial Note: Notices given under s26A continue
                    under 2003 No 114, s41&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    &lt;note notetype="historical"&gt;
        &lt;heading&gt;
            &lt;title&gt;Hist.&lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;1981 No&amp;#x00A0;125: Repealed on 1 January 2004 by Wine Act
                    2003 (2003 No&amp;#x00A0;114), s122.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
  &lt;/notes&gt;
    &lt;p&gt;
        &lt;text&gt;____________________________________&lt;/text&gt;
    &lt;/p&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;heading&gt;
            &lt;title&gt;Legislative History (Repealed)&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlawhist:primlawhist&gt;
            &lt;heading&gt;
                &lt;title&gt;Legislative History&lt;/title&gt;
            &lt;/heading&gt;
            &lt;primlawhist:histgrp&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;
                                &lt;emph typestyle="bf"&gt;Legislative History (Repealed)&lt;/
                                    emph&gt;
                            &lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
        &lt;/primlawhist:primlawhist&gt;
        &lt;primlawhist:primlawhist&gt;
            &lt;heading&gt;&lt;title&gt;Amending Legislation&lt;/title&gt;&lt;/heading&gt;
            &lt;primlawhist:histgrp&gt;
                &lt;primlawhist:histitem&gt;
                    &lt;bodytext&gt;
                        &lt;p&gt;
                            &lt;text&gt;
                                &lt;emph typestyle="bf"&gt;Amending Legislation (Repealed)&lt;/
                                    emph&gt;
                            &lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/bodytext&gt;
                &lt;/primlawhist:histitem&gt;
            &lt;/primlawhist:histgrp&gt;
        &lt;/primlawhist:primlawhist&gt;
    &lt;/primlaw:level&gt;
   
&lt;/primlaw:bodytext&gt;        

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
          <p>2014-03-04: <ph id="change_20140304_JCG">Added NZ11 to the list of streams affected by this instruction. Also added some clarifying comments, including that this instruction only applies to target note elements and not marginnote or inlinenote elements.</ph>
          </p>
          <p>2013-11-20: <ph id="change_20131121_brt">New. R4.5 PIT Issue #632. Streams this
                    change immediately applies to (data exists for) -- NZ06, NZ10, NZ12, NZ13, NZ18.
                    No additional streams will be affected in the future. </ph>
            </p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_NZ-consecutive-note-LxAdv-notes.dita  -->

<!-- Paul:  this functionality is in a template in this module:    
    Rosetta_glp.note-to-LexisAdvance_note
    
    I put it in there so that other streams could do similar if desired.
    
    -->
</xsl:stylesheet>