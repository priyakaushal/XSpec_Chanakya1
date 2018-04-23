<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:ci="http://www.lexis-nexis.com/ci"
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
  xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita ci docinfo source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.assoc-links-to-LexisAdvance_doc.related-content">
  <title><sourcexml>docinfo:assoc-links</sourcexml> to <targetxml>doc:related-content</targetxml>
    <lnpid>id-CCCC-10284</lnpid></title>
  <body>
    <section>
      <title>Instructions <i>[common element]</i></title>
      <note>This topic is used in numerous conversion instructions for several LBUs. It is a shared
        topic rather than duplicated to ensure consistency and accuracy. The xml snippets contained
        in this topic reflect markup needed for the Apollo image handling application. The UK is the
        first LBU to move from Apollo to the Blobstore application for image handling. Therefore, if
        this is a UK conversion instruction document, please refer to the following topics for
        correct image handling markup.<ul>
          <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
              <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
            (id-CCCC-10542)</li>
          <li><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml> for
            BLOBSTORE images (id-CCCC-10540)</li>
          <li><sourcexml>link[@filename]</sourcexml> to
              <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images
            (id-CCCC-10541)</li>
        </ul></note>
      <p><sourcexml>docinfo:assoc-links</sourcexml> becomes
          <targetxml>doc:related-content</targetxml>. Attribute
          <sourcexml>@assoc-content</sourcexml> is suppressed.</p>
      <p><sourcexml>docinfo:assoc-links-grp</sourcexml> becomes
          <targetxml>doc:related-content-grp</targetxml>, and its descendents are processed as
        follows: <ul>
          <li>If present, <sourcexml>docinfo:assoc-resource</sourcexml> becomes
              <targetxml>ref:relatedresourceref/ref:relatedresourceid</targetxml>. Copy the value of
              <sourcexml>@assoc-resourceid</sourcexml> to
            <targetxml>@ref:resourcekey</targetxml></li>
          <li>The target value of <targetxml>doc:related-content-grp/@grptype</targetxml> depends on
            the existing attrribute in the source: <ul>
              <li>If <sourcexml>docinfo:assoc-links-grp/@assoc-content</sourcexml> exists, it
                becomes <targetxml>@grptype</targetxml>.</li>
              <li>Otherwise, <sourcexml>docinfo:assoc-links-grp/@display-name</sourcexml> becomes
                  <targetxml>@grptype</targetxml>.</li>
            </ul></li>
          <li><sourcexml>heading/title</sourcexml> becomes
            <targetxml>heading/title</targetxml>.</li>
        </ul></p>
      <p>The children below may occur within either level,
          <sourcexml>docinfo:assoc-links</sourcexml> or
          <sourcexml>docinfo:assoc-links-grp</sourcexml>, and convert as follows:</p>
      <p>
        <ul>
          <li>With one exception, <sourcexml>text</sourcexml> becomes
              <targetxml>doc:related-content-item/doc:related-content-desc/p/text</targetxml>. The
            exception to this rule is if and only if the only children of
              <sourcexml>text</sourcexml> are one or more <sourcexml>link</sourcexml> elements; in
            this case see the rule for <sourcexml>link</sourcexml> below and example #4.</li>
          <li><p><sourcexml>link</sourcexml> becomes
                <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="ATTACHMENT"]</targetxml>.</p>
            <p>In addtion to this conversion being performed if the <sourcexml>link</sourcexml>
              element is a child of <sourcexml>docinfo:assoc-links</sourcexml> or
                <sourcexml>docinfo:assoc-links-grp</sourcexml>, it is also done when the only
              children of <sourcexml>text</sourcexml> are one or more
              <sourcexml>link</sourcexml>elements. That is, if and only if <b>all</b> of a
                <sourcexml>text/link</sourcexml> element's other siblings are also
                <sourcexml>link</sourcexml> elements. In the <sourcexml>text</sourcexml> scenario,
              the start-tag and end-tag (but not the content) of <sourcexml>text</sourcexml> are
              dropped (see example #4). If there are multiple <sourcexml>link</sourcexml> elements,
              then multiple <targetxml>doc:related-content-item</targetxml> and children are
              created, one for each <sourcexml>link</sourcexml> element.</p>
            <p>For details about converting <sourcexml>link</sourcexml> to
                <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> see
                <sourcexml>link</sourcexml> rules in the General Markup section.</p></li>
          <li><sourcexml>remotelink[@service="QUERY"]</sourcexml> is suppressed. If nothing else is
            present then also suppress the parent. <note><p><b>This Note is applicable to CA03, and
                  CA05-CA08 only</b> If we have XPath
                  <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> or
                  <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>then we
                don't need to suppress it from target but in certain condition for that
                stream-wise.</p>
              <ul>
                <li><b>For CA06 and CA07</b> If document is having
                    <sourcexml>remotelink[@service="QUERY"]</sourcexml> under the
                    <sourcexml>docinfo:assoc-links-grp[assoc-content="enabling"] </sourcexml>and
                    <sourcexml>remotelink</sourcexml> comes with attributes
                    <sourcexml>@remotekey1</sourcexml> with the start value <b>"DOCINFO(XXXX)"</b>
                  and <sourcexml>@remotekey2</sourcexml> comes with value <b>All Canadian
                    Statutes</b> then it should be mapped with
                    <targetxml>doc:related-content/doc:related-content-grp/doc:related-content-item[@content-type="enablingLeg"]/ref:relatedresourceref/ref:relatedresourceid/ref:resourcekey="urn:leg-id-1:XXXX"</targetxml>
                  where <b>XXXX</b> will be taken from source attribute
                    <sourcexml>remotekey1</sourcexml> Refer Example 7.</li>
                <li><b>For CA05 and CA08</b> If document is having
                    <sourcexml>remotelink[@service="QUERY"]</sourcexml> under the
                    <sourcexml>docinfo:assoc-links</sourcexml> or
                    <sourcexml>docinfo:assoc-links-grp</sourcexml> and
                    <sourcexml>remotelink</sourcexml> comes with attributes
                    <sourcexml>@remotekey2="All Canadian Regulations"</sourcexml> then it should be
                  mapped with
                    <targetxml>doc:related-content/doc:related-content-grp[@grptype="subordinateLeg"]/doc:related-content-item[@content-type="subordinateLeg"]/ref:relatedresourceref/ref:relatedresourceid/ref:resourcekey="urn:leg-id-1:XXXX"</targetxml>
                  where <b>XXXX</b> will be taken from source attribute
                    <sourcexml>remotekey1</sourcexml> Refer Example 8.</li>
                <li><b>For CA05 - CA08</b> Conversion Needs to split multiple <b>ORs</b> into a
                  separate <targetxml>doc:related-content-item</targetxml>. Refer <b>Example 9</b>
                  for CA06-CA07 streams. </li>
                <li><b>For CA06 and CA07</b>
                  <sourcexml>docinfo:assoc-links-grp/@assoc-content="enabling"</sourcexml> should
                  map with <targetxml>doc:related-content-grp/@grptype="enablingLeg"</targetxml>.
                  Any heading found inside
                    "<sourcexml>docinfo:assoc-links-grp/remotelink</sourcexml>" then it should be
                  mapped with <targetxml>@doc:related-content-grp/heading/title</targetxml>. Refer
                  Example 9.</li>
                <li><b>For CA03</b> If document is having
                    <sourcexml>remotelink[@service="QUERY"]</sourcexml> and
                    <sourcexml>remotelink</sourcexml> comes with attributes
                    <sourcexml>@remotekey1</sourcexml> with the value <b>"REFNUM(XXXX)"</b> and
                    <sourcexml>@remotekey2</sourcexml> contains <b>"All Canadian Summaries"</b> then
                  it should be mapped with
                    <targetxml>doc:related-content/doc:related-content-grp/doc:related-content-item[@content-type="caseSummaries"]/ref:relatedresourceref/ref:relatedresourceid/ref:resourcekey="urn:ucn-1:XXXX"</targetxml>
                  where <b>XXXX</b> will be taken from source attribute
                    <sourcexml>remotekey1</sourcexml>. Any bilingual headings should be retained
                  along with their associated <targetxml>@xml:lang</targetxml>. Refer Example 10.
                </li>
              </ul></note>
          </li>
          <li><sourcexml>remotelink[@service="DOC-ID"]</sourcexml> becomes
              <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="DOCUMENT"]</targetxml>.
            If the parent <sourcexml>docinfo:assoc-links</sourcexml> contains
              <sourcexml>@assoc-content="external-content-location"</sourcexml>, then add
              <targetxml>@content-type="external-content-location"]</targetxml> to
              <targetxml>doc:related-content-item</targetxml>. Create the following child elements: <ul>
              <li>Create <targetxml>ref:marker</targetxml> to capture the PCDATA of
                  <sourcexml>remotelink</sourcexml>.</li>
              <li>Create <targetxml>ref:locator</targetxml> and populate it as follows: <ul>
                  <li>Create <targetxml>ref:locator-key</targetxml> and populate it as follows: <ul>
                      <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                          <li><targetxml>ref:key-name/@name</targetxml> will have the value
                            "DOC-ID".</li>
                          <li><targetxml>key-value/@value</targetxml> will be the value of
                              <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                              <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                            which ever is present (if both are present, use
                              <sourcexml>@remotekey2</sourcexml>).</li>
                        </ul>
                      </li>
                      <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                          <li><targetxml>ref:key-name/@name</targetxml> will have the value
                            "DOC-ID".</li>
                          <li><targetxml>ref:key-value/@value</targetxml> will be the value of
                              <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                              <sourcexml>@docidref</sourcexml>.</li>
                          <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from
                              <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                            which ever is present (if both are present, use
                            <sourcexml>@refpt</sourcexml>).</li>
                        </ul>
                      </li>
                    </ul></li>
                </ul>
                <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from
                    <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU
                  manifest file.</note>
                <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must
                  have an underscore added at start. Also apply other identifier data type format as
                  used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>
                  (e.g. change colon to underscore). Refer to the section titled "Identifiers to ID Data Type - 
                  Handling Pattern Restrictions", if that section exists in this CI.</note>
              </li>
            </ul>
          </li>
          <li><sourcexml>remotelink[@href]</sourcexml> becomes
              <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="URL"]</targetxml>.
            If the parent <sourcexml>docinfo:assoc-links</sourcexml> contains
              <sourcexml>@assoc-content="external-content-location"</sourcexml>, then add
              <targetxml>@content-type="external-content-location"]</targetxml> to
              <targetxml>doc:related-content-item</targetxml>. <p>For details on converting
                <sourcexml>remotelink[@href]</sourcexml> to <targetxml>ref:lnlink</targetxml> see
                <sourcexml>remotelink</sourcexml> rules in General Markup section.</p>
          </li>
          <li><p><sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> becomes
                <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink</targetxml>
              which is populated as follows: <ul>
                <li><sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> becomes
                    <targetxml>ref:lnlink[@service="QUERYLINK"]</targetxml></li>
                <li><sourcexml>lnlink/marker</sourcexml> becomes
                    <targetxml>ref:lnlink/ref:marker</targetxml></li>
                <li>Create <targetxml>ref:locator</targetxml> and populate it as follows: <ul>
                    <li>Create <targetxml>ref:locator-key</targetxml> and populate it as follows: <ul>
                        <li><sourcexml>lnlink/key-name[@name="queryTemplatePGUID"]</sourcexml>
                          becomes
                            <targetxml>ref:locator/ref:locator-key/ref:key-name[@name="queryTemplatePGUID"].</targetxml></li>
                        <li><sourcexml>lnlink/key-value/@value</sourcexml> becomes
                            <targetxml>ref:locator/ref:locator-key/ref:key-value/@value</targetxml></li>
                      </ul>
                    </li>
                    <li><sourcexml>lnlink/api-params</sourcexml> becomes
                        <targetxml>ref:locator/ref:locator-params</targetxml>, and the children are
                      mapped as follows: <ul>
                        <li>For each <sourcexml>api-params/param</sourcexml> element, create a
                          corresponding <targetxml>proc:param</targetxml> and populate the
                          attributes: <ul>
                            <li><sourcexml>param/@name</sourcexml> becomes
                                <targetxml>proc:param/@name</targetxml></li>
                            <li><sourcexml>param/@value</sourcexml> becomes
                                <targetxml>proc:param/@value</targetxml></li>
                          </ul>
                        </li>
                      </ul></li>
                  </ul>
                </li>
              </ul></p>
          </li>
          <li><p><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> becomes
                <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink</targetxml>
              which is populated as follows: See example 6 for more clarification.<ul>
                <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> becomes
                    <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml></li>
                <li><sourcexml>lnlink/marker</sourcexml> becomes
                    <targetxml>ref:lnlink/ref:marker</targetxml></li>
                <li>Create <targetxml>ref:locator</targetxml> and populate it as follows: <ul>
                    <li>Create <targetxml>ref:locator-key</targetxml> and populate it as follows: <ul>
                        <li><sourcexml>lnlink/api-params/param/@name="attachment-key"</sourcexml>
                          becomes
                            <targetxml>ref:locator/ref:locator-key/ref:key-name/@name="attachment-key"</targetxml>.</li>
                        <li><sourcexml>lnlink/api-params/param/@value</sourcexml> becomes
                            <targetxml>ref:locator/ref:locator-key/ref:key-value/@value</targetxml>
                          <note>Conversion final output will be
                              <targetxml>ref:key-value/@value="{LNI}-{SMI}-{X}"</targetxml> where as
                            {X} is the <sourcexml>lnlink/api-params/param/@value</sourcexml> as
                            described above and prepend {LNI} and {SMI} are not literal values, they
                            show where the LNI and SMI values obtained from CSSM should be output.
                            See the Example 6</note>
                        </li>
                      </ul>
                    </li>
                    <li><sourcexml>lnlink/api-params</sourcexml> becomes
                        <targetxml>ref:locator/ref:locator-params</targetxml>, and the children are
                      mapped as follows: <ul>
                        <li>For each <sourcexml>api-params/param</sourcexml> element, create a
                          corresponding <targetxml>proc:param</targetxml> and populate the
                          attributes: <ul>
                            <li><sourcexml>param/@name</sourcexml> becomes
                                <targetxml>proc:param/@name</targetxml></li>
                            <li><sourcexml>param/@value</sourcexml> becomes
                                <targetxml>proc:param/@value</targetxml></li>
                          </ul>
                          <note>Also create the below markup in the target document while
                            conversion</note>
                          <ul>
                            <li><targetxml>proc:param/@name="attachment-smi"</targetxml> and
                                <targetxml>proc:param/@value="{SMI}"</targetxml>
                              <note>@value populated with SMI obtained from CSSM. This @value
                                assignment is done by conversion program</note>
                            </li>
                          </ul>
                        </li>
                      </ul></li>
                  </ul>
                </li>
              </ul></p>
          </li>
          <li><p><sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> becomes
                <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="TRAVERSE"]</targetxml>.
              If the parent <sourcexml>docinfo:assoc-links</sourcexml> contains
                <sourcexml>@assoc-content="external-content-location"</sourcexml>, then add
                <targetxml>@content-type="external-content-location"]</targetxml> to
                <targetxml>doc:related-content-item</targetxml>.</p>
            <p>For details on converting <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> to
                <targetxml>ref:lnlink[@service="TRAVERSE"] </targetxml> see
                <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> rules in General Markup
              section.</p>
          </li>
          <li><p><sourcexml>lnlink[@service="URL"]</sourcexml> becomes
                <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="URL"]</targetxml>.
              If the parent <sourcexml>docinfo:assoc-links</sourcexml> contains
                <sourcexml>@assoc-content="external-content-location"</sourcexml>, then add
                <targetxml>@content-type="external-content-location"]</targetxml> to
                <targetxml>doc:related-content-item</targetxml>.</p>
            <p>For details on converting <sourcexml>lnlink[@service="URL"]</sourcexml> to
                <targetxml>ref:lnlink[@service="URL"] </targetxml> see
                <sourcexml>lnlink[@service="URL"]</sourcexml> rules in General Markup section.</p>
          </li>
          <li><sourcexml>ci:cite</sourcexml> becomes
              <targetxml>doc:related-content-item/doc:related-content-link/ref:lnlink[@service="TRAVERSE"]</targetxml>.
            If the parent <sourcexml>docinfo:assoc-links</sourcexml> contains
              <sourcexml>@assoc-content="external-content-location"</sourcexml>, then add
              <targetxml>@content-type="external-content-location"]</targetxml> to
              <targetxml>doc:related-content-item</targetxml>. Create the following child elements: <ul>
              <li> Create <targetxml>ref:marker</targetxml> to capture the PCDATA of
                  <sourcexml>ci:cite/ci:content</sourcexml>.</li>
              <li><targetxml>ref:locator/ref:locator-key/ref:key-name/@name</targetxml> will have
                the value "normcite".</li>
              <li><targetxml>ref:locator/ref:locator-key/key-value/@value</targetxml> will be the
                value of <sourcexml>ci:cite/ci:content</sourcexml>.</li>
              <li>Create
                  <targetxml>ref:locator/ref:locator-params/proc:param[@name="normprotocol"]</targetxml>.
                If <sourcexml>ci:cite/@normprotocol</sourcexml> is present, create the attribute
                  <targetxml>proc:param/@value</targetxml> and copy the value of
                  <sourcexml>normprotocol</sourcexml>; otherwise, add
                  <targetxml>@value="lexsee"</targetxml>. This line is hard coded.</li>
              <li>If <sourcexml>docinfo:doc-country/@iso-cc</sourcexml> exists, create
                  <targetxml>ref:locator/ref:locator-params/proc:param[@name="countrycode"]</targetxml>
                with the attribute <targetxml>@value</targetxml>. The <targetxml>@value</targetxml>
                value is from <sourcexml>docinfo:doc-country/@iso-cc</sourcexml>.</li>
            </ul>
          </li>
        </ul>
      </p>
    </section>
    <!-- McNally Apr 3 2014. The following special rule is moved to separate AU-NZ module. Commenting-out for now; can delete when we want -->
    <!--<section>
   <p><b><u>Special Rule for AU and NZ</u></b></p>
   <p>Usual rule is that each rosetta child (<sourcexml>text</sourcexml>,
     <sourcexml>remotelink</sourcexml>, <sourcexml>ci:cite</sourcexml>) maps to its own
     <targetxml>doc:related-content-item</targetxml>, as described above. For AU and NZ streams, a
    special merge is required, as follows: If rosetta linking element
     (<sourcexml>remotelink</sourcexml> or <sourcexml>ci:cite</sourcexml>) is immediately followed
    by <sourcexml>text</sourcexml>, then map the linking element (<sourcexml>remotelink</sourcexml>
    or <sourcexml>ci:cite</sourcexml>) and <sourcexml>text</sourcexml> to a single
     <targetxml>doc:related-content-item</targetxml>. See Example 4.</p>
  </section>-->
    <example>
      <title>Source XML 1</title>
      <codeblock>

