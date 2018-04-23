<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="ST11_Commentary_contrib">
  <title>contrib (and children) <lnpid>id-ST11-37811</lnpid></title>
  <body>
    <section><p>Mapping of <sourcexml>contrib</sourcexml> and its children is determined by the
        parent, as follows:</p>
      <p>
        <ul>
          <li><sourcexml>comm:info</sourcexml> is parent.<p><sourcexml>comm:info/contrib</sourcexml>
              becomes <targetxml>pubfm:pubfm/byline</targetxml> with attribute and children
              converted as follows:</p><p>Attribute:</p><ul>
              <li><sourcexml>comm:info/contrib[@contribtype="series"]</sourcexml> becomes
                  <targetxml>pubfm:pubfm[@pubfmtype="series"]/byline</targetxml>. When
                  <sourcexml>@contribtype</sourcexml> is any other value, set target as
                  <targetxml>@pubfmtype="author"</targetxml>.</li>
              <!-- McNally Sept 2 2014: The "series" value gives a name to data which apply to a collection rather than a single document. Immediate use is dpsi 0NF9 "Getting the Deal Through". Supports Presentation requirement to display this type of contributor at end of document. -->
            </ul><p>Children:</p><ul>
              <li><sourcexml>org</sourcexml> with child <sourcexml>remotelink</sourcexml> - -
                Suppress <sourcexml>org</sourcexml> tag and convert
                  <sourcexml>remotelink</sourcexml>.</li>
              <li><sourcexml>org</sourcexml> without child <sourcexml>remotelink</sourcexml> - -
                  <sourcexml>org</sourcexml> becomes <targetxml>entity:company</targetxml>.</li>
              <li><sourcexml>bio</sourcexml> tag is suppressed; content converts.</li>
              <li><sourcexml>p/text</sourcexml> is replaced with <targetxml>proc:nl</targetxml>. The
                end tags, <sourcexml>/text</sourcexml> and <sourcexml>/p</sourcexml>, are
                suppressed.</li>
              <li><sourcexml>remotelink</sourcexml>, <sourcexml>inlineobject</sourcexml>, and
                  <sourcexml>email</sourcexml> convert according to common rules. See "General
                Markup" section.</li>
            </ul>
          </li>
          <li><sourcexml>levelinfo</sourcexml> is parent.<p><sourcexml>levelinfo</sourcexml> becomes
                <targetxml>seclaw:prelim/byline</targetxml> with children converted as follows:</p><ul>
              <li><sourcexml>contrib[@contribtype]/org</sourcexml> becomes
                  <targetxml>entity:lawfirm</targetxml>. Attribute
                  <sourcexml>@contribtype</sourcexml> is suppressed.</li>
              <li><sourcexml>contrib[@contribtype]/person</sourcexml> becomes
                  <targetxml>person:contributor[@contributor-type]/person:person</targetxml> with descendants:<ul>
                  <li><sourcexml>name.text</sourcexml> becomes
                      <targetxml>person:name.text</targetxml></li>
                  <li><sourcexml>name.detail</sourcexml> becomes
                      <targetxml>person:name.detail</targetxml></li>
                  <li><sourcexml>name.given</sourcexml> becomes
                      <targetxml>person:name.given</targetxml></li>
                  <li><sourcexml>name.mid</sourcexml> becomes
                    <targetxml>person:name.mid</targetxml></li>
                  <li><sourcexml>name.family</sourcexml> becomes
                      <targetxml>person:name.family</targetxml></li>
                  <li><sourcexml>bio</sourcexml> becomes
                      <targetxml>person:bio/person:bio.text/bodytext</targetxml></li>
                  <li><sourcexml>role</sourcexml> becomes <targetxml>role</targetxml></li>
                  <li>Rare, <sourcexml>person</sourcexml> and <sourcexml>bio</sourcexml> adjacent
                    siblings: If <sourcexml>person</sourcexml> is followed by
                      <sourcexml>bio</sourcexml> then place <targetxml>person:name.text</targetxml>
                    and <targetxml>person:bio</targetxml> within same
                      <targetxml>person:person</targetxml> wrapper. See Example 4. Known to occur in
                    dpsi 03WB and 041V.</li>
                  <li>Rare, pcdata before <sourcexml>bio</sourcexml>: If <sourcexml>bio</sourcexml>
                    is preceded by pcdata then generate <targetxml>person:person</targetxml> wrapper
                    for <targetxml>person:bio</targetxml>. See Example 4. Known to occur in dpsi
                    041V.</li>
                </ul></li>
            </ul><note>Spacing in <sourcexml>name.detail</sourcexml> children: There may be a space
              at start or end of content of <sourcexml>name.given</sourcexml>,
                <sourcexml>name.mid</sourcexml>, <sourcexml>name.family</sourcexml>. Suppress the
              start and end space. For example: <p><sourcexml>&lt;name.given&gt; G. Thomas
                  &lt;/name.given&gt;</sourcexml> becomes <targetxml>&lt;person:name.given&gt;G.
                  Thomas&lt;/person:name.given&gt;</targetxml>.</p></note></li>
          <li><sourcexml>bodytext</sourcexml> is
                parent.<p><sourcexml>bodytext/contrib[@contribtype]</sourcexml> becomes
                <targetxml>seclaw:bodytext/note/byline/person:contributor[@contributor-type]</targetxml>
              with descendants converted as follows:</p><ul>
              <li><sourcexml>person</sourcexml> becomes <targetxml>person:person</targetxml> with children:<ul>
                  <li><sourcexml>name.text</sourcexml> becomes
                      <targetxml>person:name.text</targetxml></li>
                  <li><sourcexml>bio</sourcexml> becomes
                      <targetxml>person:bio/person:bio.text/bodytext</targetxml></li>
                </ul></li>
              <li>Exceptional: If <sourcexml>person</sourcexml> contains multiple
                  <sourcexml>name.text</sourcexml> then generate
                  <targetxml>person:person</targetxml> wrapper for each
                  <targetxml>person:name.text</targetxml>. If <sourcexml>name.text</sourcexml> is
                followed by one/more <sourcexml>bio</sourcexml> then place
                  <targetxml>person:name.text</targetxml> and <targetxml>person:bio</targetxml>
                within same <targetxml>person:person</targetxml> wrapper. See Example 6. </li>
              <li>Very Rare, <sourcexml>person</sourcexml> and <sourcexml>bio</sourcexml> siblings:
                If <sourcexml>person</sourcexml> is followed by <sourcexml>bio</sourcexml> then
                place <targetxml>person:name.text</targetxml> and <targetxml>person:bio</targetxml>
                within same <targetxml>person:person</targetxml> wrapper. See Example 7. Known to
                occur in dpsi 02H1.</li>
            </ul></li>
        </ul>
      </p>
    </section>

    <pre>
              <b><i>Example 1: <sourcexml>comm:info/contrib</sourcexml> with <sourcexml>org/remotelink</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;COMMENTARYDOC&gt;
  &lt;comm:info&gt;
    &lt;contrib contribtype="accreditation"&gt;Produced in partnership with &lt;org&gt;&lt;remotelink
              hrefclass="http"
              href="lexislegalintelligence.co.uk/lexispsl/restructuring-and-insolvency-experts"
              newwindow="YES"&gt;Simon Passfield of Guildhall
        Chambers&lt;/remotelink&gt;&lt;/org&gt;&lt;/contrib&gt;
  &lt;/comm:info&gt;
