<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="subseqcases_cttr.annot">
  <title>cttr:annotations @annotationtype="subseqcases | secondary-sources"/cttr:annot
    <lnpid>id-IN04-38824</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>cttr:annotations</sourcexml> becomes
            <targetxml>cttr:refs/cttr:refsection</targetxml> the child element
            <sourcexml>cttr:annot</sourcexml> becomes <targetxml>cttr:refitem</targetxml> and the
          attribute <sourcexml>@annotationtype</sourcexml> becomes <targetxml>@reftype</targetxml> -
          Should contain 1 or more reference sections based on the values:
            (<targetxml>cttr:refs/cttr:refsection@reftype</targetxml>="citing-cases",
          "citing-publications", "considered-cases", "considered-legislation",
          "appeal-proceedings".) <ul>
            <li>
              <sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml>
              <ul>
                <li>
                  <sourcexml>title</sourcexml> becomes <targetxml>title</targetxml>
                </li>
              </ul>
              <pre>
              
&lt;cttr:annotations&gt;
  &lt;heading&gt;
    &lt;title&gt;Legislation considered by this case&lt;/title&gt;
  &lt;/heading&gt;
&lt;/cttr:annotations&gt;

<b>Becomes</b>

&lt;cttr:refsection&gt;
  &lt;heading&gt;
    &lt;title&gt;Legislation considered by this case&lt;/title&gt;
  &lt;/heading&gt;
&lt;/cttr:refsection&gt;
              
            </pre>
            </li>
            <li>
              <sourcexml>cttr:annotations @annotationtype="subseqcases |
                secondary-sources"/cttr:annot</sourcexml> becomes <targetxml>cttr:refsection
                @reftype="citing-cases"/cttr:refitem</targetxml>
              <note class="- topic/note "> The value of the attribute
                  <sourcexml>/cttr:annotations/@annotationtype="subseqcases"</sourcexml> OR
                  <sourcexml>@annotationtype="secondary-sources"</sourcexml> maps to the attribute
                  <targetxml>/cttr:refsection @reftype="citing-cases"</targetxml>. </note> The
              attributes of cttr:annot : <sourcexml>@id</sourcexml> becomes
                <targetxml>cttr:refitem/cttr:citingcase @xml:id</targetxml> and
                <sourcexml>@signal</sourcexml> becomes <targetxml>cttr:refitem/cttr:citingcase
                @treatment</targetxml> and the child elements are described below : <pre>
              
&lt;cttr:annotations annotationtype="subseqcases"&gt;
  &lt;heading&gt;
    &lt;title&gt;Cases referring to this case&lt;/title&gt;
  &lt;/heading&gt;
  &lt;cttr:annot id="1368397"&gt;
  ...
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations

<b>Becomes</b>

&lt;cttr:refsection reftype="citing-cases"&gt;
  &lt;heading&gt;
    &lt;title&gt;Cases referring to this case&lt;/title&gt;
  &lt;/heading&gt;
  &lt;cttr:refitem&gt;
    &lt;cttr:citingcase xml:id="_1368397"&gt;
    ...
    &lt;/cttr:citingcase&gt;
  &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;                

            </pre>
              <note class="- topic/note ">All xml:id that begin with a number must have an
                underscore added at start, as shown in the above NL example.</note>
              <ul>
                <li>
                  <sourcexml>cttr:annotations/cttr:annot/case:info</sourcexml> becomes
                    <targetxml>cttr:refsection/cttr:refitem/cttr:citingcase/cttr:caseinfo</targetxml>
                  <ul>
                    <li>
                      <sourcexml>cttr:annot/case:info/case:casename</sourcexml> becomes
                        <targetxml>cttr:refitem/cttr:citingcase/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>
                      <pre>

&lt;cttr:annotations&gt;
  &lt;cttr:annot&gt;
    &lt;case:info&gt;
      &lt;case:casename&gt;S. M. Jakati and another Versus S. M. Borkar and others&lt;/case:casename&gt;
    &lt;/case:info&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;

<b>Becomes</b>

