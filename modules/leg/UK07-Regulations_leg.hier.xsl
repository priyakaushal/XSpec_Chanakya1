<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.hier">
    <title>leg:hier/leg:hierlev <lnpid>id-UK07-28216</lnpid></title>
  <body>
    <section>
        <p><sourcexml>leg:hier/leg:hierlev</sourcexml> becomes <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and populated as below:
      </p> 
    </section>
    <example>         
      <codeblock>

&lt;leg:hier&gt;
    &lt;leg:hierlev searchtype="SCH-NUM"&gt;SCHEDULE&lt;/leg:hierlev&gt;
&lt;/leg:hier&gt;

      </codeblock>
        <b>Becomes</b>
        <codeblock>

&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="GB"&gt;
        ..........
        &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
            &lt;meta&gt;
                &lt;metaitem name="leg:hierlev" value="SCHEDULE"/&gt;
            &lt;/meta&gt;
        &lt;/doc:legacy-metadata&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

        </codeblock>
    </example>    
      <p><b>Mapping of <sourcexml>leg:hier</sourcexml> inside <sourcexml>leg:info</sourcexml></b>
        </p>
        <p><b>Source XML</b>
            <pre>
&lt;leg:body&gt;
 &lt;leg:info&gt;
  &lt;!-- ETC. --&gt;
  &lt;leg:hier&gt;
   &lt;leg:hierlev searchtype="SCH-NUM"&gt;SCHEDULE&lt;/leg:hierlev&gt;
  &lt;/leg:hier&gt;
 &lt;/leg:info&gt;
 &lt;!-- ETC. --&gt;
&lt;/leg:body&gt;               
          </pre>
            <b>Target XML</b>
            <pre>
&lt;doc:metadata&gt;
 &lt;doc:docinfo doc-content-country="UK"&gt;
  &lt;!-- ETC. --&gt;
  &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
   &lt;meta&gt;
    &lt;metaitem name="leg:hierlev" value="SCHEDULE"/&gt;
   &lt;/meta&gt;
  &lt;/doc:legacy-metadata&gt;
 &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;                
            </pre>
        </p>
      <section>
          <title>Changes</title>
          <p>2014-09-03: <ph id="change_20140903_AS">Mapping of <sourcexml>leg:hier</sourcexml> inside <sourcexml>leg:info</sourcexml>. Db issue R4.5 1854</ph></p>
      </section>
  </body>
	</dita:topic>

    <!--  leg:hier handled in the docinfo module (Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.xsl) so stubbed out here.  Retaining for documentation.  -->
	
    <xsl:template match="leg:hier"/>
	<xsl:template match="leg:hier/leg:hierlev"/>

</xsl:stylesheet>