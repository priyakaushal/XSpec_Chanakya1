<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:in="http://www.lexis-nexis.com/glp/in" xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita dict in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dictionary-Body">
    <title>Body <lnpid>id-UK10-29219</lnpid></title>
    <shortdesc>All of the following are descendants of <targetxml>dict:body</targetxml>. Handle in
        document order unless specifically stated otherwise. Refer to General Markup Section for
        handling of children (including mixed content).</shortdesc>
    <body>
        <section>
            <title>dict:body</title>
            <p><sourcexml>dict:body</sourcexml> becomes <targetxml>dict:body</targetxml> and
                    <sourcexml>dict:term-entry</sourcexml> becomes <targetxml>tei:entry</targetxml>
                following the rules below:<ul id="ul_ncl_hhe_mi">
                    <li><b>Case 1:</b> If zero or 1
                            <sourcexml>dict:definition/dict:subtopic</sourcexml> descendents,
                            <targetxml>tei:entry</targetxml> becomes a child of
                            <targetxml>dict:defitem</targetxml>.</li>
                    <li><b>Case 2:</b> If more than 1
                            <sourcexml>dict:definition/dict:subtopic</sourcexml> descendents,
                            <targetxml>tei:entry</targetxml> becomes a child of
                            <targetxml>dict:defitem/tei:superEntry</targetxml>. <ul id="ul_kep_kie_mi">
                            <li><sourcexml>dict:subtopic[@id]</sourcexml> becomes
                                    <targetxml>tei:entry[@type]</targetxml><ul id="ul_onz_ekh_ni">
                                    <li><sourcexml>defterm</sourcexml> becomes
                                            <targetxml>tei:form/tei:orth</targetxml> following the
                                        rules below:<ul id="ul_grb_gkh_ni">
                                            <li>If <b>Case 1</b>: create
                                                  <targetxml>tei:form/tei:orth</targetxml> as a
                                                child of <targetxml>tei:entry</targetxml>.</li>
                                            <li>If <b>Case 2</b>: create
                                                  <targetxml>tei:form/tei:orth</targetxml> as a
                                                child of <targetxml>tei:superEntry</targetxml><p>The
                                                  value of <targetxml>@norm</targetxml> should be
                                                  the value of <sourcexml>defterm</sourcexml> with
                                                  space normalized, punctutation removed, and
                                                  converted to lower-case.</p></li>
                                        </ul></li>
                                </ul><ul id="ul_yov_jkh_ni">
                                    <li>Convert <sourcexml>dict:definition</sourcexml> following the
                                        rules below:<ul id="ul_lir_kkh_ni">
                                            <li>If <b>Case 1</b>:
                                                  <sourcexml>dict:definition</sourcexml> becomes
                                                  <targetxml>tei:def/pgrp</targetxml>.</li>
                                            <li>If <b>Case 2</b>: For each
                                                  <sourcexml>dict:definition/dict:subtopic</sourcexml>
                                                following-siblings, create a new
                                                  <targetxml>tei:entry</targetxml>.<ul id="ul_qxs_acf_cl">
                                                  <li>Do not include the
                                                  <targetxml>tei:entry</targetxml> element in the
                                                  output file if it will only consist of empty child
                                                  elements, or if the only child element that
                                                  contains content is
                                                  <targetxml>tei:usg</targetxml>.</li>
                                                </ul><p>The <sourcexml>dict:subtopic</sourcexml>
                                                  element will be dropped. The child elements of
                                                  <sourcexml>dict:subtopic</sourcexml> will be
                                                  contained in <targetxml>tei:entry</targetxml> and
                                                  converted as follows:</p></li>
                                        </ul><ul>
                                            <li><sourcexml>dict:topicname</sourcexml> becomes
                                                  <targetxml>tei:usg</targetxml>. Set
                                                  <targetxml>tei:usg[@type]</targetxml> to the text
                                                from <sourcexml>dict:topicname</sourcexml> (convert
                                                to lower-case and apply constraints for XML Name
                                                datatype).</li>
                                            <li><sourcexml>dict:short-definition</sourcexml> becomes
                                                  <targetxml>tei:def/pgrp</targetxml> with
                                                  <targetxml>tei:def[@label='short-definition']</targetxml>.</li>
                                            <li><sourcexml>dict:detailed-definition</sourcexml>
                                                becomes <targetxml>tei:def/pgrp</targetxml> with
                                                  <targetxml>tei:def[@label='detailed-definition']</targetxml>.</li>
                                            <li><sourcexml>dict:equivalent-term</sourcexml> becomes
                                                  <targetxml>tei:usg[@type='equivalent-term']</targetxml>.</li>
                                            <li><sourcexml>see-also</sourcexml> becomes
                                                  <targetxml>tei:re
                                                type="see-also"</targetxml>.</li>
                                            <li>child elements appearing in the General Markup
                                                section (e.g. <sourcexml>p</sourcexml>) will map to
                                                  <targetxml>tei:def/pgrp</targetxml></li>
                                        </ul></li>
                                    <li><sourcexml>index</sourcexml> becomes
                                            <targetxml>tei:sense/pgrp/section/index:index</targetxml>.<ul id="ul_pxr_wgf_ci">
                                            <li>Set
                                                <targetxml>@indextype="topical"</targetxml>.</li>
                                            <li><sourcexml>@id</sourcexml> becomes
                                                  <targetxml>@xml:id</targetxml></li>
                                            <li><sourcexml>in:lev1</sourcexml>,
                                                  <sourcexml>in:lev2</sourcexml>,
                                                  <sourcexml>in:lev3</sourcexml>,
                                                  <sourcexml>in:lev4</sourcexml>,
                                                  <sourcexml>in:lev5</sourcexml>, or
                                                  <sourcexml>in:lev6</sourcexml> becomes
                                                  <targetxml>index:item</targetxml>.<ul id="ul_prf_eif_ci">
                                                  <li><sourcexml>in:entry</sourcexml> becomes
                                                  <targetxml>index:entry</targetxml><ul id="ul_hie_iif_ci">
                                                  <li><sourcexml>in:entry-text</sourcexml> becomes
                                                  <targetxml>index:entrytext</targetxml></li>
                                                  <li><sourcexml>in:index-ref/refpt</sourcexml>
                                                  becomes
                                                  <targetxml>index:item/ref:anchor</targetxml>. That
                                                  is, suppress <sourcexml>in:index-ref</sourcexml>
                                                  wrapper and move <targetxml>ref:anchor</targetxml>
                                                  to be 1st child of
                                                  <targetxml>index:item</targetxml>. Follow common
                                                  rules for mapping <sourcexml>refpt</sourcexml> to
                                                  <targetxml>ref:anchor</targetxml>, as described in
                                                  General Markup section.<note>There are known
                                                  instances of duplicate <sourcexml>@id</sourcexml>
                                                  values in
                                                  <sourcexml>in:index-ref/refpt[@id]</sourcexml>. UK
                                                  LBU is checking. In the meantime, please comment
                                                  out or suppress duplicates, whichever is usual
                                                  practice.</note></li>
                                                  </ul></li>
                                                </ul></li>
                                        </ul></li>
                                </ul></li>
                        </ul></li>
                </ul></p>
        </section>
        <example>
            <title>Source - <sourcexml>dict:term-entry</sourcexml> Case 1</title>
            <codeblock>

