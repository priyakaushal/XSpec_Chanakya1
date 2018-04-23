<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" 
  xmlns:ci="http://www.lexis-nexis.com/ci" 
  xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" 
  xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" 
  xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" 
  xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci source_cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="subseqcases_cttr.annot">
  <title>cttr:annotations @annotationtype="subseqcases"/cttr:annot
    <lnpid>id-HK08-37624</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refs/cttr:refsection</targetxml> the child element 
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem</targetxml> 
          and the attribute
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">@annotationtype</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">@reftype</targetxml> - Should
          contain 1 or more reference sections based on the values: (cttr:refs/cttr:refsection
          @reftype="citing-cases", "citing-publications", "considered-cases",
          "considered-legislation".) <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">heading</sourcexml> becomes
                <targetxml class="+ topic/keyword xml-d/targetxml ">heading</targetxml>
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">title</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">title</targetxml>
                </li>
              </ul>
              <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations&gt;
  &lt;heading&gt;
    &lt;title&gt;Cases referring to this case&lt;/title&gt;
  &lt;/heading&gt;
&lt;/cttr:annotations&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refsection&gt;
  &lt;heading&gt;
    &lt;title&gt;Cases referring to this case&lt;/title&gt;
  &lt;/heading&gt;
&lt;/cttr:refsection&gt;
                
</pre>
            </li>

            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations
                @annotationtype="subseqcases"/cttr:annot</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection
                @reftype="citing-cases"/cttr:refitem</targetxml>
              <note class="- topic/note "> The value of the attribute /cttr:annotations
                @annotationtype="subseqcases" maps to the attribute /cttr:refsection
                @reftype="citing-cases". </note> The attributes of cttr:annot : <sourcexml class="+ topic/keyword xml-d/sourcexml ">@id</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:citingcase
                @xml:id</targetxml> and <sourcexml class="+ topic/keyword xml-d/sourcexml ">@signal</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:citingcase @treatment</targetxml> and the child elements are
              described below : <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="subseqcases"&gt;
  &lt;cttr:annot id="1368397" signal="citation"&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refsection reftype="citing-cases"&gt;
  &lt;cttr:refitem&gt;
    &lt;cttr:citingcase xml:id="_1368397" treatment="citation"&gt;
    &lt;/cttr:citingcase&gt;
  &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;                
</pre>
              <note class="- topic/note ">All xml:id that begin with a number must have an
                underscore added at start, as shown in the above NL example.</note>
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations/cttr:annot/case:info</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection/cttr:refitem/cttr:citingcase/cttr:caseinfo</targetxml>
                  <ul class="- topic/ul ">
                    <li class="- topic/li ">
                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:info/case:casename</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:citingcase/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>
                      <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations&gt;
  &lt;cttr:annot&gt;
    &lt;case:info&gt;
      &lt;case:casename&gt;Seven Network Ltd v News Ltd&lt;/case:casename&gt;
    &lt;/case:info&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refsection&gt;
  &lt;cttr:refitem&gt;
    &lt;cttr:citingcase&gt;
      &lt;cttr:caseinfo&gt;
        &lt;caseinfo:casename&gt;
          &lt;caseinfo:fullcasename&gt;Seven Network Ltd v News Ltd&lt;/caseinfo:fullcasename&gt;
        &lt;/caseinfo:casename&gt;
      &lt;/cttr:caseinfo&gt;
    &lt;/cttr:citingcase&gt; 
  &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;                
</pre>
                      <lines/>
                    </li>
                    <li class="- topic/li ">
                      <note class="- topic/note ">The conversion of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo</sourcexml> is
                        discussed in the Head section of this CI. </note>
                    </li>
                  </ul>
                </li>
                <li class="- topic/li "> The tag <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:citations</sourcexml> is omitted but the content is maintained as
                  described below - <ul class="- topic/ul ">
                    <li class="- topic/li "> The tag <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:citetext</sourcexml> is
                      omitted but the content is maintained as described below: <ul class="- topic/ul ">
                        <li class="- topic/li ">
                          <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:cite</sourcexml>
                          becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:caseinfo/cttr:citations/lnci:cite</targetxml>. <ul class="- topic/ul ">
                            <li class="- topic/li ">
                              <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:case</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:case</targetxml>. <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:caseref</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:caseref</targetxml>. The attribute <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:caseref
                                    @ID</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:caseref
                                    @ID</targetxml> and <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:caseref
                                    @spanref</sourcexml> should be dropped. The children are
                                  described below : <ul class="- topic/ul ">
                                    <li class="- topic/li ">
                                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:reporter @value</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:reporter
                                        @value</targetxml>. </li>
                                    <li class="- topic/li ">
                                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:edition</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:edition</targetxml>. <ul class="- topic/ul ">
                                        <li class="- topic/li "> The child element <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:edition/ci:date @year</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:edition/lnci:date @year</targetxml>. </li>
                                      </ul>
                                    </li>
                                    <li class="- topic/li ">
                                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:page
                                        @num</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:page
                                        @num</targetxml>. </li>
                                    <li class="- topic/li ">
                                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:refnum
                                        @num</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:refnum
                                        @num</targetxml>. </li>
                                  </ul>
                                </li>
                              </ul>
                              <pre xml:space="preserve" class="- topic/pre ">
