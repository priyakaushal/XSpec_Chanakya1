<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:frm="http://www.lexis-nexis.com/glp/frm"
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita frm">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK14_Precedents_note">
        <title>note <lnpid>id-UK14-30219</lnpid></title>
        <body>
            <p>Mapping for <sourcexml>note</sourcexml> depends on <sourcexml>@notetype</sourcexml>, as
                follows:</p>
            <section><ul>
                <li><sourcexml>note[@notetype="instruction"]</sourcexml> becomes
                    <targetxml>note[@notetype="instruction"]/bodytext</targetxml>. In addition:<ul>
                        <li><u>Wrap adjacent notes:</u> If source contains multiple adjacent
                            <sourcexml>note[@notetype="instruction"]</sourcexml> then generate
                            <targetxml>notes</targetxml> wrapper to contain adjacent
                            <targetxml>note[@notetype="instruction"]</targetxml>.</li>
                        <li><u>Move some notes:</u> In the following scenarios,
                            <targetxml>note</targetxml> becomes a following sibling:<ul>
                                <li><sourcexml>title/note</sourcexml> becomes
                                    <targetxml>title</targetxml> followed by sibling
                                    <targetxml>note</targetxml></li>
                                <li><sourcexml>p/note</sourcexml>. For details, see "Generate
                                    container", immediately below.</li>
                            </ul></li>
                        <li><u>Generate <targetxml>container</targetxml></u> for the following scenarios:<ul>
                            <li><sourcexml>defdesc</sourcexml> or <sourcexml>li</sourcexml> with
                                child <sourcexml>p</sourcexml> immediately followed by
                                <sourcexml>note</sourcexml>. The <sourcexml>p</sourcexml>
                                and <sourcexml>note</sourcexml> elements map to
                                <targetxml>p</targetxml> and <targetxml>note</targetxml>, as
                                per schema. <b>Additional rule</b>: For target, generate
                                <targetxml>pgrp</targetxml> container to hold
                                <targetxml>p</targetxml> and <targetxml>note</targetxml>.
                                The container holds only the <targetxml>note</targetxml> and the
                                preceding <targetxml>p</targetxml>. (See Example 1 which
                                illustrates with <sourcexml>defdesc</sourcexml> markup. The
                                <sourcexml>li</sourcexml> scenario is the same.)</li>
                            <!-- SUPERSEDED Nov 2016
                                <li><sourcexml>p/note</sourcexml>. Move the note and generate
                                    container, as follows: <sourcexml>p/note</sourcexml> becomes
                                        <targetxml>p</targetxml> or <targetxml>form:p</targetxml>
                                    (whichever is the target) followed by sibling
                                        <targetxml>note</targetxml>. And also generate
                                        <targetxml>pgrp</targetxml> to hold the converted
                                    elements.</li>-->
                            <li><sourcexml>p/note</sourcexml>. Move note to become following sibling of p or form:p and generate container, as follows:<ul>
                                <li>If target for <sourcexml>p</sourcexml> is <targetxml>p</targetxml>, then <sourcexml>p/note</sourcexml> becomes <targetxml>p</targetxml> followed by sibling <targetxml>note</targetxml>. And also generate
                                    container <targetxml>pgrp</targetxml> to hold the converted elements. If there are more than one consecutive <sourcexml>note</sourcexml> elements, wrap them all in a <targetxml>notes</targetxml> element. See
                                    examples 5 and 6.</li>
                                <li>If target for <sourcexml>p</sourcexml> is <targetxml>form:p</targetxml>, then <sourcexml>p/note</sourcexml> becomes <targetxml>form:p</targetxml> followed by sibling <targetxml>note</targetxml>. And also
                                    generate container <targetxml>form:div[@divtype="para-and-note"]</targetxml> to hold the converted elements. If there are more than one consecutive <sourcexml>note</sourcexml> elements, wrap them all in a
                                    <targetxml>notes</targetxml> element. See examples 7 and 8.</li>
                            </ul></li>
                        </ul></li>
                        <li>Move <sourcexml>note</sourcexml> occurring between
                            <sourcexml>clause</sourcexml> end-tags. Sometimes a clause has child
                            clauses and a note will occur after the last child and before the close
                            of the parent clause. The note is part of the parent clause and must be
                            moved for target so that <targetxml>note</targetxml> becomes the first
                            item within parent <targetxml>form:clause/form:bodytext</targetxml>. See
                            Example 3 below. </li>
                    </ul></li>
            </ul><note>A heading is allowed as direct child, i.e.
                <targetxml>note/heading</targetxml>. Anything else is mapped within
                <targetxml>note/bodytext</targetxml>.</note>
                <note>Please notice: Prior to Oct 5 2016, there was a special rule for
                    <sourcexml>p/note</sourcexml> as child of <sourcexml>frm:alternate</sourcexml>
                    and <sourcexml>frm:optional</sourcexml>. Concerned a wrapping element. No longer a
                    special scenario because superseded by wrapper rules now added in CI section <xref
                        href="UK14_Precedents_alt-opt-elements.dita">"frm:alternate, frm:optional
                        (id-UK14-30225)"</xref>.</note>
            </section>
            <section><ul>
                <li><sourcexml>note[@notetype="xref"]</sourcexml> becomes
                    <targetxml>marginnote/bodytext</targetxml>. In addition: <ul>
                        <li><u>Merge notes:</u> If source contains multiple adjacent
                            <sourcexml>note[@notetype="xref"]</sourcexml> then place contents of
                            all into one <targetxml>marginnote/bodytext</targetxml>.</li>
                        <li><u>Generate</u>
                            <targetxml>ref:anchor[@id="" @anchortype="local"]</targetxml> as first
                            child of <targetxml>marginnote</targetxml>. Value of
                            <targetxml>@id</targetxml> must be unique within the document.</li>
                    </ul></li>
            </ul></section>
            <!-- next section, @notetype="commentary", occurs in docs derived from UK12-Commentary sources. McNally Dec 21 2016 -->
            <section><ul>
                <li><sourcexml>note[@notetype="commentary"]</sourcexml> becomes
                    <targetxml>note[@notetype="commentary"]/bodytext</targetxml>. In addition:<ul>
                        <li><u>Wrap adjacent notes:</u> If source contains multiple adjacent
                            <sourcexml>note[@notetype="commentary"]</sourcexml> then generate
                            <targetxml>notes</targetxml> wrapper to contain adjacent
                            <targetxml>note[@notetype="commentary"]</targetxml>.</li>
                    </ul></li>
            </ul></section>
            
            <pre>
        <b>EXAMPLE 1.</b> <sourcexml>note[@notetype="instruction"]</sourcexml>, <sourcexml>note[@notetype="xref"]</sourcexml>
            