&lt;dict:term-entry&gt;
    &lt;defterm&gt;
        &lt;refpt id="0KMN_2_C_CARAT:HTDICT-TERM" type="ext"/&gt;
        &lt;emph typestyle="bf"&gt;Carat&lt;/emph&gt;
    &lt;/defterm&gt;
    &lt;dict:definition&gt;
    ...
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

	</codeblock>
        </example>
        <example>
            <title>Target - <sourcexml>dict:term-entry</sourcexml> Case 1</title>
            <codeblock>

&lt;dict:defitem&gt;
    &lt;tei:entry&gt;
        &lt;tei:form&gt;
            &lt;tei:orth&gt;
                &lt;!--
                &lt;refpt id="0KMN_2_C_CARAT:HTDICT-TERM" type="ext"/&gt;
                @id converted for ID data type
                --&gt;
                &lt;ref:anchor id="_0KMN_2_C_CARAT_HTDICT-TERM" anchortype="global"/&gt;
                &lt;emph typestyle="bf"&gt;Carat&lt;/emph&gt;
            &lt;/tei:orth&gt;
        &lt;/tei:form&gt;
        &lt;tei:def&gt;
            &lt;pgrp&gt;
             ...
            &lt;/pgrp&gt;
        &lt;/tei:def&gt;
    &lt;/tei:entry&gt;
&lt;/dict:defitem&gt;

	</codeblock>
        </example>
        <example>
            <title>Source - <sourcexml>dict:term-entry</sourcexml> Case 2</title>
            <codeblock>