&lt;case:citations&gt;
  &lt;case:citetext&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:case&gt;
        &lt;ci:caseinfo&gt;
          &lt;ci:decisiondate year="1988"/&gt;
        &lt;/ci:caseinfo&gt;
        &lt;ci:caseref ID="cr000196" spanref="cr000196-001"&gt;
          &lt;ci:reporter value="ALD"/&gt;
          &lt;ci:volume num="15"/&gt;
          &lt;ci:page num="310"/&gt;
        &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;        
    &lt;/ci:cite&gt;
  &lt;/case:citetext&gt;
&lt;/case:citations&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:caseinfo&gt;
  &lt;cttr:citations&gt;
    &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
        &lt;lnci:caseinfo&gt;
          &lt;lnci:decisiondate year="1988"/&gt;
        &lt;/lnci:caseinfo&gt;
        &lt;lnci:caseref ID="cr000196"&gt;
          &lt;lnci:reporter value="ALD"/&gt;
          &lt;lnci:volume num="15"/&gt;
          &lt;lnci:page num="310"/&gt;
        &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;   
    &lt;/lnci:cite&gt;
  &lt;/cttr:citations&gt;
&lt;/cttr:caseinfo&gt;                
</pre>
                            </li>
                            <li class="- topic/li ">
                              <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:content</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">/cttr:caseinfo/cttr:citations/lnci:cite/lnci:content</targetxml>
                              and the child element is described below : <ul class="- topic/ul ">
                                <li class="- topic/li "> The tags <sourcexml class="+ topic/keyword xml-d/sourcexml ">citefragment</sourcexml>, the attribute <sourcexml class="+ topic/keyword xml-d/sourcexml ">citefragment
                                    @searchtype</sourcexml> and its child element <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:span</sourcexml> are
                                  omitted but the content is maintained in <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:content</targetxml>
                                </li>
                              </ul>
                              <pre xml:space="preserve" class="- topic/pre ">
&lt;ci:content&gt;
  &lt;citefragment searchtype="CASE-CITE-REF"&gt;
    &lt;ci:span spanid="cr000006-001"&gt;[2009] FCAFC 166&lt;/ci:span&gt;; 
    &lt;ci:span spanid="cr000007-001"&gt;BC200910812&lt;/ci:span&gt;
  &lt;/citefragment&gt;
&lt;/ci:content&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;lnci:content&gt;[2009] FCAFC 166; BC200910812&lt;/lnci:content&gt;
                
</pre>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use-group</sourcexml>
                  becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:citingcase/cttr:usagegroup</targetxml> and the child element is described
                  below: <ul class="- topic/ul ">
                    <li class="- topic/li ">
                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use</sourcexml>
                      becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:usage/text</targetxml> and the attributes : <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use @signal</sourcexml>
                      becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:usage
                        @usagetype</targetxml>
                    </li>
                  </ul>
                  <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:use-group&gt;
  &lt;cttr:use signal="neutral"&gt;Considered&lt;/cttr:use&gt;
&lt;/cttr:use-group&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:usagegroup&gt;
  &lt;cttr:usage usagetype="neutral"&gt;
    &lt;text&gt;Considered&lt;/text&gt;
  &lt;/cttr:usage&gt;