&lt;docinfo:assoc-links&gt;
 &lt;remotelink alttext="Find related journals" cmd="f:exp" remotekey1="LEG-REF(Flood and Water Management Act 2010 OR FWMA 2010 w/3 s 48 OR ss 48 OR section 48 OR sections 48) OR &amp;quot;Flood and Water Management Act 2010&amp;quot; OR FWMA 2010 w/3 LEG-REF(s 48 OR ss 48 OR section 48 OR sections 48)" remotekey2="All Subscribed Journals Sources" service="QUERY"&gt;Find related journals&lt;/remotelink&gt;
 &lt;remotelink service="DOC-ID" remotekey1="REFPTID" refpt="786617_SL" dpsi="02o0" docidref="ABC123"&gt;Find related subordinate legislation&lt;/remotelink&gt;
&lt;/docinfo:assoc-links&gt;

            </codeblock>
    </example>

    <example>
      <title>Target XML 1</title>
      <codeblock>

&lt;doc:related-content&gt;
 &lt;doc:related-content-item&gt;
  &lt;doc:related-content-link&gt;
   &lt;ref:lnlink service="DOCUMENT"&gt;
    &lt;ref:marker&gt; Find related subordinate legislation &lt;/ref:marker&gt;
    &lt;ref:locator anchoridref="_786617_SL "&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="DOC-ID"/&gt;
      &lt;ref:key-value value="02o0-ABC123"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;    
   &lt;/ref:lnlink&gt;
  &lt;/doc:related-content-link&gt;
 &lt;/doc:related-content-item&gt;
&lt;/doc:related-content&gt;

            </codeblock>
    </example>

    <example>
      <title>Source XML 2</title>
      <codeblock>

&lt;docinfo:assoc-links assoc-content="related-content-pod"&gt;
 &lt;docinfo:assoc-links-grp assoc-content="related-documents"&gt;
  &lt;heading&gt;
   &lt;title&gt;Related Documents&lt;/title&gt;
  &lt;/heading&gt;
  &lt;remotelink service="DOC-ID" remotekey1="DOC-ID" remotekey2="0ONJ_151450"  dpsi="0ONJ"&gt;Transferring patent rights&lt;/remotelink&gt;
 &lt;/docinfo:assoc-links-grp&gt;
 &lt;docinfo:assoc-links-grp assoc-content="related-legislation"&gt;
  &lt;heading&gt;
   &lt;title&gt;Related Legislation&lt;/title&gt;
  &lt;/heading&gt;
  &lt;text&gt;Primary statute: 
   &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
    &lt;ci:sesslaw&gt;
     &lt;ci:sesslawinfo&gt;
      &lt;ci:sesslawnum num="1977_37a_Title"/&gt;
     &lt;/ci:sesslawinfo&gt;
     &lt;ci:sesslawref&gt;
      &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
     &lt;/ci:sesslawref&gt;
    &lt;/ci:sesslaw&gt;
    &lt;ci:content&gt;Patents Act 1977&lt;/ci:content&gt;
   &lt;/ci:cite&gt;
  &lt;/text&gt;
 &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;

            </codeblock>
    </example>

    <example>
      <title>Target XML 2</title>
      <codeblock>