&lt;cttr:refsection&gt;
  &lt;cttr:refitem&gt;
    &lt;cttr:citingcase&gt;
      &lt;cttr:caseinfo&gt;
        &lt;caseinfo:casename&gt;
          &lt;caseinfo:fullcasename&gt;S. M. Jakati and another Versus S. M. Borkar and others&lt;/caseinfo:fullcasename&gt;
        &lt;/caseinfo:casename&gt;
      &lt;/cttr:caseinfo&gt;
    &lt;/cttr:citingcase&gt; 
  &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;                

            </pre>
                    </li>
                    <li>
                      <note class="- topic/note ">The conversion of
                          <sourcexml>case:courtinfo</sourcexml> is discussed in the Head section of
                        this CI. </note>
                    </li>
                  </ul>
                </li>
                <li> The tag <sourcexml>case:citations</sourcexml> is omitted but the content is
                  maintained as described below - <ul>
                    <li> The tag <sourcexml>case:citetext</sourcexml> is omitted but the content is
                      maintained as described below: <ul>
                        <li>
                          <sourcexml>ci:cite</sourcexml> becomes
                            <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml>. <ul>
                            <li>
                              <sourcexml>ci:case</sourcexml> becomes
                                <targetxml>lnci:case</targetxml>. <ul>
                                <li>
                                  <sourcexml>ci:caseref</sourcexml> becomes
                                    <targetxml>lnci:caseref</targetxml>. The attribute
                                    <sourcexml>ci:caseref @ID</sourcexml> becomes
                                    <targetxml>lnci:caseref @ID</targetxml> and
                                    <sourcexml>ci:caseref @spanref</sourcexml> should be dropped.
                                  The children are described below : <ul>
                                    <li>
                                      <sourcexml>ci:reporter @value</sourcexml> becomes
                                        <targetxml>lnci:reporter @value</targetxml>. </li>
                                    <li>
                                      <sourcexml>ci:edition</sourcexml> becomes
                                        <targetxml>lnci:edition</targetxml>. <ul>
                                        <li> The child element <sourcexml>ci:edition/ci:date
                                            @year</sourcexml> becomes
                                            <targetxml>lnci:edition/lnci:date @year</targetxml>.
                                        </li>
                                      </ul>
                                    </li>
                                    <li>
                                      <sourcexml>ci:page @num</sourcexml> becomes
                                        <targetxml>lnci:page @num</targetxml>. </li>
                                    <li>
                                      <sourcexml>ci:refnum @num</sourcexml> becomes
                                        <targetxml>lnci:refnum @num</targetxml>. </li>
                                  </ul>
                                </li>
                              </ul>
                              <pre>

&lt;case:citations&gt;
    &lt;case:citetext&gt;
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="INLNINDSC"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="1958"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="108"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;LNIND 1958 SC
                    108&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:citetext&gt;
&lt;/case:citations&gt;

<b>Becomes</b>

&lt;cttr:caseinfo&gt;
    &lt;cttr:citations&gt;
        &lt;lnci:cite&gt;
            &lt;lnci:case&gt;
                &lt;lnci:caseref&gt;
                    &lt;lnci:reporter value="INLNINDSC"/&gt;
                    &lt;lnci:edition&gt;
                        &lt;lnci:date year="1958"/&gt;
                    &lt;/lnci:edition&gt;
                    &lt;lnci:page num="108"/&gt;
                &lt;/lnci:caseref&gt;
            &lt;/lnci:case&gt;
            &lt;lnci:content&gt;LNIND 1958 SC 108&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
    &lt;/cttr:citations&gt;
&lt;/cttr:caseinfo&gt;                

            </pre>
                            </li>
                            <li>
                              <sourcexml>ci:content</sourcexml> becomes
                                <targetxml>/cttr:caseinfo/cttr:citations/lnci:cite/lnci:content</targetxml>
                              and the child element is described below : <ul>
                                <li> The tags <sourcexml>citefragment</sourcexml>, the attribute
                                    <sourcexml>citefragment @searchtype</sourcexml> and its child
                                  element <sourcexml>ci:span</sourcexml> are omitted but the content
                                  is maintained in <targetxml>lnci:content</targetxml>
                                </li>
                              </ul>
                              <pre>

&lt;ci:content&gt;
    &lt;citefragment searchtype="CASE-CITE-REF"&gt;LNIND 1958 SC 108&lt;/citefragment&gt;
&lt;/ci:content&gt;


<b>Becomes</b>

&lt;lnci:content&gt;LNIND 1958 SC 108&lt;/lnci:content&gt;
                

            </pre>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li>
                  <sourcexml>cttr:use-group</sourcexml> becomes
                    <targetxml>cttr:citingcase/cttr:usagegroup</targetxml> and the child element is
                  described below: <ul>
                    <li>
                      <sourcexml>cttr:use</sourcexml> becomes <targetxml>cttr:usage/text</targetxml>
                      and the attributes : <sourcexml>cttr:use @signal</sourcexml> becomes
                        <targetxml>cttr:usage @usagetype</targetxml>
                    </li>
                  </ul>
                  <pre>

&lt;cttr:use-group&gt;
  &lt;cttr:use signal="neutral"&gt;CITED&lt;/cttr:use&gt;
&lt;/cttr:use-group&gt;


<b>Becomes</b>

&lt;cttr:usagegroup&gt;
  &lt;cttr:usage usagetype="neutral"&gt;
    &lt;text&gt;CITED&lt;/text&gt;
  &lt;/cttr:usage&gt;
