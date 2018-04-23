<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_COMMENTARYDOC_level_leveltype_related-content-pod">
    <title>level[@leveltype="related-content-pod"] <lnpid>id-UK15-30421</lnpid></title>

    <body>
        <section>
            <p><sourcexml>level[@leveltype="related-content-pod"]</sourcexml> becomes
                    <targetxml>doc:related-content</targetxml> inside
                    <targetxml>doc:metadata/doc:docinfo</targetxml>.</p>
            <p>If <sourcexml>level[@leveltype="related-content-pod"]</sourcexml> contains <i>only
                    one</i>
                <sourcexml>bodytext</sourcexml> child <b><i>and <sourcexml>bodytext</sourcexml>
                        contains at least one <sourcexml>references</sourcexml> child</i></b>, then
                the following instructions should be used:<ul>
                    <li><sourcexml>bodytext</sourcexml> is a container element that should be
                        suppressed. The descendants of <sourcexml>bodytext</sourcexml> are mapped as
                        follows: <ul>
                            <li><sourcexml>references</sourcexml> becomes
                                    <targetxml>doc:related-content-grp</targetxml>. The children of
                                    <sourcexml>references</sourcexml> are mapped as follows:<ul>
                                    <li><sourcexml>heading/title</sourcexml> becomes
                                            <targetxml>heading/title</targetxml>.</li>
                                    <li><sourcexml>p/text[child::remotelink]</sourcexml> becomes
                                            <targetxml>doc:related-content-item/doc:related-content-link</targetxml>.
                                            <sourcexml>remotelink</sourcexml> becomes
                                            <targetxml>ref:lnlink</targetxml> according to the
                                        General Markup instructions for remotelink. This mapping
                                        should not be used if <sourcexml>text</sourcexml> contains
                                        mixed content.</li>
                                    <li><sourcexml>p/text[child::url/remotelink]</sourcexml> becomes
                                            <targetxml>doc:related-content-item/doc:related-content-link</targetxml>.
                                            <sourcexml>url/remotelink</sourcexml> becomes
                                            <targetxml>ref:lnlink</targetxml> according to the
                                        General Markup instructions for url/remotelink. This mapping
                                        should not be used if <sourcexml>text</sourcexml> contains
                                        mixed content.</li>
                                    <li>For any occurrences of <sourcexml>p/text</sourcexml> other
                                        than those listed above, <i>including when
                                                <sourcexml>text</sourcexml> contains mixed
                                            content</i>, <sourcexml>p/text</sourcexml> becomes
                                            <targetxml>doc:related-content-item/doc:related-content-desc/p/text</targetxml>
                                        and the children of <sourcexml>text</sourcexml> should be
                                        mapped according to the appropriate directions from the
                                        General Markup section.</li>
                                </ul>
                            </li>
                        </ul></li>
                </ul></p>
            <p>If <sourcexml>level[@leveltype="related-content-pod"]</sourcexml> contains <i>only
                    one</i>
                <sourcexml>bodytext</sourcexml> child <b><i>and <sourcexml>bodytext</sourcexml> does
                        not contain any <sourcexml>references</sourcexml> children</i></b>, then the
                following instructions should be used:<ul>
                    <li><sourcexml>bodytext</sourcexml> becomes
                            <targetxml>doc:related-content-grp</targetxml>. The children of
                            <sourcexml>bodytext</sourcexml> are mapped as follows:<ul>
                            <li><sourcexml>heading/title</sourcexml> becomes
                                    <targetxml>heading/title</targetxml>.</li>
                            <li><sourcexml>p/text[child::remotelink]</sourcexml> becomes
                                    <targetxml>doc:related-content-item/doc:related-content-link</targetxml>.
                                    <sourcexml>remotelink</sourcexml> becomes
                                    <targetxml>ref:lnlink</targetxml> according to the General
                                Markup instructions for remotelink. This mapping should not be used
                                if <sourcexml>text</sourcexml> contains mixed content.</li>
                            <li><sourcexml>p/text[child::url/remotelink]</sourcexml> becomes
                                    <targetxml>doc:related-content-item/doc:related-content-link</targetxml>.
                                    <sourcexml>url/remotelink</sourcexml> becomes
                                    <targetxml>ref:lnlink</targetxml> according to the General
                                Markup instructions for url/remotelink. This mapping should not be
                                used if <sourcexml>text</sourcexml> contains mixed content.</li>
                            <li>For any occurrences of <sourcexml>p/text</sourcexml> other than
                                those listed above, <i>including when <sourcexml>text</sourcexml>
                                    contains mixed content</i>, <sourcexml>p/text</sourcexml>
                                becomes
                                    <targetxml>doc:related-content-item/doc:related-content-desc/p/text</targetxml>
                                and the children of <sourcexml>text</sourcexml> should be mapped
                                according to the appropriate directions from the General Markup
                                section.</li>
                        </ul></li>
                </ul></p>
            <p>If <sourcexml>level[@leveltype="related-content-pod"]</sourcexml> contains
                    <i>multiple</i>
                <sourcexml>bodytext</sourcexml> children, then the following instructions should be used:<ul>
                    <li><sourcexml>bodytext</sourcexml> becomes
                            <targetxml>doc:related-content-grp</targetxml>. The children of
                            <sourcexml>bodytext</sourcexml> are mapped as follows:<ul>
                            <li><sourcexml>heading/title</sourcexml> becomes
                                    <targetxml>heading/title</targetxml>.</li>
                            <li><sourcexml>p/text[child::remotelink]</sourcexml> becomes
                                    <targetxml>doc:related-content-item/doc:related-content-link</targetxml>.
                                    <sourcexml>remotelink</sourcexml> becomes
                                    <targetxml>ref:lnlink</targetxml> according to the General
                                Markup instructions for remotelink. This mapping should not be used
                                if <sourcexml>text</sourcexml> contains mixed content.</li>
                            <li><sourcexml>p/text[child::url/remotelink]</sourcexml> becomes
                                    <targetxml>doc:related-content-item/doc:related-content-link</targetxml>.
                                    <sourcexml>url/remotelink</sourcexml> becomes
                                    <targetxml>ref:lnlink</targetxml> according to the General
                                Markup instructions for url/remotelink. This mapping should not be
                                used if <sourcexml>text</sourcexml> contains mixed content.</li>
                            <li>For any occurrences of <sourcexml>p/text</sourcexml> other than
                                those listed above, <i>including when <sourcexml>text</sourcexml>
                                    contains mixed content</i>, <sourcexml>p/text</sourcexml>
                                becomes
                                    <targetxml>doc:related-content-item/doc:related-content-desc/p/text</targetxml>
                                and the children of <sourcexml>text</sourcexml> should be mapped
                                according to the appropriate directions from the General Markup
                                section.</li>
                        </ul></li>
                </ul></p>
        </section>
        <example>
            <title><sourcexml>level[@leveltype="related-content-pod"]</sourcexml> with one
                    <sourcexml>bodytext</sourcexml> child (<sourcexml>bodytext</sourcexml> contains
                    <sourcexml>references</sourcexml> children)</title>
            <codeblock>