&lt;/COMMENTARYDOC&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;seclaw:seclaw&gt;
  &lt;seclaw:body&gt;
    &lt;pubfm:pubfm pubfmtype="author"&gt;
      &lt;byline&gt;Produced in partnership with &lt;ref:lnlink service="URL"&gt;
        &lt;ref:marker&gt;Simon Passfield of Guildhall Chambers&lt;/ref:marker&gt;
        &lt;ref:locator&gt;&lt;ref:locator-key&gt;&lt;ref:key-name name="URL"/&gt;
         &lt;ref:key-value 
           value="http://lexislegalintelligence.co.uk/lexispsl/restructuring-and-insolvency-experts"/&gt;
              &lt;/ref:locator-key&gt;&lt;/ref:locator&gt;&lt;/ref:lnlink&gt;
      &lt;/byline&gt;
    &lt;/pubfm:pubfm&gt;
  &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;
 
	</pre>
    <pre>
              <b><i>Example 2: <sourcexml>comm:info/contrib</sourcexml> other markup</i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;COMMENTARYDOC&gt;
  &lt;comm:info&gt;
     &lt;contrib contribtype="series"&gt;This material is produced by 
       &lt;org&gt;Getting the Deal Through&lt;/org&gt;: 
       &lt;remotelink hrefclass="http" href="www.GettingTheDealThrough.com"
           &gt;www.GettingTheDealThrough.com&lt;/remotelink&gt;
       &lt;inlineobject filename="GettingTheDeal.gif" type="image" mimetype="image/gif"/&gt;
       &lt;bio&gt;&lt;p&gt;&lt;text&gt;Contact: 
         &lt;email&gt;&lt;remotelink hrefclass="mailto" href="Editorial@GettingTheDealThrough.com"
                         &gt;Editorial@GettingTheDealThrough.com&lt;/remotelink&gt;
         &lt;/email&gt;&lt;/text&gt;&lt;/p&gt;&lt;/bio&gt;
     &lt;/contrib&gt;
  &lt;/comm:info&gt;
