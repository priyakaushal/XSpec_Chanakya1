<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita case docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.importance">
  <title>case:importance <lnpid>id-UK03-27428</lnpid></title>
  <body>
    <p>
      <note>The <sourcexml>case:importance</sourcexml> element has been used in the source (041C)
        for alerting and filtering purposes, it does not contain any content that is visible to the
        user. In another digest source 03XT they are replicating the same functionality using a
        metadata entry <sourcexml>docinfo:custom-metafield @name="importance-rating"
          @searchtype="DIGEST-RATING"</sourcexml> instead of <sourcexml>case:importance</sourcexml>.
        LBU confirmed that all the sources will be corrected so the information will be sent the
        same way for all sources, using the <sourcexml>docinfo:custom-metafield
          @name="importance-rating" @searchtype="DIGEST-RATING"</sourcexml> markup. </note>
      <sourcexml>docinfo:custom-metafield/@name="importance-rating"</sourcexml> becomes
        <targetxml>doc:legacy-metadata/@metadatasource="lbu-meta"/meta/metaitem
        @name="important-rating" @value=""</targetxml>. The source attribute
        <sourcexml>docinfo:custom-metafield/@searchtype</sourcexml> is dropped. <pre>
&lt;DIGESTDOC&gt;
  &lt;docinfo&gt;
    &lt;docinfo:custom-metafields&gt;
      &lt;docinfo:custom-metafield name="importance-rating" searchtype="DIGEST-RATING"&gt;0&lt;/docinfo:custom-metafield&gt;
     &lt;/docinfo:custom-metafields&gt;
  &lt;/docinfo&gt; 
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;  
  &lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
      &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
        &lt;meta&gt;
          &lt;metaitem name="important-rating" value="0"/&gt;
        &lt;/meta&gt;            
      &lt;/doc:legacy-metadata&gt;
    &lt;/doc:docinfo&gt;
  &lt;/doc:metadata&gt;
&lt;/casedigest:casedigest&gt;
</pre>
    </p>
    <section>
      <title>Changes</title>
      <p>2013-07-03: <ph id="change_20130703_DSF">Changed the value of
          doc:legacy-metadata/@metadatasource from "custom-metafield" to "lbu-meta" in both the
          instructions and the example.</ph></p>
    </section>

  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.importance.dita  -->

	<!-- Vikas Rohilla : Template to match the case:importance	-->
	<xsl:template match="case:importance">
		<meta>
			<metaitem>
				<xsl:apply-templates select="@* | node()"/>
			</metaitem>
		</meta>
	</xsl:template>

</xsl:stylesheet>