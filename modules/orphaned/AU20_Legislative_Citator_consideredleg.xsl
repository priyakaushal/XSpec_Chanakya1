<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:source_lnci="http://www.lexis-nexis.com/lnci" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case ci cttr docinfo lnci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="consideredleg">
  <title>cttr:annotations @annotationtype="consideredleg" <lnpid>id-AU20-22223</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations @annotationtype="consideredleg"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection @reftype="considered-legislation"</targetxml>. <note class="- topic/note "> The
            value of the attribute /cttr:annotations @annotationtype="consideredleg" maps to the attribute /cttr:refsection
            @reftype="considered-legislation". Please note that the 'considered legislation' section works differently from the other <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations</sourcexml> : <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annotations[@annotationtype="consideredleg"]</sourcexml> maps to <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refsection[@reftype="considered-legislation"]</targetxml> and every <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:references</sourcexml> maps to <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:consideredlegis</targetxml>. Examples for two different scenarios are shown below: </note>
          <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annotations annotationtype="consideredleg"&gt;            
&lt;/cttr:annotations&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refsection reftype="considered-legislation"&gt;           
&lt;/cttr:refsection&gt;
                
</pre>
          The child element is described below : <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:references</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:consideredlegis</targetxml> and the children are described below : <ul class="- topic/ul ">
                <li class="- topic/li "> The tags <sourcexml class="+ topic/keyword xml-d/sourcexml ">p</sourcexml> and the child element <sourcexml class="+ topic/keyword xml-d/sourcexml ">text</sourcexml> are omitted but the content is maintained as shown below. <ul class="- topic/ul ">
                    <li class="- topic/li ">
                      <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:references/p/text/ci:cite</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite</targetxml> and the attribute <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:annot/case:references/p/text/ci:cite @searchtype="LEG-REF"</sourcexml> becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite @type="legislation"</targetxml> the child
                      element is described below: <ul class="- topic/ul ">
                        <li class="- topic/li ">
                          <sourcexml class="+ topic/keyword xml-d/sourcexml ">ci:cite/ci:content</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">lnci:cite/lnci:content</targetxml> and the child element <sourcexml class="+ topic/keyword xml-d/sourcexml ">citefragment</sourcexml> is dropped but the content is maintained in <sourcexml class="+ topic/keyword xml-d/sourcexml ">lnci:content</sourcexml> as follows : <ul class="- topic/ul ">
                            <li class="- topic/li ">
                              <sourcexml class="+ topic/keyword xml-d/sourcexml ">/cttr:annot/case:references/p/text/ci:cite
                                @searchtype="LEG-REF"/ci:content/citefragment @searchtype="LEG-NAME-REF"/remotelink</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite @type="legislation"</targetxml>
                            </li>
                            <li class="- topic/li ">
                              <sourcexml class="+ topic/keyword xml-d/sourcexml ">/cttr:annot/case:references/p/text/ci:cite
                                @searchtype="LEG-REF"/ci:content/citefragment @searchtype="LEG-PROV-REF"</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:refitem/cttr:consideredlegis/cttr:legiscomponents/cttr:legiscomponent
                                @componenttype="provision"</targetxml>
                            </li>
                            <li class="- topic/li "> The child element <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:references/p/text/ci:cite/ci:content/citefragment/remotelink</sourcexml> is described below:
                                <sourcexml>remotelink /@service="DOC-ID"</sourcexml> becomes
                                <targetxml>cttr:priorhist/cttr:histitem/cttr:histdecision/ref:crossreference</targetxml> that comes with the required
                              child element <targetxml>ref:content</targetxml> and with the attribute <targetxml>ref:crossreference
                                @crossreferencetype="citatorAlert"</targetxml>. <ul>
                                <li>
                                  <p> Create <targetxml>ref:crossreference/ref:locator/ref:locator-key</targetxml> with attributes and children as
                                    follows: <ul>
                                      <li>If <sourcexml>@remotekey1="DOC-ID"</sourcexml> then <ul>
                                          <li>
                                            <targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>

                                          <li><targetxml>key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed by
                                            hyphen and concatenated with <sourcexml>@refpt</sourcexml> or <sourcexml>@remotekey2</sourcexml>, which
                                            ever is present (if both are present, use <sourcexml>@remotekey2</sourcexml>).</li>

                                        </ul>
                                      </li>

                                      <li>If <sourcexml>@remotekey1="REFPTID"</sourcexml> then <ul>
                                          <li>
                                            <targetxml>ref:key-name/@name</targetxml> will have the value "DOC-ID".</li>

                                          <li><targetxml>ref:key-value/@value</targetxml> will be the value of <sourcexml>@dpsi</sourcexml> followed
                                            by hyphen and concatenated with <sourcexml>@docidref</sourcexml>.</li>

                                          <li>Create <targetxml>ref:locator/@anchoridref</targetxml> with value from <sourcexml>@refpt</sourcexml> or
                                              <sourcexml>@remotekey2</sourcexml>, which ever is present (if both are present, use
                                              <sourcexml>@refpt</sourcexml>). </li>
                                        </ul>
                                      </li>
                                    </ul>
                                  </p>
                                  <note>If <sourcexml>remotelink/@dpsi</sourcexml> is not present, use value from
                                      <sourcexml>docinfo:dpsi/@id-string</sourcexml> or capture value from the LBU manifest file.</note>
                                  <note><targetxml>ref:locator/@anchoridref</targetxml> that begins with a number must have an underscore added at the
                                    start. Also apply other identifier data type formatting as used for <targetxml>xml:id</targetxml> and
                                      <targetxml>ref:anchor/@id</targetxml>, e.g. change colon to underscore.</note>
                                </li>
                              </ul>
                            </li>
                            <li>
                              The source element <sourcexml>case:references/p/text/ci:cite/ci:content/citefragment/lnlink</sourcexml> and its 
                              children (<sourcexml>marker</sourcexml>, <sourcexml>api-params</sourcexml>) are dropped but the content is maintained in <targetxml>lnci:content</targetxml> as shown below:
                              
