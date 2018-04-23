<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" 
    xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" xmlns:tei="http://www.tei-c.org/ns/1.0/" version="2.0" exclude-result-prefixes="dita dict ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dictionary-Body">
    <title>Body <lnpid>id-AU17-21207</lnpid></title>
    <shortdesc>All of the following are descendants of <targetxml>dict:body</targetxml>. Handle in
        document order unless specifically stated otherwise. Refer to General Markup Section for
        handling of children (including mixed content).</shortdesc>
    <body>
        <section>
            <p><sourcexml>dict:body</sourcexml> becomes <targetxml>dict:body</targetxml><ul>
                    <li>Convert <sourcexml>dict:term-entry</sourcexml> as follows:<p><b>Case 1:</b>
                            when <sourcexml>dict:term-entry</sourcexml> contains zero or 1
                                <sourcexml>dict:subtopic</sourcexml> descendent:
                                <sourcexml>dict:term-entry</sourcexml> becomes
                                <targetxml>dict:defitem/tei:entry</targetxml></p><b>Case 2:</b> when
                            <sourcexml>dict:term-entry</sourcexml> contains 2 or more
                            <sourcexml>dict:subtopic</sourcexml> descendents:
                            <sourcexml>dict:term-entry</sourcexml> becomes
                            <targetxml>dict:defitem/tei:superEntry/tei:entry</targetxml><ul>
                            <li><sourcexml>defterm</sourcexml> becomes
                                    <targetxml>tei:form/tei:orth</targetxml> following the rules below:<ul>
                                    <li>If <b>Case 1</b>: create
                                            <targetxml>tei:form/tei:orth</targetxml> as a child of
                                            <targetxml>tei:entry</targetxml>.</li>
                                    <li>If <b>Case 2</b>: create
                                            <targetxml>tei:form/tei:orth</targetxml> as a child of
                                            <targetxml>tei:superEntry</targetxml></li>
                                    <li>The value of <targetxml>@norm</targetxml> should be the
                                        value of <sourcexml>defterm</sourcexml> with space
                                        normalized, punctutation removed, and converted to
                                        lower-case. Also include any descendant PCDATA of
                                            <sourcexml>defterm</sourcexml> such as
                                            <sourcexml>remotelink</sourcexml>. See
                                            <sourcexml>remotelink</sourcexml> example.</li>
                                </ul></li>
                            <li>Convert <sourcexml>dict:definition</sourcexml> as follows:<ul>
                                    <li>If <b>Case 1</b>: <sourcexml>dict:definition</sourcexml>
                                        becomes <targetxml>tei:def</targetxml>. (Do not include
                                            <targetxml>tei:def</targetxml> in output if it is
                                            empty)<ul id="ul_zlv_cbv_yk">
                                            <li>child element <sourcexml>p</sourcexml> and its
                                                children will be contained in
                                                  <targetxml>pgrp</targetxml>.</li>
                                            <li>if <sourcexml>dict:subtopic</sourcexml> exists, drop
                                                and convert its children as instructed below.</li>
                                            <li>if child element <sourcexml>see</sourcexml> exists,
                                                drop tag and map contents to
                                                  <targetxml>pgrp/p/text</targetxml>.</li>
                                        </ul></li>
                                    <li>If <b>Case 2</b>: for each
                                            <sourcexml>dict:definition/dict:subtopic</sourcexml>
                                        following-sibling, create a new
                                            <targetxml>tei:entry</targetxml>.<p>The
                                                <sourcexml>dict:subtopic</sourcexml> element will be
                                            dropped. The child elements of
                                                <sourcexml>dict:subtopic</sourcexml> will be
                                            contained in <targetxml>tei:entry</targetxml> and
                                            converted as follows:</p><ul>
                                            <li><sourcexml>dict:topicname</sourcexml> becomes
                                                  <targetxml>tei:usg</targetxml>. Set
                                                  <targetxml>tei:usg[@type="dom"]</targetxml>. If
                                                  <sourcexml>dict:topicname</sourcexml> is empty it
                                                should be suppressed.</li>
                                            <li><sourcexml>p</sourcexml> and its children will map
                                                to <targetxml>tei:def/pgrp</targetxml></li>
                                            <li><sourcexml>dict:synonym</sourcexml> becomes
                                                  <targetxml>tei:usg[@type='syn']</targetxml>.</li>
                                            <li><sourcexml>dict:abbreviation</sourcexml> becomes
                                                  <targetxml>abbrvname</targetxml>.</li>
                                            <li><sourcexml>see</sourcexml> becomes
                                                  <targetxml>tei:re[@type='see']</targetxml>. </li>
                                            <li><sourcexml>see-also</sourcexml> becomes
                                                  <targetxml>tei:re[@type='see-also']</targetxml>.</li>
                                        </ul></li>
                                </ul></li>
                        </ul></li>
                </ul></p>
        </section>
        <example>
            <title>Source XML 1</title>
            <codeblock>

&lt;dict:term-entry&gt;
  &lt;defterm&gt;
    &lt;refpt id="UNMANAGED-RESERVE" type="ext"/&gt;
      Unmanaged reserve
  &lt;/defterm&gt;
  &lt;dict:definition&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
          &lt;ci:content&gt;
            &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                (WA) Land Administration Act 1997 s 3
            &lt;/citefragment&gt;
          &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

      </codeblock>
        </example>
        <example>
            <title>Target XML 1</title>
            <codeblock>

