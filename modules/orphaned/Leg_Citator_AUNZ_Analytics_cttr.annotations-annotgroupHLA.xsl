<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupHLA">
  <title>cttr:content/cttr:annotations[@annotgroup="HLA"] <lnpid>id-AU20-22261</lnpid></title>

  <body>
    <section>
      <p>For <sourcexml>cttr:annotations</sourcexml> with an <sourcexml>@annotgroup="HLA"</sourcexml> 
        content is mapped to <targetxml>cttr:refsection[@reftype="citing-publications"][@xml:id="refsection-HLA"]</targetxml>.</p>
      <p>Perform the general mappings in the "Analytics Tab Content's" "cttr:body/cttr:content" section of this CI, and 
        then continue with the unique mapping instructions below.</p>
      <p>Create <targetxml>cttr:refsection/ref:anchor[@id="ref-halsburys"]</targetxml> inside 
        <targetxml>cttr:refsection</targetxml>.</p>
    </section>

    <example>
      <title>Source Halsbury's citation</title>
      <codeblock>
&lt;cttr:annotations annotationtype="productuse" annotgroup="HLA"&gt;
	&lt;heading&gt;
		&lt;title&gt;Halsbury's Law of Australia&lt;/title&gt;
		&lt;!-- AMI2.2--&gt;
		&lt;subtitle&gt;(32)&lt;/subtitle&gt;
	&lt;/heading&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;?file to="cth\act\1995\2\a\hla_105_2_b_105-30.xml" ?&gt;
		&lt;?category title="Commentary" ?&gt;
		&lt;comm:info ln.type="seg" ln.segname="COMMINFO" ln.nsprefix="lnv:"&gt;
			&lt;title&gt;5 — Aboriginals and Torres Strait Islanders&lt;/title&gt;
		&lt;/comm:info&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;[105-30]. Examples&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="105-30"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
			&lt;comm:citetext&gt;Path: &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;(2) CRIMINAL CONTEMPT&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="HLA_105_2"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;(B) Contempt in the Face of the Court&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="HLA_105_2_B"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;[105-100]. Statutory restrictions&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="105-100"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
			&lt;comm:citetext&gt;Path: &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;(2) CRIMINAL CONTEMPT&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="HLA_105_2"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;(C) Contempt by Publication&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="HLA_105_2_C"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;(II) Reporting Court Proceedings&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="HLA_105_2_C_II"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;?file to="cth\act\1995\2\a\hla_10_v_10_c_10-8590.xml" ?&gt;
		&lt;?category title="Commentary" ?&gt;
		&lt;comm:info ln.type="seg" ln.segname="COMMINFO" ln.nsprefix="lnv:"&gt;
			&lt;title&gt;5 — Aboriginals and Torres Strait Islanders&lt;/title&gt;
		&lt;/comm:info&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;[10-8590]. Secrecy of information held by
                           Ombudsman&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="10-8590"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
			&lt;comm:citetext&gt;Path: &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;V TRIBUNALS&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="HLA_10_V"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;(10) OMBUDSMAN&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="HLA_10_V_10"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;(C) Information and Evidence Gathering Powers of
                           Ombudsman&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="0088"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="HLA_10_V_10_C"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
      </codeblock>

      <title>Target Halsbury's citation</title>
      <codeblock>
&lt;cttr:refsection xml:id="refsection-HLA" reftype="citing-publications"&gt;
	&lt;ref:anchor id="ref-halsburys"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Halsbury's Law of Australia (32)&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:refitem&gt;
		&lt;cttr:citingpub treatment="citation"&gt;
			&lt;title&gt;5 — Aboriginals and Torres Strait Islanders&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;[105-30]. Examples&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0088-105-30"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Path: &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;(2) CRIMINAL CONTEMPT&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0088-HLA_105_2"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;(B) Contempt in the Face of the Court&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0088-HLA_105_2_B"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt;
					&lt;/text&gt;
				&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/cttr:citingpub&gt;
	&lt;/cttr:refitem&gt;
	&lt;cttr:refitem&gt;
		&lt;cttr:citingpub treatment="citation"&gt;
			&lt;title&gt;5 — Aboriginals and Torres Strait Islanders&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;[105-100]. Statutory restrictions&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0088-105-100"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Path: &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;(2) CRIMINAL CONTEMPT&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0088-HLA_105_2"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;(C) Contempt by Publication&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0088-HLA_105_2_C"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;(II) Reporting Court Proceedings&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0088-HLA_105_2_C_II"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt;
					&lt;/text&gt;
				&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/cttr:citingpub&gt;
	&lt;/cttr:refitem&gt;
	&lt;cttr:refitem&gt;
		&lt;cttr:citingpub treatment="citation"&gt;
			&lt;title&gt;5 — Aboriginals and Torres Strait Islanders&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;[10-8590]. Secrecy of information held by
                                    Ombudsman&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="0088-10-8590"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Path: &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;V TRIBUNALS&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0088-HLA_10_V"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;(10) OMBUDSMAN&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0088-HLA_10_V_10"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;(C) Information and Evidence
                                            Gathering Powers of Ombudsman&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="0088-HLA_10_V_10_C"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt;
					&lt;/text&gt;
				&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/cttr:citingpub&gt;
	&lt;/cttr:refitem&gt;
&lt;/cttr:refsection&gt;
        </codeblock>
    </example>

    <section>
      <title>Changes</title>
    	<p>2016-06-03: <ph id="change_20160603a_snb">Corrected target markup example to have 
    		<targetxml>ref:crossreference/@crossreferencetype="seeAlso"</targetxml> and 
    		<targetxml>ref:locator/@anchortype="global"</targetxml>.</ph></p>
    	<p>2015-12-11: <ph id="change_20151211f_snb">Added instruction to perform the general mappings in 
        the "cttr:body/cttr:content" section, and then continue with mappings in this section. Changed 
        <targetxml>@id="ref-HLA"</targetxml> to be <targetxml>@xml:id="refsection-HLA"</targetxml> and specified explicitly 
        that it was inside <targetxml>cttr:refsection</targetxml>. Removed <targetxml>pubtype="journal-article"</targetxml> 
        from example. Moved the rest of mapping instructions to general mappings in 
        the "cttr:body/cttr:content" section because they apply to all types of <sourcexml>cttr:annotations</sourcexml> 
        for the analytics tab. Changes were made to those mappings; see the change history in the 
        the "cttr:body/cttr:content" section for details of those changes. Replaced examples.</ph>
      </p>
    </section>






  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupHLA.dita  -->
	<xsl:message>Leg_Citator_AUNZ_Analytics_cttr.annotations-annotgroupHLA.xsl requires manual development!</xsl:message> 

	<xsl:template match="cttr:annotations"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="citing-publications"][@xml:id="refsection-HLA"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

	<xsl:template match="@annotgroup=&#34;HLA&#34;"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:refsection[@reftype="citing-publications"][@xml:id="refsection-HLA"]   -->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>

</xsl:stylesheet>