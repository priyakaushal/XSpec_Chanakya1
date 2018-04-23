<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="refnum">
  <title>refnum <lnpid>id-ST04-26852</lnpid></title>
  <body>
    <section>
      <p><sourcexml>refnum</sourcexml> becomes <targetxml>regulation:body/regulation:prelim/refnum</targetxml>, and attribute <sourcexml>@refnumtype</sourcexml> will become <targetxml>@refnumscheme</targetxml></p>
        
            <pre>
                           <b><i>Source example based on UK content</i></b>

&lt;refnum refnumtype="classification"&gt;  (C 71)&lt;/refnum&gt;
 

            </pre>
      <pre>
             <b><i>Target Example</i></b>
        

&lt;refnum refnumscheme="classification"&gt;&amp;#x00A0;&amp;#x00A0;&amp;#x00A0;(C 71)&lt;/refnum&gt;

      </pre>
    </section>    
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\refnum.dita  -->
	<xsl:message>Regulation_refnum.xsl requires manual development!</xsl:message> 

	<xsl:template match="refnum">

		<!--  Original Target XPath:  regulation:body/regulation:prelim/refnum   -->
		<regulation:body>
			<regulation:prelim>
				<refnum>
					<xsl:apply-templates select="@* | node()"/>
				</refnum>
			</regulation:prelim>
		</regulation:body>

	</xsl:template>

	<xsl:template match="@refnumtype">

		<!--  Original Target XPath:  @refnumscheme   -->
		<xsl:attribute name="refnumscheme">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>