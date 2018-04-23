<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita case ci glp leg">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="case.content_case.judgments">
        <title>case:content/case:judgments <lnpid>id-AU07-19216</lnpid></title>
        <body>
            <section>
                <ul>
                    <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml "
                            >case:content/case:judgments</sourcexml> is a container element and need
                        not be carried forward in the conversion. However, as mentioned above, all
                        content must be converted such that the order of elements is maintained
                        whenever possible. The children are described below: <ul class="- topic/ul ">
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                    >case:judgments/case:judgment</sourcexml> becomes <targetxml
                                    class="+ topic/keyword xml-d/targetxml "
                                    >courtorder:body/section</targetxml>. The source attributes :
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                    >case:judgment @toc-caption</sourcexml> and <sourcexml
                                    class="+ topic/keyword xml-d/sourcexml ">case:judgment
                                    @subdoc</sourcexml> : <note class="- topic/note ">The attributes
                                    are anomalies and the source data would be corrected so that
                                    these elements won’t appear at the time of conversion.</note>
                                The children are described below: <ul class="- topic/ul ">
                                    <li class="- topic/li ">
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                            >case:judgment/case:judgmentbody</sourcexml> becomes
                                            <targetxml class="+ topic/keyword xml-d/targetxml "
                                            >courtorder:body/section/bodytext</targetxml>.
                                        <pre xml:space="preserve" class="- topic/pre ">
&lt;case:content&gt;
    &lt;case:judgments&gt;
        &lt;case:judgment&gt;
            &lt;case:judgmentbody&gt;...
            &lt;/case:judgmentbody&gt;
        &lt;/case:judgment&gt;
&lt;/case:judgments&gt;&lt;/case:content&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;...
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/courtorder:body&gt;                
</pre>
                                        The children are described below: <p class="- topic/p ">
                                            <b class="+ topic/ph hi-d/b ">Please refer to General
                                                Markup section for handling of children.</b>
                                        </p>
                                        <ul class="- topic/ul ">
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >p</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >p</targetxml>. The children are described below:
                                                  <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >case:judgmentbody/p/blockquote/p/blockquote/legfragment/leg:level</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >section/bodytext/p/blockquote/p/blockquote/primlaw:excerpt/primlaw:level</targetxml>.
                                                  <note class="- topic/note ">The above rule will be
                                                  applicable only when the input documents have
                                                  nested <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >blockquotes</sourcexml> and if <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >legfragment</sourcexml> is the child element of
                                                  one of the <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >blockquote</sourcexml> and the immediate child of
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >legfragment</sourcexml> is <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >leg:level</sourcexml>.</note>
                                                  </li>
                                                </ul>
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp</targetxml>. The children are described
                                                below: <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >heading</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >heading</targetxml>. <note>Conversion should not
                                                  create consecutive <targetxml>heading</targetxml>
                                                  elements. When 2 or more consecutive sibling
                                                  source elements map to
                                                  <targetxml>heading</targetxml>, data should be
                                                  merged to a single <targetxml>heading</targetxml>
                                                  element unless this would hamper content
                                                  ordering.</note> The children are described below:
                                                  <ul class="- topic/ul ">
                                                  <li id="pgrp_title" class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >title</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >title</targetxml>. The children are described
                                                  below: <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >remotelink</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >ref:crossreference</targetxml>. <note>Refer to
                                                  <sourcexml>remotelink</sourcexml> section of
                                                  General Markup for details.</note>
                                                  <note>Please note that both
                                                  <sourcexml>remotelink</sourcexml> and its child
                                                  element <sourcexml>inlineobject</sourcexml> should
                                                  be dropped whenever the value of attribute
                                                  <sourcexml>remotelink/@service="QUERY"</sourcexml>
                                                  and the only content within the
                                                  <sourcexml>remotelink</sourcexml> is
                                                  <sourcexml>inlineobject</sourcexml>. Otherwise,
                                                  the
                                                  <sourcexml>remotelink/@service="QUERY"</sourcexml>
                                                  start-tag and end-tag are dropped, but the content
                                                  is retained.</note>
                                                  <pre xml:space="preserve" class="- topic/pre ">
