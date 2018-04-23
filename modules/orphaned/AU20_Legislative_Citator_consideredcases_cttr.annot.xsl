<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case cttr docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="consideredcases_cttr.annot">
  <title>cttr:annotations @annotationtype="consideredcases"/cttr:annot <lnpid>id-AU20-22222</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations @annotationtype="consideredcases"/cttr:annot</sourcexml> becomes
            <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection @reftype="considered-cases"/cttr:refitem</targetxml>
          <note class="- topic/note "> The value of the attribute /cttr:annotations @annotationtype="consideredcases" maps to the attribute
            /cttr:refsection @reftype="considered-cases". </note> The attributes of cttr:annot : <sourcexml class="+ topic/keyword xml-d/sourcexml ">@signal</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:consideredcase @treatment</targetxml>
          and the child elements are described below :
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
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:info</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:consideredcase/cttr:caseinfo</targetxml>
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:casename</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:consideredcase/cttr:caseinfo/caseinfo:casename/caseinfo:fullcasename</targetxml>
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
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use-group</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:consideredcase/cttr:usagegroup</targetxml> and the child element is described below: <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:usage/text</targetxml> and the attributes : <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:use @signal</sourcexml>
                  becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:usage @usagetype</targetxml>
                </li>
                </ul>
              Attributes <targetxml>@negativesortweight</targetxml> and <targetxml>@positivesortweight</targetxml> are added to the element <targetxml>cttr:usagegroup</targetxml>.
              The values of the attribute is a combination of ranking of designation of annotation (A), ranking of annotation type (B), usagegroup type (C) and decision date (D). 
              <p>
              Value for <targetxml>@negativesortweight</targetxml> attribute is the combination of the following values
              <ul>
                <li>
                  (A) Rank of the value of <sourcexml>cttr:use-group/cttr:use/@signal</sourcexml> attribute. If there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml>
                  elements then the <sourcexml>@signal</sourcexml> value with highest ranking should be choosen.
                  
                  The <sourcexml>@signal</sourcexml> attirubute values and its ranking is given below,
                  <ul>
                    <li>1 - Negative</li>
                    <li>2 - Cautionary</li>
                    <li>3 - Positive</li>
                    <li>4 - Neutral</li>
                    <li>5 - Other blank</li>
                  </ul>
                </li>
                <li>
                  (B) Rank of the value of <sourcexml>cttr:use-group/cttr:use</sourcexml> element. If there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml>
                  elements, then only the value with highest ranking should be choosen from <sourcexml>cttr:use-group/cttr:use</sourcexml> with highest ranked 
                  <sourcexml>@signal</sourcexml> attribute. 
                  <ul>
                    <li>1 - Overruled</li>
                    <li>2 - Overruled in part</li>
                    <li>3 - Disapproved</li>
                    <li>4 - Other Negative</li>
                    <li>1 - Not followed</li>
                    <li>2 - Not applied</li>
                    <li>3 - Questioned</li>
                    <li>4 - Doubted</li>
                    <li>5 - Explained</li>
                    <li>6 - Distinguished</li>
                    <li>7 - Other Cautionary</li>
                    <li>1 - Followed</li>
                    <li>2 - Applied</li>
                    <li>3 - Approved</li>
                    <li>4 - Adopted</li>
                    <li>5 - Other Positive</li>
                    <li>1 - Considered</li>
                    <li>2 - Discussed</li>
                    <li>3 - Cited</li>
                    <li>4 - Referred to</li>
                    <li>5 - See</li>
                    <li>6 - Neutral Other</li>
                    <li>1 - Other</li>
                  </ul>
                </li>
                <li>
                  (C) If there is only one <sourcexml>cttr:use-group/cttr:use</sourcexml> element the value will be 1, and if there are more than one 
                  <sourcexml>cttr:use-group/cttr:use</sourcexml> elements the value will be 2.
                </li>
                <li>
                  (D) Value of attrubutes @year, @month and @day of <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml>
                  in YYYYMMDD format. If the <sourcexml>case:decisiondate</sourcexml> is not available the value will be "00000000". 
                </li>
              </ul>
              <pre xml:space="preserve" class="- topic/pre ">
              &lt;cttr:annot signal="cautionary"&gt;
                &lt;case:info&gt;
                  ...
                  &lt;case:courtinfo&gt;
                    &lt;case:dates&gt;
                      &lt;case:decisiondate&gt;
                        &lt;date day="31" month="08" year="1920"&gt;31/8/1920&lt;/date&gt;
                      &lt;/case:decisiondate&gt;
                    &lt;/case:dates&gt;
                    ...
                  &lt;/case:courtinfo&gt;
                &lt;/case:info&gt;
                &lt;cttr:use-group&gt;
                  &lt;cttr:use signal="neutral"&gt;Referred to&lt;/cttr:use&gt;
                  &lt;cttr:use signal="neutral"&gt;Cited&lt;/cttr:use&gt;
                &lt;/cttr:use-group&gt;
                ...
              &lt;/cttr:annot&gt;
              <b class="+ topic/ph hi-d/b ">Becomes</b>
              &lt;cttr:refitem&gt;
                &lt;cttr:consideredcase treatment="cautionary"&gt;
                  &lt;cttr:caseinfo&gt;
                    ...
                    &lt;decision:dates&gt;
                      &lt;decision:decisiondate day="31" month="08" year="1920"&gt;
                        &lt;date-text&gt;31/8/1920&lt;/date-text&gt;
                      &lt;/decision:decisiondate&gt;
                    &lt;/decision:dates&gt;
                  &lt;/cttr:caseinfo&gt;
                  &lt;cttr:usagegroup negativesortweight="44219200831" positivesortweight="44219200831"&gt;
                    &lt;cttr:usage usagetype="neutral"&gt;
                      &lt;text&gt;Referred to&lt;/text&gt;
                    &lt;/cttr:usage&gt;
                    &lt;cttr:usage usagetype="neutral"&gt;
                      &lt;text&gt;Cited&lt;/text&gt;
                    &lt;/cttr:usage&gt;
                  &lt;/cttr:usagegroup&gt;
                  ...
              &lt;/cttr:refitem&gt;
              </pre>
              </p>
              <p>
              Value for <targetxml>@positivesortweight</targetxml> attribute is the combination of the following values
              <ul>
                <li>
                  (A) Rank of the value of <sourcexml>cttr:use-group/cttr:use/@signal</sourcexml> attribute. If there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml>
                  elements then the <sourcexml>@signal</sourcexml> value with highest ranking should be choosen.
                  
                  The <sourcexml>@signal</sourcexml> attirubute values and its ranking is given below,
                  <ul>
                    <li>1 - Positive</li>
                    <li>2 - Negative</li>
                    <li>3 - Cautionary</li>
                    <li>4 - Neutral</li>
                    <li>5 - Other blank</li>
                  </ul>
                </li>
                <li>
                  (B) Rank of the value of <sourcexml>cttr:use-group/cttr:use</sourcexml> element. If there are multiple <sourcexml>cttr:use-group/cttr:use</sourcexml>
                  elements, then only the value with highest ranking should be choosen from <sourcexml>cttr:use-group/cttr:use</sourcexml> with highest ranked 
                  <sourcexml>@signal</sourcexml> attribute. 
                  <ul>
                    <li>1 - Overruled</li>
                    <li>2 - Overruled in part</li>
                    <li>3 - Disapproved</li>
                    <li>4 - Other Negative</li>
                    <li>1 - Not followed</li>
                    <li>2 - Not applied</li>
                    <li>3 - Questioned</li>
                    <li>4 - Doubted</li>
                    <li>5 - Explained</li>
                    <li>6 - Distinguished</li>
                    <li>7 - Other Cautionary</li>
                    <li>1 - Followed</li>
                    <li>2 - Applied</li>
                    <li>3 - Approved</li>
                    <li>4 - Adopted</li>
                    <li>5 - Other Positive</li>
                    <li>1 - Considered</li>
                    <li>2 - Discussed</li>
                    <li>3 - Cited</li>
                    <li>4 - Referred to</li>
                    <li>5 - See</li>
                    <li>6 - Neutral Other</li>
                    <li>1 - Other</li>
                  </ul>
                </li>
                <li>
                  (C) If there is only one <sourcexml>cttr:use-group/cttr:use</sourcexml> element the value will be 1, and if there are more than one 
                  <sourcexml>cttr:use-group/cttr:use</sourcexml> elements the value will be 2.
                </li>
                <li>
                  (D) Value of attrubutes @year, @month and @day of <sourcexml>cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate</sourcexml>
                  in YYYYMMDD format. If the <sourcexml>case:decisiondate</sourcexml> is not available the value will be "00000000". 
                </li>
              </ul>
              
              <pre xml:space="preserve" class="- topic/pre ">
              &lt;cttr:annot signal="negative"&gt;
                &lt;case:info&gt;
                  ...
                  &lt;case:courtinfo&gt;
                    &lt;case:dates&gt;
                      &lt;case:decisiondate&gt;&lt;date day="25" month="07" year="1955"
                      &gt;25/7/1955&lt;/date&gt;&lt;/case:decisiondate&gt;
                    &lt;/case:dates&gt;
                    ...
                  &lt;/case:courtinfo&gt;
                &lt;/case:info&gt;
                &lt;cttr:use-group&gt;
                  &lt;cttr:use signal="neutral"&gt;Referred to&lt;/cttr:use&gt;
                  &lt;cttr:use signal="positive"&gt;Applied&lt;/cttr:use&gt;
                &lt;/cttr:use-group&gt;
                ...
              &lt;/cttr:annot&gt;
              
              <b class="+ topic/ph hi-d/b ">Becomes</b>
              
              &lt;cttr:refitem&gt;
                &lt;cttr:consideredcase treatment="negative"&gt;
                  &lt;cttr:caseinfo&gt;
                    ...
                    &lt;decision:dates&gt;
                      &lt;decision:decisiondate day="25" month="07" year="1955"&gt;
                        &lt;date-text&gt;25/7/1955&lt;/date-text&gt;
                      &lt;/decision:decisiondate&gt;
                    &lt;/decision:dates&gt;
                  &lt;/cttr:caseinfo&gt;
                  &lt;cttr:usagegroup negativesortweight="32219550725" positivesortweight="12219550725"&gt;
                    &lt;cttr:usage usagetype="neutral"&gt;
                      &lt;text&gt;Referred to&lt;/text&gt;
                    &lt;/cttr:usage&gt;
                    &lt;cttr:usage usagetype="positive"&gt;
                      &lt;text&gt;Applied&lt;/text&gt;
                    &lt;/cttr:usage&gt;
                  &lt;/cttr:usagegroup&gt;
                &lt;/cttr:consideredcase&gt;
              &lt;/cttr:refitem&gt;
              </pre>
              </p>
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
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\consideredcases_cttr.annot.dita  -->
	<xsl:message>AU20_Legislative_Citator_consideredcases_cttr.annot.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations @annotationtype=&#34;consideredcases&#34;/cttr:annot"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="considered-cases"/cttr:refitem   -->
		<cttr:refsection>
			<cttr:refitem>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:refitem>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredcase@treatment   -->
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

		<!--  Original Target XPath:  cttr:consideredcase/cttr:usagegroup   -->
		<cttr:consideredcase>
			<cttr:usagegroup>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:usagegroup>
		</cttr:consideredcase>

	</xsl:template>

	<xsl:template match="case:citations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:consideredcase/cttr:usagegroup   -->
		<cttr:consideredcase>
			<cttr:usagegroup>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:usagegroup>
		</cttr:consideredcase>

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

	<xsl:template match="cttr:use @signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:usage@usagetype   -->
		<cttr:usage>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:usage>

	</xsl:template>

	<xsl:template match="cttr:use-group/cttr:use/@signal"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @positivesortweight   -->
		<xsl:attribute name="positivesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="cttr:use-group/cttr:use"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @positivesortweight   -->
		<xsl:attribute name="positivesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:courtinfo/case:dates/case:decisiondate"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @positivesortweight   -->
		<xsl:attribute name="positivesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="case:decisiondate"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  @positivesortweight   -->
		<xsl:attribute name="positivesortweight">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

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