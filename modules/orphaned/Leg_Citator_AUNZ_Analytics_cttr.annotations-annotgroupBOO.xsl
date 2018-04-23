<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupBOO">
  <title>For cttr:annotations[@annotgroup="BOO"] <lnpid>id-AU20-22258</lnpid></title>

  <body>
    <section>
      <p>For <sourcexml>cttr:annotations[@annotgroup="BOO"]</sourcexml> create new
        <targetxml>cttr:refsection</targetxml> element with attributes
        <targetxml>@reftype="citing-publications"</targetxml> and
        <targetxml>@xml:id="refsection-BOO"</targetxml>.</p>
      <p>Perform the general mappings in the "Analytics Tab Content's" "cttr:body/cttr:content" section of this CI, and 
        then continue with the unique mapping instructions below.</p>
      <p>Create <targetxml>cttr:refsection/ref:anchor[@id="ref-textbooks"]</targetxml>
      </p>
      <p>
        <ul>
          <li>If <sourcexml>cttr:annot[@signal="citation"]/comm:info/contrib</sourcexml> create following cttr:citingpub <targetxml>
            cttr:descriptors/cttr:descriptorsection@descriptortype="abstract"/heading/note[@notetype="other"]/byline/person:contributor[@contributor-type="author"]/person:person/person:name.text
          </targetxml>
          </li>
          <li>If <sourcexml>cttr:annot[@signal="citation"]/comm:info/isbn</sourcexml> include with note above <targetxml>
            bodytext/note[@notetype="other"]/byline/person:contributor[@contributor-type="author"]/person:person/person.bio/person:bio.text/classify:classification[@classscheme="isbn"]/classify:classitem/
            classify:classitem-identifier/classify:classcode</targetxml>
          </li>
        </ul>
      </p>
    </section>

    <example>
      <title>Example 1: Source standard</title>
      <codeblock>
  &lt;cttr:annotations annotationtype="productuse" annotgroup="BOO"&gt;
    &lt;heading&gt;
      &lt;title&gt;Textbooks&lt;/title&gt;
      
        </codeblock>

      <title>Example 1: Target standard</title>
      <codeblock>
 &lt;cttr:refsection reftype="citing-publications" xml:id="refsection-BOO"&gt;
      &lt;ref:anchor id="ref-textbooks"/&gt;
       &lt;heading&gt;
          &lt;title&gt;Textbooks&lt;/title&gt;     
        </codeblock>
    </example>
    <example>
      <title>Example 2: Source annotgroup="BOO" with ISBN and/or CONTRIB</title>
      <codeblock>
&lt;cttr:annotations annotationtype="productuse" annotgroup="BOO"&gt;
	&lt;heading&gt;
		&lt;title&gt;Textbooks&lt;/title&gt;
		&lt;subtitle&gt;(3)&lt;/subtitle&gt;
	&lt;/heading&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;?file to="cth\act\1989\2\A\CTH_ACT_1995-2.mockup.8.xml" ?&gt;
		&lt;?category title="Textbooks" ?&gt;
		&lt;comm:info ln.type="seg" ln.segname="COMMINFO" ln.nsprefix="lnv:"&gt;
			&lt;title&gt;The Law of Misleading or Deceptive Conduct 3rd ed 2011&lt;/title&gt;
			&lt;contrib&gt;Lockhart, Colin&lt;/contrib&gt;
			&lt;isbn&gt;9780409326274&lt;/isbn&gt;
		&lt;/comm:info&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;[2.13] Private Transactions&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0LE5"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="PBLM.C2.GRP3.4"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
			&lt;comm:citetext&gt;Path: &lt;lnlink&gt;
					&lt;marker role="content"&gt;'CONDUCT IN TRADE OR COMMERCE'&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0LE5"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="0LE5-PBLM.C2"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;'In Trade or Commerce': 'Conduct in Trade or
                           Commerce'&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0LE5"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="PBLM.C2.GRP3"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
        </codeblock>

      <title>Example 2: Target annotgroup="BOO" with ISBN</title>
      <codeblock>
