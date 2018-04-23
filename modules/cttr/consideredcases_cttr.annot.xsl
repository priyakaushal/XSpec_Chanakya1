<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="consideredcases_cttr.annot">
  <title>cttr:annotations @annotationtype="consideredcases"/cttr:annot
    <lnpid>id-AU02-18421</lnpid></title>
  <body>
    <section>
      <ul>
        <li>Australian Citator documents require that the number of citing cases and considered
          cases be tallied by court name and year in markup that can be displayed in a graph in
          Lexis Advance. Follow the instructions in <xref href="cttr.refsummary.dita#cttr.refsummary"/> to populate
            <targetxml>cttr:refssummary</targetxml> with the required markup.</li>
        <li>
          <sourcexml>cttr:annotations @annotationtype="consideredcases"/cttr:annot</sourcexml>
          becomes <targetxml>cttr:refsection @reftype="considered-cases"/cttr:refitem</targetxml>
          <note> The value of the attribute /cttr:annotations @annotationtype="consideredcases" maps
            to the attribute /cttr:refsection @reftype="considered-cases". </note> The attributes of
          cttr:annot : <sourcexml class="+ topic/keyword xml-d/sourcexml ">@signal</sourcexml>
          becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:consideredcase @treatment</targetxml> and the child elements are
          described below :
          <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="consideredcases"&gt;
  &lt;cttr:annot signal="positive"&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refsection reftype="considered-cases"&gt;
  &lt;cttr:refitem&gt;
    &lt;cttr:consideredcase treatment="positive"&gt;
    &lt;/cttr:consideredcase&gt;
  &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;                
