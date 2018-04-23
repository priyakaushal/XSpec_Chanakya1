<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:comm="http://www.lexis-nexis.com/glp/comm"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
  xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
  exclude-result-prefixes="dita leg docinfo">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="LPA-PracticalGuidance-Body-US">
    <title>Body <lnpid>id-USPA-31007</lnpid></title>


    <shortdesc>All of the following are descendants of <targetxml>seclaw:body</targetxml>. Handle in
      document order unless specifically stated otherwise. Refer to General Markup Section for
      handling of children (including mixed content).</shortdesc>
    <body>
      <section>
        <title>seclaw:body</title>

        <p><sourcexml>/comm:body</sourcexml> becomes <targetxml>/seclaw:body</targetxml> is created
          and children as described below: <ul>
            <li><sourcexml>level</sourcexml> becomes <targetxml>seclaw:level</targetxml> comes with
              following attributes: <ul>
                <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
                <li><sourcexml>toc-caption</sourcexml> becomes
                    <targetxml>alternatetoccaption</targetxml></li>
                <li><sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> and
                  the values are tokenized for <targetxml>@leveltype</targetxml>. These are listed
                  below: <ul>
                    <li><targetxml>seclaw:level[@leveltype="act"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="addendum"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="amendment"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="appendix"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="article"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="canon"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="clause"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="companion"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="constitution"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="dictionary"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="endnote"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="exhibit"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="hierarchy-note"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="instrument"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="order"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="part"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="preamble"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="regulation"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="rule"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="schedule"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="section"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subarticle"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subchapter"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subclause"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subdivision"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subpart"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subregulation"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subschedule"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subrule"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subsection"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subtitle"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="supplement"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="table-of-contents"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="title"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="topic"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="treaty"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="agency"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="subagency"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="special-alert"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="special-unit"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="court-order"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="guidecard"]</targetxml></li>
                    <li><targetxml>seclaw:level[@leveltype="guidecardgroup"]</targetxml></li>
                  </ul>
                </li>
              </ul>
              <p>
                <b>Below are the unique values for <targetxml>@leveltype</targetxml> found in the
                  source documents and the corresponding mapping in NewLexis. For certain
                    <targetxml>@leveltype</targetxml> values set as
                    <targetxml>@leveltype="unclassified"</targetxml>.</b></p>
              <ul>
                <li><sourcexml>level[@leveltype="appendix"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="appendix"]</targetxml></li>
                <li><sourcexml>level[@leveltype="chapter"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                <li><sourcexml>level[@leveltype="form"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
                <li><!-- <b>Proposed <sourcexml>level[@leveltype="group"]</sourcexml> value in  NewLexis.</b>-->
                  <sourcexml>level[@leveltype="group"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
                <li><sourcexml>level[@leveltype="subpara0"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
                <li><!-- <b>Proposed <sourcexml>level[@leveltype="comm.chap"]</sourcexml> value in  NewLexis.</b>-->
                  <sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                <li><sourcexml>level[@leveltype="outline.grp"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                <li><sourcexml>level[@leveltype="guidecard"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="guidecard"]</targetxml></li>
                <li><sourcexml>level[@leveltype="prac.dec"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                <li><sourcexml>level[@leveltype="guidecard.group"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="guidecardgroup"]</targetxml></li>
                <li><sourcexml>level[@leveltype="outline"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="topic"]</targetxml>
                  <b>topic or possibly a variation on form</b></li>
                <li><sourcexml>level[@leveltype="misc.lst.table"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                <li><sourcexml>level[@leveltype="preface"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                <li><sourcexml>level[@leveltype="acknowledgment"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                <li><sourcexml>level[@leveltype="foreword"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                <li><sourcexml>level[@leveltype="pubnote"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                <li><sourcexml>level[@leveltype="comm.att"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
                <li><sourcexml>level[@leveltype="comm.att.grp"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="annex"]</targetxml></li>
                <li><sourcexml>level[@leveltype="comm.intro"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
                <li><sourcexml>level[@leveltype="corp.chap.front"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="introduction"]</targetxml></li>
              </ul>
              <targetxml>seclaw:level</targetxml> populated as: <pre>
              &lt;level id="ABCA_ASICA_ACT.SGM_ABCA.ASICA.PT1" leveltype="comm.chap"&gt;
              <b>Becomes</b>
              &lt;seclaw:level xml:id="ABCA_ASICA_ACT.SGM_ABCA.ASICA.PT1" leveltype="chapter"&gt;
            </pre>
              <p><b>In NewLexis Schema, <targetxml>seclaw:level</targetxml> can not nest directly.
                  If a nested <targetxml>level</targetxml> occurs in the input xml then the
                  conversion should create a <targetxml>seclaw:bodytext</targetxml> before the
                  nested <targetxml>seclaw:level</targetxml>.</b></p>
              <pre>
              &lt;level id="ABCA_ASICA_ACT.SGM_ABCA.ASICA.PT1" leveltype="comm.chap"&gt;
                       &lt;heading searchtype="COMMENTARY"&gt;
                          &lt;title&gt;
                             &lt;refpt type="ext" id="ABCA.ASICA.PT1"/&gt;Part 1 &amp;#x2014; Preliminary [ss 1&amp;#x2013;6]&lt;/title&gt;
                       &lt;/heading&gt;
                       
                        &lt;level id="ABCA_ASICA_ACT.SGM_GROUP_3" leveltype="group" toc-caption="Division 1 &amp;#x2014; Objects [s 1]" subdoc="true"&gt;
                           &lt;heading searchtype="COMMENTARY"&gt;
                             &lt;title&gt;Division 1 &amp;#x2014; Objects [s 1]&lt;/title&gt;
                           &lt;/heading&gt;
                         &lt;!-- ETC. --&gt;
                        &lt;/level&gt;
                       &lt;/level&gt;
              <b>Becomes</b>
              &lt;seclaw:level xml:id="ABCA_ASICA_ACT.SGM_ABCA.ASICA.PT1" leveltype="chapter"&gt;
                          &lt;ref:anchor id="ABCA.ASICA.PT1" anchortype="global"/&gt;
                          &lt;heading&gt;
                             &lt;title&gt;Part 1 &amp;#x2014; Preliminary &amp;#x005B;ss 1&amp;#x2013;6&amp;#x005D;&lt;/title&gt;
                          &lt;/heading&gt;
                       
                       &lt;seclaw:bodytext&gt;
                          &lt;seclaw:level xml:id="ABCA_ASICA_ACT.SGM_GROUP_3" leveltype="division" alternatetoccaption="Division 1 &amp;#x2014; Objects &amp;#x005B;s 1&amp;#x005D;" includeintoc="true"&gt;
                             &lt;heading&gt;
                               &lt;title&gt;Division 1 &amp;#x2014; Objects &amp;#x005B;s 1&amp;#x005D;&lt;/title&gt;
                             &lt;/heading&gt;
                        &lt;!-- ETC. --&gt;
                       &lt;/seclaw:level&gt;
                      &lt;/seclaw:bodytext&gt;
                     &lt;/seclaw:level&gt;
            </pre>
              <!--  MLV: customize this section for LNPG data  -->
              <p>If <sourcexml>level</sourcexml> comes with following
                  <sourcexml>@leveltype</sourcexml> values: <ul>
                  <li>level[@leveltype="prec.grp"]</li>
                  <li>level[@leveltype="precgrp"]</li>
                  <li>level[@leveltype="precgrp1"]</li>
                  <li>level[@leveltype="precgrp2"]</li>
                  <li>level[@leveltype="prec"]</li>
                </ul>
                <b>or</b>
                <sourcexml>level[@lelvetype="comm.chap"]</sourcexml> occurs as parent of any listed
                above <sourcexml>level[@leveltype]</sourcexml> values then
                  <sourcexml>level</sourcexml> becomes <targetxml>form:form</targetxml> with
                following attributes: <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes
                    <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>@toc-caption</sourcexml> becomes
                      <targetxml>@alternatetoccaption</targetxml></li>
                  <li><sourcexml>@leveltype</sourcexml> becomes
                      <targetxml>form:form/form:info/meta/metaitem[@value]</targetxml></li>
                </ul>
                <b>And populated as below:</b>
                <pre>
                      &lt;comm:body&gt;
                               &lt;level id="BANK_FORMS.SGM_BANK.FORMS.PREC" leveltype="comm.chap"&gt;
                               &lt;heading searchtype="COMMENTARY"&gt;
                               &lt;title&gt;&lt;refpt type="ext" id="BANK.FORMS.PREC"&gt;&lt;/refpt&gt;Precedents&lt;/title&gt;&lt;/heading&gt;
                                &lt;level id="BANK_FORMS.SGM_PREC.GRP_10" leveltype="precgrp" toc-caption="Precedents" subdoc="true"&gt;
                                &lt;heading searchtype="COMMENTARY"&gt;&lt;title&gt;Precedents&lt;/title&gt;&lt;/heading&gt;
                                 &lt;level id="BANK_FORMS.SGM_BANK.FORMS.P-1A" leveltype="prec" toc-caption="[P.1A] Precedent 1A" subdoc="true"&gt;
                                 &lt;heading searchtype="FORM"&gt;&lt;edpnum&gt;&lt;refpt type="ext" id="BANK.FORMS.P-1A"&gt;&lt;/refpt&gt;[P.1A]&lt;/edpnum&gt;
                                 &lt;title searchtype="FORM-TITLE"&gt;Precedent 1A&lt;/title&gt;&lt;/heading&gt;
                                 &lt;bodytext searchtype="FORM"&gt;
                                  &lt;p&gt;
                                  &lt;blockquote&gt;
                                  &lt;p indent="none"&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;NOTICE OF INTENTION TO OPPOSE APPLICATION OR PETITION&lt;/emph&gt;&lt;sup&gt;1&lt;/sup&gt;&lt;/text&gt;&lt;/p&gt;
                                  &lt;h align="center"&gt;&lt;emph typestyle="bf"&gt;Form 5&lt;/emph&gt;&lt;/h&gt;
                                  &lt;!-- ETC. --&gt;
                                  &lt;/blockquote&gt;
                                  &lt;/p&gt;
                                  &lt;/bodytext&gt;
                                  &lt;/level&gt;
                                  &lt;/level&gt;
                                  &lt;/level&gt;
                                  &lt;/comm:body&gt;
                      <b>Becomes</b>
                      &lt;seclaw:body&gt;
                               &lt;form:form xml:id="BANK_FORMS.SGM_BANK.FORMS.PREC"&gt;
                               &lt;ref:anchor id="BANK.FORMS.PREC" anchortype="global"/&gt;
                               &lt;form:info&gt;
                               &lt;meta&gt;
                               &lt;metaitem name="leveltype" value="comm.chap"/&gt;
                               &lt;/meta&gt;
                               &lt;/form:info&gt;
                               &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
                               &lt;heading&gt;&lt;title&gt;Precedents&lt;/title&gt;&lt;/heading&gt;
                               &lt;form:bodytext&gt;
                               &lt;form:form xml:id="BANK_FORMS.SGM_PREC.GRP_10" alternatetoccaption="Precedents" includeintoc="true"&gt;
                               &lt;form:info&gt;
                               &lt;meta&gt;
                               &lt;metaitem name="leveltype" value="precgrp"/&gt;
                               &lt;/meta&gt;
                               &lt;/form:info&gt;
                               &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
                               &lt;heading&gt;&lt;title&gt;Precedents&lt;/title&gt;&lt;/heading&gt;
                               &lt;form:bodytext&gt;
                               &lt;form:form xml:id="BANK_FORMS.SGM_BANK.FORMS.P-1A" alternatetoccaption="&amp;#x005B;P.1A&amp;#x005D; Precedent 1A" includeintoc="true"&gt;
                               &lt;ref:anchor id="BANK.FORMS.P-1A" anchortype="global"/&gt;
                               &lt;form:info&gt;
                               &lt;meta&gt;
                               &lt;metaitem name="leveltype" value="prec"/&gt;
                               &lt;/meta&gt;
                               &lt;/form:info&gt;
                               &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
                               &lt;heading&gt;
                               &lt;desig&gt;&amp;#x005B;P.1A&amp;#x005D;&lt;/desig&gt;
                               &lt;title&gt;Precedent 1A&lt;/title&gt;
                               &lt;/heading&gt;
                               &lt;form:bodytext&gt;
                               &lt;form:p&gt;
                               &lt;blockquote&gt;
                               &lt;p indent="none"&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;NOTICE OF INTENTION TO OPPOSE APPLICATION OR PETITION&lt;/emph&gt;&lt;sup&gt;1&lt;/sup&gt;&lt;/text&gt;&lt;/p&gt;
                               &lt;h align="center"&gt;&lt;emph typestyle="bf"&gt;Form 5&lt;/emph&gt;&lt;/h&gt;
                               &lt;!-- ETC. --&gt;
                               &lt;/blockquote&gt;
                               &lt;/form:p&gt;
                               &lt;/form:bodytext&gt;
                               &lt;/form:document&gt;
                               &lt;/form:form&gt;
                               &lt;/form:bodytext&gt;
                               &lt;/form:document&gt;
                               &lt;/form:form&gt;
                               &lt;/form:bodytext&gt;
                               &lt;/form:document&gt;
                               &lt;/form:form&gt;
                               &lt;/seclaw:body&gt;
                  </pre>
              </p>
              <p>If <sourcexml>level</sourcexml> comes with
                  <sourcexml>@leveltype="prelim"</sourcexml> becomes
                  <targetxml>seclaw:prelim</targetxml> come with following attributes: <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes
                    <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>toc-caption</sourcexml> becomes
                      <targetxml>alternatetoccaption</targetxml></li>
                </ul>
                <note>Attribute <sourcexml>level[@leveltype="prelim"]</sourcexml> will be moved in
                    <targetxml>pubfm:narrative[narrativetype="prelim"]</targetxml></note> And
                children described below: <ul>
                  <li><sourcexml>level[leveltype="prelim"]/bodytext</sourcexml> becomes
                      <targetxml>pubfm:narrative</targetxml> with
                      <targetxml>@narrativetype="prelim"</targetxml>
                    <note><b><i><targetxml>pubfm:narrative[narrativetype="prelim"]</targetxml></i></b>
                      is like a bodytext here. So <targetxml>pgrp</targetxml> will becomes direct
                      child of
                          <b><i><targetxml>pubfm:narrative[narrativetype="prelim"]</targetxml></i></b>.</note></li>
                </ul>
                <b>Markup populated as below:</b>
                <pre>
                      &lt;level&gt;
                      &lt;heading searchtype="COMMENTARY"&gt;
                      &lt;desig&gt;
                      &lt;designum&gt;&lt;refpt id="HLA_5" type="ext"/&gt;5 &amp;#x2014;&lt;/designum&gt;
                      &lt;/desig&gt;
                      &lt;title&gt;Aboriginals and Torres Strait Islanders&lt;/title&gt;
                      &lt;/heading&gt;
                       &lt;level id="PRELIM_5" leveltype="prelim" subdoc="false" toc-caption="About this Title"&gt;
                        &lt;bodytext searchtype="COMMENTARY"&gt;
                         &lt;pgrp subdoc="true" toc-caption="Contributors"&gt;
                         &lt;heading&gt;&lt;title&gt;Contributors&lt;/title&gt;&lt;/heading&gt;
                         &lt;p&gt;&lt;text&gt;Dr H A Amankwah BA LLB(UGhana) LLM(Cornell) SJD(NYU)&lt;/text&gt;&lt;/p&gt;
                         &lt;!-- ETC. --&gt;
                         &lt;/pgrp&gt;
                         &lt;/bodytext&gt;
                         &lt;/level&gt;
                        &lt;/level&gt;
                      <b>Becomes</b>
                      &lt;seclaw:level xml:id="HLA_5.1" leveltype="unclassified" includeintoc="false"&gt;
                               &lt;ref:anchor id="HLA_5" anchortype="global"/&gt;
                               &lt;heading&gt;
                               &lt;desig&gt;5 &amp;#x2014;&lt;/desig&gt;
                               &lt;title&gt;Aboriginals and Torres Strait Islanders&lt;/title&gt;
                               &lt;/heading&gt;
                                &lt;seclaw:prelim xml:id="PRELIM_5" alternatetoccaption="About this Title" includeintoc="false"&gt;
                                 &lt;pubfm:narrative narrativetype="prelim"&gt;
                                 &lt;pgrp&gt;
                                 &lt;heading&gt;&lt;title&gt;Contributors&lt;/title&gt;&lt;/heading&gt;
                                 &lt;p&gt;&lt;text&gt;Dr H A Amankwah BA LLB&amp;#x0028;UGhana&amp;#x0029; LLM&amp;#x0028;Cornell&amp;#x0029; SJD&amp;#x0028;NYU&amp;#x0029;&lt;/text&gt;&lt;/p&gt;
                                 &lt;!-- ETC. --&gt;
                                 &lt;/pgrp&gt;
                                &lt;/pubfm:narrative&gt;
                               &lt;/seclaw:prelim&gt;
                              &lt;seclaw:bodytext/&gt;&lt;!-- &lt;targetxml&gt;seclaw:bodytext&lt;/targetxml&gt; is required element in &lt;targetxml&gt;seclaw:level&lt;/targetxml&gt;. --&gt;
                            &lt;/seclaw:level&gt;
                  </pre></p>
              <note><targetxml>seclaw:bodytext</targetxml> is required element in
                  <targetxml>seclaw:level</targetxml>.</note>
              <p><b>If in the source document a <sourcexml>level</sourcexml> with no attributes is
                  encountered and it has no content except children levels, then drop the outer
                  level wrapper in these circumstances.</b>
                <pre>
                      &lt;level&gt;
                               &lt;level id="HLA_5_I" leveltype="chapter" subdoc="false" toc-caption="I INTRODUCTION"&gt;
                               &lt;heading searchtype="COMMENTARY"&gt;
                               &lt;desig&gt;
                               &lt;designum&gt;&lt;refpt id="HLA_5_I" type="ext"/&gt;I&lt;/designum&gt;
                               &lt;/desig&gt;
                               &lt;title&gt;INTRODUCTION&lt;/title&gt;
                               &lt;/heading&gt;
                                &lt;level id="HLA_5_I_1" leveltype="chapter" subdoc="false" toc-caption="(1) LEGAL AND HISTORICAL BACKGROUND"&gt;
                                &lt;heading searchtype="COMMENTARY"&gt;
                                &lt;desig&gt;
                                &lt;designum&gt;&lt;refpt id="HLA_5_I_1" type="ext"/&gt;(1)&lt;/designum&gt;
                                &lt;/desig&gt;
                                &lt;title&gt;LEGAL AND HISTORICAL BACKGROUND&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;!-- ETC. --&gt;
                               &lt;/level&gt;
                              &lt;/level&gt;
                             &lt;/level&gt;
                      <b>Becomes</b>
                      &lt;seclaw:level xml:id="HLA_5_I" leveltype="chapter" alternatetoccaption="I INTRODUCTION" includeintoc="false"&gt;
                                &lt;ref:anchor id="HLA_5_I.1" anchortype="global"/&gt;
                                &lt;heading&gt;
                                &lt;desig&gt;I&lt;/desig&gt;
                                &lt;title&gt;INTRODUCTION&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;seclaw:bodytext&gt;
                                &lt;seclaw:level xml:id="HLA_5_I_1" leveltype="chapter" alternatetoccaption="&amp;#x0028;1&amp;#x0029; LEGAL AND HISTORICAL BACKGROUND" includeintoc="false"&gt;
                                &lt;ref:anchor id="HLA_5_I_1.1" anchortype="global"/&gt;
                                &lt;heading&gt;
                                &lt;desig&gt;&amp;#x0028;1&amp;#x0029;&lt;/desig&gt;
                                &lt;title&gt;LEGAL AND HISTORICAL BACKGROUND&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;!-- ETC. --&gt;
                                &lt;/seclaw:level&gt;
                               &lt;/seclaw:bodytext&gt;
                              &lt;/seclaw:level&gt;
                  </pre>
              </p>
              <note><b><targetxml>@xml:id</targetxml> should be unique within xml and white space
                  not allow in <targetxml>@xml:id</targetxml> value. If white space encountered in
                  the attribute value than replace with underscore(_) sign. Also
                    <targetxml>@xml:id</targetxml> must not start with a numeric value.</b></note>
            </li>
            <li><sourcexml>bodytext</sourcexml> becomes <sourcexml>seclaw:bodytext</sourcexml>.
              <pre>
                    &lt;level id="ABCA_ASICA_ACT.SGM_GUIDECARD_2" leveltype="guidecard"&gt;
                             &lt;heading searchtype="COMMENTARY"&gt;
                             &lt;title&gt;Australian Securities and Investments Commission Act 2001&lt;/title&gt;
                             &lt;/heading&gt;
                             &lt;bodytext searchtype="COMMENTARY"&gt;
                             &lt;blockquote&gt;
                             &lt;p indent="none"&gt;&lt;text align="center"&gt;Current to: MARCH 2011&lt;/text&gt;&lt;/p&gt;
                             &lt;/blockquote&gt;
                            &lt;/bodytext&gt;
                           &lt;/level&gt;
                    <b>Becomes</b>
                    &lt;seclaw:level xml:id="ABCA_ASICA_ACT.SGM_GUIDECARD_2" leveltype="guidecard"&gt;
                             &lt;heading&gt;
                             &lt;title&gt;Australian Securities and Investments Commission Act 2001&lt;/title&gt;
                             &lt;/heading&gt;
                              &lt;seclaw:bodytext&gt;
                               &lt;blockquote&gt;
                               &lt;p indent="none"&gt;&lt;text&gt;Current to: MARCH 2011&lt;/text&gt;&lt;/p&gt;
                               &lt;/blockquote&gt;
                              &lt;/seclaw:bodytext&gt;
                             &lt;/seclaw:level&gt;
                </pre>
            </li>
            <!-- MLV - 2012-04-05 - Technically this section on legfragment is not applicable to LNPG content (no existing use case in data), keeping for possible future inclusion.  -->
            <li><sourcexml>legfragment</sourcexml> becomes <targetxml>primlaw:excerpt</targetxml>.
                <note>For handling of blockquote/legfragment scenario, please refer to file
                  <b>common_rosetta_legfragment.dita</b></note>
              <p><sourcexml>legfragment</sourcexml> has legislative elements as
                  <sourcexml>legfragment/leg:level</sourcexml>. <sourcexml>leg:level</sourcexml>
                becomes <targetxml>primlaw:level</targetxml> comes with following attributes: <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes
                    <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>toc-caption</sourcexml> becomes
                      <targetxml>alternatetoccaption</targetxml></li>
                  <li><sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml>
                    and the values are tokenized for <targetxml>@leveltype</targetxml>. These are
                    listed below: <ul>
                      <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="subagency]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="special-alert"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="special-unit"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="court-order"]</targetxml></li>
                      <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
                    </ul>
                  </li>
                </ul>
                <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of
                  Rosetta elements <sourcexml>leg:level</sourcexml>and
                    <sourcexml>leg:level-vrnt</sourcexml>. Pick the
                    <sourcexml>@leveltype</sourcexml> value from
                    <sourcexml>leg:level-vrnt</sourcexml> and the element
                    <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
                <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other
                  than the tokenized list shown above the value will be set as
                    <targetxml>@leveltype="unclassified"</targetxml></note> And
                  <targetxml>primlaw:level</targetxml> children are describe below: <ul>
                  <li><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with
                    attribute <sourcexml>@inline</sourcexml>, which becomes
                      <targetxml>@inline</targetxml> and has tokenized values that are populated as: <ul>
                      <li><targetxml>heading[@inline="true"]</targetxml></li>
                      <li><targetxml>heading[@inline="false"]</targetxml></li>
                    </ul>
                  </li>
                  <li>If the elements <sourcexml>leg:levelbody</sourcexml> and
                      <sourcexml>leg:bodytext</sourcexml> occurs simultaneously becomes
                      <targetxml>primlaw:bodytext</targetxml>. <note>If the element
                        <sourcexml>leg:levelbody</sourcexml> has child
                        <sourcexml>leg:level</sourcexml> then <sourcexml>leg:levelbody</sourcexml>
                      will be suppressed from NL conversion.</note></li>
                </ul>
                <targetxml>primlaw:level</targetxml> populated as below:
                <pre>
                        
                        &lt;blockquote&gt;
                        &lt;legfragment&gt;
                        &lt;leg:level&gt;
                        &lt;leg:level-vrnt leveltype="subsect"&gt;
                        &lt;leg:heading inline="true"&gt;
                        &lt;title&gt;Leave to recall witnesses&lt;/title&gt;
                        &lt;desig&gt;&lt;designum&gt;(1)&lt;/designum&gt;&lt;/desig&gt;
                        &lt;/leg:heading&gt;
                        &lt;leg:levelbody&gt;
                        &lt;leg:bodytext&gt;
                        &lt;p&gt;&lt;text&gt;If a question arises as to the relevance of a document or thing, the court may examine it and may draw any reasonable inference from it, including an inference as to its authenticity or identity.&lt;/text&gt;&lt;/p&gt;
                        &lt;/leg:bodytext&gt;
                        &lt;/leg:levelbody&gt;
                        &lt;/leg:level-vrnt&gt;
                        &lt;/leg:level&gt;
                        &lt;/legfragment&gt;
                        &lt;/blockquote&gt;
                        <b>Becomes</b>
                        
                        &lt;primlaw:excerpt&gt;
                        &lt;primlaw:level leveltype="subsection"&gt;
                        &lt;heading inline="true"&gt;
                        &lt;title&gt;Leave to recall witnesses&lt;/title&gt;
                        &lt;desig&gt;(1)&lt;/desig&gt;
                        &lt;/heading&gt;
                        &lt;primlaw:bodytext&gt;
                        &lt;p&gt;&lt;text&gt;If a question arises as to the relevance of a document or thing, the court may examine it and may draw any reasonable inference from it, including an inference as to its authenticity or identity.&lt;/text&gt;&lt;/p&gt;
                        &lt;/primlaw:bodytext&gt;
                        &lt;/primlaw:level&gt;
                        &lt;/primlaw:excerpt&gt;
                    </pre>
              </p>
              <p><sourcexml>leg:histnote</sourcexml> becomes
                  <targetxml>note[@notetype="historical"]/bodytext</targetxml> and populated as
                below: <pre>
                    
                    &lt;leg:histnote&gt;
                    &lt;p&gt;&lt;text&gt;[199]&lt;/text&gt;&lt;/p&gt;
                    &lt;/leg:histnote&gt;
                    <b>Becomes</b>
                    
                    &lt;note notetype="historical"&gt;
                    &lt;bodytext&gt;
                    &lt;p&gt;&lt;text&gt;&amp;#x005B;199&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
                    &lt;/bodytext&gt;
                    &lt;/note&gt;
                </pre>
                <note>In the source document, element <sourcexml>leg:histnote</sourcexml> occurred
                  in element <sourcexml>p</sourcexml> but NL schema is not allowed element
                    <targetxml>note[@notetype="historical"]</targetxml> within
                    <targetxml>p</targetxml>. Element <sourcexml>p/leg:histnote</sourcexml> is
                  converted using the rule below: <ul>
                    <li>If element <sourcexml>leg:histnote</sourcexml> occurs within
                        <sourcexml>p</sourcexml> without any sibling than outer element
                        <sourcexml>p</sourcexml> will dropped in NL conversion.</li>
                    <li>If element <sourcexml>leg:histnote</sourcexml> occurs within
                        <sourcexml>p</sourcexml> with sibling element than element
                        <targetxml>note[@notetype="historical"]</targetxml> will move from
                        <targetxml>p</targetxml> in NL conversion.</li>
                  </ul>
                </note>
                <pre>
                    
                    &lt;p&gt;
                     &lt;leg:histnote&gt;
                     &lt;p&gt;&lt;text&gt;[199]&lt;/text&gt;&lt;/p&gt;
                     &lt;/leg:histnote&gt;
                    &lt;/p&gt;
                    <b>Becomes</b>
                    
                    &lt;note notetype="historical"&gt;
                    &lt;bodytext&gt;
                    &lt;p&gt;&lt;text&gt;&amp;#x005B;199&amp;#x005D;&lt;/text&gt;&lt;/p&gt;
                    &lt;/bodytext&gt;
                    &lt;/note&gt;
                    </pre>
              </p>
            </li>
            <!-- End section on legfragment -->
            <!-- MLV - 2012-04-05 - Technically this section on leg:comntry is not applicable to LNPG content (no existing use case in data), keeping for possible future inclusion.  -->
            <li><sourcexml>leg:comntry</sourcexml> becomes <targetxml>annot:annotations</targetxml>
              and optional attributes and child element being converted as below: <ul>
                <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
                <li><sourcexml>toc-caption</sourcexml> becomes
                    <targetxml>alternatetoccaption</targetxml></li>
                <li><sourcexml>heading/title</sourcexml> becomes
                    <targetxml>heading/title</targetxml></li>
                <li><sourcexml>bodytext</sourcexml> becomes <targetxml>bodytext</targetxml></li>
                <li><sourcexml>leg:comntry/heading/title/refpt</sourcexml> becomes
                    <targetxml>annot:annotations/annot:annotation-grp/ref:anchor</targetxml></li>
              </ul>
              <p><b><sourcexml>leg:comntry</sourcexml> encountered in following scenarios:</b>
                <ul>
                  <li><sourcexml>level/bodytext/leg:comntry/level</sourcexml> becomes
                      <targetxml>seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml>
                    with following attributes: <ul>
                      <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                      <li><sourcexml>@subdoc</sourcexml> becomes
                          <targetxml>@includeintoc</targetxml></li>
                      <li><sourcexml>toc-caption</sourcexml> becomes
                          <targetxml>alternatetoccaption</targetxml></li>
                    </ul>
                  </li>
                  <li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry</sourcexml>
                    becomes
                      <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml>
                    <ul>
                      <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                      <li><sourcexml>@subdoc</sourcexml> becomes
                          <targetxml>@includeintoc</targetxml></li>
                      <li><sourcexml>toc-caption</sourcexml> becomes
                          <targetxml>alternatetoccaption</targetxml></li>
                    </ul>
                  </li>
                  <li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry/level</sourcexml>
                    becomes
                      <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml>
                    <ul>
                      <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                      <li><sourcexml>@subdoc</sourcexml> becomes
                          <targetxml>@includeintoc</targetxml></li>
                      <li><sourcexml>toc-caption</sourcexml> becomes
                          <targetxml>alternatetoccaption</targetxml></li>
                    </ul>
                  </li>
                </ul>
              </p>
              <pre>
                    
                    &lt;level id="ASC_ARCHIVE.SGM_MISC.INS_2" leveltype="miscins"&gt;
                    &lt;heading ln.user-displayed="false"&gt;&lt;title&gt;[Instrument]&lt;/title&gt;&lt;/heading&gt;
                    &lt;bodytext searchtype="COMMENTARY"&gt;
                    &lt;!-- ETC. --&gt;
                    &lt;leg:comntry&gt;
                     &lt;level id="ASC_ARCHIVE.SGM_COMM.INTRO_3" leveltype="comm.intro"&gt;
                     &lt;heading ln.user-displayed="false"&gt;&lt;title&gt;[Commentary]&lt;/title&gt;&lt;/heading&gt;
                     &lt;bodytext searchtype="COMMENTARY"&gt;
                     &lt;!-- ETC. --&gt;
                     &lt;/bodytext&gt;
                     &lt;/level&gt;
                    &lt;/leg:comntry&gt;
                    &lt;/bodytext&gt;
                    &lt;/level&gt;
                    <b>Becomes</b>
                    
                    &lt;seclaw:level xml:id="ASC_ARCHIVE.SGM_MISC.INS_2" leveltype="unclassified" includeintoc="false"&gt;
                    &lt;seclaw:bodytext&gt;
                    &lt;!-- ETC. --&gt;
                    &lt;primlaw:excerpt&gt;
                    &lt;primlaw:level leveltype="unclassified"&gt;
                    &lt;annot:annotations&gt;
                    &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
                    &lt;annot:annotation xml:id="ASC_ARCHIVE.SGM_COMM.INTRO_3" includeintoc="false"&gt;
                    &lt;bodytext&gt;
                    &lt;!-- ETC. --&gt;
                    &lt;/bodytext&gt;
                    &lt;/annot:annotation&gt;
                    &lt;/annot:annotation-grp&gt;
                    &lt;/annot:annotations&gt;
                    &lt;/primlaw:level&gt;
                    &lt;/primlaw:excerpt&gt;
                    &lt;/seclaw:bodytext&gt;
                    &lt;/seclaw:level&gt;
                </pre>
            </li>
            <!-- End section on leg:comntry -->
            <li><sourcexml>levelinfo</sourcexml> becomes <targetxml>seclaw:levelinfo</targetxml>.
                <p>If <sourcexml>levelinfo</sourcexml> comes under the xpath
                  <sourcexml>level[@leveltype="prec"]/levelinfo</sourcexml> becomes
                  <targetxml>form:form/form:document/form:info</targetxml> and populated as below:
                <pre>
                        
                        &lt;level id="IPPR_ADR.SGM_IPPR.ADR.45-1" leveltype="prec" toc-caption="[45.1] Expert Determination Agreement" subdoc="true"&gt;
                        &lt;levelinfo&gt;
                        &lt;updatedate&gt;
                        &lt;date year="2009" month="11" day="01"/&gt;
                        &lt;/updatedate&gt;
                        &lt;/levelinfo&gt;
                        &lt;heading searchtype="FORM"&gt;
                        &lt;desig searchtype="FORM-NUM"&gt;
                        &lt;designum&gt;
                        &lt;refpt type="ext" id="IPPR.ADR.45-1"&gt;&lt;/refpt&gt;[45.1]&lt;/designum&gt;
                        &lt;/desig&gt;
                        &lt;title searchtype="FORM-TITLE"&gt;Expert Determination Agreement&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;!-- ETC. --&gt;
                        &lt;/level&gt;
                        <b>Becomes</b>
                        &lt;form:form xml:id="IPPR_ADR.SGM_IPPR.ADR.45-1" alternatetoccaption="&amp;#x005B;45.1&amp;#x005D; Expert Determination Agreement" includeintoc="true"&gt;
                        &lt;ref:anchor id="IPPR.ADR.45-1" anchortype="global"/&gt;
                        &lt;form:info&gt;
                        &lt;meta&gt;
                        &lt;metaitem name="leveltype" value="prec"/&gt;
                        &lt;/meta&gt;
                        &lt;/form:info&gt;
                        &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
                        &lt;heading&gt;
                        &lt;desig&gt;[45.1]&lt;/desig&gt;
                        &lt;title&gt;Expert Determination Agreement&lt;/title&gt;
                        &lt;/heading&gt;
                        &lt;form:info&gt;
                        &lt;miscdate year="2009" month="11" day="01" datetype="update"/&gt;
                        &lt;/form:info&gt;
                        &lt;!-- ETC. --&gt;
                        &lt;/form:document&gt;
                        &lt;/form:form&gt;
                    </pre>
              </p>
              <note>In the source, <sourcexml>levelinfo</sourcexml> is used before the
                  <sourcexml>heading</sourcexml> element under the <sourcexml>level</sourcexml>. But
                in NewLexis schema, <targetxml>seclaw:levelinfo</targetxml> and
                  <targetxml>form:info</targetxml> is not allowed before the
                  <targetxml>heading</targetxml> element. That's why
                  <targetxml>seclaw:levelinfo</targetxml> and <targetxml>form:info</targetxml> will
                appear after heading element.</note>
            </li>
            <li><sourcexml>updatedate/date</sourcexml> becomes <targetxml>miscdate</targetxml> comes
              with three four attributes. These are listed below: <ul>
                <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml></li>
                <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml></li>
                <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml></li>
                <li>Create <targetxml>miscdate[@datetype]</targetxml>. Attibute <b>@datetype</b> is
                  required in <targetxml>miscdate</targetxml> and value type is NMTOKEN.</li>
              </ul>
              <targetxml>miscdate</targetxml> markup populated as below:
              <pre>
                    
                    &lt;level id="IPPR_ADR.SGM_IPPR.ADR.45-1" leveltype="prec" toc-caption="[45.1] Expert Determination Agreement" subdoc="true"&gt;
                    &lt;levelinfo&gt;
                    &lt;updatedate&gt;
                    &lt;date year="2009" month="11" day="01"/&gt;
                    &lt;/updatedate&gt;
                    &lt;/levelinfo&gt;
                    &lt;heading searchtype="FORM"&gt;
                    &lt;desig searchtype="FORM-NUM"&gt;
                    &lt;designum&gt;
                    &lt;refpt type="ext" id="IPPR.ADR.45-1"&gt;&lt;/refpt&gt;[45.1]&lt;/designum&gt;
                    &lt;/desig&gt;
                    &lt;title searchtype="FORM-TITLE"&gt;Expert Determination Agreement&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;!-- ETC. --&gt;
                    &lt;/level&gt;
                    <b>Becomes</b>
                    
                    &lt;form:form xml:id="IPPR_ADR.SGM_IPPR.ADR.45-1" alternatetoccaption="&amp;#x005B;45.1&amp;#x005D; Expert Determination Agreement" includeintoc="true"&gt;
                    &lt;ref:anchor id="IPPR.ADR.45-1" anchortype="global"/&gt;
                    &lt;form:info&gt;
                    &lt;meta&gt;
                    &lt;metaitem name="leveltype" value="prec"/&gt;
                    &lt;/meta&gt;
                    &lt;/form:info&gt;
                    &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
                    &lt;heading&gt;
                    &lt;desig&gt;[45.1]&lt;/desig&gt;
                    &lt;title&gt;Expert Determination Agreement&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;form:info&gt;
                    &lt;miscdate year="2009" month="11" day="01" datetype="update"/&gt;
                    &lt;/form:info&gt;
                    &lt;!-- ETC. --&gt;
                    &lt;/form:document&gt;
                    &lt;/form:form&gt;
                </pre>
            </li>
            <!--  MLV: Call to specific form conversion instructions here.  -->
            <li><sourcexml>form</sourcexml> becomes <targetxml>form:form</targetxml> and children
              described as below: <ul>
                <li>Create <targetxml>form:document</targetxml> with
                    <targetxml>[@annotated="false"]</targetxml>,
                    <targetxml>[@official="false"]</targetxml> and
                    <targetxml>[@typeofdoc="unnamed"]</targetxml>. All these attributes are required
                  in <targetxml>form:document</targetxml>. Attribute
                    <targetxml>@annotated</targetxml> and <targetxml>@official</targetxml> have
                  boolean value. Attribute <targetxml>@typeofdoc</targetxml> have tokenized
                  value.</li>
                <li><sourcexml>bodytext</sourcexml> becomes
                  <targetxml>form:bodytext</targetxml>.</li>
                <li><sourcexml>p</sourcexml> becomes <targetxml>form:p</targetxml>.</li>
                <li><sourcexml>text</sourcexml> becomes <targetxml>form:text</targetxml></li>
              </ul>
              <targetxml>form:form</targetxml> populated as follow:
              <pre>
                    
                    &lt;form&gt;
                    &lt;bodytext searchtype="FORM"&gt;
                    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;&amp;#160;FORM 5&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
                    &lt;p&gt;&lt;text&gt;(Clause 30)&lt;/text&gt;&lt;/p&gt;
                    &lt;p&gt;&lt;text&gt;&lt;emph typestyle="bf"&gt;Form of deposition&lt;/emph&gt;&lt;/text&gt;&lt;/p&gt;
                    &lt;p&gt;&lt;text&gt;(Criminal Procedure Act 1986, section 284(2))&lt;/text&gt;&lt;/p&gt;
                    &lt;/bodytext&gt;
                    &lt;/form&gt;
                    <b>Becomes</b>
                    
                    &lt;form:form&gt;
                    &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
                    &lt;form:bodytext&gt;
                    &lt;form:p&gt;&lt;form:text&gt;&lt;emph typestyle="bf"&gt;&amp;#x00A0;FORM 5&lt;/emph&gt;&lt;/form:text&gt;&lt;/form:p&gt;
                    &lt;form:p&gt;&lt;form:text&gt;(Clause 30)&lt;/form:text&gt;&lt;/form:p&gt;
                    &lt;form:p&gt;&lt;form:text&gt;&lt;emph typestyle="bf"&gt;Form of deposition&lt;/emph&gt;&lt;/form:text&gt;&lt;/form:p&gt;
                    &lt;form:p&gt;&lt;form:text&gt;(Criminal Procedure Act 1986, section 284(2))&lt;/form:text&gt;&lt;/form:p&gt;
                    &lt;/form:bodytext&gt;
                    &lt;/form:document&gt;
                    &lt;/form:form&gt;
                </pre>
            </li>
            <li><sourcexml>leg:empleg</sourcexml> becomes
                <targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml>. <p>In the
                source document, element <sourcexml>leg:empleg</sourcexml> occurs in two scenarios: <ul>
                  <li><sourcexml>level/heading/leg:empleg</sourcexml> is mapped to element
                      <targetxml>form:form/form:document/form:info/primlaw:authority/primlaw:authority-item/base:textitem</targetxml>,
                    which should be moved after the heading element. Populate as below:
                    <pre>
                                
                                &lt;level id="CFN_ADM.SGM_CFN.ADM.C1.120-65" leveltype="prec" toc-caption="120.65 Form 11: Preliminary act &amp;mdash; (To be used where loss of, or damage to or by, a single ship)" subdoc="true"&gt;
                                &lt;glp:note&gt;
                                &lt;blockquote&gt;
                                &lt;hrule/&gt;
                                &lt;p&gt;&lt;text&gt;&lt;inlineobject type="image" attachment="web-server" filename="leg1.gif"/&gt; Legislation cited in the paragraph below. LawNow subscribers click through for daily updates and historical versions.&lt;/text&gt;
                                &lt;text&gt;&amp;#160;&lt;/text&gt;
                                &lt;text&gt;(CTH) &lt;ci:cite searchtype="LEG-REF"&gt;&lt;ci:content&gt;
                                &lt;remotelink refpt="CTH_REG_1988-269" dpsi="005X" remotekey1="REFPTID" docidref="EXAMPLE_DOCID1" service="DOC-ID" alttext="Click to link to LawNow Legislation"&gt;Admiralty Rules 1988&lt;/remotelink&gt; Paragraph 25(2)(a), r 25, Form 11.&lt;/ci:content&gt;&lt;/ci:cite&gt;&lt;/text&gt;
                                &lt;/p&gt;
                                &lt;/blockquote&gt;
                                &lt;/glp:note&gt;
                                &lt;heading searchtype="FORM"&gt;
                                &lt;desig searchtype="FORM-NUM"&gt;
                                &lt;designum&gt;
                                &lt;refpt type="ext" id="CFN.ADM.C1.120-65"/&gt;120.65&lt;/designum&gt;
                                &lt;/desig&gt;
                                &lt;title searchtype="FORM-TITLE"&gt;Form 11: &lt;fnr fntoken="CFN.ADM.C1.120-65.ANT1" fnrtoken="CFN.ADM.C1.120-65.ANT1-R"&gt;1.&lt;/fnr&gt; Preliminary act &amp;mdash; (To be used where loss of, or damage to or by, a single ship) &lt;fnr fntoken="CFN.ADM.C1.120-65.ANT2" fnrtoken="CFN.ADM.C1.120-65.ANT2-R"&gt;2.&lt;/fnr&gt;&lt;/title&gt;
                                &lt;leg:empleg&gt;
                                &lt;remotelink refpt="UCPN.OL.ADR88.PT10.R25.2.A" dpsi="05CC" remotekey1="REFPTID" docidref="EXAMPLE_DOCID2" service="DOC-ID"&gt;Paragraph 25(2)(a)&lt;/remotelink&gt;&lt;/leg:empleg&gt;
                                &lt;/heading&gt;
                                &lt;!-- ETC. --&gt;
                                &lt;/level&gt;
                                <b>Becomes</b>
                                
                                &lt;form:form xml:id="CFN_ADM.SGM_CFN.ADM.C1.120-65" alternatetoccaption="120.65 Form 11: Preliminary act &amp;#x2014; &amp;#x0028;To be used where loss of, or damage to or by, a single ship&amp;#x0029;" includeintoc="true"&gt;
                                &lt;ref:anchor id="CFN.ADM.C1.120-65" anchortype="global"/&gt;
                                &lt;form:info&gt;
                                &lt;meta&gt;
                                &lt;metaitem name="leveltype" value="prec"/&gt;
                                &lt;/meta&gt;
                                &lt;/form:info&gt;
                                &lt;note notetype="xref"&gt;
                                &lt;bodytext&gt;
                                &lt;blockquote&gt;
                                &lt;p&gt;&lt;text&gt;Legislation cited in the paragraph below. LawNow subscribers click through for daily updates and historical versions.&lt;/text&gt;
                                &lt;text&gt;&amp;#x00A0;&lt;/text&gt;
                                &lt;text&gt;&amp;#x0028;CTH&amp;#x0029; &lt;lnci:cite type="legislation" citeref="CTH_REG_1988-269"&gt;
                                &lt;lnci:content&gt;&lt;ref:crossreference&gt;
                                  &lt;ref:content&gt;Admiralty Rules 1988&lt;/ref:content&gt;
                                  &lt;ref:locator anchoridref="CTH_REG_1988-269"&gt;
                                    &lt;ref:locator-key&gt;
                                      &lt;ref:key-name name="DOC-ID"/&gt;
                                      &lt;ref:key-value value="005X-EXAMPLE_DOCID1"/&gt;
                                    &lt;/ref:locator-key&gt;
                                  &lt;/ref:crossreference&gt;Paragraph 25&amp;#x0028;2&amp;#x0029;&amp;#x0028;a&amp;#x0029;, r 25, Form 11.&lt;/lnci:content&gt;&lt;/lnci:cite&gt;&lt;/text&gt;
                                &lt;/p&gt;
                                &lt;/blockquote&gt;
                                &lt;/bodytext&gt;
                                &lt;/note&gt;
                                &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
                                &lt;heading&gt;
                                &lt;desig&gt;120.65&lt;/desig&gt;
                                &lt;title&gt;Form 11:
                                &lt;footnote&gt;&lt;ref:anchor id="CFN.ADM.C1.120-65.ANT1"/&gt;
                                &lt;label&gt;1.&lt;/label&gt;
                                &lt;bodytext&gt;
                                &lt;p&gt;&lt;text&gt;See &lt;ref:crossreferencegroup&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;&amp;#x005B;12,065&amp;#x005D;&lt;/ref:content&gt;&lt;ref:locator&gt;&lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;&lt;ref:key-value value="CFN.ADM.12065"/&gt;&lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:crossreference&gt;&lt;/ref:crossreferencegroup&gt;; Admiralty Rules 1988 &amp;#x0028;Cth&amp;#x0029; &lt;lnci:cite type="legislation" citeref="UCPN.OL.ADR88.R25"&gt;&lt;lnci:content&gt;r 25&lt;/lnci:content&gt;&lt;/lnci:cite&gt;; and Admiralty Rules 1988 &amp;#x0028;Cth&amp;#x0029; Sch 1, &lt;lnci:cite type="legislation" citeref="UCPN.OL.ADR88.SCH1.F11"&gt;&lt;lnci:content&gt;Form 11&lt;/lnci:content&gt;&lt;/lnci:cite&gt; reproduced in &lt;emph typestyle="it"&gt;Ritchie&amp;#x2019;s Uniform Civil Procedure NSW&lt;/emph&gt;, LexisNexis, Sydney, 2005 to date &amp;#x0028;looseleaf&amp;#x0029; at &lt;lnci:cite type="legislation" citeref="UCPN.OL.ADR88.SCH1.F11"&gt;&lt;lnci:content&gt;&amp;#x005B;256,135&amp;#x005D;&lt;/lnci:content&gt;&lt;/lnci:cite&gt;.&lt;/text&gt;&lt;/p&gt;
                                &lt;/bodytext&gt;
                                &lt;/footnote&gt; Preliminary act &amp;#x2014; &amp;#x0028;To be used where loss of, or damage to or by, a single ship&amp;#x0029;
                                &lt;footnote&gt;
                                &lt;ref:anchor id="CFN.ADM.C1.120-65.ANT2"/&gt;&lt;label&gt;2.&lt;/label&gt;
                                &lt;bodytext&gt;
                                &lt;p&gt;&lt;text&gt;Complete all questions fully. If any are not applicable, say so and why.&lt;/text&gt;&lt;/p&gt;
                                &lt;/bodytext&gt;
                                &lt;/footnote&gt;
                                &lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;form:info&gt;
                                &lt;primlaw:authority&gt;
                                &lt;primlaw:authority-item&gt;
                                &lt;textitem&gt;
                                &lt;ref:crossreferencegroup&gt;
                                &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                &lt;ref:content&gt;Paragraph 25&amp;#x0028;2&amp;#x0029;&amp;#x0028;a&amp;#x0029;&lt;/ref:content&gt;
                                &lt;ref:locator anchoridref="UCPN.OL.ADR88.PT10.R25.2.A"&gt;
                                &lt;ref:locator-key&gt;
                                &lt;ref:key-name name="DOC-ID"/&gt;
                                &lt;ref:key-value value="05CC-EXAMPLE_DOCID2"/&gt;
                                &lt;/ref:locator-key&gt;
                                &lt;/ref:locator&gt;
                                &lt;/ref:crossreference&gt;
                                &lt;/ref:crossreferencegroup&gt;
                                &lt;/textitem&gt;
                                &lt;/primlaw:authority-item&gt;
                                &lt;/primlaw:authority&gt;
                                &lt;/form:info&gt;
                                &lt;!-- ETC. --&gt;
                                &lt;/form:document&gt;
                                &lt;/form:form&gt;
                            </pre>
                  </li>
                  <li><sourcexml>leg:level/leg:level-vrnt/leg:heading/leg:empleg</sourcexml> is
                    mapped to element
                      <targetxml>primlaw:authority/primlaw:authority-item/textitem</targetxml>,
                    which will be moved after heading element. Populate as below:
                    <pre>
                                
                                &lt;legfragment&gt;
                                &lt;leg:level&gt;
                                &lt;leg:level-vrnt leveltype="form"&gt;
                                &lt;leg:heading&gt;
                                &lt;desig&gt;&lt;designum&gt;Form 3&lt;/designum&gt;&lt;/desig&gt;
                                &lt;title&gt;Notice under section 2&lt;/title&gt;
                                &lt;leg:empleg&gt;(subregulation 4(3))&lt;/leg:empleg&gt;
                                &lt;/leg:heading&gt;
                                <b>Becomes</b>
                                
                                &lt;primlaw:excerpt&gt;
                                &lt;primlaw:level leveltype="form"&gt;
                                &lt;heading&gt;
                                &lt;desig&gt;Form 3&lt;/desig&gt;
                                &lt;title&gt;Notice under section 2&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;primlaw:authority&gt;&lt;primlaw:authority-item&gt;
                                &lt;textitem&gt;(subregulation 4(3))&lt;/textitem&gt;
                                &lt;/primlaw:authority-item&gt;
                                &lt;/primlaw:authority&gt;
                            </pre>
                  </li>
                </ul>
              </p>
            </li>
          </ul>
        </p>
      </section>

      <section>
        <title>p/text[@align="center"] to p[@align="center"]</title>

        <p>When <sourcexml>p/text[@align="center"]</sourcexml> within
            <sourcexml>bodytext</sourcexml> conversion should move @align value to
            <targetxml>p[@align]</targetxml>.</p>
      </section>

      <example>
        <title>Source p/text[@align="center"]</title>
        <codeblock> &lt;bodytext&gt; &lt;p&gt;&lt;text align ="center"&gt;&lt;emph
          typestyle="bf"&gt;FORM CHAPTER 11 PLAN&lt;/emph&gt; </codeblock>
      </example>

      <example>
        <title>Target p[@align="center"]</title>
        <codeblock> &lt;bodytext&gt; &lt;p align ="center"&gt;&lt;text&gt;&lt;emph
          typestyle="bf"&gt;FORM CHAPTER 11 PLAN&lt;/emph&gt; </codeblock>
      </example>


      <section>
        <title>p[@align="1st-line"] to p[@align="1st-line"]</title>

        <p>When <sourcexml>p[@align="1st-line"]</sourcexml> within <sourcexml>bodytext</sourcexml>
          conversion should move @align value to <targetxml>p[@align]</targetxml>.</p>
      </section>

      <example>
        <title>Source p[@align="1st-line"]</title>
        <codeblock> &lt;bodytext&gt; &lt;p indent="1st-line"&gt; &lt;text&gt;Creditors sometimes
          seek to equitably subordinate a lender’s claim when the lender has attempted to enhance
          its financial position and exert control over the debtor during a pre-bankruptcy,
          out-of-court workout after defaults by the distressed borrower. In such situations, a
          lender might seek to amend credit documents, add financial...&lt;/text&gt; </codeblock>
      </example>

      <example>
        <title>Target p[@align="1st-line"]</title>
        <codeblock> &lt;bodytext&gt; &lt;p indent="1st-line"&gt; &lt;text&gt;Creditors sometimes
          seek to equitably subordinate a lender’s claim when the lender has attempted to enhance
          its financial position and exert control over the debtor during a pre-bankruptcy,
          out-of-court workout after defaults by the distressed borrower. In such situations, a
          lender might seek to amend credit documents, add financial...&lt;/text&gt; </codeblock>
      </example>

    </body>

  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-US\US_LPA\LPA-PracticalGuidance_Body-US.dita  -->
  <!--	<xsl:message>LPA-PracticalGuidance_Body-US.xsl requires manual development!</xsl:message> -->





  <xsl:template match="comm:body">

    <!--  Original Target XPath:  /seclaw:body   -->
    <seclaw:body>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:body>

  </xsl:template>

  <!-- SNB: 2017-12-12 add levelprelim to the list of immed preceding siblings for which to NOT process this for webstar 7060631 fix (wouldnt work when no bodytext before levels)-->
  <xsl:template match="level[not(@leveltype='documentlinks')][not(preceding-sibling::*[1][self::level or self::bodytext or self::embedded-video or self::levelprelim])]" priority="22">
    <xsl:variable name="i" select="count(ancestor::level) + count(preceding::level) + 1"/>
    <!--  Original Target XPath:  seclaw:level   -->
    <xsl:choose>
      <xsl:when test="(parent::level) and (following-sibling::*[1][self::level]) and (not(preceding-sibling::*[1][self::bodytext])) and (not(preceding-sibling::*[1][self::level[preceding-sibling::bodytext]])) and (not(preceding-sibling::*[1][self::level]))">
        <seclaw:bodytext>
          <seclaw:level>
            <xsl:choose>
              <xsl:when test="@leveltype = 'landingpage'">
                <xsl:attribute name="leveltype">
                  <xsl:text>landingpage</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'documentlinks'">
                <xsl:attribute name="leveltype">
                  <xsl:text>digestgroups</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'comm13'">
                <xsl:attribute name="leveltype">
                  <xsl:text>topic</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'topic'">
                <xsl:attribute name="leveltype">
                  <xsl:text>topic</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'sub-topic'">
                <xsl:attribute name="leveltype">
                  <xsl:text>subtopic</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'practicearea'">
                <xsl:attribute name="leveltype">
                  <xsl:text>practicearea</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype='HOME'">
                <xsl:attribute name="leveltype">
                  <xsl:text>topictree</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'AT-A-GLANCE' or @leveltype = 'PRACTICALGUIDANCE' or @leveltype = 'FORMSANDPRECEDENTS' or @leveltype = 'CASES' or @leveltype = 'CODES' or @leveltype = 'LEGALANALYSIS' or @leveltype = 'EMERGINGISSUES' or @leveltype = 'NEWS' or @leveltype = 'ADMINISTRATIVE' or @leveltype = 'ADMINISTRATIVECODESANDREGULATIONS' or @leveltype = 'BRIEFSPLEADINGSANDMOTIONS'">
                <xsl:attribute name="xml:id">
                  <xsl:value-of select="@leveltype"/>
                </xsl:attribute>
                <xsl:attribute name="leveltype">
                  <xsl:text>landingpage</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:otherwise>
                <xsl:attribute name="leveltype">
                  <xsl:text>form</xsl:text>
                </xsl:attribute>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="bodytext/heading"/>
            <xsl:apply-templates select="@*, heading/title/refpt, heading"/>
            <xsl:if test="$i = 1 and preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']">
              <xsl:apply-templates select="preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']"/>
            </xsl:if>
            <xsl:apply-templates select="node() except (heading | refpt | note[@notetype = 'summary'])"/>
          </seclaw:level>
          <xsl:apply-templates select="following-sibling::level" mode="level_wrapper"/>
        </seclaw:bodytext>
      </xsl:when>
      <xsl:when test="preceding-sibling::*[1][self::heading[preceding-sibling::*[1][self::levelinfo]]]">
        <seclaw:bodytext>
          <seclaw:level>
            <xsl:choose>
              <xsl:when test="@leveltype = 'landingpage'">
                <xsl:attribute name="leveltype">
                  <xsl:text>landingpage</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'documentlinks'">
                <xsl:attribute name="leveltype">
                  <xsl:text>digestgroups</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'comm13'">
                <xsl:attribute name="leveltype">
                  <xsl:text>topic</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'topic'">
                <xsl:attribute name="leveltype">
                  <xsl:text>topic</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'sub-topic'">
                <xsl:attribute name="leveltype">
                  <xsl:text>subtopic</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'practicearea'">
                <xsl:attribute name="leveltype">
                  <xsl:text>practicearea</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype='HOME'">
                <xsl:attribute name="leveltype">
                  <xsl:text>topictree</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:when test="@leveltype = 'AT-A-GLANCE' or @leveltype = 'PRACTICALGUIDANCE' or @leveltype = 'FORMSANDPRECEDENTS' or @leveltype = 'CASES' or @leveltype = 'CODES' or @leveltype = 'LEGALANALYSIS' or @leveltype = 'EMERGINGISSUES' or @leveltype = 'NEWS' or @leveltype = 'ADMINISTRATIVE' or @leveltype = 'ADMINISTRATIVECODESANDREGULATIONS' or @leveltype = 'BRIEFSPLEADINGSANDMOTIONS'">
                <xsl:attribute name="xml:id">
                  <xsl:value-of select="@leveltype"/>
                </xsl:attribute>
                <xsl:attribute name="leveltype">
                  <xsl:text>landingpage</xsl:text>
                </xsl:attribute>
              </xsl:when>
              <xsl:otherwise>
                <xsl:attribute name="leveltype">
                  <xsl:text>form</xsl:text>
                </xsl:attribute>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="bodytext/heading"/>
            <xsl:apply-templates select="@*, heading/title/refpt, heading"/>
            <xsl:apply-templates select="node() except (heading | refpt | note[@notetype = 'summary'])"/>
          </seclaw:level>
          <xsl:apply-templates select="following-sibling::level" mode="level_wrapper"/>
        </seclaw:bodytext>
      </xsl:when>
      <xsl:otherwise>
        <seclaw:level>
          <xsl:choose>
            <xsl:when test="/COMMENTARYDOC/docinfo/docinfo:selector[starts-with(.,'FormsAndPrecedents - FormAnnotation')]">
              <xsl:attribute name="leveltype">
               <xsl:value-of select="'form'"/>
              </xsl:attribute>
              <xsl:apply-templates select="heading/title/refpt, heading"/>
              <xsl:if test="$i = 1 and preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']">
                <xsl:apply-templates select="preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']"/>
              </xsl:if>
              <xsl:apply-templates select="preceding::comm:info/contrib/note[not(preceding::contrib/note)]" mode="inline_note"/>
              <xsl:apply-templates select="node() except (heading | levelprelim[preceding::comm:info/contrib/note]|refpt | note[@notetype = 'summary'] | level[(parent::level) and (preceding-sibling::*[1][self::level])] | level[(parent::level) and (preceding-sibling::*[1][self::bodytext])])"/>
            </xsl:when>
            <xsl:when test="/COMMENTARYDOC/docinfo/docinfo:selector[starts-with(.,'FormsAndPrecedents - DraftingNote')]">
              <xsl:attribute name="leveltype">
                <xsl:value-of select="'form'"/>
              </xsl:attribute>
              <xsl:apply-templates select="heading/title/refpt, heading"/>
              <xsl:if test="$i = 1 and preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']">
                <xsl:apply-templates select="preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']"/>
              </xsl:if>
              <xsl:apply-templates select="preceding::comm:info/contrib/note[not(preceding::contrib/note)]" mode="inline_note"/>
              <xsl:apply-templates select="node() except (heading | levelprelim[preceding::comm:info/contrib/note]|refpt | note[@notetype = 'summary'] | level[(parent::level) and (preceding-sibling::*[1][self::level])] | level[(parent::level) and (preceding-sibling::*[1][self::bodytext])])"/>
            </xsl:when>
            <xsl:when test="starts-with(@leveltype,'comm')">
              <xsl:attribute name="leveltype">
                <xsl:text>topic</xsl:text>
              </xsl:attribute>
              <xsl:apply-templates select="heading/title/refpt, heading"/>
              <xsl:if test="$i = 1 and preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']">
                <xsl:apply-templates select="preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']"/>
              </xsl:if>
              <xsl:apply-templates select="preceding::comm:info/contrib/note[not(preceding::contrib/note)]" mode="inline_note"/>
              <xsl:apply-templates select="node() except (heading | levelprelim[preceding::comm:info/contrib/note]|refpt | note[@notetype = 'summary'] | level[(parent::level) and (preceding-sibling::*[1][self::level])] | level[(parent::level) and (preceding-sibling::*[1][self::bodytext])])"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:choose>
              <xsl:when test="@leveltype = 'landingpage'">
              <xsl:attribute name="leveltype">
                <xsl:text>landingpage</xsl:text>
              </xsl:attribute>
            </xsl:when>
            <xsl:when test="@leveltype = 'documentlinks'">
              <xsl:attribute name="leveltype">
                <xsl:text>digestgroups</xsl:text>
              </xsl:attribute>
            </xsl:when>
            <xsl:when test="@leveltype = 'topic'">
              <xsl:attribute name="leveltype">
                <xsl:text>topic</xsl:text>
              </xsl:attribute>
            </xsl:when>
            <xsl:when test="@leveltype = 'sub-topic'">
              <xsl:attribute name="leveltype">
                <xsl:text>subtopic</xsl:text>
              </xsl:attribute>
            </xsl:when>
            <xsl:when test="@leveltype = 'practicearea'">
              <xsl:attribute name="leveltype">
                <xsl:text>practicearea</xsl:text>
              </xsl:attribute>
            </xsl:when>
            <xsl:when test="@leveltype='HOME'">
              <xsl:attribute name="leveltype">
                <xsl:text>topictree</xsl:text>
              </xsl:attribute>
            </xsl:when>
            <xsl:when test="@leveltype = 'AT-A-GLANCE' or @leveltype = 'PRACTICALGUIDANCE' or @leveltype = 'FORMSANDPRECEDENTS' or @leveltype = 'CASES' or @leveltype = 'CODES' or @leveltype = 'LEGALANALYSIS' or @leveltype = 'EMERGINGISSUES' or @leveltype = 'NEWS' or @leveltype = 'ADMINISTRATIVE' or @leveltype = 'ADMINISTRATIVECODESANDREGULATIONS' or @leveltype = 'BRIEFSPLEADINGSANDMOTIONS'">
              <xsl:attribute name="xml:id">
                <xsl:value-of select="@leveltype"/>
              </xsl:attribute>
              <xsl:attribute name="leveltype">
                <xsl:text>landingpage</xsl:text>
              </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
              <xsl:attribute name="leveltype">
                <xsl:text>form</xsl:text>
              </xsl:attribute>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:apply-templates select="bodytext/heading"/>
          <xsl:apply-templates select="@*, heading/title/refpt, heading"/>
          <xsl:if test="$i = 1 and preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']">
            <xsl:apply-templates select="preceding::docinfo:custom-metafield[@name = 'EDIT-DATE']"/>
          </xsl:if>
          <xsl:apply-templates select="preceding::comm:info/contrib/note[not(preceding::contrib/note)]" mode="inline_note"/>
          <xsl:apply-templates select="node() except (heading | levelprelim[preceding::comm:info/contrib/note]|refpt | note[@notetype = 'summary'] | level[(parent::level) and (preceding-sibling::*[1][self::level])] | level[(parent::level) and (preceding-sibling::*[1][self::bodytext])])"/>
            </xsl:otherwise>
          </xsl:choose>
        </seclaw:level>
        <xsl:apply-templates select="following-sibling::level" mode="level_wrapper"/>
      </xsl:otherwise>
    </xsl:choose>
   
  </xsl:template>
  
  <xsl:template match="level[preceding-sibling::*[1][self::level]]" mode="level_wrapper">
    <seclaw:level>
      <xsl:choose>
        <xsl:when test="@leveltype = 'landingpage'">
          <xsl:attribute name="leveltype">
            <xsl:text>landingpage</xsl:text>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="@leveltype = 'documentlinks'">
          <xsl:attribute name="leveltype">
            <xsl:text>digestgroups</xsl:text>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="@leveltype = 'topic'">
          <xsl:attribute name="leveltype">
            <xsl:text>topic</xsl:text>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="@leveltype = 'sub-topic'">
          <xsl:attribute name="leveltype">
            <xsl:text>subtopic</xsl:text>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="@leveltype = 'practicearea'">
          <xsl:attribute name="leveltype">
            <xsl:text>practicearea</xsl:text>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="@leveltype='HOME'">
          <xsl:attribute name="leveltype">
            <xsl:text>topictree</xsl:text>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="@leveltype = 'AT-A-GLANCE' or @leveltype = 'PRACTICALGUIDANCE' or @leveltype = 'FORMSANDPRECEDENTS' or @leveltype = 'CASES' or @leveltype = 'CODES' or @leveltype = 'LEGALANALYSIS' or @leveltype = 'EMERGINGISSUES' or @leveltype = 'NEWS' or @leveltype = 'ADMINISTRATIVE' or @leveltype = 'ADMINISTRATIVECODESANDREGULATIONS' or @leveltype = 'BRIEFSPLEADINGSANDMOTIONS'">
          <xsl:attribute name="xml:id">
            <xsl:value-of select="@leveltype"/>
          </xsl:attribute>
          <xsl:attribute name="leveltype">
            <xsl:text>landingpage</xsl:text>
          </xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="leveltype">
            <xsl:text>form</xsl:text>
          </xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="bodytext/heading"/>
      <xsl:apply-templates select="@*, heading/title/refpt, heading"/>
      <xsl:apply-templates select="node() except (heading | refpt | note[@notetype = 'summary'] | level[(parent::level) and (preceding-sibling::*[1][self::level])] | level[(parent::level) and (preceding-sibling::*[1][self::bodytext])])"/>
    </seclaw:level>
  </xsl:template>
  
  <xsl:template match="level[preceding-sibling::*[1][self::level]]"/>

  <xsl:template match="clause/@id">

    <!--  Original Target XPath:  @xml:id   -->
    <xsl:attribute name="xml:id">
      <xsl:value-of select="."/>
    </xsl:attribute>

  </xsl:template>

  <xsl:template match="@subdoc">

    <!--  Original Target XPath:  @includeintoc   -->
    <xsl:attribute name="includeintoc">
      <xsl:value-of select="."/>
    </xsl:attribute>

  </xsl:template>

  <xsl:template match="toc-caption">

    <!--  Original Target XPath:  alternatetoccaption   -->
    <alternatetoccaption>
      <xsl:apply-templates select="@* | node()"/>
    </alternatetoccaption>

  </xsl:template>

  <!--  <xsl:template match="@leveltype">

    <!-\-  Original Target XPath:  @leveltype   -\->
    <xsl:attribute name="leveltype">
      <xsl:value-of select="."/>
    </xsl:attribute>

  </xsl:template>-->

  <!--<xsl:template match="level[@leveltype=&#34;appendix&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="appendix"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;chapter&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;form&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="form"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;group&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="division"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;para0&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="paragraph"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;subpara0&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="subparagraph"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;comm.chap&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;outline.grp&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="chapter"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;guidecard&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="guidecard"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;prac.dec&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="unclassified"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;guidecard.group&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="guidecardgroup"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;outline&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="topic"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;misc.lst.table&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="introduction"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;preface&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="introduction"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;acknowledgment&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="introduction"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;foreword&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="introduction"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;pubnote&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="introduction"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;comm.att&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="annex"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;comm.att.grp&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="annex"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;comm.intro&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="introduction"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;corp.chap.front&#34;]">

    <!-\-  Original Target XPath:  seclaw:level[@leveltype="introduction"]   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="level[@lelvetype=&#34;comm.chap&#34;]">

    <!-\-  Original Target XPath:  form:form   -\->
    <form:form>
      <xsl:apply-templates select="@* | node()"/>
    </form:form>

  </xsl:template>

<!-\-  <xsl:template match="level[@leveltype]">

    <!-\\-  Original Target XPath:  form:form   -\\->
    <form:form>
      <xsl:apply-templates select="@* | node()"/>
    </form:form>

  </xsl:template>-\->

  <xsl:template match="@toc-caption">

    <!-\-  Original Target XPath:  @alternatetoccaption   -\->
    <xsl:attribute name="alternatetoccaption">
      <!-\- <xsl:apply-templates select="node()"/>-\->
    </xsl:attribute>

  </xsl:template>

  <!-\- MRL (05/17/2017) -\->
  <xsl:template match="level[@leveltype=&#34;prelim&#34;]">
    <seclaw:prelim>
      <xsl:apply-templates select="@*"/>
      <pubfm:narrative narrativetype="prelim">
        <xsl:apply-templates select="node()"/>
      </pubfm:narrative>
    </seclaw:prelim>
  </xsl:template>

  <xsl:template match="level[leveltype=&#34;prelim&#34;]/bodytext">

    <!-\-  Original Target XPath:  pubfm:narrative   -\->
    <pubfm:narrative>
      <xsl:apply-templates select="@* | node()"/>
    </pubfm:narrative>

  </xsl:template>-->

<!--  <xsl:template match="bodytext">

    <!-\-  Original Target XPath:  primlaw:excerpt   -\->
    <primlaw:excerpt>
      <xsl:apply-templates select="@* | node()"/>
    </primlaw:excerpt>

  </xsl:template>-->

<!--  <xsl:template match="seclaw:bodytext">

    <!-\-  Original Target XPath:  seclaw:level   -\->
    <seclaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:level>

  </xsl:template>-->

  <xsl:template match="legfragment">

    <!--  Original Target XPath:  primlaw:excerpt   -->
    <primlaw:excerpt>
      <xsl:apply-templates select="@* | node()"/>
    </primlaw:excerpt>

  </xsl:template>

  <xsl:template match="legfragment/leg:level">

    <!--  Original Target XPath:  primlaw:level   -->
    <primlaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </primlaw:level>

  </xsl:template>

  <xsl:template match="leg:fragment/leg:level">

    <!--  Original Target XPath:  primlaw:level   -->
    <primlaw:level>
      <xsl:apply-templates select="@* | node()"/>
    </primlaw:level>

  </xsl:template>

  <xsl:template match="leg:level-vrnt">

    <!--  Original Target XPath:  @leveltype="unclassified"   -->
    <xsl:attribute name="leveltype">
      <xsl:text>unclassified</xsl:text>
    </xsl:attribute>

  </xsl:template>

  <xsl:template match="leg:heading">

    <!--  Original Target XPath:  heading   -->
    <heading>
      <xsl:apply-templates select="@* | node()"/>
    </heading>

  </xsl:template>

  <xsl:template match="@inline">

    <!--  Original Target XPath:  @inline   -->
    <xsl:attribute name="inline">
      <xsl:value-of select="."/>
    </xsl:attribute>

  </xsl:template>

  <xsl:template match="leg:levelbody">

    <!--  Original Target XPath:  primlaw:bodytext   -->
    <primlaw:bodytext>
      <xsl:apply-templates select="@* | node()"/>
    </primlaw:bodytext>

  </xsl:template>

  <xsl:template match="leg:bodytext">

    <!--  Original Target XPath:  primlaw:bodytext   -->
    <primlaw:bodytext>
      <xsl:apply-templates select="@* | node()"/>
    </primlaw:bodytext>

  </xsl:template>

  <xsl:template match="leg:histnote">

    <!--  Original Target XPath:  note[@notetype="historical"]/bodytext   -->
    <note>
      <bodytext>
        <xsl:apply-templates select="@* | node()"/>
      </bodytext>
    </note>

  </xsl:template>

  <!--  <xsl:template match="p">

    <!-\-  Original Target XPath:  note[@notetype="historical"]   -\->
    <note>
      <xsl:apply-templates select="@* | node()"/>
    </note>

  </xsl:template>-->

  <xsl:template match="p/leg:histnote">

    <!--  Original Target XPath:  note[@notetype="historical"]   -->
    <note>
      <xsl:apply-templates select="@* | node()"/>
    </note>

  </xsl:template>

  <xsl:template match="leg:comntry">

    <!--  Original Target XPath:  annot:annotations   -->
    <annot:annotations>
      <xsl:apply-templates select="@* | node()"/>
    </annot:annotations>

  </xsl:template>

  <!--  <xsl:template match="heading/title">

    <!-\-  Original Target XPath:  heading/title   -\->
    <heading>
      <title>
        <xsl:apply-templates select="@* | node()"/>
      </title>
    </heading>

  </xsl:template>-->

  <xsl:template match="leg:comntry/heading/title/refpt">

    <!--  Original Target XPath:  annot:annotations/annot:annotation-grp/ref:anchor   -->
    <annot:annotations>
      <annot:annotation-grp>
        <ref:anchor xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
          <xsl:apply-templates select="@* | node()"/>
        </ref:anchor>
      </annot:annotation-grp>
    </annot:annotations>

  </xsl:template>

  <xsl:template match="level/bodytext/leg:comntry/level">

    <!--  Original Target XPath:  seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation   -->
    <seclaw:level>
      <seclaw:bodytext>
        <primlaw:excerpt>
          <primlaw:level>
            <annot:annotations>
              <annot:annotation-grp>
                <annot:annotation>
                  <xsl:apply-templates select="@* | node()"/>
                </annot:annotation>
              </annot:annotation-grp>
            </annot:annotations>
          </primlaw:level>
        </primlaw:excerpt>
      </seclaw:bodytext>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry">

    <!--  Original Target XPath:  primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]   -->
    <primlaw:level>
      <annot:annotations>
        <annot:annotation-grp>
          <xsl:apply-templates select="@* | node()"/>
        </annot:annotation-grp>
      </annot:annotations>
    </primlaw:level>

  </xsl:template>

  <xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext/leg:comntry/level">

    <!--  Original Target XPath:  primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation   -->
    <primlaw:level>
      <annot:annotations>
        <annot:annotation-grp>
          <annot:annotation>
            <xsl:apply-templates select="@* | node()"/>
          </annot:annotation>
        </annot:annotation-grp>
      </annot:annotations>
    </primlaw:level>

  </xsl:template>

  <xsl:template match="levelinfo">

    <!--  Original Target XPath:  seclaw:levelinfo   -->
    <xsl:choose>
      <xsl:when test="following-sibling::heading[not(following-sibling::*)]">
        <seclaw:levelinfo>
          <xsl:apply-templates select="@* | node()"/>
        </seclaw:levelinfo>
        <seclaw:bodytext/>
      </xsl:when>
      <xsl:otherwise>
        <seclaw:levelinfo>
          <xsl:apply-templates select="@* | node()"/>
        </seclaw:levelinfo>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="level[@leveltype=&#34;prec&#34;]/levelinfo">

    <!--  Original Target XPath:  form:form/form:document/form:info   -->
    <form:form>
      <form:document>
        <form:info>
          <xsl:apply-templates select="@* | node()"/>
        </form:info>
      </form:document>
    </form:form>

  </xsl:template>

  <!--  <xsl:template match="heading">

    <!-\-  Original Target XPath:  @inline   -\->
    <xsl:attribute name="inline">
      <xsl:apply-templates select="node()"/>
    </xsl:attribute>

  </xsl:template>-->

  <xsl:template match="updatedate/date">

    <!--  Original Target XPath:  miscdate   -->
    <miscdate>
      <xsl:apply-templates select="@* | node()"/>
    </miscdate>

  </xsl:template>

  <xsl:template match="@year">

    <!--  Original Target XPath:  @year   -->
    <xsl:attribute name="year">
      <xsl:value-of select="."/>
    </xsl:attribute>

  </xsl:template>

  <xsl:template match="@month">

    <!--  Original Target XPath:  @month   -->
    <xsl:attribute name="month">
      <xsl:value-of select="."/>
    </xsl:attribute>

  </xsl:template>

  <xsl:template match="@day">

    <!--  Original Target XPath:  @day   -->
    <xsl:attribute name="day">
      <xsl:value-of select="."/>
    </xsl:attribute>

  </xsl:template>
  <!--
  <xsl:template match="form">

    <!-\-  Original Target XPath:  form:form   -\->
    <form:form>
      <xsl:apply-templates select="@* | node()"/>
    </form:form>

  </xsl:template>-->

  <!--  <xsl:template match="text">

    <!-\-  Original Target XPath:  form:text   -\->
    <form:text>
      <xsl:apply-templates select="@* | node()"/>
    </form:text>

  </xsl:template>-->

  <xsl:template match="leg:empleg">

    <!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/textitem   -->
    <primlaw:authority>
      <primlaw:authority-item>
        <textitem>
          <xsl:apply-templates select="@* | node()"/>
        </textitem>
      </primlaw:authority-item>
    </primlaw:authority>

  </xsl:template>

  <xsl:template match="level/heading/leg:empleg">

    <!--  Original Target XPath:  form:form/form:document/form:info/primlaw:authority/primlaw:authority-item/base:textitem   -->
    <form:form>
      <form:document>
        <form:info>
          <primlaw:authority>
            <primlaw:authority-item>
              <base:textitem
                xmlns:base="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:apply-templates select="@* | node()"/>
              </base:textitem>
            </primlaw:authority-item>
          </primlaw:authority>
        </form:info>
      </form:document>
    </form:form>

  </xsl:template>

  <xsl:template match="leg:level/leg:level-vrnt/leg:heading/leg:empleg">

    <!--  Original Target XPath:  primlaw:authority/primlaw:authority-item/textitem   -->
    <primlaw:authority>
      <primlaw:authority-item>
        <textitem>
          <xsl:apply-templates select="@* | node()"/>
        </textitem>
      </primlaw:authority-item>
    </primlaw:authority>

  </xsl:template>

  <!--  <xsl:template match="p/text[@align=&#34;center&#34;]">

    <!-\-  Original Target XPath:  p[@align]   -\->
    <p>
      <xsl:apply-templates select="@* | node()"/>
    </p>

  </xsl:template>-->

  <xsl:template match="p[@align=&#34;1st-line&#34;]">

    <!--  Original Target XPath:  p[@align]   -->
    <p>
      <xsl:apply-templates select="@* | node()"/>
    </p>

  </xsl:template>

  <xsl:template
    match="/COMMENTARYDOC/docinfo/docinfo:custom-metafields/docinfo:custom-metafield[@name = 'EDIT-DATE']">
    <seclaw:levelinfo>
      <miscdate>
        <xsl:attribute name="month">
          <xsl:value-of select="substring-before(., '/')"/>
        </xsl:attribute>
        <xsl:attribute name="day">
          <xsl:choose>
            <xsl:when test="starts-with(substring-before(substring-after(., '/'), '/'),'0')">
              <xsl:value-of select="substring-after(substring-before(substring-after(., '/'), '/'),'0')"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="substring-before(substring-after(., '/'), '/')"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
        <xsl:attribute name="year">
          <xsl:value-of select="substring-after(substring-after(., '/'), '/')"/>
        </xsl:attribute>
        <xsl:attribute name="datetype">
          <xsl:text>EDIT-DATE</xsl:text>
        </xsl:attribute>
      </miscdate>

      <miscdate>
        <xsl:attribute name="month">
          <xsl:value-of select="substring-before(., '/')"/>
        </xsl:attribute>
        <xsl:attribute name="day">
          <xsl:choose>
            <xsl:when test="starts-with(substring-before(substring-after(., '/'), '/'),'0')">
              <xsl:value-of select="substring-after(substring-before(substring-after(., '/'), '/'),'0')"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="substring-before(substring-after(., '/'), '/')"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
        <xsl:attribute name="year">
          <xsl:value-of select="substring-after(substring-after(., '/'), '/')"/>
        </xsl:attribute>
        <xsl:attribute name="datetype">
          <xsl:text>LAST-UPDATE-DATE</xsl:text>
        </xsl:attribute>
      </miscdate>
      <xsl:if test="starts-with(following::level[1]/@leveltype,'comm')">
        <meta>
          <metaitem name="rosettastyle">
            <xsl:attribute name="value">
              <xsl:value-of select="following::level[1]/@leveltype"/>
            </xsl:attribute>
          </metaitem>
        </meta>
      </xsl:if>
    </seclaw:levelinfo>
  </xsl:template>

  <xsl:template match="refpt" priority="2">
    <ref:anchor>
      <xsl:apply-templates select="@*"/>
    </ref:anchor>
  </xsl:template>

  <xsl:template match="docinfo:selector" priority="2">
    <classify:classitem>
      <classify:classitem-identifier>
        <classify:classname>
          <xsl:apply-templates select="@* | node()"/>
        </classify:classname>
      </classify:classitem-identifier>
    </classify:classitem>
  </xsl:template>
  
  <xsl:template match="level/@leveltype" priority="25"/>
  
  <xsl:template match="/COMMENTARYDOC/comm:info/contrib/note[not(preceding::contrib/note)]"/>

</xsl:stylesheet>