&lt;/cttr:usagegroup&gt;
                
                  </pre>
                  <note> Attributes <targetxml>@negativesortweight</targetxml> and
                      <targetxml>@positivesortweight</targetxml> are added to the element
                      <targetxml>cttr:usagegroup</targetxml>. The vaules for these attributes are
                    calculated based on the designation, annotation type, usagegroup type and
                    decision date. Please refer to <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita"/>. </note>
                </li>
                <li class="- topic/li ">
                  <sourcexml>remotelink /@service="DOC-ID"</sourcexml> becomes
                    <targetxml>ref:crossreference</targetxml> that comes with the required child
                  element <targetxml>ref:content</targetxml> and with the attribute
                    <targetxml>ref:crossreference @crossreferencetype="citatorAlert"</targetxml>. <ul>
                    <li>
                      <p> Create
                          <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml> with
                        attributes and children as follows: <ul>
                          <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                              <li>
                                <targetxml>ref:key-name/@name</targetxml> will have the value
                                "DOC-ID".</li>
                              <li><targetxml>key-value/@value</targetxml> will be the value of
                                  <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated
                                with <sourcexml>@refpt</sourcexml> or
                                  <sourcexml>@remotekey2</sourcexml>, which ever is present (if both
                                are present, use <sourcexml>@remotekey2</sourcexml>).</li>
                            </ul>
                          </li>
                          <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                              <li>
                                <targetxml>ref:key-name/@name</targetxml> will have the value
                                "DOC-ID".</li>
                              <li><targetxml>ref:key-value/@value</targetxml> will be the value of
                                  <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated
                                with <sourcexml>@docidref</sourcexml>.</li>
                              <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value
                                from <sourcexml>@refpt</sourcexml> or
                                  <sourcexml>@remotekey2</sourcexml>, which ever is present (if both
                                are present, use <sourcexml>@refpt</sourcexml>). </li>
                            </ul>
                          </li>
                        </ul>
                      </p>
                      <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value
                        from <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from
                        the LBU manifest file.</note>
                      <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a
                        number must have an underscore added at the start. Also apply other
                        identifier data type formatting as used for <targetxml>xml:id</targetxml>
                        and <targetxml>ref:anchor/@id</targetxml>, e.g. change colon to
                        underscore.</note>
                    </li>
                    <li>
                      <p> The child element <sourcexml>inlineobject</sourcexml> is converted as
                        follows - <ul>
                          <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                              @alttext="Citation information only - Click for CaseBase
                              entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                              @referencedresourcesentiment="none"/ref:content</targetxml>, but the
                            text " - Click for CaseBase entry" should be removed. </li>
                          <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                              @alttext="Citation information available - Click for CaseBase
                              entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                              @referencedresourcesentiment="none"/ref:content</targetxml>, but the
                            text " - Click for CaseBase entry" should be removed. </li>
                          <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                              @alttext="Positive treatment indicated - Click for CaseBase
                              entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                              @referencedresourcesentiment="positive"/ref:content</targetxml>, but
                            the text " - Click for CaseBase entry" should be removed. </li>
                          <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                              @alttext="Neutral treatment indicated - Click for CaseBase
                              entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                              @referencedresourcesentiment="neutral"/ref:content</targetxml>, but
                            the text " - Click for CaseBase entry" should be removed. </li>
                          <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                              @alttext="Negative treatment indicated - Click for CaseBase
                              entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                              @referencedresourcesentiment="negative"/ref:content</targetxml>, but
                            the text " - Click for CaseBase entry" should be removed. </li>
                          <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                              @alttext="Cautionary treatment indicated - Click for CaseBase
                              entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                              @referencedresourcesentiment="cautionary"/ref:content</targetxml>, but
                            the text " - Click for CaseBase entry" should be removed. </li>
                        </ul>
                        <note>
                          <sourcexml>inlineobject[@alttext="Click for CaseBase entry"]</sourcexml>
                          becomes <targetxml>ref:crossreference/ref:content</targetxml>. Do not
                          populate <targetxml>@referencedresourcesentiment</targetxml> in this
                          scenario. </note>
                        <note> The content of <sourcexml>inlineobject</sourcexml> is captured in
                            <targetxml>ref:crossreference</targetxml> and its children as decribed
                          in the above instructions. For the handling of icon, the LBU will need to
                          identify icon images definitively. Please refer to inlineobect in the
                          general markup section for more details on handling the icon/images. </note>
                        <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="subseqcases"&gt;
  &lt;cttr:annot&gt;
    &lt;remotelink dpsi="0018" docidref="ABCD_1234" refpt="484346" remotekey1="REFPTID" service="DOC-ID"&gt;
      &lt;inlineobject alttext="Citation information only - Click for CaseBase entry" attachment="web-server" filename="5.gif" type="image"/&gt;
    &lt;/remotelink&gt;
&lt;/cttr:annot&gt;&lt;/cttr:annotations&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refitem&gt;
  &lt;cttr:citingcase&gt;
    &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="none" referencedresourcetype="citator"&gt;
      &lt;ref:content&gt;Citation information only&lt;/ref:content&gt;
        &lt;ref:locator anchoridref="_484346"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0018-ABCD_1234"/&gt;
          &lt;/ref:locator-key&gt;         
        &lt;/ref:locator&gt;
      &lt;/ref:crossreference&gt;
    &lt;/cttr:citingcase&gt;
&lt;/cttr:refitem&gt;                
</pre>
                      </p>
                    </li>
                  </ul>
                </li>

              </ul>
            </li>
          </ul>
        </li>
        <li>
          <p>
      <sourcexml>cttr:body/cttr:content/cttr:annotations @annotationtype="appealproc"</sourcexml>
      becomes <targetxml>cttr:body/cttr:history/cttr:casehist</targetxml>. <note>Please note that
          <sourcexml>cttr:content</sourcexml> - This is a container element that does not need to be
        carried forward in the conversion. Also, the following conversion instruction is applicable
        only if the attribute value is "appealproc" : <sourcexml>cttr:annotations
          @annotationtype="appealproc"</sourcexml>. For all other values, please refer to
        "References" section. </note> The children are described below: <ul>
        <li>
          <sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml>. The children are
          described below: <ul>
            <li>
              <sourcexml>title</sourcexml> becomes <targetxml>title</targetxml>
            </li>
          </ul>
          <pre>