&lt;doc:related-content&gt;
 &lt;doc:related-content-grp grptype="related-documents"&gt;
  &lt;heading&gt;
   &lt;title&gt;Related Documents&lt;/title&gt;
  &lt;/heading&gt;
  &lt;doc:related-content-item&gt;
   &lt;doc:related-content-link&gt;
    &lt;ref:lnlink service="DOCUMENT"&gt;
     &lt;ref:marker&gt;Transferring patent rights&lt;/ref:marker&gt;
     &lt;ref:locator&gt;
      &lt;ref:locator-key&gt;
       &lt;ref:key-name name="DOC-ID"/&gt;
       &lt;ref:key-value value="0ONJ-0ONJ_151450"/&gt;
      &lt;/ref:locator-key&gt;
     &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;
   &lt;/doc:related-content-link&gt;
  &lt;/doc:related-content-item&gt;
 &lt;/doc:related-content-grp&gt;
 &lt;doc:related-content-grp grptype="related-legislation"&gt;
  &lt;heading&gt;
   &lt;title&gt;Related Legislation&lt;/title&gt;
  &lt;/heading&gt;
  &lt;doc:related-content-item&gt;
   &lt;doc:related-content-desc&gt;
    &lt;p&gt;
     &lt;text&gt;Primary statute: 
      &lt;lnci:cite status="valid"&gt;
       &lt;lnci:sesslaw&gt;
        &lt;lnci:sesslawinfo&gt;
         &lt;lnci:sesslawnum num="1977_37a_Title"/&gt;
        &lt;/lnci:sesslawinfo&gt;
        &lt;lnci:sesslawref&gt;
         &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
        &lt;/lnci:sesslawref&gt;
       &lt;/lnci:sesslaw&gt;
       &lt;lnci:content&gt;Patents Act 1977&lt;/lnci:content&gt;
      &lt;/lnci:cite&gt;
     &lt;/text&gt;
    &lt;/p&gt;
   &lt;/doc:related-content-desc&gt;
  &lt;/doc:related-content-item&gt;
 &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;

            </codeblock>
    </example>
    <!-- McNally Apr 3 2014. Example 3 expanded to include ci:cite.  Done to illustrate general mapping; avoid confusion with separate module for AU-NZ use case.  -->
    <example>
      <title>Source XML 3</title>
      <codeblock>

&lt;docinfo:assoc-links&gt;
 &lt;remotelink alttext="Latest Times Law Reports" href="www.timesonline.co.uk/TGD/lexisDisplay/0,,,00.html" hrefclass="http"&gt;Latest Times Law Reports&lt;/remotelink&gt;
  &lt;ci:cite searchtype="BOOK-REF"&gt;
   &lt;ci:content&gt;Data technologies and patents (2012) 18 MCN 5&lt;/ci:content&gt;
  &lt;/ci:cite&gt;
&lt;/docinfo:assoc-links&gt;

            </codeblock>
    </example>

    <example>
      <title>Target XML 3</title>
      <codeblock>

&lt;doc:related-content&gt;
 &lt;doc:related-content-item&gt;
  &lt;doc:related-content-link&gt;
   &lt;ref:lnlink service="URL"&gt;
    &lt;ref:marker&gt;Latest Times Law Reports&lt;/ref:marker&gt;
    &lt;ref:locator&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="URL"/&gt;
      &lt;ref:key-value value="http://www.timesonline.co.uk/TGD/lexisDisplay/0,,,00.html"/&gt;
     &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:lnlink&gt;
  &lt;/doc:related-content-link&gt;
 &lt;/doc:related-content-item&gt;
 &lt;doc:related-content-item&gt;
  &lt;doc:related-content-link&gt;
   &lt;ref:lnlink service="TRAVERSE"&gt;
    &lt;ref:marker role="label"&gt;Data technologies and patents (2012) 18 MCN 5&lt;/ref:marker&gt;
    &lt;ref:locator&gt;
     &lt;ref:locator-key&gt;
      &lt;ref:key-name name="normcite"/&gt;
      &lt;ref:key-value value="Data technologies and patents (2012) 18 MCN 5"/&gt;
     &lt;/ref:locator-key&gt;
     &lt;ref:locator-params&gt;
      &lt;proc:param name="normprotocol" value="lexsee"/&gt;
      &lt;proc:param name="countrycode" value="GB"/&gt;
     &lt;/ref:locator-params&gt;
    &lt;/ref:locator&gt;
   &lt;/ref:lnlink&gt;
  &lt;/doc:related-content-link&gt;
 &lt;/doc:related-content-item&gt;
&lt;/doc:related-content&gt;

            </codeblock>
    </example>

    <example>
      <title>Source XML 4, showing a <sourcexml>text</sourcexml> element containing only a
          <sourcexml>link</sourcexml> child element</title>
      <codeblock>

&lt;docinfo:assoc-links-grp assoc-content="related-documents"&gt;
  &lt;heading&gt;
    &lt;title&gt;Related documents&lt;/title&gt;
  &lt;/heading&gt;
  &lt;remotelink service="DOC-ID" remotekey1="REFPTID" newwindow="YES" refpt="0OLB_258264"
    dpsi="0OLB" status="invalid" docidref="e60348a7-cc9b-4d43-468b-55a207cd7f00"&gt;Serving the claim form—method, address, deemed service and dispensing with service&lt;/remotelink&gt;
  &lt;text searchtype="figure"&gt;
    &lt;link filename="EXT_DR_List of authorised government departments for service.pdf"
      alttext="EXT_DR_List of authorised government departments for service.pdf" type="pdf"
      &gt;List of authorised government departments for service&lt;/link&gt;
  &lt;/text&gt;
&lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;

     </codeblock>
    </example>

    <example>
      <title>Target XML 4</title>
      <codeblock>

&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="related-documents"&gt;
    &lt;heading&gt;
      &lt;title&gt;Related documents&lt;/title&gt;
    &lt;/heading&gt;
    &lt;doc:related-content-item&gt;
      &lt;doc:related-content-link&gt;
        &lt;ref:lnlink service="DOCUMENT"&gt;
          &lt;ref:marker&gt;Serving the claim form—method, address, deemed service and
    dispensing with service&lt;/ref:marker&gt;
          &lt;ref:locator anchoridref="0OLB_258264"&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="0OLB-e60348a7-cc9b-4d43-468b-55a207cd7f00"/&gt;
            &lt;/ref:locator-key&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;
      &lt;/doc:related-content-link&gt;
    &lt;/doc:related-content-item&gt;
    &lt;doc:related-content-item&gt;
      &lt;doc:related-content-link&gt;
        &lt;ref:lnlink service="ATTACHMENT"&gt;
          &lt;ref:marker role="label"&gt;List of authorised government departments for service&lt;/ref:marker&gt;
          &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="attachment-key"/&gt;
              &lt;ref:key-value value="{LNI}-{SMI}-EXT_DR_List of authorised government departments for service"/&gt;
              &lt;!-- 
                  The {LNI} and {SMI} are not literal values, 
                  they show where the LNI and SMI values 
                  obtained from CSSM should be output. 
              --&gt;
            &lt;/ref:locator-key&gt;
            &lt;ref:locator-params&gt;
              &lt;proc:param name="componentseq" value="1"/&gt;
              &lt;proc:param name="attachment-type" value="PDF"/&gt;
              &lt;proc:param name="attachment-smi" value=""/&gt;
              &lt;!-- proc:param/@value is set to the SMI value obtained from CSSM. --&gt;
              &lt;!-- This @value assignment is done by the conversion program. --&gt;
            &lt;/ref:locator-params&gt;
          &lt;/ref:locator&gt;
        &lt;/ref:lnlink&gt;
      &lt;/doc:related-content-link&gt;
    &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;

     </codeblock>
    </example>

    <example>
      <title>Source XML 5 - <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml></title>
      <codeblock>

&lt;docinfo:assoc-links&gt;
&lt;docinfo:assoc-links-grp display-name="VALUE_PROVIDED_BY_CONTENTEDITOR"&gt;
  &lt;heading&gt;
    &lt;title&gt;Query Links&lt;/title&gt;
  &lt;/heading&gt;
 &lt;lnlink service="QUERYLINK"&gt;
    &lt;key-name name="queryTemplatePGUID"/&gt;
    &lt;key-value value="urn:queryTemplate:1119"/&gt;    
    &lt;marker&gt;Other Tax documents&lt;/marker&gt;
    &lt;api-params&gt;
        &lt;param name="queryParameter1" value="CA $#$ US"/&gt; 
        &lt;param name="queryParameter2" value="MA"/&gt; 
        &lt;param name="queryParameter3" value="-60"/&gt; 
    &lt;/api-params&gt;
&lt;/lnlink&gt;
&lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;

     </codeblock>
    </example>

    <example>
      <title>Target XML 5</title>
      <codeblock>

&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="VALUE_PROVIDED_BY_CONTENTEDITOR"&gt;
    &lt;heading&gt;
      &lt;title&gt;Query Links&lt;/title&gt;
    &lt;/heading&gt;
    &lt;doc:related-content-item&gt;
      &lt;doc:related-content-link&gt;
         &lt;ref:lnlink service="QUERYLINK"&gt;
                &lt;ref:marker&gt;Other Tax documents&lt;/ref:marker&gt;
                &lt;ref:locator&gt;
                  &lt;ref:locator-key&gt;
                    &lt;ref:key-name name="queryTemplatePGUID"/&gt;
                    &lt;ref:key-value value="urn:queryTemplate:1119"/&gt;
                  &lt;/ref:locator-key&gt;
                  &lt;ref:locator-params&gt;
                    &lt;proc:param name="queryParameter1" value="CA $#$ US"/&gt;
                    &lt;proc:param name="queryParameter2" value="MA"/&gt;
                    &lt;proc:param name="queryParameter3" value="-60"/&gt;
                  &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
              &lt;/ref:lnlink&gt;
      &lt;/doc:related-content-link&gt;
    &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;

     </codeblock>
    </example>

    <example>
      <title>Source XML 6 - <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml></title>
      <codeblock>
