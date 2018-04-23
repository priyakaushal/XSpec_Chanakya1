<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
  xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
  version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.courtcode">
	  <title>case:courtcode <lnpid>id-HK09-39414</lnpid></title>
   <body>
      <section>
<ul>
         <li>
          <sourcexml>case:courtcode</sourcexml> becomes
            <targetxml>/compcase:caseinstanceinfo/jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>
          and create <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and attributes will be populated as
            <targetxml>@name="case:courtcode"</targetxml>
          and <targetxml>@value</targetxml> will be value of
            <sourcexml>case:courtcode</sourcexml>.<pre xml:space="preserve">

&lt;case:courtinfo&gt;
  &lt;case:courtcode&gt;FCA&lt;/case:courtcode&gt;
  ...
&lt;/case:courtinfo&gt;
<b class="+ topic/ph hi-d/b ">Becomes</b>
&lt;jurisinfo:courtinfo&gt;
  &lt;jurisinfo:alternatecourtcode alternatecourtcode="FCA" /&gt;
&lt;/jurisinfo:courtinfo&gt;


&lt;doc:legacy-metadata metadatasource="rosetta"&gt;
  &lt;meta&gt;
    &lt;metaitem name="case:courtcode" value="FCA"&gt;  
  &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
</pre>
        </li>
      </ul>
</section>
   </body>
	</dita:topic>


  <xsl:template match="case:courtcode">
    
    <!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
    
    <jurisinfo:alternatecourtcode>
      <xsl:attribute name="alternatecourtcode">
        <xsl:value-of select="."/>
      </xsl:attribute>
    </jurisinfo:alternatecourtcode>
  </xsl:template>
  

</xsl:stylesheet>