&lt;case:content&gt;
    &lt;case:judgments&gt;
        &lt;case:judgment&gt;
            &lt;case:judgmentbody&gt;
                &lt;pgrp&gt;
                    &lt;pgrp&gt;
                        &lt;heading&gt;
                            &lt;title&gt;Interest 
                                &lt;remotelink refpt="ASDL.VICLEG.TXAV97.S24" dpsi="006V" remotekey1="REFPTID" docidref="ABCD_9876" service="DOC-ID"&gt;s24&lt;/remotelink&gt; of the TAA
                            &lt;/title&gt;
                        &lt;/heading&gt;
                    &lt;/pgrp&gt;
                &lt;/pgrp&gt;                                                    
            &lt;/case:judgmentbody&gt;
        &lt;/case:judgment&gt;
    &lt;/case:judgments&gt;
&lt;/case:content&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;pgrp&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Interest
                            &lt;ref:crossreference crossreferencetype="seeAlso" referencedresourcesentiment="none" referencedresourcetype="practicenote"&gt;
                                &lt;ref:content&gt;s24&lt;/ref:content&gt;
                                &lt;ref:locator anchoridref="ASDL.VICLEG.TXAV97.S24"&gt;
                                    &lt;ref:locator-key&gt;
                                        &lt;ref:key-name name="DOC-ID"/&gt;
                                        &lt;ref:key-value value="006V-ABCD_9876"/&gt;
                                    &lt;/ref:locator-key&gt;
                                &lt;/ref:locator&gt;
                            &lt;/ref:crossreference&gt;
                            of the TAA
                        &lt;/title&gt;
                    &lt;/heading&gt;
                &lt;/pgrp&gt;	
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/courtorder:body&gt;                
</pre>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                  <li><sourcexml>form</sourcexml> becomes
                                                  <targetxml>form:form</targetxml>. The child
                                                  element
                                                  <targetxml>form:form/form:document</targetxml> is
                                                  also created with attributes set as follows: <ul>
                                                  <li>form:document/@annotated="false"</li>
                                                  <li>form:document/@official="true"</li>
                                                  <li>form:document/@typeofdoc="unnamed"</li>
                                                  </ul>The element
                                                  <sourcexml>form/bodytext</sourcexml> becomes
                                                  <targetxml>form:form/form:document/form:bodytext</targetxml>.
                                                  The element <sourcexml>form/bodytext/p</sourcexml>
                                                  becomes
                                                  <targetxml>form:form/form:document/form:bodytext/form:p</targetxml>.
                                                  The element
                                                  <sourcexml>form/bodytext/p/text</sourcexml>
                                                  becomes
                                                  <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml>.
                                                  All other child elements of
                                                  <sourcexml>form/bodytext</sourcexml> are converted
                                                  to children of
                                                  <targetxml>form:form/form:document/form:bodytext</targetxml>
                                                  using the instructions specified in the section
                                                  <xref href="general.dita"/>. For example,
                                                  <sourcexml>form/bodytext/table</sourcexml> becomes
                                                  <targetxml>form:form/form:document/form:bodytext/table</targetxml>.
                                                  <codeblock> &lt;pgrp&gt; &lt;heading&gt;
                                                  &lt;desig&gt; &lt;designum&gt;1.2&lt;/designum&gt;
                                                  &lt;/desig&gt;
                                                  &lt;title&gt;Documents&lt;/title&gt;
                                                  &lt;/heading&gt; &lt;p&gt; &lt;!--...--&gt;
                                                  &lt;/p&gt; &lt;form&gt; &lt;bodytext
                                                  searchtype="FORM"&gt; &lt;p&gt; &lt;text&gt;
                                                  &lt;emph typestyle="bf"&gt;SUPREME COURT OF
                                                  WESTERN AUSTRALIA &lt;/emph&gt; &lt;/text&gt;
                                                  &lt;/p&gt; &lt;table&gt; &lt;!--...--&gt;
                                                  &lt;/table&gt; </codeblock>
                                                  <b>becomes</b>
                                                  <codeblock> &lt;section&gt; &lt;bodytext&gt;
                                                  &lt;pgrp&gt; &lt;heading&gt;
                                                  &lt;desig&gt;1.2&lt;/desig&gt;
                                                  &lt;title&gt;Documents&lt;/title&gt;
                                                  &lt;/heading&gt; &lt;p&gt; &lt;!--...--&gt;
                                                  &lt;/p&gt; &lt;form:form&gt; &lt;form:document
                                                  annotated="false" official="true"
                                                  typeofdoc="unnamed"&gt; &lt;form:bodytext&gt;
                                                  &lt;form:p&gt; &lt;form:text&gt; &lt;emph
                                                  typestyle="bf"&gt;SUPREME COURT OF WESTERN
                                                  AUSTRALIA &lt;/emph&gt; &lt;/form:text&gt;
                                                  &lt;/form:p&gt; &lt;table&gt; &lt;!--...--&gt;
                                                  &lt;/table&gt; </codeblock>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >p</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >p</targetxml> The children are described below:
                                                  <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >blockquote</sourcexml> gets dropped whenever
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >legfragment</sourcexml> occurs within <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >blockquote</sourcexml>. The children are
                                                  described below : <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/p/blockquote/legfragment</sourcexml> becomes
                                                  <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/primlaw:excerpt</targetxml>. <note
                                                  class="- topic/note "> Please note that <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >p</sourcexml> is dropped because <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >primlaw:excerpt</targetxml> cannot be a child of
                                                  <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >p</targetxml>. </note> The children are described
                                                  below: <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/p/blockquote/legfragment/p</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/primlaw:excerpt/primlaw:bodytext/p</targetxml>.
                                                  <pre xml:space="preserve" class="- topic/pre ">