<![CDATA[
<cttr:body>
  <cttr:content>
    <cttr:annotations annotationtype="appealproc">
      <heading>
        <title>Appeal proceedings</title>
      </heading>
    </cttr:annotations>
  </cttr:content>
</cttr:body>
]]>
<b>Becomes</b>
<![CDATA[
<cttr:body>
  <cttr:history>
    <cttr:casehist>
      <heading>
        <title>Appeal proceedings</title>
      </heading>
    </cttr:casehist>
  </cttr:history>
</cttr:body>
]]>                
</pre>
        </li>
        <li>Create <targetxml>cttr:priorhist</targetxml> and process the children as follows: 
            
        </li>
        <li>
          <sourcexml>cttr:annot </sourcexml> becomes
            <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision </targetxml>. and attribute
            <sourcexml>@signal</sourcexml> becomes <targetxml>@treatment</targetxml> means
            <sourcexml>i.e cttr:annot[@signal="positive"]</sourcexml> become
            <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision[@treatment="positive"]
          </targetxml>. <note> Please note that the value of the attribute <sourcexml>cttr:annot
              @signal="positive"</sourcexml> maps to the attribute <targetxml>cttr:histdecision
              @treatment="positive"</targetxml>.  and attribute value<sourcexml>cttr:annot
              @signal="negative"</sourcexml> maps to the attribute <targetxml>cttr:histdecision
              @treatment="negative"</targetxml>.</note><p>The attribute <sourcexml>cttr:annot
              @id</sourcexml> becomes <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision
              @xml:id</targetxml>. The children are described below:</p>
          <ul id="ul_zvq_n3x_5bb">
            <li>
              <sourcexml>case:info</sourcexml> becomes
                <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision/cttr:caseinfo</targetxml>.
              The children are described below: <ul id="ul_twq_n3x_5bb">
                <li>
                  <sourcexml>case:casename</sourcexml> becomes
                    <targetxml>caseinfo:casename/caseinfo:fullcasename</targetxml>. <pre>
<![CDATA[
<cttr:content>
    <cttr:annotations annotationtype="appealproc">
        <heading>
            <title>Appeal proceedings</title>
        </heading>
        <cttr:annot id="72404" signal="positive">
            <case:info>
                <case:casename>Lee Mei Kiu v Hhome Cafe Ltd &amp; Anor</case:casename>
                .............
            </case:info>
        </cttr:annot>
    </cttr:annotations>
</cttr:content>
]]>
<b>Becomes</b>
<![CDATA[
<cttr:body>
    <cttr:history>
        <cttr:casehist>
            <heading>
                <title>Appeal proceedings</title>
            </heading>
            <cttr:priorhist>
                <cttr:histitem>
                    <cttr:histdecision xml:id="72404" treatment="positive">
                        <cttr:caseinfo>
                            <caseinfo:casename>
                                <caseinfo:fullcasename>Lee Mei Kiu v Hhome Cafe Ltd &amp; Anor</caseinfo:fullcasename>
                            </caseinfo:casename>
                            ...........
                        </cttr:caseinfo>
                    </cttr:histdecision>
                </cttr:histitem>
            </cttr:priorhist>     
        </cttr:casehist>
    </cttr:history>
</cttr:body>
]]>                
</pre>
                </li>
                <li><sourcexml>case:parallelcite/ci:cite</sourcexml> is now mapped to two places:
                    <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml> and
                    <targetxml>cttr:caseinfo/ref:citations/ref:cite4thisresource/lnci:cite,</targetxml>
                  see example <note> Duplicate citations cannot have the same IDs or the document
                    becomes invalid. To avoid this validation error, append the IDs for the
                    citations in ref:citations/ref:cite4thisresource/lnci:cite with extra text (such
                    as '_1') to make them unique.</note> The children can be converted as follows :<ul>
                    <li><sourcexml>ci:case</sourcexml> becomes <targetxml>lnci:case</targetxml>.<ul>
                        <li><sourcexml>ci:caseinfo</sourcexml> becomes
                            <targetxml>lnci:caseinfo</targetxml><ul>
                            <li>
                              <sourcexml>ci:decisiondate</sourcexml> becomes
                                <targetxml>lnci:decisiondate</targetxml>
                            </li>
                          </ul>
                        </li>
                        <li>
                          <sourcexml>ci:caseref</sourcexml> becomes
                            <targetxml>lnci:caseref</targetxml>. The attribute <sourcexml>ci:caseref
                            @ID</sourcexml> becomes <targetxml>lnci:caseref @ID</targetxml> and
                            <sourcexml>ci:caseref @spanref</sourcexml> should be dropped. The
                          children are described below : <ul>
                            <li>
                              <sourcexml>ci:reporter @value</sourcexml> becomes
                                <targetxml>lnci:reporter @value</targetxml>. </li>
                            <li>
                              <sourcexml>ci:edition</sourcexml> becomes
                                <targetxml>lnci:edition</targetxml>. <ul>
                                <li> The child element <sourcexml>ci:edition/ci:date
                                    @year</sourcexml> becomes <targetxml>lnci:edition/lnci:date
                                    @year</targetxml>. </li>
                              </ul></li>
                            <li><sourcexml>ci:page @num</sourcexml> becomes <targetxml>lnci:page
                                @num</targetxml>. </li>
                            <li>
                              <sourcexml>ci:refnum @num</sourcexml> becomes <targetxml>lnci:refnum
                                @num</targetxml>.</li>
                          </ul></li>
                      </ul></li>
                    <li><sourcexml>ci:content </sourcexml>maps to
                        <targetxml>lnci:content</targetxml></li>
                  </ul>
                  <pre>