&lt;level leveltype="related-content-pod"&gt;
    &lt;bodytext&gt;
        &lt;references&gt;
            &lt;heading&gt;
                &lt;title&gt;Related Documents&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;remotelink service="DOC-ID" remotekey1="DOC-ID"
                        remotekey2="0OJE_163859" dpsi="0OJE"&gt;Protecting the Olympic
                        brand I&lt;/remotelink&gt;
                &lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;remotelink service="DOC-ID" remotekey1="DOC-ID"
                        remotekey2="0OJE_163860" dpsi="0OJE"&gt;Protecting the Olympic
                        brand II&lt;/remotelink&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/references&gt;
        &lt;references&gt;
            &lt;heading&gt;
                &lt;title&gt;Web Links&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;url&gt;
                        &lt;remotelink hrefclass="http"
                            href="www.london2012.com/about-us/the-people-delivering-the-games/the-london-organising-committee/"
                            newwindow="YES"&gt;LOCOG&lt;/remotelink&gt;
                    &lt;/url&gt;
                &lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;url&gt;
                        &lt;remotelink hrefclass="http"
                            href="www.olympic.org/olympic-charter/documents-reports-studies-publications"
                            newwindow="YES"&gt;The Olympic Charter&lt;/remotelink&gt;
                    &lt;/url&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/references&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="GB"&gt;
        ...
        &lt;doc:related-content&gt;
            &lt;doc:related-content-grp&gt;
                &lt;heading&gt;
                    &lt;title&gt;Related Documents&lt;/title&gt;
                &lt;/heading&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="DOCUMENT"&gt;
                            &lt;ref:marker&gt;Protecting the Olympic brand I&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="0OJE_163859"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="DOCUMENT"&gt;
                            &lt;ref:marker&gt;Protecting the Olympic brand II&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="0OJE_163860"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
            &lt;/doc:related-content-grp&gt;
            &lt;doc:related-content-grp&gt;
                &lt;heading&gt;
                    &lt;title&gt;Web Links&lt;/title&gt;
                &lt;/heading&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="URL"&gt;
                            &lt;ref:marker&gt;LOCOG&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="URL"/&gt;
                                    &lt;ref:key-value
                                        value="http://www.london2012.com/about-us/the-people-delivering-the-games/the-london-organising-committee/"
                                    /&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
                &lt;doc:related-content-item&gt;
                    &lt;doc:related-content-link&gt;
                        &lt;ref:lnlink service="URL"&gt;
                            &lt;ref:marker&gt;The Olympic Charter&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="URL"/&gt;
                                    &lt;ref:key-value
                                        value="http://www.olympic.org/olympic-charter/documents-reports-studies-publications"
                                    /&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;
                    &lt;/doc:related-content-link&gt;
                &lt;/doc:related-content-item&gt;
            &lt;/doc:related-content-grp&gt;
        &lt;/doc:related-content&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
           </codeblock>
        </example>
        <example>
            <title><sourcexml>level[@leveltype="related-content-pod"]</sourcexml> with one
                    <sourcexml>bodytext</sourcexml> child (<sourcexml>bodytext</sourcexml> contains
                    <sourcexml>references</sourcexml> children)</title>
            <codeblock>
