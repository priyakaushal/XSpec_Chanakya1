<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1" xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0" exclude-result-prefixes="dita case glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.body_case.content_case.appendix">
    <title>case:body/case:content/case:appendix <lnpid>id-AU07-19209</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:body/case:content/case:appendix</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/appendix/bodytext</targetxml>.
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:appendix&gt;...
        &lt;/case:appendix&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:body&gt;
    &lt;appendix&gt;
        &lt;bodytext&gt;...
        &lt;/bodytext&gt;
    &lt;/appendix&gt;
&lt;/courtorder:body&gt;
                
</pre>
                    The children are described below: <ul class="- topic/ul ">
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/sigblock</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock</targetxml>. <note class="- topic/note "> If the only
                                content of case:appendix is sigblock, then <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix</sourcexml> gets dropped because the sigblock is a direct child of <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body</targetxml> in NL. If there are child elements other than
                                    <sourcexml>sigblock</sourcexml>, all other elements (except <sourcexml>sigblock</sourcexml>) will be mapped to
                                    <targetxml>courtorder:body/appendix/bodytext</targetxml> and the child element <sourcexml>sigblock</sourcexml>
                                alone maps to <targetxml>courtorder:body/sigblock</targetxml>. </note> The children are described below: <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">p</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">p</targetxml> The children are described below: <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">text</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">text</targetxml> The children are described below: <ul class="- topic/ul ">
                                                <li class="- topic/li ">
                                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/sigblock/p/text/date</sourcexml>
                                                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/date</targetxml>
                                                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:appendix&gt;
            &lt;sigblock&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;date&gt;13 March 2006&lt;/date&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/sigblock&gt;
        &lt;/case:appendix&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:body&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;date&gt;13 March 2006&lt;/date&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/sigblock&gt;
&lt;/courtorder:body&gt;
                
</pre>
                                                </li>
                                                <li class="- topic/li ">
                                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/sigblock/p/text/person</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/person:person</targetxml> The child element is described
                                                    below: <ul class="- topic/ul ">
                                                        <li class="- topic/li ">
                                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/sigblock/p/text/person/name.text</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/person:person/person:name.text</targetxml>
                                                            <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:appendix&gt;
            &lt;sigblock&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;person&gt;
                            &lt;name.text&gt;The Hon R O Blanch
                            &lt;/name.text&gt;
                        &lt;/person&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/sigblock&gt;
        &lt;/case:appendix&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;person:person&gt;
                    &lt;person:name.text&gt;The Hon R O Blanch
                    &lt;/person:name.text&gt;
                &lt;/person:person&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/sigblock&gt;
&lt;/courtorder:body&gt;                
</pre>
                                                        </li>
                                                        <li class="- topic/li ">
                                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/sigblock/p/text/person/role</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/person:person/role</targetxml>
                                                            <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:appendix&gt;
            &lt;sigblock&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;person&gt;
                            &lt;role&gt;Chief Judge&lt;/role&gt;
                        &lt;/person&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/sigblock&gt;
        &lt;/case:appendix&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;person:person&gt;
                    &lt;role&gt;Chief Judge&lt;/role&gt;
                &lt;/person:person&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/sigblock&gt;
&lt;/courtorder:body&gt;                
</pre>
                                                        </li>
                                                        <li class="- topic/li ">
                                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/sigblock/p/text/person/name.detail</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/person:person/person:name.detail</targetxml> The
                                                            child element is described below: <ul class="- topic/ul ">
                                                                <li class="- topic/li ">
                                                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/sigblock/p/text/person/name.detail/name.honorific</sourcexml>
                                                                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/person:person/person:name.detail/person:name.honorific</targetxml>
                                                                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:appendix&gt;
            &lt;sigblock&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;person&gt;
                            &lt;name.detail&gt;
                                &lt;name.honorific&gt;AM
                                &lt;/name.honorific&gt;
                            &lt;/name.detail&gt;
                        &lt;/person&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/sigblock&gt;
        &lt;/case:appendix&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;person:person&gt;
                    &lt;person:name.detail&gt;
                        &lt;person:name.honorific&gt;AM
                        &lt;/person:name.honorific&gt;
                    &lt;/person:name.detail&gt;
                &lt;/person:person&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/sigblock&gt;
