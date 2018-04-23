<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="consideredcases_cttr.annot">
  <title>cttr:annotations @annotationtype="consideredcases"/cttr:annot <lnpid>id-IN04-38818</lnpid></title>
  <body>
    <section>
      <ul>
        <li>
          <sourcexml>cttr:annotations @annotationtype="consideredcases"/cttr:annot</sourcexml>
          becomes <targetxml>cttr:refsection @reftype="considered-cases"/cttr:refitem</targetxml>
          <note> The value of the attribute /cttr:annotations @annotationtype="consideredcases" maps
            to the attribute /cttr:refsection @reftype="considered-cases". </note> The attributes
            <sourcexml>@signal</sourcexml> of <sourcexml>cttr:annot</sourcexml> (if attribute is
          present or not) then it should be mapped with
            <targetxml>cttr:refitem/cttr:consideredcase[@treatment="positive"]</targetxml> and the
          child elements are described below : <pre>

&lt;cttr:annotations annotationtype="consideredcases"&gt;
  &lt;cttr:annot&gt;
  ...
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations
<b>Becomes</b>
&lt;cttr:refsection reftype="considered-cases"&gt;
  &lt;cttr:refitem&gt;
    &lt;cttr:consideredcase treatment="positive"&gt;
    ...
    &lt;/cttr:consideredcase&gt;
  &lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;                

</pre> The children of cttr:annot are described below : <ul>
            <li>
              <sourcexml>case:info</sourcexml> becomes
                <targetxml>cttr:consideredcase/cttr:caseinfo</targetxml>
              <ul>
                <li>
                  <sourcexml>case:casename</sourcexml> becomes
                    <targetxml>cttr:consideredcase/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>
                </li>
                <li>
                  <note> The conversion of <sourcexml>case:courtinfo</sourcexml> is discussed in the
                    Head section of this CI. </note>
                </li>
              </ul>
            </li>
            <li>
              <note> The mapping of <sourcexml>case:citations</sourcexml> is same as that of
                cttr:annotations @"subseqcases"/cttr:annot/case:citations. </note>
            </li>
            <li>
              <sourcexml>cttr:use-group</sourcexml> becomes
                <targetxml>cttr:consideredcase[@treatment="positive"]/cttr:usagegroup</targetxml>
              and the child element is described below: <ul>
                <li>
                  <sourcexml>cttr:use</sourcexml> becomes <targetxml>cttr:usage/text</targetxml> and
                  the attributes : <sourcexml>cttr:use @signal</sourcexml> becomes
                    <targetxml>cttr:usage @usagetype</targetxml>
                </li>
              </ul>
              <note> Attributes <targetxml>@negativesortweight</targetxml> and
                  <targetxml>@positivesortweight</targetxml> are added to the element
                  <targetxml>cttr:usagegroup</targetxml>. The vaules for these attributes are
                calculated based on the designation, annotation type, usagegroup type and decision
                date. Please refer to <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita"/>. </note></li>
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

&lt;cttr:annotations annotationtype="consideredcases"&gt;
  &lt;cttr:annot&gt;
    &lt;remotelink dpsi="0HSB" service="DOC-ID" remotekey1="REFPTID" refpt="LNIND_2000_SC_324"&gt;
      &lt;inlineobject type="image" attachment="web-server" filename="4.gif"
      alttext="Citation information only - Click for CaseBase entry"/&gt;
    &lt;/remotelink&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>

&lt;cttr:refitem&gt;
  &lt;cttr:consideredcase treatment="positive"&gt;
    &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="none" referencedresourcetype="citator"&gt;
      &lt;ref:content&gt;Citation information only&lt;/ref:content&gt;
        &lt;ref:locator anchoridref="LNIND_2000_SC_324"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="0HSB-LNIND_2000_SC_324"/&gt;
          &lt;/ref:locator-key&gt;        
      &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
  &lt;/cttr:consideredcase&gt;
&lt;/cttr:refitem&gt;                

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
      <p>2017-01-05: <ph id="change_20170105_SS">Instruction updated for handling attrbite
            <sourcexml>@signal</sourcexml> (if it's present or not in source).</ph></p>
      <p>2016-08-18: <ph id="change_20160818_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_consideredcases_cttr.annot.dita  -->
	<xsl:message>IN04_consideredcases_cttr.annot.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations @annotationtype=&#34;consideredcases&#34;/cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="considered-cases"/cttr:refitem   -->
		<cttr:refsection>
			<cttr:refitem>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refitem>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredcase[@treatment="positive"]   -->
		<cttr:refitem>
			<cttr:consideredcase>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:consideredcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredcase[@treatment="positive"]   -->
		<cttr:refitem>
			<cttr:consideredcase>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:consideredcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredcase/cttr:caseinfo   -->
		<cttr:consideredcase>
			<cttr:caseinfo>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:caseinfo>
		</cttr:consideredcase>

	</xsl:template>

	<xsl:template match="case:casename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredcase/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename   -->
		<cttr:consideredcase>
			<cttr:caseinfo>
				<caseinfo:casename xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/">
					<caseinfo:fullcasename>
						<xsl:apply-templates select="@* | node()"/>
					</caseinfo:fullcasename>
				</caseinfo:casename>
			</cttr:caseinfo>
		</cttr:consideredcase>

	</xsl:template>

	<xsl:template match="case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredcase[@treatment="positive"]/cttr:usagegroup   -->
		<cttr:consideredcase>
			<cttr:usagegroup>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:usagegroup>
		</cttr:consideredcase>

	</xsl:template>

	<xsl:template match="case:citations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredcase[@treatment="positive"]/cttr:usagegroup   -->
		<cttr:consideredcase>
			<cttr:usagegroup>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:usagegroup>
		</cttr:consideredcase>

	</xsl:template>

	<xsl:template match="cttr:use-group"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredcase[@treatment="positive"]/cttr:usagegroup   -->
		<cttr:consideredcase>
			<cttr:usagegroup>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:usagegroup>
		</cttr:consideredcase>

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