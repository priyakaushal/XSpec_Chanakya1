<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-separate-entry-target">
<title>Target XML</title>
<body>
<codeblock>

&lt;navaid:list style="banner"&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;A&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="ASMADE-REGS-ARCHIVE-A"&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="02IO-EXAMPLE_DOCID1"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
  &lt;/index:entry&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;B&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="ASMADE-REGS-ARCHIVE-B"&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="02IO-EXAMPLE_DOCID2"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
  &lt;/index:entry&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;C&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="ASMADE-REGS-ARCHIVE-C"&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="02IO-EXAMPLE_DOCID3"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
  &lt;/index:entry&gt;
  &lt;!-- Skipped D to Y --&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;Z&lt;/ref:marker&gt;
      &lt;ref:locator anchoridref="ASMADE-REGS-ARCHIVE-Z"&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="02IO-EXAMPLE_DOCID4"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
  &lt;/index:entry&gt;
&lt;/navaid:list&gt;
            
</codeblock>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-separate-entry-target.dita  -->
	<!--<xsl:message>navaid-separate-entry-target.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>