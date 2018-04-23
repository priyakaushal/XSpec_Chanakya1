<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:comm="http://www.lexis-nexis.com/glp/comm"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
  xmlns:glp="http://www.lexis-nexis.com/glp"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
  xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
  xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/"
  xmlns:frm="http://www.lexis-nexis.com/glp/frm"
  xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0"
  exclude-result-prefixes="#all">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance-Body">
    <title>Body <lnpid>id-CCCC-10152</lnpid></title>


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
                    <li><targetxml>seclaw:level[@leveltype="practicearea"]</targetxml></li>
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
                <li><sourcexml>level[@leveltype="practicearea"]</sourcexml> becomes
                    <targetxml>seclaw:level[@leveltype="practicearea"]</targetxml></li>
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
              <!-- Need instructions for these use cases:
            
            leveltype="landingpage">
            leveltype="documentlinks">            
            leveltype="topic">
            leveltype="sub-topic">
            leveltype="comm13">
            leveltype="comm21">
            leveltype="comm30">
            leveltype="comm45">
            leveltype="Main Section">            
            leveltype="Excerpt">
            leveltype="Guidance">
            leveltype="practicearea">
            leveltype="OVERVIEW">
            leveltype="GUIDANCE">
            leveltype="COMMENTARY">
            leveltype="CASES">
            leveltype="LEGISLATION">
            leveltype="FORMS">
            leveltype="PRECEDENTS">
            leveltype="LATESTLEGALUPDATES">
            leveltype="OTHERRESOURCES">
            leveltype="PG_Jurisdiction">
            leveltype="HOME">
            leveltype="LEGALANALYSIS">
            leveltype="EMERGINGISSUES">
            leveltype="NEWS">
            leveltype="AT-A-GLANCE">
            leveltype="PRACTICALGUIDANCE">
            leveltype="FORMSANDPRECEDENTS">
            
            -->
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
              <p id="LPA-PracticalGuidance-Body-leveltype">If <sourcexml>level</sourcexml> comes
                with following <sourcexml>@leveltype</sourcexml> value
                  <sourcexml>level[@leveltype="comm13"]</sourcexml> the conversion should create a
                  <targetxml>seclaw:level/@leveltype="supertopic"</targetxml>
                <sourcexml>level[@leveltype="comm21"]</sourcexml> the conversion should create a
                  <targetxml>seclaw:level/@leveltype="topic"</targetxml>
                <sourcexml>level[@leveltype="comm30"]</sourcexml> the conversion should create a
                  <targetxml>seclaw:level/@leveltype="subtopic"</targetxml>
                <sourcexml>level[@leveltype="comm45"]</sourcexml> the conversion should create a
                  <targetxml>seclaw:level/@leveltype="subtopic"</targetxml>.</p>
              <p> Conversion must also create a child element of
                  <targetxml>seclaw:level/seclaw:levelinfo</targetxml> containing
                  <targetxml>meta/metaitem[@name="rosettastyle" value="{the source leveltype -
                  comm13, comm21, comm30, comm45}</targetxml> elements. </p>
              <p>
                <b>source level@leveltype for values "comm13", "comm21", "comm30", "comm45"</b>
                <pre>
                
                &lt;comm:body&gt;
                  &lt;level leveltype="comm13"&gt;
                     &lt;heading&gt;
                        &lt;title searchtype="MAIN-TITLE"&gt;title text&lt;/title&gt;
                      &lt;/heading&gt;
                      ...
                      &lt;level leveltype="comm21"&gt;
                         &lt;heading&gt;
                           &lt;title&gt;Other statuses&lt;/title&gt;
                         &lt;/heading&gt;
                           ...
                           &lt;level leveltype="comm30"&gt;
                              &lt;heading&gt;
                                 &lt;title&gt;State Sector employees&lt;/title&gt;
                              &lt;/heading&gt;
                                ...
                             &lt;level leveltype="comm45"&gt;
                                &lt;heading&gt;
                                   &lt;title&gt;Primary School employees&lt;/title&gt;
                                &lt;/heading&gt;
                                 ...
      
                
              </pre>
                <b>Target seclaw:level@leveltype and seclaw:levelinfo</b>
                <pre>
               
                &lt;seclaw:level leveltype="supertopic"&gt;
                    &lt;heading&gt;&lt;title&gt;title text&lt;/title&gt;
                      &lt;/heading&gt;
                  &lt;seclaw:levelinfo&gt;
                    &lt;meta&gt;
                      &lt;metaitem name="rosettastyle" value="comm13"/&gt;
                    &lt;/meta&gt;
                  &lt;/seclaw:levelinfo&gt;  
                  ...
                     &lt;level leveltype="topic"&gt;
                       &lt;heading&gt;
                         &lt;title&gt;Other statuses&lt;/title&gt;
                       &lt;/heading&gt;
                        &lt;seclaw:levelinfo&gt;
                           &lt;meta&gt;
                             &lt;metaitem name="rosettastyle" value="comm21"/&gt;
                           &lt;/meta&gt;
                         &lt;/seclaw:levelinfo&gt;                        
                      ...
                          &lt;level leveltype="subtopic"&gt;
                             &lt;heading&gt;
                                &lt;title&gt;State Sector employees&lt;/title&gt;
                             &lt;/heading&gt;                 
                             &lt;seclaw:levelinfo&gt;
                                &lt;meta&gt;
                                   &lt;metaitem name="rosettastyle" value="comm30"/&gt;
                                &lt;/meta&gt;
                             &lt;/seclaw:levelinfo&gt;
                             ...
                             &lt;level leveltype="subtopic"&gt;
                                &lt;heading&gt;
                                  &lt;title&gt;Primary School employees&lt;/title&gt;
                                &lt;/heading&gt;                 
                                &lt;seclaw:levelinfo&gt;
                                   &lt;meta&gt;
                                     &lt;metaitem name="rosettastyle" value="comm45"/&gt;
                                   &lt;/meta&gt;
                                &lt;/seclaw:levelinfo&gt;
                                ...                        
               
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
            <li>
              <sourcexml>/levelinfo/pubsubject</sourcexml> becomes
                <targetxml>classify:classification classscheme="pubsubject"</targetxml> Conversion
              will create a child element of <targetxml>classify:classitem</targetxml> and the
              content of the <sourcexml>pubsubject</sourcexml> becomes the content of
                <targetxml>classify:classname</targetxml>
              <pre>
                    
&lt;levelinfo&gt; 
   &lt;pubsubject&gt;&lt;emph typestyle="bf"/&gt;Text Here &lt;/pubsubject&gt;
&lt;/levelinfo&gt;
                    
                    
                    <b>Becomes</b>
                    
&lt;seclaw:levelinfo&gt; 

    &lt;classify:classification classscheme="pubsubject"&gt;
        &lt;classify:classitem&gt;
            &lt;classify:classitem-identifier&gt;
                &lt;classify:classname&gt;Text Here&lt;/classify:classname&gt;
            &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
                        