&lt;/cttr:usagegroup&gt;
                

            </pre>
                  <note> Attributes <targetxml>@negativesortweight</targetxml> and
                      <targetxml>@positivesortweight</targetxml> are added to the element
                      <targetxml>cttr:usagegroup</targetxml>. The vaules for these attributes are
                    calculated based on the designation, annotation type, usagegroup type and
                    decision date. Please refer to <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita"/>. </note>
                </li>
                <li><note>If source document Xpath is <sourcexml>case:citations/case:citetext/remotelink</sourcexml>
                    then it becomes <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml>
                    and <sourcexml>case:citetext</sourcexml> is omitted in target but the content is
                    maintained according to child modules.</note></li>
                <li>
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
                          <li>If <sourcexml>inlineobject</sourcexml> comes with attribute
                              <sourcexml>@attachment="web-server"</sourcexml> and without
                              <sourcexml>@alttext</sourcexml> inside the
                              <sourcexml>cttr:annot/remotelink</sourcexml> in source then conversion
                            need to convert <targetxml>ref:crossreference/ref:content</targetxml>,
                            do not populate <targetxml>@referencedresourcesentiment</targetxml> in
                            target.</li>
                          <li>
                            <sourcexml>inlineobject @alttext="Citation information only - Click for
                              CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                              @referencedresourcesentiment="none"/ref:content</targetxml>, but the
                            text " - Click for CaseBase entry" should be removed. </li>
                          <li>
                            <sourcexml>inlineobject @alttext="Citation information available - Click
                              for CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                              @referencedresourcesentiment="none"/ref:content</targetxml>, but the
                            text " - Click for CaseBase entry" should be removed. </li>
                          <li>
                            <sourcexml>inlineobject @alttext="Positive treatment indicated - Click
                              for CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                              @referencedresourcesentiment="positive"/ref:content</targetxml>, but
                            the text " - Click for CaseBase entry" should be removed. </li>
                          <li>
                            <sourcexml>inlineobject @alttext="Neutral treatment indicated - Click
                              for CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                              @referencedresourcesentiment="neutral"/ref:content</targetxml>, but
                            the text " - Click for CaseBase entry" should be removed. </li>
                          <li>
                            <sourcexml>inlineobject @alttext="Negative treatment indicated - Click
                              for CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                              @referencedresourcesentiment="negative"/ref:content</targetxml>, but
                            the text " - Click for CaseBase entry" should be removed. </li>
                          <li>
                            <sourcexml>inlineobject @alttext="Cautionary treatment indicated - Click
                              for CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
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
                        <pre>

&lt;cttr:annotations annotationtype="subseqcases"&gt;
  &lt;cttr:annot&gt;
    &lt;remotelink dpsi="0HSB" service="DOC-ID" remotekey1="REFPTID"
     refpt="LNIND_1958_SC_108"&gt;
      &lt;inlineobject type="image" attachment="web-server" filename="4.gif"/&gt;
    &lt;/remotelink&gt;
&lt;/cttr:annot&gt;&lt;/cttr:annotations&gt;

<b>Becomes</b>

