<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:source_case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita source_case ci source_cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="subseqcases_cttr.annot">
  <title>cttr:annotations @annotationtype="subseqcases"/cttr:annot
    <lnpid>id-AU02-18430</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refs/cttr:refsection</targetxml> the child element <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem</targetxml> and the attribute
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">@annotationtype</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">@reftype</targetxml> - Should
          contain 1 or more reference sections based on the values: (cttr:refs/cttr:refsection
          @reftype="citing-cases", "citing-publications", "considered-cases",
          "considered-legislation", "appeal-proceedings".) <ul class="- topic/ul ">
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
            <li>Australian Citator documents require that the number of citing cases and considered
              cases be tallied by court name and year in markup that can be displayed in a graph in
              Lexis Advance. Follow the instructions in <xref href="cttr.refsummary.dita#cttr.refsummary"/> to populate
                <targetxml>cttr:refssummary</targetxml> with the required markup.</li>

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
      </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>2014-06-26: <ph id="change_20140626_jm">No direct change to this module. Instructions refer
          to rules for <sourcexml>case:courtinfo</sourcexml> contained in the Head section of this
          CI. Note that rules for child <sourcexml>case:juris</sourcexml> have been revised in the
          Head section. Webteam 258060.</ph></p>
      <p>2014-06-05: <ph id="change_20140605_brt">Added reference to new module for
            <targetxml>cttr:refssummary</targetxml>.</ph></p>
      <p>2013-09-03: <ph id="change_20130903_raj">Added reference to new module for attributes
            <targetxml>@negativesortweight</targetxml> and
            <targetxml>@positivesortweight</targetxml> of
          <targetxml>cttr:usagegroup</targetxml>.</ph></p>
      <p>2013-04-12: <ph id="change_20130412">Added reference to instruction for attributes
          <targetxml>@negativesortweight</targetxml> and <targetxml>@positivesortweight</targetxml>
        of <targetxml>cttr:usagegroup</targetxml>.</ph></p>
      <p>2012-08-23: <ph id="change_20120823">Modified example to use an underscore instead of the two digit country code for
          <targetxml>xml:id</targetxml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU02_citator\subseqcases_cttr.annot.dita  -->


	

	<xsl:template match="source_cttr:annotations">
		<xsl:param name="journalArticleStatus" select="/CITATORDOC/@journalarticle"/>
		<cttr:refsection>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="heading"/>
			<xsl:if test="not($journalArticleStatus = 'true') and (@annotationtype = 'subseqcases' or @annotationtype = 'consideredcases')">
				<xsl:variable name="collectedAnnots">
					<xsl:copy-of select="."/>
				</xsl:variable>
			  <xsl:if test="$collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal]/source_case:info/source_case:courtinfo/source_case:courtname[.!=' - ']">
				<cttr:refssummary>
					<xsl:attribute name="summarytype">court_signal_tally</xsl:attribute>
					<xsl:for-each select="distinct-values(source_cttr:annot/source_cttr:use-group//source_cttr:use/@signal)">
					  <xsl:sort select="not(.='positive')"/>
					  <xsl:sort select="not(.='cautionary')"/>
					  <xsl:sort select="not(.='neutral')"/>
					  <xsl:variable name="groupType" select="."/>
					  <xsl:if test="$collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal = $groupType]/source_case:info/source_case:courtinfo/source_case:courtname[.!=' - ']">
						<cttr:refssummarygroup>
							<xsl:attribute name="grouptype" select="$groupType"/>						  
							<xsl:for-each select="distinct-values($collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal = $groupType]/source_case:info/source_case:courtinfo/source_case:courtname[.!=' - '])">
								<cttr:refssummaryitem documenttype='case'>
									<xsl:variable name="caseValue" select="."/>
									<xsl:attribute name="value" select="$caseValue"/>
									<xsl:value-of select="count($collectedAnnots/source_cttr:annotations//source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal = $groupType and
										source_case:info/source_case:courtinfo/source_case:courtname = $caseValue])"/>
								</cttr:refssummaryitem>
							</xsl:for-each>
						</cttr:refssummarygroup>
					  </xsl:if>
					</xsl:for-each>
				</cttr:refssummary>
			  </xsl:if>
				<!-- JL debugging: not to output year signal tally if there is no year to output them for -->
				<xsl:if test="$collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal]
					/source_case:info/source_case:courtinfo/source_case:dates/source_case:decisiondate/date/@year">
					<cttr:refssummary>
						<xsl:attribute name="summarytype">year_signal_tally</xsl:attribute>
						<xsl:for-each select="distinct-values(source_cttr:annot/source_cttr:use-group//source_cttr:use/@signal)">
						  <xsl:sort select="not(.='positive')"/>
						  <xsl:sort select="not(.='cautionary')"/>
						  <xsl:sort select="not(.='neutral')"/>
							<xsl:variable name="groupType" select="."/>
							<xsl:if test="$collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal = $groupType]
								/source_case:info/source_case:courtinfo/source_case:dates/source_case:decisiondate/date/@year">
								<cttr:refssummarygroup>			          
									<xsl:attribute name="grouptype" select="$groupType"/>
									<xsl:for-each select="distinct-values($collectedAnnots/source_cttr:annotations/source_cttr:annot[source_cttr:use-group//source_cttr:use/@signal = $groupType]
										/source_case:info/source_case:courtinfo/source_case:dates/source_case:decisiondate/date/@year)">
										<cttr:refssummaryitem documenttype='case'>
											<xsl:variable name="caseValue" select="."/>
											<xsl:attribute name="value" select="$caseValue"/>
											<xsl:value-of select="count($collectedAnnots/source_cttr:annotations//source_cttr:annot[source_cttr:use-group/source_cttr:use/@signal = $groupType and  
												source_case:info/source_case:courtinfo/source_case:dates/source_case:decisiondate/date/@year = $caseValue])"/>
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
	
	<xsl:template match="source_cttr:annot[not(parent::source_cttr:annotations/@annotationtype = 'consideredleg')]">
		<cttr:refitem>
			<xsl:variable name="annotTargetElementNameValue">
				<xsl:choose>
					<xsl:when test="parent::source_cttr:annotations/@annotationtype = 'subseqcases'">citingcase</xsl:when>			
					<xsl:when test="parent::source_cttr:annotations/@annotationtype = 'consideredcases'">consideredcase</xsl:when>
					<xsl:when test="parent::source_cttr:annotations/@annotationtype = 'subseqarticles'">citingpub</xsl:when>
				  <xsl:when test="parent::source_cttr:annotations/@annotationtype = 'appealproc'">appealproceeding</xsl:when>
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
					  <xsl:attribute name="pubtype" select="'journal-article'"/>
						<xsl:apply-templates select="@* | node() except(source_case:citations, source_cttr:use-group)"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="@* | node() except(source_case:citations)"/>
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
			  <xsl:when test=". = 'appealproc'">appeal-proceedings</xsl:when>
				<xsl:when test=". = 'consideredleg'">considered-legislation</xsl:when>
				<xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
			</xsl:choose>
		</xsl:attribute>
		
	</xsl:template>
	

	
<xsl:template match="source_cttr:annotations[@annotationtype='subseqarticles']/source_cttr:annot/source_case:info/source_case:casename" priority="25">
  <title xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
    <xsl:apply-templates select="@*|node()"/>
  </title>
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
	

</xsl:stylesheet>