&lt;/seclaw:levelinfo&gt;                    
                       
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
                                &lt;p&gt;&lt;text&gt;Legislation cited in the paragraph below. LawNow subscribers click through for daily updates and historical versions.&lt;/text&gt;
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
                                &lt;remotelink refpt="UCPN.OL.ADR88.PT10.R25.2.A" dpsi="05CC" remotekey1="REFPTID" docidref="EXAMPLE_DOCID2" service="DOC-ID" &gt;Paragraph 25(2)(a)&lt;/remotelink&gt;&lt;/leg:empleg&gt;
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
                                &lt;p&gt;&lt;text&gt;See &lt;ref:crossreferencegroup&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;&lt;ref:content&gt;&amp;#x005B;12,065&amp;#x005D;&lt;/ref:content&gt;&lt;ref:locator&gt;&lt;ref:locator-key&gt;&lt;ref:key-name name="DOC-ID"/&gt;&lt;ref:key-value value="007K-CFN.ADM.12065"/&gt;&lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:crossreference&gt;&lt;/ref:crossreferencegroup&gt;; Admiralty Rules 1988 &amp;#x0028;Cth&amp;#x0029; &lt;lnci:cite type="legislation" citeref="UCPN.OL.ADR88.R25"&gt;&lt;lnci:content&gt;r 25&lt;/lnci:content&gt;&lt;/lnci:cite&gt;; and Admiralty Rules 1988 &amp;#x0028;Cth&amp;#x0029; Sch 1, &lt;lnci:cite type="legislation" citeref="UCPN.OL.ADR88.SCH1.F11"&gt;&lt;lnci:content&gt;Form 11&lt;/lnci:content&gt;&lt;/lnci:cite&gt; reproduced in &lt;emph typestyle="it"&gt;Ritchie&amp;#x2019;s Uniform Civil Procedure NSW&lt;/emph&gt;, LexisNexis, Sydney, 2005 to date &amp;#x0028;looseleaf&amp;#x0029; at &lt;lnci:cite type="legislation" citeref="UCPN.OL.ADR88.SCH1.F11"&gt;&lt;lnci:content&gt;&amp;#x005B;256,135&amp;#x005D;&lt;/lnci:content&gt;&lt;/lnci:cite&gt;.&lt;/text&gt;&lt;/p&gt;
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
        <title>Changes</title>
        <p>2014-02-05: <ph id="change_20140205_mlv">Added mapping instructions for source content
            with levels <sourcexml>@leveltype = comm13, comm21, comm30 and comm45</sourcexml>. The
            mapping adds <targetxml>seclaw:leveinfo/meta/metaitem @name="rosettastyle"
              @value="comm13, , comm21, comm30, comm45"</targetxml>.</ph>
        </p>
      </section>

    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\LPA-PracticalGuidance_Body.dita  -->


  <!-- developers note:
    
    PG material is essentially multiple document types in one general content.  So its important to realize that very different rules apply in each of
    the document types.  And within Landing Pages, there are several document subtypes that each have their rules.
    Summary of document types:
    
    Landing Pages - Landing Page Type "Home" or "Other Resources 
    Landing Pages - Landing Page Type "Checklist" or "Latest Legal Updates"
    Landing Pages - Landing Page Type "Guidance"
    Landing Pages - Landing Page Type NOT "Home", "Other Resources", or "Guidance"
    Guidance
    Forms and Precedents
    Topic Tree Document
    
    be mindful of context as you try to update these templates.
        

  -->


  <xsl:key name="glpnotes" match="glp:note[@notetype = 'xref']" use="@notetype"/>

  <xsl:template match="comm:body">

    <!--  Original Target XPath:  /seclaw:body   -->
    <seclaw:body>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:body>

  </xsl:template>



  <xsl:template match="level" priority="25">
    <xsl:variable name="isGuidance"
      select="$selectortype = ('COMMENTARY', 'Excerpts', 'Guidance', 'Overview', 'Checklist')"/>

    <!--  Original Target XPath:  seclaw:level   -->
    <seclaw:level>
      <xsl:apply-templates select="@subdoc"/>
      <xsl:apply-templates select="@toc-caption"/>
      <xsl:if test="not(heading/descendant::refpt)">
        <xsl:apply-templates select="@id"/>
      </xsl:if>
      <xsl:choose>
        <xsl:when
          test="@leveltype = ('HOME', 'OVERVIEW', 'GUIDANCE', 'COMMENTARY', 'CASES', 'LEGISLATION', 'FORMS', 'PRECEDENTS', 'LATESTLEGALUPDATES', 'OTHERRESOURCES')">
          <xsl:attribute name="xml:id" select="@leveltype"/>
        </xsl:when>
        <!-- xmlid only if one of those values -->
        <xsl:otherwise/>
      </xsl:choose>
      <xsl:apply-templates select="@leveltype"/>
      <xsl:choose>
        <xsl:when test="$selectortype = 'Precedent'">
          <xsl:attribute name="leveltype">form</xsl:attribute>
        </xsl:when>
        <xsl:when test="$isGuidance and not(@leveltype) and $selectortype = 'Excerpts'">
          <xsl:attribute name="leveltype">topic</xsl:attribute>
        </xsl:when>
        <xsl:when test="not(@leveltype)">
          <xsl:attribute name="leveltype">unclassified</xsl:attribute>
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>

      <xsl:choose>
        <xsl:when test="heading/descendant::refpt">
          <xsl:apply-templates select="heading/descendant::refpt[1]"/>
        </xsl:when>
        <xsl:when test="bodytext/descendant::refpt">
          <xsl:apply-templates select="bodytext/descendant::refpt[1]"/>
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
      <!-- schema requires heading before levelinfo -->
      <xsl:apply-templates select="heading"/>
      <xsl:apply-templates select="levelinfo"/>
      <xsl:choose>
        <xsl:when
          test="@leveltype = 'comm13' or @leveltype = 'comm21' or @leveltype = 'comm30' or @leveltype = 'comm45'">
          <seclaw:levelinfo>
            <meta xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <metaitem name="rosettastyle" value="{@leveltype}"/>
            </meta>
          </seclaw:levelinfo>
        </xsl:when>
        <xsl:when test="@leveltype = 'PG_Jurisdiction'">
          <seclaw:levelinfo>
            <jurisinfo:jurisdiction>
              <jurisinfo:location>
                <xsl:choose>
                  <xsl:when test="starts-with(@id, 'NSW')">
                    <location:state>NSW</location:state>
                  </xsl:when>
                  <xsl:when test="starts-with(@id, 'QLD')">
                    <location:state>QLD</location:state>
                  </xsl:when>
                  <xsl:when test="starts-with(@id, 'SA')">
                    <location:state>SA</location:state>
                  </xsl:when>
                  <xsl:when test="starts-with(@id, 'TAS')">
                    <location:state>TAS</location:state>
                  </xsl:when>
                  <xsl:when test="starts-with(@id, 'VIC')">
                    <location:state>VIC</location:state>
                  </xsl:when>
                  <xsl:when test="starts-with(@id, 'WA')">
                    <location:state>WA</location:state>
                  </xsl:when>
                  <xsl:when test="starts-with(@id, 'ACT')">
                    <location:territory>ACT</location:territory>
                  </xsl:when>
                  <xsl:when test="starts-with(@id, 'NT')">
                    <location:territory>NT</location:territory>
                  </xsl:when>
                  <xsl:when test="starts-with(@id, 'CTH')">
                    <location:country>CTH</location:country>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:call-template name="outputErrorMessage">
                      <xsl:with-param name="messageText" as="xs:string"
                        select="'country or state code not recognized'"/>
                      <xsl:with-param name="errorType" as="xs:string" select="'ICCE'"/>
                      <xsl:with-param name="errorCode" as="xs:string*" select="'TBD'"/>
                      <xsl:with-param name="context" as="xs:string">
                        <xsl:value-of select="base-uri()"/>
                      </xsl:with-param>
                    </xsl:call-template>
                  </xsl:otherwise>
                </xsl:choose>
              </jurisinfo:location>
            </jurisinfo:jurisdiction>
          </seclaw:levelinfo>
        </xsl:when>
      </xsl:choose>
      <xsl:if test="glp:note | heading/glp:note">
        <seclaw:prelim>
          <xsl:for-each select="glp:note | heading/glp:note">
            <xsl:apply-templates select="."/>
          </xsl:for-each>
        </seclaw:prelim>
      </xsl:if>
      <seclaw:bodytext>
        <!-- wpk 2017-01-17 removed predicate:  select="*[not(self::heading)][not(self::levelinfo)][not(self::glp:note[@notetype = 'xref'])]"
        This had been causing notes to occur in bodytext (as a duplicate) instead of only having them in prelim (when no @notetype was indicated) 
        -->
        <xsl:choose>
          <xsl:when test="*[1][self::h and *] and *[2][self::pgrp]">            
            <xsl:apply-templates
              select="*[1]"
             mode="landingpage"/>            
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates
              select="*[not(self::heading)][not(self::levelinfo)][not(self::glp:note)]"
            />            
          </xsl:otherwise>
        </xsl:choose>
      </seclaw:bodytext>
    </seclaw:level>

  </xsl:template>

  <xsl:template match="heading" priority="25">

    <!--  Original Target XPath:  heading   -->
    <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">

      <!-- MDS 2017-05-05 - Added 'except(refpt) due to UK08CA source markup 
	JL added leg:empleg to except list - it's addressed elsewhere and not valid here ever -->
      <xsl:apply-templates select="@* | node() except (refpt | leg:empleg | glp:note)"/>

      <!--    ... When 2 or more sibling source elements map to <targetxml>heading</targetxml>, the data should be merged into a single <targetxml>heading</targetxml> element unless this would interfere with content ordering.</note>     -->
      <xsl:for-each select="following-sibling::node()[1][self::heading]">
        <xsl:call-template name="combineSiblingsOfSameName"/>
      </xsl:for-each>

    </heading>

  </xsl:template>

  <xsl:template match="level/levelinfo[normalize-space(.) = '']"/>

  <xsl:template match="levelinfo[not(normalize-space(.) = '')]">
    <seclaw:levelinfo>
      <xsl:apply-templates select="node()"/>
    </seclaw:levelinfo>
  </xsl:template>

  <xsl:template match="pubsubject">
    <classify:classification classscheme="pubsubject">
      <classify:classitem>
        <classify:classitem-identifier>
          <classify:classname>
            <xsl:apply-templates select="node()"/>
          </classify:classname>
        </classify:classitem-identifier>
      </classify:classitem>
    </classify:classification>
  </xsl:template>

  <xsl:template match="levelinfo/contrib"/>


  <!--<levelinfo>
    <contrib>Â <person>
      <name.text>
        <emph typestyle="it"/></name.text></person>Â </contrib>
    <pubsubject>
      <emph typestyle="bf"/>Â </pubsubject>
  </levelinfo>
  -->
  <xsl:template match="@subdoc">
    <xsl:attribute name="includeintoc">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="@toc-caption">
    <xsl:attribute name="alternatetoccaption">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="@leveltype">

    <!--  Original Target XPath:  @leveltype   -->
    <xsl:attribute name="leveltype">
      <xsl:variable name="levelTypeValues"
        select="tokenize('act,addendum,amendment,annex,appendix,article,canon,chapter,clause,companion,constitution,dictionary,division,endnote,exhibit,form,hierarchy-note,instrument,introduction,order,paragraph,part,practicearea,preamble,regulation,rule,schedule,section,subarticle,subchapter,subclause,subdivision,subparagraph,subpart,subregulation,subschedule,subrule,subsection,subtitle,supplement,table-of-contents,title,topic,treaty,agency,subagency,unclassified,special-alert,special-unit,court-order,introduction,guidecard,guidecardgroup', ',')"/>
      <!--  Original Target XPath:  @leveltype   -->
      <xsl:choose>
        <xsl:when test="index-of($levelTypeValues, .)">
          <xsl:value-of select="."/>
        </xsl:when>
        <xsl:when test=". = 'documentlinks'">digestgroups</xsl:when>
        <xsl:when test=". = 'subsect'">subsection</xsl:when>
        <xsl:when test=". = 'appendix'">appendix</xsl:when>
        <xsl:when test=". = 'chapter'">chapter</xsl:when>
        <xsl:when test=". = 'form'">form</xsl:when>
        <xsl:when test=". = 'group'">division</xsl:when>
        <xsl:when test=". = 'para0'">paragraph</xsl:when>
        <xsl:when test=". = 'subpara0'">subparagraph</xsl:when>
        <xsl:when test=". = 'comm.chap'">chapter</xsl:when>
        <xsl:when test=". = 'outline.grp'">chapter</xsl:when>
        <xsl:when test=". = 'guidecard'">guidecard</xsl:when>
        <xsl:when test=". = 'practicearea'">practicearea</xsl:when>
        <xsl:when test=". = 'prac.dec'">unclassified</xsl:when>
        <xsl:when test=". = 'guidecard.group'">guidecardgroup</xsl:when>
        <xsl:when test=". = 'outline'">topic</xsl:when>
        <!--topic or possibly a variation on form-->
        <xsl:when test=". = 'misc.lst.table'">introduction</xsl:when>
        <xsl:when test=". = 'preface'">introduction</xsl:when>
        <xsl:when test=". = 'acknowledgment'">introduction</xsl:when>
        <xsl:when test=". = 'foreword'">introduction</xsl:when>
        <xsl:when test=". = 'pubnote'">introduction</xsl:when>
        <xsl:when test=". = 'comm.att'">annex</xsl:when>
        <xsl:when test=". = 'comm.att.grp'">annex</xsl:when>
        <xsl:when test=". = 'comm.intro'">introduction</xsl:when>
        <xsl:when test=". = 'corp.chap.front'">introduction</xsl:when>
        <xsl:when test=". = 'comm13'">supertopic</xsl:when>
        <xsl:when test=". = 'comm21'">topic</xsl:when>
        <xsl:when test=". = 'comm30'">subtopic</xsl:when>
        <xsl:when test=". = 'comm45'">subtopic</xsl:when>
        <xsl:when test=". = 'PG_Jurisdiction'">topic</xsl:when>
        <xsl:when test=". = 'landingpage'">landingpage</xsl:when>
        <xsl:when test=". = 'sub-topic'">subtopic</xsl:when>
        <xsl:when test=". = 'HOME'">topictree</xsl:when>
        <xsl:when test=". = 'OVERVIEW'">landingpage</xsl:when>
        <xsl:when test=". = 'GUIDANCE'">landingpage</xsl:when>
        <xsl:when test=". = 'COMMENTARY'">landingpage</xsl:when>
        <xsl:when test=". = 'CASES'">landingpage</xsl:when>
        <xsl:when test=". = 'LEGISLATION'">landingpage</xsl:when>
        <xsl:when test=". = 'FORMS'">landingpage</xsl:when>
        <xsl:when test=". = 'PRECEDENTS'">landingpage</xsl:when>
        <xsl:when test=". = 'LATESTLEGALUPDATES'">landingpage</xsl:when>
        <xsl:when test=". = 'OTHERRESOURCES'">landingpage</xsl:when>
        <xsl:when test="$selectortype = 'Excerpts'">topic</xsl:when>
        <xsl:otherwise>
          <xsl:text>unclassified</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>

  </xsl:template>

  <xsl:template
    match="
      level[@leveltype = 'prec'
      or @leveltype = 'prec.grp'
      or @leveltype = 'precgrp'
      or @leveltype = 'precgrp1'
      or @leveltype = 'precgrp2'
      or parent::comm.chap]"
    priority="2">
    <form:form>
      <xsl:apply-templates select="@subdoc"/>
      <xsl:apply-templates select="@toc-caption"/>
      <xsl:apply-templates select="@id"/>

      <form:info>
        <meta>
          <metaitem>
            <xsl:attribute name="name">
              <xsl:text>leveltype</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="value">
              <xsl:value-of select="@leveltype"/>
            </xsl:attribute>
          </metaitem>
        </meta>
      </form:info>
      <xsl:if test="child::heading">
        <xsl:apply-templates/>
      </xsl:if>
      <form:document>
        <xsl:attribute name="annotated">
          <xsl:value-of>false</xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="official">
          <xsl:text>false</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="typeofdoc">
          <xsl:text>unnamed</xsl:text>
        </xsl:attribute>
        <xsl:choose>
          <xsl:when test="descendant::bodytext">
            <!-- look to see if group adjacent.  look at AU05 -->
            <form:bodytext>
              <xsl:choose>
                <xsl:when test="child::h">
                  <xsl:apply-templates/>
                  <!--<xsl:call-template name="form-h"/>-->
                </xsl:when>
                <xsl:when test="child::l">
                  <form:list>
                    <xsl:apply-templates/>
                  </form:list>
                </xsl:when>
                <xsl:when test="child::p">
                  <form:p>
                    <xsl:apply-templates/>
                  </form:p>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:apply-templates/>
                </xsl:otherwise>
              </xsl:choose>
            </form:bodytext>
          </xsl:when>
        </xsl:choose>
      </form:document>
    </form:form>
  </xsl:template>

  <xsl:template
    match="level[not(@*)][*[not(self::level)]][$selectortype != 'Excerpts' and $selectortype != 'Precedent']">
    <xsl:apply-templates select="*"/>
  </xsl:template>