&lt;dict:defitem&gt;
    &lt;tei:entry&gt;
        &lt;tei:form&gt;
          &lt;tei:orth norm="unmanaged reserve"&gt;
            &lt;ref:anchor id="UNMANAGED-RESERVE" anchortype="global"/&gt;
          Unmanaged reserve&lt;/tei:orth&gt;
        &lt;/tei:form&gt;
        &lt;tei:def&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;lnci:cite&gt;
                            &lt;lnci:content&gt;
                                (WA) Land Administration Act 1997 s 3
                            &lt;/lnci:content&gt;
                        &lt;/lnci:cite&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;          
        &lt;/tei:def&gt;
    &lt;/tei:entry&gt;
&lt;/dict:defitem&gt;

      </codeblock>
        </example>
        <example>
            <title>Source XML 2</title>
            <codeblock>

&lt;dict:term-entry&gt;
    &lt;defterm&gt;
      &lt;refpt id="A2003-TAX-YEAR" type="ext"/&gt;
        2003 tax year
    &lt;/defterm&gt;
    &lt;dict:definition&gt;
        &lt;dict:subtopic&gt;
            &lt;dict:topicname&gt;(in relation to hoteliers and registered clubs)&lt;/dict:topicname&gt;
            &lt;p&gt;
                &lt;text&gt;
                  &lt;ci:cite searchtype="LEG-REF"&gt;
                        &lt;ci:content&gt;
                            &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                                (NSW) Gaming Machine Tax Act 2001 No 72 s 27A
                            &lt;/citefragment&gt;
                        &lt;/ci:content&gt;
                  &lt;/ci:cite&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/dict:subtopic&gt;
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

            </codeblock>
        </example>
        <example>
            <title>Target XML 2</title>
            <codeblock>

&lt;dict:defitem&gt;
    &lt;tei:entry&gt;
        &lt;tei:form&gt;
            &lt;tei:orth norm="2003 tax year"&gt;
                &lt;ref:anchor id="A2003-TAX-YEAR" anchortype="global"/&gt;
            2003 tax year&lt;/tei:orth&gt;
        &lt;/tei:form&gt;
        &lt;tei:usg type="dom"&gt;
            (in relation to hoteliers and registered clubs)
        &lt;/tei:usg&gt;
        &lt;tei:def&gt;
            &lt;pgrp&gt;
               	&lt;p&gt;
                    &lt;text&gt;
                       &lt;lnci:cite&gt;
                           &lt;lnci:content&gt;
                               (NSW) Gaming Machine Tax Act 2001 No 72 s 27A
                           &lt;/lnci:content&gt;
                       &lt;/lnci:cite&gt;
                   &lt;/text&gt;              
               	&lt;/p&gt;
            &lt;/pgrp&gt;           
        &lt;/tei:def&gt;
    &lt;/tei:entry&gt;
&lt;/dict:defitem&gt;

      </codeblock>
        </example>
        <example>
            <title>Source XML 3</title>
            <codeblock>

&lt;dict:term-entry&gt;
    &lt;defterm&gt;&lt;refpt id="A.83" type="ext"/&gt;a&lt;/defterm&gt;
    &lt;dict:definition&gt;
        &lt;dict:subtopic&gt;
            &lt;dict:topicname&gt;Computers&lt;/dict:topicname&gt;
            &lt;see&gt;See &lt;remotelink dpsi="0034" refpt="ATTO" remotekey1="REFPTID"
                service="DOC-ID"&gt;atto&lt;/remotelink&gt;.
            &lt;/see&gt;
        &lt;/dict:subtopic&gt;
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

      </codeblock>
        </example>
        <example>
            <title>Target XML 3</title>
            <codeblock>

&lt;dict:defitem&gt;
    &lt;tei:entry&gt;
        &lt;tei:form&gt;
            &lt;tei:orth norm="a"&gt;
                &lt;ref:anchor id="A.83" anchortype="global"/&gt; a&lt;/tei:orth&gt;
        &lt;/tei:form&gt;
        &lt;tei:usg type="dom"&gt; Computers &lt;/tei:usg&gt;
        &lt;tei:re type="see"&gt;See &lt;ref:crossreference crossreferencetype="seeInstead"&gt;
                &lt;ref:content&gt;atto&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="ATTO"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0034"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;
        &lt;/tei:re&gt;
    &lt;/tei:entry&gt;
&lt;/dict:defitem&gt;

      </codeblock>
        </example>
        <example>
            <title>Source XML 4</title>
            <codeblock>

&lt;dict:term-entry&gt;
    &lt;defterm&gt;&lt;refpt id="ABSENTEE-VOTER" type="ext"/&gt;absentee voter&lt;/defterm&gt;
    &lt;dict:definition&gt;
        &lt;dict:subtopic&gt;
            &lt;dict:topicname&gt;
                Constitutional law
            &lt;/dict:topicname&gt;
            &lt;p&gt;
                &lt;text&gt;An elector voting at a polling place in the State or Territory other
                    than that appointed for the electoral division in which the voter is
                    enrolled: 
                      &lt;ci:cite searchtype="LEG-REF"&gt;
                        &lt;ci:content&gt;
                          &lt;citefragment searchtype="LEG-NAME-REF"&gt;(CTH)
                            Commonwealth Electoral Act 1918 s
                            222
                          &lt;/citefragment&gt;
                         &lt;/ci:content&gt;
                    &lt;/ci:cite&gt;.
                &lt;/text&gt;
            &lt;/p&gt;
            &lt;dict:synonym&gt;Also known as `absent voter'.&lt;/dict:synonym&gt;
            &lt;see-also&gt;See also &lt;remotelink dpsi="0034" refpt="ABSENT-VOTING"
                remotekey1="REFPTID" service="DOC-ID"&gt;absent
                voting&lt;/remotelink&gt;.&lt;/see-also&gt;
        &lt;/dict:subtopic&gt;
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

      </codeblock>
        </example>
        <example>
            <title>Target XML 4</title>
            <codeblock>

&lt;dict:defitem&gt;
    &lt;tei:entry&gt;
        &lt;tei:form&gt;
            &lt;tei:orth norm="absentee voter"&gt;
                &lt;ref:anchor id="ABSENTEE-VOTER" anchortype="global"/&gt;
            absentee voter&lt;/tei:orth&gt;
        &lt;/tei:form&gt;
        &lt;tei:usg type="dom"&gt;Constitutional law&lt;/tei:usg&gt;
        &lt;tei:def&gt;
            &lt;pgrp&gt;
               	&lt;p&gt;
                   &lt;text&gt;
                      An elector voting at a polling place in the 
                      State or Territory other than
                      that appointed for the electoral division in which 
                      the voter is enrolled: 
                      &lt;lnci:cite&gt;
                           &lt;lnci:content&gt; (CTH) Commonwealth Electoral Act 1918 s 222
                           &lt;/lnci:content&gt;
                     &lt;/lnci:cite&gt; .
                   &lt;/text&gt;             
               	&lt;/p&gt;
            &lt;/pgrp&gt;            
        &lt;/tei:def&gt;
        &lt;tei:usg type="syn"&gt;Also known as `absent voter'.&lt;/tei:usg&gt;
        &lt;tei:re type="see-also"&gt;See also &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
            &lt;ref:content&gt;absent voting&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="ABSENT-VOTING"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0034"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;
        .&lt;/tei:re&gt;
    &lt;/tei:entry&gt;
