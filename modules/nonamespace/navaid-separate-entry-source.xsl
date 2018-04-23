<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-separate-entry-source">
          <title>Source XML</title>
          <body>
<codeblock>

&lt;p&gt;
  &lt;table frame="none" pgwide="1"&gt;
    &lt;tgroup cols="26" colsep="0" rowsep="0"&gt;
      &lt;colspec colwidth="1*" colname="col1" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="1*" colname="col2" colsep="0" rowsep="0"/&gt;
      &lt;colspec colwidth="1*" colname="col3" colsep="0" rowsep="0"/&gt;
      &lt;!-- Skipped colspecs for columns 4 to 25 --&gt;
      &lt;colspec colwidth="1*" colname="col26" colsep="0" rowsep="0"/&gt;
      &lt;tbody valign="top"&gt;
        &lt;row rowsep="0"&gt;
          &lt;entry colsep="0" rowsep="0"&gt;
            &lt;remotelink refpt="ASMADE-REGS-ARCHIVE-A" dpsi="02IO" remotekey1="REFPTID" docidref="EXAMPLE_DOCID1"
              service="DOC-ID"&gt;A&lt;/remotelink&gt;
          &lt;/entry&gt;
          &lt;entry colsep="0" rowsep="0"&gt;
            &lt;remotelink refpt="ASMADE-REGS-ARCHIVE-B" dpsi="02IO" remotekey1="REFPTID" docidref="EXAMPLE_DOCID2"
              service="DOC-ID"&gt;B&lt;/remotelink&gt;
          &lt;/entry&gt;
          &lt;entry colsep="0" rowsep="0"&gt;
            &lt;remotelink refpt="ASMADE-REGS-ARCHIVE-C" dpsi="02IO" remotekey1="REFPTID" docidref="EXAMPLE_DOCID3"
              service="DOC-ID"&gt;C&lt;/remotelink&gt;
          &lt;/entry&gt;
  &lt;!-- Skipped D to Y --&gt;
          &lt;entry colsep="0" rowsep="0"&gt;
            &lt;remotelink refpt="ASMADE-REGS-ARCHIVE-Z" dpsi="02IO" remotekey1="REFPTID" docidref="EXAMPLE_DOCID4"
              service="DOC-ID"&gt;Z&lt;/remotelink&gt;
          &lt;/entry&gt;
        &lt;/row&gt;
      &lt;/tbody&gt;
    &lt;/tgroup&gt;
  &lt;/table&gt;
&lt;/p&gt;
            
</codeblock>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-separate-entry-source.dita  -->
	<!--<xsl:message>navaid-separate-entry-source.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>