&lt;/COMMENTARYDOC&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;seclaw:seclaw&gt;
  &lt;seclaw:body&gt;
    &lt;pubfm:pubfm pubfmtype="series"&gt;
      &lt;byline&gt;This material is produced by 
        &lt;entity:company&gt;Getting the Deal Through&lt;/entity:company&gt;: 
        &lt;url normval="http://www.GettingTheDealThrough.com"&gt;www.GettingTheDealThrough.com&lt;/url&gt;
        &lt;ref:inlineobject&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="object-key"/&gt;
              &lt;ref:key-value value="X-Y-GettingTheDeal"/&gt; 
              &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
              &lt;proc:param name="componentseq" value="1"/&gt;
              &lt;proc:param name="object-type" value="image"/&gt;
              &lt;proc:param name="object-smi" value=""/&gt; 
              &lt;!-- This @value assignment is done by conversion program --&gt;
            &lt;/ref:locator-params&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:inlineobject&gt;
        &lt;proc:nl/&gt;Contact: 
        &lt;contact:email normval="mailto:Editorial@GettingTheDealThrough.com"
                   &gt;Editorial@GettingTheDealThrough.com&lt;/contact:email&gt;
      &lt;/byline&gt;
    &lt;/pubfm:pubfm&gt;
  &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;
 
	</pre>
    <pre>
           <b><i>Example 3: <sourcexml>levelinfo/contrib</sourcexml> with <sourcexml>org</sourcexml> and <sourcexml>person</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;level leveltype="question"&gt;
  &lt;levelinfo&gt;
    &lt;contrib contribtype="author"&gt;
      &lt;org&gt;Drakopoulos Law Firm&lt;/org&gt;
    &lt;/contrib&gt;
    &lt;contrib contribtype="author"&gt;
      &lt;person&gt;
        &lt;name.detail&gt;
          &lt;name.given&gt;Alban&lt;/name.given&gt;
          &lt;name.mid&gt;Jack&lt;/name.mid&gt;
          &lt;name.family&gt;Ruli&lt;/name.family&gt;
        &lt;/name.detail&gt;
      &lt;/person&gt;
      &lt;person&gt;
        &lt;name.text&gt;Ekflodia Leskaj&lt;/name.text&gt;
      &lt;/person&gt;
    &lt;/contrib&gt;
    &lt;contrib contribtype="editor"&gt;
      &lt;person&gt;
        &lt;name.text&gt;Robert Peckar&lt;/name.text&gt;
      &lt;/person&gt;
    &lt;/contrib&gt;
  &lt;/levelinfo&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;Must foreign designers...&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/level&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;seclaw:level leveltype="question"&gt;
  &lt;seclaw:prelim&gt;
    &lt;byline&gt;
      &lt;entity:lawfirm&gt;Drakopoulos Law Firm&lt;/entity:lawfirm&gt;
      &lt;person:contributor contributor-type="author"&gt;
        &lt;person:person&gt;
          &lt;person:name.detail&gt;
            &lt;person:name.given&gt;Alban&lt;/person:name.given&gt;
            &lt;person:name.mid&gt;Jack&lt;/person:name.mid&gt;
            &lt;person:name.family&gt;Ruli&lt;/person:name.family&gt;
          &lt;/person:name.detail&gt;
        &lt;/person:person&gt;
        &lt;person:person&gt;
          &lt;person:name.text&gt;Ekflodia Leskaj&lt;/person:name.text&gt;
        &lt;/person:person&gt;
      &lt;/person:contributor&gt;
      &lt;person:contributor contributor-type="editor"&gt;
        &lt;person:person&gt;
          &lt;person:name.text&gt;Robert Peckar&lt;/person:name.text&gt;
        &lt;/person:person&gt;
      &lt;/person:contributor&gt;
    &lt;/byline&gt;
  &lt;/seclaw:prelim&gt;
  &lt;seclaw:bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;Must foreign designers...&lt;/text&gt;
    &lt;/p&gt;
  &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
 
	</pre>
    <pre>
              <b><i>Example 4: <sourcexml>levelinfo/contrib</sourcexml> with <sourcexml>person</sourcexml> name, role, bio</i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;level leveltype="division"&gt;
  &lt;levelinfo&gt;
    &lt;contrib contribtype="author"&gt;
      &lt;person&gt;
        &lt;role&gt;Editor&lt;/role&gt;
        &lt;name.text&gt;Bernadine Adkins&lt;/name.text&gt;
        &lt;bio&gt;
          &lt;p&gt;
            &lt;text&gt;LLB (Bristol), DHEE (College of Europe, Bruges) Solicitor, Partner,
                Member of the Brussels Bar (List E), Wragge &amp;amp; Co LLP, London and
                Brussels&lt;/text&gt;
          &lt;/p&gt;
        &lt;/bio&gt;
      &lt;/person&gt;
    &lt;/contrib&gt;
    &lt;contrib contribtype="author"&gt;  &lt;!-- Illustrates rare: person and bio adjacent --&gt;
      &lt;person&gt;
        &lt;name.text&gt;David Rivers&lt;/name.text&gt;
      &lt;/person&gt;
      &lt;bio&gt;
        &lt;p&gt;
          &lt;text&gt;Old Square Chambers&lt;/text&gt;
        &lt;/p&gt;
      &lt;/bio&gt;
      &lt;/person&gt;
    &lt;/contrib&gt;
    &lt;contrib contribtype="author"&gt;    &lt;!-- Illustrates rare: pcdata before bio --&gt;
      &lt;person&gt;&lt;name.text&gt;Alan Newton&lt;/name.text&gt;&lt;/person&gt; BA, BC and 
        &lt;person&gt;&lt;name.text&gt;David Trott&lt;/name.text&gt;&lt;/person&gt;, solicitors &lt;bio&gt;&lt;p&gt;
        &lt;text&gt;(Freshfields Bruckhaus Deringer)&lt;/text&gt;&lt;/p&gt;&lt;p&gt;&lt;text&gt;(updated by Guy Sears, 
         (director, Just Fines Ltd))&lt;/text&gt;&lt;/p&gt;&lt;/bio&gt;&lt;/contrib&gt;
  &lt;/levelinfo&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;This Division has been...&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/level&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;seclaw:level leveltype="division"&gt;
  &lt;seclaw:prelim&gt;
    &lt;byline&gt;
      &lt;person:contributor contributor-type="author"&gt;
        &lt;person:person&gt;
          &lt;role&gt;Editor&lt;/role&gt;
          &lt;person:name.text&gt;Bernadine Adkins&lt;/person:name.text&gt;
          &lt;person:bio&gt;
            &lt;person:bio.text&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;LLB (Bristol), DHEE (College of Europe, Bruges) Solicitor,
                      Partner, Member of the Brussels Bar (List E), Wragge &amp;amp;
                      Co LLP, London and Brussels&lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/person:bio.text&gt;
          &lt;/person:bio&gt;
        &lt;/person:person&gt;
      &lt;/person:contributor&gt;
      &lt;person:contributor contributor-type="author"&gt;
        &lt;person:person&gt;
          &lt;person:name.text&gt;David Rivers&lt;/person:name.text&gt;
          &lt;person:bio&gt;
            &lt;person:bio.text&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;Old Square Chambers&lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/person:bio.text&gt;
          &lt;/person:bio&gt;
        &lt;/person:person&gt;
      &lt;/person:contributor&gt;
      &lt;person:contributor contributor-type="author"&gt;
        &lt;person:person&gt;
          &lt;person:name.text&gt;Alan Newton&lt;/person:name.text&gt;
        &lt;/person:person&gt; BA, BC and 
        &lt;person:person&gt;
          &lt;person:name.text&gt;David Trott&lt;/person:name.text&gt;
        &lt;/person:person&gt;, solicitors 
        &lt;person:person&gt;
          &lt;person:bio&gt;
            &lt;person:bio.text&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;(Freshfields Bruckhaus Deringer)&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                  &lt;text&gt;(updated by Guy Sears, (Just Fines Ltd))&lt;/text&gt;&lt;/p&gt;&lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/person:bio.text&gt;
          &lt;/person:bio&gt;
        &lt;/person:person&gt;
      &lt;/person:contributor&gt;
    &lt;/byline&gt;
  &lt;/seclaw:prelim&gt;
  &lt;seclaw:bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;This Division has been...&lt;/text&gt;
    &lt;/p&gt;
  &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
 
	</pre>
    <pre>
         <b><i>Example 5: <sourcexml>levelinfo/contrib</sourcexml> with <sourcexml>person</sourcexml> role and bio only</i></b>
         <i>(Illustrates known data issue: person with name in role)</i>
      