&lt;/courtorder:body&gt;                
</pre>
                                                                </li>
                                                                <li class="- topic/li ">
                                                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/sigblock/p/text/person/name.detail/name.degree</sourcexml>
                                                                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/sigblock/p/text/person:person/person:name.detail/person:name.degree</targetxml>.
                                                                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:appendix&gt;
            &lt;sigblock&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;person&gt;
                            &lt;name.detail&gt;
                                &lt;name.degree&gt;GNZM&lt;/name.degree&gt;
                            &lt;/name.detail&gt;                                
                        &lt;/person&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/sigblock&gt;
        &lt;/case:appendix&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;sigblock&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;person:person&gt;
                    &lt;person:name.detail&gt;
                        &lt;person:name.degree&gt;GNZM&lt;/person:name.degree&gt;
                    &lt;/person:name.detail&gt;
                &lt;/person:person&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/sigblock&gt;
&lt;/courtorder:body&gt;                
</pre>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/p</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/p</targetxml>
                            <p class="- topic/p ">
                                <b class="+ topic/ph hi-d/b ">When <sourcexml class="+ topic/keyword xml-d/sourcexml ">p</sourcexml> occurs as a child
                                    element of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix</sourcexml> then <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix</sourcexml> maps to <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext</targetxml>.</b>
                            </p> The children are described below: <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">table</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">table</targetxml>. <note class="- topic/note ">Please refer to General
                                        Markup section for handling of attributes and children.</note>
                                </li>
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/p/text</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/p/text</targetxml>
                                </li>
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/p/inlineobject</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/figure/ref:inlineobject</targetxml>
                                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:appendix&gt;
    &lt;p&gt;
        &lt;inlineobject filename="acme1.bmp" attachment="ln-server" type="image"/&gt;
    &lt;/p&gt;
&lt;/case:appendix&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;appendix&gt;
    &lt;bodytext&gt;
        &lt;figure&gt;
            &lt;ref:inlineobject&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="object-key"/&gt;
                        &lt;ref:key-value value="X-Y--acme1"/&gt; &lt;!-- X and Y are LNI and SMI values obtained from CSSM --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="object-type" value="image"/&gt; &lt;!-- allowable values: “image”; (from .jpg, .gif, .png, .bmp)--&gt;
                        &lt;proc:param name="object-smi" value=""/&gt;    &lt;!-- This @value assignment is done by conversion program --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:inlineobject&gt;
        &lt;/figure&gt;
    &lt;/bodytext&gt;
&lt;/appendix&gt;                
</pre>
                                </li>
                            </ul>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">h</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">h</targetxml>. <note class="- topic/note "> When <sourcexml class="+ topic/keyword xml-d/sourcexml ">h</sourcexml> occurs as a child element of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix</sourcexml> then <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix</sourcexml> maps to <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext</targetxml>. Please refer to General Markup section for
                                handling of children.</note>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/footnotegrp</sourcexml> - For handling of footnote element, please refer to 'footnotegrp and footnote' in the General Markup
                            section. All content must be converted such that the order of elements is
                            maintained whenever possible. Please see the "Maintain the Order of Elements Whenever Possible" section for more information. The
                            conversion of its children is described below: <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">footnotegrp/footnote</sourcexml> - <note class="- topic/note ">For handling of footnote element, please refer to 'footnotegrp and footnote' in the General Markup
                                        section.</note>
                                </li>
                            </ul>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/pgrp</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/pgrp</targetxml>. The children are described below: <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">p/blockquote/insert-line</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">p/blockquote/p(empty).</targetxml>
                                </li>
                            </ul>
                            <note class="- topic/note ">Please refer to 'pgrp' in the General Markup section for more details.</note>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/glp:note</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/note</targetxml>. The children are described below: <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/glp:note/blockquote</sourcexml> becomes
                                        <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/note/bodytext/blockquote</targetxml>.
                                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:appendix&gt;
            &lt;glp:note&gt;
                &lt;blockquote&gt;...
                &lt;/blockquote&gt;
            &lt;/glp:note&gt;
        &lt;/case:appendix&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;     

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;courtorder:body&gt;
    &lt;appendix&gt;
        &lt;bodytext&gt;
            &lt;note&gt;
                &lt;bodytext&gt;
                    &lt;blockquote&gt;
                    &lt;/blockquote&gt;
                &lt;/bodytext&gt;
            &lt;/note&gt;
        &lt;/bodytext&gt;
    &lt;/appendix&gt;