<![CDATA[
<case:info>  
    ........
    <case:parallelcite>
        <ci:cite searchtype="CASE-REF">
            <ci:case>
                <ci:caseref ID="cr000001" spanref="cr000001-001">
                    <ci:reporter value="HKCU"/>
                    <ci:edition>
                        <ci:date year="2011"/>
                    </ci:edition>
                    <ci:page num="1266"/>
                </ci:caseref>
            </ci:case>
            <ci:content>
                <citefragment searchtype="CASE-CITE-REF">
                    <ci:span spanid="cr000001-001">[2011] HKCU 1266</ci:span>
                </citefragment>
            </ci:content>
        </ci:cite>
    </case:parallelcite>
</case:info>
]]>
<b>Becomes</b>
<![CDATA[
<cttr:caseinfo>
    .........
   <cttr:citations>
      <lnci:cite type="case">
          <lnci:case>
              <lnci:caseref ID="cr000001">
                  <lnci:reporter value="HKCU"/>
                  <lnci:edition>
                      <lnci:date year="2011"/>
                  </lnci:edition>
                  <lnci:page num="1266"/>
              </lnci:caseref>
          </lnci:case>
          <lnci:content>[2011] HKCU 1266</lnci:content>
      </lnci:cite>
  </cttr:citations>
  <ref:citations>
      <ref:cite4thisresource>
          <lnci:cite type="case">
              <lnci:case>
                  <lnci:caseref ID="cr000001_1">
                      <lnci:reporter value="HKCU"/>
                      <lnci:edition>
                          <lnci:date year="2011"/>
                      </lnci:edition>
                      <lnci:page num="1266"/>
                  </lnci:caseref>
              </lnci:case>
              <lnci:content>[2011] HKCU 1266</lnci:content>
          </lnci:cite>
      </ref:cite4thisresource>
  </ref:citations>
</cttr:caseinfo>
]]>                
</pre>
                </li>
              </ul>
              <ul>
                <li><sourcexml>case:courtinfo</sourcexml> the content consist of and it's maintained in
              the following three elements : <targetxml>jurisinfo:courtinfo</targetxml>,
                <targetxml>courtcase:judges</targetxml> and <targetxml>decision:dates</targetxml>
              and the children are populated as below : <ul>
                <li><sourcexml>case:info/case:courtinfo/case:courtname</sourcexml> becomes
                    <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
                </li></ul><ul>
                <li><sourcexml>case:info/case:courtinfo/case:courtcode</sourcexml> becomes
                    <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.
                </li>
              </ul>
                </li>
              </ul>
              <pre>
<![CDATA[
<case:courtinfo>
          <case:courtname>HKCFI</case:courtname>
          <case:courtcode>HKCFI</case:courtcode>
</case:courtinfo>
]]> 
<b>Becomes</b>
<![CDATA[
<jurisinfo:courtinfo> 
    <jurisinfo:alternatecourtcode alternatecourtcode="HKCFI"/>
    <jurisinfo:courtname>HKCFI</jurisinfo:courtname>
</jurisinfo:courtinfo> 
]]> 
              </pre>
              <ul><li><sourcexml>case:judges</sourcexml> becomes
                <targetxml>cttr:caseinfo/courtcase:judges</targetxml> and the children are populated
              as below : › 
                <ul>
                  <li><sourcexml>case:judge</sourcexml> becomes
                <targetxml>person:judge/person:person/person:name.text </targetxml></li></ul>
              <pre>
              <![CDATA[
<case:judges>
            <case:judge>Deputy Judge L Chan</case:judge>
</case:judges>
]]>
<b>Becomes</b>
 <![CDATA[
<courtcase:judges>
    <person:judge>
        <person:person>
          <person:name.text>Deputy Judge L Chan</person:name.text>
        </person:person>
    </person:judge>
</courtcase:judges>
]]>
            </pre>
              </li>
              </ul>
              <ul>
                <li>
                  <sourcexml>case:dates</sourcexml> becomes <targetxml>decision:dates</targetxml>
                  and the children are populated as below : › <ul>
                    <li>
                      <sourcexml>case:dates/case:decisiondate</sourcexml> becomes<targetxml>
                        decision:dates/decision:decisiondate</targetxml> and the children are
                      populated as below: </li>
                  </ul><ul>
                    <li><sourcexml>date</sourcexml> becomes <targetxml>date-text</targetxml>; the
                      conversion also covers the attributes <sourcexml>@day</sourcexml> becomes
                        <targetxml>decision:decisiondate/@day</targetxml>
                      <sourcexml>@month</sourcexml> becomes
                        <targetxml>decision:decisiondate/@month</targetxml>
                      <sourcexml>@year</sourcexml> becomes
                        <targetxml>decision:decisiondate/@year</targetxml></li>
                  </ul><note>Please note that the schema allows @day to be a single digit and hence
                    the leading zero is not required in the<targetxml> decision:decisiondate
                      @day.</targetxml>
                  </note><note>Please note that the attribute
                      <targetxml>decision:decisiondate/@normdate</targetxml> needs to be populated
                    for all the <targetxml>decision:decisiondate</targetxml> for sorting purposes.
                    Please see the example below for more details :</note></li>
            
              </ul>
            <pre>
 <![CDATA[
<case:dates>
  <case:decisiondate>
    <date year="2011" month="06" day="24">24/6/2011</date>
  </case:decisiondate>
</case:dates>
]]>
<b>Becomes</b>
 <![CDATA[
  <decision:dates>
      <decision:decisiondate day="24" month="06" year="2011" normdate="2011-06-24">
            <date-text>24/6/2011</date-text>
      </decision:decisiondate>
 </decision:dates>            
   ]]>         </pre>