<b><i>Source XML</i></b>
&lt;deflist>
  &lt;defitem>
     &lt;defterm>Business Day&lt;/defterm>
     &lt;defdesc>
        &lt;p>
           &lt;text>means a day, other than a Saturday, Sunday or public holiday, on which banks
               are open for business in London;&lt;/text>
        &lt;/p>
        &lt;note notetype="instruction" searchtype="COMMENTARY">
           &lt;heading>
              &lt;title>Public Holiday&lt;/title>
           &lt;/heading>
           &lt;p>
              &lt;text>&lt;note notetype="xref">&lt;p>&lt;text>Jones v Smith&lt;/text>&lt;/p>&lt;/note>
                  &lt;note notetype="xref">&lt;p>&lt;text>Brown v Green&lt;/text>&lt;/p>&lt;/note>Public holidays
                  include national and local holidays.&lt;/text>
           &lt;/p>
        &lt;/note>
        &lt;p>
           &lt;text>hours of operation are not limited to...&lt;/text>
        &lt;/p>
     &lt;/defdesc>
  &lt;/defitem>
&lt;/deflist>
<b><i>Target XML</i></b>
&lt;deflist>
  &lt;defitem>
     &lt;defterm>Business Day&lt;/defterm>
     &lt;defdesc>
        &lt;bodytext>
           &lt;pgrp>
              &lt;p>
                 &lt;text>means a day, other than a Saturday, Sunday or public holiday, on 
                     which banks are open for business in London;&lt;/text>
              &lt;/p>
              &lt;note notetype="instruction">
                 &lt;heading>
                    &lt;title>Public Holiday&lt;/title>
                 &lt;/heading>
                 &lt;bodytext>
                    &lt;p>
                       &lt;text>&lt;marginnote>&lt;ref:anchor id="abc" anchortype="local"/>
                              &lt;bodytext>&lt;p>&lt;text>Jones v Smith&lt;/text>&lt;/p>
                               &lt;p>&lt;text>Brown v Green&lt;/text>&lt;/p>&lt;/bodytext>&lt;/marginnote>Public 
                                 holidays include national and local holidays.&lt;/text>
                    &lt;/p>
                 &lt;/bodytext>
              &lt;/note>
           &lt;/pgrp>
           &lt;p>
              &lt;text>hours of operation are not limited to...&lt;/text>
           &lt;/p>
        &lt;/bodytext>
     &lt;/defdesc>
  &lt;/defitem>
&lt;/deflist>

        </pre>

            <pre>
        <b>EXAMPLE 2.</b> <sourcexml>p/note</sourcexml> when target <targetxml>form:p</targetxml>
            
<b><i>Source XML</i></b>

&lt;clause&gt;
    &lt;p&gt;
        &lt;text&gt;It is declared that the income ...&lt;/text&gt;
        &lt;note notetype="instruction" searchtype="COMMENTARY"&gt;
            &lt;p&gt;
                &lt;text&gt;Based on the order made in ...&lt;/text&gt;
            &lt;/p&gt;
        &lt;/note&gt;
    &lt;/p&gt;
    &lt;p&gt;
        &lt;text&gt;All revenue declarations ...&lt;/text&gt;
    &lt;/p&gt;