<pre>

&lt;ci:cite searchtype="BOOK-REF"&gt;
  &lt;ci:content&gt;
    &lt;citefragment searchtype="BOOK-CITE-REF"&gt;
      &lt;lnlink service="SEARCH" scope="364688" scope-protocol="csi"&gt;
        &lt;marker&gt;ISBN: 9780409325843&lt;/marker&gt;
        &lt;api-params&gt;
          &lt;param name="searchString" value="REF-CASE((1931) 3 P 2d 720)"/&gt;
        &lt;/api-params&gt;
      &lt;/lnlink&gt;
    &lt;/citefragment&gt;
  &lt;/ci:content&gt;
&lt;/ci:cite&gt;

<b>Becomes</b>

&lt;lnci:cite type="book"&gt;
  &lt;lnci:content&gt;ISBN: 9780409325843&lt;/lnci:content&gt;
&lt;/lnci:cite&gt;

</pre>   
                            </li>  
                              
                          </ul>
                          <p class="- topic/p ">
                            <b class="+ topic/ph hi-d/b ">Scenario:1 - One case:references within cttr:annot</b>
                            <pre xml:space="preserve" class="- topic/pre ">          
&lt;cttr:annot&gt;
  &lt;case:references&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;ci:cite searchtype="LEG-REF"&gt;
          &lt;ci:content&gt;
            &lt;citefragment searchtype="LEG-NAME-REF"&gt;
              &lt;remotelink dpsi="005X" docidref="ABCD_1234" refpt="CTH_ACT_1974-51" remotekey1="REFPTID" service="DOC-ID"&gt;
                Trade Practices Act 1974 (Cth)
              &lt;/remotelink&gt;
            &lt;/citefragment&gt;
            &lt;citefragment searchtype="LEG-PROV-REF"&gt; s 46, s 46(1)(b), s 46(1)(c), s 4E, s 4F&lt;/citefragment&gt;
          &lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/case:references&gt;
&lt;/cttr:annot&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refitem&gt;
  &lt;cttr:consideredlegis&gt;
    &lt;legisinfo:names&gt;
      &lt;legisinfo:officialtitle&gt;
        &lt;lnci:cite type="legislation" citeref="CTH_ACT_1974-51"&gt;
          &lt;lnci:content&gt;     
          &lt;ref:crossreference crossreferencetype="citatorAlert"&gt;
    &lt;ref:content&gt;Trade Practices Act 1974 (Cth)&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="CTH_ACT_1974-51"&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="005X-ABCD_1234"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;

          &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/legisinfo:officialtitle&gt;
    &lt;/legisinfo:names&gt;
    &lt;cttr:legiscomponents&gt;
      &lt;cttr:legiscomponent componenttype="provision"&gt;
        &lt;desig&gt;s 46, s 46(1)(b), s 46(1)(c), s 4E, s 4F&lt;/desig&gt;
      &lt;/cttr:legiscomponent&gt;
    &lt;/cttr:legiscomponents&gt;
  &lt;/cttr:consideredlegis&gt;
