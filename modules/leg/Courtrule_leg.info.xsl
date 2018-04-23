<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:courtrule="http://www.lexisnexis.com/xmlschemas/content/legal/courtrule/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.info">
  <title>leg:info <lnpid>id-ST02-26416</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:info</sourcexml> becomes
          <targetxml>courtrule:head/primlawinfo:primlawinfo/legisinfo:legisinfo</targetxml>. The
        mappings for the children of <targetxml>leg:info</targetxml> are discussed as separate
        topics.</p>
        <note>If the input documents is having no legislative information i.e. <sourcexml>leg:info</sourcexml> then conversion
      will create an empty output structure shown below:</note>
    </section>
      
      <example>         
<codeblock>
&lt;courtrule:head&gt;
    &lt;jurisinfo:legisbodyinfo&gt;
        &lt;jurisinfo:jurisdiction&gt;
            &lt;jurisinfoystem&gt;
                &lt;!--leg:info is not present in Document which creates Head part. As 'Head' is mandatory, creating empty head structure--&gt;
                &lt;/jurisinfoystem&gt;
        &lt;/jurisinfo:jurisdiction&gt;
    &lt;/jurisinfo:legisbodyinfo&gt;
&lt;/courtrule:head&gt;
              
          </codeblock>
      </example>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Courtrule\leg.info.dita  -->
	<xsl:message>Courtrule_leg.info.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  courtrule:head/primlawinfo:primlawinfo/legisinfo:legisinfo   -->
		<courtrule:head>
			<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
				<legisinfo:legisinfo xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/">
					<xsl:apply-templates select="@* | node()"/>
				</legisinfo:legisinfo>
			</primlawinfo:primlawinfo>
		</courtrule:head>

	</xsl:template>

</xsl:stylesheet>