&lt;/clause&gt;
 
<b><i>Target XML</i></b>

&lt;form:clause&gt;
    &lt;form:bodytext&gt;
        &lt;form:div divtype="para-and-note"&gt;
            &lt;form:p&gt;
                &lt;form:text&gt;It is declared that the income ...&lt;/form:text&gt;
            &lt;/form:p&gt;
            &lt;note notetype="instruction"&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;Based on the order made in ...&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/note&gt;
        &lt;/form:div&gt;
        &lt;form:p&gt;
            &lt;form:text&gt;All revenue declarations ...&lt;/form:text&gt;
        &lt;/form:p&gt;
    &lt;/form:bodytext&gt;
&lt;/form:clause&gt;

        </pre>

            <pre>
        <b>EXAMPLE 3.</b> Move <sourcexml>note</sourcexml> occurring between <sourcexml>clause</sourcexml> end-tags
            
<b><i>Source XML</i></b>

&lt;clause&gt;
   &lt;p&gt;
       &lt;text&gt;Notification will be provided ...&lt;/text&gt;
   &lt;/p&gt;
   &lt;clause&gt;
      &lt;p&gt;
         &lt;text&gt;Exceptions are allowed if ...&lt;/text&gt;
         &lt;note notetype="instruction" searchtype="COMMENTARY"&gt;
             &lt;p&gt;
                 &lt;text&gt;The purpose of exceptions is to ...&lt;/text&gt;
             &lt;/p&gt;
         &lt;/note&gt;
      &lt;/p&gt;
      &lt;p&gt;
          &lt;text&gt;In all cases ...&lt;/text&gt;
      &lt;/p&gt;
   &lt;/clause&gt;
   &lt;note notetype="instruction" searchtype="COMMENTARY"&gt;  &lt;!-- moves for target --&gt;
      &lt;p&gt;
         &lt;text&gt;The Notification requirement ...&lt;/text&gt;
      &lt;/p&gt;
   &lt;/note&gt;
&lt;/clause&gt;
 
<b><i>Target XML</i></b>

&lt;form:clause&gt;
   &lt;form:bodytext&gt;
      &lt;note notetype="instruction"&gt;  &lt;!-- moved from source position --&gt;
         &lt;bodytext&gt;
            &lt;p&gt;
               &lt;text&gt;The Notification requirement ...&lt;/text&gt;
            &lt;/p&gt;
         &lt;/bodytext&gt;
      &lt;/note&gt;
      &lt;form:p&gt;
         &lt;form:text&gt;Notification will be provided ...&lt;/form:text&gt;
      &lt;/form:p&gt;
      &lt;form:clause&gt;
         &lt;form:bodytext&gt;
            &lt;form:div divtype="para-and-note"&gt;
               &lt;form:p&gt;
                  &lt;form:text&gt;Exceptions are allowed if ...&lt;/form:text&gt;
               &lt;/form:p&gt;
               &lt;note notetype="instruction"&gt;
                  &lt;bodytext&gt;
                     &lt;p&gt;
                        &lt;text&gt;The purpose of exceptions is to ...&lt;/text&gt;
                     &lt;/p&gt;
                  &lt;/bodytext&gt;
               &lt;/note&gt;
            &lt;/form:div&gt;
            &lt;form:p&gt;
               &lt;form:text&gt;In all cases ...&lt;/form:text&gt;
            &lt;/form:p&gt;
         &lt;/form:bodytext&gt;
      &lt;/form:clause&gt;
   &lt;/form:bodytext&gt;
&lt;/form:clause&gt;

        </pre>
            <pre>
        <b>EXAMPLE 4.</b> <sourcexml>note[@notetype="commentary"]</sourcexml>
            
<b><i>Source XML</i></b>

&lt;clause&gt;
    &lt;p&gt;
        &lt;text&gt;Section 212 of the Companies Act 1985 gives ...&lt;/text&gt;
    &lt;/p&gt;
    &lt;note notetype="commentary"&gt;
        &lt;p&gt;
            &lt;text&gt;The Companies Act specifies...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/note&gt;
    &lt;note notetype="commentary"&gt;
        &lt;p&gt;
            &lt;text&gt;Words in square brackets indicate ...&lt;/text&gt;
        &lt;/p&gt;
    &lt;/note&gt;
&lt;/clause&gt;
 
<b><i>Target XML</i></b>