<!-- wpk 2017-01-17 removed empty template and added empty template for when there are empty notes only
    <xsl:template match="level/glp:note"/>
-->
  <xsl:template match="level/glp:note[not(*)][not(text())]" priority="3"/>
  
  <xsl:template match="level[@leveltype = 'prelim']">

    <!--  Original Target XPath:  seclaw:prelim   -->
    <seclaw:prelim>
      <xsl:apply-templates select="@subdoc"/>
      <xsl:apply-templates select="@toc-caption"/>
      <xsl:apply-templates select="@id"/>
      <xsl:apply-templates select="@leveltype"/>
      <xsl:apply-templates select="heading/descendant::refpt"/>

      <xsl:apply-templates select="heading"/>
      <xsl:choose>
        <xsl:when test="./bodytext">
          <pubfm:narrative>
            <xsl:attribute name="narrativetype">
              <xsl:value-of select="@leveltype"/>
            </xsl:attribute>
            <xsl:apply-templates select="*[not(self::heading)]"/>
          </pubfm:narrative>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates/>
        </xsl:otherwise>
      </xsl:choose>

    </seclaw:prelim>

  </xsl:template>

  <xsl:template match="bodytext[not(@searchtype = 'Home')]" priority="25">

    <!--  Original Target XPath:  pubfm:narrative   -->
    <!--    <xsl:apply-templates select="@* | node()[not(self::glp:note[@notetype = 'xref'])] except pgrp"/>-->
    <!-- Prateek
    <xsl:apply-templates select="@* | node()[not(self::glp:note[@notetype = 'xref'])]"/>-->
    <xsl:choose>
      <xsl:when test="ancestor::level/@leveltype = 'landingpage' and *[1][self::h]">
        <xsl:apply-templates select="*[1][self::h]"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="@* | node()[not(self::glp:note[@notetype = 'xref'])]"/>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!--  <bodytext searchtype="Home">
    <h>What's New</h>
    <pgrp>
      <p>
        <text>New precedent.</text>
      </p>
    </pgrp>
    
    
    <seclaw:digestgrp>
      <heading>
        <title>What's New</title>
      </heading>
    </seclaw:digestgrp>
    <seclaw:digestgrp>[$streamID='AU10']
-->

  <xsl:template match="bodytext[@searchtype = 'Home']" priority="25">
    <seclaw:digestgrp>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:digestgrp>
  </xsl:template>

  <xsl:template match="bodytext[@searchtype = 'Home'][not(preceding-sibling::*[1][self::h])]/pgrp"
    priority="2">
    <seclaw:digestgrp>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:digestgrp>
  </xsl:template>

  <!--  <xsl:template match="bodytext[$streamID='AU10']/pgrp/p" priority="2">
    <seclaw:digest>
      <seclaw:digestinfo>
        <xsl:apply-templates select="@* | node()"/>        
      </seclaw:digestinfo>
    </seclaw:digest>
  </xsl:template>
-->

  <xsl:template match="bodytext[@searchtype = 'Home']/h" priority="200">
    <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <title xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
        <xsl:apply-templates select="@* | node()"/>
      </title>
    </heading>
  </xsl:template>

  <xsl:template match="bodytext/refpt" priority="200"/>

  <xsl:template match="bodytext[@searchtype = 'Home']/pgrp[heading]/p" priority="200"/>

  <xsl:template match="bodytext[@searchtype = 'Home']/pgrp[heading]/p/text" priority="200"
    name="NZ11_inlinenote_text">
    <inlinenote notetype="other" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:apply-templates select="@* | node()"/>
    </inlinenote>
  </xsl:template>

  <xsl:template match="bodytext[@searchtype = 'Home']/pgrp/heading/title/date" priority="200">
    <ref:referencestatusgroup>
      <ref:referencestatusdate name="updatedate">
        <xsl:copy-of select="@day | @month | @year"/>
      </ref:referencestatusdate>
    </ref:referencestatusgroup>
  </xsl:template>

  <xsl:template match="bodytext[@searchtype = 'Home']/pgrp/heading/title/emph" priority="200">
    <emph xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates select="node()"/>
    </emph>
  </xsl:template>

  <!--  <pgrp>
    <heading>
      <title>
        <emph typestyle="bf">Enforcement: </emph>
        <remotelink dpsi="0QB6" remotekey1="DOC-ID" remotekey2="0QB6_197111" service="DOC-ID">Affidavit in support of application for charging order</remotelink>: <date year="2016" month="11"
          day="22">[22/11/2016]</date></title>
    </heading>
    <p>
      <text>New precedent.</text>
    </p>
  </pgrp>