&lt;case:judgmentbody&gt;&lt;pgrp&gt;
    &lt;p&gt;
        &lt;blockquote&gt;
            &lt;legfragment&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;defterm&gt;&lt;emph typestyle="bf"&gt;An "eligible person"&lt;/emph&gt;&lt;/defterm&gt; is defined as meaning:&lt;/text&gt;
                &lt;/p&gt;
            &lt;/legfragment&gt;
        &lt;/blockquote&gt;
    &lt;/p&gt;
&lt;/pgrp&gt;
&lt;/case:judgmentbody&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;section&gt;&lt;bodytext&gt;
    &lt;pgrp&gt;
        &lt;primlaw:excerpt&gt;
            &lt;primlaw:bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;defterm&gt;&lt;emph typestyle="bf"&gt;An "eligible person"&lt;/emph&gt;&lt;/defterm&gt; is defined as meaning:
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/primlaw:bodytext&gt;
        &lt;/primlaw:excerpt&gt;
    &lt;/pgrp&gt;
&lt;/bodytext&gt;
&lt;/section&gt;                
</pre>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/p/blockquote/legfragment/leg:level</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/primlaw:excerpt/primlaw:level</targetxml>.
                                                  The children are described below: <ul
                                                  class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:heading</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/primlaw:excerpt/primlaw:level/heading</targetxml>.
                                                  The source attribute <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >/leg:level/leg:level-vrnt @leveltype</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >primlaw:level @leveltype</targetxml>. The child
                                                  element is described below: <ul
                                                  class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:heading/leg:empleg</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/primlaw:excerpt/primlaw:level/primlaw:authority/primlaw:authority-item/textitem</targetxml>.
                                                  <pre xml:space="preserve" class="- topic/pre ">
&lt;leg:level-vrnt&gt;
    &lt;leg:heading inline="true"&gt;
        &lt;leg:empleg&gt;
        &lt;/leg:empleg&gt;
    &lt;/leg:heading&gt;
&lt;/leg:level-vrnt&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;primlaw:level&gt;
    &lt;primlaw:authority&gt;
        &lt;primlaw:authority-item&gt;
            &lt;textitem&gt;
            &lt;/textitem&gt;
        &lt;/primlaw:authority-item&gt;
    &lt;/primlaw:authority&gt;
&lt;/primlaw:level&gt;          
                
</pre>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/p/blockquote/legfragment/leg:level/leg:level-vrnt/leg:levelbody/leg:bodytext</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/primlaw:excerpt/primlaw:level/primlaw:bodytext</targetxml>.
                                                  </li>
                                                  </ul>
                                                  <pre xml:space="preserve" class="- topic/pre ">
&lt;case:judgmentbody&gt;
    &lt;pgrp&gt;...
        &lt;p&gt;
            &lt;blockquote&gt;
                &lt;legfragment&gt;
                    &lt;leg:level&gt;
                        &lt;leg:level-vrnt leveltype="subsect"&gt;
                            &lt;leg:heading inline="true"&gt;...
                            &lt;/leg:heading&gt;
                            &lt;leg:levelbody&gt;
                                &lt;leg:bodytext&gt;...
                                &lt;/leg:bodytext&gt;
                            &lt;/leg:levelbody&gt;
                        &lt;/leg:level-vrnt&gt;
                    &lt;/leg:level&gt;
                &lt;/legfragment&gt;
            &lt;/blockquote&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:judgmentbody&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;section&gt;
    &lt;bodytext&gt;
        &lt;pgrp&gt;
            &lt;primlaw:excerpt&gt;
                &lt;primlaw:level leveltype="subsection"&gt;
                    &lt;heading inline="true"&gt;...
                    &lt;/heading&gt;
                    &lt;primlaw:bodytext&gt;...
                    &lt;/primlaw:bodytext&gt;
                &lt;/primlaw:level&gt;
            &lt;/primlaw:excerpt&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/section&gt;                                                               
                
