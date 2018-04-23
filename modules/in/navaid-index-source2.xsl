<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:in="http://www.lexis-nexis.com/glp/in" version="2.0" exclude-result-prefixes="dita in">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-index-source">
        <title>Source XML showing <sourcexml>in:lev1</sourcexml> with <sourcexml>in:entry</sourcexml> and <sourcexml>in:entry-text</sourcexml> elements that are empty or contain only whitespace</title>
        <body>
<codeblock>

&lt;in:lev1&gt;
  &lt;in:entry&gt;
    &lt;in:entry-text/&gt;
  &lt;/in:entry&gt;
  &lt;in:lev2&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;
        &lt;remotelink dpsi="009U" refpt="NSW_BIL_2008-106" remotekey1="REFPTID" docidref="EXAMPLE_DOCID" service="DOC-ID"
          &gt;ADMINISTRATIVE DECISIONS TRIBUNAL AMENDMENT BILL 2008&lt;/remotelink&gt;
      &lt;/in:entry-text&gt;
    &lt;/in:entry&gt;
  &lt;/in:lev2&gt;
&lt;/in:lev1&gt;
&lt;in:lev1&gt;
  &lt;in:entry&gt;
    &lt;in:entry-text&gt; &lt;/in:entry-text&gt;
  &lt;/in:entry&gt;
  &lt;in:lev2&gt;
    &lt;in:entry&gt;
      &lt;in:entry-text&gt;
        &lt;remotelink dpsi="009U" refpt="NSW_BIL_2008-107" remotekey1="REFPTID" docidref="EXAMPLE_DOCID" service="DOC-ID"
          &gt;ADOPTION AMENDMENT BILL 2008&lt;/remotelink&gt;
      &lt;/in:entry-text&gt;
    &lt;/in:entry&gt;
  &lt;/in:lev2&gt;
&lt;/in:lev1&gt;
            
</codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-index-source2.dita  -->
	<!--<xsl:message>navaid-index-source2.xsl requires manual development!</xsl:message> -->

<!--	<xsl:template match="in:lev1">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

	<!--<xsl:template match="in:entry">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

	<!--<xsl:template match="in:entry-text">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>