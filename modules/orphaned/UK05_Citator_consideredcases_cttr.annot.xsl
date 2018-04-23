<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="consideredcases_cttr.annot.dita">
  <title>cttr:annotations/@annotationtype="consideredcases"/cttr:annot <lnpid>id-UK05-27814</lnpid></title>
  <body>
    <p>
      <ul>
        <li>
          <sourcexml>cttr:annotations @annotationtype="consideredcases"/cttr:annot</sourcexml>
          becomes <targetxml>cttr:refsection @reftype="considered-cases"/cttr:refitem</targetxml>.
            <note>The value of the attribute
              <sourcexml>cttr:annotations/@annotationtype="consideredcases"</sourcexml> maps to the
            attribute <targetxml>cttr:refsection/@reftype="considered-cases"</targetxml>.</note>
          <p><sourcexml>cttr:annot/@signal</sourcexml> becomes
              <targetxml>cttr:refitem/cttr:consideredcase/@treatment</targetxml>.
            <note>If there is no
              value for <sourcexml>cttr:annot/@signal</sourcexml>, a value for
              <targetxml>cttr:consideredcase/@treatment</targetxml> can be determined from the name of
              the gif file in <sourcexml>cttr:annot/remotelink/inlineobject/@filename</sourcexml>:
              <table id="table_jzh_has_um">
                <tgroup cols="2">
                  <colspec colnum="1" colname="c1" colwidth="228.75pt"/>
                  <colspec colnum="2" colname="c2" colwidth="133.5pt"/>
                  <thead>
                    <row>
                      <entry>Value of <sourcexml>cttr:annot/remotelink/inlineobject/@filename</sourcexml></entry>
                      <entry>Vaue of <targetxml>cttr:citingpub/@treatment</targetxml></entry>
                    </row>
                  </thead>
                  <tbody>
                    <row>
                      <entry>1.gif </entry>
                      <entry>negative</entry>
                    </row>
                    <row>
                      <entry>2.gif </entry>
                      <entry>cautionary</entry>
                    </row>
                    <row>
                      <entry>3.gif </entry>
                      <entry>positive</entry>
                    </row>
                    <row>
                      <entry>4.gif </entry>
                      <entry>neutral</entry>
                    </row>
                    <row>
                      <entry>5.gif </entry>
                      <entry>citation</entry>
                    </row>
                    <row>
                      <entry>no value</entry>
                      <entry>unspecified</entry>
                    </row>
                  </tbody>
                </tgroup>
              </table>
            </note>
          
          </p><p>The child
            elements are described below:</p>
          <pre>
&lt;cttr:annotations annotationtype="consideredcases"&gt;
  &lt;cttr:annot signal="positive"&gt;...
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="considered-cases"&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:consideredcase treatment="positive"&gt;...
      &lt;/cttr:consideredcase&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

</pre>
          <ul>
            <li>
              <sourcexml>cttr:annotations/cttr:annot/case:info</sourcexml> becomes
                <targetxml>cttr:refsection/cttr:refitem/cttr:consideredcase/cttr:caseinfo</targetxml>. <ul>
                <li>
                  <sourcexml>cttr:annot/case:info/case:casename</sourcexml> becomes
                    <targetxml>cttr:refitem/cttr:consideredcase/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>.
                    <note>The child element <sourcexml>emph</sourcexml> is dropped.</note>
                  <pre>
&lt;cttr:annotations annotationtype="consideredcases"&gt;
  &lt;cttr:annot signal="positive"&gt;
    &lt;case:info&gt;
      &lt;case:casename&gt;
        &lt;emph typestyle="bf"&gt;Shiloh Spinners Ltd v Harding&lt;/emph&gt;
      &lt;/case:casename&gt;
    &lt;/case:info&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="considered-cases"&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:consideredcase treatment="positive"&gt;
        &lt;cttr:caseinfo&gt;
          &lt;caseinfo:casename&gt;
            &lt;caseinfo:fullcasename&gt;Shiloh Spinners Ltd v Harding&lt;/caseinfo:fullcasename&gt;
          &lt;/caseinfo:casename&gt;
        &lt;/cttr:caseinfo&gt;
      &lt;/cttr:consideredcase&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