&lt;level leveltype="related-content-pod"&gt;
    &lt;bodytext&gt;
        &lt;references&gt;
            &lt;heading&gt;
                &lt;title&gt;Related Documents&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                        &lt;ci:sesslaw&gt;
                            &lt;ci:sesslawinfo&gt;
                                &lt;ci:sesslawnum num="2006_46a"/&gt;
                                &lt;ci:hierpinpoint&gt;
                                    &lt;ci:hierlev label="section" num="854"/&gt;
                                &lt;/ci:hierpinpoint&gt;
                            &lt;/ci:sesslawinfo&gt;
                            &lt;ci:sesslawref&gt;
                                &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                            &lt;/ci:sesslawref&gt;
                        &lt;/ci:sesslaw&gt;
                        &lt;ci:content&gt;Companies Act 2006, ss 854&lt;/ci:content&gt;
                    &lt;/ci:cite&gt; &amp;#x2013;&lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                        &lt;ci:sesslaw&gt;
                            &lt;ci:sesslawinfo&gt;
                                &lt;ci:sesslawnum num="2006_46a"/&gt;
                                &lt;ci:hierpinpoint&gt;
                                    &lt;ci:hierlev label="section" num="858"/&gt;
                                &lt;/ci:hierpinpoint&gt;
                            &lt;/ci:sesslawinfo&gt;
                            &lt;ci:sesslawref&gt;
                                &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                            &lt;/ci:sesslawref&gt;
                        &lt;/ci:sesslaw&gt;
                        &lt;ci:content&gt;858&lt;/ci:content&gt;
                    &lt;/ci:cite&gt;
                &lt;/text&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;text&gt;SmartForm AR01 for returns made up to a date on or after 1 October 2011&lt;lnlink
                        service="ATTACHMENT" status="valid"&gt;&lt;marker role="content"&gt;PDF
                            Format&lt;/marker&gt;&lt;api-params&gt;&lt;param name="attachment-key"
                                value="coar01_11-xxxx-xxxx-xxxxx-xx"/&gt;&lt;param name="attachment-type"
                                value="PDF"/&gt;&lt;param name="attachment-smi" value="4364"/&gt;&lt;param
                                name="componentseq" value="1"/&gt;&lt;/api-params&gt;&lt;/lnlink&gt;&lt;/text&gt;
            &lt;/p&gt;
        &lt;/references&gt;
        &lt;references&gt;
            &lt;heading&gt;
                &lt;title&gt;Web Links&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;url&gt;
                        &lt;remotelink hrefclass="http"
                            href="www.companieshouse.gov.uk/forms/generalForms/AR01_for_returns_made_up_to_a_date_on_or_after_1_October_2011.pdf"
                            newwindow="YES"&gt;Companies House form AR01 for returns made up to a date
                            on or after 1 October 2011&lt;/remotelink&gt;
                    &lt;/url&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/references&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:related-content&gt;
    &lt;doc:related-content-grp&gt;
        &lt;heading&gt;
            &lt;title&gt;Related Documents&lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-desc&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;lnci:cite status="valid"&gt;
                            &lt;lnci:sesslaw&gt;
                                &lt;lnci:sesslawinfo&gt;
                                    &lt;lnci:sesslawnum num="2006_46a"/&gt;
                                    &lt;lnci:hierpinpoint&gt;
                                        &lt;lnci:hierlev label="section" num="854"/&gt;
                                    &lt;/lnci:hierpinpoint&gt;
                                &lt;/lnci:sesslawinfo&gt;
                                &lt;lnci:sesslawref&gt;
                                    &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                &lt;/lnci:sesslawref&gt;
                            &lt;/lnci:sesslaw&gt;
                            &lt;lnci:content&gt;Companies Act 2006, ss 854&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt; &amp;#x2013;&lt;lnci:cite status="valid"&gt;
                            &lt;lnci:sesslaw&gt;
                                &lt;lnci:sesslawinfo&gt;
                                    &lt;lnci:sesslawnum num="2006_46a"/&gt;
                                    &lt;lnci:hierpinpoint&gt;
                                        &lt;lnci:hierlev label="section" num="858"/&gt;
                                    &lt;/lnci:hierpinpoint&gt;
                                &lt;/lnci:sesslawinfo&gt;
                                &lt;lnci:sesslawref&gt;
                                    &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                &lt;/lnci:sesslawref&gt;
                            &lt;/lnci:sesslaw&gt;
                            &lt;lnci:content&gt;858&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;&lt;/text&gt;
                &lt;/p&gt;
            &lt;/doc:related-content-desc&gt;
        &lt;/doc:related-content-item&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-desc&gt;
                &lt;p&gt;
                    &lt;text&gt;SmartForm AR01 for returns made up to a date on or after 1 October
                            2011&lt;ref:lnlink service="ATTACHMENT" status="valid"&gt;
                            &lt;ref:marker role="content"&gt;PDF Format&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="attachment-key"/&gt;
                                    &lt;ref:key-value value="coar01_11-xxxx-xxxx-xxxxx-xx"/&gt;
                                &lt;/ref:locator-key&gt;
                                &lt;ref:locator-params&gt;
                                    &lt;proc:param name="attachment-type" value="IMG"/&gt;
                                    &lt;proc:param name="external-or-local" value="external"/&gt;
                                    &lt;proc:param name="attachment-server" value="BlobStore"/&gt;
                                    &lt;proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
                                    &lt;proc:param name="componentseq" value="1"/&gt;
                                &lt;/ref:locator-params&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;&lt;/text&gt;
                &lt;/p&gt;
            &lt;/doc:related-content-desc&gt;
        &lt;/doc:related-content-item&gt;
    &lt;/doc:related-content-grp&gt;
    &lt;doc:related-content-grp&gt;
        &lt;heading&gt;
            &lt;title&gt;Web Links&lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="URL"&gt;
                    &lt;ref:marker&gt;Companies House form AR01 for returns made up to a date on or after
                        1 October 2011&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="URL"/&gt;
                            &lt;ref:key-value
                                value="http://www.companieshouse.gov.uk/forms/generalForms/AR01_for_returns_made_up_to_a_date_on_or_after_1_October_2011.pdf"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
    &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
           </codeblock>
        </example>
        <example>
            <title><sourcexml>level[@leveltype="related-content-pod"]</sourcexml> with one
                    <sourcexml>bodytext</sourcexml> child (<sourcexml>bodytext</sourcexml>
                <b><i>does not</i></b> contain any <sourcexml>references</sourcexml>
                children)</title>
            <codeblock>
