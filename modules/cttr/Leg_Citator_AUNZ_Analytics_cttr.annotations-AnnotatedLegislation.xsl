<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Leg_Citator_AUNZ_Analytics_cttr.annotations-AnnotatedLegislation">
  <title>cttr:content/cttr:annotations with Title "Annotated Legislation" <lnpid>id-AU20-22257</lnpid></title>

  <body>

<section>
	<p>For <sourcexml>cttr:annotations</sourcexml> containing <sourcexml>heading/title</sourcexml> 
        that contains the text "Annotated Legislation", content is mapped to 
        <targetxml>cttr:refsection[@reftype="citing-publications"][@xml:id="refsection-annotated-legislation"]</targetxml>.</p>
	<p>Perform the general mappings in the "Analytics Tab Content's" "cttr:body/cttr:content" section of this CI, and 
        then continue with the unique mapping instructions below.</p>
	<p>Create <targetxml>cttr:refsection/ref:anchor[@id="ref-annotated-legislation"]</targetxml> inside 
        <targetxml>cttr:refsection</targetxml>.</p>
</section>

<example>
	<title>Source Annotated Legislation</title>
	<codeblock>
&lt;cttr:annotations id="AMP1"&gt;
	&lt;heading&gt;
		&lt;title&gt;Annotated Legislation&lt;/title&gt;
		&lt;subtitle&gt;(1)&lt;/subtitle&gt;
	&lt;/heading&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;!--88--&gt;
		&lt;?file to="cth\act\1995\2\a\ACCL.CTH.ETA99.PT2.D3.xml"?&gt;
		&lt;?category title="Annotated Legislation"?&gt;
		&lt;heading inline="false"&gt;
			&lt;title&gt;Australian Consumer Credit Law &lt;/title&gt;
		&lt;/heading&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;s 15 Attribution of electronic
                           communications&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006J"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="ACCL.CTH.ETA99.S15"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
			&lt;comm:citetext&gt;Path: &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;Part 2 Application of legal requirements to
                           electronic communications [ss 8–15]&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006J"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="ACCL.CTH.ETA99.PT2"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;DIVISION 3 OTHER PROVISIONS RELATING TO LAWS OF THE
                           COMMONWEALTH [ss 14–15]&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006J"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="ACCL.CTH.ETA99.PT2.D3"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;!--162--&gt;
		&lt;?file to="cth\act\1995\2\a\ACCL.CTH.ETRC00.SCH1.xml"?&gt;
		&lt;?category title="Annotated Legislation"?&gt;
		&lt;heading inline="false"&gt;
			&lt;title&gt;Australian Consumer Credit Law &lt;/title&gt;
		&lt;/heading&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;SCHEDULE 1 LAWS OF THE COMMONWEALTH TO WHICH CERTAIN
                           PROVISIONS OF THE ACT DO NOT APPLY&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006J"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="ACCL.CTH.ETRC00.SCH1"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;!--subsection (1)--&gt;
		&lt;?file to="cth\act\1995\2\a\AFL.EA.EA95.C3.PT3-10.D1A.xml"?&gt;
		&lt;?category title="Annotated Legislation"?&gt;
		&lt;heading inline="false"&gt;
			&lt;title&gt;Evidence Act&lt;/title&gt;
		&lt;/heading&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;[32,300] s 126H Protection of journalists’
                           sources&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.RCL.EA95.S126H"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
			&lt;comm:citetext&gt;Path: &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;CHAPTER 3 ADMISSIBILITY OF EVIDENCE [ss
                           55–139]&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.RCL.EA95.C3"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;PART 3.10 PRIVILEGES [ss 117–134]&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.RCL.EA95.C3.PT3-10"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;DIVISION 1A JOURNALISTS’ PRIVILEGE [ss 126G,
                           126H]&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.EA.EA95.C3.PT3-10.D1A"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;!--(5)--&gt;
		&lt;?file to="cth\act\1995\2\a\AFL.FL.FLA75.PT13A.D2.xml"?&gt;
		&lt;?category title="Annotated Legislation"?&gt;
		&lt;heading inline="false"&gt;
			&lt;title&gt;Family Law Act&lt;/title&gt;
		&lt;/heading&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;[s 112AD.25] Courts of summary jurisdiction: standard
                           of proof&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.FL.FLA75.S112AD-25"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
			&lt;comm:citetext&gt;Path: &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;PART XIIIA SANCTIONS FOR FAILURE TO COMPLY WITH
                           ORDERS, AND OTHER OBLIGATIONS, THAT DO NOT AFFECT CHILDREN [ss
                           112AA–112AO]&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.FL.FLA75.PT13A"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;DIVISION 2 SANCTIONS FOR FAILURE TO COMPLY WITH
                           ORDERS [ss 112AD–112AO]&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.FL.FLA75.PT13A.D2"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;[s 112AD] s 112AD Sanctions for failure to comply
                           with orders&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.FL.FLA75.S112AD"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
	&lt;cttr:annot signal="citation"&gt;
		&lt;!--Evidence Act 1995--&gt;
		&lt;?file to="cth\act\1995\2\a\AFL.FL.FLA75.PT13AA.D5.xml"?&gt;
		&lt;?category title="Annotated Legislation"?&gt;
		&lt;heading inline="false"&gt;
			&lt;title&gt;Family Law Act&lt;/title&gt;
		&lt;/heading&gt;
		&lt;comm:citations&gt;
			&lt;h&gt;
				&lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;[s 111D] s 111D Regulations may provide for rules of
                           evidence&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.FL.FLA75.S111D"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/h&gt;
			&lt;comm:citetext&gt;Path: &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;PART XIIIAA INTERNATIONAL CONVENTIONS, INTERNATIONAL
                           AGREEMENTS AND INTERNATIONAL ENFORCEMENT [ss 110–112]&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.FL.FLA75.PT13AA"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt; » &lt;lnlink service="DOC-ID" status="valid"&gt;
					&lt;marker role="content"&gt;DIVISION 5 OTHER MATTERS [ss 111D, 112]&lt;/marker&gt;
					&lt;api-params&gt;
						&lt;param name="dpsi" value="006P"/&gt;
						&lt;param name="remotekey1" value="DOC-ID"/&gt;
						&lt;param name="remotekey2" value="AFL.FL.FLA75.PT13AA.D5"/&gt;
					&lt;/api-params&gt;
				&lt;/lnlink&gt;
			&lt;/comm:citetext&gt;
		&lt;/comm:citations&gt;
	&lt;/cttr:annot&gt;