</pre>
          The children of cttr:annot are described below : <ul class="- topic/ul ">

            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info</sourcexml> becomes
                <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:consideredcase/cttr:caseinfo</targetxml>
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:casename</sourcexml>
                  becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:consideredcase/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>
                </li>
                <li class="- topic/li ">
                  <note class="- topic/note "> The conversion of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo</sourcexml> is
                    discussed in the Head section of this CI. </note>
                </li>
              </ul>
            </li>

            <li class="- topic/li ">
              <note class="- topic/note "> The mapping of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:citations</sourcexml> is same as
                that of cttr:annotations @"subseqcases"/cttr:annot/case:citations. </note>
            </li>

            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use-group</sourcexml> becomes
                <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:consideredcase/cttr:usagegroup</targetxml> and the child element is described
              below: <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:usage/text</targetxml>
                  and the attributes : <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use
                    @signal</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:usage @usagetype</targetxml>
                </li>
              </ul>
              <note> Attributes <targetxml>@negativesortweight</targetxml> and
                  <targetxml>@positivesortweight</targetxml> are added to the element
                  <targetxml>cttr:usagegroup</targetxml>. The vaules for these attributes are
                calculated based on the designation, annotation type, usagegroup type and decision
                date. Please refer to <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita"/>. </note></li>

            <li class="- topic/li ">
              <sourcexml>remotelink /@service="DOC-ID"</sourcexml> becomes
                <targetxml>ref:crossreference</targetxml> that comes with the required child element
                <targetxml>ref:content</targetxml> and with the attribute
                <targetxml>ref:crossreference @crossreferencetype="citatorAlert"</targetxml>. <ul>
                <li>
                  <p> Create <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml>
                    with attributes and children as follows: <ul>
                      <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                          <li>
                            <targetxml>ref:key-name/@name</targetxml> will have the value
                            "DOC-ID".</li>

                          <li><targetxml>key-value/@value</targetxml> will be the value of
                              <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                              <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                            which ever is present (if both are present, use
                              <sourcexml>@remotekey2</sourcexml>).</li>

                        </ul>
                      </li>

                      <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                          <li>
                            <targetxml>ref:key-name/@name</targetxml> will have the value
                            "DOC-ID".</li>

                          <li><targetxml>ref:key-value/@value</targetxml> will be the value of
                              <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                              <sourcexml>@docidref</sourcexml>.</li>

                          <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from
                              <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                            which ever is present (if both are present, use
                              <sourcexml>@refpt</sourcexml>). </li>
                        </ul>
                      </li>
                    </ul>
                  </p>
                  <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from
                      <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU
                    manifest file.</note>
                  <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number
                    must have an underscore added at the start. Also apply other identifier data
                    type formatting as used for <targetxml>xml:id</targetxml> and
                      <targetxml>ref:anchor/@id</targetxml>, e.g. change colon to underscore.</note>
                </li>
                <li>
                  <p> The child element <sourcexml>inlineobject</sourcexml> is converted as follows
                    - <ul>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                          @alttext="Citation information only - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="none"/ref:content</targetxml>, but the text
                        " - Click for CaseBase entry" should be removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                          @alttext="Citation information available - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="none"/ref:content</targetxml>, but the text
                        " - Click for CaseBase entry" should be removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                          @alttext="Positive treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="positive"/ref:content</targetxml>, but the
                        text " - Click for CaseBase entry" should be removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                          @alttext="Neutral treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="neutral"/ref:content</targetxml>, but the
                        text " - Click for CaseBase entry" should be removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                          @alttext="Negative treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="negative"/ref:content</targetxml>, but the
                        text " - Click for CaseBase entry" should be removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject
                          @alttext="Cautionary treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="cautionary"/ref:content</targetxml>, but the
                        text " - Click for CaseBase entry" should be removed. </li>
                    </ul>
                    <note>
                      <sourcexml>inlineobject[@alttext="Click for CaseBase entry"]</sourcexml>
                      becomes <targetxml>ref:crossreference/ref:content</targetxml>. Do not populate
                        <targetxml>@referencedresourcesentiment</targetxml> in this scenario. </note>
                    <note> The content of <sourcexml>inlineobject</sourcexml> is captured in
                        <targetxml>ref:crossreference</targetxml> and its children as decribed in
                      the above instructions. For the handling of icon, the LBU will need to
                      identify icon images definitively. Please refer to inlineobect in the general
                      markup section for more details on handling the icon/images. </note>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="consideredcases"&gt;
  &lt;cttr:annot&gt;
    &lt;remotelink dpsi="0018" docidref="ABCD_1234" refpt="4101" remotekey1="REFPTID" service="DOC-ID"&gt;
      &lt;inlineobject alttext="Positive treatment indicated - Click for CaseBase entry" attachment="web-server" filename="3.gif" type="image"/&gt;
    &lt;/remotelink&gt;
&lt;/cttr:annot&gt;&lt;/cttr:annotations&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refitem&gt;
&lt;cttr:consideredcase&gt;
  &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="positive" referencedresourcetype="citator"&gt;
    &lt;ref:content&gt;Positive treatment indicated&lt;/ref:content&gt;
      &lt;ref:locator anchoridref="_4101"&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="0018-ABCD_1234"/&gt;
        &lt;/ref:locator-key&gt;        
      &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
&lt;/cttr:consideredcase&gt;&lt;/cttr:refitem&gt;                
</pre>
                  </p>
                </li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>2014-06-26: <ph id="change_20140626_jm">No direct change to this module. Instructions refer
          to rules for <sourcexml>case:courtinfo</sourcexml> contained in the Head section of this
          CI. Note that rules for child <sourcexml>case:juris</sourcexml> have been revised in the
          Head section. Webteam 258060.</ph></p>
      <p>2014-06-05: <ph id="change_consideredcases_20140605_brt">Added reference to new module for
            <targetxml>cttr:refssummary</targetxml>.</ph></p>
      <p>2013-09-03: <ph id="change_condideredcases_20130903_raj">Added reference to new module for
          attributes <targetxml>@negativesortweight</targetxml> and
            <targetxml>@positivesortweight</targetxml> of <targetxml>cttr:usagegroup</targetxml>,
          and removed from this module.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\consideredcases_cttr.annot.dita  -->
	<!--*************DOCUMENTATION ONLY, COVERED IN OTHER MODULES ***************** -->
</xsl:stylesheet>