&lt;level leveltype="related-content-pod"&gt;
    &lt;bodytext&gt;
        &lt;heading&gt;
            &lt;title&gt;Related documents&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;remotelink service="DOC-ID" remotekey1="DOC-ID"
                    remotekey2="0OM3_164015" dpsi="0OM3"&gt;Class issues&lt;/remotelink&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;remotelink service="DOC-ID" remotekey1="DOC-ID"
                    remotekey2="0OM3_164530" dpsi="0OM3"&gt;Court processes and
                    hearings&lt;/remotelink&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/bodytext&gt;
&lt;/level&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:related-content&gt;
    &lt;doc:related-content-grp&gt;
        &lt;heading&gt;
            &lt;title&gt;Related documents&lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="DOCUMENT"&gt;
                    &lt;ref:marker&gt;Class issues&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0OM3-0OM3_164015"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="DOCUMENT"&gt;
                    &lt;ref:marker&gt;Court processes and hearings&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0OM3-0OM3_164530"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
        ...
    &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
           </codeblock>
        </example>
        <example>
            <title><sourcexml>level[@leveltype="related-content-pod"]</sourcexml> with multiple
                    <sourcexml>bodytext</sourcexml> children</title>
            <codeblock>
&lt;level leveltype="related-content-pod"&gt;
    &lt;bodytext&gt;
        &lt;heading&gt;
            &lt;title&gt;Related documents&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;remotelink service="DOC-ID" remotekey1="DOC-ID" remotekey2="0OKU_152019"
                    dpsi="0OKU"&gt;Lease of whole building (offices)&lt;/remotelink&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;remotelink service="DOC-ID" remotekey1="DOC-ID" remotekey2="0OKU_152020"
                    dpsi="0OKU"&gt;Lease of part (offices)&lt;/remotelink&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
    &lt;bodytext&gt;
        &lt;heading&gt;
            &lt;title&gt;Sophie Gould recommends&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;inlineobject type="image" mimetype="image/gif" filename="Sophie Gould.JPG"/&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;Solicitor, Head of LexisPSL In-House&lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;remotelink service="DOC-ID" remotekey1="DOC-ID" remotekey2="0OM9_150984"
                    dpsi="0OM9"&gt;How is interim rent calculated?&lt;/remotelink&gt;
            &lt;/text&gt;
        &lt;/p&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;remotelink service="DOC-ID" remotekey1="DOC-ID" remotekey2="0OM9_24339" dpsi="0OM9"
                    &gt;Recovering rent arrears&lt;/remotelink&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:related-content&gt;
    &lt;doc:related-content-grp&gt;
        &lt;heading&gt;
            &lt;title&gt;Related documents&lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="DOCUMENT"&gt;
                    &lt;ref:marker&gt;Lease of whole building (offices)&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0OKU-0OKU_152019"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="DOCUMENT"&gt;
                    &lt;ref:marker&gt;Lease of part (offices)&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0OKU-0OKU_152020"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
    &lt;/doc:related-content-grp&gt;
    &lt;doc:related-content-grp&gt;
        &lt;heading&gt;
            &lt;title&gt;Sophie Gould recommends&lt;/title&gt;
        &lt;/heading&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-desc&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:inlineobject&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="object-key"/&gt;
                                    &lt;ref:key-value value="Sophie Gould.JPG"/&gt;
                                &lt;/ref:locator-key&gt;
                                &lt;ref:locator-params&gt;
                                    &lt;proc:param name="object-type" value="IMG"/&gt;
                                    &lt;proc:param name="external-or-local" value="external"/&gt;
                                    &lt;proc:param name="object-server" value="Blobstore"/&gt;
                                    &lt;proc:param name="object-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
                                    &lt;proc:param name="componentseq" value="1"/&gt;
                                &lt;/ref:locator-params&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:inlineobject&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/doc:related-content-desc&gt;
        &lt;/doc:related-content-item&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-desc&gt;
                &lt;p&gt;
                    &lt;text&gt;Solicitor, Head of LexisPSL In-House&lt;/text&gt;
                &lt;/p&gt;
            &lt;/doc:related-content-desc&gt;
        &lt;/doc:related-content-item&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="DOCUMENT"&gt;
                    &lt;ref:marker&gt;How is interim rent calculated?&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0OM9-0OM9_150984"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-link&gt;
                &lt;ref:lnlink service="DOCUMENT"&gt;
                    &lt;ref:marker&gt;Recovering rent arrears&lt;/ref:marker&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="DOC-ID"/&gt;
                            &lt;ref:key-value value="0OM9-0OM9_24339"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:lnlink&gt;
            &lt;/doc:related-content-link&gt;
        &lt;/doc:related-content-item&gt;
    &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
           </codeblock>
        </example>
        <example>
            <title>Example of mapping <sourcexml>p/text</sourcexml> to
                    <targetxml>doc:related-content-item/doc:related-content-desc/p/text</targetxml>
                when <sourcexml>text</sourcexml> contains mixed content</title>
            <codeblock>
