<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.body-LxAdv-courtrule.body">
  <title>leg:body <lnpid>id-HK04-36610</lnpid></title>
  <body>
    <section>
       <p><sourcexml>leg:body</sourcexml> becomes <targetxml>courtrule:body</targetxml>. The mappings
        for the children of <targetxml>courtrule:body</targetxml> are discussed as separate
        topics.</p>
<pre>
  
  &lt;leg:body&gt;
    ...
  &lt;/leg:body&gt;
    
</pre>
      <b>Becomes</b>
      <pre>
      
&lt;courtrule:body&gt;
...
&lt;/courtrule:body&gt;

</pre>
    </section>  
    <section>
      <title>Changes</title>
      <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
    </section>
  </body>
	</dita:topic>  

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  courtrule:body   -->
		<courtrule:body>
			<xsl:apply-templates select="@* | node()"/>
		</courtrule:body>

	</xsl:template>

</xsl:stylesheet>