&lt;dict:term-entry&gt;
    &lt;defterm&gt;
		&lt;refpt id="0KBL_1_ABATEMENT_NOTICE:HTDICT-TERM" type="ext"/&gt;
		&lt;emph typestyle="bf"&gt;Abatement notice&lt;/emph&gt;
	&lt;/defterm&gt;
    &lt;dict:definition&gt;
        &lt;dict:subtopic id="DEF"&gt;
            &lt;dict:topicname&gt;
                &lt;emph typestyle="bf"&gt;Definition&lt;/emph&gt;
            &lt;/dict:topicname&gt;
            &lt;dict:short-definition&gt;
                &lt;p&gt;
                    &lt;text&gt;...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/dict:short-definition&gt;
            &lt;dict:detailed-definition&gt;
                &lt;p&gt;
                    &lt;text&gt;...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/dict:detailed-definition&gt;
            &lt;dict:equivalent-term&gt;...&lt;/dict:equivalent-term&gt;
        &lt;/dict:subtopic&gt;
        &lt;dict:subtopic id="RELT"&gt;
            &lt;dict:topicname&gt;
                &lt;emph typestyle="bf"&gt;Related Terms&lt;/emph&gt;
            &lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;
        &lt;dict:subtopic id="LEG"&gt;
            &lt;dict:topicname&gt;Legislation definitions&lt;/dict:topicname&gt;
            ...
        &lt;/dict:subtopic&gt;
        ...
        &lt;dict:subtopic id="INDX"&gt;
            &lt;dict:topicname&gt;Indexes&lt;/dict:topicname&gt;
        ...
        &lt;/dict:subtopic&gt;
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

	</codeblock>
        </example>
        <example>
            <title>Target - <sourcexml>dict:term-entry</sourcexml> Case 2</title>
            <codeblock>

&lt;dict:defitem&gt;
    &lt;tei:superEntry&gt;
        &lt;tei:form&gt;
           &lt;tei:orth&gt;
                &lt;ref:anchor id="_0KBL_1_ABATEMENT_NOTICE_HTDICT-TERM"
                        anchortype="global"/&gt;
                   &lt;emph typestyle="bf"&gt;Abatement notice&lt;/emph&gt;
           &lt;/tei:orth&gt;
        &lt;/tei:form&gt;
        &lt;tei:entry type="DEF"&gt;
            ...
            &lt;tei:usg type="definition"&gt;
                &lt;emph typestyle="bf"&gt;Definition&lt;/emph&gt;
            &lt;/tei:usg&gt;
            &lt;tei:def label="short-definition"&gt;
                &lt;pgrp&gt;
                    &lt;p&gt;
                        &lt;text&gt;...&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/pgrp&gt;
            &lt;/tei:def&gt;
            &lt;tei:def label="detailed-definition"&gt;
                &lt;pgrp&gt;
                    &lt;p&gt;
                        &lt;text&gt;...&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/pgrp&gt;
            &lt;/tei:def&gt;
            &lt;tei:usg type="equivalent-term"&gt;...&lt;/tei:usg&gt;
        &lt;/tei:entry&gt;
        &lt;tei:entry type="RELT"&gt;
            &lt;tei:usg type="relatedterms"&gt;
                &lt;emph typestyle="bf"&gt;Related Terms&lt;/emph&gt;
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;
        &lt;tei:entry type="LEG"&gt;
            &lt;tei:usg type="legislationdefinitions"&gt;
                Legislation definitions 
            &lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;
        ...
        &lt;tei:entry type="INDX"&gt;
            &lt;tei:usg type="indexes"&gt;Indexes&lt;/tei:usg&gt;
            ...
        &lt;/tei:entry&gt;    
   &lt;/tei:superEntry&gt;
 &lt;/dict:defitem&gt;

	</codeblock>
        </example>
        <example>
            <title>Source - if <targetxml>tei:entry</targetxml> contains no content or only
                    <targetxml>tei:usg</targetxml> has content</title>
            <codeblock>

&lt;dict:term-entry&gt;
...
  &lt;dict:definition&gt;
    &lt;dict:subtopic id="JOUR"&gt;
      &lt;dict:topicname&gt;Journals&lt;/dict:topicname&gt;
      &lt;p&gt;
        &lt;text&gt;
          &lt;remotelink 
            alttext="Relevant journal articles" 
            cmd="f:exp" 
            remotekey2="All Subscribed Journals Sources" 
            service="QUERY" 
            remotekey1="FILE-CODE(#LL000CVHX#)"&gt;
                Relevant journal articles
          &lt;/remotelink&gt;
        &lt;/text&gt;
      &lt;/p&gt;
    &lt;/dict:subtopic&gt;