<b><i>SOURCE XML</i></b>                  

&lt;level leveltype="chapter"&gt;
  &lt;levelinfo&gt;
    &lt;contrib contribtype="author"&gt;
      &lt;person&gt;
        &lt;role&gt;Adam Duthie&lt;/role&gt;
        &lt;bio&gt;
          &lt;p&gt;
            &lt;text&gt;Partner, Commercial Group Withers LLP&lt;/text&gt;
          &lt;/p&gt;
        &lt;/bio&gt;
        &lt;role&gt;Employment sections updated by Christina Morton and Jag-Preet Kaur&lt;/role&gt;
        &lt;bio&gt;
          &lt;p&gt;
            &lt;text&gt;Solicitors, Withers LLP&lt;/text&gt;
          &lt;/p&gt;
        &lt;/bio&gt;
      &lt;/person&gt;
    &lt;/contrib&gt;
  &lt;/levelinfo&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;Some assumptions...&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/level&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;seclaw:level leveltype="division"&gt;
  &lt;seclaw:prelim&gt;
    &lt;byline&gt;
      &lt;person:contributor contributor-type="author"&gt;
        &lt;person:person&gt;
          &lt;role&gt;Adam Duthie&lt;/role&gt;
          &lt;person:bio&gt;
            &lt;person:bio.text&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;Partner, Commercial Group Withers LLP&lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/person:bio.text&gt;
          &lt;/person:bio&gt;
          &lt;role&gt;Employment sections updated by Christina Morton and Jag-Preet Kaur&lt;/role&gt;
          &lt;person:bio&gt;
            &lt;person:bio.text&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;Solicitors, Withers LLP&lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/person:bio.text&gt;
          &lt;/person:bio&gt;
        &lt;/person:person&gt;
      &lt;/person:contributor&gt;
    &lt;/byline&gt;
  &lt;/seclaw:prelim&gt;
  &lt;seclaw:bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;Some assumptions...&lt;/text&gt;
    &lt;/p&gt;
  &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
 
	</pre>
    <pre>
              <b><i>Example 6: <sourcexml>bodytext/contrib</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;level leveltype="part"&gt;
   &lt;heading&gt;
      &lt;title&gt;Contributors&lt;/title&gt;
   &lt;/heading&gt;
   &lt;bodytext&gt;
      &lt;h&gt;Editorial board&lt;/h&gt;
      &lt;contrib contribtype="author"&gt;
         &lt;person&gt;
            &lt;name.text&gt;Charles Barcroft, CTA&lt;/name.text&gt;
            &lt;bio&gt;
               &lt;p&gt;
                  &lt;text&gt;Consumer Law Consultant and Lecturer.&lt;/text&gt;
               &lt;/p&gt;
            &lt;/bio&gt;
            &lt;bio&gt;
               &lt;p&gt;
                  &lt;text&gt;Honorary Fellow, University of Hull Law School.&lt;/text&gt;
               &lt;/p&gt;
            &lt;/bio&gt;
            &lt;name.text&gt;David Milne, MA (Oxon), QC, FCA&lt;/name.text&gt;
            &lt;bio&gt;
               &lt;p&gt;
                  &lt;text&gt;Trading and Consumer Law Consultant.&lt;/text&gt;
               &lt;/p&gt;
            &lt;/bio&gt;
         &lt;/person&gt;               
      &lt;/contrib&gt;
      &lt;h&gt;Current contributor&lt;/h&gt;
      &lt;contrib contribtype="author"&gt;
         &lt;person&gt;
            &lt;name.text&gt;David Rudling, CTA&lt;/name.text&gt;
         &lt;/person&gt;
      &lt;/contrib&gt;
      ...
   &lt;/bodytext&gt;