-->
  <xsl:template match="bodytext[@searchtype = 'Home']/pgrp/heading" priority="200">
    <xsl:choose>
      <xsl:when test="not(.//ci:cite)">
        <seclaw:digest>
          <seclaw:digestinfo>

            <seclaw:subjectmatterreference>
              <seclaw:subjectmattertext>
                <xsl:apply-templates
                  select="title/node()[not(self::remotelink)][not(self::url)][not(self::person)][not(self::date)][not(self::ci:cite)]"
                />
              </seclaw:subjectmattertext>
              <xsl:apply-templates select="title/*[not(self::emph)]"/>
              <xsl:apply-templates select="following-sibling::p/text"/>
            </seclaw:subjectmatterreference>
          </seclaw:digestinfo>
        </seclaw:digest>
      </xsl:when>
      <xsl:otherwise>
        <seclaw:digest>
          <seclaw:digestinfo>

            <ref:subjectmattercite>
              <xsl:apply-templates select="@* | node()"/>
              <xsl:apply-templates select="following-sibling::p"/>
            </ref:subjectmattercite>
          </seclaw:digestinfo>
        </seclaw:digest>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


  <xsl:template match="glp:note[@notetype = 'xref'][not(parent::clause)][preceding-sibling::p]"
    priority="29"/>

  <xsl:template
    match="glp:note[@notetype = 'xref'][not(parent::clause)][preceding-sibling::*[1][self::p[text = '']]]"
    priority="25"/>

  <xsl:template
    match="glp:note[@notetype = 'xref'][preceding-sibling::*[1][self::glp:note[@notetype = 'xref']]]"
    name="glpnoteintext" priority="25">
    <xsl:apply-templates select="@* | node()"/>
    <xsl:for-each select="following-sibling::*[1][self::glp:note[@notetype = 'xref']]">
      <xsl:call-template name="glpnoteintext"/>
    </xsl:for-each>
  </xsl:template>
  
  <!-- wpk 2017-12-07: sibling notes each have @notetype.  Since these are merged,
    the second and subsequent @notetypes cannot create new attributes (child elements have already been creeated).
    So the subsequent ones are suppressed. webstar 7062171 -->
  <xsl:template match="glp:note[@notetype=preceding-sibling::*[1][self::glp:note]/@notetype]/@notetype" priority="2"/>
  

  <xsl:template
    match="glp:note[@notetype = 'xref'][not(parent::clause)][preceding-sibling::*[1][not(self::p) and not(self::glp:note[@notetype = 'xref'])]]"
    name="glpnote" priority="30">
    <marginnote xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <ref:anchor
        id="{concat('au_',/COMMENTARYDOC/docinfo/docinfo:doc-id,'_',
        count(key('glpnotes', @notetype)[. &lt;&lt; current() or . is current()])
        )}"/>
      <bodytext>
        <xsl:apply-templates select="@* | node()"/>
        <xsl:for-each select="following-sibling::*[1][self::glp:note[@notetype = 'xref']]">
          <xsl:call-template name="glpnoteintext"/>
        </xsl:for-each>
      </bodytext>
    </marginnote>
  </xsl:template>

  <xsl:template match="li/glp:note[@notetype = 'xref']" priority="50">
    <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <text>
        <marginnote>
          <ref:anchor
            id="{concat('au_note_',/COMMENTARYDOC/docinfo/docinfo:doc-id,'_',
            count(key('glpnotes', @notetype)[. &lt;&lt; current() or . is current()])
            )}"/>
          <bodytext>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:for-each select="following-sibling::*[1][self::glp:note[@notetype = 'xref']]">
              <xsl:call-template name="glpnoteintext"/>
            </xsl:for-each>
          </bodytext>
        </marginnote>
      </text>
    </p>
  </xsl:template>

  <xsl:template match="glp:note[@notetype = 'xref'][not(parent::clause)]/@notetype" priority="25"/>


  <xsl:template match="text" priority="100">
    <!--  Original Target XPath:  text   -->
    <xsl:choose>
      <!--      <xsl:when test="(normalize-space(string-join(. ,''))='' and not(child::*)) and $streamID='AU10'"/>
-->
      <!-- or normalize-space(.)=' ' -->
      <!--<xsl:when test="normalize-space(.)=' '"/>-->
      <!-- ************************************************************************
                 * note - &nbsp; entity should not be removed, but is at this point     *
                 * due to entities being resolved.  TO BE SOLVED LATER                  *
                 ************************************************************************-->
      <xsl:when test="parent::p[@nl]">
        <xsl:call-template name="insert-vertical-space"/>
      </xsl:when>
      <xsl:when test="ancestor::frm:body and not(ancestor::entry[ancestor::frm:body])">
        <form:text>
          <xsl:apply-templates select="@*"/>
          <xsl:apply-templates select="node() except refpt"/>
        </form:text>
      </xsl:when>
      <xsl:otherwise>
        <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <xsl:apply-templates select="@*"/>
          <xsl:apply-templates select="node() except refpt"/>
          <xsl:for-each
            select="parent::p/following-sibling::*[1][self::glp:note[@notetype = 'xref']]">
            <xsl:call-template name="glpnote"/>
          </xsl:for-each>
        </text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


  <xsl:template match="footnote[@fntoken = fnbody/p/text/refpt/@id]/fnbody/p/text/refpt"
    priority="25"/>


  <xsl:template match="leg:heading[not(@ln.user-displayed = 'false')][not(parent::leg:bodytext)]">

    <xsl:choose>
      <xsl:when test="leg:histnote | glp:note">
        <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <xsl:apply-templates select="@* | node() except (leg:histnote, leg:empleg, glp:note)"/>
        </heading>
        <xsl:apply-templates select="glp:note"/>

        <!--                <xsl:apply-templates select="leg:empleg"/>
-->
      </xsl:when>
      <xsl:otherwise>
        <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <xsl:apply-templates select="@* | node() except (leg:histnote, leg:empleg)"/>
        </heading>
        <!--                <xsl:apply-templates select="leg:empleg"/>
-->
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="leg:heading/@inline">
    <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="leg:levelbody">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="leg:bodytext">
    <primlaw:bodytext>
      <xsl:apply-templates select="@* | node()"/>
    </primlaw:bodytext>
  </xsl:template>




  <xsl:template match="form">

    <!--  Original Target XPath:  form:form   -->
    <form:form>
      <xsl:apply-templates select="@* | node()"/>
    </form:form>

  </xsl:template>


  <xsl:template match="form/bodytext">

    <!--  Original Target XPath:  form:form/form:document/form:bodytext   -->
    <form:document typeofdoc="unnamed" annotated="false" official="true">
      <form:bodytext>
        <xsl:apply-templates select="@* | node()"/>
      </form:bodytext>
    </form:document>

  </xsl:template>

  <xsl:template match="form/bodytext/h">

    <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:h   -->
    <form:h>
      <xsl:apply-templates select="@* | node()"/>
    </form:h>

  </xsl:template>

  <xsl:template match="form/bodytext/p | form/bodytext/l/li/p" priority="25">

    <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
    <form:p>
      <xsl:apply-templates select="@* | node()"/>
    </form:p>

  </xsl:template>

  <xsl:template match="form/bodytext/p/text | form/bodytext/l/li/p/text" priority="25">

    <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
    <form:text>
      <xsl:apply-templates select="@* | node()"/>
    </form:text>

  </xsl:template>


  <xsl:template match="form/bodytext/l" priority="2">

    <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
    <form:list>
      <xsl:apply-templates select="@* | node()"/>
    </form:list>

  </xsl:template>

  <xsl:template match="form/bodytext/l/li">

    <!--  Original Target XPath:  form:form/form:document/form:bodytext/form:p   -->
    <form:listitem>
      <form:bodytext>
        <xsl:apply-templates select="@* | node()"/>
      </form:bodytext>
    </form:listitem>

  </xsl:template>

  <xsl:template match="clause">

    <!--  Original Target XPath:  form:clause/form:bodytext   -->
    <form:clause>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="heading"/>
      <form:bodytext>
<!--
    WPK 2017-01-17
    
Conversion Instructions
"frm:body//glp:note becomes form:bodytext//note.
Note: Please note the XPath syntax "//" is a notation indicating all decendant elements, not just immediate children. So the above instruction also indicates
scenarios such as form/frm:body/clause/glp:note becoming form:form/form:document/form:bodytext/form:clause/
form:bodytext/note.
Note: If there are multiple consecutive target note elements created, these are wrapped with a notes. Please see Consecutive note elements to notes id-
CCCC-10407 on page 451 for details."

          previously:
          <xsl:apply-templates select="node() except heading"/>
          now changed to group adjacent:

          WPK: We can do simple for each group with group adjacent because we are in a clause which means precedent.
          A grouping for non-precendent occurrences would need to watch for when to do margin notes etc.
          
-->       
        <xsl:for-each-group select="*" group-adjacent="if (self::glp:note) then 0 else 1">
          <xsl:choose>
            <xsl:when test="current-grouping-key()=1">
              <xsl:for-each select="current-group()">
                <xsl:apply-templates select=". except self::heading"/>
              </xsl:for-each>
            </xsl:when>
            <xsl:when test="count(current-group()) &lt; 2">
                <xsl:for-each select="current-group()">
                  <xsl:call-template name="glp-note-generic"/>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
              <notes xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:for-each select="current-group()">
                  <xsl:call-template name="glp-note-generic"/>
                </xsl:for-each>
              </notes>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each-group>
      </form:bodytext>
    </form:clause>

  </xsl:template>

  <xsl:template match="clause[@clause-type = ('container', 'group')]/@clause-type"/>

  <xsl:template match="clause[not(@clause-type = ('container', 'group'))]/@clause-type">
    <xsl:attribute name="clausetype" select="."/>
  </xsl:template>



  <!--  <xsl:template match="l/li[ancestor::clause or ancestor::frm:div or ancestor::frm:body]" priority="50">
    <form:listitem>
      <xsl:apply-templates select="@*, refpt, lilabel"/>
      <form:bodytext>
        <xsl:apply-templates select="node() except (refpt,lilabel)"/>
      </form:bodytext>
    </form:listitem>
  </xsl:template>