&lt;level leveltype="related-content-pod"&gt;
    &lt;bodytext&gt;
        ...
        &lt;p&gt;
            &lt;text&gt;&lt;url&gt;&lt;remotelink hrefclass="http"
                        href="www.lexisnexis.com/uk/legal/api/version1/sr?csi=274716&amp;amp;sr=The+principal+charge+[FA+1986%2C+s+87][84.2]The+principal+charge+ &amp;amp;shr=t&amp;amp;oc=00254"
                        newwindow="YES"&gt;Tolley's Stamp Taxes [84.2]&lt;/remotelink&gt;&lt;/url&gt;&amp;#x2014;The
                principal charge [&lt;ci:cite searchtype="LEG-REF" status="valid"
                                &gt;&lt;ci:sesslaw&gt;&lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum num="1986_41a"
                                    /&gt;&lt;ci:hierpinpoint&gt;&lt;ci:hierlev label="section" num="87"
                                /&gt;&lt;/ci:hierpinpoint&gt;&lt;/ci:sesslawinfo&gt;&lt;ci:sesslawref&gt;&lt;ci:standardname
                                normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;&lt;/ci:sesslaw&gt;&lt;ci:content&gt;FA
                        1986, s 87&lt;/ci:content&gt;&lt;/ci:cite&gt;]&lt;/text&gt;
        &lt;/p&gt;
        ...
    &lt;/bodytext&gt;