&lt;/cttr:refitem&gt;
                
</pre></p>
                          <b class="+ topic/ph hi-d/b ">Scenario:2 - Multiple case:references within cttr:annot</b>
                          <pre xml:space="preserve" class="- topic/pre ">
&lt;cttr:annot&gt;
  &lt;case:references&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;ci:cite searchtype="LEG-REF"&gt;
        &lt;ci:content&gt;
          &lt;citefragment searchtype="LEG-NAME-REF"&gt;
            &lt;remotelink dpsi="005X" docidref="ABCD_1234" refpt="CTH_ACT_1900-1"
            remotekey1="REFPTID" service="DOC-ID"&gt;Commonwealth of Australia Constitution Act
            &lt;/remotelink&gt;
          &lt;/citefragment&gt;
          &lt;citefragment searchtype="LEG-PROV-REF"&gt; s 75(v)&lt;/citefragment&gt;
        &lt;/ci:content&gt;
      &lt;/ci:cite&gt;
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:references&gt;
&lt;case:references&gt;
  &lt;p&gt;
    &lt;text&gt;
      &lt;ci:cite searchtype="LEG-REF"&gt;
        &lt;ci:content&gt;
          &lt;citefragment searchtype="LEG-NAME-REF"&gt;
            &lt;remotelink dpsi="005X" docidref="ABCD_1234" refpt="CTH_ACT_1988-86"
              remotekey1="REFPTID" service="DOC-ID"&gt;Workplace Relations Act 1996 (Cth)
            &lt;/remotelink&gt;
          &lt;/citefragment&gt;
          &lt;citefragment searchtype="LEG-PROV-REF"&gt; s 170MW(1), s 170MW(3), s 45, s 45(1)(b), s 45(6), s 45(7)
          &lt;/citefragment&gt;
        &lt;/ci:content&gt;
      &lt;/ci:cite&gt;
    &lt;/text&gt;
  &lt;/p&gt;
&lt;/case:references&gt;
&lt;/cttr:annot&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;cttr:refitem&gt;
  &lt;cttr:consideredlegis&gt;
    &lt;legisinfo:names&gt;
      &lt;legisinfo:officialtitle&gt;
        &lt;lnci:cite type="legislation" citeref="CTH_ACT_1900-1"&gt;
          &lt;lnci:content&gt;        
          
          &lt;ref:crossreference crossreferencetype="citatorAlert"&gt;
    &lt;ref:content&gt;Commonwealth of Australia Constitution Act&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="_CTH_ACT_1900-1"&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="005X-ABCD_1234"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;

          
          &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/legisinfo:officialtitle&gt;
    &lt;/legisinfo:names&gt;
    &lt;cttr:legiscomponents&gt;
      &lt;cttr:legiscomponent componenttype="provision"&gt;
        &lt;desig&gt;s 75(v)&lt;/desig&gt;
      &lt;/cttr:legiscomponent&gt;
    &lt;/cttr:legiscomponents&gt;
  &lt;/cttr:consideredlegis&gt;
&lt;/cttr:refitem&gt;
&lt;cttr:refitem&gt;
  &lt;cttr:consideredlegis&gt;
    &lt;legisinfo:names&gt;
      &lt;legisinfo:officialtitle&gt;
        &lt;lnci:cite type="legislation" citeref="CTH_ACT_1988-86"&gt;
          &lt;lnci:content&gt; 
             
             &lt;ref:crossreference crossreferencetype="citatorAlert"&gt;
    &lt;ref:content&gt; Workplace Relations Act 1996 (Cth)&lt;/ref:content&gt;
    &lt;ref:locator anchoridref="CTH_ACT_1988-86"&gt;
        &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOC-ID"/&gt;
            &lt;ref:key-value value="005X-ABCD_1234"/&gt;
        &lt;/ref:locator-key&gt;
    &lt;/ref:locator&gt;