&lt;/dict:defitem&gt;

      </codeblock>
        </example>
        <example>
            <title>Source XML 5</title>
            <codeblock>

&lt;dict:term-entry&gt;
            &lt;defterm&gt;
              &lt;refpt id="ABORIGINAL-AFFAIRS-PLANNING-AUTHORITY" 
                     type="ext"/&gt;
              Aboriginal Affairs Planning Authority
            &lt;/defterm&gt;
            &lt;dict:definition&gt;
                &lt;dict:subtopic&gt;
                    &lt;dict:topicname&gt;Indigenous legal issues&lt;/dict:topicname&gt;
                    &lt;dict:abbreviation&gt;
                      &lt;emph typestyle="it"&gt;Abbrv&lt;/emph&gt; - &amp;#x2013; AAPA 
                    &lt;/dict:abbreviation&gt;
                    &lt;p&gt;
                        &lt;text&gt;A body providing services to promote the control and management of
                            land held in trust by or for persons of Aboriginal descent, and
                            promoting the advancement of such persons in Western Australia. The AAPA
                            was established by the &lt;ci:cite searchtype="LEG-REF"&gt;
                                &lt;ci:content&gt;&lt;citefragment searchtype="LEG-NAME-REF"&gt;(WA) Aboriginal
                                        Affairs Planning Authority Act 1972 s
                                    20&lt;/citefragment&gt;&lt;/ci:content&gt;
                            &lt;/ci:cite&gt;. Crown land vested in the authority may be placed under the
                            control and management of the Aboriginal Lands Trust.&lt;/text&gt;
                    &lt;/p&gt;
                    &lt;see-also&gt;See also 
                      &lt;remotelink dpsi="0034" 
                                  refpt="ABORIGINAL-LAND-TRUST"
                                  remotekey1="REFPTID" 
                                  service="DOC-ID"&gt;
                                      Aboriginal Land Trust
                       &lt;/remotelink&gt;;
                       &lt;remotelink dpsi="0034" 
                                   refpt="ABORIGINAL-PERSON"
                                   remotekey1="REFPTID" 
                                   service="DOC-ID"&gt;
                                      aboriginal person
                        &lt;/remotelink&gt;;
                        &lt;remotelink dpsi="0034" 
                                    refpt="CROWN-LAND" 
                                    remotekey1="REFPTID"
                                    service="DOC-ID"&gt;
                                       Crown land
                         &lt;/remotelink&gt;; 
                         &lt;remotelink dpsi="0034"
                                     refpt="PERSON-OF-ABORIGINAL-DESCENT" 
                                     remotekey1="REFPTID"
                                     service="DOC-ID"&gt;
                                        person of Aboriginal descent
                         &lt;/remotelink&gt;.
                       &lt;/see-also&gt;
                &lt;/dict:subtopic&gt;
            &lt;/dict:definition&gt;
        &lt;/dict:term-entry&gt;

      </codeblock>
        </example>
        <example>
            <title>Target XML 5</title>
            <codeblock>


&lt;dict:defitem&gt;
    &lt;tei:entry&gt;
        &lt;tei:form&gt;
            &lt;tei:orth norm="absentee voter"&gt;
                &lt;ref:anchor id="ABORIGINAL-AFFAIRS-PLANNING-AUTHORITY" anchortype="global"/&gt;
            Aboriginal Affairs Planning Authority&lt;/tei:orth&gt;
        &lt;/tei:form&gt;
        &lt;tei:usg type="dom"&gt;Indigenous legal issues&lt;/tei:usg&gt;
        &lt;abbrvname&gt;&lt;emph typestyle="it"&gt;Abbrv&lt;/emph&gt; - &amp;#x2013; AAPA &lt;/abbrvname&gt;
        &lt;tei:def&gt;
        &lt;pgrp&gt;
           	&lt;p&gt;
               &lt;text&gt;A body providing services to promote the control and management of land
                       held in trust by or for persons of Aboriginal descent, and promoting the
                       advancement of such persons in Western Australia. The AAPA was established
                       by the 
                       &lt;lnci:cite&gt;
                           &lt;lnci:content&gt; (WA) Aboriginal Affairs Planning Authority Act 1972 s
                               20&lt;/lnci:content&gt;
                       &lt;/lnci:cite&gt;. Crown land vested in the authority may be placed under the
                       control and management of the Aboriginal Lands Trust.
               &lt;/text&gt;            
           	&lt;/p&gt;
        &lt;/pgrp&gt;          
        &lt;/tei:def&gt;
        &lt;tei:re type="see-also"&gt;See also 
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Aboriginal Land Trust&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="ABORIGINAL-LAND-TRUST"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0034"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;;
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;aboriginal person&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="ABORIGINAL-PERSON"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0034"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;;
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;Crown land&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="CROWN-LAND"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0034"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;;
            &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                &lt;ref:content&gt;person of Aboriginal descent&lt;/ref:content&gt;
                &lt;ref:locator anchoridref="PERSON-OF-ABORIGINAL-DESCENT"&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="DOC-ID"/&gt;
                        &lt;ref:key-value value="0034"/&gt;
                    &lt;/ref:locator-key&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:crossreference&gt;          
        &lt;/tei:re&gt;
    &lt;/tei:entry&gt;