&lt;docinfo:assoc-links&gt;
    &lt;docinfo:assoc-links-grp assoc-content="related-documents"&gt;
        &lt;heading&gt;
            &lt;title&gt;Related Documents&lt;/title&gt;
        &lt;/heading&gt;
        &lt;lnlink service="ATTACHMENT"&gt;
            &lt;marker&gt;See PDF rendition&lt;/marker&gt;
            &lt;api-params&gt;
                &lt;param name="attachment-key" value="RSCS_14905_CURRENT-0001"/&gt;
                &lt;param name="attachment-type" value="PDF"/&gt;
                &lt;param name="componentseq" value="1"/&gt;
            &lt;/api-params&gt;
        &lt;/lnlink&gt;
    &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;
     </codeblock>
    </example>

    <example>
      <title>Target XML 6</title>
      <codeblock>
&lt;doc:related-content-grp grptype="related-documents"&gt;
    &lt;heading&gt;
        &lt;title&gt;Related documents&lt;/title&gt;
    &lt;/heading&gt;
    &lt;doc:related-content-item&gt;
        &lt;doc:related-content-link&gt;
            &lt;ref:lnlink service="ATTACHMENT"&gt;
                &lt;ref:marker role="label"&gt;See PDF rendition&lt;/ref:marker&gt;
                &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                        &lt;ref:key-name name="attachment-key"/&gt;
                        &lt;ref:key-value value="{LNI}-{SMI}-RSCS_14905_CURRENT-0001"/&gt;
                        &lt;!-- 
                  The {LNI} and {SMI} are not literal values, 
                  they show where the LNI and SMI values 
                  obtained from CSSM should be output. 
              --&gt;
                    &lt;/ref:locator-key&gt;
                    &lt;ref:locator-params&gt;
                        &lt;proc:param name="componentseq" value="1"/&gt;
                        &lt;proc:param name="attachment-type" value="PDF"/&gt;
                        &lt;proc:param name="attachment-smi" value="{SMI}"/&gt;
                        &lt;!-- proc:param/@value is set to the SMI value obtained from CSSM. --&gt;
                        &lt;!-- This @value assignment is done by the conversion program. --&gt;
                    &lt;/ref:locator-params&gt;
                &lt;/ref:locator&gt;
            &lt;/ref:lnlink&gt;
        &lt;/doc:related-content-link&gt;
    &lt;/doc:related-content-item&gt;
&lt;/doc:related-content-grp&gt;
     </codeblock>
    </example>

    <example>
      <title>Source XML 7 - CA06-CA07
          <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml></title>
      <codeblock>
        
&lt;docinfo:assoc-links&gt;
  &lt;docinfo:assoc-links-grp assoc-content="enabling"&gt;
      &lt;heading&gt;
        &lt;title&gt;Enabling Act&lt;/title&gt;
      &lt;/heading&gt;
      &lt;remotelink remotekey1="DOCINFO(2cb2cdcca9bdd55a897d897ac67f7e39)" remotekey2="All Canadian Statutes" service="QUERY"&gt;Enabling Act&lt;/remotelink&gt;
  &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;

        
      </codeblock>
    </example>

    <example>
      <title>Target XML 7 -
          CA06-CA07<sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml></title>
      <codeblock>
    
&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="enablingLeg"&gt;
     &lt;heading&gt;
       &lt;title&gt;Enabling Act&lt;/title&gt;
     &lt;/heading&gt;
     &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2cb2cdcca9bdd55a897d897ac67f7e39"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
    
 </codeblock>
    </example>

    <example>
      <title>Source XML 8 - CA05
          <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml></title>
      <codeblock>
&lt;docinfo:assoc-links&gt;
    &lt;remotelink remotekey1="DOCINFO(5eff46c7fc603910e15eb944d97c13c0)"
        remotekey2="All Canadian Regulations" service="QUERY"&gt;Link to regulations enabled by this
        act&lt;/remotelink&gt;
&lt;/docinfo:assoc-links&gt;
      </codeblock>
    </example>

    <example>
      <title>Target XML 8 - CA05
          <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml></title>
      <codeblock>
&lt;doc:related-content&gt;
    &lt;doc:related-content-grp grptype="subordinateLeg"&gt;
      &lt;doc:related-content-item content-type="subordinateLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:5eff46c7fc603910e15eb944d97c13c0"/&gt;
        &lt;/ref:relatedresourceref&gt;
    &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
 </codeblock>
    </example>
    <example>
      <title>Source XML 9 (CA06-CA07)</title>
      <codeblock>
        
&lt;docinfo:assoc-links&gt;
            &lt;docinfo:assoc-links-grp assoc-content="enabling"&gt;
                &lt;heading/&gt;
                &lt;remotelink
                    remotekey1="DOCINFO(2ccc2826b445aebac6f6b3f8013e7931) 
                    OR DOCINFO(2ccc2826b445aebac6f6b3f8013e7932) 
                    OR DOCINFO(2ccc2826b445aebac6f6b3f8013e7933) 
                    ....
                    OR DOCINFO(2ccc2826b445aebac6f6b3f8013e7939)"
                    remotekey2="All Canadian Statutes" service="QUERY"&gt;Enabling Act&lt;/remotelink&gt;
          &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;
        
      </codeblock>
    </example>
    <example>
      <title>Target XML 9 (CA06-CA07)</title>
      <codeblock>
        
&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="enablingLeg"&gt;
         &lt;heading&gt;
		  &lt;title&gt;Enabling Act&lt;/title&gt;
	  &lt;/heading&gt;
     &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2ccc2826b445aebac6f6b3f8013e7931"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
     &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2ccc2826b445aebac6f6b3f8013e7932"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
          &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2ccc2826b445aebac6f6b3f8013e7933"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
     ....
     &lt;doc:related-content-item content-type="enablingLeg"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:leg-id-1:2ccc2826b445aebac6f6b3f8013e7939"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
        
      </codeblock>
    </example>
    <example>
      <title>Source XML 10 (CA03)</title>
      <codeblock>
        
    &lt;docinfo:assoc-links&gt;
      &lt;remotelink service="QUERY" remotekey1="REFNUM(01704997)" remotekey2="All Canadian Summaries (Netletters, Digests, Summaries)" xml:lang="en-CA"&gt;Find case digests&lt;/remotelink&gt;
      &lt;remotelink service="QUERY" remotekey1="REFNUM(01704997)" remotekey2="All Canadian Summaries (Netletters, Digests, Summaries)" xml:lang="fr-CA"&gt;Résumés jurisprudentiels&lt;/remotelink&gt;
    &lt;/docinfo:assoc-links&gt;
        
      </codeblock>
    </example>
    <!--CA03 note: doc:related-content-grp/@grptype we set to the same as doc:related-content-item@content-type: enablingLeg | subordinateLeg | caseSummaries | quantums-->
    <example>
      <title>Target XML 10 (CA03)</title>
      <codeblock>
        
&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="caseSummaries"&gt;
	  &lt;heading&gt;
		  &lt;title xml:lang="en-CA"&gt;Find case digests&lt;/title&gt;
		  &lt;title xml:lang="fr-CA"&gt;Résumés jurisprudentiels&lt;/title&gt;
	  &lt;/heading&gt;
     &lt;doc:related-content-item content-type="caseSummaries"&gt;
        &lt;ref:relatedresourceref&gt;
            &lt;ref:relatedresourceid ref:resourcekey="urn:ucn-1:01704997"/&gt;
        &lt;/ref:relatedresourceref&gt;
     &lt;/doc:related-content-item&gt;
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
        
      </codeblock>
    </example>
    <example>
      <title>Source XML 11 (LPA)</title>
      <codeblock>
        
&lt;docinfo:assoc-links&gt;
	&lt;docinfo:assoc-links-grp assoc-content="related-documents" content-type="form"&gt;
		&lt;docinfo:assoc-resource assoc-resourcename="BusLaw" assoc-resourceid="urn:krm:ABCDEABCDEABCDEABCDEABCDE3ABCDE1"/&gt;
		&lt;lnlink service="TRAVERSE"&gt;
			&lt;key-name name="normcite"/&gt;
			&lt;key-value value="LexisNexis Forms Form 219-8.22-7"/&gt;
			&lt;marker role="label"&gt;Notice of Commencement Of Case Under Chapter 11 of the Bankruptcy Code, Meeting of Creditors, and Deadlines--Chapter 11 Corporation/Partnership Case; Official Form 9F &lt;/marker&gt;
		&lt;/lnlink&gt;
		&lt;remotelink dpsi="0N5M" remotekey1="DOC-ID" remotekey2="0N5M_157408" service="DOC-ID"&gt;Exhibit A to Official Form 1&lt;/remotelink&gt;
		&lt;remotelink href="http://www.justice.gov/ust/index.htm" newwindow="YES" service="SEARCH" status="valid"&gt;Official Website of the U.S. Trustee Program&lt;/remotelink&gt;
	&lt;/docinfo:assoc-links-grp&gt;
	&lt;docinfo:assoc-links-grp assoc-content="related-documents" content-type="case"&gt;
		&lt;docinfo:assoc-resource assoc-resourcename="IP" assoc-resourceid="urn:krm:ABCDEABCDEABCDEABCDEABCDE3ABCDE2"/&gt;
		&lt;lnlink service="TRAVERSE"&gt;
			&lt;key-name name="normcite"/&gt;
			&lt;key-value value="2012 U.S. Bankr. Ct. Motions LEXIS 1246"/&gt;
			&lt;marker role="label"&gt;2012 U.S. Bankr. Ct. Motions LEXIS 1246 (Bankr. N.D. Ill.)&lt;/marker&gt;
		&lt;/lnlink&gt;
		&lt;remotelink dpsi="0N5N" remotekey1="DOC-ID" remotekey2="0N5N-0N5N_157355" service="DOC-ID"&gt;Emergency Motion for Joint Administration of Chapter 11 Cases&lt;/remotelink&gt;
		&lt;remotelink href="http://www.uscourts.gov/RulesAndPolicies/FederalRulemaking/LocalCourtRules/USBankruptcyCourts.htm" newwindow="YES" service="SEARCH" status="valid"&gt;Official Website of the Federal Judiciary&lt;/remotelink&gt;
	&lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;
        
      </codeblock>
    </example>
    <example>
      <title>Target XML 11 (LPA)</title>
      <codeblock>
        