</pre>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/p/blockquote/legfragment/l</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/primlaw:excerpt/primlaw:bodytext/list</targetxml>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/p/blockquote/legfragment/deflist</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/primlaw:excerpt/primlaw:bodytext/deflist</targetxml>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                  </ul>
                                                  <note class="- topic/note ">Please refer to
                                                  General Markup for handling of children.</note>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >p/text</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >p/text</targetxml>. The children are described
                                                  below: <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >text/ci:cite</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >text/lnci:cite</targetxml>. The children are
                                                  described below: <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >ci:cite/ci:content</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >lnci:cite/lnci:content</targetxml>. The children
                                                  : <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >ci:content/remotelink</sourcexml> becomes
                                                  <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >ref:crossreference</targetxml>. <note
                                                  class="- topic/note ">Please refer to '<sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >ci:cite</sourcexml>' and '<sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >remotelink</sourcexml>' sections of General
                                                  Markup for details.</note>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                  </ul>
                                                  <pre xml:space="preserve" class="- topic/pre ">
&lt;p&gt;
    &lt;text&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;
                &lt;remotelink refpt="Q.Q.SDA20.S6" dpsi="006V" docidref="ABCD_1234" remotekey1="REFPTID" service="DOC-ID"&gt;Section 6&lt;/remotelink&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt; of that Act includes the following provisions:
    &lt;/text&gt;
&lt;/p&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;p&gt;
    &lt;text&gt;
        &lt;lnci:cite type="legislation" citeref="Q.Q.SDA20.S6"&gt;
            &lt;lnci:content&gt;&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
              &lt;ref:content&gt;Section 6&lt;/ref:content&gt;
              &lt;ref:locator anchoridref="Q.Q.SDA20.S6"&gt;
                  &lt;ref:locator-key&gt;
                      &lt;ref:key-name name="DOC-ID"/&gt;
                      &lt;ref:key-value value="006V-ABCD_1234"/&gt;
                  &lt;/ref:locator-key&gt;
              &lt;/ref:locator&gt;
          &lt;/ref:crossreference&gt;&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt; of that Act includes the following provisions:
    &lt;/text&gt;
&lt;/p&gt;                
</pre>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/p/l/li/blockquote/legfragment/deflist</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/p/l/li/bodytext/primlaw:excerpt/primlaw:bodytext/deflist</targetxml>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp</targetxml>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >blockquote</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >blockquote</targetxml>. The children are
                                                  described as follows: <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp/blockquote/blockquote/insert-line</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >pgrp/blockquote/blockquote/p(empty)</targetxml>
                                                  <pre xml:space="preserve" class="- topic/pre ">
&lt;pgrp&gt;...
    &lt;blockquote&gt;
        &lt;blockquote&gt;
            &lt;insert-line character=" "/&gt;
        &lt;/blockquote&gt;
    &lt;/blockquote&gt;
&lt;/pgrp&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;pgrp&gt;
    &lt;blockquote&gt;
        &lt;blockquote&gt;...
            &lt;p&gt;&lt;/p&gt;
        &lt;/blockquote&gt;
    &lt;/blockquote&gt;
&lt;/pgrp&gt;                
</pre>
                                                  </li>
                                                  </ul>
                                                  <note class="- topic/note ">Please refer to
                                                  'blockquote' in the General Markup section for
                                                  more details.</note>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >l</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >list</targetxml>. </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >page</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >ref:page</targetxml>. <note class="- topic/note "
                                                  >Please follow the below rule ONLY WHEN <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >page</sourcexml> is the first child of <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >pgrp</sourcexml>.</note>
                                                  <pre xml:space="preserve" class="- topic/pre ">

&lt;pgrp&gt;
    &lt;page.../&gt;
    &lt;p&gt;
        &lt;text/&gt;
    &lt;/p&gt;
&lt;/pgrp&gt;    

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;pgrp&gt;
    &lt;p&gt;
        &lt;ref:page .../&gt;
        &lt;text/&gt;
    &lt;/p&gt;
&lt;/pgrp&gt;
                