&lt;form:clause&gt;
  &lt;form:bodytext&gt;
     &lt;form:p&gt;
         &lt;form:text&gt;Section 212 of the Companies Act 1985 gives ...&lt;/form:text&gt;
     &lt;/form:p&gt;
     &lt;notes&gt;
        &lt;note notetype="commentary"&gt;
           &lt;bodytext&gt;
              &lt;p&gt;
                 &lt;text&gt;The Companies Act specifies...&lt;/text&gt;
              &lt;/p&gt;
           &lt;/bodytext&gt;
        &lt;/note&gt;
        &lt;note notetype="commentary"&gt;
           &lt;bodytext&gt;
              &lt;p&gt;
                 &lt;text&gt;Words in square brackets indicate ...&lt;/text&gt;
              &lt;/p&gt;
           &lt;/bodytext&gt;
        &lt;/note&gt;
     &lt;/notes&gt;
  &lt;/form:bodytext&gt;
&lt;/form:clause&gt;

        </pre>
            
            <pre>
        <b>EXAMPLE 5.</b> <sourcexml>note[@notetype="instruction"]</sourcexml> One note, p
            
<b><i>Source XML</i></b>&lt;p id="d177237e1516">
    &lt;text>means the Construction (Design and Management) Regulations 2015.&lt;/text>
&lt;/p>
&lt;note notetype="instruction" searchtype="COMMENTARY">
    &lt;heading>
        &lt;desig>
            &lt;designum>6&lt;/designum>
        &lt;/desig>
        &lt;refpt id="dn_6"/>
    &lt;/heading>
    &lt;p id="d177237e1523">
        &lt;text>Ie the Construction (Design and Management) Regulations 2007,&lt;ci:cite 
        searchtype="LEG-REF" status="valid" normcite="UK_SI 2015 51 Title">
            &lt;ci:content>SI 2015/51&lt;/ci:content>
        &lt;/ci:cite>.&lt;/text>
    &lt;/p>
&lt;/note>
                
                
                <b><i>Target XML</i></b>
           &lt;pgrp>
    &lt;p xml:id="d177237e1516">
        &lt;text> means the Construction (Design and Management) Regulations 2015. &lt;/text>
    &lt;/p>
    &lt;note notetype="instruction">
        &lt;ref:anchor anchortype="local" id="dn_6"/>
        &lt;heading>
            &lt;desig>6&lt;/desig>
        &lt;/heading>
        &lt;bodytext>
            &lt;p xml:id="d177237e1523">
                &lt;text> Ie the Construction (Design and Management) Regulations 2007, &lt;lnci:cite 
                normcite="UK_SI 2015 51 Title" status="valid" type="legislation">
                    &lt;lnci:content>
                        &lt;lnci:span CITE-REF="#600505#a21#2015#000000000000051#" 
                        alttext="UK NormCite Parliament Statutory Instruments"
                        cfi:contentclasscode="109" cfi:normcite="UK_SI 2015 51 Title" 
                        spanid="I4M18BTP266000FNJV900247">SI 2015/51&lt;/lnci:span>
                    &lt;/lnci:content>
                &lt;/lnci:cite> . &lt;/text>
            &lt;/p>
        &lt;/bodytext>
    &lt;/note>
&lt;/pgrp>     
                
                 </pre>
        <pre>
        <b>EXAMPLE 6.</b> <sourcexml>note[@notetype="instruction"]</sourcexml> Multiple consecutive note, p
            
<b><i>Source XML</i></b>
        &lt;p id="d177237e1575">
    &lt;text>means&lt;frm:prompt id="d177237e1577" prompttype="number">insert number&lt;/frm:prompt>years
    &lt;link refpt="dn_8" alt-label="drafting-note">8&lt;/link>commencing on and including
    &lt;frm:prompt id="d177237e1582" prompttype="date">insert date of commencement of the term&lt;/frm:prompt>
        &lt;link refpt="dn_9" alt-label="drafting-note">9&lt;/link>.&lt;/text>
&lt;/p>
&lt;note notetype="instruction" searchtype="COMMENTARY">
    &lt;heading>
        &lt;desig>
            &lt;designum>7&lt;/designum>
        &lt;/desig>
        &lt;refpt id="dn_7"/>
    &lt;/heading>
    &lt;p id="d177237e1592">
        &lt;text>As to the commencement of the term see&lt;remotelink service="DOC-ID" remotekey1="REFPTID" 
        dpsi="0427" refpt="acronym:EFPP::paragraph:588" status="invalid">vol 22(1) (2009) LANDLORD AND 
        TENANT (BUSINESS TENANCIES) Paragraph 186 [588]&lt;/remotelink>. As to the impact of the length 
        of the term upon registration see note
        &lt;link refpt="dn_1" alt-label="drafting-note">1&lt;/link>[558] above.&lt;/text>
    &lt;/p>
&lt;/note>
&lt;note notetype="instruction" searchtype="COMMENTARY">
    &lt;heading>
        &lt;desig>
            &lt;designum>8&lt;/designum>
        &lt;/desig>
        &lt;refpt id="dn_8"/>
    &lt;/heading>
    &lt;p id="d177237e1704">
        &lt;text>For estate management reasons it is usually desirable to insert a quarter day here—or a 
        rent day when rent is due on days other than quarter days—ie generally the one preceding the 
        earlier of the date of possession and the date of execution.&lt;/text>
    &lt;/p>