...

	</codeblock>
        </example>
        <example>
            <title>Target - if <targetxml>tei:entry</targetxml> contains no content or only
                    <targetxml>tei:usg</targetxml> has content</title>
            <codeblock>

...
&lt;!-- 
    This would be the resulting output because the query link is correctly suppressed
    from the tei:def element. Since the only element with content is tei:usg, 
    the entire tei:entry element should not appear in the output file.
--&gt;
&lt;!--
    &lt;tei:entry type="JOUR"&gt;
      &lt;tei:usg type="journals"&gt;Journals&lt;/tei:usg&gt;
      &lt;tei:def/&gt;
    &lt;/tei:entry&gt;
--&gt;
...

	</codeblock>
        </example>
        <example>
            <title>Source - <sourcexml>index</sourcexml></title>
            <codeblock>

&lt;dict:subtopic id="INDX"&gt;
    &lt;dict:topicname&gt;Indexes&lt;/dict:topicname&gt;
    &lt;index id="HALSBURYS"&gt;
        &lt;heading&gt;
            &lt;title&gt;...&lt;/title&gt;
        &lt;/heading&gt;
        &lt;in:lev1&gt;
            &lt;refpt id="tab-1" type="ext"/&gt;
            &lt;in:entry&gt;
                &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
            &lt;/in:entry&gt;
            &lt;in:lev2&gt;
                &lt;in:entry&gt;
                    &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
                &lt;/in:entry&gt;
            &lt;/in:lev2&gt;
        &lt;/in:lev1&gt;
        &lt;in:lev1&gt;
            &lt;in:entry&gt;
                &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
                &lt;in:index-ref&gt;
                    &lt;refpt id="tab-2" type="ext"/&gt;
                &lt;/in:index-ref&gt;
            &lt;/in:entry&gt;
            &lt;in:lev2&gt;
                &lt;in:entry&gt;
                    &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
                &lt;/in:entry&gt;
                &lt;in:lev3&gt;
                    &lt;in:entry&gt;
                        &lt;in:entry-text&gt;...&lt;/in:entry-text&gt;
                    &lt;/in:entry&gt;
                &lt;/in:lev3&gt;
            &lt;/in:lev2&gt;
        &lt;/in:lev1&gt;
        ...
    &lt;/index&gt;
    ...

	</codeblock>
        </example>
        <example>
            <title>Target - <sourcexml>index</sourcexml></title>
            <codeblock>

