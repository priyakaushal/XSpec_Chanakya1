<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="appealproc_cttr.annot">
  <title>cttr:annotations @annotationtype="appealproc"/cttr:annot <lnpid>id-AU20-22208</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations @annotationtype="appealproc"/cttr:annot</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection @reftype="appeal-proceedings"/cttr:refitem</targetxml> The attributes of
          cttr:annot : <sourcexml class="+ topic/keyword xml-d/sourcexml ">@id</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:appealproceeding @xml:id</targetxml> and <sourcexml class="+ topic/keyword xml-d/sourcexml ">@signal</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:appealproceeding @treatment</targetxml> and the child elements are
          described below : <note class="- topic/note "> The value of the attribute /cttr:annotations @annotationtype="appealproc" maps to the
            attribute /cttr:refsection @reftype="appeal-proceedings". </note>
          <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="appealproc"&gt;
  &lt;cttr:annot id="185538" signal="negative"&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refsection reftype="appeal-proceedings"&gt;
&lt;cttr:refitem&gt;
  &lt;cttr:appealproceeding xml:id="_185538" treatment="negative"&gt;
  &lt;/cttr:appealproceeding &gt;
&lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;                
</pre>
          <note class="- topic/note ">All xml:id that begin with a number must have an underscore added at start, as shown in the above NL
            example.</note> The child elements of cttr:annot are described below : <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:appealproceeding/cttr:caseinfo</targetxml>
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info/case:casename</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:appealproceeding/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>
                </li>
                <li class="- topic/li ">
                  <note class="- topic/note "> The conversion of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:courtinfo</sourcexml> is
                    discussed in the Citator_Head.dita file. </note>
                </li>
              </ul>
            </li>
            <li class="- topic/li ">
              <note class="- topic/note "> The mapping of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:citations</sourcexml> is same as
                that of cttr:annotations @"subseqcases"/cttr:annot/case:citations. </note>
            </li>
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use-group</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:appealproceeding/cttr:usagegroup</targetxml> and the child element is described below: <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:usage/text</targetxml> and the attributes : <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use @signal</sourcexml>
                  becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:usage @usagetype</targetxml>
                </li>
              </ul>
            </li>
            <li class="- topic/li ">
              <sourcexml>remotelink /@service="DOC-ID"</sourcexml> becomes
                <targetxml>ref:crossreference</targetxml> that comes with the required child element
                <targetxml>ref:content</targetxml> and with the attribute <targetxml>ref:crossreference
              @crossreferencetype="citatorAlert"</targetxml>. <ul>
                <li>
                  <p> Create <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml> with attributes and children as follows: <ul>
                      <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                          <li>
                            <targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>

                          <li><targetxml>key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and
                            concatenated with <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are
                            present, use <sourcexml>@remotekey2</sourcexml>).</li>

                        </ul>
                      </li>

                      <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                          <li>
                            <targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>

                          <li><targetxml>ref:key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by hyphen and
                            concatenated with <sourcexml>@docidref</sourcexml>.</li>

                          <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from <sourcexml>@refpt</sourcexml> or
                              <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use <sourcexml>@refpt</sourcexml>).
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </p>
                  <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from <sourcexml>docinfo:dpsi/@id-string</sourcexml> or
                    capture value from the LBU manifest file.</note>
                  <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must have an underscore added at the start. Also
                    apply other identifier data type formatting as used for <targetxml>xml:id</targetxml> and <targetxml>ref:anchor/@id</targetxml>,
                    e.g. change colon to underscore.</note>
                </li>
                <li>
                  <p> The child element <sourcexml>inlineobject</sourcexml> is converted as follows - <ul>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Citation information only - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="none"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be removed. </li>
                      <li class="- topic/li ">
                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Citation information available - Click for CaseBase
                        entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="none"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Positive treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="positive"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be
                        removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Neutral treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="neutral"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be
                        removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Negative treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="negative"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be
                        removed. </li>
                      <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">inlineobject @alttext="Cautionary treatment indicated - Click for CaseBase
                          entry"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">ref:crossreference
                          @referencedresourcesentiment="cautionary"/ref:content</targetxml>, but the text " - Click for CaseBase entry" should be
                        removed. </li>
                    </ul>
                    <note>
                      <sourcexml>inlineobject[@alttext="Click for CaseBase entry"]</sourcexml> becomes
                        <targetxml>ref:crossreference/ref:content</targetxml>. Do not populate <targetxml>@referencedresourcesentiment</targetxml> in
                      this scenario. </note>
                    <note> The content of <sourcexml>inlineobject</sourcexml> is captured in <targetxml>ref:crossreference</targetxml> and its
                      children as decribed in the above instructions. For the handling of icon, the LBU will need to identify icon images
                      definitively. Please refer to inlineobect in the general markup section for more details on handling the icon/images. </note>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="appealproc"&gt;
  &lt;cttr:annot&gt;
    &lt;remotelink dpsi="0018" docidref="ABCD_1234" refpt="12376" remotekey1="REFPTID" service="DOC-ID"&gt;
      &lt;inlineobject alttext="Negative treatment indicated - Click for CaseBase entry" attachment="web-server" filename="1.gif" type="image"/&gt;
    &lt;/remotelink&gt;