&lt;cttr:refitem&gt;
  &lt;cttr:citingcase&gt;
    &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="none" referencedresourcetype="citator"&gt;
      &lt;ref:content/&gt;
        &lt;ref:locator anchoridref="LNIND_1958_SC_108"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0HSB-LNIND_1958_SC_108"/&gt;
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
              </ul></li>
          </ul></li>
      </ul>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-08-18: <ph id="change_20160818_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_subseqcases_cttr.annot.dita  -->
	<xsl:message>IN04_subseqcases_cttr.annot.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refs/cttr:refsection   -->
		<cttr:refs>
			<cttr:refsection>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refsection>
		</cttr:refs>

	</xsl:template>

	<xsl:template match="cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem   -->
		<cttr:refitem>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="@annotationtype"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @reftype   -->
		<xsl:attribute name="reftype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="heading"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="title"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="cttr:annotations @annotationtype=&#34;subseqcases |&#xA;                secondary-sources&#34;/cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="citing-cases"/cttr:refitem   -->
		<cttr:refsection>
			<cttr:refitem>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refitem>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="/cttr:annotations/@annotationtype=&#34;subseqcases&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:refsection@reftype="citing-cases"   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="@annotationtype=&#34;secondary-sources&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:refsection@reftype="citing-cases"   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="@id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase@xml:id   -->
		<cttr:refitem>
			<cttr:citingcase>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase@treatment   -->
		<cttr:refitem>
			<cttr:citingcase>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annot/case:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/cttr:refitem/cttr:citingcase/cttr:caseinfo   -->
		<cttr:refsection>
			<cttr:refitem>
				<cttr:citingcase>
					<cttr:caseinfo>
						<xsl:apply-templates select="@* | node()"/>
					</cttr:caseinfo>
				</cttr:citingcase>
			</cttr:refitem>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:casename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingcase/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename   -->
		<cttr:refitem>
			<cttr:citingcase>
				<cttr:caseinfo>
					<caseinfo:casename xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/">
						<caseinfo:fullcasename>
							<xsl:apply-templates select="@* | node()"/>
						</caseinfo:fullcasename>
					</caseinfo:casename>
				</cttr:caseinfo>
			</cttr:citingcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/cttr:citations/lnci:cite   -->
		<cttr:caseinfo>
			<cttr:citations>
				<lnci:cite>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:cite>
			</cttr:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:citations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/cttr:citations/lnci:cite   -->
		<cttr:caseinfo>
			<cttr:citations>
				<lnci:cite>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:cite>
			</cttr:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:citetext"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/cttr:citations/lnci:cite   -->
		<cttr:caseinfo>
			<cttr:citations>
				<lnci:cite>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:cite>
			</cttr:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="ci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/cttr:citations/lnci:cite   -->
		<cttr:caseinfo>
			<cttr:citations>
				<lnci:cite>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:cite>
			</cttr:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="ci:case"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:case   -->
		<lnci:case>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:case>

	</xsl:template>

	<xsl:template match="ci:caseref"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:caseref   -->
		<lnci:caseref>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:caseref>

	</xsl:template>

	<xsl:template match="ci:caseref @ID"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:caseref@ID   -->
		<lnci:caseref>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:caseref>

	</xsl:template>

	<xsl:template match="ci:caseref @spanref"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:reporter@value   -->
		<lnci:reporter>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:reporter>

	</xsl:template>

	<xsl:template match="ci:reporter @value"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:reporter@value   -->
		<lnci:reporter>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:reporter>

	</xsl:template>

	<xsl:template match="ci:edition"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:edition   -->
		<lnci:edition>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:edition>

	</xsl:template>

	<xsl:template match="ci:edition/ci:date&#xA;                                            @year"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:edition/lnci:date@year   -->
		<lnci:edition>
			<lnci:date>
				<xsl:apply-templates select="@* | node()"/>
			</lnci:date>
		</lnci:edition>

	</xsl:template>

	<xsl:template match="ci:page @num"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:page@num   -->
		<lnci:page>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:page>

	</xsl:template>

	<xsl:template match="ci:refnum @num"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:refnum@num   -->
		<lnci:refnum>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:refnum>

	</xsl:template>

	<xsl:template match="ci:content"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  /cttr:caseinfo/cttr:citations/lnci:cite/lnci:content   -->
		<cttr:caseinfo>
			<cttr:citations>
				<lnci:cite>
					<lnci:content>
						<xsl:apply-templates select="@* | node()"/>
					</lnci:content>
				</lnci:cite>
			</cttr:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="citefragment"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:content   -->
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template>

	<xsl:template match="citefragment @searchtype"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:content   -->
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template>

	<xsl:template match="ci:span"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:content   -->
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template>

	<xsl:template match="cttr:use-group"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingcase/cttr:usagegroup   -->
		<cttr:citingcase>
			<cttr:usagegroup>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:usagegroup>
		</cttr:citingcase>

	</xsl:template>

	<xsl:template match="cttr:use"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:usage/text   -->
		<cttr:usage>
			<text>
				<xsl:apply-templates select="@* | node()"/>
			</text>
		</cttr:usage>

	</xsl:template>

	<xsl:template match="cttr:use @signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:usage@usagetype   -->
		<cttr:usage>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:usage>

	</xsl:template>

	<xsl:template match="case:citations/case:citetext/remotelink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/cttr:citations/lnci:cite   -->
		<cttr:caseinfo>
			<cttr:citations>
				<lnci:cite>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:cite>
			</cttr:citations>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="remotelink /@service=&#34;DOC-ID&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;DOC-ID&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@dpsi"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@refpt"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey2"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@remotekey1=&#34;REFPTID&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:key-name/@name   -->
		<ref:key-name>
			<xsl:attribute name="name">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:key-name>

	</xsl:template>

	<xsl:template match="@docidref"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="remotelink/@dpsi"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="docinfo:dpsi/@id-string"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:locator/@anchoridref   -->
		<ref:locator>
			<xsl:attribute name="anchoridref">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:locator>

	</xsl:template>

	<xsl:template match="inlineobject"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="@attachment=&#34;web-server&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="@alttext"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:annot/remotelink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Citation information only - Click for&#xA;                              CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="none"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Citation information available - Click&#xA;                              for CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="none"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Positive treatment indicated - Click&#xA;                              for CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="positive"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Neutral treatment indicated - Click&#xA;                              for CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="neutral"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Negative treatment indicated - Click&#xA;                              for CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="negative"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Cautionary treatment indicated - Click&#xA;                              for CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="cautionary"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject[@alttext=&#34;Click for CaseBase entry&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

</xsl:stylesheet>