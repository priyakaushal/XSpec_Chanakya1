<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_dig.body">
    <title>dig:body <lnpid>id-UK11DA-29417</lnpid></title>
    <shortdesc>This section describes <sourcexml>dig:body</sourcexml> and its descendants. Handle in
        document order unless specifically stated otherwise. Refer to General Markup Section for
        handling of children (including mixed content).</shortdesc>
    <body>
        <section>
            <title>dig:body</title>
            <p><sourcexml>dig:body</sourcexml> becomes
                <targetxml>abstract:body</targetxml>.</p></section>
        <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;...&lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;
 
	</pre>
        <pre>
                    
              <b><i>Example: Target XML 1</i></b>
                  

&lt;abstract:abstract&gt;
  &lt;abstract:body&gt;...&lt;/abstract:body&gt;
&lt;/abstract:abstract&gt;


                </pre>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_dig.body.dita  -->
	 
    <!--Vikas Rohilla : Tempalte to match the dig:body and creates the abstract:body-->
	<xsl:template match="dig:body">
		<abstract:body>
		    <xsl:apply-templates select="@* | node() except dig:review"/>
		</abstract:body>
	</xsl:template>
    
 
</xsl:stylesheet>