&lt;/cttr:annot&gt;&lt;/cttr:annotations&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refitem&gt;
  &lt;cttr:appealproceeding&gt;
    &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="negative" referencedresourcetype="citator"&gt;
      &lt;ref:content&gt;Negative treatment indicated&lt;/ref:content&gt;
        &lt;ref:locator anchoridref="_12376"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0018-ABCD_1234"/&gt;
          &lt;/ref:locator-key&gt;         
        &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
&lt;/cttr:appealproceeding&gt;&lt;/cttr:refitem&gt;                
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
      <p>2012-08-23: Modified example to use an underscore instead of the two digit country code for <targetxml>xml:id</targetxml>.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\appealproc_cttr.annot.dita  -->
	<xsl:message>AU20_Legislative_Citator_appealproc_cttr.annot.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations @annotationtype=&#34;appealproc&#34;/cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="appeal-proceedings"/cttr:refitem   -->
		<cttr:refsection>
			<cttr:refitem>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refitem>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="@id"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:appealproceeding@xml:id   -->
		<cttr:refitem>
			<cttr:appealproceeding>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:appealproceeding>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:appealproceeding@treatment   -->
		<cttr:refitem>
			<cttr:appealproceeding>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:appealproceeding>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:appealproceeding/cttr:caseinfo   -->
		<cttr:appealproceeding>
			<cttr:caseinfo>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:caseinfo>
		</cttr:appealproceeding>

	</xsl:template>

	<xsl:template match="case:info/case:casename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:appealproceeding/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename   -->
		<cttr:appealproceeding>
			<cttr:caseinfo>
				<caseinfo:casename xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/">
					<caseinfo:fullcasename>
						<xsl:apply-templates select="@* | node()"/>
					</caseinfo:fullcasename>
				</caseinfo:casename>
			</cttr:caseinfo>
		</cttr:appealproceeding>

	</xsl:template>

	<xsl:template match="case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:appealproceeding/cttr:usagegroup   -->
		<cttr:appealproceeding>
			<cttr:usagegroup>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:usagegroup>
		</cttr:appealproceeding>

	</xsl:template>

	<xsl:template match="case:citations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:appealproceeding/cttr:usagegroup   -->
		<cttr:appealproceeding>
			<cttr:usagegroup>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:usagegroup>
		</cttr:appealproceeding>

	</xsl:template>

	<xsl:template match="cttr:use-group"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:appealproceeding/cttr:usagegroup   -->
		<cttr:appealproceeding>
			<cttr:usagegroup>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:usagegroup>
		</cttr:appealproceeding>

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

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="none"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Citation information only - Click for CaseBase&#xA;                          entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="none"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Citation information available - Click for CaseBase&#xA;                        entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="none"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Positive treatment indicated - Click for CaseBase&#xA;                          entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="positive"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Neutral treatment indicated - Click for CaseBase&#xA;                          entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="neutral"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Negative treatment indicated - Click for CaseBase&#xA;                          entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference@referencedresourcesentiment="negative"/ref:content   -->
		<ref:crossreference>
			<ref:content>
				<xsl:apply-templates select="@* | node()"/>
			</ref:content>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject @alttext=&#34;Cautionary treatment indicated - Click for CaseBase&#xA;                          entry&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

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