-->
  <xsl:template
    match="l[not(parent::entry)][ancestor::clause or ancestor::frm:div or ancestor::frm:body]"
    priority="50">
    <form:list>
      <xsl:apply-templates select="@*, refpt"/>
      <xsl:apply-templates select="node() except (refpt)"/>
    </form:list>
  </xsl:template>

  <xsl:template
    match="li[ancestor::clause or ancestor::frm:div or ancestor::frm:body][not(ancestor::footnote or ancestor::note)]"
    priority="50">
    <xsl:choose>
      <xsl:when test="parent::l/parent::entry">
        <listitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <xsl:apply-templates select="@*"/>
          <xsl:apply-templates select="label/refpt"/>
          <xsl:apply-templates select="label"/>
          <bodytext>
            <xsl:apply-templates select="* except label"/>
            <xsl:if test="following-sibling::*[1][self::l]">
              <form:list>
                <xsl:apply-templates select="following-sibling::*[1][self::l]/node()"/>
              </form:list>
            </xsl:if>
          </bodytext>
        </listitem>

      </xsl:when>
      <xsl:otherwise>
        <form:listitem>
          <xsl:apply-templates select="@*"/>
          <xsl:apply-templates select="lilabel/refpt"/>
          <xsl:apply-templates select="lilabel"/>
          <form:bodytext>
            <xsl:apply-templates select="* except lilabel"/>
            <xsl:if test="following-sibling::*[1][self::l]">
              <form:list>
                <xsl:apply-templates select="following-sibling::*[1][self::l]/node()"/>
              </form:list>
            </xsl:if>
          </form:bodytext>
        </form:listitem>

      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template
    match="
      inlineobject[not(@filename = $inlineobjFilesToSuppress
      or @filename = $inlineobjBoilerplateFiles
      or parent::blockquote
      or parent::dispformula
      )]"
    priority="25">
    <xsl:apply-templates select="." mode="refinline"/>
  </xsl:template>

  <xsl:template
    match="
      inlineobject[@filename = $inlineobjFilesToSuppress
      or @filename = $inlineobjBoilerplateFiles
      or parent::blockquote
      or parent::dispformula
      ]"
    priority="25"/>


  <!-- *****************************
      landing page templates -->


  <xsl:template match="h[ancestor::level/@leveltype = 'landingpage']" priority="25">
    <!-- 
    4.1.8.1. bodytext/h (id-CCCC-10195)
  Each bodytext/h causes a new seclaw:digestgrp and child heading to be created, then bodytext/h becomes title, and then the heading is
  closed. The created seclaw:digestgrp is closed when the next bodytext/h start-tag or the bodytext end-tag is encountered.
  -->

    <xsl:apply-templates select="." mode="landingpage"/>
  </xsl:template>

<!--
    wpk 2017-12-08: removed check for following sibling h ("and following-sibling::h") from Ankita's original edit.
    this caused use cases where there was only a single <h> to omit data.  Otherwise ok.
  -->

    
  <xsl:template match="h[ancestor::level/@leveltype = 'landingpage'  and position() eq 1]" mode="landingpage" priority="25">
    <!-- Webstar 7056542 changes , below previous logic is not working properly-->
    <xsl:for-each-group select="following-sibling::* | self::*" group-starting-with="h">
      <xsl:choose>
        <xsl:when test=".='URL API'">
          <xsl:variable name="temp">
          </xsl:variable>
          <xsl:text disable-output-escaping="yes"><![CDATA[<!--]]></xsl:text>URL API source:
            <xsl:copy-of select="current-group()" copy-namespaces="no"/>
          <xsl:text disable-output-escaping="yes"><![CDATA[-->]]></xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <seclaw:digestgrp>
            <xsl:for-each select="current-group()">  
              <xsl:choose>
                <xsl:when test="local-name(.) = 'h' and not(*)">
                  <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <title>
                      <xsl:apply-templates/>
                    </title>
                  </heading>
                </xsl:when>
                <xsl:when test="local-name(.) = 'h' and *" >
                  <xsl:call-template name="landingPageHAsDigest"/>                
                </xsl:when>            
                <xsl:when test="local-name(.) = 'pgrp' and preceding-sibling::*[1][self::h]"/>
                <xsl:otherwise>
                  <xsl:apply-templates select="." mode="landingpage"/>                
                </xsl:otherwise>            
              </xsl:choose>
            </xsl:for-each>          
          </seclaw:digestgrp>          
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each-group>
  <!--  <xsl:choose>
      <xsl:when test="not(preceding-sibling::*)">
        <seclaw:digestgrp>
          <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <title>
              <xsl:apply-templates/>
            </title>
          </heading>
          <xsl:apply-templates select="following-sibling::*[1]" mode="landingpage"/>
        </seclaw:digestgrp>
      </xsl:when>
      <xsl:when test="preceding-sibling::* and following-sibling::*[local-name()!= 'h']">
        <seclaw:digestgrp>
          <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <title>
              <xsl:apply-templates/>
            </title>
          </heading>
          <xsl:apply-templates select="following-sibling::*"
            mode="landingpage"/>
        </seclaw:digestgrp>
      </xsl:when>
      <xsl:when test="preceding-sibling::*">
        <seclaw:digestgrp>
          <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <title>
              <xsl:apply-templates/>
            </title>
          </heading>
          <xsl:apply-templates select="following-sibling::*[1]" mode="landingpage"/>
        </seclaw:digestgrp>
      </xsl:when>
      <xsl:otherwise>zzzzzzzzzzzzzzzzzzz</xsl:otherwise>
    </xsl:choose>
 --> 
  </xsl:template>

  <xsl:template match="bodytext/pgrp[ancestor::level/@leveltype = 'landingpage']" priority="25">
    <xsl:choose>
      <xsl:when test="./p/text/remotelink and ancestor::bodytext/@searchtype = 'Guidance'">
        <toc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <xsl:apply-templates select="node()"/>
        </toc>
      </xsl:when>
      <xsl:when test="not(ancestor::bodytext/@searchtype = 'Guidance') and not(*[1][self::h])">
        <seclaw:digestgrp>
          <xsl:apply-templates select="node()" mode="landingpage"/>
        </seclaw:digestgrp>
      </xsl:when>
      <xsl:when test="not(preceding-sibling::*[1][self::pgrp])">
        <xsl:apply-templates select="." mode="landingpage"/>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
    <!-- Prateek-->
    <!--<seclaw:digestgrp>
      <xsl:apply-templates select="node()"/>
    </seclaw:digestgrp>-->
    <!-- 
            <bodytext searchtype="Guidance">
          <pgrp>
            <p>
              <text>
                <remotelink dpsi="0KL8" remotekey1="REFPTID" service="DOC-ID" refpt="CITEID_34385" status="valid" docidref="0KL8_186815">Act's purpose</remotelink>
              </text>
            </p>
            
             <toc>
                 <toc-entry anchoridref="CITEID_34385"
                            ref:locatorkey="1234-0KL8_186815"
                            ref:locatorkeyprotocol="DOC-ID">
                    <heading>
                       <title>Act's purpose</title>
                    </heading>
                 </toc-entry>
-->

  </xsl:template>

  <!--  <xsl:template match="bodytext/pgrp/p/text[ancestor::level/@leveltype = 'landingpage']"
    priority="130"/>

  <xsl:template match="bodytext/pgrp/p/text/remotelink[ancestor::level/@leveltype = 'landingpage']"
    priority="25"/>
-->