&lt;/cttr:annotations&gt;
      </codeblock>

      <title>Target Annotated Legislation</title>
	<codeblock>
&lt;cttr:refsection xml:id="refsection-annotated-legislation" reftype="citing-publications"&gt;
	&lt;ref:anchor id="ref-annotated-legislation"/&gt;
	&lt;heading&gt;
		&lt;title&gt;Annotated Legislation (1)&lt;/title&gt;
	&lt;/heading&gt;
	&lt;cttr:refitem&gt;
		&lt;cttr:citingpub treatment="citation"&gt;
			&lt;title&gt;Australian Consumer Credit Law &lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;s 15 Attribution of electronic
                           communications&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="006J-ACCL.CTH.ETA99.S15"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Path: &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;Part 2 Application of legal
                                            requirements to electronic communications [ss
                                            8–15]&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006J-ACCL.CTH.ETA99.PT2"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;DIVISION 3 OTHER PROVISIONS
                                            RELATING TO LAWS OF THE COMMONWEALTH [ss
                                            14–15]&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006J-ACCL.CTH.ETA99.PT2.D3"/&gt;
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
			&lt;title&gt;Australian Consumer Credit Law &lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;SCHEDULE 1 LAWS OF THE COMMONWEALTH TO WHICH CERTAIN
                                    PROVISIONS OF THE ACT DO NOT APPLY&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="006J-ACCL.CTH.ETRC00.SCH1"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
		&lt;/cttr:citingpub&gt;
	&lt;/cttr:refitem&gt;
	&lt;cttr:refitem&gt;
		&lt;cttr:citingpub treatment="citation"&gt;
			&lt;title&gt;Evidence Act&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;[32,300] s 126H Protection of journalists'
                                    sources&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="006P-AFL.RCL.EA95.S126H"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Path: &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;CHAPTER 3 ADMISSIBILITY OF
                                            EVIDENCE [ss 55–139]&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006P-AFL.RCL.EA95.C3"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;PART 3.10 PRIVILEGES [ss
                                            117–134]&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006P-AFL.RCL.EA95.C3.PT3-10"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;DIVISION 1A JOURNALISTS’
                                            PRIVILEGE [ss 126G, 126H]&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006P-AFL.EA.EA95.C3.PT3-10.D1A"/&gt;
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
			&lt;title&gt;Family Law Act&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;[s 112AD.25] Courts of summary jurisdiction: standard
                                    of proof&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="006P-AFL.FL.FLA75.S112AD-25"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Path: &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;PART XIIIA SANCTIONS FOR FAILURE
                                            TO COMPLY WITH ORDERS, AND OTHER OBLIGATIONS, THAT DO
                                            NOT AFFECT CHILDREN [ss 112AA–112AO]&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006P-AFL.FL.FLA75.PT13A"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;DIVISION 2 SANCTIONS FOR FAILURE
                                            TO COMPLY WITH ORDERS [ss 112AD–112AO]&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006P-AFL.FL.FLA75.PT13A.D2"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;[s 112AD] s 112AD Sanctions for
                                            failure to comply with orders&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006P-AFL.FL.FLA75.S112AD"/&gt;
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
			&lt;title&gt;Family Law Act&lt;/title&gt;
			&lt;cttr:citations&gt;
				&lt;ref:crossreference crossreferencetype="seeAlso"&gt;
					&lt;ref:content&gt;[s 111D] s 111D Regulations may provide for rules of
                                    evidence&lt;/ref:content&gt;
					&lt;ref:locator anchortype="global"&gt;
						&lt;ref:locator-key&gt;
							&lt;ref:key-name name="DOC-ID"/&gt;
							&lt;ref:key-value value="006P-AFL.FL.FLA75.S111D"/&gt;
						&lt;/ref:locator-key&gt;
					&lt;/ref:locator&gt;
				&lt;/ref:crossreference&gt;
			&lt;/cttr:citations&gt;
			&lt;bodytext&gt;
				&lt;p&gt;
					&lt;text&gt;Path: &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;PART XIIIAA INTERNATIONAL
                                            CONVENTIONS, INTERNATIONAL AGREEMENTS AND INTERNATIONAL
                                            ENFORCEMENT [ss 110–112]&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006P-AFL.FL.FLA75.PT13AA"/&gt;
								&lt;/ref:locator-key&gt;
							&lt;/ref:locator&gt;
						&lt;/ref:lnlink&gt; » &lt;ref:lnlink service="DOCUMENT"&gt;
							&lt;ref:marker role="content"&gt;DIVISION 5 OTHER MATTERS [ss
                                            111D, 112]&lt;/ref:marker&gt;
							&lt;ref:locator&gt;
								&lt;ref:locator-key&gt;
									&lt;ref:key-name name="DOC-ID"/&gt;
									&lt;ref:key-value value="006P-AFL.FL.FLA75.PT13AA.D5"/&gt;
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
    	<p>2015-12-11: <ph id="change_20151211e_snb">Created new section for <sourcexml>cttr:annotations</sourcexml> 
        containing <sourcexml>heading/title</sourcexml> that contains the text "Annotated Legislation"</ph>
	</p>
</section>





  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\Leg_Citator_AUNZ_Analytics_cttr.annotations-AnnotatedLegislation.dita  -->
	 

<!--	<xsl:template match="source_cttr:annotations[@annotgroup='HLA']">
		<cttr:refsection>
			<xsl:attribute name="reftype">citing-publications</xsl:attribute>
			<xsl:attribute name="xml:id">refsection-HLA</xsl:attribute>
			<ref:anchor>
				<xsl:attribute name="id">
					<xsl:text>ref-halsburys</xsl:text>
				</xsl:attribute>
			</ref:anchor>
		</cttr:refsection>
	</xsl:template>
-->
	<!--<xsl:template match="heading/title"><!-\-  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -\->

		<!-\-  Original Target XPath:  cttr:refsection[@reftype="citing-publications"][@xml:id="refsection-annotated-legislation"]   -\->
		<cttr:refsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:refsection>

	</xsl:template>-->

</xsl:stylesheet>