&lt;/courtorder:body&gt;
                
</pre>
                                    The children are described below: <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">h</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">h</targetxml>
                                            <note class="- topic/note ">For handling of h element, please refer to 'h' in the General Markup
                                                section.</note>
                                        </li>
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">p</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">p</targetxml>
                                            <note class="- topic/note ">For handling of p element, please refer to 'p' in the General Markup
                                                section.</note>
                                        </li>
                                    </ul>
                                </li>
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/glp:note/footnotegrp</sourcexml> - For handling of footnotegrp/footnote element, please refer to 'footnotegrp and
                                    footnote' in the General Markup section. All content must be converted such that the order of elements is maintained whenever possible. Please see the "Maintain the Order of
                                        Elements Whenever Possible" section for more information. The conversion of its children is described
                                    below: <note class="- topic/note "> When <sourcexml class="+ topic/keyword xml-d/sourcexml ">glp:note</sourcexml>
                                        occurs as a child element of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix</sourcexml> then
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix</sourcexml> maps to <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext</targetxml>.</note>
                                    <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">footnotegrp/footnote</sourcexml>
                                            <note class="- topic/note ">For handling of footnotegrp/footnote element, please refer to 'footnotegrp and
                                                footnote' in the General Markup section.</note>
                                        </li>

                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/form</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:body/appendix/bodytext/form:form</targetxml> The children are
                            described below: <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/form/bodytext</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/form:form/form:document @annotated="false"
                                        @official="false" @typeofdoc="general"/form:bodytext</targetxml>. The source attribute : <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/form/bodytext @searchtype="FORM"</sourcexml> is dropped.
                                    The children are described below: <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/form/bodytext/p</sourcexml> becomes
                                                <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/form:form/form:document/form:p</targetxml>
                                            <ul class="- topic/ul ">
                                                <li class="- topic/li ">
                                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/form/bodytext/p/text</sourcexml>
                                                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/form:form/form:document/form:p/form:text</targetxml>
                                                    <ul class="- topic/ul ">
                                                        <li class="- topic/li ">
                                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/form/bodytext/p/text/emph</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/form:form/form:document/form:p/form:text/emph</targetxml>
                                                        </li>
                                                    </ul>
                                                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;&lt;case:content&gt;
    &lt;case:appendix&gt;
        &lt;form&gt;
            &lt;bodytext searchtype="FORM"&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="bf"&gt;APPEARANCES
                        &lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/form&gt;  
    &lt;/case:appendix&gt;
&lt;/case:content&gt;                                                             
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;&lt;appendix&gt;
    &lt;bodytext&gt;
        &lt;form:form&gt;
            &lt;form:document annotated="false" official="false" typeofdoc="general"&gt;
                &lt;form:bodytext&gt;
                    &lt;form:p&gt;
                        &lt;form:text&gt;
                            &lt;emph typestyle="bf"&gt;APPEARANCES
                            &lt;/emph&gt;
                        &lt;/form:text&gt;
                    &lt;/form:p&gt;
                &lt;/form:bodytext&gt;
            &lt;/form:document&gt;  
        &lt;/form:form&gt;
    &lt;/bodytext&gt;