<!-- WPK 2017-01-05.
    Ideally this part of the conversion (non-home/non-guidance landing pages at the h and p elements
    should be rewritten using group-adjacent or group-starting-with (at the parent bodytext level).
    However, given the current state, this template ensures proper wrapping of digestrgrp when the first child isn't h but p 
    (when it is, handled properly elsewhere) and 
    ensures no second processing of sibling elements (duplicates).
    webstar 7078731
    -->
  <xsl:template
    match="p[not(parent::pgrp) or preceding-sibling::h][ancestor::level/@leveltype = 'landingpage'][parent::bodytext/@searchtype!=('Guidance','Home')]
    | h[preceding-sibling::h][ancestor::level/@leveltype = 'landingpage'][parent::bodytext/@searchtype!=('Guidance','Home')]"
     priority="26">
    <xsl:choose>
      <xsl:when test="preceding-sibling::h"/>
      <xsl:when test="not(preceding-sibling::h) ">
      <seclaw:digestgrp>
        <xsl:apply-templates select="." mode="landingpage"/>
      </seclaw:digestgrp>
    </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="." mode="landingpage"/>            
      </xsl:otherwise>
    </xsl:choose>    
  </xsl:template>
  <!-- last monolith -->
  <xsl:template
    match="pgrp[ancestor::level/@leveltype = 'landingpage'] | p[not(parent::pgrp) or preceding-sibling::h][ancestor::level/@leveltype = 'landingpage']"
    mode="landingpage" priority="25">

    <xsl:variable name="emptyCheck">
      <xsl:variable name="text">
        <xsl:for-each select=".//text()[not(parent::remotelink or parent::ci:cite)]">
          <xsl:copy-of select="."/>
        </xsl:for-each>
      </xsl:variable>
      <xsl:value-of select="normalize-space($text)"/>
    </xsl:variable>

    <xsl:variable name="exceptionCheck">
      <!-- 
         Note: There is one an exception to the above sentence: if an entire sequence of data characters consists of only punctuation and/or the words "and" or
"or", this sequence should be wrapped with connector instead of seclaw:subjectmattertext.
         -->
      <xsl:if test="matches($emptyCheck, '^[;\.,andor–]+$')">true</xsl:if>
    </xsl:variable>


    <xsl:choose>
      <xsl:when test="ancestor::bodytext/@searchtype = 'Guidance'">
        <xsl:choose>
          <xsl:when test="./p/text/remotelink">
            <toc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <xsl:apply-templates select="node()"/>
            </toc>
          </xsl:when>
          <xsl:when test="not(preceding-sibling::*[1][self::pgrp])">
            <xsl:apply-templates select="." mode="landingpage"/>
          </xsl:when>
          <xsl:otherwise/>
        </xsl:choose>

      </xsl:when>
      <xsl:when
        test="normalize-space($emptyCheck) = '' and (not(.//date) and not(.//lnlink) and not(.//remotelink) and not(.//person) and not(.//ci:cite))"
        ><!-- empty subjectmatterreference is schema invalid. --></xsl:when>
      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="not(.//ci:cite)">

            <seclaw:digest>
              <seclaw:digestinfo>
                <seclaw:subjectmatterreference>
                  <xsl:variable name="emptyTextCheck">
                    <xsl:for-each select=".//text()">
                      <xsl:choose>
                        <!-- these elements content belongs in SMreference not the SMtext -->
                        <xsl:when
                          test="ancestor::*[self::date or self::lnlink or self::remotelink or self::person or self::ci:cite]"/>
                        <xsl:otherwise>
                          <xsl:copy-of select="."/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </xsl:for-each>
                  </xsl:variable>
                  <!-- .//emph | text[not(*)] | heading -->
                  <xsl:if
                    test="normalize-space($emptyTextCheck) != '' and $exceptionCheck != 'true'">
                    <seclaw:subjectmattertext>
                      <xsl:apply-templates mode="landingpagesubjectmattertext"/>
                    </seclaw:subjectmattertext>
                  </xsl:if>
                  <xsl:apply-templates select="preceding-sibling::h[1]/remotelink"/>

                  <xsl:apply-templates select="node()" mode="landingpagesubjectmatterreference"/>
                  <!--          <xsl:apply-templates select="self::*[not(local-name() = 'p')]"/>
-->
                </seclaw:subjectmatterreference>
              </seclaw:digestinfo>
            </seclaw:digest>
          </xsl:when>
          <xsl:otherwise>
            <seclaw:digest>
              <seclaw:digestinfo>

                <ref:subjectmattercite>
                  <xsl:apply-templates select="text/* | text/text()"/>
                </ref:subjectmattercite>
              </seclaw:digestinfo>
            </seclaw:digest>
          </xsl:otherwise>

        </xsl:choose>

      </xsl:otherwise>
    </xsl:choose>

<!--    <xsl:apply-templates select="following-sibling::*[1]" mode="landingpage"/>-->

  </xsl:template>

  <!-- WPK: some text ends up in seclaw:subjectmattertext
    and some ends up in seclaw:subjectmatterreference
    in order to control which goes where, we use modes based on those names -->



  <xsl:template match="remotelink | date | person | lnlink | ci:cite"
    mode="landingpagesubjectmattertext" priority="2"/>


  <xsl:template match="emph" mode="landingpagesubjectmattertext">
    <emph xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates select="node()" mode="landingpagesubjectmattertext"/>
    </emph>
  </xsl:template>

  <xsl:template match="*" mode="landingpagesubjectmattertext">
    <xsl:apply-templates mode="landingpagesubjectmattertext"/>
  </xsl:template>

  <xsl:template match="text()" mode="landingpagesubjectmattertext">
    <xsl:copy-of select="."/>
  </xsl:template>


  <xsl:template match="text[*]" mode="landingpagesubjectmatterreference" priority="2">
    <!-- not(self::text() and normalize-space(.)='') 
    this is needed when adjacent lnlink elements have carriage return between them. Code would wrap both of them individually.
    they both need to be wrapped in a tag.  but they aren't literally adjacent unless you weed out the intervening white space
    -->
    <xsl:for-each-group select="node()[not(self::text() and normalize-space(.) = '')]"
      group-adjacent="
        if (self::lnlink) then
          1
        else
          0">
      <xsl:choose>
        <xsl:when test="current-grouping-key() = 1">
          <ref:alternaterenditions>
            <xsl:for-each select="current-group()">
              <ref:alternaterendition>
                <xsl:apply-templates select="."/>
              </ref:alternaterendition>
            </xsl:for-each>
          </ref:alternaterenditions>
        </xsl:when>
        <xsl:otherwise>
          <xsl:for-each select="current-group()">
            <xsl:choose>
              <xsl:when test="self::person or self::date">
                <xsl:apply-templates select="." mode="landingpage"/>
              </xsl:when>
              <xsl:when test="self::emph">
                <xsl:apply-templates select="." mode="landingpagesubjectmatterreference"/>
              </xsl:when>
              <xsl:when test="self::*">
                <xsl:apply-templates select="."/>
              </xsl:when>
              <xsl:otherwise>
                <!-- text() -->
                <xsl:apply-templates select="." mode="landingpagesubjectmatterreference"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each-group>
  </xsl:template>


  <xsl:template match="emph | text[not(*)] | title/text() | text/text() | h/text()"
    mode="landingpagesubjectmatterreference" priority="2"/>

  <xsl:template match="text[not(*)]/text()" mode="landingpagesubjectmatterreference" priority="2"/>

  <xsl:template match="heading | title" mode="landingpagesubjectmatterreference" priority="2">
    <xsl:apply-templates select="node()" mode="landingpagesubjectmatterreference"/>
  </xsl:template>

  <!-- 
4.1.10.3. bodytext/p (id-CCCC-10202)
Note: There is one an exception to the above sentence: if an entire sequence of data characters consists of only punctuation and/or the words "and" or
"or", this sequence should be wrapped with connector instead of seclaw:subjectmattertext.
                <p>
                  <text>
                  <remotelink dpsi="0KNG" remotekey1="DOC-ID" remotekey2="0KNG_1436362" service="DOC-ID">Australian Family Law Service &gt; Family Law Act &gt; Part VI Divorce and Nullity of
                      Marriage &gt; Commentary on Section 55A &gt; [s 55A.1]</remotelink>
                      &#x2013;
                      <remotelink dpsi="0KNG" remotekey1="DOC-ID" remotekey2="0KNG_1436377" service="DOC-ID">[s
                      55A.17]</remotelink>
                      </text>
                </p>
                
          <p>
            <text>
              <emph typestyle="it">Emamy and Marino </emph>(1994) FLC 92 487</text>
          </p>

-->

  <xsl:template
    match="
      title/text()[preceding-sibling::*[1][self::*]][normalize-space(.) != '']
      | text/text()[preceding-sibling::*[1][self::*]][normalize-space(.) != ''][matches(., '^[;\.,andor–]+$')]"
    mode="landingpagesubjectmatterreference" priority="3">
    <connector xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:value-of select="."/>
    </connector>
  </xsl:template>

  <xsl:template match="*" mode="landingpagesubjectmatterreference">
    <xsl:apply-templates select="."/>
  </xsl:template>

  <!-- <xsl:template match="lnlink[not(preceding-sibling::*[1][self::lnlink])]"
    mode="landingpagesubjectmatterreference">
    <ref:alternaterenditions>
      <ref:alternaterendition>
        <xsl:apply-templates select="."/>
      </ref:alternaterendition>
      <xsl:apply-templates select="following-sibling::*[1][self::lnlink]" mode="landingpagesubjectmatterreference"/>
    </ref:alternaterenditions>
  </xsl:template>

  <xsl:template match="lnlink[preceding-sibling::*[1][self::lnlink]]"
    mode="landingpagesubjectmatterreference">
    <ref:alternaterendition>
      <xsl:apply-templates select="."/>
    </ref:alternaterendition>
      <xsl:apply-templates select="following-sibling::*[1][self::lnlink]" mode="landingpagesubjectmatterreference"/>
  </xsl:template>
  -->
  <xsl:template match="person | date" mode="landingpagesubjectmatterreference">
    <xsl:apply-templates select="." mode="landingpage"/>
  </xsl:template>


  <!--
  <xsl:template
    match="pgrp[ancestor::level/@leveltype = 'landingpage'] | p[not(parent::pgrp)][ancestor::level/@leveltype = 'landingpage']"
    mode="landingpage" priority="25">
    <!-\- 
    4.1.8.1. bodytext/h (id-CCCC-10195)
  Each bodytext/h causes a new seclaw:digestgrp and child heading to be created, then bodytext/h becomes title, and then the heading is
  closed. The created seclaw:digestgrp is closed when the next bodytext/h start-tag or the bodytext end-tag is encountered.
  4.1.11.2. bodytext/p (id-CCCC-10207)
Each bodytext/p causes a new seclaw:digest and child seclaw:digestinfo to be created, then bodytext/p becomes either
seclaw:subjectmatterreference or ref:subjectmattercite depending on its contents:
• If the p, or any of its subelements, does not contain a ci:cite, then a seclaw:subjectmatterreference element is created. In this case the content
of p and p/text is moved to the target document as the content of the created seclaw:subjectmatterreference element's children:
– seclaw:subjectmattertext
– ref:crossreference
– ref:lnlink
– ref:referencestatusgroup
– connector
– inlinenote
– ref:alternaterenditions
– byline)
  -\->
    <xsl:choose>
      <xsl:when test="not(.//ci:cite)">
        <seclaw:digest>
          <seclaw:digestinfo>
            <seclaw:subjectmatterreference>
              <xsl:apply-templates select="preceding-sibling::h[1]/remotelink"/>       
              <seclaw:subjectmattertext>
                <xsl:apply-templates select="title/emph | text/emph"/>
              </seclaw:subjectmattertext>
              <xsl:apply-templates select="title/*[not(self::emph)]"/>
<!-\-              <xsl:apply-templates select="following-sibling::p/text"/>
-\->            </seclaw:subjectmatterreference>
          </seclaw:digestinfo>
        </seclaw:digest>
        
<!-\-
          <seclaw:digest>
          <seclaw:digestinfo>
            <seclaw:subjectmatterreference>
              <seclaw:subjectmattertext>
                <xsl:apply-templates select="title/emph"/>
              </seclaw:subjectmattertext>
              <xsl:apply-templates select="title/*[not(self::emph)]"/>
              <xsl:apply-templates select="following-sibling::p/text"/>
            </seclaw:subjectmatterreference>
          </seclaw:digestinfo>
        </seclaw:digest>