</pre>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >glp:note</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >note</targetxml>
                                                  </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >table</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >table</targetxml>
                                                  </li>
                                                </ul>
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >h</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >h</targetxml>. </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >l</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >list</targetxml>
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >page</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >ref:page</targetxml>. </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >case:judgment/case:judgmentbody/glp:note</sourcexml>
                                                becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >section/bodytext/note/bodytext</targetxml>. <note
                                                  class="- topic/note ">When <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >blockquote</sourcexml> occurs as a child element
                                                  of <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >glp:note</sourcexml> then <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >glp:note</sourcexml> maps to <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >note/bodytext</targetxml>. Please refer to
                                                  General Markup section for handling of
                                                  children.</note>
                                                <pre xml:space="preserve" class="- topic/pre ">

&lt;case:judgment&gt;
    &lt;case:judgmentbody&gt;
        &lt;glp:note&gt;
            &lt;blockquote&gt;
                &lt;h&gt;ATTACHMENT 1&lt;/h&gt;
                &lt;h&gt;INSURANCE APPORTIONMENT SCHEDULE&lt;/h&gt;
            &lt;/blockquote&gt;
        &lt;/glp:note&gt;
    &lt;/case:judgmentbody&gt;                                      
&lt;/case:judgment&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;section&gt;
    &lt;bodytext&gt;
        &lt;note&gt;
            &lt;bodytext&gt;
                &lt;blockquote&gt;
                    &lt;h&gt;ATTACHMENT 1&lt;/h&gt;
                    &lt;h&gt;INSURANCE APPORTIONMENT SCHEDULE&lt;/h&gt;
                &lt;/blockquote&gt;
            &lt;/bodytext&gt;
        &lt;/note&gt;
    &lt;/bodytext&gt;
&lt;/section&gt;                
</pre>
                                                The children are described below: <ul
                                                  class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >glp:note/blockquote/blockquote/insert-line</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >note/bodytext/blockquote/blockquote/p(empty)</targetxml>. </li>
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >glp:note/blockquote/insert-line</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >note/bodytext/p/blockquote/p(empty)</targetxml>.
                                                  </li>
                                                </ul>
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >table</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >table</targetxml>. </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >footnotegrp</sourcexml> - For handling of
                                                footnotegrp element, please refer to 'footnotegrp
                                                and footnote' in the General Markup section. </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >case:judgment/case:judgmentbody/form</sourcexml>
                                                becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >courtorder:body/section/bodytext/form:form</targetxml>.
                                                The children are described below: <ul
                                                  class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >case:judgment/case:judgmentbody/form/bodytext</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >courtorder:body/section/bodytext/form:form/form:document
                                                  @annotated="false" @official="false"
                                                  @typeofdoc="general"/form:bodytext</targetxml>.
                                                  The source attribute : <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >form/bodytext @searchtype=”FORM”</sourcexml> is
                                                  dropped. The children are described below: <ul
                                                  class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >form/bodytext/p</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >form:form/form:document/form:bodytext/form:p</targetxml>
                                                  The children: <ul class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >form/bodytext/p/text</sourcexml> becomes
                                                  <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >form:form/form:document/form:bodytext/form:p/form:text</targetxml>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                  </ul>
                                                  </li>
                                                </ul>
                                            </li>
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >blockquote</sourcexml> becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >blockquote</targetxml>. </li>
                                        </ul>
                                    </li>
                                    <li class="- topic/li ">
                                        <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                            >case:judgment/case:courtinfo</sourcexml> is a container
                                        element and it is dropped but the content is maintained in
                                            <targetxml class="+ topic/keyword xml-d/targetxml "
                                            >courtorder:head/courtorder:authors</targetxml> The
                                        children are described below: <ul class="- topic/ul ">
                                            <li class="- topic/li ">
                                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                  >case:judgment/case:courtinfo/case:judges</sourcexml>
                                                becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >courtorder:head/courtorder:authors</targetxml>
                                                The child element is described below: <ul
                                                  class="- topic/ul ">
                                                  <li class="- topic/li ">
                                                  <sourcexml
                                                  class="+ topic/keyword xml-d/sourcexml "
                                                  >case:judgment/case:courtinfo/case:judges/case:judge</sourcexml>
                                                  becomes <targetxml
                                                  class="+ topic/keyword xml-d/targetxml "
                                                  >courtorder:head/courtorder:authors/person:judge/person:person/person:name.text</targetxml>
                                                  </li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <pre xml:space="preserve" class="- topic/pre ">
&lt;case:content&gt;&lt;case:judgments&gt;
    &lt;case:judgment&gt;
        &lt;case:courtinfo&gt;
            &lt;case:judges&gt;
                &lt;case:judge&gt;Shanahan&lt;/case:judge&gt; CJ
            &lt;/case:judges&gt;
        &lt;/case:courtinfo&gt;
    &lt;/case:judgment&gt;