&lt;/appendix&gt;
&lt;/courtorder:body&gt;                
</pre>
                                                </li>
                                                <li class="- topic/li ">
                                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">table</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">table</targetxml>. <note class="- topic/note ">Please
                                                        refer to General Markup section for handling of children.</note>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">heading</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">heading</targetxml>. The children are described below: <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">title</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">title</targetxml>. <ul class="- topic/ul ">
                                        <li class="- topic/li ">
                                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">emph</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">emph</targetxml>. <note class="- topic/note ">For handling of
                                                emph element, please refer to 'emph' in the General Markup section.</note>
                                        </li>
                                    </ul>
                                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:appendix&gt;
            &lt;heading&gt;
                &lt;title&gt;ANNEXURE 3 SUPREME COURT OF VICTORIA &lt;emph typestyle="ro"&gt;GUIDELINES
                &amp;#x2014; POSSIBLE FIELDS FOR DATABASE&lt;/emph&gt;
                &lt;/title&gt;
            &lt;/heading&gt;
        &lt;/case:appendix&gt;
    &lt;/case:content&gt;   
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;appendix&gt;
        &lt;heading&gt;
            &lt;title&gt;ANNEXURE 3 SUPREME COURT OF VICTORIA &lt;emph typestyle="ro"&gt;GUIDELINES &amp;#x2014;
            POSSIBLE FIELDS FOR DATABASE&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
    &lt;/appendix&gt;    
&lt;/courtorder:body&gt;                
</pre>
                                </li>
                            </ul>
                            <note>Conversion should not create consecutive <targetxml>heading</targetxml> elements. When 2 or more consecutive sibling
                                source elements map to <targetxml>heading</targetxml>, data should be merged to a single
                                    <targetxml>heading</targetxml> element unless this would hamper content ordering.</note>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/blockquote</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/blockquote</targetxml>
                            <note class="- topic/note ">Please refer to General Markup section for handling of children.</note>
                        </li>
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/page</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">appendix/bodytext/ref:page</targetxml>. <note class="- topic/note ">Please
                                refer to General Markup section for handling of its attributes.</note>
                            <pre xml:space="preserve" class="- topic/pre ">
&lt;case:body&gt;
    &lt;case:content&gt;
        &lt;case:appendix&gt;
            &lt;page reporter="vr" count="118" text="5 VR 107 at " subdoc="true"/&gt;
        &lt;/case:appendix&gt;
    &lt;/case:content&gt;
&lt;/case:body&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;courtorder:body&gt;
    &lt;appendix&gt;
        &lt;bodytext&gt;
            &lt;ref:page page-scheme="vr" num="118" page-scheme-type="reporter-abbreviation"/&gt;
        &lt;/bodytext&gt;
    &lt;/appendix&gt;
&lt;/courtorder:body&gt;                
</pre>
                        </li>
                    </ul>
                </li>
            </ul>
        </section>
        
        <section>
            <title>Changes</title>
            <p>Created. </p>
            <p>2013-05-08: <ph id="change_20130508_SP">Updated target example to reflect changes per latest Apollo markup.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.body_case.content_case.appendix.dita  -->

	<!-- TODO: note the courtorder:body may have been created already -->
	
	<xsl:template match="case:body/case:content/case:appendix">
		    <appendix xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</appendix>
	</xsl:template>
	
	<!-- NOTE: the remainder of the template below (copied from DITA topic) should be handled by generic apply-templates -->