<ul>
  <li>
                  <sourcexml>case:juris</sourcexml> has Country code: <p>
                    <b>The following values are countries, described here in format X(Y) where X is
                      the source value and Y is the target code:</b> BEL(BZ), CAN(CA), CTH(AU),
                    EUR(EU), FJ(FJ), FRA(FR), FRG(DE), HK(HK), IND(IN), IRE(IE), ISR(IL), JAM(JM),
                    JAP(JP), MA(MY), NI(NF), NIF(NF), NIS(NF), NZ(NZ), PAK(PK), PNG(PG), PRC(CN),
                    SAF(ZA), SNG(SG), T&amp;T(TT), UK(GB), UN(UN), US(US) </p>
                  <p><sourcexml>case:info/case:courtinfo/case:juris</sourcexml> maps to three
                    places:</p>
                  <p><targetxml>cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction</targetxml>
                    with children: </p>
    <ul>
      <li><targetxml >jurisinfo:location/location:country[@codescheme="ISO-3166-1"
        @countrycode="Y"]</targetxml> where "Y" is the
        target code provided above. The <targetxml>@codescheme</targetxml> value is hard-coded.</li>
      <li><targetxml>jurisinfo:system</targetxml> populated with the
        source value.</li>
      <li><targetxml>dc:metadata/dc:coverage/location:country[@codescheme="ISO-3166-1"
        @countrycode="Y"]</targetxml> where "Y" is the target code
        provided above. The <targetxml>@codescheme</targetxml> value is hard-coded.</li>
    </ul>
    <note>The source values are <b>not</b> case
      sensitive, e.g. may be CTH or Cth. The most common data are for
      Australia and New Zealand, CTH(AU) and NZ(NZ). The others are less
      frequent.</note>
    <note>The country listing above shows three source
      values with same target code (NF). That is correct.</note>
    <pre>
       <![CDATA[ 
       <case:juris>HK</case:juris>
     ]]>
<b>Becomes</b>
 <![CDATA[ 
 <jurisinfo:courtinfo>
    <jurisinfo:jurisdiction>
        <jurisinfo:location>
          <location:country countrycode="HK" codescheme="ISO-3166-1"/>
        </jurisinfo:location>
      <jurisinfo:system>HK</jurisinfo:system>
    </jurisinfo:jurisdiction>
 </jurisinfo:courtinfo>
 
 <dc:metadata>...
        <dc:coverage>
        <location:country codescheme="ISO-3166-1" countrycode="HK"/>
        </dc:coverage>
</dc:metadata>

   ]]>
    </pre>
    
 </li>
  </ul>
  </li>
  </ul>           
       
        <ul>
          <li>
              <sourcexml>cttr:use-group</sourcexml> becomes
                <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision/cttr:usagegroup</targetxml>
              and the child element is described below: <ul>
                <li>
                  <sourcexml>cttr:use</sourcexml> becomes <targetxml>cttr:usage/text</targetxml> and
                  the attributes : <sourcexml>cttr:use @signal</sourcexml> becomes
                    <targetxml>cttr:usage @usagetype</targetxml>
                </li>
              </ul>
              <pre>