&lt;/case:judgments&gt;&lt;/case:content&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:head&gt;&lt;courtorder:authors&gt;
    &lt;person:judge&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;SHANAHAN CJ&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:judge&gt;
&lt;/courtorder:authors&gt;
&lt;/courtorder:head&gt;                
                                    </pre>
                                        <note>If the content in <sourcexml
                                                class="+ topic/keyword xml-d/sourcexml "
                                                >case:content/case:judgments/case:judgment/case:courtinfo/case:judges</sourcexml>
                                            (case insensitive) exists in <sourcexml
                                                class="+ topic/keyword xml-d/sourcexml "
                                                >case:headnote/case:info/case:courtinfo/case:judges</sourcexml>,
                                            then <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                                >case:content/case:judgments/case:judgment/case:courtinfo/case:judges</sourcexml>
                                            and its content should be suppressed. According to the
                                            LBU this is redundant content.</note>
                                        <pre>

&lt;case:body&gt;
    &lt;case:headnote&gt;
        &lt;case:info&gt;
            &lt;case:casename&gt;PRACTICE NOTE NO 19A&lt;/case:casename&gt;
            ... 
            &lt;case:courtinfo&gt;
                &lt;case:courtname&gt;SUPREME COURT OF NEW SOUTH WALES&lt;/case:courtname&gt;
                &lt;case:courtcode&gt;NSWSC&lt;/case:courtcode&gt;
                &lt;case:judges&gt;&lt;case:judge&gt;STREET&lt;/case:judge&gt; CJ&lt;/case:judges&gt;
                &lt;case:dates&gt;
                    &lt;case:decisiondate&gt;
                        &lt;date day="15" month="12" year="1983"&gt;15 December 1983&lt;/date&gt;
                    &lt;/case:decisiondate&gt;
                &lt;/case:dates&gt;
                &lt;case:juris&gt;nsw&lt;/case:juris&gt;
            &lt;/case:courtinfo&gt;
        &lt;/case:info&gt;
        ... 
    &lt;/case:headnote&gt;
    &lt;case:content&gt;
        &lt;case:judgments&gt;
            &lt;case:judgment&gt;
                &lt;case:courtinfo&gt;
                    &lt;case:judges&gt;&lt;case:judge&gt;Street&lt;/case:judge&gt; CJ&lt;/case:judges&gt;
                &lt;/case:courtinfo&gt;
                &lt;case:judgmentbody&gt;
                    &lt;p&gt;
                        &lt;text&gt;1. This Practice Note applies where -&lt;/text&gt;
                    &lt;/p&gt;
                    ...
                &lt;/case:judgmentbody&gt;
            &lt;/case:judgment&gt;
        &lt;/case:judgments&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;

  
                                    </pre>
                                        <b>Becomes</b>
                                        <pre>

&lt;courtorder:head&gt;
    &lt;heading&gt;
        &lt;title&gt;PRACTICE NOTE NO 19A&lt;/title&gt;
    &lt;/heading&gt;
    ...
    &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:alternatecourtcode alternatecourtcode="NSWSC"/&gt;
        &lt;jurisinfo:courtname&gt;SUPREME COURT OF NEW SOUTH WALES&lt;/jurisinfo:courtname&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:system&gt;nsw&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;
    &lt;courtorder:authors&gt;
        &lt;person:judge&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;STREET CJ&lt;/person:name.text&gt;
            &lt;/person:person&gt;
        &lt;/person:judge&gt;
    &lt;/courtorder:authors&gt;
    &lt;courtorder:issuedate month="12" day="15" year="1983"&gt;15 December 1983&lt;/courtorder:issuedate&gt;
    ...
&lt;/courtorder:head&gt;
&lt;courtorder:body&gt;
    &lt;section&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;1. This Practice Note applies where -&lt;/text&gt;
            &lt;/p&gt;
            ... 
        &lt;/bodytext&gt;
    &lt;/section&gt;
