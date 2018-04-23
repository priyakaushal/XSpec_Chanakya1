<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.body">
  <title>leg:body <lnpid>id-AR03-34809</lnpid></title>
  <body>
    <section>
      <ul>
        <li><p><sourcexml>leg:body</sourcexml> becomes <targetxml>regulation:body</targetxml>. The
            conversion for the children of <sourcexml>leg:body</sourcexml> are discussed as separate
            topics.</p>
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
      <p>2014-12-05:<ph id="change_20141205_AS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\AR03-Regulation\leg.body.dita  -->
	<xsl:message>AR03-Regulation_leg.body.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  regulation:body   -->
		<regulation:body>
			<xsl:apply-templates select="@* | node()"/>
		</regulation:body>

	</xsl:template>

</xsl:stylesheet>