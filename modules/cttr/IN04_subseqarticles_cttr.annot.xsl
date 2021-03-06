<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="subseqarticles_cttr.annot">
  <title>cttr:annotations @annotationtype="subseqarticles"/cttr:annot <lnpid>id-IN04-38823</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>cttr:annotations @annotationtype="subseqarticles"/cttr:annot</sourcexml>
          becomes <targetxml>cttr:refsection @reftype="citing-publications"/cttr:refitem</targetxml>
          <note> The value of the attribute
              <sourcexml>cttr:annotations@annotationtype="subseqarticles"</sourcexml> maps to the
            attribute <targetxml>cttr:refsection@reftype="citing-publications"</targetxml>. </note>
          The attributes of cttr:annot : <sourcexml>@id</sourcexml> becomes
            <targetxml>cttr:refitem/cttr:citingpub @xml:id</targetxml> and
            <sourcexml>@signal</sourcexml> becomes <targetxml>cttr:refitem/cttr:citingpub
            @treatment</targetxml> and the child elements are described below : <pre>

&lt;cttr:annotations annotationtype="subseqarticles"&gt;
  &lt;cttr:annot&gt;
    ...
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations
<b>Becomes</b>
&lt;cttr:refsection reftype="citing-publications"&gt;
  &lt;cttr:refitem&gt;
    &lt;cttr:citingpub pubtype="journal-article"&gt;
    ...
    &lt;/cttr:citingpub&gt;
  &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;                

</pre>
          <note>All xml:id that begin with a number must have an underscore added at start, as shown
            in the above NL example.</note> The children of cttr:annot are described below: <ul>
            <li>
              <sourcexml>cttr:annot/case:info/case:casename</sourcexml> becomes
                <targetxml>cttr:refitem/cttr:citingpub/title</targetxml>
            </li>
            <li>
              <ul>
                <li> The content of
                    <sourcexml>case:citations/case:citetext/ci:cite/ci:content/citefragment</sourcexml>
                  is maintained in
                    <targetxml>cttr:refitem/cttr:citingpub/cttr:citations/lnci:cite/lnci:content</targetxml>. </li>
                <li>
                  <sourcexml>case:citations/case:citetext/ci:cite/ci:lawrev</sourcexml> becomes
                    <targetxml>cttr:refitem/cttr:citingpub/cttr:citations/lnci:cite/lnci:lawrev</targetxml>. <ul>
                    <li>
                      <sourcexml>ci:cite/ci:lawrev/ci:lawrevref</sourcexml> becomes
                        <targetxml>lnci:cite/lnci:lawrev/lnci:lawrevref</targetxml>. <ul>
                        <li>
                          <sourcexml>ci:cite/ci:lawrev/ci:lawrevref/ci:lawrevlocator</sourcexml>
                          becomes
                            <targetxml>lnci:cite/lnci:lawrev/lnci:lawrevref/lnci:lawrevlocator</targetxml>. <ul>
                            <li>
                              <sourcexml>ci:publicationname @normpubcode</sourcexml> becomes
                                <targetxml>lnci:publicationname @normpubcode</targetxml>. </li>
                            <li>
                              <sourcexml>ci:volume @num</sourcexml> becomes <targetxml>lnci:volume
                                @num</targetxml>. </li>
                            <li>
                              <sourcexml>ci:page @num</sourcexml> becomes <targetxml>lnci:page
                                @num</targetxml>. </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                  </ul></li>
              </ul>
              <pre>

&lt;case:citations&gt;
    &lt;case:citetext&gt;
        &lt;ci:cite searchtype="CASE-REF"&gt;
            &lt;ci:case&gt;
                &lt;ci:caseref&gt;
                    &lt;ci:reporter value="INLLJ"/&gt;
                    &lt;ci:volume num="1"/&gt;
                    &lt;ci:edition&gt;
                        &lt;ci:date year="1988"/&gt;
                    &lt;/ci:edition&gt;
                    &lt;ci:page num="256"/&gt;
                &lt;/ci:caseref&gt;
            &lt;/ci:case&gt;
            &lt;ci:content&gt;
                &lt;citefragment searchtype="CASE-CITE-REF"&gt;&amp;#x005B;1988&amp;#x005D; 1
                    LLJ 256&lt;/citefragment&gt;
            &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
    &lt;/case:citetext&gt;