<![CDATA[<cttr:use-group>
  <cttr:use signal="positive">Affirmed</cttr:use>
</cttr:use-group>
]]>
<b>Becomes</b>
<![CDATA[
<cttr:body>
  <cttr:history>
    <cttr:casehist>
      <cttr:priorhist>
        <cttr:histitem>
          <cttr:histdecision>
            <cttr:usagegroup>
              <cttr:usage usagetype="positive">
                <text>Affirmed</text>
              </cttr:usage>
            </cttr:usagegroup>
          </cttr:histdecision>
        </cttr:histitem>
      </cttr:priorhist>              
    </cttr:casehist>
  </cttr:history>
</cttr:body>
]]>        
            </pre>
            </li>
        </ul>
        </li>
        </ul>
   </p>
        </li>
        
      </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>2017-11-13: <ph id="change_20171113_SS">Updated the instruction for handling <source>cttr:annotations[@annotationtype="appealproc"]</source> and it's child nodes.</ph></p>
      <p>2016-04-19: <ph id="change_20160419_AS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

  <xsl:template match="source_cttr:annotations[not(@annotationtype = 'appealproc')]">
	  <xsl:param name="journalArticleStatus" select="/CITATORDOC/@journalarticle"/>
			<cttr:refsection>
			  <xsl:apply-templates select="@*"/>
			  <xsl:apply-templates select="heading"/>
			  <xsl:if test="not($journalArticleStatus = 'true') and (@annotationtype = 'subseqcases' or @annotationtype = 'consideredcases')">
			    <xsl:variable name="collectedAnnots">
			      <xsl:copy-of select="."/>
			    </xsl:variable>
			    <cttr:refssummary>
			      <xsl:attribute name="summarytype">court_signal_tally</xsl:attribute>
			      <xsl:for-each select="distinct-values(source_cttr:annot/source_cttr:use-group//source_cttr:use/@signal)">
			        <cttr:refssummarygroup>
			          <xsl:variable name="groupType" select="."/>
			          <xsl:attribute name="grouptype" select="$groupType"/>
			          <xsl:for-each select="distinct-values($collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal = $groupType]/case:info/case:courtinfo/case:courtname)">
			            <cttr:refssummaryitem documenttype='case'>
			              <xsl:variable name="caseValue" select="."/>
			              <xsl:attribute name="value" select="$caseValue"/>
			              <xsl:value-of select="count($collectedAnnots/source_cttr:annotations//source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal = $groupType and
			                case:info/case:courtinfo/case:courtname = $caseValue])"/>
			            </cttr:refssummaryitem>
			          </xsl:for-each>
			        </cttr:refssummarygroup>
			      </xsl:for-each>
			    </cttr:refssummary>
			    <!-- JL debugging: not to output year signal tally if there is no year to output them for -->
			    <xsl:if test="$collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal]
			      /case:info/case:courtinfo/case:dates/case:decisiondate/date/@year">
			    <cttr:refssummary>
			      <xsl:attribute name="summarytype">year_signal_tally</xsl:attribute>
			      <xsl:for-each select="distinct-values(source_cttr:annot/source_cttr:use-group//source_cttr:use/@signal)">
			        <xsl:variable name="groupType" select="."/>
			        <xsl:if test="$collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal = $groupType]
			          /case:info/case:courtinfo/case:dates/case:decisiondate/date/@year">
			        <cttr:refssummarygroup>			          
			          <xsl:attribute name="grouptype" select="$groupType"/>
			          <xsl:for-each select="distinct-values($collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal = $groupType]
			            /case:info/case:courtinfo/case:dates/case:decisiondate/date/@year)">
			            <cttr:refssummaryitem documenttype='case'>
			              <xsl:variable name="caseValue" select="."/>
			              <xsl:attribute name="value" select="$caseValue"/>
			              <xsl:value-of select="count($collectedAnnots/source_cttr:annotations//source_cttr:annot[source_cttr:use-group/source_cttr:use/@signal = $groupType and  
			                case:info/case:courtinfo/case:dates/case:decisiondate/date/@year = $caseValue])"/>
			            </cttr:refssummaryitem>
			          </xsl:for-each>
			        </cttr:refssummarygroup>
			        </xsl:if>
			      </xsl:for-each>
			    </cttr:refssummary>
			    </xsl:if>
			    </xsl:if>
				<xsl:apply-templates select="node() except heading"/>
			</cttr:refsection>

	</xsl:template>

  <xsl:template match="source_cttr:annot[not(parent::source_cttr:annotations/@annotationtype = 'consideredleg' or parent::source_cttr:annotations/@annotationtype = 'appealproc')]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem   -->
		<cttr:refitem>
		  <xsl:variable name="annotTargetElementNameValue">
		    <xsl:choose>
		      <xsl:when test="parent::source_cttr:annotations/@annotationtype = 'subseqcases'">citingcase</xsl:when>			
		      <xsl:when test="parent::source_cttr:annotations/@annotationtype = 'consideredcases'">consideredcase</xsl:when>
		      <xsl:when test="parent::source_cttr:annotations/@annotationtype = 'subseqarticles'">citingpub</xsl:when>
		      <!--<xsl:when test="parent::source_cttr:annotations/@annotationtype = 'appealproc'">appealproceeding</xsl:when>-->
		    </xsl:choose>
		  </xsl:variable>
			<xsl:element name="{concat('cttr:' , $annotTargetElementNameValue)}">
			  <xsl:choose>
			    <!-- See HK08_subseqarticles_cttr.annot.xsl for dropping cttr:use-group in 'subseqarticles' annotations -->
			    <!--  <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use-group</sourcexml>, the child element 
            	<sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use</sourcexml> and the attribute 
            	<sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use @signal</sourcexml> are suppressed (both tag and content). 
            	<note class="- topic/note ">Please note that cttr:use-group, the
                child element cttr:use and the attribute cttr:use @signal are intentionally suppressed only for cttr:annotations
                @annotationtype="subseqarticles”.</note>
            </li> -->
			    <xsl:when test="parent::source_cttr:annotations[@annotationtype='subseqarticles']">
			      <xsl:apply-templates select="@* | node() except(case:citations, source_cttr:use-group)"/>
			    </xsl:when>
			    <xsl:otherwise>
			      <xsl:apply-templates select="@* | node() except(case:citations)"/>
			    </xsl:otherwise>
			  </xsl:choose>
			</xsl:element>
		</cttr:refitem>

	</xsl:template>
  
	<xsl:template match="source_cttr:annotations/@annotationtype"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @reftype   -->
	  <xsl:attribute name="reftype">
	    <xsl:choose>
	      <xsl:when test=". = 'subseqcases'">citing-cases</xsl:when>			
	      <xsl:when test=". = 'consideredcases'">considered-cases</xsl:when>
	      <xsl:when test=". = 'subseqarticles'">citing-publications</xsl:when>
	      <xsl:when test=". = 'consideredleg'">considered-legislation</xsl:when>
	      <!--<xsl:when test=". = 'appealproc'">appeal-proceedings</xsl:when>-->
	      <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
	    </xsl:choose>
	  </xsl:attribute>

	</xsl:template>

	<xsl:template match="source_cttr:annot/@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase@treatment   -->
		<xsl:attribute name="treatment">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>

<xsl:template match="case:citations">
  <cttr:citations>
    <xsl:apply-templates select="@* | node()"/>
  </cttr:citations>