&lt;/note>    
            
            <b><i>Target XML</i></b>
         &lt;pgrp>
    &lt;p xml:id="d177237e1575">
        &lt;text> means &lt;form:prompt contenttype="number" xml:id="d177237e1577">insert number&lt;/form:prompt>
        years &lt;ref:lnlink>
                &lt;ref:marker>8&lt;/ref:marker>
                &lt;ref:locator anchoridref="dn_8"/>
            &lt;/ref:lnlink> commencing on and including &lt;form:prompt contenttype="date" xml:id="d177237e1582">
            insert date of commencement of the term&lt;/form:prompt>
            &lt;ref:lnlink>
                &lt;ref:marker>9&lt;/ref:marker>
                &lt;ref:locator anchoridref="dn_9"/>
            &lt;/ref:lnlink> . &lt;/text>
    &lt;/p>
    &lt;notes>
        &lt;note notetype="instruction">
            &lt;ref:anchor anchortype="local" id="dn_7"/>
            &lt;heading>
                &lt;desig>7&lt;/desig>
            &lt;/heading>
            &lt;bodytext>
                &lt;p xml:id="d177237e1592">
                    &lt;text> As to the commencement of the term see 
                    &lt;ref:crossreference crossreferencetype="seeAlso">
                            &lt;ref:content> vol 22(1) (2009) LANDLORD AND TENANT (BUSINESS TENANCIES) 
                            Paragraph 186 [588] &lt;/ref:content>
                            &lt;ref:locator anchoridref="acronym_EFPP__paragraph_588">
                                &lt;ref:locator-key>
                                    &lt;ref:key-name name="DOC-ID"/>
                                    &lt;ref:key-value value="0427"/>
                                &lt;/ref:locator-key>
                            &lt;/ref:locator>
                        &lt;/ref:crossreference> . As to the impact of the length of the term upon 
                        registration see note &lt;ref:lnlink>
                            &lt;ref:marker>1&lt;/ref:marker>
                            &lt;ref:locator anchoridref="dn_1"/>
                        &lt;/ref:lnlink> [558] above. &lt;/text>
                &lt;/p>
            &lt;/bodytext>
        &lt;/note>
        &lt;note notetype="instruction">
            &lt;ref:anchor anchortype="local" id="dn_8"/>
            &lt;heading>
                &lt;desig>8&lt;/desig>
            &lt;/heading>
            &lt;bodytext>
                &lt;p xml:id="d177237e1704">
                    &lt;text> For estate management reasons it is usually desirable to insert a quarter day 
                    here—or a rent day when rent is due on days other than quarter days—ie generally 
                    the one preceding the earlier of the date of possession and the date of execution. &lt;/text>
                &lt;/p>
            &lt;/bodytext>
        &lt;/note>
    &lt;/notes>
&lt;/pgrp>   
            
            
             </pre>
        <pre>
        <b>EXAMPLE 7.</b> <sourcexml>note[@notetype="instruction"]</sourcexml> One note, form:p
            
<b><i>Source XML</i></b>&lt;p id="d177237e1126">
    &lt;text>HM LAND REGISTRY&lt;link refpt="dn_3" alt-label="drafting-note">3&lt;/link>
    &lt;/text>
    &lt;note notetype="instruction" searchtype="COMMENTARY">
        &lt;heading>
            &lt;desig>
                &lt;designum>3&lt;/designum>
            &lt;/desig>
            &lt;refpt id="dn_3"/>
        &lt;/heading>
        &lt;p id="d177237e1135">
            &lt;text>This Land Registry heading may only be used with registered land where the lease is not a 
            prescribed clauses lease.&lt;/text>
        &lt;/p>
    &lt;/note>
&lt;/p>
            
             <b><i>Target XML</i></b>&lt;form:div divtype="para-and-note">
    &lt;form:bodytext>
        &lt;form:p xml:id="d177237e1126">
            &lt;form:text> HM LAND REGISTRY &lt;ref:lnlink>
                &lt;ref:marker>3&lt;/ref:marker>
                &lt;ref:locator anchoridref="dn_3"/>
            &lt;/ref:lnlink>
            &lt;/form:text>
        &lt;/form:p>
        &lt;note notetype="instruction">
            &lt;ref:anchor anchortype="local" id="dn_3"/>
            &lt;heading>
                &lt;desig>3&lt;/desig>
            &lt;/heading>
            &lt;bodytext>
                &lt;p xml:id="d177237e1135">
                    &lt;text> This Land Registry heading may only be used with registered land where the lease is 
                    not a prescribed clauses lease. &lt;/text>
                &lt;/p>
            &lt;/bodytext>
        &lt;/note>
    &lt;/form:bodytext>