<!--	<xsl:template match="case:appendix/pgrp">

		<!-\-  Original Target XPath:  appendix/bodytext/pgrp   -\->
		<appendix>
			<bodytext>
				<pgrp>
					<xsl:apply-templates select="@* | node()"/>
				</pgrp>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="p/blockquote/insert-line">

		<!-\-  Original Target XPath:  p/blockquote/p(empty).   -\->
		<p>
			<blockquote>
				<!-\-  Could not determine target element or attribute name:  <p(empty).>  -\->					<xsl:apply-templates select="@* | node()"/>
				<!-\-  Could not determine target element or attribute name:  </p(empty).>  -\->
			</blockquote>
		</p>

	</xsl:template>

	<xsl:template match="case:appendix/glp:note">

		<!-\-  Original Target XPath:  appendix/bodytext/note   -\->
		<appendix>
			<bodytext>
				<note>
					<xsl:apply-templates select="@* | node()"/>
				</note>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="case:appendix/glp:note/blockquote">

		<!-\-  Original Target XPath:  appendix/bodytext/note/bodytext/blockquote   -\->
		<appendix>
			<bodytext>
				<note>
					<bodytext>
						<blockquote>
							<xsl:apply-templates select="@* | node()"/>
						</blockquote>
					</bodytext>
				</note>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="case:appendix/glp:note/footnotegrp">

		<!-\-  Original Target XPath:  appendix/bodytext   -\->
		<appendix>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="glp:note">

		<!-\-  Original Target XPath:  appendix/bodytext   -\->
		<appendix>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="case:appendix/form">

		<!-\-  Original Target XPath:  courtorder:body/appendix/bodytext/form:form   -\->
		<error_courtorder:body xmlns:error_courtorder="courtorder_ERROR">
			<appendix>
				<bodytext>
					<form:form xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/">
						<xsl:apply-templates select="@* | node()"/>
					</form:form>
				</bodytext>
			</appendix>
		</error_courtorder:body>

	</xsl:template>

	<xsl:template match="case:appendix/form/bodytext">

		<!-\-  Original Target XPath:  appendix/bodytext/form:form/form:document@annotated="false"@official="false"@typeofdoc="general"/form:bodytext   -\->
		<appendix>
			<bodytext>
				<form:form xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/">
					<form:document>
						<form:bodytext>
							<xsl:apply-templates select="@* | node()"/>
						</form:bodytext>
					</form:document>
				</form:form>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="case:appendix/form/bodytext @searchtype=&#34;FORM&#34;">

		<!-\-  Original Target XPath:  appendix/bodytext/form:form/form:document/form:p   -\->
		<appendix>
			<bodytext>
				<form:form xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/">
					<form:document>
						<form:p>
							<xsl:apply-templates select="@* | node()"/>
						</form:p>
					</form:document>
				</form:form>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="case:appendix/form/bodytext/p">

		<!-\-  Original Target XPath:  appendix/bodytext/form:form/form:document/form:p   -\->
		<appendix>
			<bodytext>
				<form:form xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/">
					<form:document>
						<form:p>
							<xsl:apply-templates select="@* | node()"/>
						</form:p>
					</form:document>
				</form:form>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="case:appendix/form/bodytext/p/text">

		<!-\-  Original Target XPath:  appendix/bodytext/form:form/form:document/form:p/form:text   -\->
		<appendix>
			<bodytext>
				<form:form xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/">
					<form:document>
						<form:p>
							<form:text>
								<xsl:apply-templates select="@* | node()"/>
							</form:text>
						</form:p>
					</form:document>
				</form:form>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="case:appendix/form/bodytext/p/text/emph">

		<!-\-  Original Target XPath:  appendix/bodytext/form:form/form:document/form:p/form:text/emph   -\->
		<appendix>
			<bodytext>
				<form:form xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/">
					<form:document>
						<form:p>
							<form:text>
								<emph>
									<xsl:apply-templates select="@* | node()"/>
								</emph>
							</form:text>
						</form:p>
					</form:document>
				</form:form>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="heading">

		<!-\-  Original Target XPath:  heading   -\->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="title">

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="emph">

		<!-\-  Original Target XPath:  emph   -\->
		<emph>
			<xsl:apply-templates select="@* | node()"/>
		</emph>

	</xsl:template>

	<xsl:template match="case:appendix/blockquote">

		<!-\-  Original Target XPath:  appendix/bodytext/blockquote   -\->
		<appendix>
			<bodytext>
				<blockquote>
					<xsl:apply-templates select="@* | node()"/>
				</blockquote>
			</bodytext>
		</appendix>

	</xsl:template>

	<xsl:template match="case:appendix/page">

		<!-\-  Original Target XPath:  appendix/bodytext/ref:page   -\->
		<appendix>
			<bodytext>
				<ref:page xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
					<xsl:apply-templates select="@* | node()"/>
				</ref:page>
			</bodytext>
		</appendix>

	</xsl:template>
-->
</xsl:stylesheet>