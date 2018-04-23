<?xml version="1.0" encoding="UTF-8"?>
<!-- ***************************************************
      IMPORTANT NOTE!
      The functionality of this module for footnotes that
      retain their placement in the source document has been MOVED to
      modules/nonamespace/Rosetta_footnote-LxAdv-footnote_No-Reordering.xsl 
      
      ALL the hardcore footnote linking code is there, so any reordering logic
      can be placed here in TBD-land.  Right now this module is not being used 
      by any streams - JL April 21, 2017
      
     ***************************************************-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:frm="http://www.lexis-nexis.com/glp/frm" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:casehist="http://www.lexisnexis.com/xmlschemas/content/legal/case-history/1/" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita case ci frm glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_footnote">
    <title><sourcexml>footnotegrp</sourcexml> and <sourcexml>footnote</sourcexml> to
        <targetxml>footnotegroup</targetxml> and <targetxml>footnote</targetxml>
        <lnpid>id-CCCC-10322</lnpid></title>
    <body>
        <!-- McNally June 9 2014. Commented-out the CA02 rule added at end of module. See below for details. -->
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p>The source document has footnote references, footnotegrps and footnotes. In the NL
                schema, footnote references, footnotegroup and footnotes are tagged at the same
                location where they appear in the source document. </p>
            <p>The <b>footnote</b> markup for NL schema as described below: <ul>
                    <li>
                        <p>The <sourcexml>footnotegrp/footnote</sourcexml> becomes
                                <targetxml>footnotegroup/footnote</targetxml>
                        </p>
                        <p>The <sourcexml>footnotegrp/heading</sourcexml> becomes
                                <targetxml>footnotegroup/heading</targetxml>. </p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is the child of
                                <sourcexml>bodytext</sourcexml>, then it becomes
                                <targetxml>bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is the child of
                                <sourcexml>leg:bodytext</sourcexml>, then it becomes
                                <targetxml>primlaw:bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>level/bodytext</sourcexml>,
                                <sourcexml>level/bodytext</sourcexml> mapped with
                                <targetxml>seclaw:level/seclaw:bodytext</targetxml> and
                                <targetxml>primlaw:level/primlaw:bodytext</targetxml> in different
                            content model. Then follow below listed instructions: <ul>
                                <li><b>Regulation:</b>
                                    <targetxml>primlaw:level/primlaw:bodytext/p/text/footnotegroup</targetxml>.</li>
                                <li><b>Commentary, Form, Precedents and Textbooks:</b>
                                    <targetxml>seclaw:level/seclaw:bodytext/p/text/footnotegroup</targetxml>
                                    and
                                        <targetxml>form:form/form:document/form:bodytext/form:p/form:text/footnotegroup</targetxml>.</li>
                            </ul>
                        </p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:judgments</sourcexml>, then it becomes
                                <targetxml>courtcase:opinions/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:judgmentbody</sourcexml>, then it becomes
                                <targetxml>courtcase:opinion/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:headnote</sourcexml>, then it becomes
                                <targetxml>courtcase:head/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:decisionsummary</sourcexml>, then it becomes
                                <targetxml>casesum:decisionsummary/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:factsummary</sourcexml>, then it becomes
                                <targetxml>casesum:editorialsummary/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:references</sourcexml>, then it becomes
                                <targetxml>ref:relatedrefs/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:typeofcase</sourcexml>, then it becomes
                                <targetxml>casesum:overview/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>p</sourcexml>, then it becomes
                                <targetxml>p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>glp:note</sourcexml>, then it becomes
                                <targetxml>note/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>blockquote</sourcexml>, then it becomes
                                <targetxml>blockquote/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>li</sourcexml>, then it becomes
                                <targetxml>listitem/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>pgrp</sourcexml>, then it becomes
                                <targetxml>pgrp/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:appendix</sourcexml>, then it becomes
                                <targetxml>appendix/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:consideredcases</sourcexml>, then it becomes
                                <targetxml>ref:relatedrefs/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>case:priorhist</sourcexml>, then it becomes
                                <targetxml>casehist:summary/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>note</sourcexml>, then it becomes
                                <targetxml>note/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>prelim</sourcexml>, then it becomes
                                <targetxml>courtcase:prelim/bodytext/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>catchwordgrp</sourcexml>, then it becomes
                                <targetxml>classify:classification
                                classify:classitem/classify:classitem-identifier/classify:classname/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>sigblock</sourcexml>, then it becomes
                                <targetxml>sigblock/p/text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>frm:body</sourcexml>, then it becomes
                                <targetxml>form:document/form:bodytext/form:p/form:text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                                <sourcexml>clause</sourcexml>, then it becomes
                            <targetxml>form:clause/form:bodytext/form:p/form:text/footnotegroup</targetxml>.</p>
                        <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                            <sourcexml>frm:div</sourcexml>, then it becomes
                            <targetxml>form:div/form:bodytext/form:p/form:text/footnotegroup</targetxml>.</p>
                    </li>
                    <li> Create <targetxml>footnote/ref:anchor</targetxml> with
                            <targetxml>@id</targetxml> and set
                            <targetxml>footnote/ref:anchor[@id]</targetxml> to the value of
                            <sourcexml>footnote[@fntoken]</sourcexml>.
                                <note><targetxml>ref:anchor[@id]</targetxml> that begins with a
                            number must have an underscore added at start.</note>
                        <note><p>This note is applicable only to <b>UK footnotes with a value of "0"
                                    in <sourcexml>footnote/@fntoken</sourcexml></b> (all content
                                types within UK): For every
                                    <sourcexml>footnote[@fntoken="0"]</sourcexml>, a unique value
                                should be placed in the target
                                <targetxml>ref:anchor/@id</targetxml>. Numeric values in
                                    <targetxml>ref:anchor/@id</targetxml> must be prepended with
                                "_". Any unique values are acceptable inside
                                    <targetxml>ref:anchor/@id</targetxml>, but the simplest solution
                                is to start with <targetxml>&lt;ref:anchor id="_1"/&gt;</targetxml>
                                for the first footnote encountered and increment the value by 1 for
                                each subsequent footnote (e.g. <targetxml>&lt;ref:anchor
                                    id="_1"/&gt;</targetxml>, <targetxml>&lt;ref:anchor
                                    id="_2"/&gt;</targetxml>, <targetxml>&lt;ref:anchor
                                    id="_3"/&gt;</targetxml>, etc.)</p><p>If the value of
                                    <targetxml>ref:anchor/@id</targetxml> is not "0", then it should
                                be carried through to <targetxml>ref:anchor/@id</targetxml> as is.
                            </p></note>
                    </li>
                    <li>Drop attribute <sourcexml>@fnrtokens</sourcexml> and
                            <sourcexml>@fntoken</sourcexml> from the <sourcexml>footnote</sourcexml>
                        element, but note as described above that the source
                            <sourcexml>footnote[@fntoken]</sourcexml> value is moved to the target
                            <targetxml>footnote/ref:anchor[@id]</targetxml></li>
                    <li>Create <targetxml>ref:returnreference/reflocator</targetxml>.<ul id="ul_hxl_rfn_yh">
                            <li><targetxml>@anchoridref</targetxml> is set to the id value of the
                                first reference to this footnote. For example,
                                    <targetxml>footnote/ref:anchor[@id="_1"]</targetxml>, will use
                                the value
                                    from<targetxml>((//footnote-ref[@anchoridref="_1"])[1])/ref:anchor/@id</targetxml>.<note>If
                                    the return reference ID cannot be located, it is not necessary
                                    to create the
                                <targetxml>ref:returnreference</targetxml>.</note></li>
                            <li><targetxml>@anchortype</targetxml> is set to "local" </li>
                        </ul></li>
                    <li><sourcexml>footnote/fnlabel</sourcexml> becomes
                            <targetxml>footnote/label</targetxml>.</li>
                    <li><sourcexml>footnote/fnbody</sourcexml> becomes
                            <targetxml>footnote/bodytext</targetxml>.<ul>
                            <li><b>Special Canada rule to suppress indent:</b>
                                <sourcexml>footnote/fnbody/p[@indent]</sourcexml> becomes
                                    <targetxml>footnote/bodytext/p</targetxml>. That is, suppress
                                    <sourcexml>@indent</sourcexml> for all Canada streams. (Note
                                that attribute <sourcexml>p[@i]</sourcexml> is also suppressed, as
                                per General Markup rules for <sourcexml>p</sourcexml>).</li>
                        </ul></li>
                    <li><sourcexml>footnote/@type</sourcexml> becomes
                            <targetxml>footnote/@role</targetxml> unless the value of
                            <sourcexml>footnote/@type</sourcexml> is "default" or "annotation", in
                        which case <sourcexml>footnote/@type</sourcexml> is suppressed and
                            <targetxml>footnote/@role</targetxml> is not generated.</li>
                    <li>
                        <p>If <sourcexml>footnote/fnbody</sourcexml> contains
                                <sourcexml>p/refpt</sourcexml> and the value of
                                <sourcexml>refpt/@id</sourcexml> is the same as the value of
                                <sourcexml>footnote/@fntoken</sourcexml>, then the
                                <sourcexml>refpt</sourcexml> should be suppressed because a
                                <targetxml>ref:anchor</targetxml> with the same value in
                                <targetxml>@id</targetxml> is created as child of the target
                                <targetxml>footnote</targetxml></p>
                    </li>
                    <li>
                        <p>If <sourcexml>footnote</sourcexml> appears without
                                <sourcexml>fnr</sourcexml> the footnote contents should still be
                            output as <targetxml>footnote</targetxml>.</p>
                    </li>
                </ul>
            </p>
            <p>The <b>fnr</b> markup for NL schema as described below: <ul>
                    <li>
                        <sourcexml>fnr</sourcexml> becomes <targetxml>footnote-ref</targetxml>.</li>
                    <li>
                        <sourcexml>@fntoken</sourcexml> becomes <targetxml>@anchoridref</targetxml>. </li>
                    <li>
                        <sourcexml>@fnrtoken</sourcexml> becomes
                            <targetxml>footnote-ref/ref:anchor[@id]</targetxml> the value must be
                        unique.</li>
                    <li>The <sourcexml>fnr</sourcexml> content becomes <targetxml>label</targetxml>
                    </li>
                    <li>
                        <sourcexml>fnr/@id</sourcexml> becomes
                            <targetxml>footnote-ref/@xml:id</targetxml>. <note>All
                                <targetxml>xml:id</targetxml> attributes that begin with a number
                            must have an underscore added at start.</note>
                        <note><targetxml>@anchoridref</targetxml> that begins with a number must
                            have an underscore added at start. Also apply other identifier data type
                            format as used for <targetxml>xml:id</targetxml> and
                                <targetxml>ref:anchor/@id</targetxml> (e.g. change colon to
                            underscore).</note>
                    </li>
                    <li><sourcexml>fnr/@alt-label</sourcexml> should be suppressed from conversion
                        because this attribute is already deprecated in the DTD itself.</li>
                    <li>
                        <p>If input documents is having scenario
                                <sourcexml>leg:bodytext/fnr</sourcexml> then it becomes
                                <targetxml>primlaw:bodytext/textitem/footnote-ref</targetxml>.</p>
                    </li>
                </ul>
            </p>
            <p> Use the <b>matching criteria</b> below to ensure hyperlinks are working: <ul>
                    <li>
                        <p>Use the <sourcexml>@fnrtoken</sourcexml> attribute to match the source
                            footnote reference indicated by <sourcexml>fnr</sourcexml> with the
                            actual source footnote content contained in the
                                <sourcexml>footnote</sourcexml>.</p>
                    </li>
                    <li>
                        <p>If appears without <sourcexml>footnote</sourcexml> then conversion need
                            to put the reference <b>(fnr)</b> in an xml comment along with this
                            note: <b><i> footnote reference without footnote is a data
                                error.</i></b>.</p>
                    </li>
                    <li>
                        <p>If <sourcexml>fnr</sourcexml> is empty, then it should be suppressed.</p>
                    </li>
                <li>
                        <b>Exceptional scenario for UK22CS:</b> Supress
                            <sourcexml>@type="editorial"</sourcexml> attribute from
                            <sourcexml>footnote</sourcexml> element in target. 
                    
                    <note>This
                            instruction should be revisited and possibly changed if “editorial” is
                            actually used more appropriately in the future.</note>
                    </li>
                
                <li> <sourcexml>lilabel/fnr</sourcexml> becomes <targetxml>label/footnote-ref</targetxml></li>
                </ul></p>
            <p>If <sourcexml>footnotegrp</sourcexml> is a child of
                <sourcexml>legfragment</sourcexml>, then it becomes
                <targetxml>primlaw:excerpt/primlaw:bodytext/p/text/footnotegroup</targetxml>.</p>
            
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;p&gt;
        &lt;pnum count="2"&gt;[2]&lt;/pnum&gt;
        &lt;refpt id="20101NZLR_297_p2" type="ext"/&gt;
        &lt;text&gt;Part 2 of the Commerce Act prohibits various restrictive practices, namely practices
            substantially lessening competition, 
            &lt;fnr fnrtoken="fnr-20101NZLR_297-1" fntoken="fn-20101NZLR_297-1"&gt;1&lt;/fnr&gt; price fixing 
        &lt;/text&gt;
    &lt;/p&gt; 
    .... 
    &lt;footnotegrp&gt;
        &lt;footnote fnrtokens="fnr-20101NZLR_297-1" fntoken="fn-20101NZLR_297-1"&gt;
            &lt;fnlabel&gt;1&lt;/fnlabel&gt;
            &lt;fnbody&gt;
                &lt;p&gt;
                    &lt;text&gt;Sections 27 &amp;#x2013; 29.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/fnbody&gt;
        &lt;/footnote&gt;
    &lt;/footnotegrp&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;p&gt;
        &lt;ref:anchor id="_20101NZLR_297_p2" anchortype="global"/&gt;
        &lt;desig value="2"&gt;[2]&lt;/desig&gt;
        &lt;text&gt;Part 2 of the Commerce Act prohibits various restrictive practices, namely practices
            substantially lessening competition, 
            &lt;footnote-ref anchoridref="fn-20101NZLR_297-1"&gt;
                &lt;ref:anchor id="fnr-20101NZLR_297-1"/&gt;
                &lt;label&gt;1&lt;/label&gt;
            &lt;/footnote-ref&gt;price fixing &lt;/text&gt;
    &lt;/p&gt;
    &lt;footnotegroup&gt;
        &lt;footnote&gt;
            &lt;ref:anchor id="fn-20101NZLR_297-1"/&gt;
            &lt;ref:returnreference&gt;
                &lt;ref:locator anchoridref="fnr-20101NZLR_297-1" anchortype="local"/&gt;
            &lt;/ref:returnreference&gt;
            &lt;label&gt;1&lt;/label&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Sections 27 &amp;#x2013; 29.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/footnote&gt;
    &lt;/footnotegroup&gt;

	</codeblock>
        </example>
        <example>
            <title>Source xml: more than one footnote reference points at the same footnote</title>
            <codeblock>
      
      &lt;p&gt;
        &lt;table frame="all" pgwide="1"&gt;
            &lt;tgroup cols="1" colsep="0" rowsep="0" align="left"&gt;
                &lt;colspec colwidth="50*" colname="col1" colsep="0" rowsep="0"/&gt;
                &lt;tbody valign="top"&gt;
                    &lt;row rowsep="0"&gt;
                        &lt;entry morerows="0" colsep="0" rowsep="0"&gt;Except
                            for land and copyright, &lt;fnr fntoken="PBEP.C5.FN51"
                                fnrtoken="PBEP.C5.FN51-R"&gt;51&lt;/fnr&gt; equitable interests can be
                            created verbally. In undertaking an estate review, care must be taken to
                            establish the scope of equitable rights that may be embedded in a
                            person&amp;rsquo;s property at the time of review. The practitioner must
                            ensure that the existence and administration of those rights are dealt
                            with in accordance with the instruction of or legal obligations of the
                            client.&lt;/entry&gt;
                    &lt;/row&gt;
                &lt;/tbody&gt;
            &lt;/tgroup&gt;
        &lt;/table&gt;
        &lt;text&gt;
            &lt;fnr fntoken="PBEP.C5.FN51" fnrtoken="PBEP.C5.FN51-R"&gt;51&lt;/fnr&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;footnotegrp&gt;
        &lt;!-- Etc. --&gt;
        &lt;footnote fntoken="PBEP.C5.FN51" fnrtokens="PBEP.C5.FN51-R" type="default"
                &gt;
            &lt;fnlabel&gt;51&lt;/fnlabel&gt;
            &lt;fnbody&gt;
                &lt;p&gt;
                    &lt;refpt type="ext" id="PBEP.C5.FN51"/&gt;&lt;text&gt;See Copyright Act 1968 (Cth) &lt;ci:cite
                            searchtype="LEG-REF"&gt;
                        &lt;ci:content&gt;
                                &lt;remotelink refpt="IPCPY.CPA.CPA.S8"
                                    dpsi="0JVS" docidref="EFGH_9876" remotekey1="REFPTID"
                                    service="DOC-ID"&gt;ss 8&lt;/remotelink&gt;
                            &lt;/ci:content&gt;&lt;/ci:cite&gt; and
                            &lt;ci:cite searchtype="LEG-REF"&gt;
                                &lt;ci:content&gt;
                                    &lt;remotelink
                                    refpt="IPCPY.CPA.CPA.S196" dpsi="0JVS" docidref="EFGH_9876"
                                    remotekey1="REFPTID" service="DOC-ID"
                                &gt;196&lt;/remotelink&gt;
                                &lt;/ci:content&gt;
                            &lt;/ci:cite&gt;.
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/fnbody&gt;
        &lt;/footnote&gt;
    &lt;/footnotegrp&gt;
      
    </codeblock>
        </example>
        <example>
            <title>Target xml: more than one footnote reference points at the same footnote</title>
            <codeblock>

&lt;p&gt;
    &lt;table frame="all" pgwide="1"&gt;
        &lt;tgroup cols="1" align="left"&gt;
            &lt;colspec colname="col1" colwidth="50&amp;#x002A;"/&gt;
            &lt;tbody valign="top"&gt;
                &lt;row&gt;
                    &lt;entry&gt;Except for land and copyright,
                        &lt;footnote-ref anchoridref="PBEP.C5.FN51"&gt;
                            &lt;ref:anchor id="PBEP.C5.FN51-R"/&gt;
                            &lt;label&gt;51&lt;/label&gt;
                        &lt;/footnote-ref&gt;
                        equitable interests can be created verbally. In
                        undertaking an estate review, care must be taken to establish the scope
                        of equitable rights that may be embedded in a person&amp;#x2019;s property
                        at the time of review. The practitioner must ensure that the existence
                        and administration of those rights are dealt with in accordance with the
                        instruction of or legal obligations of the client. 
                    &lt;/entry&gt;
                &lt;/row&gt;
            &lt;/tbody&gt;
        &lt;/tgroup&gt;
    &lt;/table&gt;
    &lt;text&gt;
        &lt;footnote-ref anchoridref="PBEP.C5.FN51"&gt;
            &lt;ref:anchor id="PBEP.C5.FN51-R_1"/&gt;
            &lt;label&gt;51&lt;/label&gt;
        &lt;/footnote-ref&gt;
    &lt;/text&gt;
&lt;/p&gt;
&lt;footnotegroup&gt;
    &lt;footnote&gt;
        &lt;ref:anchor id="PBEP.C5.FN51"/&gt;
        &lt;ref:returnreference&gt;
            &lt;ref:locator anchoridref="PBEP.C5.FN51-R" anchortype="local"/&gt;
        &lt;/ref:returnreference&gt;
        &lt;label&gt;51&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;See Copyright Act 1968 &amp;#x0028;Cth&amp;#x0029; 
                   &lt;lnci:cite type="legislation"&gt;
                        &lt;lnci:content&gt;
                            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                &lt;ref:content&gt;ss 8&lt;/ref:content&gt;
                                &lt;ref:locator anchoridref="IPCPY.CPA.CPA.S8"&gt;
                                    &lt;ref:locator-key&gt;
                                        &lt;ref:key-name name="DOC-ID"/&gt;
                                        &lt;ref:key-value value="0JVS-EFGH_9876"/&gt;
                                    &lt;/ref:locator-key&gt;
                                &lt;/ref:locator&gt;
                            &lt;/ref:crossreference&gt;
                        &lt;/lnci:content&gt;
                   &lt;/lnci:cite&gt; and &lt;lnci:cite type="legislation"&gt;
                        &lt;lnci:content&gt;
                            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                &lt;ref:content&gt;196&lt;/ref:content&gt;
                                &lt;ref:locator anchoridref="IPCPY.CPA.CPA.S196"&gt;
                                    &lt;ref:locator-key&gt;
                                        &lt;ref:key-name name="DOC-ID"/&gt;
                                        &lt;ref:key-value value="0JVS-EFGH_9876"/&gt;
                                    &lt;/ref:locator-key&gt;
                                &lt;/ref:locator&gt;
                            &lt;/ref:crossreference&gt;
                        &lt;/lnci:content&gt;
                    &lt;/lnci:cite&gt;. &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/footnote&gt;
&lt;/footnotegroup&gt;
  
    </codeblock>
        </example>
        <example>
            <title>Source xml: <sourcexml>fnr</sourcexml> appear without
                    <sourcexml>footnote</sourcexml></title>
            <codeblock>

&lt;case:factsummary&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;fnr fntoken="1ald095fn2" fnrtoken="1ald095fn2-r"&gt;1&lt;/fnr&gt; Crystal wine glasses sent
                on behalf of the applicant by post from Sydney to Melbourne were broken in transit.
                The glasses were packed in individual compartments in a box made of fairly flimsy
                cardboard and were individually wrapped in tissue paper. There was no external
                packaging to cushion the box and its contents against damage by impact. The box was
                marked Fragile. The applicant claimed compensation from the Australian Postal
                Commission for the breakage of the glasses. His claim was refused on the basis that
                Postal by-law 292 precluded compensation where the goods damaged were not adequately
                wrapped to protect them in the ordinary course of transmission. The applicant
                appealed to the Tribunal asserting that the marking Fragile on the goods should have
                indicated to the Commission that the goods had to be handled with care. 
            &lt;/text&gt;
        &lt;/p&gt; … 
    &lt;/case:factsummary&gt;

    </codeblock>
        </example>
        <example>
            <title>Target xml: <sourcexml>fnr</sourcexml> appear without
                    <sourcexml>footnote</sourcexml></title>
            <codeblock>

&lt;casesum:summaries&gt;
        &lt;casesum:editorialsummar&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;!-- a footnote reference without footnote is a data error. 
                        &lt;fnr fntoken="1ald095fn2" fnrtoken="1ald095fn2-r"&gt;1&lt;/fnr&gt; 
                    --&gt;
                    Crystal wine glasses sent on behalf of the applicant by post from Sydney to
                    Melbourne were broken in transit. The glasses were packed in individual
                    compartments in a box made of fairly flimsy cardboard and were individually
                    wrapped in tissue paper. There was no external packaging to cushion the box and
                    its contents against damage by impact. The box was marked Fragile. The applicant
                    claimed compensation from the Australian Postal Commission for the breakage of
                    the glasses. His claim was refused on the basis that Postal by-law 292 precluded
                    compensation where the goods damaged were not adequately wrapped to protect them
                    in the ordinary course of transmission. The applicant appealed to the Tribunal
                    asserting that the marking Fragile on the goods should have indicated to the
                    Commission that the goods had to be handled with care. 
                &lt;/text&gt;
            &lt;/p&gt; 
            … 
        &lt;/casesum:editorialsummar&gt;
    &lt;/casesum:summaries&gt;

    </codeblock>
        </example>
        <example>
            <title>Source xml: <sourcexml>leg:bodytext/fnr</sourcexml> scenario</title>
            <codeblock>
      
&lt;leg:bodytext&gt;
  &lt;fnr fntoken="CPQ.QCAT.QCATPD" fnrtoken="CPQ.QCAT.QCATPD-R"&gt;*&lt;/fnr&gt;
&lt;/leg:bodytext&gt; 
.... 
&lt;footnotegrp&gt;
  &lt;footnote 
      fntoken="CPQ.QCAT.QCATPD" 
      fnrtokens="CPQ.QCAT.QCATPD-R" 
      type="default"&gt;
      &lt;fnlabel&gt;*&lt;/fnlabel&gt;
      &lt;fnbody&gt;
          &lt;p&gt;&lt;refpt type="ext" id="CPQ.QCAT.QCATPD"/&gt;
              &lt;text&gt; &amp;copy; The State of Queensland (Queensland Civil and 
                  Administrative Tribunal) 2010. QCAT applications fees 
                  reproduced with the kind permission of the
                  Queensland Civil and Administrative Tribunal. See &lt;remotelink
                  href="www.qcat.qld.gov.au" hrefclass="http" newwindow="YES"&gt;
                  www.qcat.qld.gov.au&lt;/remotelink&gt;
              &lt;/text&gt;
          &lt;/p&gt;
      &lt;/fnbody&gt;
  &lt;/footnote&gt;
&lt;/footnotegrp&gt;

</codeblock>
        </example>
        <example>
            <title>Target xml: <sourcexml>leg:bodytext/fnr</sourcexml> scenario</title>
            <codeblock>

&lt;primlaw:bodytext&gt;
    &lt;textitem&gt;
        &lt;footnote-ref anchoridref="CPQ.QCAT.QCATPD"&gt;
            &lt;ref:anchor id="CPQ.QCAT.QCATPD-R"/&gt;
            &lt;label&gt;*&lt;/label&gt;
        &lt;/footnote-ref&gt;
    &lt;/textitem&gt;
&lt;/primlaw:bodytext&gt;
&lt;footnotegroup&gt;
    &lt;footnote&gt;
        &lt;ref:anchor id="CPQ.QCAT.QCATPD"/&gt;
        &lt;ref:returnreference&gt;
            &lt;ref:locator anchoridref="CPQ.QCAT.QCATPD-R" anchortype="local"/&gt;
        &lt;/ref:returnreference&gt;
        &lt;label&gt;*&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt; &amp;#x00A9; The State of Queensland 
                (Queensland Civil and Administrative
                 Tribunal) 2010. QCAT applications fees reproduced with
                 the kind permission of the Queensland Civil and Administrative 
                 Tribunal. See &lt;url normval="http://www.qcat.qld.gov.au"&gt;
                 www.qcat.qld.gov.au&lt;/url&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/footnote&gt;
&lt;/footnotegroup&gt;

</codeblock>
        </example>
        <example>
            <title>Source xml: <sourcexml>footnote/fnbody/p/refpt/@id</sourcexml> holds the same
                value as <sourcexml>footnote/@fntoken</sourcexml></title>
            <codeblock>

&lt;p&gt;
        &lt;text&gt;The purchaser's solicitor should be careful where a right to rescind arises in the
            purchaser's favour. In conveyancing matters, the solicitor's knowledge of the right to
            rescind or the facts giving rise to that right is imputed to the client. The solicitor's
            conduct may, if care is not taken, amount to an affirmation of the contract as still on
            foot or a termination of it, notwithstanding the client's ignorance. 
            &lt;fnr fnrtoken="CONN.DAR.11102.ANT2-R" fntoken="CONN.DAR.11102.ANT2"&gt;2&lt;/fnr&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;!-- Etc. --&gt;
    &lt;footnote fnrtokens="CONN.DAR.11102.ANT2-R" fntoken="CONN.DAR.11102.ANT2" type="default"&gt;
        &lt;fnlabel&gt;2&lt;/fnlabel&gt;
        &lt;fnbody&gt;
            &lt;p&gt;
                &lt;refpt id="CONN.DAR.11102.ANT2" type="ext"/&gt;
                &lt;text&gt;
                    &lt;ci:cite searchtype="CASE-REF"&gt;...&lt;/ci:cite&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/fnbody&gt;
    &lt;/footnote&gt;

      </codeblock>
        </example>
        <example>
            <title>Target xml: <sourcexml>footnote/fnbody/p/refpt</sourcexml> has been
                suppressed</title>
            <codeblock>

&lt;p&gt;
        &lt;text&gt;The purchaser's solicitor should be careful where a right to rescind arises in the
            purchaser's favour. In conveyancing matters, the solicitor's knowledge of the right to
            rescind or the facts giving rise to that right is imputed to the client. The solicitor's
            conduct may, if care is not taken, amount to an affirmation of the contract as still on
            foot or a termination of it, notwithstanding the client's ignorance. 
            &lt;footnote-ref anchoridref="CONN.DAR.11102.ANT2"&gt;
                &lt;ref:anchor id="CONN.DAR.11102.ANT2-R"/&gt;
                &lt;label&gt;2&lt;/label&gt;
            &lt;/footnote-ref&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    &lt;footnote&gt;
        &lt;ref:anchor id="CONN.DAR.11102.ANT2"/&gt;
        &lt;ref:returnreference&gt;
            &lt;ref:locator anchoridref="CONN.DAR.11102.ANT2-R" anchortype="local"/&gt;
        &lt;/ref:returnreference&gt;
        &lt;label&gt;2&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;lnci:cite&gt;...&lt;/lnci:cite&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/footnote&gt;

      </codeblock>
        </example>

        <example>
            <title>Source xml: <sourcexml>leg:bodytext/footnotegrp</sourcexml> scenario</title>
            <codeblock>

&lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                (a) An oil discharge monitoring and control system approved by the Administration
                shall be fitted. In considering the design of the oil content meter to be
                incorporated in the system, the Administration shall have regard to the
                specification recommended by the Organization.
                &lt;fnr fntoken="WA_ACT_1987-14_FN" fnrtoken="WA_ACT_1987-14_FN-R"&gt;*&lt;/fnr&gt; 
                .... 
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;footnotegrp&gt;
            &lt;footnote fntoken="WA_ACT_1987-14_FN" fnrtokens="WA_ACT_1987-14_FN-R" type="default"&gt;
                &lt;fnlabel&gt;*&lt;/fnlabel&gt;
                &lt;fnbody&gt;
                    &lt;p&gt;
                        &lt;text align="left"&gt;
                            Reference is made to the Recommendation on International
                            Performance Specifications for Oily-Water Separating Equipment and Oil
                            Content Meters adopted by the Organization by Resolution
                            A.233(VII).
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/fnbody&gt;
            &lt;/footnote&gt;
        &lt;/footnotegrp&gt;
    &lt;/leg:bodytext&gt;

</codeblock>
        </example>

        <example>
            <title>Target xml: <sourcexml>primlaw:bodytext/p/text/footnotegroup</sourcexml>
                scenario</title>
            <codeblock>

&lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;(a) An oil discharge monitoring and control system approved by the Administration
                shall be fitted. In considering the design of the oil content meter to be
                incorporated in the system, the Administration shall have regard to the
                specification recommended by the Organization.
                &lt;footnote-ref anchoridref="WA_ACT_1987-14_FN"&gt;
                    &lt;ref:anchor id="WA_ACT_1987-14_FN-R"/&gt;
                    &lt;label&gt;*&lt;/label&gt;
                &lt;/footnote-ref&gt;
                .... 
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;footnotegroup&gt;
                    &lt;footnote&gt;
                        &lt;ref:anchor id="WA_ACT_1987-14_FN"/&gt;
                        &lt;ref:returnreference&gt;
                            &lt;ref:locator anchoridref="WA_ACT_1987-14_FN-R" anchortype="local"/&gt;
                        &lt;/ref:returnreference&gt;
                        &lt;label&gt;*&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;p&gt;
                                &lt;text&gt;
                                    &lt;p align="left"&gt;
                                        &lt;text&gt;Reference is made to the Recommendation on
                                            International Performance Specifications for Oily-Water
                                            Separating Equipment and Oil Content Meters adopted by
                                            the Organization by Resolution A.233(VII). 
                                        &lt;/text&gt;
                                    &lt;/p&gt;
                                &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/footnote&gt;
                &lt;/footnotegroup&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;

</codeblock>
        </example>

        <example>
            <title>Source xml: <sourcexml>bodytext/footnotegrp</sourcexml> scenario</title>
            <codeblock>

&lt;bodytext&gt; 
        ... 
        &lt;entry colname="c1"&gt;Fair Work (State Referral and Consequential and Other
            Amendments) Act 2009 No&amp;#160;54 
            &lt;fnr fntoken="WRA.OL.ICAC06.FNT1"
                fnrtoken="WRA.OL.ICAC06.FNT1-R"&gt;*&lt;/fnr&gt;
        &lt;/entry&gt;
        &lt;entry colname="c2"&gt;25 June 2009&lt;/entry&gt;
        &lt;entry colname="c3"&gt;Sch 14[1]&amp;ndash;[11]: 1 July 2009&lt;/entry&gt; 
        ... 
        &lt;footnotegrp&gt;
            &lt;footnote fntoken="WRA.OL.ICAC06.FNT1" fnrtokens="WRA.OL.ICAC06.FNT1-R" type="default"&gt;
                &lt;fnlabel&gt;*&lt;/fnlabel&gt;
                &lt;fnbody&gt;
                    &lt;h&gt;Editor's note:&lt;/h&gt;
                    &lt;p&gt;&lt;refpt type="ext" id="WRA.OL.ICAC06.FNT1"/&gt;
                        &lt;text&gt;&lt;emph typestyle="bf"&gt;Please be aware that item 11, Schedule 14 of this
                        Act provides the following:&lt;/emph&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/fnbody&gt;
            &lt;/footnote&gt;
        &lt;/footnotegrp&gt;
    &lt;/bodytext&gt;

</codeblock>
        </example>

        <example>
            <title>Target xml: <sourcexml>bodytext/p/text/footnotegroup</sourcexml> scenario</title>
            <codeblock>

&lt;bodytext&gt; 
        ... 
        &lt;entry colname="c1"&gt;Fair Work (State Referral and Consequential and Other
            Amendments) Act 2009 No&amp;#160;54 
            &lt;footnote-ref anchoridref="WRA.OL.ICAC06.FNT1"&gt;
                &lt;ref:anchor id="WRA.OL.ICAC06.FNT1-R"/&gt;
                &lt;label&gt;*&lt;/label&gt;
            &lt;/footnote-ref&gt;
        &lt;/entry&gt;
        &lt;entry colname="c2"&gt;25 June 2009&lt;/entry&gt;
        &lt;entry colname="c3"&gt;Sch 14[1]&amp;ndash;[11]: 1 July 2009&lt;/entry&gt;
        .... 
        &lt;p&gt;
            &lt;text&gt;
                &lt;footnotegroup&gt;
                    &lt;footnote&gt;
                        &lt;ref:anchor id="WRA.OL.ICAC06.FNT1"/&gt;
                        &lt;ref:returnreference&gt;
                            &lt;ref:locator anchoridref="WRA.OL.ICAC06.FNT1-R" anchortype="local"/&gt;
                        &lt;/ref:returnreference&gt;
                        &lt;label&gt;*&lt;/label&gt;
                        &lt;bodytext&gt;
                            &lt;h&gt;Editor's note:&lt;/h&gt;
                            &lt;p&gt;
                                &lt;text&gt;&lt;emph typestyle="bf"&gt;Please be aware that item 11, Schedule 14
                                of this Act provides the following:&lt;/emph&gt;
                                &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/bodytext&gt;
                    &lt;/footnote&gt;
                &lt;/footnotegroup&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;

</codeblock>
        </example>

        <example>
            <title>Source xml: Canada only, suppress indent from
                    <sourcexml>footnote/fnbody/p[@indent]</sourcexml></title>
            <codeblock>

&lt;footnotegrp&gt;
    &lt;footnote fntoken="fn-1" fnrtokens="fnr-1"&gt;
        &lt;fnlabel&gt;1&lt;/fnlabel&gt;
        &lt;fnbody&gt;
            &lt;p i="2" indent="1st-line"&gt;
                &lt;text&gt;Decision...&lt;/text&gt;
            &lt;/p&gt;
        &lt;/fnbody&gt;
    &lt;/footnote&gt;
    ... 
&lt;/footnotegrp&gt;

</codeblock>
        </example>

        <example>
            <title>Target xml: Canada only, suppress indent from
                    <sourcexml>footnote/fnbody/p[@indent]</sourcexml></title>
            <codeblock>

&lt;footnotegroup&gt;
    &lt;footnote&gt;
        &lt;ref:anchor id="fn-1"/&gt;
        &lt;ref:returnreference&gt;
            &lt;ref:locator anchoridref="fnr-1" anchortype="local"/&gt;
        &lt;/ref:returnreference&gt;
        &lt;label&gt;1&lt;/label&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Decision...&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/footnote&gt;
    ... 
&lt;/footnotegroup&gt;

</codeblock>
        </example>
       
        <example>
            <title>Source xml: <sourcexml>legfragment/footnotegrp</sourcexml></title>
            <codeblock>
<![CDATA[
<legfragment>
    ........
    <footnotegrp>
        <footnote type="endnote" fntoken="d42e225" fnrtokens="d42e222">
            <fnlabel>(*)</fnlabel>
            <fnbody>
                <p>
                    <text>OJ L 149, 11.6.2005, p 22.’;</text>
                </p>
            </fnbody>
        </footnote>
    </footnotegrp>
</legfragment>
]]>
</codeblock>
        </example>
        
        <example>
            <title>Target xml:
                    <targetxml>primlaw:excerpt/primlaw:bodytext/p/text/footnotegroup</targetxml></title>
            <codeblock>
<![CDATA[
<primlaw:excerpt>
    ..........
    <primlaw:bodytext>
        <p>
            <text>
                <footnotegroup>
                    <footnote>
                        <ref:anchor id="d42e225"/>
                        <ref:returnreference>
                            <ref:locator anchoridref="d42e222" anchortype="local"/>
                        </ref:returnreference>
                        <label>*</label>
                        <bodytext>
                            <p>
                                <text>OJ L 149, 11.6.2005, p 22.’;</text>
                            </p>
                        </bodytext>
                    </footnote>
                </footnotegroup>
            </text>
        </p>
    </primlaw:bodytext>
</primlaw:excerpt>
]]>
</codeblock>
        </example>

        <!-- McNally June 9 2014. Commenting-out the following CA02 rule, example, and changelog entry. 
            Target is not valid, ...bodytext/courtcase:opinion.... 
            If only applies to CA02-CC consider adding as rule only in that CI.  -->

        <!--        <note>
            <b>Canada CA02 Only:</b> If <sourcexml>footnotegrp</sourcexml> is a child of
                <sourcexml>case:judgments</sourcexml>, then it becomes
                <targetxml>casedigest:body/casedigest:decision/casedigest:decisionsummary/bodytext/courtcase:opinion/footnotegroup</targetxml>.
            Please refer the example below for more clarification. </note>

        <example><b>Source XML</b>
            <codeblock>
&lt;case:judgments>
    &lt;footnotegrp>
        &lt;footnote fntoken="fn-1" fnrtokens="fnr-1">
            &lt;fnlabel>1&lt;/fnlabel>
            &lt;fnbody>
                &lt;p>
                    &lt;text>R.S.N.L. 1990, c. F-12.&lt;/text>
                &lt;/p>
            &lt;/fnbody>
        &lt;/footnote>
    &lt;/footnotegrp>
&lt;/case:judgments>
            </codeblock>
        </example>

        <example>
            <b>Target XML</b>
            <codeblock>
&lt;casedigest:body>
    &lt;casedigest:decision>
        &lt;casedigest:decisionsummary>
            &lt;bodytext>
                &lt;courtcase:opinion>
                    &lt;footnotegroup>
                        &lt;footnote>
                        &lt;ref:anchor id="fn-1" />
                        &lt;ref:returnreference>
                            &lt;ref:locator anchoridref="fnr-1" anchortype="local" />
                        &lt;/ref:returnreference>
                        &lt;label>1&lt;/label>
                         &lt;bodytext>
                             &lt;p>
                                &lt;text>R.S.N.L. 1990, c. F-12.&lt;/text>
                            &lt;/p>
                        &lt;/bodytext>
                        &lt;/footnote>
                    &lt;/footnotegroup>
                &lt;/courtcase:opinion>
            &lt;/bodytext>
            &lt;/casedigest:decisionsummary>
    &lt;/casedigest:decision>
&lt;/casedigest:body>
    </codeblock>
        </example>-->

        <section>
            <title>Changes</title>
            <p>2017-03-07: <ph id="change_20170307_RS">Added instructions for handling
                <sourcexml>legfragment/footnotegrp</sourcexml>.[Webstar#6805157]</ph></p>
            <p>2016-08-08: <ph id="change_20160808_RS">Removing duplicate entry of
                <sourcexml>lilabel/fnr</sourcexml></ph></p>
            <p>2016-08-04: <ph id="change_20160804_RS">Added note for handling
                <sourcexml>lilabel/fnr</sourcexml> Applicable for AU05,
                Incident #6597893</ph></p>
            <p>2016-02-29: <ph id="change_20160229_HP">Added note for handling
                        <sourcexml>@type="editorial"</sourcexml> attribute. Applicable for UK22CS,
                    RFA# 2762</ph></p>
            <p>2016-01-05: <ph id="change_20160105_jm">Added instructions for
                <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:div</sourcexml>. To generate
                <targetxml>form:p/form:text</targetxml> wrapper for target
                <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
                apply to any stream if the use case occurs. RFA 2653.</ph></p>
            <p>2015-05-14: <ph id="change_20150514_jm">Added instructions for
                        <sourcexml>footnotegrp</sourcexml> within <sourcexml>frm:body</sourcexml>
                    and <sourcexml>clause</sourcexml>. To generate
                        <targetxml>form:p/form:text</targetxml> wrapper for target
                        <targetxml>footnotegroup</targetxml>. Immediately affects UK12 but will
                    apply to any stream if the use case occurs. R4.5 Content Issues 2316 and
                    2317.</ph></p>
            <!--<p>2014-06-06: <ph id="change_20140606_AS">Canada CA02 only. Added special rule for
                        <sourcexml>case:judgements/footnotegrp</sourcexml> to map to
                        <targetxml>casedigest:body/casedigest:decision/casedigest:decisionsummary/bodytext/courtcase:opinion/footnotegroup</targetxml>
                    Phase 4 Issue 207.</ph></p>-->
            <p>2014-06-02: <ph id="change_20140602_jm">Canada only. Added special rule to suppress
                    indent from <sourcexml>footnote/fnbody/p[@indent]</sourcexml>. Applies
                    immediately to all Canada streams. R4.5 Content Issue 1609.</ph></p>
            <p>2014-04-17: <ph id="change_20140417_jm">Added instruction for
                        <sourcexml>footnotegrp</sourcexml> within <sourcexml>sigblock</sourcexml>.
                    Specifies <targetxml>p/text</targetxml> wrapper for target
                        <targetxml>sigblock/p/text/footnotegroup</targetxml>. Immediately affects
                    UK12 but will apply to any stream if the use case occurs. Phase 6 UK discussion
                    items 76 and 88.</ph></p>
            <p>2014-01-06: <ph id="change_20140106_SS">Updated target example for applying the rule
                    of "deleting extraneous instances of @morerows, @colsep and @rowsep" in sample
                    documents.</ph></p>
            <p>2013-10-02: <ph id="change_20131002_DSF">Not a rule change. Cleaned up the note
                    regarding the scenario when footnote/@fntoken has a value of "0" in an attempt
                    to make the directions clearer.</ph></p>
            <p>2013-08-22: <ph id="change_20130822_jm">Not a rule change. Second target sample
                    modified to remove attribute <targetxml>lnci:cite[@citeref]</targetxml> because
                    value captured in descendant
                        <targetxml>ref:crossreference/ref:locator[@anchoridref]</targetxml>.
                    Ancillary/illustrative within this module. Change made to promote uniformity
                    across samples.</ph></p>
            <p>2013-01-09: <ph id="change_20130109_xxx">Added instruction note for handling of
                        <sourcexml>footnote[@fntoken]</sourcexml> with value 0 for UK content
                    types.</ph></p>
            <p>2012-11-05: Added instructions for handling of <sourcexml>footnotegrp</sourcexml>
                within <sourcexml>case:appendix</sourcexml>,
                    <sourcexml>case:consideredcases</sourcexml>,
                    <sourcexml>case:priorhist</sourcexml>, <sourcexml>note</sourcexml> and
                    <sourcexml>prelim</sourcexml>.</p>
            <p>2012-10-18: Added instructions for creating
                    <targetxml>footnote/ref:returnreference</targetxml>.</p>
            <p>2012-10-05: Added instructions for handling of
                    <sourcexml>pgrp/footnotegrp</sourcexml>.</p>
            <p>2012-10-03: Added standard note about <targetxml>@anchoridref</targetxml> format and
                fixed a few typos.</p>
            <p>2012-09-18: Updated instructions for handling
                    <targetxml>form:form/form:document/form:bodytext/form:p/form:text/footnotegroup</targetxml>.</p>
            <p>2012-08-28: Added instructions for handling <sourcexml>footnotegrp</sourcexml> when
                it is a child of the following elements: <sourcexml>case:judgments</sourcexml>,
                    <sourcexml>case:judgmentbody</sourcexml>, <sourcexml>case:headnote</sourcexml>,
                    <sourcexml>case:decisionsummary</sourcexml>,
                    <sourcexml>case:factsummary</sourcexml>, <sourcexml>case:references</sourcexml>,
                    <sourcexml>case:typeofcase</sourcexml>, <sourcexml>p</sourcexml>,
                    <sourcexml>glp:note</sourcexml>, <sourcexml>blockquote</sourcexml>,
                    <sourcexml>li</sourcexml>, <sourcexml>catchwordgrp</sourcexml></p>
            <p>2012-08-28: Updated instructions for handling
                    <sourcexml>level/bodytext/footnotegrp</sourcexml>.</p>
            <p>2012-08-23: Updated sample containing <sourcexml>ci:content/remotelink</sourcexml> to
                add target <targetxml>ref:crossreference</targetxml>.</p>
            <p>2012-08-23: Updated Notes that <targetxml>@xml:id</targetxml> and
                    <targetxml>ref:anchor@id</targetxml> beginning with number should start with
                underscore, not country code</p>
            <p>2012-08-14: Added instructions for handling
                    <sourcexml>level/bodytext/footnotegrp</sourcexml>.</p>
            <p>2012-08-14: Added instructions and example for handling
                    <sourcexml>leg:bodytext/footnotegrp</sourcexml> and
                    <sourcexml>bodytext/footnotegrp</sourcexml> scenario and renamed
                    <targetxml>footnotegrp</targetxml> to <targetxml>footnotegroup</targetxml>
                according to schema.</p>
            <p>2012-07-31: Updated the instructions for handling <sourcexml>footnotegrp</sourcexml>
                adding footnotegrp to footnotegrp instruction. Also updated samples to include
                footnotegrp wrapper elements where necessary </p>
            <p>2012-07-06: Updated the instructions for handling
                    <sourcexml>footnote/@type</sourcexml> with directions to supress
                    <sourcexml>@type</sourcexml> when it has a value of "annotation".</p>
            <p>2012-06-15: Removed the sample mapping for the scenario of
                    <sourcexml>footnote</sourcexml> without a corresponding
                    <sourcexml>fnr</sourcexml>.</p>
            <p>2012-05-24: Removed the instructions for handling <sourcexml>footnote</sourcexml>
                without a corresponding <sourcexml>fnr</sourcexml>.</p>
            <p>2012-05-11: Added note that the value of <targetxml>footnote/@xml:id</targetxml>
                should be prefixed with the lower case country code followed by an underscore.</p>
            <p>2012-05-10: Updated the instructions for handling <sourcexml>footnote</sourcexml>
                without a corresponding <sourcexml>fnr</sourcexml>.</p>
            <p>2012-05-10: Added instructions to suppress <sourcexml>fnr</sourcexml> when it is
                empty.</p>
            <p>2012-05-07: Added instructions for handling the scenario when
                    <sourcexml>footnote/fnbody/p/refpt/@id</sourcexml> holds the same value as
                    <sourcexml>footnote/@fntoken</sourcexml></p>
            <p>2012-05-07: Instruction and example added for <sourcexml>leg:bodytext/fnr</sourcexml>
                scenario.</p>
            <p>2012-05-04: Updated the instruction and example for handling -
                    <sourcexml>fnr</sourcexml> appears without <sourcexml>footnote</sourcexml>.</p>
            <p>2012-04-27: Added instruction for handling of <sourcexml>footnote/@type</sourcexml>,
                    <sourcexml>fnr/@alt-label</sourcexml> and <sourcexml>fnr/id</sourcexml>.</p>
            <p>2012-04-26: Added the instruction and example for handling -
                    <sourcexml>fnr</sourcexml> appears without <sourcexml>footnote</sourcexml>.</p>
            <p>2012-04-16: Added the instruction and example for handling,
                    <sourcexml>footnote</sourcexml> appears without <sourcexml>fnr</sourcexml>.</p>
            <p>2012-04-16: Added the instruction for handling of
                    <sourcexml>footnotegrp/heading</sourcexml>.</p>
            <p>2012-01-05: Add the instruction when more than one footnote reference points at the
                same footnote.</p>
            <p>2011-12-21: <b>Fixed</b> instructions to indicate that the @fntoken value (not
                @fnrtokens) should be used to populate ref:anchor[@id].</p>
            <p>2011-12-21: Several changes to clarify instructions.</p>
            <p>2011-12-15: Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_footnote-LxAdv-footnote.dita  -->
    <!-- JL I GIVE UP. I KNOW WE SHOULDN"T DO THIS BUT IT SHOULD  FIX EVERYTHING -->
    
<!--    <xsl:include href="Rosetta_footnote-LxAdv-footnote_No-Reordering.xsl"/>-->

</xsl:stylesheet>