&lt;/dict:defitem&gt;

	</codeblock>
        </example>
        <example>
            <title>Source - New Zealand content</title>
            <codeblock>

&lt;docinfo partitionnum="1"&gt;
    &lt;docinfo:doc-heading&gt;NZLWP - 1 - 10% bonus&lt;/docinfo:doc-heading&gt;
    &lt;docinfo:doc-id&gt;NZLWP_1_00001&lt;/docinfo:doc-id&gt;
    &lt;docinfo:doc-lang lang="en"/&gt;
    &lt;docinfo:doc-country iso-cc="NZ"/&gt;
    &lt;docinfo:hier&gt;
        &lt;docinfo:hierlev role="ancestor"&gt;
            &lt;heading&gt;
                &lt;title&gt;1&lt;/title&gt;
            &lt;/heading&gt;
            &lt;docinfo:hierlev role="me"&gt;
                &lt;heading&gt;
                    &lt;title&gt;10% bonus&lt;/title&gt;
                &lt;/heading&gt;
            &lt;/docinfo:hierlev&gt;
        &lt;/docinfo:hierlev&gt;
    &lt;/docinfo:hier&gt;
    &lt;docinfo:bookseqnum&gt;10000000&lt;/docinfo:bookseqnum&gt;
    &lt;docinfo:lbu-meta&gt;
        &lt;docinfo:metaitem 
            name="lbu-sourcename" 
            value="New Zealand Legal Words and Phrases"/&gt;
        &lt;docinfo:metaitem name="parent-docid" value="NZLWP_1"/&gt;
        &lt;docinfo:metaitem name="parent-filename" value="NZLWP_1.xml"/&gt;
        &lt;docinfo:metaitem name="parent-docid" value="NZLWP_1_00001"/&gt;
        &lt;docinfo:metaitem name="parent-filename" value="NZLWP_150.xml"/&gt;
    &lt;/docinfo:lbu-meta&gt;
    &lt;docinfo:load-date&gt;
        &lt;date day="01" month="01" year="2006"&gt;01 January 2006&lt;/date&gt;
    &lt;/docinfo:load-date&gt;
&lt;/docinfo&gt;
&lt;dict:body&gt;
    &lt;dict:term-entry&gt;
        &lt;defterm&gt;10% bonus&lt;/defterm&gt;
        &lt;dict:definition&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;ci:cite searchtype="LEG-REF"&gt;
                        &lt;ci:content&gt;
                            &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                                &lt;remotelink
                                    dpsi="0069" 
                                    refpt="2011A62" 
                                    remotekey1="REFPTID"
                                    service="DOC-ID"&gt;
                                        Student Loan Scheme Act 2011
                                &lt;/remotelink&gt;
                                &lt;remotelink 
                                    dpsi="0069" 
                                    refpt="2011A62S118" 
                                    remotekey1="REFPTID"
                                    service="DOC-ID"&gt;
                                        s 118
                                &lt;/remotelink&gt;
                            &lt;/citefragment&gt;
                       &lt;/ci:content&gt;
                    &lt;/ci:cite&gt;
               &lt;/text&gt;
            &lt;/p&gt;
        &lt;/dict:definition&gt;
    &lt;/dict:term-entry&gt;
&lt;/dict:body&gt;

      </codeblock>
        </example>
        <example>
            <title>Target XML - New Zealand content</title>
            <codeblock>