&lt;doc:related-content&gt;
	&lt;doc:related-content-grp grptype="related-documents"&gt;
		&lt;ref:relatedresourceref&gt;
			&lt;ref:relatedresourceid ref:resourcekey="urn:krm:ABCDEABCDEABCDEABCDEABCDE3ABCDE1"/&gt;
		&lt;/ref:relatedresourceref&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="TRAVERSE"&gt;
					&lt;ref:marker role="label"&gt;Notice of Commencement Of Case Under Chapter 11 of the Bankruptcy Code, Meeting of Creditors, and Deadlines--Chapter 11 Corporation/Partnership Case; Official Form 9F &lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="normcite"/&gt;
							&lt;ref:key-value value="LexisNexis Forms Form 219-8.22-7"/&gt;
						&lt;/ref:locator-key&gt;
						&lt;ref:locator-params&gt;
							&lt;proc:param name="normprotocol" value="lexsee"/&gt;
						&lt;/ref:locator-params&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker&gt;Exhibit A to Official Form 1&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0N5M-0N5M_157408"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="URL"&gt;
					&lt;ref:marker&gt;Official Website of the U.S. Trustee Program&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="URL"/&gt;
							&lt;ref:key-value value="http://www.justice.gov/ust/index.htm"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
	&lt;/doc:related-content-grp&gt;
	&lt;doc:related-content-grp grptype="related-documents"&gt;
		&lt;ref:relatedresourceref&gt;
			&lt;ref:relatedresourceid ref:resourcekey="urn:krm:ABCDEABCDEABCDEABCDEABCDE3ABCDE2"/&gt;
		&lt;/ref:relatedresourceref&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="TRAVERSE"&gt;
					&lt;ref:marker role="label"&gt;2012 U.S. Bankr. Ct. Motions LEXIS 1246 (Bankr. N.D. Ill.)&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="normcite"/&gt;
							&lt;ref:key-value value="2012 U.S. Bankr. Ct. Motions LEXIS 1246"/&gt;
						&lt;/ref:locator-key&gt;
						&lt;ref:locator-params&gt;
							&lt;proc:param name="normprotocol" value="lexsee"/&gt;
						&lt;/ref:locator-params&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="DOCUMENT"&gt;
					&lt;ref:marker&gt;Emergency Motion for Joint Administration of Chapter 11 Cases&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0N5N-0N5N_157355"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
		&lt;doc:related-content-item&gt;
			&lt;doc:related-content-link&gt;
				&lt;ref:lnlink service="URL"&gt;
					&lt;ref:marker&gt;Official Website of the Federal Judiciary&lt;/ref:marker&gt;
					&lt;ref:locator&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="URL"/&gt;
							&lt;ref:key-value value="http://www.uscourts.gov/RulesAndPolicies/FederalRulemaking/LocalCourtRules/USBankruptcyCourts.htm"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:lnlink&gt;
			&lt;/doc:related-content-link&gt;
		&lt;/doc:related-content-item&gt;
	&lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;
        
      </codeblock>
    </example>


    <!-- McNally Apr 3 2014. Removing Example 4 to avoid confusion with separate module for AU-NZ use case. -->

    <!--        <example>
            <title>Source XML 4</title>
            <codeblock>
            <![CDATA[
                <docinfo:assoc-links>
                    <docinfo:assoc-links-grp>
                        <heading>
                            <title>Related Content</title>
                        </heading>
                        <remotelink dpsi="0084" remotekey1="REFPTID" service="DOC-ID" refpt="PCL.C19">Chapter 19
                            Debt Finance</remotelink>
                            <text>Ford's Principles of Corporations Law</text>
                        <remotelink dpsi="0KKU" remotekey1="REFPTID" service="DOC-ID" refpt="0KKU_72492">Overall
                            results and consequences of the PPSA</remotelink>
                        <text>LexisNexis Practical Guidance, Family module</text>
                        <remotelink href="www.familycourt.gov.au" hrefclass="http" newwindow="YES">Family Court of
                            Australia</remotelink>
                    </docinfo:assoc-links-grp>
                </docinfo:assoc-links>
             ]]>
	   </codeblock>
        </example>

        <example>
            <title>Target XML 4</title>
            <codeblock>
<![CDATA[
 <doc:related-content>
                 <doc:related-content-grp grptype="related-content">
                     <heading><title>Related Content</title></heading>
                     <doc:related-content-item>
                     <doc:related-content-link>
                         <ref:lnlink service="DOCUMENT">
                             <ref:marker>Chapter 19 Debt Finance</ref:marker>
                             <ref:locator>
                                 <ref:locator-key>
                                     <ref:key-name name="DOC-ID"/>
                                     <ref:key-value value="0084-PCL.C19"/>
                                 </ref:locator-key>
                             </ref:locator>
                         </ref:lnlink>
                     </doc:related-content-link>
                     </doc:related-content-item>
                     <doc:related-content-item>
                         <doc:related-content-desc>
                             <p><text>Ford's Principles of Corporations Law</text></p>
                         </doc:related-content-desc>
                     </doc:related-content-item>
                     <doc:related-content-item>
                         <doc:related-content-link>
                             <ref:lnlink service="DOCUMENT">
                                 <ref:marker>Overall
                                 results and consequences of the PPSA</ref:marker>
                                 <ref:locator>
                                     <ref:locator-key>
                                         <ref:key-name name="DOC-ID"/>
                                         <ref:key-value value="0KKU-0KKU_72492"/>
                                     </ref:locator-key>
                                 </ref:locator>
                             </ref:lnlink>
                         </doc:related-content-link>
                     </doc:related-content-item>
                     <doc:related-content-item>
                         <doc:related-content-desc>
                             <p><text>LexisNexis Practical Guidance, Family module</text></p>
                         </doc:related-content-desc>
                     </doc:related-content-item>
                     <doc:related-content-item>
                         <doc:related-content-link>
                             <ref:lnlink service="URL">
                                 <ref:marker>Family Court of Australia</ref:marker>
                                 <ref:locator>
                                     <ref:locator-key>
                                       <ref:key-name name="URL"/>
                                       <ref:key-value value="http://www.familycourt.gov.au"/>
                                     </ref:locator-key>
                                 </ref:locator>
                             </ref:lnlink>
                         </doc:related-content-link>
                     </doc:related-content-item>
                </doc:related-content-grp>
                ]]>
	   </codeblock>
	   </example>-->

    <!-- McNally Apr 3 2014. Removing Example 5 to avoid confusion with separate module for AU-NZ use case. -->
    <!--  <example>
   <title>Source XML 5 :
    <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml></title>
   <codeblock>
<![CDATA[
<docinfo:assoc-links>
 <docinfo:assoc-links-grp>  
  <heading><title>Related Content</title></heading>
  <remotelink dpsi="008D" remotekey1="DOC-ID" service="DOC-ID" refpt="PIL.OV">Overview of Insurance</remotelink>
  <text>Kelly &amp; Ball Principles of Insurance Law</text>
  <remotelink dpsi="0384" remotekey1="DOC-ID" service="DOC-ID" refpt="PFI.ICA.ICA">Insurance Contracts Act 1984</remotelink>
  <text>Australian Insurance Law Annotated</text>
  <ci:cite searchtype="BOOK-REF">
   <ci:content>The central role of insurance in modern society and in the development of the law (2013) 24 ILJ 1</ci:content>
  </ci:cite>
  <text>Insurance Law Journal</text>
 </docinfo:assoc-links-grp>
</docinfo:assoc-links>]]>
            </codeblock>
  </example>
  <example>
   <title>Target XML 5 :
    <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml></title>
   <codeblock>