&lt;/case:citations&gt;

<b>Becomes</b>
&lt;cttr:citations&gt;
  &lt;lnci:cite&gt;
      &lt;lnci:case&gt;
          &lt;lnci:caseref&gt;
              &lt;lnci:reporter value="INLLJ"/&gt;
              &lt;lnci:volume num="1"/&gt;
              &lt;lnci:edition&gt;
                  &lt;lnci:date year="1988"/&gt;
              &lt;/lnci:edition&gt;
              &lt;lnci:page num="256"/&gt;
          &lt;/lnci:caseref&gt;
      &lt;/lnci:case&gt;
      &lt;lnci:content&gt;&amp;#x005B;1988&amp;#x005D; 1 LLJ 256&lt;/lnci:content&gt;
  &lt;/lnci:cite&gt;
&lt;/cttr:citations&gt;
                

</pre>
            </li>
            <li>
              <sourcexml>cttr:use-group</sourcexml>, the child element
                <sourcexml>cttr:use</sourcexml> and the attribute <sourcexml>cttr:use
                @signal</sourcexml> are suppressed (both tag and content). <note>Please note that
                  <sourcexml>cttr:use-group</sourcexml>, the child element cttr:use and the
                attribute <sourcexml>cttr:use @signal</sourcexml> are intentionally suppressed only
                for <sourcexml>cttr:annotations @annotationtype="subseqarticles”</sourcexml>.</note>
            </li>
            <li>
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
                    </ul></p>
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
                      <li>If <sourcexml>inlineobject</sourcexml> comes with attribute
                          <sourcexml>@attachment="web-server"</sourcexml> and without
                          <sourcexml>@alttext</sourcexml> inside the
                          <sourcexml>cttr:annot/remotelink</sourcexml> in source then conversion
                        need to convert <targetxml>ref:crossreference/ref:content</targetxml>, do
                        not populate <targetxml>@referencedresourcesentiment</targetxml> in
                        target.</li>
                      <li>
                        <sourcexml>inlineobject @alttext="Citation information only - Click for
                          CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                          @referencedresourcesentiment="none"/ref:content</targetxml>, but the text
                        " - Click for CaseBase entry" should be removed. </li>
                      <li>
                        <sourcexml>inlineobject @alttext="Citation information available - Click for
                          CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                          @referencedresourcesentiment="none"/ref:content</targetxml>, but the text
                        " - Click for CaseBase entry" should be removed. </li>
                      <li>
                        <sourcexml>inlineobject @alttext="Positive treatment indicated - Click for
                          CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                          @referencedresourcesentiment="positive"/ref:content</targetxml>, but the
                        text " - Click for CaseBase entry" should be removed. </li>
                      <li>
                        <sourcexml>inlineobject @alttext="Neutral treatment indicated - Click for
                          CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                          @referencedresourcesentiment="neutral"/ref:content</targetxml>, but the
                        text " - Click for CaseBase entry" should be removed. </li>
                      <li>
                        <sourcexml>inlineobject @alttext="Negative treatment indicated - Click for
                          CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
                          @referencedresourcesentiment="negative"/ref:content</targetxml>, but the
                        text " - Click for CaseBase entry" should be removed. </li>
                      <li>
                        <sourcexml>inlineobject @alttext="Cautionary treatment indicated - Click for
                          CaseBase entry"</sourcexml> becomes <targetxml>ref:crossreference
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
                    <pre>

