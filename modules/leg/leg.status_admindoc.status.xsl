<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.status_admindoc.status">
  <title><sourcexml>leg:status</sourcexml> <lnpid>id-CN02-31820</lnpid></title>
  <body>
   <section>
     <p><sourcexml>leg:status</sourcexml> becomes
       <targetxml>admindoc:level/admindoc:levelinfo/admindoc:status</targetxml>.<note>Create  <targetxml>admindoc:levelinfo/admindoc:status</targetxml> in the first <targetxml>admindoc:level</targetxml> element in the target document.
        </note></p>
   </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:status&gt;Effective&lt;/leg:status&gt;

            </codeblock>
    </example>
    
    <example>
      <title>Target XML</title>
      <codeblock>

 &lt;admindoc:level&gt;
    &lt;admindoc:levelinfo&gt;
        &lt;admindoc:status&gt;Effective&lt;/admindoc:status&gt;
    &lt;/admindoc:levelinfo&gt;
.........
&lt;/admindoc:level&gt;

            </codeblock>
    </example>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\CN02-Regulations\leg.status_admindoc.status.dita  -->
	<xsl:message>leg.status_admindoc.status.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:status">

		<!--  Original Target XPath:  admindoc:level/admindoc:levelinfo/admindoc:status   -->
		<admindoc:level>
			<admindoc:levelinfo>
				<admindoc:status>
					<xsl:apply-templates select="@* | node()"/>
				</admindoc:status>
			</admindoc:levelinfo>
		</admindoc:level>

	</xsl:template>

</xsl:stylesheet>