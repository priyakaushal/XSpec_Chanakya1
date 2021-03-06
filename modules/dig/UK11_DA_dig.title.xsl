<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_dig.title">
    <title>dig:title <lnpid>id-UK11DA-29421</lnpid></title>
    <body>
        <section>
          <p><sourcexml>dig:title</sourcexml> becomes <targetxml>abstract:body/heading/title</targetxml>.</p></section>
        <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;dig:title&gt;Scotland Act 2012&lt;/dig:title&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
        <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:body&gt;
    &lt;heading&gt;
        &lt;title&gt;Scotland Act 2012&lt;/title&gt;
    &lt;/heading&gt;
&lt;/abstract:body&gt;

                </pre>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_dig.title.dita  -->
	 
<!--Vikas Rohilla : Template to match the dig:title-->
	<xsl:template match="dig:title">
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
	</xsl:template>

</xsl:stylesheet>