&lt;cttr:annotations annotationtype="subseqarticles"&gt;
  &lt;cttr:annot&gt;
    &lt;remotelink dpsi="0019" docidref="ABCD_1234" refpt="401055" remotekey1="REFPTID" service="DOC-ID"&gt;
      &lt;inlineobject alttext="Citation information only - Click for CaseBase entry" attachment="web-server" filename="5.gif" type="image"/&gt;
    &lt;/remotelink&gt;
&lt;/cttr:annot&gt;&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refitem&gt;
  &lt;cttr:citingpub&gt;
    &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="none" referencedresourcetype="citator"&gt;
      &lt;ref:content&gt;Citation information only&lt;/ref:content&gt;
        &lt;ref:locator anchoridref="_401055"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0019-ABCD_1234"/&gt;
          &lt;/ref:locator-key&gt;         
      &lt;/ref:locator&gt;
  &lt;/ref:crossreference&gt;
&lt;/cttr:citingpub&gt;&lt;/cttr:refitem&gt;                

</pre>
                  </p>
                </li>
              </ul>
            </li>
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_subseqarticles_cttr.annot.dita  -->
	<xsl:message>IN04_subseqarticles_cttr.annot.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations @annotationtype=&#34;subseqarticles&#34;/cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="citing-publications"/cttr:refitem   -->
		<cttr:refsection>
			<cttr:refitem>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refitem>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations@annotationtype=&#34;subseqarticles&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="citing-publications"   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="@id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub@xml:id   -->
		<cttr:refitem>
			<cttr:citingpub>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub@treatment   -->
		<cttr:refitem>
			<cttr:citingpub>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:casename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/title   -->
		<cttr:refitem>
			<cttr:citingpub>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:citations/case:citetext/ci:cite/ci:content/citefragment"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/cttr:citations/lnci:cite/lnci:content   -->
		<cttr:refitem>
			<cttr:citingpub>
				<cttr:citations>
					<lnci:cite>
						<lnci:content>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:content>
					</lnci:cite>
				</cttr:citations>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:citations/case:citetext/ci:cite/ci:lawrev"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:citingpub/cttr:citations/lnci:cite/lnci:lawrev   -->
		<cttr:refitem>
			<cttr:citingpub>
				<cttr:citations>
					<lnci:cite>
						<lnci:lawrev>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:lawrev>
					</lnci:cite>
				</cttr:citations>
			</cttr:citingpub>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="ci:cite/ci:lawrev/ci:lawrevref"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:cite/lnci:lawrev/lnci:lawrevref   -->
		<lnci:cite>
			<lnci:lawrev>
				<lnci:lawrevref>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:lawrevref>
			</lnci:lawrev>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="ci:cite/ci:lawrev/ci:lawrevref/ci:lawrevlocator"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:cite/lnci:lawrev/lnci:lawrevref/lnci:lawrevlocator   -->
		<lnci:cite>
			<lnci:lawrev>
				<lnci:lawrevref>
					<lnci:lawrevlocator>
						<xsl:apply-templates select="@* | node()"/>
					</lnci:lawrevlocator>
				</lnci:lawrevref>
			</lnci:lawrev>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="ci:publicationname @normpubcode"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:publicationname@normpubcode   -->
		<lnci:publicationname>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:publicationname>

	</xsl:template>

	<xsl:template match="ci:volume @num"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:volume@num   -->
		<lnci:volume>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:volume>

	</xsl:template>

	<xsl:template match="ci:page @num"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:page@num   -->
		<lnci:page>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:page>

	</xsl:template>

	<xsl:template match="cttr:use-group"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:use"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:use&#xA;                @signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:use @signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:annotations @annotationtype=&#34;subseqarticles”"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

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

	<xsl:template match="inlineobject @alttext=&#34;Citation information only - Click for&#xA;                          CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="none"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Citation information available - Click for&#xA;                          CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="none"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Positive treatment indicated - Click for&#xA;                          CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="positive"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Neutral treatment indicated - Click for&#xA;                          CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="neutral"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Negative treatment indicated - Click for&#xA;                          CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="negative"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Cautionary treatment indicated - Click for&#xA;                          CaseBase entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

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