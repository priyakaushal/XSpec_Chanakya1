<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA13_docinfo.hier">
  <title><sourcexml>docinfo:hier</sourcexml> suppressed <lnpid>id-CA13-33008</lnpid></title>
  
  <!-- JHM July 2014.  Removed this special rule from ditamap. Using common module. -->
  <!-- Had thought to suppress because same content as doc-heading and only one hierlev -->
  <!-- But doc:hier might be needed when doc rendered as content item and added to set -->
  
  <body>
    <section><p><sourcexml>docinfo:hier</sourcexml> and all content is suppressed. This is a special
        rule for CA13.</p>
      <p><i>Reason:</i> There is no hierarchical arrangement for CA13 documents. Content is also
        available in <sourcexml>docinfo:doc-heading</sourcexml> and is converted at that
        element.</p></section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;docinfo:hier&gt;
    &lt;docinfo:hierlev role="me"&gt;
        &lt;heading&gt;
            &lt;title&gt;Updated on January 3, 2014&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/docinfo:hierlev&gt;
&lt;/docinfo:hier&gt;

                 </codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

No output

             </codeblock>
    </example>


  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA13-Currency_Statements\OLD_CA13_docinfo.hier.dita  -->
	<xsl:message>OLD_CA13_docinfo.hier.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:hier">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="docinfo:doc-heading">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>