&lt;/courtorder:body&gt;
  
                                    </pre>
                                    </li>
                                </ul>
                            </li>
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                    >footnotegrp</sourcexml> - For handling of footnotegrp element,
                                please refer to 'footnotegrp and footnote' in the General Markup
                                section. </li>
                            <li>
                                <sourcexml>case:content/case:judgments/prelim</sourcexml> becomes
                                    <targetxml>courtorder:head/courtorder:prelim</targetxml>. <pre>

    &lt;case:body&gt;
        &lt;case:content&gt;
            &lt;case:judgments&gt;
                &lt;prelim&gt;
                    &lt;p&gt;
                        &lt;text&gt;The State of Western Australia (the Government party) proposed to grant mining leases
                              under the Mining Act 1978 (WA). The leases in question were initially covered by a number of
                              registered native title claims, as well as a number of unregistered native title claims. Only
                              registered native title claims have the right to negotiate under Subdiv P of Div 3 of the
                              NTA. A number of the claims in question were subsequently combined before the Federal
                              Court.
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/prelim&gt;
            &lt;case:judgments&gt;
        &lt;/case:content&gt;
    &lt;/case:body&gt;
 
</pre>
                                <b>Becomes</b>
                                <pre>
    
        &lt;courtorder:head&gt;
            &lt;courtorder:prelim&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;The State of Western Australia (the Government party) proposed to grant mining leases
                        under the Mining Act 1978 (WA). The leases in question were initially covered by a number of
                        registered native title claims, as well as a number of unregistered native title claims. Only
                        registered native title claims have the right to negotiate under Subdiv P of Div 3 of the
                        NTA. A number of the claims in question were subsequently combined before the Federal
                        Court.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/courtorder:prelim&gt;
        &lt;/courtorder:head&gt;
  