&lt;/form:div>
            
             </pre>
        <pre>
        <b>EXAMPLE 8.</b> <sourcexml>note[@notetype="instruction"]</sourcexml> Multiple consecutive note, form:p
            
<b><i>Source XML</i></b>
          &lt;p id="d177237e6008">
    &lt;text>The&lt;defterm>Tenant&lt;/defterm>must permit the&lt;defterm>Landlord&lt;/defterm>
        &lt;link refpt="dn_84" alt-label="drafting-note">84&lt;/link>
        &lt;frm:prompt id="d177237e6018" optionalKey="opt-N69250">on reasonable notice during normal business hours 
        except in emergency&lt;/frm:prompt>
        &lt;link refpt="dn_85" alt-label="drafting-note">85&lt;/link>:&lt;/text>
    &lt;note notetype="instruction" searchtype="COMMENTARY">
        &lt;heading>
            &lt;desig>
                &lt;designum>84&lt;/designum>
            &lt;/desig>
            &lt;refpt id="dn_84"/>
        &lt;/heading>
        &lt;p id="d177237e6028">
            &lt;text>The provisions of clause&lt;link refpt="sg_1.39" alt-label="clause">1.2.17&lt;/link>[571] ante should 
            be noted.&lt;/text>
        &lt;/p>
    &lt;/note>
    &lt;note notetype="instruction" searchtype="COMMENTARY">
        &lt;heading>
            &lt;desig>
                &lt;designum>85&lt;/designum>
            &lt;/desig>
            &lt;refpt id="dn_85"/>
        &lt;/heading>
        &lt;p id="d177237e6039">
            &lt;text>The tenant should add the words in square brackets.&lt;/text>
        &lt;/p>
    &lt;/note>
&lt;/p>  
        <b><i>Target XML</i></b>
        &lt;form:div divtype="para-and-note">
    &lt;form:bodytext>
        &lt;form:p xml:id="d177237e6008">
            &lt;form:text> The &lt;defterm>Tenant&lt;/defterm> must permit the &lt;defterm>Landlord&lt;/defterm>
                &lt;ref:lnlink>
                    &lt;ref:marker>84&lt;/ref:marker>
                    &lt;ref:locator anchoridref="dn_84"/>
                &lt;/ref:lnlink>
                &lt;form:prompt optionalKey="opt-N69250" xml:id="d177237e6018"> on reasonable notice during normal 
                business hours except in emergency &lt;/form:prompt>
                &lt;ref:lnlink>
                    &lt;ref:marker>85&lt;/ref:marker>
                    &lt;ref:locator anchoridref="dn_85"/>
                &lt;/ref:lnlink> : &lt;/form:text>
        &lt;/form:p>
        &lt;notes>
            &lt;note notetype="instruction">
                &lt;ref:anchor anchortype="local" id="dn_84"/>
                &lt;heading>
                    &lt;desig>84&lt;/desig>
                &lt;/heading>
                &lt;bodytext>
                    &lt;p xml:id="d177237e6028">
                        &lt;text> The provisions of clause &lt;ref:lnlink>
                            &lt;ref:marker>1.2.17&lt;/ref:marker>
                            &lt;ref:locator anchoridref="sg_1.39"/>
                        &lt;/ref:lnlink> [571] ante should be noted. &lt;/text>
                    &lt;/p>
                &lt;/bodytext>
            &lt;/note>
            &lt;note notetype="instruction">
                &lt;ref:anchor anchortype="local" id="dn_85"/>
                &lt;heading>
                    &lt;desig>85&lt;/desig>
                &lt;/heading>
                &lt;bodytext>
                    &lt;p xml:id="d177237e6039">
                        &lt;text> The tenant should add the words in square brackets. &lt;/text>
                    &lt;/p>
                &lt;/bodytext>
            &lt;/note>
        &lt;/notes>
    &lt;/form:bodytext>