&lt;/level&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;seclaw:level leveltype="part"&gt;
   &lt;heading&gt;
      &lt;title&gt;Contributors&lt;/title&gt;
   &lt;/heading&gt;
   &lt;seclaw:bodytext&gt;
      &lt;h&gt;Editorial board&lt;/h&gt;
      &lt;note&gt;
         &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;
               &lt;person:person&gt;
                  &lt;person:name.text&gt;Charles Barcroft, CTA&lt;/person:name.text&gt;
                  &lt;person:bio&gt;
                    &lt;person:bio.text&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;
                          &lt;text&gt;Consumer Law Consultant and Lecturer.&lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;
                    &lt;/person:bio.text&gt;
                  &lt;/person:bio&gt;
                  &lt;person:bio&gt;
                    &lt;person:bio.text&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;
                          &lt;text&gt;Honorary Fellow, University of Hull Law School.&lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;
                    &lt;/person:bio.text&gt;
                  &lt;/person:bio&gt;
               &lt;/person:person&gt;
               &lt;person:person&gt;
                  &lt;person:name.text&gt;David Milne, MA (Oxon), QC, FCA&lt;/person:name.text&gt;
                  &lt;person:bio&gt;
                    &lt;person:bio.text&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;
                          &lt;text&gt;Trading and Consumer Law Consultant.&lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;
                    &lt;/person:bio.text&gt;
                  &lt;/person:bio&gt;
               &lt;/person:person&gt;
            &lt;/person:contributor&gt;
         &lt;/byline&gt;
      &lt;/note&gt;
      &lt;h&gt;Current contributor&lt;/h&gt;
      &lt;note&gt;
         &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;
               &lt;person:person&gt;
                   &lt;person:name.text&gt;David Rudling, CTA&lt;/person:name.text&gt;
               &lt;/person:person&gt;
            &lt;/person:contributor&gt;
         &lt;/byline&gt;
      &lt;/note&gt;
      ...
   &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
 
	</pre>
    <pre>
              <b><i>Example 7: <sourcexml>bodytext/contrib</sourcexml> with <sourcexml>person</sourcexml> and <sourcexml>bio</sourcexml> siblings</i></b>
                <i>(rare, known in dpsi 02H1)</i>
      