</pre>
                </li>
                <li>
                  <note>The conversion of <sourcexml>case:courtinfo</sourcexml> is discussed in the
                        <b><i>case:courtinfo-to-jurisinfo:courtinfo</i></b> section.</note>
                </li>
                <li>
                  <note>The conversion of <sourcexml>case:dates</sourcexml> is discussed in the
                        <b><i>case:dates-to-decision:dates</i></b> section.</note>
                </li>
              </ul>
            </li>
            <li> The tag <sourcexml>case:citations</sourcexml> is omitted but the content is
              maintained as described below - <ul>
                <li> The tag <sourcexml>case:citetext</sourcexml> is omitted but the content is
                  maintained as described below: <ul>
                    <li>
                      <sourcexml>ci:cite</sourcexml> becomes
                        <targetxml>cttr:caseinfo/cttr:citations/lnci:cite</targetxml>. <note>Please
                        refer to general markup section for more details on
                          <sourcexml>ci:cite</sourcexml>.</note>
                      <ul>
                        <li>
                          <sourcexml>ci:case</sourcexml> becomes <targetxml>lnci:case</targetxml>. </li>
                        <li>
                          <sourcexml>ci:content</sourcexml> becomes
                            <targetxml>lnci:content</targetxml>. </li>
                        <li>
                          <sourcexml>ci:sesslaw</sourcexml> becomes
                            <targetxml>lnci:sesslaw</targetxml>. </li>
                      </ul></li>
                  </ul><pre>
&lt;case:citations&gt;
  &lt;case:citetext&gt;
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:case&gt;
        &lt;ci:caseref&gt;
          &lt;ci:reporter value="AC"/&gt;
          &lt;ci:edition&gt;
            &lt;ci:date year="1973"/&gt;
          &lt;/ci:edition&gt;
          &lt;ci:page num="691"/&gt;
        &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;[1973] AC 691&lt;/ci:content&gt;
    &lt;/ci:cite&gt;, 
    &lt;ci:cite searchtype="CASE-REF"&gt;
      &lt;ci:case&gt;
        &lt;ci:caseref&gt;
          &lt;ci:reporter value="ALLER"/&gt;
          &lt;ci:volume num="1"/&gt;
          &lt;ci:edition&gt;
            &lt;ci:date year="1973"/&gt;
          &lt;/ci:edition&gt;
          &lt;ci:page num="90"/&gt;
        &lt;/ci:caseref&gt;
      &lt;/ci:case&gt;
      &lt;ci:content&gt;[1973] 1 All ER 90&lt;/ci:content&gt;
    &lt;/ci:cite&gt;, 
    [1973] 2 WLR 28, 25 P CR 48, 117 Sol Jo 34
  &lt;/case:citetext&gt;
&lt;/case:citations&gt;
<b>Becomes</b>
&lt;cttr:citations&gt;
  &lt;lnci:cite&gt;
    &lt;lnci:case&gt;
      &lt;lnci:caseref&gt;
        &lt;lnci:reporter value="AC"/&gt;
        &lt;lnci:edition&gt;
          &lt;lnci:date year="1973"/&gt;
        &lt;/lnci:edition&gt;
        &lt;lnci:page num="691"/&gt;
      &lt;/lnci:caseref&gt;
    &lt;/lnci:case&gt;
    &lt;lnci:content&gt;[1973] AC 691&lt;/lnci:content&gt;
  &lt;/lnci:cite&gt;, 
  &lt;lnci:cite&gt;
    &lt;lnci:case&gt;
      &lt;lnci:caseref&gt;
        &lt;lnci:reporter value="ALLER"/&gt;
        &lt;lnci:volume num="1"/&gt;
        &lt;lnci:edition&gt;
          &lt;lnci:date year="1973"/&gt;
        &lt;/lnci:edition&gt;
        &lt;lnci:page num="90"/&gt;
      &lt;/lnci:caseref&gt;
    &lt;/lnci:case&gt;
    &lt;lnci:content&gt;[1973] 1 All ER 90&lt;/lnci:content&gt;
  &lt;/lnci:cite&gt;, 
  [1973] 2 WLR 28, 25 P CR 48, 117 Sol Jo 34