&lt;/form:div>    
             </pre>      

            <section>
                <title>Changes</title>
                <p>2017-05-18: <ph id="change_20170518_CN">Clarified rule for single and multiple
                    <sourcexml>note[@notetype="instruction"]</sourcexml> when children of 
                    <targetxml>p</targetxml> and <targetxml>form:p</targetxml>. Added examples
                    5, 6, 7, and 8.</ph></p>
                <p>2017-03-03: <ph id="change_20170303_jm">Changed rule for
                    <sourcexml>defdesc/note</sourcexml> and also expanded to include
                    <sourcexml>li/note</sourcexml> scenario. Previously
                    <targetxml>pgrp</targetxml> container was generated to hold all
                    <targetxml>defdesc</targetxml> content. Now instead the
                    <targetxml>pgrp</targetxml> container holds only the
                    <targetxml>note</targetxml> and the preceding <targetxml>p</targetxml>
                    element. VSTS 238083.</ph></p>
                <p>2016-12-21: <ph id="change_20161221_jm">Added rules for
                    <sourcexml>note[@notetype="commentary"]</sourcexml>. Reflects markup in
                    precedents derived from UK12-Commentary sources which have been added to the
                    UK14-Precedents stream.</ph></p>
                <p>2016-11-16: <ph id="change_20161116_jm">Revised rules for
                    <sourcexml>p/note</sourcexml> regarding containers created for target. Added
                    rule to move <sourcexml>note</sourcexml> occurring between clause end-tags so
                    that target <targetxml>note</targetxml> occurs at start of parent clause rather
                    than end.</ph></p>
                <p>2016-10-05: <ph id="change_20161005_jm">Added rules to generate
                    <targetxml>pgrp</targetxml> wrapper for certain scenarios. New Xpaths. Also
                    removed an exception rule for p/note within alternate and optional markup; see
                    the "please notice" section for detail.</ph></p>
                <p>2016-05-09: <ph id="change_20160509_jm">No change to narrative rules. Fixed Example 2
                    Target markup. Incorrectly showed parent-child
                    <targetxml>form:p/note</targetxml>. Now corrected to be sibling
                    <targetxml>form:p</targetxml> and <targetxml>note</targetxml>.</ph></p>
                <p>2016-05-03: <ph id="change_20160503_jm">Added special rule for
                    <sourcexml>p/note</sourcexml> occurring as child of
                    <sourcexml>frm:alternate</sourcexml> or <sourcexml>frm:optional</sourcexml>.
                    Rule describes generation of wrapping element <targetxml>form:div</targetxml>
                    for target.</ph></p>
                <p>2015-03-23: <ph id="change_20150323_jm">Section revised. New xpaths. Drafting notes
                    have been added in UK12 docs. Previously UK12 notes were only links to
                    separately stored full-content notes. Changes include: removed
                    <targetxml>textitem</targetxml>, added <targetxml>notes</targetxml> wrapper
                    for adjacent <targetxml>note</targetxml>, added special rules to locate
                    <targetxml>note</targetxml> as following sibling. In addition,
                    <sourcexml>note[@notetype="xref"]</sourcexml>, formerly data error, is now
                    active and maps to <targetxml>marginnote</targetxml>. Notice that
                    <targetxml>marginnote</targetxml> occurs within full-content note, meaning
                    <targetxml>note[@notetype="instruction"]</targetxml> can have descendant
                    <targetxml>marginnote</targetxml>. R4.5 Content Issues 2233, 2234, 2236,
                    2237.</ph></p>
                <p>2014-06-19: <ph id="change_20140619_jm">Added rule to handle
                    <sourcexml>note</sourcexml> occurring as child of <sourcexml>p</sourcexml>.
                    Specific to UK14. Phase-6 Discussion Item 101.</ph></p>
                <p>2014-06-18: <ph id="change_20140618_jm">Added rule to suppress
                    <sourcexml>@id</sourcexml>. Specific to UK14. Phase-6 Discussion Item
                    104.</ph></p>
                <p>2014-01-15: <ph id="change_20140115_jm">Added rule to merge multiple adjacent
                    <sourcexml>note</sourcexml> so that output is single
                    <targetxml>note/bodytext</targetxml> containing multiple
                    <targetxml>textitem</targetxml>. Supports presentation requirement for
                    single note icon. Only UK14 immediately affected. R4.5 Content Issue List #
                    1011.</ph></p>
                <p>2013-11-11: <ph id="change_20131111_jm">Illustrative. Ancillary to this section.
                    Corrected example to show <sourcexml>clause[@id]</sourcexml> mapped to
                    <targetxml>ref:anchor[@id]</targetxml>.</ph></p></section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_note.dita  -->
    <!--<xsl:message>UK14_Precedents_note.xsl requires manual development!</xsl:message> -->

    <xsl:template match="note[((@notetype = 'instruction') or (@notetype='commentary')) and not(preceding-sibling::*[1][self::note]) and not(parent::frm:div[@divtype='body'])]" priority="2">
        <!--  Original Target XPath:  note[@notetype="instruction"]/bodytext   -->
        <xsl:choose>
            <xsl:when test="following-sibling::*[1][self::note[(@notetype = 'instruction') or (@notetype='commentary')]]">
                <notes>
                    <note>
                        <xsl:apply-templates select="@*, heading/refpt, heading"/>
                        <bodytext>
                            <xsl:apply-templates select="node() except heading"/>
                        </bodytext>
                    </note>
                           <xsl:apply-templates select="following-sibling::note[(@notetype = 'instruction') or (@notetype='commentary')][ preceding-sibling::*[1][self::note[(@notetype = 'instruction') or (@notetype='commentary')]]]"
                               mode="follownote"/>
                       
               
                                  
                </notes>
            </xsl:when>
            <xsl:otherwise>
                <note>
                    <xsl:apply-templates select="@*, heading/refpt, heading"/>
                    <bodytext>
                        <xsl:apply-templates select="node() except (heading)"/>
                    </bodytext>
                </note>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="heading/title[child::note[((@notetype = 'instruction') or (@notetype='commentary'))]]" priority="2">
        <title>
            <xsl:apply-templates select="@* | node() except note"/>
        </title>
        <xsl:apply-templates select="child::note[((@notetype = 'instruction') or (@notetype='commentary'))]"/>
    </xsl:template>