&lt;cttr:refsection xml:id="refsection-BOO" reftype="citing-publications"&gt;
	&lt;ref:anchor id="ref-textbooks"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Textbooks (3)&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:refitem&gt;
		&lt;cttr:citingpub treatment="citation"&gt;
			&lt;title&gt;The Law of Misleading or Deceptive Conduct 3rd ed 2011&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;[2.13] Private Transactions&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0LE5-PBLM.C2.GRP3.4"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Path: &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;'CONDUCT IN TRADE OR COMMERCE'&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0LE5-0LE5-PBLM.C2"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;'In Trade or Commerce': 'Conduct
                                            in Trade or Commerce'&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0LE5-PBLM.C2.GRP3"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt;
					&lt;/text&gt;
				&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/cttr:citingpub&gt;
		&lt;cttr:descriptors&gt;
			&lt;cttr:descriptorsection descriptortype="abstract"&gt;
				&lt;heading&gt;
					&lt;note notetype="other"&gt;
						&lt;byline&gt;
							&lt;person:contributor contributor-type="author"&gt;
								&lt;person:person&gt;
									&lt;person:name.text&gt;Lockhart, Colin&lt;/person:name.text&gt;
									&lt;person:bio&gt;
										&lt;person:bio.text&gt;
											&lt;classify:classification classscheme="isbn"&gt;
												&lt;classify:classitem&gt;
													&lt;classify:classitem-identifier&gt;
														&lt;classify:classcode&gt;9780409326274&lt;/classify:classcode&gt;
													&lt;/classify:classitem-identifier&gt;
												&lt;/classify:classitem&gt;
											&lt;/classify:classification&gt;
										&lt;/person:bio.text&gt;
									&lt;/person:bio&gt;
								&lt;/person:person&gt;
							&lt;/person:contributor&gt;
						&lt;/byline&gt;
					&lt;/note&gt;
				&lt;/heading&gt;
			&lt;/cttr:descriptorsection&gt;
		&lt;/cttr:descriptors&gt;
	&lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;          
        </codeblock>
    </example>

    <section>
      <title>Changes</title>
    	<p>2016-06-03: <ph id="change_20160603a_snb">Corrected target markup examples to have 
    		<targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
    		<targetxml>ref:locator/@anchortype="global"</targetxml>.</ph></p>
    	<p>2015-12-11: <ph id="change_20151211l_snb">Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Removed mapping 
        instructions that were redundant with those general mappings. Replaced markup example 2.</ph>
      </p>
    </section>






  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupBOO.dita  -->
	<xsl:message>Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupBOO.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations[@annotgroup=&#34;BOO&#34;]"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="cttr:annot[@signal=&#34;citation&#34;]/comm:info/contrib"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:descriptors/cttr:descriptorsection@descriptortype="abstract"/heading/note[@notetype="other"]/byline/person:contributor[@contributor-type="author"]/person:person/person:name.text   -->
		<cttr:descriptors>
			<!--  Could not determine target element or attribute name:  <cttr:descriptorsection@descriptortype="abstract"/heading/note[@notetype="other"]/byline/person:contributor[@contributor-type="author"]/person:person/person:name.text>  -->
				<heading>
					<note>
						<byline>
							<person:contributor xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
								<person:person>
									<person:name.text>
										<xsl:apply-templates select="@* | node()"/>
									</person:name.text>
								</person:person>
							</person:contributor>
						</byline>
					</note>
				</heading>
			<!--  Could not determine target element or attribute name:  </cttr:descriptorsection@descriptortype="abstract"/heading/note[@notetype="other"]/byline/person:contributor[@contributor-type="author"]/person:person/person:name.text>  -->
		</cttr:descriptors>

	</xsl:template>

	<xsl:template match="cttr:annot[@signal=&#34;citation&#34;]/comm:info/isbn"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  bodytext/note[@notetype="other"]/byline/person:contributor[@contributor-type="author"]/person:person/person.bio/person:bio.text/classify:classification[@classscheme="isbn"]/classify:classitem/classify:classitem-identifier/classify:classcode   -->
		<bodytext>
			<note>
				<byline>
					<person:contributor xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/">
						<person:person>
							<person.bio>
								<person:bio.text>
									<classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
										<classify:classitem>
											<classify:classitem-identifier>
												<classify:classcode>
													<xsl:apply-templates select="@* | node()"/>
												</classify:classcode>
											</classify:classitem-identifier>
										</classify:classitem>
									</classify:classification>
								</person:bio.text>
							</person.bio>
						</person:person>
					</person:contributor>
				</byline>
			</note>
		</bodytext>

	</xsl:template>

</xsl:stylesheet>