<b><i>SOURCE XML</i></b>                  

&lt;level leveltype="prelim"&gt;
   &lt;heading&gt;
      &lt;title&gt;Authors&lt;/title&gt;
   &lt;/heading&gt;
   &lt;bodytext&gt;
      &lt;contrib contribtype="author"&gt;
         &lt;person&gt;
            &lt;name.text&gt;Mary Vitoria&lt;/name.text&gt;
         &lt;/person&gt;
         &lt;bio&gt;
            &lt;p&gt;
               &lt;text&gt;BSc (London), LLB (London), PhD (London), One of Her 
                   Majesty's Counsel, of Lincoln's Inn, Barrister&lt;/text&gt;
            &lt;/p&gt;
         &lt;/bio&gt;
         &lt;person&gt;
            &lt;name.text&gt;Adrian Speck&lt;/name.text&gt;
         &lt;/person&gt;
         &lt;bio&gt;
            &lt;p&gt;
               &lt;text&gt;MA (Cantab.), of Gray's Inn, Barrister&lt;/text&gt;
            &lt;/p&gt;
         &lt;/bio&gt;
      &lt;/contrib&gt;
   &lt;/bodytext&gt;
&lt;/level&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;seclaw:level leveltype="unclassified"&gt;
   &lt;heading&gt;
      &lt;title&gt;Authors&lt;/title&gt;
   &lt;/heading&gt;
   &lt;seclaw:bodytext&gt;
      &lt;note&gt;
         &lt;byline&gt;
            &lt;person:contributor contributor-type="author"&gt;
               &lt;person:person&gt;
                  &lt;person:name.text&gt;Mary Vitoria&lt;/person:name.text&gt;
                  &lt;person:bio&gt;
                    &lt;person:bio.text&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;
                          &lt;text&gt;BSc (London), LLB (London), PhD (London), One of Her 
                                Majesty's Counsel, of Lincoln's Inn, Barrister&lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;
                    &lt;/person:bio.text&gt;
                  &lt;/person:bio&gt;
               &lt;/person:person&gt;
               &lt;person:person&gt;
                  &lt;person:name.text&gt;Adrian Speck&lt;/person:name.text&gt;
                  &lt;person:bio&gt;
                    &lt;person:bio.text&gt;
                      &lt;bodytext&gt;
                        &lt;p&gt;
                          &lt;text&gt;MA (Cantab.), of Gray's Inn, Barrister&lt;/text&gt;
                        &lt;/p&gt;
                      &lt;/bodytext&gt;
                    &lt;/person:bio.text&gt;
                  &lt;/person:bio&gt;
               &lt;/person:person&gt;
            &lt;/person:contributor&gt;
         &lt;/byline&gt;
      &lt;/note&gt;
   &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;
 
	</pre>

  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Seclaw\ST11_Commentary_contrib.dita  -->
	<xsl:message>ST11_Commentary_contrib.xsl requires manual development!</xsl:message> 

	<xsl:template match="contrib">

		<!--  Original Target XPath:  pubfm:pubfm/byline   -->
		<pubfm:pubfm>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</pubfm:pubfm>

	</xsl:template>

	<xsl:template match="comm:info">

		<!--  Original Target XPath:  pubfm:pubfm/byline   -->
		<pubfm:pubfm>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</pubfm:pubfm>

	</xsl:template>

	<xsl:template match="comm:info/contrib">

		<!--  Original Target XPath:  pubfm:pubfm/byline   -->
		<pubfm:pubfm>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</pubfm:pubfm>

	</xsl:template>

	<xsl:template match="comm:info/contrib[@contribtype=&#34;series&#34;]">

		<!--  Original Target XPath:  pubfm:pubfm[@pubfmtype="series"]/byline   -->
		<pubfm:pubfm>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</pubfm:pubfm>

	</xsl:template>

	<xsl:template match="@contribtype">

		<!--  Original Target XPath:  @pubfmtype="author"   -->
		<xsl:attribute name="pubfmtype">
			<xsl:text>author</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="org">

		<!--  Original Target XPath:  entity:company   -->
		<entity:company>
			<xsl:apply-templates select="@* | node()"/>
		</entity:company>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  entity:company   -->
		<entity:company>
			<xsl:apply-templates select="@* | node()"/>
		</entity:company>

	</xsl:template>

	<xsl:template match="bio">

		<!--  Original Target XPath:  proc:nl   -->
		<proc:nl>
			<xsl:apply-templates select="@* | node()"/>
		</proc:nl>

	</xsl:template>

	<xsl:template match="p/text">

		<!--  Original Target XPath:  proc:nl   -->
		<proc:nl>
			<xsl:apply-templates select="@* | node()"/>
		</proc:nl>

	</xsl:template>

	<xsl:template match="/text">

		<!--  Original Target XPath:  seclaw:prelim/byline   -->
		<seclaw:prelim>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</seclaw:prelim>

	</xsl:template>

	<xsl:template match="/p">

		<!--  Original Target XPath:  seclaw:prelim/byline   -->
		<seclaw:prelim>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</seclaw:prelim>

	</xsl:template>

	<xsl:template match="inlineobject">

		<!--  Original Target XPath:  seclaw:prelim/byline   -->
		<seclaw:prelim>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</seclaw:prelim>

	</xsl:template>

	<xsl:template match="email">

		<!--  Original Target XPath:  seclaw:prelim/byline   -->
		<seclaw:prelim>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</seclaw:prelim>

	</xsl:template>

	<xsl:template match="levelinfo">

		<!--  Original Target XPath:  seclaw:prelim/byline   -->
		<seclaw:prelim>
			<byline>
				<xsl:apply-templates select="@* | node()"/>
			</byline>
		</seclaw:prelim>

	</xsl:template>

	<xsl:template match="contrib[@contribtype]/org">

		<!--  Original Target XPath:  entity:lawfirm   -->
		<entity:lawfirm>
			<xsl:apply-templates select="@* | node()"/>
		</entity:lawfirm>

	</xsl:template>

	<xsl:template match="contrib[@contribtype]/person">

		<!--  Original Target XPath:  person:contributor[@contributor-type]/person:person   -->
		<person:contributor>
			<person:person>
				<xsl:apply-templates select="@* | node()"/>
			</person:person>
		</person:contributor>

	</xsl:template>

	<xsl:template match="name.text">

		<!--  Original Target XPath:  person:name.text   -->
		<person:name.text>
			<xsl:apply-templates select="@* | node()"/>
		</person:name.text>

	</xsl:template>

	<xsl:template match="name.detail">

		<!--  Original Target XPath:  person:name.detail   -->
		<person:name.detail>
			<xsl:apply-templates select="@* | node()"/>
		</person:name.detail>

	</xsl:template>

	<xsl:template match="name.given">

		<!--  Original Target XPath:  person:name.given   -->
		<person:name.given>
			<xsl:apply-templates select="@* | node()"/>
		</person:name.given>

	</xsl:template>

	<xsl:template match="name.mid">

		<!--  Original Target XPath:  person:name.mid   -->
		<person:name.mid>
			<xsl:apply-templates select="@* | node()"/>
		</person:name.mid>

	</xsl:template>

	<xsl:template match="name.family">

		<!--  Original Target XPath:  person:name.family   -->
		<person:name.family>
			<xsl:apply-templates select="@* | node()"/>
		</person:name.family>

	</xsl:template>

	<xsl:template match="role">

		<!--  Original Target XPath:  role   -->
		<role>
			<xsl:apply-templates select="@* | node()"/>
		</role>

	</xsl:template>

	<xsl:template match="person">

		<!--  Original Target XPath:  person:name.text   -->
		<person:name.text>
			<xsl:apply-templates select="@* | node()"/>
		</person:name.text>

	</xsl:template>

	<xsl:template match="&lt;name.given&gt; G. Thomas&#xA;                  &lt;/name.given&gt;">

		<!--  Original Target XPath:  person:name.givenG.Thomas/person:name.given   -->
		<person:name.givenG.Thomas>
			<person:name.given>
				<xsl:apply-templates select="@* | node()"/>
			</person:name.given>
		</person:name.givenG.Thomas>

	</xsl:template>

	<xsl:template match="bodytext">

		<!--  Original Target XPath:  seclaw:bodytext/note/byline/person:contributor[@contributor-type]   -->
		<seclaw:bodytext>
			<note>
				<byline>
					<person:contributor>
						<xsl:apply-templates select="@* | node()"/>
					</person:contributor>
				</byline>
			</note>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="bodytext/contrib[@contribtype]">

		<!--  Original Target XPath:  seclaw:bodytext/note/byline/person:contributor[@contributor-type]   -->
		<seclaw:bodytext>
			<note>
				<byline>
					<person:contributor>
						<xsl:apply-templates select="@* | node()"/>
					</person:contributor>
				</byline>
			</note>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="org/remotelink">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="levelinfo/contrib">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="bodytext/contrib">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>