&lt;/cttr:citations&gt;

</pre></li>
              </ul>
            </li>
            <li>
              <sourcexml>cttr:use-group</sourcexml> becomes
                <targetxml>cttr:consideredcase/cttr:usagegroup</targetxml> and the child element is
              described below: <ul>
                <li>
                  <sourcexml>cttr:use</sourcexml> becomes <targetxml>cttr:usage/text</targetxml> and
                  the attributes : <sourcexml>cttr:use/@signal</sourcexml> becomes
                    <targetxml>cttr:usage @usagetype</targetxml>. <note> Attribute
                      <targetxml>cttr:usage @usagetype</targetxml> is required and should be
                    defaulted to "unspecified", if the source is empty. </note>
                  <note> Attributes <targetxml>@negativesortweight</targetxml> and
                      <targetxml>@positivesortweight</targetxml> are added to the element
                      <targetxml>cttr:usagegroup</targetxml>. The vaules for these attributes are
                    calculated based on the designation, annotation type, usagegroup type and
                    decision date. Please refer to <xref href="../../common_newest/LxAdv-cttr.usagegroup_AddingSortWeightInformation.dita"/>. </note><pre>
&lt;cttr:annotations annotationtype="consideredcases"&gt;
  &lt;cttr:annot signal="negative"&gt;
    &lt;cttr:use-group&gt;
      &lt;cttr:use signal="neutral"&gt;Explained&lt;/cttr:use&gt;
    &lt;/cttr:use-group&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="considered-cases"&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:consideredcase treatment="negative"&gt;
        &lt;cttr:usagegroup&gt;
          &lt;cttr:usage usagetype="neutral"&gt;
            &lt;text&gt;Explained&lt;/text&gt;
          &lt;/cttr:usage&gt;
        &lt;/cttr:usagegroup&gt;
      &lt;/cttr:consideredcase&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

 </pre></li>
              </ul><p><sourcexml>remotelink/@service="DOC-ID"</sourcexml> becomes
                  <targetxml>ref:crossreference</targetxml> that comes with the required child
                element <targetxml>ref:content</targetxml> and with the attributes
                  <targetxml>ref:crossreference/@crossreferencetype="citatorAlert"</targetxml> and
                  <targetxml>ref:crossreference/@referencedresourcetype="citator"</targetxml>. </p>
              <p><targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> is
                determined based on the value of the parent
                <sourcexml>cttr:annot/@signal</sourcexml> as described below: <ul>
                  <li><sourcexml>cttr:annot/@signal="negative"</sourcexml> becomes
                    <targetxml>ref:crossreference/@referencedresourcesentiment="negative"</targetxml></li>
                  <li><sourcexml>cttr:annot/@signal="cautionary"</sourcexml> becomes
                    <targetxml>ref:crossreference/@referencedresourcesentiment="cautionary"</targetxml></li>
                  <li><sourcexml>cttr:annot/@signal="positive"</sourcexml> becomes
                    <targetxml>ref:crossreference/@referencedresourcesentiment="positive"</targetxml></li>
                  <li><sourcexml>cttr:annot/@signal="neutral"</sourcexml> becomes
                    <targetxml>ref:crossreference/@referencedresourcesentiment="neutral"</targetxml></li>
                  <li><sourcexml>cttr:annot/@signal="citation"</sourcexml> becomes
                    <targetxml>ref:crossreference/@referencedresourcesentiment="none"</targetxml></li>
                </ul></p>
              <p>
                <ul id="ul_rqw_nsn_il">
                  <li> Create <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml>
                    with attributes and children as follows: <ul id="ul_vrw_nsn_il">
                      <li> If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul id="ul_fsw_nsn_il">
                          <li>
                            <targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID". </li>
                          <li>
                            <targetxml>key-value/@value</targetxml> will be the value of
                              <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                              <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>,
                            which ever is present (if both are present, use
                              <sourcexml>@remotekey2</sourcexml>). </li>
                        </ul>
                      </li>
                      <li> If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul id="ul_psw_nsn_il">
                          <li>
                            <targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID". </li>
                          <li>
                            <targetxml>ref:key-value/@value</targetxml> will be the value of
                              <sourcexml>@dpsi</sourcexml> followed by hyphen and concatenated with
                              <sourcexml>@docidref</sourcexml>. </li>
                          <li> Create <targetxml>ref:locator/@anchoridref</targetxml> with value
                            from <sourcexml>@refpt</sourcexml> or
                            <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are
                            present, use <sourcexml>@refpt</sourcexml>). </li>
                        </ul></li>
                    </ul>
                    <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from
                        <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU
                      manifest file.</note>
                    <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number
                      must have an underscore added at the start. Also apply other identifier data
                      type formatting as used for <targetxml>xml:id</targetxml> and
                        <targetxml>ref:anchor/@id</targetxml>, e.g. change colon to
                      underscore.</note>
                    <note>Please refer to general markup section for more details on
                        <sourcexml>remotelink</sourcexml> and <sourcexml>inlineobject</sourcexml>
                      conversion instructions.</note>
                  </li>
                </ul>
                <pre>