-\-> 
      </xsl:when>
      <xsl:otherwise>
        <seclaw:digest>
          <seclaw:digestinfo>
            <ref:subjectmattercite>
              <xsl:apply-templates select="preceding-sibling::h[1]/remotelink"/>       
              <xsl:apply-templates select="node() except text | text/*"/>
              <xsl:apply-templates select="self::*[not(local-name() = 'p')]"/>
<!-\-              <xsl:apply-templates select="@* | node()"/>
-\->              <xsl:apply-templates select="following-sibling::p" mode="landingpage"/>
            </ref:subjectmattercite>
          </seclaw:digestinfo>
        </seclaw:digest>
      </xsl:otherwise>
    </xsl:choose>

    <xsl:apply-templates select="following-sibling::*[1][self::pgrp or self::p]" mode="landingpage"/>

  </xsl:template>
  
-->


  <xsl:template
    match="
      heading[ancestor::pgrp[ancestor::level/@leveltype = 'landingpage']]
      "
    mode="landingpage">
    <xsl:apply-templates select="."/>
  </xsl:template>

  <xsl:template match="
      p[parent::pgrp][ancestor::level/@leveltype = 'landingpage']"
    mode="landingpage">
    <xsl:apply-templates select="node()" mode="landingpage"/>
  </xsl:template>

  <xsl:template match="title[ancestor::pgrp[ancestor::level/@leveltype = 'landingpage']]"
    mode="landingpage">
    <xsl:choose>
      <xsl:when test="url">
        <xsl:apply-templates select="node()" mode="landingpage"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="node()"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template
    match="
      url[ancestor::pgrp[ancestor::level/@leveltype = 'landingpage']]
      | url[ancestor::p[ancestor::level/@leveltype = 'landingpage']]
      | text[ancestor::p[ancestor::level/@leveltype = 'landingpage']]
      | person[ancestor::p[ancestor::level/@leveltype = 'landingpage']]"
    mode="landingpage">

    <!--CHAITANYA SHARMA    -->
    <xsl:apply-templates select="remotelink | ci:cite"/>
    <!--    <xsl:apply-templates select="ancestor::pgrp[ancestor::level/@leveltype='landingpage']"/>-->


    <!-- <toc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:apply-templates select="parent::p[ancestor::level/@leveltype='landingpage']"/></toc>-->
    <xsl:apply-templates
      select="date | lnlink[not(preceding-sibling::*[1][self::lnlink])] | person | url | name.text"
      mode="landingpage"/>
  </xsl:template>

  <xsl:template
    match="lnlink[ancestor::p[ancestor::level/@leveltype = 'landingpage']][preceding-sibling::*[1][self::lnlink]]"
    mode="landingpage">
    <ref:alternaterendition>
      <xsl:apply-templates select="."/>
    </ref:alternaterendition>
    <xsl:apply-templates select="following-sibling::*[1][self::lnlink]" mode="landingpage"/>

  </xsl:template>

  <xsl:template
    match="lnlink[ancestor::p[ancestor::level/@leveltype = 'landingpage']][not(preceding-sibling::*[1][self::lnlink])]"
    mode="landingpage">
    <ref:alternaterenditions>
      <ref:alternaterendition>
        <xsl:apply-templates select="."/>
      </ref:alternaterendition>
      <xsl:apply-templates select="following-sibling::*[1][self::lnlink]" mode="landingpage"/>
    </ref:alternaterenditions>
  </xsl:template>


  <xsl:template match="name.text[ancestor::p[ancestor::level/@leveltype = 'landingpage']]"
    mode="landingpage">
    <byline xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:value-of select="."/>
    </byline>
  </xsl:template>



  <xsl:template match="date[ancestor::level/@leveltype = 'landingpage']" mode="landingpage">
    <ref:referencestatusgroup>
      <ref:referencestatusdate name="updatedate">
        <xsl:call-template name="DATE_attributes">
          <xsl:with-param name="date">
            <xsl:copy-of select="."/>
          </xsl:with-param>
        </xsl:call-template>
      </ref:referencestatusdate>
    </ref:referencestatusgroup>
  </xsl:template>




  <!-- Guidance landing pages ****************************
    ************************************************
    ************************************************
    ************************************************
    ************************************************
    -->

  <xsl:template
    match="level[@leveltype = 'Guidance'] | level[ancestor::level/@leveltype = 'Guidance']"
    priority="250">
    <seclaw:digestgrp>
      <xsl:apply-templates select="node()"/>
    </seclaw:digestgrp>
  </xsl:template>


  <xsl:template
    match="level[@leveltype = 'Guidance'] | level[ancestor::level/@leveltype = 'Guidance']"
    priority="250">
    <seclaw:digestgrp>
      <xsl:apply-templates select="node()"/>
    </seclaw:digestgrp>
  </xsl:template>

  <!--
    4.1.3. comm:body/level/level/level/level/level/bodytext/p (id-CCCC-10189)
When a fifth nested level is encountered, each paragraph within it becomes a separate seclaw:digest.
The start-tag and end-tag of the immediate child bodytext (xpath comm:body/level/level/level/level/level/bodytext) are dropped.
However, the child bodytext/p elements are converted as described in the instructions for bodytext/p id-CCCC-10207 on page 82.
-->
  <xsl:template match="level/level/level/level/level[ancestor::level/@leveltype = 'landingpage']"
    priority="350">
    <xsl:apply-templates select="node()"/>
  </xsl:template>
  <xsl:template
    match="level/level/level/level/level[ancestor::level/@leveltype = 'landingpage']/bodytext"
    priority="350">
    <xsl:apply-templates select="*[1]" mode="landingpage"/>
  </xsl:template>


  <xsl:template match="bodytext[not(@searchtype = 'Home')][ancestor::level/@leveltype = 'Guidance']"
    priority="300">
    <seclaw:digest>
      <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
        <xsl:apply-templates/>
      </bodytext>
    </seclaw:digest>

  </xsl:template>


  <xsl:template
    match="bodytext/pgrp/p[ancestor::level/@leveltype = 'landingpage'][ancestor::bodytext/@searchtype = 'Guidance']"
    priority="25">
    <!-- 
    <p>
      <text>
        <remotelink dpsi="0KL8" remotekey1="REFPTID" service="DOC-ID" refpt="CITEID_34385" status="valid" docidref="0KL8_186815">Act's purpose</remotelink>
      </text>
    </p>
    -->
    <xsl:variable name="localdpsi">
      <xsl:choose>
        <xsl:when test="text/remotelink/@dpsi">
          <xsl:value-of select="text/remotelink/@dpsi"/>
        </xsl:when>
        <xsl:when test="parent::p[parent::note][$streamID = 'AU20']">
          <xsl:value-of select="@href"/>
        </xsl:when>
        <xsl:when test="not(@dpsi) and //docinfo/docinfo:dpsi/@id-string">
          <xsl:value-of select="//docinfo/docinfo:dpsi/@id-string"/>
        </xsl:when>
        <xsl:when test="not(@dpsi) and not(//docinfo/docinfo:dpsi/@id-string)">
          <xsl:value-of select="$dpsi"/>
        </xsl:when>

        <!-- JL if @dpsi isn't present, use DPSI from document or LBU manifest file as in CI above. 
        Verified with Pacific LBU 2017-11-06 -->
        <!-- JL : dpsi may be validly missing if the link is invalid -->
        <xsl:when test="@status = ('unval', 'invalid')"
          ><!-- no @dpsi however status is unvalidated or invalid so don't throw error  --></xsl:when>

        <xsl:otherwise>
          <!--<xsl:value-of select="$dpsi"/>-->
          <xsl:call-template name="outputErrorMessage">
            <xsl:with-param name="messageText" as="xs:string"
              select="'remotelink/@dpsi is missing and link cannot be correctly completed'"/>
            <xsl:with-param name="errorType" as="xs:string" select="'ICCE'"/>
            <xsl:with-param name="errorCode" as="xs:string*" select="'TBD'"/>
            <xsl:with-param name="context" as="xs:string">
              <xsl:value-of select="base-uri()"/>
            </xsl:with-param>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>

    </xsl:variable>

    <toc-entry xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
      anchoridref="{text/remotelink/@refpt}"
      ref:locatorkey="{concat($localdpsi,'-',text/remotelink/@docidref)}"
      ref:locatorkeyprotocol="DOC-ID">
      <heading>
        <title>
          <xsl:value-of select="text/remotelink"/>
        </title>
      </heading>
    </toc-entry>
  </xsl:template>



  <!--
  
    <xsl:template match="h[ancestor::level/@leveltype = 'landingpage'][ancestor::bodytext/@searchtype='Guidance']" priority="30">
      <!-\- 
4.1.10.1. FIRST bodytext/h (id-CCCC-10200)
If the first bodytext/h in a document, or any of its subelements, does not contain a remotelink or ci:cite, it causes a new seclaw:digestgrp and
child heading to be created, then bodytext/h becomes title, and then the heading is closed. The created seclaw:digestgrp is closed when the
bodytext end-tag is encountered.
If the first bodytext/h in a document, or any of its subelements, does contain a remotelink or ci:cite, it will be converted as described below
in the subtopic SUBSEQUENT bodytext/h, or when FIRST bodytext/h contains remotelink or ci:cite id-CCCC-10201 on page 65. However, a new
seclaw:digestgrp must still be created first, but it will not have a child heading. This created seclaw:digestgrp is closed when the bodytext
end-tag is encountered. Please see the example titled "Source XML showing FIRST bodytext/h with a remotelink" shown below in the subtopic SUBSEQUENT
bodytext/h, or when FIRST bodytext/h contains remotelink or ci:cite id-CCCC-10201 on page 65.
    -\->
      
      
      <xsl:variable name="emptyCheck">
        <xsl:for-each select=".//text()">
          <xsl:copy-of select="."/>
        </xsl:for-each>
      </xsl:variable>
      
      <xsl:choose>
        <xsl:when test="not(preceding-sibling::*[1]) or (not(preceding-sibling::*[1][self::h]) and not(.//remotelink) and not(.//ci:cite))">
          <seclaw:digestgrp>
            <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <title>
                <xsl:apply-templates/>
              </title>
            </heading>
            <xsl:apply-templates select="following-sibling::*[1][self::h or self::pgrp]"/>
          </seclaw:digestgrp>
        </xsl:when>
        <xsl:when test=".//remotelink and not(preceding-sibling::*[1][self::h])">
          <seclaw:digest>
            <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <toc>
                <xsl:apply-templates select="node()"/>
              </toc>
            </bodytext>
          </seclaw:digest>
        </xsl:when>
        <xsl:when test="not(preceding-sibling::*[1][self::pgrp])">
          <!-\-            <xsl:apply-templates select="." mode="landingpage"/>        