<!--    <xsl:template match="p[child::note][not((parent::clause) or (parent::frm:div) or (parent::sigblock) or (parent::frm:optional) or (parent::li) or (parent::defdesc))][not(@class='cover-date')]" priority="2">
        <pgrp>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:apply-templates select="child::note[@notetype = 'instruction']"/>
        </pgrp>
    </xsl:template>-->
    
    <xsl:template match="p[(parent::li) or (parent::defdesc)][following-sibling::*[1][self::note[(@notetype = 'instruction') or (@notetype='commentary')]]][not(preceding-sibling::*[1][self::l])]" priority="3">
        <xsl:choose>
            <xsl:when test="preceding-sibling::*[1][self::p]">
                <pgrp>
                    <p>
                        <xsl:apply-templates select="@* | node()"/>
                    </p>
                    <xsl:apply-templates select="following-sibling::note[((@notetype = 'instruction') or (@notetype='commentary'))]"/>
                </pgrp>
            </xsl:when>
            <xsl:when test="parent::li">
                <bodytext>
                <pgrp>
                    <p>
                        <xsl:apply-templates select="@* | node()"/>
                    </p>
                    <xsl:apply-templates select="following-sibling::note[((@notetype = 'instruction') or (@notetype='commentary'))]"/>
                </pgrp>
                <xsl:apply-templates select="(following-sibling::p)"/>
                </bodytext>
            </xsl:when>
            <xsl:otherwise>
                <!--<bodytext>-->
                    <pgrp>
                        <p>
                            <xsl:apply-templates select="@* | node()"/>
                        </p>
                        <xsl:apply-templates select="following-sibling::note[((@notetype = 'instruction') or (@notetype='commentary'))]"/>
                    </pgrp>
                    <xsl:apply-templates select="(following-sibling::p)"/>
                <!--</bodytext>-->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="note[((@notetype = 'instruction') or (@notetype='commentary'))]" mode="follownote">
        <note>
            <xsl:apply-templates select="@*, heading/refpt, heading"/>
            <bodytext>
                <xsl:apply-templates select="node() except heading"/>
            </bodytext>
        </note>
    </xsl:template>

    <xsl:template match="note[((@notetype = 'instruction') or (@notetype='commentary'))]" priority="1"/>


    <xsl:template match="note/@notetype">
        <xsl:attribute name="notetype">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="note/@searchtype"/>

    <xsl:template match="note[@notetype = 'xref' and not(preceding-sibling::*[1][self::note])]"
        priority="2">
        <xsl:variable name="i" select="count(preceding::note[@notetype = 'xref']) + 1"/>
        <!--  Original Target XPath:  marginnote/bodytext   -->
        <xsl:choose>
            <xsl:when test="not(preceding-sibling::*[1][self::note[@notetype = 'xref']])">
                <marginnote>
                    <ref:anchor>
                        <xsl:attribute name="id">
                            <xsl:text>abc_</xsl:text>
                            <xsl:value-of select="$i"/>
                        </xsl:attribute>
                        <xsl:attribute name="anchortype">
                            <xsl:text>local</xsl:text>
                        </xsl:attribute>
                    </ref:anchor>
                    <bodytext>
                        <xsl:apply-templates select="node()"/>
                        <xsl:apply-templates select="following-sibling::note[@notetype = 'xref']"
                            mode="followmarginal"/>
                    </bodytext>
                </marginnote>
            </xsl:when>
            <xsl:otherwise>
                <marginnote>
                    <ref:anchor>
                        <xsl:attribute name="id">
                            <xsl:text>abc_</xsl:text>
                            <xsl:value-of select="$i"/>
                        </xsl:attribute>
                    </ref:anchor>
                    <bodytext>
                        <xsl:apply-templates select="node()"/>
                    </bodytext>
                </marginnote>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="note[@notetype = 'xref']" mode="followmarginal">
        <xsl:apply-templates select="node()"/>
    </xsl:template>

    <xsl:template match="note[@notetype = 'xref']" priority="1"/>


<!--    <xsl:template match="note[@notetype = 'commentary']">

        <!-\-  Original Target XPath:  note[@notetype="commentary"]/bodytext   -\->
        <note>
            <bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </bodytext>
        </note>

    </xsl:template>-->

    <xsl:template match="p/@id">

        <!--  Original Target XPath:  note[@notetype="commentary"]/bodytext   -->
        <xsl:attribute name="xml:id">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>


</xsl:stylesheet>