&lt;/level&gt;
           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:related-content&gt;
    &lt;doc:related-content-grp&gt;
        ...
        &lt;doc:related-content-item&gt;
            &lt;doc:related-content-desc&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;ref:lnlink service="URL"&gt;
                            &lt;ref:marker&gt;Tolley's Stamp Taxes [84.2]&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="URL"/&gt;
                                    &lt;ref:key-value
                                        value="http://www.lexisnexis.com/uk/legal/api/version1/sr?csi=274716&amp;amp;sr=The+principal+charge+[FA+1986%2C+s+87][84.2]The+principal+charge+ &amp;amp;shr=t&amp;amp;oc=00254"
                                    /&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;&amp;#x2014;The principal charge [&lt;lnci:cite status="valid"&gt;
                            &lt;lnci:sesslaw&gt;
                                &lt;lnci:sesslawinfo&gt;
                                    &lt;lnci:sesslawnum num="1986_41a"/&gt;
                                    &lt;lnci:hierpinpoint&gt;
                                        &lt;lnci:hierlev label="section" num="87"/&gt;
                                    &lt;/lnci:hierpinpoint&gt;
                                &lt;/lnci:sesslawinfo&gt;
                                &lt;lnci:sesslawref&gt;
                                    &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                &lt;/lnci:sesslawref&gt;
                            &lt;/lnci:sesslaw&gt;
                            &lt;lnci:content&gt;FA 1986, s 87&lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;]&lt;/text&gt;
                &lt;/p&gt;
            &lt;/doc:related-content-desc&gt;
        &lt;/doc:related-content-item&gt;
        ...
    &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-12-14: <ph id="change_20161214_JM">Not a rule change directly to this module.
                    Modified Example Targets to reflect blobstore markup; within ref:lnlink value
                    now cased as value="BlobStore"; within ref:inlineobject, paramater names that
                    formerly contained the word "attachment" are now "object".</ph></p>
            <p>2016-08-03: <ph id="change_20160803_JM">Not a rule change directly to this module.
                    Modified Example Targets to reflect blobstore markup.</ph></p>
            <p>2015-02-27: <ph id="change_20150227_JCG">Changed target LexisAdv XML examples so that
                    the <targetxml>proc:param@value</targetxml> attribute contains "PDF" (uppercase)
                    instead of "pdf" (lowercase).</ph></p>
            <p>2014-02-18: <ph id="change_20140218_JCG">Corrected mark-up in all examples so that
                        <targetxml>ref:lnlink</targetxml> specifies the attribute
                        <targetxml>service="DOCUMENT"</targetxml>. Note that no conversion
                    instructions were modified, only the examples were corrected. (Webteam
                #)</ph></p>
            <p>2013-06-19: <ph id="change_20130619_DSF">Added instructions and example for when
                    bodytext does not contain any references children.; Updated instructions to make
                    it clear that p/text should map to
                    doc:related-content-item/doc:related-content-desc/p/text when text contains
                    mixed content.; Added an example of mapping p/text to
                    doc:related-content-item/doc:related-content-desc/p/text when text contains
                    mixed content.</ph></p>
            <p>2013-06-05: <ph id="change_20130605_DSF">Added instructions and example for when
                    level[@leveltype="related-content-pod"] contains multiple bodytext
                    children.</ph></p>
            <p>2013-05-31: <ph id="change_20130531_DSF">Modified instructions to make it clearer
                    which mapping should be used depending on the children of p/text.</ph></p>
        </section>
    </body>
	</dita:topic>

	<xsl:template match="level[@leveltype='related-content-pod']">		
		<doc:related-content>
			<xsl:apply-templates select="@* | node()"/>
		</doc:related-content>

	</xsl:template>

	<xsl:template match="bodytext">
		<doc:related-content-grp>
			<xsl:apply-templates select="@* | node()"/>
		</doc:related-content-grp>

	</xsl:template>

	<xsl:template match="references">
		<doc:related-content-grp>
			<xsl:apply-templates select="@* | node()"/>
		</doc:related-content-grp>

	</xsl:template>

	<xsl:template match="heading/title">
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="p/text[child::remotelink]">
		<doc:related-content-item>
			<doc:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</doc:related-content-link>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="remotelink">
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

	<xsl:template match="text">
		<doc:related-content-item>
			<doc:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</doc:related-content-link>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="p/text[child::url/remotelink]">
		<doc:related-content-item>
			<doc:related-content-link>
				<xsl:apply-templates select="@* | node()"/>
			</doc:related-content-link>
		</doc:related-content-item>

	</xsl:template>

	<xsl:template match="url/remotelink">
		<ref:lnlink>
			<xsl:apply-templates select="@* | node()"/>
		</ref:lnlink>

	</xsl:template>

    <xsl:template match="level[@leveltype='related-content-pod']/p/text">
		<doc:related-content-item>
			<doc:related-content-desc>
				<p>
					<text>
						<xsl:apply-templates select="@* | node()"/>
					</text>
				</p>
			</doc:related-content-desc>
		</doc:related-content-item>

	</xsl:template>

</xsl:stylesheet>