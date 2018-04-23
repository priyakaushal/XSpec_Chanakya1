<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.body">
  <title>leg:body <lnpid>id-HK06-37408</lnpid></title>
  <body>
    <section>
      <ul>
        <li><p><sourcexml>leg:body</sourcexml> becomes <targetxml>regulation:body</targetxml>. The conversion for the children of 
          <targetxml>leg:body</targetxml> are discussed as separate topics.</p>
          
          <pre>

&lt;leg:body&gt;
    ......
    ......
&lt;/leg:body&gt;
     
      </pre>

          <b>Becomes</b>

          <pre>

&lt;regulation:body&gt;
    ......
    ......
&lt;/regulation:body&gt;
     
          </pre>
        </li>
      </ul>
      
    </section>
    <section>
      <title>Changes</title>
      <p>2016-04-19: Created.</p>
    </section>    
  </body>
	</dita:topic>

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  regulation:body   -->
		<regulation:body>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:body>

	</xsl:template>

</xsl:stylesheet>