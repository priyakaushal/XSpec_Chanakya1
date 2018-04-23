<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_marker_inlineobject-to-LexisAdvance_SUPPRESS">
  <title><sourcexml>marker/inlineobject</sourcexml> is  SUPPRESSED <lnpid>id-CCCC-10400</lnpid></title>
  <body>
    <section>
            <p><sourcexml>marker</sourcexml> is suppressed if it contains <sourcexml>inlineobject</sourcexml> as a child element.
            </p>
    </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;lnlink status="valid" service="SEARCH" scope="All Subscribed Australian Cases and Commentary" scope-protocol="combined-source-name"&gt;
    &lt;marker&gt;
        &lt;inlineobject width="21px" type="image" filename="mb.gif" attachment="web-server" alttext="click to find cases &amp;amp; commentary"/&gt;
    &lt;/marker&gt;
    &lt;api-params&gt;
        &lt;param name="expressSearch" value="true"/&gt;
        &lt;param name="searchString" value="SUPREME COURT RULES 1970"/&gt;
    &lt;/api-params&gt;
&lt;/lnlink&gt;

            </codeblock>
            <p><b>Suppress <sourcexml>marker</sourcexml>. A corresponding product requirement should be created with an instruction to instantiate the image on retrieval based on information/semantic markup in the document.</b>
            </p>
        </example>
    <section>
      <title>Changes</title>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_marker_inlineobject-LxAdv-SUPPRESS.dita  -->
    <!-- JL WE NEED TO RESOLVE THIS INLINEOBJECT ISSUE !!!!! -->
    
	<xsl:template match="marker[inlineobject]" priority="25"/>
   
    <!--JL This is what I envision in the future:
        
 <xsl:template match="marker[inlineobject]" priority="25">
        <xsl:apply-templates select="inlineobject" mode="to-be-determined"/>
    </xsl:template> -->

</xsl:stylesheet>