&lt;dict:head/&gt;        
    &lt;dict:body&gt;
        &lt;dict:defitem&gt;
            &lt;tei:entry&gt;
                &lt;tei:form&gt;                                    
                    &lt;tei:orth norm="2003 tax year"&gt;10% bonus&lt;/tei:orth&gt;
                &lt;/tei:form&gt;
                &lt;tei:def&gt;
                &lt;pgrp&gt;
                   	&lt;p&gt;
                        &lt;text&gt;
                           &lt;lnci:cite&gt;
                               &lt;lnci:content&gt;
                                   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                       &lt;ref:content&gt;Student Loan Scheme Act 2011&lt;/ref:content&gt;
                                       &lt;ref:locator anchoridref="2011A62"&gt;
                                           &lt;ref:locator-key&gt;
                                               &lt;ref:key-name name="DOC-ID"/&gt;
                                               &lt;ref:key-value value="0069"/&gt;
                                           &lt;/ref:locator-key&gt;
                                       &lt;/ref:locator&gt;
                                   &lt;/ref:crossreference&gt;
                                   &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                                       &lt;ref:content&gt;s 118&lt;/ref:content&gt;
                                       &lt;ref:locator anchoridref="2011A62S118"&gt;
                                           &lt;ref:locator-key&gt;
                                               &lt;ref:key-name name="DOC-ID"/&gt;
                                               &lt;ref:key-value value="0069"/&gt;
                                           &lt;/ref:locator-key&gt;
                                       &lt;/ref:locator&gt;
                                   &lt;/ref:crossreference&gt;
                               &lt;/lnci:content&gt;
                           &lt;/lnci:cite&gt;
                       &lt;/text&gt;            
                   	&lt;/p&gt;
                &lt;/pgrp&gt;                    
                &lt;/tei:def&gt;
            &lt;/tei:entry&gt;
        &lt;/dict:defitem&gt;    
    &lt;/dict:body&gt;
    &lt;doc:metadata&gt;
        &lt;doc:docinfo doc-content-country="en-AU"&gt;
            &lt;dc:metadata&gt;
                &lt;dc:date lnmeta:datetype="load-date"&gt;2006-10-09&lt;/dc:date&gt;
                &lt;dc:title&gt;NZLWP - 1 - 10% bonus&lt;/dc:title&gt;
                &lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;NZLWP_1_00001&lt;/dc:identifier&gt;
            &lt;/dc:metadata&gt;
            &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
                &lt;meta&gt;
                    &lt;metaitem name="partitionnum" value="1"/&gt;
                    &lt;metaitem name="lbu-sourcename" value="New Zealand Legal Words and Phrases"/&gt;
                    &lt;metaitem name="parent-docid" value="NZLWP_1"/&gt;
                    &lt;metaitem name="parent-filename" value="NZLWP_1.xml"/&gt;
                    &lt;metaitem name="parent-docid" value="NZLWP_1_00001"/&gt;
                    &lt;metaitem name="parent-filename" value="NZLWP_150.xml"/&gt;
                &lt;/meta&gt;
            &lt;/doc:legacy-metadata&gt;
            &lt;doc:hier&gt;
                &lt;doc:hierlev&gt;
                    &lt;heading&gt;&lt;title&gt;1&lt;/title&gt;&lt;/heading&gt;
                    &lt;doc:hierlev&gt;
                        &lt;heading&gt;&lt;title&gt;10% bonus&lt;/title&gt;&lt;/heading&gt;
                    &lt;/doc:hierlev&gt;
                &lt;/doc:hierlev&gt;
            &lt;/doc:hier&gt;
            &lt;doc:bookseqnum&gt;10000000&lt;/doc:bookseqnum&gt;
        &lt;/doc:docinfo&gt;
    &lt;/doc:metadata&gt;

	</codeblock>
        </example>
        <example>
            <title>Source XML - <sourcexml>dict:term-entry</sourcexml> with multiple
                    <sourcexml>dict:subtopic/dict:topicname</sourcexml></title>
            <codeblock>

