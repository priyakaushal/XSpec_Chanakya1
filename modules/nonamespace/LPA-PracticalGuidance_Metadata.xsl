<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:dc="http://purl.org/dc/elements/1.1/" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita comm docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance_Metadata">
		<title>LPA Metadata <lnpid>id-CCCC-10211</lnpid></title>
		<body>
			<section>
				<title>Introduction</title>
				<p>This section addresses metadata scenarios that are specific to Practical Guidance. These instructions override or augment any subsequent instructions in this document.</p>
			</section>
		</body>
		<topic id="pg_comm_info_pubdate">
			<title>comm:info <lnpid>id-CCCC-10212</lnpid></title>
			<body>
				<p><sourcexml>comm:info/pubdate/date</sourcexml> becomes <targetxml>dc:date in doc:metadata/doc:docinfo/dc:metadata</targetxml></p>
				<pre>

&lt;comm:info&gt;
    &lt;pubdate ln.user-displayed="false"&gt;
        &lt;date day="15" month="03" year="2011"&gt;15/3/2011&lt;/date&gt;
    &lt;/pubdate&gt;
&lt;/comm:info&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="AU"&gt;
        &lt;dc:metadata&gt;
            &lt;dc:date lnmeta:datetype="pubdate"&gt;2011-03-11&lt;/dc:date&gt;
            ...
        &lt;/dc:metadata&gt;
        ...
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

            </pre>
			</body>
		</topic>
		<topic id="pg_metadata-docinfo_attributes">
			<title>docinfo attributes <lnpid>id-CCCC-10213</lnpid></title>
			<body>
				<p>Each of following attributes of <sourcexml>docinfo</sourcexml> should be placed in <targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta</targetxml>: <ul>
						<li><sourcexml>@browsenext</sourcexml></li>
						<li><sourcexml>@browseprev</sourcexml></li>
						<li><sourcexml>@majorrevision</sourcexml></li>
						<li><sourcexml>@excludefromtoc</sourcexml></li>
					</ul></p>
				<p>For each attribute of <sourcexml>docinfo</sourcexml>, create <targetxml>metaitem</targetxml> and populate <targetxml>name</targetxml> and <targetxml>value</targetxml> with the name and value respectively of the attribute.</p>
				<pre>

&lt;docinfo browsenext="false" browseprev="false" excludefromtoc="true"&gt; ... &lt;/docinfo&gt;

              <b>Becomes</b>

&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="AU"&gt;
        ...
        &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
            &lt;meta&gt;
                &lt;metaitem name="browsenext" value="false"/&gt;
                &lt;metaitem name="browseprev" value="false"/&gt;
                &lt;metaitem name="excludefromtoc" value="true"/&gt;
            &lt;/meta&gt;
        &lt;/doc:legacy-metadata&gt;
        ...
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
            </pre>
			</body>
		</topic>
		<topic id="pg_metadata-lbu-meta">
			<title>docinfo:lbu-meta <lnpid>id-CCCC-10214</lnpid></title>
			<body>
				<p>
					<sourcexml>docinfo:lbu-meta</sourcexml> becomes <targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="lbu-meta"]/meta</targetxml>. Each <sourcexml>docinfo:metaitem</sourcexml> becomes <targetxml>meta/metaitem</targetxml>. The source attributes <sourcexml>docinfo:metaitem/@name</sourcexml> and <sourcexml>docinfo:metaitem/@value</sourcexml> become <targetxml>metaitem/@name</targetxml> and <targetxml>metaitem/@value</targetxml> respectively. </p>
				<pre>

&lt;docinfo:lbu-meta&gt;
    &lt;docinfo:metaitem name="lbu-sourcename" value="PS Business -  Guidance"/&gt;
    &lt;docinfo:metaitem name="document-type" value="Guidance"/&gt;
    &lt;docinfo:metaitem name="parent-docid" value="0KKU_10856"/&gt;
    &lt;docinfo:metaitem name="parent-filename" value="BUS_GUID_10856.xml"/&gt;
&lt;/docinfo:lbu-meta&gt;

              <b>Becomes</b>

&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="AU"&gt;
        ...
        &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
            &lt;meta&gt;
                &lt;metaitem name="lbu-sourcename" value="PS Business -  Guidance"/&gt;
                &lt;metaitem name="document-type" value="Guidance"/&gt;
                &lt;metaitem name="parent-docid" value="0KKU_10856"/&gt;
                &lt;metaitem name="parent-filename" value="BUS_GUID_10856.xml"/&gt;
            &lt;/meta&gt;
        &lt;/doc:legacy-metadata&gt;
        ...
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

            </pre>
			</body>
		</topic>
		<topic id="pg_metadata-custom-metafields">
			<title>docinfo:custom-metafields <lnpid>id-CCCC-10215</lnpid></title>
			<body>
				<p>
					<sourcexml>docinfo:custom-metafields</sourcexml> becomes <targetxml>doc:metadata/doc:docinfo/doc:legacy-metadata[@metadatasource="custom-metafields"]/meta</targetxml>. Each <sourcexml>docinfo:custom-metafield</sourcexml> becomes <targetxml>meta/metaitem</targetxml>. The source attribute <sourcexml>docinfo:custom-metafield/@name</sourcexml> becomes <targetxml>metaitem/@name</targetxml>. The text inside <sourcexml>docinfo:custom-metafield</sourcexml> becomes
						<targetxml>metaitem/@value</targetxml>. </p>
				<pre>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="topic-link-parameters"&gt;Commercial property law::Types of titles::134::137::Guidance&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

              <b>Becomes</b>

&lt;doc:legacy-metadata metadatasource="custom-metafields"&gt;
    &lt;meta&gt;
        &lt;metaitem name="topic-link-parameters" value="Commercial property law::Types of titles::134::137::Guidance"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

            </pre>
			</body>
		</topic>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\LPA-PracticalGuidance_Metadata.dita  -->

<!-- Paul: this functionality is in the common module
	**************************************************
	Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.xsl
	
	--> 
	
	

</xsl:stylesheet>