-\->
          
          <seclaw:digest>
            <seclaw:digestinfo>
              <seclaw:subjectmatterreference>
                <xsl:variable name="emptyTextCheck">
                  <xsl:for-each select=".//text()">
                    <xsl:choose>
                      <!-\- these elements content belongs in SMreference not the SMtext -\->
                      <xsl:when test="ancestor::*[self::date or self::lnlink or self::remotelink or self::person or self::ci:cite]"/>
                      <xsl:otherwise>
                        <xsl:copy-of select="."/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:for-each>
                </xsl:variable>
                <!-\- .//emph | text[not(*)] | heading -\->
                <xsl:if test="normalize-space($emptyTextCheck)!=''">
                  <seclaw:subjectmattertext>
                    <xsl:apply-templates mode="landingpagesubjectmattertext"/>
                  </seclaw:subjectmattertext>
                </xsl:if>
                <xsl:apply-templates select="preceding-sibling::h[1]/remotelink"/>
                
                <xsl:apply-templates select="node()" mode="landingpagesubjectmatterreference"/>
                <xsl:apply-templates select="following-sibling::*[1][not(self::h)]" mode="landingpage"/>
                <!-\-          <xsl:apply-templates select="self::*[not(local-name() = 'p')]"/>
-\->        </seclaw:subjectmatterreference>
            </seclaw:digestinfo>
          </seclaw:digest>
          <xsl:apply-templates select="following-sibling::h" mode="landingpage"/>
          
        </xsl:when>
        <xsl:otherwise/>      
      </xsl:choose>
      
      
    </xsl:template>
    
    
    
    
    
    
    <xsl:template match="h[ancestor::level/@leveltype = 'landingpage'][ancestor::bodytext/@searchtype='Guidance']" mode="landingpage" priority="30">
      
      <seclaw:digest>
        <seclaw:digestinfo>
          <seclaw:subjectmatterreference>
            <xsl:variable name="emptyTextCheck">
              <xsl:for-each select=".//text()">
                <xsl:choose>
                  <!-\- these elements content belongs in SMreference not the SMtext -\->
                  <xsl:when test="ancestor::*[self::date or self::lnlink or self::remotelink or self::person or self::ci:cite]"/>
                  <xsl:otherwise>
                    <xsl:copy-of select="."/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:for-each>
            </xsl:variable>
            <!-\- .//emph | text[not(*)] | heading -\->
            <xsl:if test="normalize-space($emptyTextCheck)!=''">
              <seclaw:subjectmattertext>
                <xsl:apply-templates mode="landingpagesubjectmattertext"/>
              </seclaw:subjectmattertext>
            </xsl:if>
            <!-\-          <xsl:apply-templates select="preceding-sibling::*[1][self::h]/remotelink"/>
  -\->          
            <xsl:apply-templates select="node()" mode="landingpagesubjectmatterreference"/>
            <xsl:apply-templates select="following-sibling::*[1][not(self::h)]" mode="landingpage"/>
            <!-\-          <xsl:apply-templates select="self::*[not(local-name() = 'p')]"/>
  -\->        </seclaw:subjectmatterreference>
        </seclaw:digestinfo>
      </seclaw:digest>
      
    </xsl:template>
    
    
    
    -->


  <xsl:template
    match="bodytext[not(@searchtype = 'Home')][@searchtype = 'Guidance' or ancestor::bodytext/@searchtype = 'Guidance']"
    priority="30">
      
      <xsl:choose>
        <xsl:when test="ancestor::level/@leveltype = 'landingpage' and *[1][self::h][not(*)] and *[2][self::h]">
<!--          <xsl:apply-templates select="*[1][self::h]"/>
          h
          pgrp
          h
          h
          pgrp
-->          
          
          <xsl:for-each-group select="*" group-starting-with="h[following-sibling::*[1][self::h]][not(*)][not(preceding-sibling::*[1][self::h])]">
                <seclaw:digestgrp>                  
                  <xsl:for-each select="current-group()[1]">
                    <xsl:apply-templates select="." mode="landingPageHAsHeading"/>
                  </xsl:for-each>
                  <xsl:for-each select="current-group()[position()&gt;1][self::h]">
                    <xsl:apply-templates select="." mode="landingpage"/>
                  </xsl:for-each>
                </seclaw:digestgrp>
          </xsl:for-each-group>     
        </xsl:when>
        <xsl:when test="ancestor::level/@leveltype = 'landingpage' and *[1][self::h]">
            <xsl:apply-templates select="*[1][self::h]" mode="landingpage"/>
        </xsl:when>
        <xsl:otherwise>
          <seclaw:digestgrp>
            <xsl:apply-templates select="@* | node()[not(self::glp:note[@notetype = 'xref'])]"/>
          </seclaw:digestgrp>
        </xsl:otherwise>
      </xsl:choose>
      
      
      
      
      <!--
      <xsl:choose>
        <xsl:when test="ancestor::level/@leveltype = 'landingpage' and *[1][self::h]">
          <xsl:apply-templates select="*[1][self::h]"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="@* | node()[not(self::glp:note[@notetype = 'xref'])]"/>
        </xsl:otherwise>
      </xsl:choose>
      -->
      
  </xsl:template>


  <xsl:template match="h[ancestor::level/@leveltype = 'landingpage'][. = 'URL API']"
    mode="landingpage" priority="35">
    <xsl:comment><xsl:copy-of select="."/></xsl:comment>
  </xsl:template>
  
  
  <xsl:template
    match="h"
    mode="landingPageHAsHeading" name="landingPageHAsHeading">
    <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <title>
        <xsl:apply-templates/>
      </title>
    </heading>
  </xsl:template>
  



  <xsl:template
    match="
      h[ancestor::level/@leveltype = 'landingpage']
      [ancestor::bodytext/@searchtype = 'Guidance']
      [not(preceding-sibling::*)]
      [not(*)]
      [not(preceding-sibling::*[1][self::h])]"
    mode="landingpage" priority="30" >
    <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <title>
        <xsl:apply-templates/>
      </title>
    </heading>
    <xsl:apply-templates select="following-sibling::h" mode="landingpage"/>
  </xsl:template>


  <xsl:template
    match="
      h[ancestor::level/@leveltype = 'landingpage']
      [ancestor::bodytext/@searchtype = 'Guidance']
      [preceding-sibling::*[1][self::h or self::pgrp]]"
    mode="landingpage" priority="30" name="landingPageHAsDigest">

    <seclaw:digest>
      <seclaw:digestinfo>
        <seclaw:subjectmatterreference>
          <xsl:variable name="emptyTextCheck">
            <xsl:for-each select=".//text()">
              <xsl:choose>
                <!-- these elements content belongs in SMreference not the SMtext -->
                <xsl:when
                  test="ancestor::*[self::date or self::lnlink or self::remotelink or self::person or self::ci:cite]"/>
                <xsl:otherwise>
                  <xsl:copy-of select="."/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:for-each>
          </xsl:variable>
          <!-- .//emph | text[not(*)] | heading -->
          <xsl:if test="normalize-space($emptyTextCheck) != ''">
            <seclaw:subjectmattertext>
              <xsl:apply-templates mode="landingpagesubjectmattertext"/>
            </seclaw:subjectmattertext>
          </xsl:if>
          <!--          <xsl:apply-templates select="preceding-sibling::*[1][self::h]/remotelink"/>
          -->
          <xsl:apply-templates select="node()" mode="landingpagesubjectmatterreference"/>
          <xsl:apply-templates select="following-sibling::*[1][not(self::h)]" mode="landingpage"/>
          <!--          <xsl:apply-templates select="self::*[not(local-name() = 'p')]"/>
          -->
        </seclaw:subjectmatterreference>
      </seclaw:digestinfo>
    </seclaw:digest>

  </xsl:template>



  <!-- last monolith -->
  <xsl:template
    match="
      pgrp[ancestor::level/@leveltype = 'landingpage'][ancestor::bodytext/@searchtype = 'Guidance']
      | p[not(parent::pgrp) or preceding-sibling::h][ancestor::level/@leveltype = 'landingpage'][ancestor::bodytext/@searchtype = 'Guidance']"
    mode="landingpage" priority="30">

    <xsl:variable name="emptyCheck">
      <xsl:for-each select=".//text()">
        <xsl:copy-of select="."/>
      </xsl:for-each>
    </xsl:variable>

    <xsl:choose>
      <xsl:when test="./p/text/remotelink">
        <toc xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
          <xsl:apply-templates select="node()"/>
        </toc>
      </xsl:when>
      <xsl:when test="not(preceding-sibling::*[1][self::pgrp])">
        <xsl:apply-templates select="." mode="landingpage"/>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>

    <xsl:apply-templates select="following-sibling::*[1][not(self::h)]" mode="landingpage"/>

  </xsl:template>



</xsl:stylesheet>