<![CDATA[
<doc:related-content>
 <doc:related-content-grp> 
  <heading><title>Related Content</title></heading>
  <doc:related-content-item>
    <doc:related-content-link>
     <ref:lnlink service="DOCUMENT">
      <ref:marker>Overview of Insurance</ref:marker>
      <ref:locator>
       <ref:locator-key>
        <ref:key-name name="DOC-ID"/>
        <ref:key-value value="008D-PIL.OV"/>
       </ref:locator-key>
      </ref:locator>
     </ref:lnlink>
    </doc:related-content-link>
    <doc:related-content-desc>
     <p><text>Kelly &amp; Ball Principles of Insurance Law</text></p>
    </doc:related-content-desc>
  </doc:related-content-item>
  <doc:related-content-item>
    <doc:related-content-link>
     <ref:lnlink service="DOCUMENT">
      <ref:marker>Insurance Contracts Act 1984</ref:marker>
      <ref:locator>
       <ref:locator-key>
        <ref:key-name name="DOC-ID"/>
        <ref:key-value value="0384-PFI.ICA.ICA"/>
       </ref:locator-key>
      </ref:locator>
     </ref:lnlink>
    </doc:related-content-link>
    <doc:related-content-desc>
     <p><text>Australian Insurance Law Annotated</text></p>
    </doc:related-content-desc>
  </doc:related-content-item>
  <doc:related-content-item>
    <doc:related-content-link>
     <ref:lnlink service="TRAVERSE">
      <ref:marker role="label">The central role of insurance in modern society and in the development of the law (2013) 24 ILJ 1</ref:marker>
      <ref:locator>
       <ref:locator-key>
        <ref:key-name name="normcite"/>
        <ref:key-value value="The central role of insurance in modern society and in the development of the law (2013) 24 ILJ 1"/>
       </ref:locator-key>
       <ref:locator-params>
        <proc:param name="normprotocol" value="lexsee"/>
        <proc:param name="countrycode" value="AU"/>
       </ref:locator-params>
      </ref:locator>
     </ref:lnlink>
    </doc:related-content-link>
    <doc:related-content-desc>
     <p><text>Insurance Law Journal</text></p>
    </doc:related-content-desc>
  </doc:related-content-item>
 </doc:related-content-grp>
</doc:related-content>]]>                
            </codeblock>
  </example>-->

    <section>
      <title>Changes</title>
      <p>2016-11-16: <ph id="change_20161116_snb">Added to note regarding applying any rules related to 
        <targetxml>@anchoridref</targetxml>, referring specifically to section for "Identifiers to ID Data Type - 
        Handling Pattern Restrictions".</ph>
      </p>
      <p>2016-07-29: <ph id="change_20160729_jm">Added Note about xml snippets that illustrate image
          handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
          move to Blobstore.</ph></p>
      <p>2015-09-11: <ph id="change_20150911_snb">Added instruction for handling of
            <sourcexml>lnlink[@service="URL"]</sourcexml> inside
            <sourcexml>docinfo:assoc-links</sourcexml> or
            <sourcexml>docinfo:assoc-links-grp</sourcexml>.</ph>
      </p>
      <p>2015-09-11: <ph id="change_20150911_snb2">Correction to target XPATHs for
            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml>,
            <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>, and
            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> to add
            <targetxml>doc:related-content-item/doc:related-content-link</targetxml> before the
          existing <targetxml>ref:lnlink</targetxml> element in the XPATH.</ph>
      </p>
      <p>2015-09-03: <ph id="change_20150903_snb">Added instruction for handling of
            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> inside
            <sourcexml>docinfo:assoc-links</sourcexml> or
            <sourcexml>docinfo:assoc-links-grp</sourcexml>.</ph>
      </p>
      <p>2015-09-03: <ph id="change_20150903_snb2">Added
            <targetxml>doc:related-content-item/@content-type="external-content-location"</targetxml>
          when the parent
            <sourcexml>docinfo:assoc-links[@assoc-content="external-content-location"]</sourcexml>
          exists, for children: <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>,
            <sourcexml>remotelink[@href]</sourcexml>,
            <sourcexml>lnlink[@service="TRAVERSE"]</sourcexml> and
          <sourcexml>ci:cite</sourcexml>.</ph>
      </p>
      <p>2015-09-03: <ph id="change_20150903_snb3">Minor correction to bullet heading text for
          children of <sourcexml>docinfo:assoc-links</sourcexml> or
            <sourcexml>docinfo:assoc-links-grp</sourcexml> to change from
            <sourcexml>lnlink/@service="QUERYLINK"</sourcexml> to be
            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> and
            <sourcexml>lnlink/@service="ATTACHMENT"</sourcexml> to be
            <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml>.</ph>
      </p>
      <p>2015-07-16: <ph id="change_20150716_bmh">Updated conversion for handling of
            <sourcexml>ci:cite/@normprotocol</sourcexml>,
            <targetxml>proc:param[@name="countrycode"]</targetxml>; added instructions for
            <sourcexml>docinfo:assoc-resource</sourcexml>.</ph>
      </p>
      <p>2015-05-22: <ph id="change_20150522_jm">Clarification. Not a new rule or target. Within
          rules handling <sourcexml>remotelink[@service="DOC-ID"]</sourcexml>, added statement to
          create containing elements <targetxml>ref:locator/ref:locator-key</targetxml> which hold
            <targetxml>ref:key-name</targetxml> and <targetxml>ref:key-value</targetxml>. The xpath
          is controlled by schema and so conversions have been correct. CI examples were correct.
          The narrative rule is now explicit. R4.5 Content Issue 2326.</ph></p>
      <p>2015-01-19: <ph id="change_20150119_SS"><b>For CA05 - CA08</b>- Updated Instruction and
          included "<targetxml>related-content-grp</targetxml>" markup inside the target <b>Example
            8</b> for conversion of QUERY link to doc:related-content.</ph></p>
      <p>2015-01-15: <ph id="change_20150115_SEP"><b>For CA03</b>- Convert the QUERY link to
          doc:related-content. Refer Example 10. R4.5 RFA #2099.</ph></p>
      <p>2015-01-13: <ph id="change_20150113_SSX"><b>For CA05 - CA08</b> Conversion Needs to split
          multiple <b>ORs</b> into a separate <targetxml>doc:related-content-item</targetxml>. Refer
          Example 9</ph></p>
      <p>2015-01-02: <ph id="change_20150102_PS">Added
            <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml> and
            <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]</sourcexml> to generate
            <targetxml>doc:related-content</targetxml> markup. Applicable on CA05.</ph></p>
      <p>2014-12-19: <ph id="change_20141219_PS">Updated target mapping for <b>CA05</b> for handling
            <sourcexml>docinfo:assoc-links/remotelink[@service="QUERY"]</sourcexml>. Applicable on
          CA05.</ph></p>
      <p>2014-12-17: <ph id="change_20141217_SS">Added a Note for <b>CA05, CA06, CA07 and CA08</b>
          for handling <sourcexml>docinfo:assoc-links-grp/remotelink[@service="QUERY"]
          </sourcexml></ph> R4.5 issue #2088 and #2068.</p>
      <p>2014-09-16: <ph id="change_20140916_SSX">Added a note to create
            <targetxml>proc:param/@name="attachment-smi"</targetxml> and
            <targetxml>proc:param/@value</targetxml> as these was there in the snippet but was
          missing in instruction and also added a note in to simplify in output
            <targetxml>ref:key-value/@value</targetxml></ph></p>
      <p>2014-08-21: <ph id="change_20140821_PS">Added instructions and an example for converting
            <sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to
            <targetxml>ref:lnlink</targetxml>. Applicable on CA05-CA08.</ph></p>
      <p>2014-06-18: <ph id="change_20140618_JCG">Corrected minor typos in
            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> instructions.</ph></p>
      <p>2014-06-13: <ph id="change_20140613_brt">Added instructions and an example for converting
            <sourcexml>lnlink[@service="QUERYLINK"]</sourcexml> to
          <targetxml>ref:lnlink</targetxml>.</ph></p>
      <p>2014-04-28: <ph id="change_20140428_JCG">Clarified instructions regarding
            <sourcexml>link</sourcexml> elements and added an example (#4) illustrating the special
            <sourcexml>text/link</sourcexml> conversion. No mapping rules where changed or
          added.</ph></p>
      <p>2014-04-21: <ph id="change_20140421_JCG">Added an instruction to handle
            <sourcexml>link</sourcexml> elements. These can potentially occur in any future UK data
          and will be present in stream UK21fl when those documents become available later in
          2014.</ph></p>
      <p>2014-04-03: <ph id="change_20140403_jm">Illustrative changes. Examples modified. Mapping
          for <sourcexml>ci:cite</sourcexml> added to Example 3. Former Examples 4 and 5 removed to
          avoid confusion with special AU-NZ use case described in a separate module. R4.5 Content
          issue #1125, for AU-NZ, has prompted the changes for this general module.</ph></p>
      <!--<p>2014-04-02: <ph id="change_20140402_jm">Added special rule for AU and NZ streams. Applies when
     a linking element is immediately followed by <sourcexml>text</sourcexml>. The pair map to a
     single <targetxml>doc:related-content-item</targetxml>. Example 4 is changed, now illustrates
     new rule. R4.5 Content issue #1125</ph></p>-->
      <p>2014-03-25: <ph id="change_20140325">Added rule and example for
            <sourcexml>docinfo:assoc-links/docinfo:assoc-links-grp/ci:cite</sourcexml>. R4.5 Content
          issue #1125</ph></p>
      <p>2013-07-19: <ph id="change_20130719_jm">Added rule mapping attribute
            <sourcexml>remotelink[@service="DOC-ID"]</sourcexml> to
            <targetxml>ref:lnlink[@service="DOCUMENT"]</targetxml></ph>.</p>
      <p>2013-04-12: <ph id="change_20130412_WLL">This module was changed from <b>UK</b> specific to
          applicable to all LBUs</ph></p>
      <p>2013-04-10: <ph id="change_20130410_WLL">An example for related content Source and Target
          XML 4</ph></p>
      <p>2013-03-28: <ph id="change_20130328_xx"> Added rules for
            <sourcexml>docinfo:assoc-links-grp</sourcexml> and for child
          <sourcexml>text</sourcexml>.</ph></p>
      <p>2013-01-22: <ph id="change_20130122_xx"> Added mapping instruction for
            <sourcexml>docinfo:assoc-links/remotelink @href</sourcexml>.</ph></p>
      <p>2012-12-05: <ph id="change_20121205_xx"> Example added for Canada content stream.</ph></p>
      <p>2012-10-15: <ph id="change_20121015_xx"> Made some Kraken related changes.</ph></p>
      <p>2012-10-08: <ph id="change_20121008_xx">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.assoc-links-LxAdv-doc.related-content.dita  -->
<!-- begin debug code -->
<!--<xsl:param name="streamID" select="'CA07'"/>
  
  <xsl:include href="../../modules/nonamespace/Rosetta_identifier-LxAdv-ID_data_type-HandlingPatternRestrictions.xsl"/> 
  
  <xsl:template match="heading">
    <xsl:copy-of select="."/>
  </xsl:template>-->
  <!-- end debug code -->
  
  <!-- Awantika:use of variable for AU20 -->
 
  
	<xsl:template match="docinfo:assoc-links">
	  <xsl:if test="child::*[not(self::remotelink[@service='QUERY'])] or $streamID=('CA03', 'CA05', 'CA06', 'CA07', 'CA08')">
	    <doc:related-content>
			 <xsl:apply-templates select="@* | node()"/>
	    </doc:related-content>
	   </xsl:if>
	</xsl:template>
  
  
  
  
  <xsl:template match="docinfo:assoc-links/@assoc-content"/>
  
  <!-- JL: to match DT, suppressing docinfo:assoc-links/@display-name -->
  
  <xsl:template match="docinfo:assoc-links/@display-name"/>
  
  <xsl:template match="docinfo:assoc-links-grp">
    <doc:related-content-grp>
      <xsl:apply-templates select="@* | node()"/>
      <!-- Awantika-2017-10-13: creating empty doc:related-content-item which is required child element for docinfo:assoc-links-grp
      Input data is coming with empty text the module created for docinfo:assoc-links-grp/text is not recognising the empty text and therefore 
      making the file invalid-->
      <!-- 2017-10-24 - MDS: Added 'UK11DA' streamID to test. -->
      <xsl:if test="$streamID=('UK11DN' , 'UK11DA') and child::text[not(preceding-sibling::* except heading and following-sibling::*)]=''">
        <doc:related-content-item/>                
      </xsl:if>
      <xsl:if test="$streamID=('CA05' , 'CA06') and child::remotelink[@service='QUERY'][not(following-sibling::*) and preceding-sibling::heading='']">
        <doc:related-content-item/>  
      </xsl:if>
    </doc:related-content-grp>    
  </xsl:template>
  
  <xsl:template match="docinfo:assoc-links-grp/@assoc-content">
    <xsl:attribute name="grptype">
      <xsl:choose>
        <xsl:when test="(starts-with($streamID,'CA06') or starts-with($streamID ,'CA07')) and .='enabling' 
          and parent::docinfo:assoc-links-grp/remotelink[@service='QUERY'][starts-with(@remotekey1 , 'DOCINFO(')][@remotekey2[.='All Canadian Statutes']]">
          <xsl:text>enablingLeg</xsl:text>
        </xsl:when>
        <xsl:when test="(starts-with($streamID , 'CA05') or starts-with($streamID , 'CA08')) and parent::docinfo:assoc-links-grp/remotelink[@service='QUERY'][starts-with(@remotekey1 , 'DOCINFO(')][@remotekey2[.='All Canadian Regulations']]">
          <xsl:text>subordinateLeg</xsl:text>
        </xsl:when>
        <xsl:when test="starts-with($streamID , 'CA03') and parent::docinfo:assoc-links-grp/remotelink[@service='QUERY'][starts-with(@remotekey1 , 'REFNUM(')][@remotekey2='All Canadian Summaries']">
          <xsl:text>caseSummaries</xsl:text>
        </xsl:when>
        <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
      </xsl:choose>      
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="docinfo:assoc-links-grp/@display-name">
    <xsl:if test="not(parent::docinfo:assoc-links-grp[@assoc-content])">
      <xsl:attribute name="grptype">
        <xsl:value-of select="."/>
      </xsl:attribute>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="docinfo:assoc-links-grp/@content-type"/>
  
  <xsl:template match="docinfo:assoc-resource">
    <!--  Original Target XPath:  ref:relatedresourceref/ref:relatedresourceid   -->
    <ref:relatedresourceref>
      <ref:relatedresourceid>
        <xsl:apply-templates select="@* | node()"/>
      </ref:relatedresourceid>
    </ref:relatedresourceref>
  </xsl:template>
  
  <xsl:template match="docinfo:assoc-resource/@assoc-resourceid">
    <xsl:attribute name="ref:resourcekey">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="docinfo:assoc-resource/@assoc-resourcename"/>
 
  
 <!-- <xsl:template match="docinfo:assoc-links/text | docinfo:assoc-links-grp/text">
    <xsl:choose>
      <xsl:when test="child::link and not(child::*[not(self::link)]) and not(text())">
        <xsl:apply-templates select="link"/>
      </xsl:when>
        <xsl:otherwise>
          <doc:related-content-item>
            <doc:related-content-desc>
              <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                  <xsl:apply-templates select="@* | node()"/>
                </text>
              </p>
            </doc:related-content-desc>
          </doc:related-content-item>
        </xsl:otherwise>     
    </xsl:choose>    
  </xsl:template>-->
  <!-- 12/12/17 backed out 'priority="5" -->
  <!-- BRT 12/7/17 W*7065778 added priority='5' docinfo:assoc-links-grp/text was getting triggered somewhere else (couldn't find the template)-->
  <xsl:template match="docinfo:assoc-links/text | docinfo:assoc-links-grp/text" >
   
   <!-- BRT 12/12/17 backed out code to normalize the text --> 
    <!-- BRT 11/27/17 added processing to normlize the space in text nodes to avoid false positives -->
    <!-- xsl:variable name="text">
      <xsl:for-each select="text()">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:for-each>
    </xsl:variable-->
    <xsl:choose>
      <!-- BRT 12/12/17 backed out change: 'and not(text())' to  and $text =''" -->
      <!-- BRT change 'and not(text())' to  and $text =''" -->
      <xsl:when test="child::link and not(child::*[not(self::link)]) and not(text())">
        <xsl:apply-templates select="link"/>
      </xsl:when>
      <!-- Awantika: remotelink[@service="DOC-ID"] becomes doc:related-content-item/doc:related-content-link/
ref:lnlink[@service="DOCUMENT"]. Added this for UK11DN -->
      <xsl:when test="(./remotelink or ./url/remotelink)and $streamID=('UK11DN','UK11DA')">
        <xsl:apply-templates select="@* | node()"/>
      </xsl:when>
   
      <!-- Priya Kaushal: Added below code for UK 15 -->
      <xsl:when test="(./remotelink or ./url/remotelink) and $streamID=('UK15')">
        <doc:related-content-item>                   
          <doc:related-content-desc>
            <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
              <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
        <xsl:apply-templates select="remotelink | url/remotelink"/>
              </text>
            </p>
          </doc:related-content-desc>          
        </doc:related-content-item>
      </xsl:when>
      <!-- Awantika: when condition for UK11DN -->
      <xsl:when test="$streamID='UK11DN' and child::link">
        <xsl:apply-templates select="node() except emph"/>
      </xsl:when>
      <xsl:otherwise>
        <doc:related-content-item>                   
              <doc:related-content-desc>
                <p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                  <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                    <xsl:apply-templates select="@* | node()"/>
                  </text>
                </p>
              </doc:related-content-desc>          
        </doc:related-content-item>
      </xsl:otherwise>     
    </xsl:choose>    
  </xsl:template>
  
  
  <xsl:template match="link[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp or parent::text[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]]">
    <doc:related-content-item>
      <doc:related-content-link>
        <ref:lnlink service="ATTACHMENT">
          <ref:marker><xsl:apply-templates/></ref:marker>
          <ref:locator>
          <ref:locator-key>
            <ref:key-name name="attachment-key"/>
            <ref:key-value>
              <xsl:attribute name="value">
                <xsl:choose>
                  <xsl:when test="@smi"><xsl:value-of select="substring-before(@filename, '.')"/></xsl:when>
                  <!-- BRT 2018-01-11 modified otherwise  to keep file extension. For UK15 determined the file extension is required for blobstore images; Rocel says it is required for other type images as well-->
                  <xsl:otherwise>
                    <xsl:value-of select="@filename"/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:attribute>
            </ref:key-value>
          </ref:locator-key>
          <ref:locator-params>
            <!-- 2017-10-04 - MDS: Added choose statement to test for stream ID to match modified monolithic in HK06 
            JL: 2017-10-06 added same for HK01-->
            <!-- BRT 2018-01-02 added UK15 to choose statement. Note this template is almost exactly the same as in Rosetta_link-LxAdv-ref.lnlink_BLOBSTORE.xsl, which is commented out in UK15ds and is used by UK11dn. I don't know why both are present  -->
            <xsl:choose>
              <xsl:when test="$streamID=('HK06' , 'HK01', 'UK15')">
                <proc:param name="attachment-type" value="IMG"/>
                <proc:param name="external-or-local" value="external"/>
                <proc:param name="attachment-server" value="BlobStore"/>
                <proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/>
                <proc:param name="componentseq" value="1"/>
              </xsl:when>
              <xsl:otherwise>
                <proc:param name="componentseq" value="1"/>
                <proc:param>
                  <xsl:attribute name="name">attachment-type</xsl:attribute>
                  <xsl:attribute name="value">
                    <xsl:apply-templates select="@type"/>
                  </xsl:attribute>
                </proc:param>
                <proc:param>
                  <xsl:attribute name="name">attachment-smi</xsl:attribute>
                  <xsl:attribute name="value"><xsl:value-of select="@smi"/></xsl:attribute>
                </proc:param>      
              </xsl:otherwise>
            </xsl:choose>                    
          </ref:locator-params>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
    </doc:related-content-item>
  </xsl:template>
  
  <!-- MDS 2017-04-07 - Declared in Rosetta_link-LxAdv-ref.lnlink.xsl -->
  <!--<xsl:template match="link/@type">
    <xsl:choose>
      <xsl:when test=".=('para','page', 'ed-pnum','refpt','logo')">
        <xsl:message>attachment-type is invalid, cannot be determined.</xsl:message>
      </xsl:when>
      <xsl:when test=".=('pdf' , 'pdf-fillable')">PDF</xsl:when>
      <xsl:when test=".='hotdoc-nonfillable'">hotdoc</xsl:when>
      <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
    </xsl:choose>
  </xsl:template>-->

    
  <xsl:template match="remotelink[@service='QUERY'][ancestor::docinfo:assoc-links][$streamID=('CA03', 'CA05', 'CA06', 'CA07', 'CA08')]">
    <xsl:choose>
      <xsl:when test="(starts-with($streamID,'CA06') or starts-with($streamID ,'CA07')) and parent::docinfo:assoc-links-grp[@assoc-content='enabling'] 
        and starts-with(@remotekey1 , 'DOCINFO(') and @remotekey2='All Canadian Statutes'">          
              <xsl:call-template name="makeRelatedresourceref">
                <xsl:with-param name="contentType" select="'enablingLeg'"/>
              </xsl:call-template>            
      </xsl:when>
      <xsl:when test="(starts-with($streamID , 'CA05') or starts-with($streamID , 'CA08')) and starts-with(@remotekey1 , 'DOCINFO(') and @remotekey2='All Canadian Regulations'">
             <xsl:call-template name="makeRelatedresourceref">
                <xsl:with-param name="contentType" select="'subordinateLeg'"/>
              </xsl:call-template>            
      </xsl:when>
      <xsl:when test="starts-with(@remotekey1 , 'REFNUM(') and contains(@remotekey2,'All Canadian Summaries') and $streamID='CA03' and not(preceding-sibling::*[1][self::remotelink])">
        <doc:related-content-grp grptype="caseSummaries">
          <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <title xml:lang="en-CA"><xsl:value-of select="."/></title>
            <title xml:lang="fr-CA"><xsl:value-of select="following-sibling::remotelink"/></title>
          </heading>    
            <doc:related-content-item content-type="caseSummaries">
              <ref:relatedresourceref>
                <ref:relatedresourceid>
                  <xsl:attribute name="ref:resourcekey">
                    <xsl:value-of select="concat('urn:ucn-1:' , substring-before(substring-after(@remotekey1 , 'REFNUM(') , ')'))"/>
                  </xsl:attribute>
                </ref:relatedresourceid>
              </ref:relatedresourceref>
            </doc:related-content-item>
        </doc:related-content-grp>
      </xsl:when>
      <!-- otherwise we do nothing for remotelink service QUERY -->
    </xsl:choose>
  </xsl:template>
  
  <xsl:template name="makeRelatedresourceref">
    <xsl:param name="contentType"/>
    <xsl:for-each select="tokenize(@remotekey1 , '\s+OR\s+')">
      <doc:related-content-item>
        <xsl:attribute name="content-type" select="$contentType"/>
        <ref:relatedresourceref>
          <ref:relatedresourceid>
            <xsl:attribute name="ref:resourcekey"><xsl:value-of select="concat('urn:leg-id-1:', substring-before(substring-after(. , 'DOCINFO(') , ')'))"/></xsl:attribute>
          </ref:relatedresourceid>
        </ref:relatedresourceref>
      </doc:related-content-item>
    </xsl:for-each>
  </xsl:template>
  
  
  <xsl:template match="remotelink[@service='DOC-ID'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
    <doc:related-content-item>
      <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
        <xsl:attribute name="content-type">external-content-location</xsl:attribute>
      </xsl:if>
        <doc:related-content-link>
          <ref:lnlink>
            <xsl:attribute name="service">DOCUMENT</xsl:attribute>
            <ref:marker><xsl:apply-templates/></ref:marker>
            <ref:locator>
              <xsl:if test="@remotekey1='REFPTID' and (@refpt or @remotekey2)">
                <xsl:attribute name="anchoridref">
                    <xsl:choose>
                      <xsl:when test="@refpt">
                        <xsl:for-each select="@refpt">
                          <xsl:call-template name="normalizeIdString"/>
                        </xsl:for-each>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:for-each select="@remotekey2">
                          <xsl:call-template name="normalizeIdString"/>
                        </xsl:for-each>
                      </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
              </xsl:if>
              <ref:locator-key>
                <xsl:choose>
                  <xsl:when test="@remotekey1='DOC-ID'">
                    <ref:key-name name="DOC-ID"/>
                    <ref:key-value>
                      <xsl:attribute name="value">
                        <xsl:value-of select="@dpsi"/>
                        <xsl:text>-</xsl:text>
                        <xsl:value-of select="if (@remotekey2) then @remotekey2 else @refpt"/>
                      </xsl:attribute>
                    </ref:key-value>
                  </xsl:when>
                  <xsl:when test="@remotekey1='REFPTID'">
                    <ref:key-name name="DOC-ID"/>
                    <ref:key-value>
                      <xsl:attribute name="value">
                        <xsl:value-of select="if (@dpsi) then @dpsi else //docinfo/docinfo:dpsi/@id-string"/>
                        <xsl:text>-</xsl:text>
                        <xsl:value-of select="@docidref"/>
                      </xsl:attribute>
                    </ref:key-value>
                  </xsl:when>
                </xsl:choose>
              </ref:locator-key>
            </ref:locator>
          </ref:lnlink>
        </doc:related-content-link>
    </doc:related-content-item>    
  </xsl:template>
  
  <xsl:template match="remotelink[@href][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]" priority="25">
    <doc:related-content-item>
      <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
        <xsl:attribute name="content-type">external-content-location</xsl:attribute>
      </xsl:if>
      <doc:related-content-link>
        <ref:lnlink service="URL">
          <ref:marker><xsl:value-of select="."/></ref:marker>
          <ref:locator>
            <ref:locator-key>
              <ref:key-name name="URL"/>
              <ref:key-value>
                <xsl:attribute name="value">
                  <xsl:value-of select="if (@hrefclass) then concat(@hrefclass, '://' , @href) else @href"/>
                </xsl:attribute>
              </ref:key-value>
            </ref:locator-key>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
      <xsl:apply-templates select="following-sibling::text[1][$streamID!='UK14']"/>
    </doc:related-content-item>
    <xsl:apply-templates select="following-sibling::*[1][self::text][$streamID='UK14']"/>
  </xsl:template>
  

  
  <!-- from other module: If the data content of the remotelink does not start with one of the previous listed
          text sequences, <sourcexml>remotelink</sourcexml> becomes
            <targetxml>ref:lnlink</targetxml> and is populated as follows:<ul>
            <li>The <targetxml>ref:lnlink/@service</targetxml> attribute is set to "URL".</li>
            <li>Element <targetxml>ref:lnlink/ref:marker</targetxml> is created and the content of
                <sourcexml>remotelink</sourcexml> becomes the content of child
                <targetxml>ref:lnlink/ref:marker</targetxml>. Any descendant element is converted
              according to instructions for that element in the section <i>General Mark-Up</i>.</li>
            <li>The child <targetxml>ref:lnlink/ref:locator</targetxml> is created, and within it
              the child <targetxml>ref:lnlink/ref:locator/ref:locator-key</targetxml> is created,
              and within it the children
                <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-name</targetxml> and
                <targetxml>ref:lnlink/ref:locator/ref:locator-key/ref:key-value</targetxml> are
              created.</li>
            <li>The <targetxml>ref:key-name/@name</targetxml> attribute is set to "URL".</li>
            <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is present,
                <targetxml>ref:key-value/@value</targetxml> is set to the combined value of
                <sourcexml>remotelink/@hrefclass</sourcexml>, followed by "://", followed by the
              value of <sourcexml>remotelink/@href</sourcexml>.</li>
            <li>If the <sourcexml>remotelink/@hrefclass</sourcexml> attribute is <b>not</b> present,
                <targetxml>ref:key-value/@value</targetxml> is set to the value of
                <sourcexml>remotelink/@href</sourcexml>.</li> -->

  
  <xsl:template match="lnlink[@service='QUERYLINK'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
    <doc:related-content-item>
      <doc:related-content-link>
        <ref:lnlink service="QUERYLINK">
          <xsl:apply-templates select="marker"/>
          <ref:locator>
            <ref:locator-key>
              <ref:key-name>
                <xsl:attribute name="name">
                  <xsl:value-of select="key-name[@name='queryTemplatePGUID']/@name"/>
                </xsl:attribute>
              </ref:key-name>
              <ref:key-value>
                <xsl:attribute name="value">
                  <xsl:value-of select="key-value/@value"/>
                </xsl:attribute>
              </ref:key-value>              
            </ref:locator-key>
            <xsl:apply-templates select="api-params"/>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
    </doc:related-content-item>
  </xsl:template>
  
  <xsl:template match="lnlink/marker">
    <ref:marker>
      <xsl:apply-templates select="@*|node()"/>
    </ref:marker>
  </xsl:template>
  
  <xsl:template match="lnlink/marker/@role">
    <xsl:copy-of select="."/>
  </xsl:template>

<xsl:template match="api-params">
  <ref:locator-params>
    <xsl:apply-templates/>
    <xsl:if test="parent::lnlink[@service='ATTACHMENT']">
      <proc:param>
        <xsl:attribute name="name">attachment-smi</xsl:attribute>
        <xsl:attribute name="value"></xsl:attribute>
        <xsl:message>need SMI from CSSM? Is this a parameter?</xsl:message>
      </proc:param>
    </xsl:if>
  </ref:locator-params>
</xsl:template>
  

  
  <xsl:template match="param">   
    <xsl:if test="@name!='attachment-key'">
      <xsl:choose>       
        <!-- Awantika: For AU20 one more param needs to be created with the name targetcontentType value practicalguidance -->
        <xsl:when test="$streamID='AU20'">
          <xsl:if test="not(following-sibling::param)">
            <proc:param>
              <xsl:attribute name="name">
                <xsl:text>targetContentType</xsl:text>
              </xsl:attribute>
              <xsl:attribute name="value">
                <xsl:text>practicalguidance</xsl:text>
              </xsl:attribute>
            </proc:param>
          </xsl:if>
          <xsl:variable name="docinfoidtext" select="/*/docinfo/docinfo:doc-id/text()"/>
          <!-- Awantika: Need to create only proc:param for topiccode in AU20 for the specific condition -->
          <xsl:if test="$streamID='AU20' and contains(lower-case($docinfoidtext),'analytics') and ancestor::source_cttr:annotations[@annotgroup='LPG']">
              <xsl:choose>                
                <xsl:when test="@name[.='topiccode']">
                  <proc:param>
                    <xsl:attribute name="name">
                      <xsl:text>topiccode</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="value">
                      <xsl:value-of select="@value"/>
                    </xsl:attribute>
                  </proc:param>
                </xsl:when>                
                <xsl:otherwise/>
              </xsl:choose>   
          </xsl:if>
        </xsl:when>
        <xsl:otherwise>
          <proc:param>
          <xsl:apply-templates select="@name | @value"/> 
          </proc:param>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if> 
  </xsl:template>
  
  <xsl:template match="param/@name | param/@value">
    <xsl:copy-of select="."/>   
  </xsl:template>
  
  <xsl:template match="lnlink[@service='ATTACHMENT'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
    <doc:related-content-item>
      <doc:related-content-link>
        <ref:lnlink service="ATTACHMENT">
          <xsl:apply-templates select="marker"/>
          <ref:locator>
            <ref:locator-key>
              <ref:key-name>
                <xsl:attribute name="name">attachment-key</xsl:attribute>
              </ref:key-name>
              <ref:key-value>
                <xsl:attribute name="value"><xsl:value-of select="api-params/param[@name='attachment-key']/@value"/></xsl:attribute>
              </ref:key-value>
            </ref:locator-key>
            <xsl:apply-templates select="api-params"/>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
    </doc:related-content-item>
  </xsl:template>
  
  <xsl:template match="lnlink[@service='TRAVERSE'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
    <doc:related-content-item>
      <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
        <xsl:attribute name="content-type">external-content-location</xsl:attribute>
      </xsl:if>
      <doc:related-content-link>
        <ref:lnlink service="TRAVERSE">
          <xsl:apply-templates select="marker"/>
          <ref:locator>
            <ref:locator-key>
              <ref:key-name>
                <xsl:attribute name="name"><xsl:value-of select="key-name/@name"/></xsl:attribute>
              </ref:key-name>
              <ref:key-value>
                <xsl:attribute name="value"><xsl:value-of select="key-value/@value"/></xsl:attribute>
              </ref:key-value>
            </ref:locator-key>
            <ref:locator-params>
              <xsl:choose>
                <xsl:when test="api-params/param[@name='normprotocol']">
                  <xsl:apply-templates select="api-params/param[@name='normprotocol']"/>
                </xsl:when>
                <xsl:otherwise>
                  <proc:param name="normprotocol" value="lexsee"/>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:apply-templates select="api-params/param[@name!='normprotocol']"/>
            </ref:locator-params>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
    </doc:related-content-item>
  </xsl:template>
  
  <xsl:template match="lnlink/@status"/>
  
  <xsl:template match="lnlink[@service='URL'][parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
    <doc:related-content-item>
      <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
        <xsl:attribute name="content-type">external-content-location</xsl:attribute>
      </xsl:if>
      <doc:related-content-link>
        <ref:lnlink service="URL">
          <xsl:apply-templates select="marker"/>
          <ref:locator>
            <xsl:choose>
            <xsl:when test="api-params/param[@name='URL']">
              <ref:locator-key>
                <ref:key-name name="URL"/>
                <ref:key-value>
                  <xsl:attribute name="value"><xsl:value-of select="api-params/param[@name='URL']/@value"/></xsl:attribute>
                </ref:key-value>
              </ref:locator-key>
            </xsl:when>
            <xsl:otherwise>
              <xsl:apply-templates select="api-params"/>
            </xsl:otherwise>  
            </xsl:choose>            
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
    </doc:related-content-item>
  </xsl:template>
  
  <xsl:template match="ci:cite[parent::docinfo:assoc-links or parent::docinfo:assoc-links-grp]">
    <doc:related-content-item>
      <xsl:if test="parent::docinfo:assoc-links[@assoc-content='external-content-location']">
        <xsl:attribute name="content-type">external-content-location</xsl:attribute>
      </xsl:if>
      <doc:related-content-link>
        <ref:lnlink service="TRAVERSE">
          <ref:marker role="label">
            <xsl:value-of select="ci:content"/>
          </ref:marker>
          <ref:locator>
            <ref:locator-key>
              <ref:key-name>
                <xsl:attribute name="name">normcite</xsl:attribute>
              </ref:key-name>
              <ref:key-value>
                <xsl:attribute name="value"><xsl:value-of select="ci:content"/></xsl:attribute>
              </ref:key-value>
            </ref:locator-key>
            <ref:locator-params>
              <xsl:choose>
                <xsl:when test="api-params/param[@name='normprotocol']">
                  <xsl:apply-templates select="api-params/param[@name='normprotocol']"/>
                </xsl:when>
                <xsl:otherwise>
                  <proc:param name="normprotocol" value="lexsee"/>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:if test="//docinfo/docinfo:doc-country/@iso-cc">
                <proc:param>
                  <xsl:attribute name="name">countrycode</xsl:attribute>
                  <xsl:attribute name="value">
                    <xsl:value-of select="//docinfo/docinfo:doc-country/@iso-cc"/>
                  </xsl:attribute>
                </proc:param>
              </xsl:if>
            </ref:locator-params>
          </ref:locator>
        </ref:lnlink>
      </doc:related-content-link>
    </doc:related-content-item>
  </xsl:template>
  </xsl:stylesheet>