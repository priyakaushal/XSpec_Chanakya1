<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:article="urn:x-lexisnexis:content:article:sharedservices:1"
    xmlns:case="http://www.lexis-nexis.com/glp/case" 
    xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/" 
    version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_case.info">
  <title>case:info <lnpid>id-NZ07DN-23811</lnpid></title>
  <body>
    <section>
      <p>
          <sourcexml>case:info</sourcexml> becomes <targetxml>newsitem:head/article:caseinfo</targetxml></p>

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
</pre>
    </section>
  </body>
	</dita:topic>


	<xsl:template match="case:info">

		<!--  Original Target XPath:  newsitem:head/article:caseinfo   -->
			<article:caseinfo>
				<xsl:apply-templates select="@* | node()"/>
			</article:caseinfo>
		

	</xsl:template>

</xsl:stylesheet>