&lt;dict:term-entry&gt;
   &lt;defterm&gt;
    &lt;refpt 
        id="BENEFICIAL-INTEREST" 
        type="ext"/&gt; Beneficial interest
   &lt;/defterm&gt;
   &lt;dict:definition&gt;
    &lt;p&gt;
     &lt;text&gt;&lt;ci:cite searchtype="LEG-REF"&gt;
       &lt;ci:content&gt;
        &lt;citefragment searchtype="LEG-NAME-REF"&gt;
            (SA) Stamp Duties Act 1923 No 1569 s 2
        &lt;/citefragment&gt;
       &lt;/ci:content&gt;
      &lt;/ci:cite&gt;
     &lt;/text&gt;
    &lt;/p&gt;
   &lt;/dict:definition&gt;
   &lt;dict:definition&gt;
    &lt;p&gt;
     &lt;text&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                    (SA) Public Corporations Act 1993 s 3
                &lt;/citefragment&gt;
       &lt;/ci:content&gt;
      &lt;/ci:cite&gt;
     &lt;/text&gt;
    &lt;/p&gt;
   &lt;/dict:definition&gt;
   &lt;dict:definition&gt;
    &lt;p&gt;
     &lt;text&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                    (TAS) Government Business Enterprises Act 1995 s 3(1)
                &lt;/citefragment&gt;
       &lt;/ci:content&gt;
      &lt;/ci:cite&gt;
     &lt;/text&gt;
    &lt;/p&gt;
   &lt;/dict:definition&gt;
   &lt;dict:definition&gt;
    &lt;dict:subtopic&gt;
     &lt;dict:topicname&gt;(in land)&lt;/dict:topicname&gt;
     &lt;p&gt;
      &lt;text&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                    (WA) Land Act 1933 s 115A
                &lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref 
                    ID="cr002660" 
                    spanref="cr002660-001" 
                    status="unval"&gt;
                    &lt;ci:reporter value="WAR"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="1972"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="98"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-NAME-REF"&gt;
                &lt;emph typestyle="it"&gt;Lady Vestey (dec'd) v Minister for Lands&lt;/emph&gt;
            &lt;/citefragment&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;
               &lt;ci:span spanid="cr002660-001" status="unval"&gt;
                [1972] WAR 98
               &lt;/ci:span&gt;
            &lt;/citefragment&gt;
        &lt;/ci:content&gt;
       &lt;/ci:cite&gt;
      &lt;/text&gt;
     &lt;/p&gt;
    &lt;/dict:subtopic&gt;
   &lt;/dict:definition&gt;
   &lt;dict:definition&gt;
    &lt;dict:subtopic&gt;
     &lt;dict:topicname&gt;(in licence)&lt;/dict:topicname&gt;
     &lt;p&gt;
      &lt;text&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                    (NSW) Liquor Act 1912 s 41
                &lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseinfo&gt;
                    &lt;ci:decisiondate year="1931"/&gt;
                &lt;/ci:caseinfo&gt;
                &lt;ci:caseref 
                    ID="cr002661" 
                    spanref="cr002661-001" 
                    status="unval"&gt;
                        &lt;ci:reporter value="CLR"/&gt;
                        &lt;ci:volume num="45"/&gt;
                        &lt;ci:page num="68"/&gt;
                &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-NAME-REF"&gt;
                &lt;emph typestyle="it"&gt;Slatter v Railway Cmrs (NSW)&lt;/emph&gt;
            &lt;/citefragment&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;
                &lt;ci:span spanid="cr002661-001" status="unval"&gt;
                    (1931) 45 CLR 68
                &lt;/ci:span&gt;
            &lt;/citefragment&gt;
        &lt;/ci:content&gt;
       &lt;/ci:cite&gt;
      &lt;/text&gt;
     &lt;/p&gt;
    &lt;/dict:subtopic&gt;
   &lt;/dict:definition&gt;
   &lt;dict:definition&gt;
    &lt;dict:subtopic&gt;
     &lt;dict:topicname&gt;(in property)&lt;/dict:topicname&gt;
     &lt;p&gt;
      &lt;text&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="LEG-NAME-REF"&gt;
                    (SA) Local Government Act 1999 No 62 Sch 3 cl 1(1)
                &lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/text&gt;
     &lt;/p&gt;
    &lt;/dict:subtopic&gt;
   &lt;/dict:definition&gt;
   ...
  &lt;/dict:term-entry&gt;

      </codeblock>
        </example>
        <example>
            <title>Target XML - <sourcexml>dict:term-entry</sourcexml> with multiple
                    <sourcexml>dict:subtopic/dict:topicname</sourcexml></title>
            <codeblock>

&lt;dict:defitem&gt;
            &lt;tei:superEntry&gt;
                &lt;tei:entry&gt;
                    &lt;tei:form&gt;
                        &lt;tei:orth&gt;
                            &lt;ref:anchor id="BENEFICIAL-INTEREST" anchortype="global"/&gt; Beneficial
                            interest&lt;/tei:orth&gt;
                    &lt;/tei:form&gt;
                    &lt;tei:def&gt;
                        &lt;pgrp&gt;
                            &lt;p&gt;
                                &lt;text&gt;
                                    &lt;lnci:cite&gt;
                                        &lt;lnci:content&gt; (SA) Stamp Duties Act 1923 No 1569 s 2
                                        &lt;/lnci:content&gt;
                                    &lt;/lnci:cite&gt;
                                &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/pgrp&gt;
                    &lt;/tei:def&gt;
                    &lt;tei:def&gt;
                        &lt;pgrp&gt;
                            &lt;p&gt;
                                &lt;text&gt;&lt;lnci:cite&gt;
                                        &lt;lnci:content&gt; (SA) Public Corporations Act 1993 s 3
                                        &lt;/lnci:content&gt;
                                    &lt;/lnci:cite&gt;&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/pgrp&gt;
                    &lt;/tei:def&gt;
                    &lt;tei:def&gt;
                        &lt;pgrp&gt;
                            &lt;p&gt;
                                &lt;text&gt;&lt;lnci:cite&gt;
                                        &lt;lnci:content&gt; (TAS) Government Business Enterprises Act
                                            1995 s 3(1) &lt;/lnci:content&gt;
                                    &lt;/lnci:cite&gt;&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/pgrp&gt;
                    &lt;/tei:def&gt;
                &lt;/tei:entry&gt;
                &lt;tei:entry&gt;
                    &lt;tei:usg type="dom"&gt;(in land)&lt;/tei:usg&gt;
                    &lt;tei:def&gt;
                        &lt;pgrp&gt;
                            &lt;p&gt;
                                &lt;text&gt;(WA) Land Act 1933 s 115A &lt;lnci:cite&gt;
                                        &lt;lnci:case&gt;
                                            &lt;lnci:caseref&gt;
                                                &lt;lnci:reporter value="WAR"/&gt;
                                                &lt;lnci:edition&gt;
                                                  &lt;lnci:date year="1972"/&gt;
                                                &lt;/lnci:edition&gt;
                                                &lt;lnci:page num="98"/&gt;
                                            &lt;/lnci:caseref&gt;
                                        &lt;/lnci:case&gt;
                                    &lt;/lnci:cite&gt;&lt;emph typestyle="it"&gt;Lady Vestey (dec'd) v Minister
                                        for Lands&lt;/emph&gt; [1972] WAR 98&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/pgrp&gt;
                    &lt;/tei:def&gt;
                &lt;/tei:entry&gt;
                &lt;tei:entry&gt;
                    &lt;tei:usg type="dom"&gt;(in licence)&lt;/tei:usg&gt;
                    &lt;tei:def&gt;
                        &lt;pgrp&gt;
                            &lt;p&gt;
                                &lt;text&gt;(NSW) Liquor Act 1912 s 41&lt;lnci:cite&gt;
                                        &lt;lnci:case&gt;
                                            &lt;lnci:caseinfo&gt;
                                                &lt;lnci:decisiondate year="1931"/&gt;
                                            &lt;/lnci:caseinfo&gt;
                                            &lt;lnci:caseref&gt;
                                                &lt;lnci:reporter value="CLR"/&gt;
                                                &lt;lnci:volume num="45"/&gt;
                                                &lt;lnci:page num="68"/&gt;
                                            &lt;/lnci:caseref&gt;
                                        &lt;/lnci:case&gt;
                                    &lt;/lnci:cite&gt;&lt;emph typestyle="it"&gt;Slatter v Railway Cmrs
                                        (NSW)&lt;/emph&gt; (1931) 45 CLR 68&lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/pgrp&gt;
                    &lt;/tei:def&gt;
                &lt;/tei:entry&gt;
                &lt;tei:entry&gt;
                    &lt;tei:usg type="dom"&gt;(in property)&lt;/tei:usg&gt;
                    &lt;tei:def&gt;
                        &lt;pgrp&gt;
                            &lt;p&gt;
                                &lt;text&gt;
                                    &lt;lnci:cite&gt;
                                        &lt;lnci:content&gt;(SA) Local Government Act 1999 No 62 Sch 3 cl
                                            1(1)&lt;/lnci:content&gt;
                                    &lt;/lnci:cite&gt;
                                &lt;/text&gt;
                            &lt;/p&gt;
                        &lt;/pgrp&gt;
                    &lt;/tei:def&gt;
                &lt;/tei:entry&gt;
                ...
            &lt;/tei:superEntry&gt;
        &lt;/dict:defitem&gt;

	</codeblock>
        </example>
        <example>
            <title>Source XML - <sourcexml>dict:definition/see</sourcexml></title>
            <codeblock>

&lt;dict:term-entry&gt;
    &lt;defterm&gt;&lt;refpt id="CMS" type="ext"/&gt; CMS&lt;/defterm&gt;
    &lt;dict:definition&gt;
        &lt;see&gt;
            &lt;remotelink dpsi="0033" 
                refpt="CENTRALISED_MONITORING_SYSTEM"
                remotekey1="REFPTID" service="DOC-ID" status="unval"&gt;
                Centralised monitoring
                system
             &lt;/remotelink&gt;
        &lt;/see&gt;
    &lt;/dict:definition&gt;
&lt;/dict:term-entry&gt;

      </codeblock>
        </example>
        <example>
            <title>Target XML - <sourcexml>dict:definition/see</sourcexml></title>
            <codeblock>

&lt;dict:defitem&gt;
    &lt;tei:entry&gt;
        &lt;tei:form&gt;
            &lt;tei:orth norm="unmanaged reserve"&gt;
                &lt;ref:anchor id="CMS" anchortype="global"/&gt;CMS&lt;/tei:orth&gt;
        &lt;/tei:form&gt;
        &lt;tei:def&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:crossreference crossreferencetype="seeInstead"&gt;
                            &lt;ref:content&gt; Centralised monitoring system &lt;/ref:content&gt;
                            &lt;ref:locator anchoridref="CENTRALISED_MONITORING_SYSTEM"&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="DOC-ID"/&gt;
                                    &lt;ref:key-value value="0034"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:crossreference&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/tei:def&gt;
    &lt;/tei:entry&gt;
&lt;/dict:defitem&gt;


      </codeblock>
        </example>
        <example>
            <title><sourcexml>remotelink</sourcexml> example</title>
            <codeblock>

&lt;defterm&gt;
  &lt;refpt id="BENEFICIAL-OWNER" type="ext" /&gt;
    &lt;remotelink dpsi="0033" refpt="BENEFICIAL_OWNER" remotekey1="REFPTID" service="DOC-ID" status="unval"&gt;beneficial owner&lt;/remotelink&gt;
&lt;/defterm&gt;

Becomes:

&lt;tei:entry&gt;
  &lt;tei:form&gt;
	&lt;tei:orth&gt;
	  &lt;ref:anchor id="BENEFICIAL-OWNER"/&gt;
	  &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
		&lt;ref:content&gt;beneficial owner&lt;/ref:content&gt;
		&lt;ref:locator
		  anchoridref="BENEFICIAL_OWNER"&gt;
		  &lt;ref:locator-key&gt;
			&lt;ref:key-name name="DOC-ID"/&gt;
			&lt;ref:key-value value="0033-BENEFICIAL_OWNER"/&gt;
		  &lt;/ref:locator-key&gt;
		&lt;/ref:locator&gt;
	  &lt;/ref:crossreference&gt;             
	&lt;/tei:orth&gt;
  &lt;/tei:form&gt;
&lt;/tei:entry&gt;

      </codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2013-10-23: <ph id="change_20131023_jm">Not a rule change. Further refinement to sync
                    narrative and examples for condition <sourcexml>see</sourcexml> as direct child
                    of <sourcexml>dict:definition</sourcexml>. Condition is present in example
                    headed <sourcexml>dict:definition/see</sourcexml> and target is updated,
                    changing <targetxml>tei:def/text</targetxml> to
                        <targetxml>tei:def/pgrp/p/text</targetxml>. As a related change, fixed
                    Example-3 which contains <sourcexml>see</sourcexml> as child of
                        <sourcexml>dict:subtopic</sourcexml>, changing target from
                        <targetxml>tei:def/pgrp/p/text</targetxml> to <targetxml>tei:re</targetxml>
                    to sync with narrative rules. Refer R4.5 Post Iterative Item 571.</ph></p>
            <p>2013-10-23: <ph id="change_20131023_jhm">Fixed typo in Case-1 description. July update
                    changed word "multiple" to "1 or more". Should have been "2 or more". Now
                    corrected. Not a webteam or discussion board item. Believe coding not affected,
                    i.e. ConvEng correctly continued to apply "multiple" concept for Case-2, based
                    on issue described in R4.5 Post Iterative Item 571.</ph></p>
            <p>2013-10-14: <ph id="change_20131014_jm">Modified narrative for
                        <sourcexml>dict:definition</sourcexml>, Case-1, child
                        <sourcexml>see</sourcexml>. Target formerly stated as
                        <targetxml>text</targetxml>. Now clarified as
                        <targetxml>pgrp/p/text</targetxml> to match Example 3. Reference R4.5 Post
                    Iterative Item 571.</ph></p>
            <p>2013-10-04: <ph id="change_20131004B_dictionary-Body_sp">Corrected "Target XML 3"
                    example to include <targetxml>pgrp/p</targetxml>.</ph></p>
            <p>2013-10-04: <ph id="change_20131004_dictionary-Body_sp">Note to also include any
                    descendant PCDATA of <sourcexml>defterm</sourcexml> such as
                        <sourcexml>remotelink</sourcexml> and added example. Webteam
                #238175.</ph></p>
            <p>2013-09-30: <ph id="change_20130930_dictionary-Body_sp">Added instruction to suppress
                        <sourcexml>dict:topicname</sourcexml> when it is empty.</ph></p> 
            <p>2013-07-26: <ph id="change_20130726_raj">Changed mapping for
                        <sourcexml>dict:definition</sourcexml>. Revised body instructions for
                    clarity.</ph></p>
            <p>2012-11-28: <ph id="change_20121128_xx2">Added instructions and examples for processing
                <sourcexml>dict:definition/p</sourcexml>.</ph></p>
            <p>2012-11-28: <ph id="change_20121128_xx1">Added instructions for when to add <targetxml>text</targetxml> under
                <targetxml>tei:def</targetxml>.</ph></p>
            <p>2012-10-12: <ph id="change_20121012_xx">Added instructions for handling
                    <sourcexml>dict:definition/see</sourcexml> and
                    <sourcexml>dict:subtopic/p</sourcexml>. Added example for
                <sourcexml>dict:definition/see</sourcexml> instruction.</ph></p>
        </section>
    </body>
	</dita:topic>

	<xsl:template match="source_dict:body"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  dict:body   -->
		<dict:body>
			<xsl:apply-templates select="@* | node()"/>
		</dict:body>

	</xsl:template>

    <!-- Case #1 -->
    <xsl:template match="source_dict:term-entry[(count(source_dict:definition) = 1)]">
        <dict:defitem>           
            <tei:entry>            
                <xsl:apply-templates select="defterm"/>
                <xsl:apply-templates select="node() except(defterm)"/>
            </tei:entry>
            
        </dict:defitem>
    </xsl:template>

    <!-- Case #2 -->
    <xsl:template match="source_dict:term-entry[count(source_dict:definition) &gt; 1]">
        <dict:defitem>
            <tei:superEntry>
                
                <xsl:apply-templates select="defterm"/>
                <xsl:apply-templates select="node() except(defterm)"/>    
                
            </tei:superEntry>
        </dict:defitem>
    </xsl:template>
    
    <xsl:template match="defterm[count(following-sibling::source_dict:definition) &gt; 1]">
        <tei:entry>
            <tei:form>
                <tei:orth>
                    <xsl:attribute name="norm" select="lower-case(translate(., '&#xA;', ''))"/>
                    <xsl:apply-templates select="@* | node()"/>
                </tei:orth>
            </tei:form>
        </tei:entry>
    </xsl:template>

    <xsl:template match="defterm[count(following-sibling::source_dict:definition) = 1]">
            <tei:form>
                <tei:orth>
                    <xsl:attribute name="norm" select="lower-case(translate(., '&#xA;', ''))"/>
                    <xsl:apply-templates select="@* | node()"/>
                </tei:orth>
            </tei:form>
        
    </xsl:template>
    
    <xsl:template match="source_dict:definition[not(element() and not(text()))]"/>
    
    <xsl:template match="source_dict:definition[not(source_dict:subtopic) and (following-sibling::source_dict:definition|preceding-sibling::source_dict:definition)]" priority="35">
        <tei:entry>
                <xsl:apply-templates select="@* | node()"/>            
        </tei:entry>
    </xsl:template>
    
    <xsl:template match="source_dict:definition[source_dict:subtopic or not(following-sibling::source_dict:definition)]" priority="25">
            <xsl:apply-templates select="@* | node()"/>                    
    </xsl:template>
    
    <xsl:template match="p[parent::source_dict:definition]">
        <tei:def>
            <pgrp>
                <p>
                    <xsl:apply-templates select="@* | node()"/>
                </p>
                <xsl:for-each select="following-sibling::p">
                    <p>
                        <xsl:apply-templates select="@* | node()"/>
                    </p>
                </xsl:for-each>
            </pgrp>
        </tei:def>
    </xsl:template>
    
    <xsl:template match="source_dict:definition/p[preceding-sibling::p]"/>
    
    <xsl:template match="p[*[1][normalize-space(self::text) = ''] and not(element()[2])]" priority="2"/>
    
    <xsl:template match="source_dict:subtopic">
       <xsl:apply-templates select="@* | node()"/>  
    </xsl:template>
        
    
    <xsl:template match="source_dict:topicname">
        <tei:entry>
            <tei:usg type='dom'>
                <xsl:apply-templates select="@* | node()"/>  
            </tei:usg>
        </tei:entry>
    </xsl:template>
    
    
    
    <xsl:template match="source_dict:term-entry[count(descendant::source_dict:subtopic) &gt; 1]/source_dict:definition/source_dict:subtopic/p">
        <tei:entry>
            <tei:def>
                <pgrp>
                    <p>
                        <xsl:apply-templates select="@* | node()"/>
                    </p>
                </pgrp>
            </tei:def>
        </tei:entry>
    </xsl:template>
    
    <xsl:template match="source_dict:synonym">
        <tei:usg type='syn'>
            <xsl:apply-templates select="@* | node()"/>
        </tei:usg>
    </xsl:template>
    
    <xsl:template match="source_dict:abbreviation">
        <abbrevname>
            <xsl:apply-templates select="@* | node()"/>
        </abbrevname>
    </xsl:template>
    
    <xsl:template match="see">
        <tei:re type='see'>
            <xsl:apply-templates select="@* | node()"/>
        </tei:re>
    </xsl:template>
    
    <xsl:template match="see-also">
        <tei:re type='see-also'>
            <xsl:apply-templates select="@* | node()"/>
        </tei:re>
    </xsl:template>
    
    <!-- MDS 2017-07-06 - Added to suppress exception -->
    <xsl:template match="ci:cite/ci:content/citefragment/ci:span/remotelink/inlineobject"/>
    
</xsl:stylesheet>