&lt;/ref:crossreference&gt;
          
          &lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/legisinfo:officialtitle&gt;
    &lt;/legisinfo:names&gt;
    &lt;cttr:legiscomponents&gt;
      &lt;cttr:legiscomponent componenttype="provision"&gt;
        &lt;desig&gt;s 170MW(1), s 170MW(3), s 45, s 45(1)(b), s 45(6), s 45(7)&lt;/desig&gt;
      &lt;/cttr:legiscomponent&gt;
    &lt;/cttr:legiscomponents&gt;
  &lt;/cttr:consideredlegis&gt;
&lt;/cttr:refitem&gt;
                
</pre>
                        </li>
                      </ul>
                    </li>
                  </ul>
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\consideredleg.dita  -->
	<xsl:message>AU20_Legislative_Citator_consideredleg.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations @annotationtype=&#34;consideredleg&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection@reftype="considered-legislation"   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="considered-legislation"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annotations[@annotationtype=&#34;consideredleg&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="considered-legislation"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annot/case:references"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="p"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<lnci:cite>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:cite>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="text"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<lnci:cite>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:cite>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/case:references/p/text/ci:cite"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<lnci:cite>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:cite>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="cttr:annot/case:references/p/text/ci:cite @searchtype=&#34;LEG-REF&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite@type="legislation"   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<lnci:cite>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:cite>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="ci:cite/ci:content"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:cite/lnci:content   -->
		<lnci:cite>
			<lnci:content>
				<xsl:apply-templates select="@* | node()"/>
			</lnci:content>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="citefragment"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite@type="legislation"   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<lnci:cite>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:cite>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="lnci:content"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite@type="legislation"   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<lnci:cite>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:cite>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="/cttr:annot/case:references/p/text/ci:cite&#xA;                                @searchtype=&#34;LEG-REF&#34;/ci:content/citefragment @searchtype=&#34;LEG-NAME-REF&#34;/remotelink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/legisinfo:names/legisinfo:officialtitle/lnci:cite@type="legislation"   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<legisinfo:names xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<legisinfo:officialtitle>
						<lnci:cite>
							<xsl:apply-templates select="@* | node()"/>
						</lnci:cite>
					</legisinfo:officialtitle>
				</legisinfo:names>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="/cttr:annot/case:references/p/text/ci:cite&#xA;                                @searchtype=&#34;LEG-REF&#34;/ci:content/citefragment @searchtype=&#34;LEG-PROV-REF&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refitem/cttr:consideredlegis/cttr:legiscomponents/cttr:legiscomponent@componenttype="provision"   -->
		<cttr:refitem>
			<cttr:consideredlegis>
				<cttr:legiscomponents>
					<cttr:legiscomponent>
						<xsl:apply-templates select="@* | node()"/>
					</cttr:legiscomponent>
				</cttr:legiscomponents>
			</cttr:consideredlegis>
		</cttr:refitem>

	</xsl:template>

	<xsl:template match="case:references/p/text/ci:cite/ci:content/citefragment/remotelink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:priorhist/cttr:histitem/cttr:histdecision/ref:crossreference   -->
		<cttr:priorhist>
			<cttr:histitem>
				<cttr:histdecision>
					<ref:crossreference>
						<xsl:apply-templates select="@* | node()"/>
					</ref:crossreference>
				</cttr:histdecision>
			</cttr:histitem>
		</cttr:priorhist>

	</xsl:template>

	<xsl:template match="remotelink /@service=&#34;DOC-ID&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:priorhist/cttr:histitem/cttr:histdecision/ref:crossreference   -->
		<cttr:priorhist>
			<cttr:histitem>
				<cttr:histdecision>
					<ref:crossreference>
						<xsl:apply-templates select="@* | node()"/>
					</ref:crossreference>
				</cttr:histdecision>
			</cttr:histitem>
		</cttr:priorhist>

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

	<xsl:template match="case:references/p/text/ci:cite/ci:content/citefragment/lnlink"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:content   -->
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template>

	<xsl:template match="marker"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:content   -->
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template>

	<xsl:template match="api-params"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  lnci:content   -->
		<lnci:content>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:content>

	</xsl:template>

</xsl:stylesheet>