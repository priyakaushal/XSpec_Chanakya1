<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:article="urn:x-lexisnexis:content:article:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_case.courtcode">
   <title>case:courtcode <lnpid>id-NZ07DN-23809</lnpid></title>
   <body>
      <section>
        <p><sourcexml>case:courtcode</sourcexml> becomes
          <targetxml>article:caseinfo/jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml> and
          create <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and attributes will be populated as
            <targetxml>@name="case:courtcode"</targetxml>
          and <targetxml>@value</targetxml> will be value of
            <sourcexml>case:courtcode</sourcexml>.</p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;case:info&gt;
    &lt;case:courtinfo&gt;
        &lt;case:courtcode ln.user-displayed="false"&gt;NZOTHER&lt;/case:courtcode&gt;
        &lt;case:juris ln.user-displayed="false"&gt;nz&lt;/case:juris&gt;
    &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;article:caseinfo&gt;
    &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:alternatecourtcode alternatecourtcode="NZOTHER"/&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfo:system&gt;nz&lt;/jurisinfo:system&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:courtinfo&gt;
&lt;/article:caseinfo&gt;

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
   &lt;meta&gt;
     &lt;metaitem name="case:courtcode" value="NZOTHER"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
</pre>

        <note class="- topic/note ">The ordering of the <targetxml>jurisinfo:alternatecourtcode</targetxml> and <targetxml>jurisinfo:jurisdiction\jurisinfo:system</targetxml> is not significant in terms of display.</note>

          <note class="- topic/note ">For handling @ln.user-displayed attribute, please refer to general markup ln.user_displayed="false" section in the CI.</note>
          
</section>
   </body>
	</dita:topic>

	<xsl:template match="case:courtcode">

		<!--  Original Target XPath:  article:caseinfo/jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
				<jurisinfo:alternatecourtcode>
					<xsl:attribute name="alternatecourtcode">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</jurisinfo:alternatecourtcode>

	</xsl:template>

</xsl:stylesheet>