</pre>
                            </li>
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                    >case:content/case:judgments/case:order</sourcexml>. <note
                                    class="- topic/note ">This is a bad markup and the source data
                                    would be corrected so that these elements won’t appear at the
                                    time of conversion.</note>
                            </li>
                            <li class="- topic/li ">
                                <sourcexml class="+ topic/keyword xml-d/sourcexml "
                                    >case:content/case:judgments/case:disposition</sourcexml>
                                <note class="- topic/note ">This is a bad markup and the source data
                                    would be corrected so that these elements won’t appear at the
                                    time of conversion.</note>
                            </li>
                        </ul>
                    </li>
                </ul>
            </section>
            <section>
                <title>Changes</title>
                <p>2014-03-04: <ph id="change_20140304_JCG">Clarified the note regarding the
                        suppression of
                            <sourcexml>case:judgment/case:judgmentbody/pgrp/heading/title/remotelink/@service="QUERY"</sourcexml>
                        and child <sourcexml>inlineobject</sourcexml>. (Webteam #250335)</ph></p>
                <p>2013-09-15: <ph id="change_20130915_JCG">Added instructions regarding
                            <sourcexml>case:judgmentbody/pgrp/form</sourcexml> and child elements.
                        (Webteam #234565)</ph></p>
                <p>2013-05-14: <ph id="change_20130514_RPX">Updated instructions on how to handle
                            <sourcexml>case:judgments/prelim</sourcexml>.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.content_case.judgments.dita  -->


    <xsl:template match="case:content/case:judgments">
        <xsl:apply-templates select="node() except footnotegrp"/>
    </xsl:template>
    <!--Chaitanaya: Handle the scenario CASEDOC/case:body/case:content/case:judgments/footnotegrp-->
    <xsl:template match="case:judgments/footnotegrp">
        <bodytext>
            <p>
                <text>
                    <xsl:apply-templates select="node() | @*"/>
                </text>
            </p>
        </bodytext>

    </xsl:template>


    <xsl:template match="case:judgments/case:judgment">
        <section xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node() except //case:judgments/footnotegrp"/>
<!--       Chaitanya-->
            <xsl:if test="//case:judgments/footnotegrp">
                
                <xsl:apply-templates select="following-sibling::footnotegrp"/>
            </xsl:if>
        </section>
    </xsl:template>

    <xsl:template match="case:judgment/@toc-caption | case:judgment/@subdoc"/>

    <xsl:template match="case:judgmentbody">
        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node()"/>
        </bodytext>
    </xsl:template>


    <!-- except for forms, this all should be handled by generic modules -->

    <!-- form stuff gacked from AU05 and tweaked
    some of these instructions are from the case:appendix module dita 
    -->

    <xsl:template match="form">
        <form:form>
            <form:document>
                <xsl:attribute name="annotated">false</xsl:attribute>
                <xsl:choose>
                    <xsl:when test="ancestor::case:appendix">
                        <xsl:attribute name="official">false</xsl:attribute>
                        <xsl:attribute name="typeofdoc">general</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="ancestor::case:judgment">
                        <xsl:attribute name="official">true</xsl:attribute>
                        <xsl:attribute name="typeofdoc">unnamed</xsl:attribute>
                    </xsl:when>
                </xsl:choose>
                <xsl:for-each select="*">
                    <xsl:choose>
                        <xsl:when test="self::bodytext">
                            <xsl:apply-templates select="." mode="form"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="."/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </form:document>
        </form:form>
    </xsl:template>

    <xsl:template match="bodytext" mode="form">
        <form:bodytext>
            <xsl:for-each-group select="*"
                group-adjacent="
                    if (self::p or self::h or self::l or self::sigblock) then
                        0
                    else
                        1">
                <xsl:choose>
                    <xsl:when test="current-grouping-key() = 0">
                        <xsl:apply-templates select="current-group()" mode="form"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="current-group()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each-group>
        </form:bodytext>
    </xsl:template>


    <!-- derived the following rules from schema + common-sense
	valid children of form:bodytext:
	
        form:p"/>
        form:h"/>
        form:list"/>
        
        base:figure"/>
       
        form:sigblock"/>
        location:address"/>
        proc:stars"/>
        base:hrule"/>
        base:blockquote"/>
        base:deflist"/>
        base:pgrp"/>
        base:note"/>
        base:notes"/>
        base:qanda"/>
        base:table"/>
        primlaw:excerpt"/>
        form:block"/>
      </xs:choice>-->



    <xsl:template match="h" mode="form">
        <form:h>
            <xsl:copy-of select="@* except (@typesize)"/>
            <xsl:apply-templates select="node()"/>
        </form:h>
    </xsl:template>

    <xsl:template match="p" mode="form">
        <form:p>
            <xsl:apply-templates select="@*"/>
            <xsl:if test="not(@style)">
                <xsl:copy-of select="text/@align"/>
            </xsl:if>
            <xsl:for-each-group select="*"
                group-adjacent="
                    if (self::text or self::p) then
                        0
                    else
                        1">
                <xsl:choose>
                    <xsl:when test="current-grouping-key() = 0">
                        <xsl:apply-templates select="current-group()" mode="form"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="current-group()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each-group>
        </form:p>
    </xsl:template>

    <xsl:template match="text" mode="form">
        <xsl:for-each-group select="node()"
            group-adjacent="
                if (self::deflist) then
                    0
                else
                    1">
            <xsl:choose>
                <xsl:when test="current-grouping-key() = 0">
                    <xsl:apply-templates select="current-group()"/>
                </xsl:when>
                <xsl:otherwise>
                    <form:text>
                        <xsl:apply-templates select="current-group()"/>
                    </form:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each-group>
    </xsl:template>

    <xsl:template match="l" mode="form">
        <form:list>
            <xsl:for-each-group select="*"
                group-adjacent="
                    if (self::li) then
                        0
                    else
                        1">
                <xsl:choose>
                    <xsl:when test="current-grouping-key() = 0">
                        <xsl:apply-templates select="current-group()" mode="form"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="current-group()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each-group>
        </form:list>
    </xsl:template>

    <xsl:template match="li" mode="form">
        <form:listitem>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="lilabel/refpt"/>
            <xsl:apply-templates select="lilabel"/>
            <form:bodytext>
                <xsl:for-each-group select="* except lilabel"
                    group-adjacent="
                        if (self::p or self::h or self::l or self::sigblock) then
                            0
                        else
                            1">
                    <xsl:choose>
                        <xsl:when test="current-grouping-key() = 0">
                            <xsl:apply-templates select="current-group()" mode="form"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="current-group()"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each-group>
                <xsl:if test="following-sibling::*[1][self::l]">
                    <xsl:apply-templates select="following-sibling::*[1][self::l]" mode="form"/>
                </xsl:if>
            </form:bodytext>
        </form:listitem>
    </xsl:template>

    <xsl:template match="form/@searchtype"/>

    <!-- this handles the appendix scenario if necessary -->

    <xsl:template match="sigblock" mode="form">
        <form:sigblock>
            <xsl:apply-templates select="@*"/>
            <xsl:for-each-group select="*"
                group-adjacent="
                    if (self::p or self::h or self::l) then
                        0
                    else
                        1">
                <xsl:choose>
                    <xsl:when test="current-grouping-key() = 0">
                        <xsl:apply-templates select="current-group()" mode="form"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="current-group()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each-group>
        </form:sigblock>
    </xsl:template>


    <!--    <xsl:template match="case:constituents">
        <xsl:comment>case:constituents supressed because no instruction in C.I or DT Output.</xsl:comment>
    </xsl:template>
-->
</xsl:stylesheet>