&lt;tei:entry type="INDX"&gt;
    &lt;tei:usg type="precedents"&gt;Indexes&lt;/tei:usg&gt;
    &lt;tei:sense&gt;
        &lt;pgrp&gt;
            &lt;section&gt;
                &lt;index:index indextype="topical" xml:id="HALSBURYS"&gt;
                    &lt;heading&gt;
                        &lt;title&gt;...&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;index:item&gt;
                        &lt;ref:anchor id="tab-1" anchortype="global"/&gt;
                        &lt;index:entry&gt;
                            &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                        &lt;/index:entry&gt;
                        &lt;index:item&gt;
                            &lt;index:entry&gt;
                                &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                            &lt;/index:entry&gt;
                        &lt;/index:item&gt;
                    &lt;/index:item&gt;
                    &lt;index:item&gt;
                        &lt;ref:anchor id="tab-2" anchortype="global"/&gt;
                        &lt;index:entry&gt;
                            &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                        &lt;/index:entry&gt;
                        &lt;index:item&gt;
                            &lt;index:entry&gt;
                                &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                            &lt;/index:entry&gt;
                            &lt;index:item&gt;
                                &lt;index:entry&gt;
                                  &lt;index:entrytext&gt;...&lt;/index:entrytext&gt;
                                &lt;/index:entry&gt;
                            &lt;/index:item&gt;
                        &lt;/index:item&gt;
                    &lt;/index:item&gt;
                    ...
                &lt;/index:index&gt;
            &lt;/section&gt;
        &lt;/pgrp&gt;
    &lt;/tei:sense&gt;
    ...

	</codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2013-11-07: <ph id="change_20131107_jm">New rule. Within <sourcexml>index</sourcexml>
                    markup. Handles <sourcexml>in:index-ref/refpt</sourcexml> which is new in Oct
                    2013 delivery. Webteam 241340. Streams this change immediately applies to (data
                    exists for) -- UK10. This is a narrow use case and not applicable to other
                    streams.</ph></p>
            <p>2013-08-07: <ph id="change_20130807_rj">Added instruction and sample markup for
                    handling <targetxml>tei:entry</targetxml> when resulting in empty child elements
                    or if the only child element containing content is
                        <targetxml>tei:usg</targetxml>.</ph></p>
            <p>2013-08-02: <ph id="change_20130802_rj">Clarified instructions for
                        <sourcexml>dict:subtopic</sourcexml>. Added instruction for converting
                        <sourcexml>dict:subtopic</sourcexml> general mark-up children.</ph></p>
            <p>2013-04-08: <ph id="change_20130408_rj">Added XML Name datatype constraints
                    application to <targetxml>tei:usg[@type]</targetxml> rule.</ph></p>
            <p>2013-03-07: <ph id="change_20130307_rj">Changed mappings targeting
                        <targetxml>tei:def</targetxml> to
                <targetxml>tei:def/pgrp</targetxml>.</ph></p>
            <p>2013-01-30: <ph id="change_20130130_rj">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\dictionary-Body_OLD.dita  -->
	<xsl:message>dictionary-Body_OLD.xsl requires manual development!</xsl:message> 

	<xsl:template match="dict:body"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  dict:body   -->
		<dict:body>
			<xsl:apply-templates select="@* | node()"/>
		</dict:body>

	</xsl:template>

	<xsl:template match="dict:term-entry"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="dict:definition/dict:subtopic"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="dict:subtopic[@id]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry[@type]   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="defterm"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:form/tei:orth   -->
		<tei:form>
			<tei:orth>
				<xsl:apply-templates select="@* | node()"/>
			</tei:orth>
		</tei:form>

	</xsl:template>

	<xsl:template match="dict:definition"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def/pgrp   -->
		<tei:def>
			<pgrp>
				<xsl:apply-templates select="@* | node()"/>
			</pgrp>
		</tei:def>

	</xsl:template>

	<xsl:template match="dict:subtopic"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

	<xsl:template match="dict:topicname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:usg   -->
		<tei:usg>
			<xsl:apply-templates select="@* | node()"/>
		</tei:usg>

	</xsl:template>

	<xsl:template match="dict:short-definition"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def/pgrp   -->
		<tei:def>
			<pgrp>
				<xsl:apply-templates select="@* | node()"/>
			</pgrp>
		</tei:def>

	</xsl:template>

	<xsl:template match="dict:detailed-definition"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def/pgrp   -->
		<tei:def>
			<pgrp>
				<xsl:apply-templates select="@* | node()"/>
			</pgrp>
		</tei:def>

	</xsl:template>

	<xsl:template match="dict:equivalent-term"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:usg[@type='equivalent-term']   -->
		<tei:usg>
			<xsl:apply-templates select="@* | node()"/>
		</tei:usg>

	</xsl:template>

	<xsl:template match="see-also"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:retype="see-also"   -->
		<!--  Could not determine target element or attribute name:  <tei:retype="see-also">  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </tei:retype="see-also">  -->

	</xsl:template>

	<xsl:template match="p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:def/pgrp   -->
		<tei:def>
			<pgrp>
				<xsl:apply-templates select="@* | node()"/>
			</pgrp>
		</tei:def>

	</xsl:template>

	<xsl:template match="index"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:sense/pgrp/section/index:index   -->
		<tei:sense>
			<pgrp>
				<section>
					<index:index>
						<xsl:apply-templates select="@* | node()"/>
					</index:index>
				</section>
			</pgrp>
		</tei:sense>

	</xsl:template>

	<xsl:template match="@id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="in:lev1"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev2"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev3"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev4"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev5"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:lev6"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item   -->
		<index:item>
			<xsl:apply-templates select="@* | node()"/>
		</index:item>

	</xsl:template>

	<xsl:template match="in:entry"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:entry   -->
		<index:entry>
			<xsl:apply-templates select="@* | node()"/>
		</index:entry>

	</xsl:template>

	<xsl:template match="in:entry-text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:entrytext   -->
		<index:entrytext>
			<xsl:apply-templates select="@* | node()"/>
		</index:entrytext>

	</xsl:template>

	<xsl:template match="in:index-ref/refpt"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  index:item/ref:anchor   -->
		<index:item>
			<ref:anchor>
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</index:item>

	</xsl:template>

	<xsl:template match="in:index-ref"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="refpt"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="in:index-ref/refpt[@id]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  tei:entry   -->
		<tei:entry>
			<xsl:apply-templates select="@* | node()"/>
		</tei:entry>

	</xsl:template>

</xsl:stylesheet>