&lt;cttr:annotations annotationtype="consideredcases"&gt;                
  &lt;cttr:annot signal="negative"&gt;
    &lt;remotelink dpsi="03W6" remotekey1="REFPTID" service="DOC-ID" refpt="105560"&gt;
      &lt;inlineobject type="image" attachment="web-server"/&gt;
    &lt;/remotelink&gt;
  &lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;

<b>Becomes</b>
&lt;cttr:refs&gt;
  &lt;cttr:refsection reftype="considered-cases"&gt;
    &lt;cttr:refitem&gt;
      &lt;cttr:consideredcase treatment="negative"&gt;
        &lt;ref:crossreference crossreferencetype="citatorAlert" referencedresourcesentiment="negative" referencedresourcetype="citator"&gt;
          &lt;ref:content/&gt;
          &lt;ref:locator anchoridref="_105560"&gt;
            &lt;ref:locator-key&gt;
              &lt;ref:key-name name="DOC-ID"/&gt;
              &lt;ref:key-value value="03W6- "/&gt;
            &lt;/ref:locator-key&gt;                                
          &lt;/ref:locator&gt;                         
        &lt;/ref:crossreference&gt;
      &lt;/cttr:consideredcase&gt;
    &lt;/cttr:refitem&gt;     
  &lt;/cttr:refsection&gt;
&lt;/cttr:refs&gt;