</xsl:template>
  
  <xsl:template match="case:citetext">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>
  
  <xsl:template match="inlineobject" mode="citator-ref">
    <xsl:if test="contains(@alttext , '- Click for CaseBase entry')">    
    <xsl:attribute name="referencedresourcesentiment">
      <xsl:choose>
        <xsl:when test="starts-with(@alttext , 'Citation')"><xsl:text>none</xsl:text></xsl:when>
        <xsl:when test="starts-with(@alttext , 'Positive')"><xsl:text>positive</xsl:text></xsl:when>
        <xsl:when test="starts-with(@alttext , 'Neutral')"><xsl:text>neutral</xsl:text></xsl:when>
        <xsl:when test="starts-with(@alttext , 'Negative')"><xsl:text>negative</xsl:text></xsl:when>
        <xsl:when test="starts-with(@alttext , 'Cautionary')"><xsl:text>cautionary</xsl:text></xsl:when>
      </xsl:choose>
    </xsl:attribute>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="source_cttr:annotations[@annotationtype = 'appealproc']">
    <cttr:casehist>
      <xsl:apply-templates select="@* except (@annotationtype | @id)"/>
      <xsl:apply-templates select="heading"/>
      <cttr:priorhist>
        <!-- Awantika:2017-11-20-Updated for cttr:annot when they occur more than one.-->
      <xsl:for-each select="child::source_cttr:annot">
        
          <cttr:histitem>
            <cttr:histdecision>
              <xsl:attribute name="treatment">
                <xsl:value-of select="@signal"/>
              </xsl:attribute>
              <xsl:if test="@id">
                <xsl:attribute name="xml:id">
                  <xsl:apply-templates select="@id"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="child::case:info">
                <cttr:caseinfo>
                  <xsl:apply-templates select="case:info/child::node()"/>
                  <xsl:if test="case:citations[not(child::case:citetext) or child::ci:cite] | case:citations/case:citetext">
                    <ref:citations>
                      <xsl:if test="descendant::ci:cite">
                        <ref:cite4thisresource>
                          <xsl:apply-templates select="case:citations/child::node()"/>
                        </ref:cite4thisresource>
                      </xsl:if>
                    </ref:citations>
                  </xsl:if>
                </cttr:caseinfo>
              </xsl:if>
              <xsl:if test="source_cttr:use-group">
                <cttr:usagegroup>
                  <xsl:if test="descendant::source_cttr:use">
                    <cttr:usage>
                      <xsl:attribute name="usagetype">
                        <xsl:value-of select="source_cttr:use-group/source_cttr:use/@signal"/>
                      </xsl:attribute>
                      <text>
                        <xsl:apply-templates select="source_cttr:use-group/source_cttr:use/child::node()"/>
                      </text>
                    </cttr:usage>
                  </xsl:if>
                </cttr:usagegroup>
                <xsl:apply-templates select="child::* except (case:info | case:citations | source_cttr:use-group | heading)"/>
              </xsl:if>
            </cttr:histdecision>
          </cttr:histitem>
        
      </xsl:for-each>
      </cttr:priorhist>
        <!--<xsl:if test="child::source_cttr:annot[@signal]">
        <cttr:priorhist>
          <cttr:histitem>
            <cttr:histdecision>
              <xsl:if test="./child::source_cttr:annot/@id">
                <xsl:attribute name="xml:id">
                  <xsl:apply-templates select="./child::source_cttr:annot/@id"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:attribute name="treatment">
                <xsl:apply-templates select="child::source_cttr:annot/@signal"/></xsl:attribute>
              <xsl:if test="child::source_cttr:annot/case:info">
                <cttr:caseinfo>
                  <xsl:apply-templates select="child::source_cttr:annot/case:info/child::node()"/>
                  <xsl:if test="child::source_cttr:annot/case:citations[not(child::case:citetext) or child::ci:cite] | child::source_cttr:annot/case:citations/case:citetext">
                    <ref:citations>
                      <xsl:if test="descendant::ci:cite">
                        <ref:cite4thisresource>
                          <xsl:apply-templates select="child::source_cttr:annot/case:citations/child::node()"/>
                        </ref:cite4thisresource>
                      </xsl:if>
                    </ref:citations>
                  </xsl:if>
                </cttr:caseinfo>
              </xsl:if>
              <xsl:if test="child::source_cttr:annot/source_cttr:use-group">
                <cttr:usagegroup>
                  <xsl:if test="descendant::source_cttr:use">
                    <cttr:usage>
                      <xsl:attribute name="usagetype">
                        <xsl:value-of select="child::source_cttr:annot/source_cttr:use-group/source_cttr:use/@signal"/>
                      </xsl:attribute>
                      <text>
                        <xsl:apply-templates select="child::source_cttr:annot/source_cttr:use-group/source_cttr:use/child::node()"/>
                      </text>
                    </cttr:usage>
                  </xsl:if>
                </cttr:usagegroup>
                <xsl:apply-templates select="child::source_cttr:annot/child::* except (child::source_cttr:annot/case:info | child::source_cttr:annot/case:citations | child::source_cttr:annot/source_cttr:use-group | child::source_cttr:annot/heading)"/>
              </xsl:if>
            </cttr:histdecision>
          </cttr:histitem>
        </cttr:priorhist>
      </xsl:if>-->
    </cttr:casehist>
  </xsl:template>
  
  
  
</xsl:stylesheet>