</pre>
              </p></li>
          </ul></li>
      </ul>
    </p>
    <section>
      <title>Changes</title>
      <p>2017-01-17: <ph id="change_20170117_brt">Use <sourcexml>cttr:annot/@signal</sourcexml> to
        determine the value for
        <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</ph></p>
      <p>2014-01-13: <ph id="change_20140113_brt">Added note to convert
        <sourcexml>cttr:annot/remotelink/inlineobject/@filename</sourcexml> to
        <targetxml>cttr:refitem/cttr:consideredcase/@treatment</targetxml> when <sourcexml>cttr:annot/@signal</sourcexml> is not present.</ph></p>
      <p>2013-12-11: <ph id="change_20131211_brt">Modified instructions to determine the value for
        <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml> - replaced 'citation' with 'none'.</ph></p>
      <p>2013-11-13: <ph id="change_20131113_brt">Added instructions to determine the value for
        <targetxml>ref:crossreference/@referencedresourcesentiment</targetxml>.</ph></p>
      <p>2013-10-22: <ph id="change_20131022_brt">Added instructions to convert
        <sourcexml>cttr:annot/@signal</sourcexml> to
        <targetxml>cttr:refitem/cttr:consideredcase/@treatment</targetxml>.</ph></p>
      <p>2013-08-30: <ph id="change_20130830_raj">Added reference to instruction for attributes
            <targetxml>@negativesortweight</targetxml> and
            <targetxml>@positivesortweight</targetxml> of
          <targetxml>cttr:usagegroup</targetxml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK05_Citator\consideredcases_cttr.annot.dita  -->
	<xsl:message>UK05_Citator_consideredcases_cttr.annot.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations @annotationtype=&#34;consideredcases&#34;/cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="considered-cases"/cttr:refitem   -->
		<cttr:refsection>
			<cttr:refitem>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refitem>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations/@annotationtype=&#34;consideredcases&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/@reftype="considered-cases"   -->
		<cttr:refsection>
			<xsl:attribute name="reftype">
				<xsl:text>considered-cases</xsl:text>
			</xsl:attribute>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annot/@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredcase/@treatment   -->
		<cttr:refitem>
			<cttr:consideredcase>
				<xsl:attribute name="treatment">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</cttr:consideredcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/remotelink/inlineobject/@filename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citingpub/@treatment   -->
		<cttr:citingpub>
			<xsl:attribute name="treatment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</cttr:citingpub>

	</xsl:template>

	<xsl:template match="cttr:annotations/cttr:annot/case:info"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection/cttr:refitem/cttr:consideredcase/cttr:caseinfo   -->
		<cttr:refsection>
			<cttr:refitem>
				<cttr:consideredcase>
					<cttr:caseinfo>
						<xsl:apply-templates select="@* | node()"/>
					</cttr:caseinfo>
				</cttr:consideredcase>
			</cttr:refitem>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:casename"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredcase/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename   -->
		<cttr:refitem>
			<cttr:consideredcase>
				<cttr:caseinfo>
					<caseinfo:casename xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/">
						<caseinfo:fullcasename>
							<xsl:apply-templates select="@* | node()"/>
						</caseinfo:fullcasename>
					</caseinfo:casename>
				</cttr:caseinfo>
			</cttr:consideredcase>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="emph"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/cttr:citations/lnci:cite   -->
		<cttr:caseinfo>
			<cttr:citations>
				<lnci:cite>
					<xsl:apply-templates select="@* | node()"/>
				</lnci:cite>
			</cttr:citations>
		</cttr:caseinfo>

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

	<xsl:template match="case:dates"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

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

	<xsl:template match="ci:content"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:content   -->
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template>

	<xsl:template match="ci:sesslaw"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:sesslaw   -->
		<lnci:sesslaw>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:sesslaw>

	</xsl:template>

	<xsl:template match="cttr:use-group"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredcase/cttr:usagegroup   -->
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

	<xsl:template match="cttr:use/@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:usage@usagetype   -->
		<cttr:usage>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:usage>

	</xsl:template>

	<xsl:template match="remotelink/@service=&#34;DOC-ID&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference   -->
		<ref:crossreference>
			<xsl:apply-templates select="@* | node()"/>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:annot/@signal=&#34;negative&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="negative"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>negative</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:annot/@signal=&#34;cautionary&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="cautionary"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>cautionary</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:annot/@signal=&#34;positive&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="positive"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>positive</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:annot/@signal=&#34;neutral&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="neutral"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>neutral</xsl:text>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="cttr:annot/@signal=&#34;citation&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment="none"   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:text>none</xsl:text>
			</xsl:attribute>
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

	<xsl:template match="remotelink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

	<xsl:template match="inlineobject"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  ref:crossreference/@referencedresourcesentiment   -->
		<ref:crossreference>
			<xsl:attribute name="referencedresourcesentiment">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:crossreference>

	</xsl:template>

</xsl:stylesheet>