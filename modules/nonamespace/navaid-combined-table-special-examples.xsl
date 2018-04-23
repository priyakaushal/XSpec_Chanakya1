<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-combined-table-special-examples">
	<title>Examples of tables containing 2, 1 or 0 <sourcexml>remotelink</sourcexml> elements that should be converted to <targetxml>navaid:list/@style="banner"</targetxml> <lnpid>id-AU16-21013</lnpid></title>
	<body>
  <section>
  <title>Source XML for table with 2 remotelink elements</title>
<codeblock>

&lt;table colsep="0" frame="none" pgwide="1" rowsep="0"&gt;
  &lt;tgroup cols="1" colsep="0" rowsep="0"&gt;
    &lt;colspec colname="C1" colnum="1"/&gt;
    &lt;tbody&gt;
    &lt;row&gt;
      &lt;entry align="center"&gt;
&lt;emph typestyle="bf"&gt;&lt;emph typestyle="ib"&gt;    Mar   &lt;/emph&gt;&lt;remotelink dpsi="03AR" remotekey1="DOC-ID" remotekey2="LAWNOW_LEG_COMMENCEMENT_ACTS_2013_02_ACT" service="DOC-ID"&gt;Feb&lt;/remotelink&gt;   &lt;remotelink dpsi="03AR" remotekey1="DOC-ID" remotekey2="LAWNOW_LEG_COMMENCEMENT_ACTS_2013_01_ACT" service="DOC-ID"&gt;Jan&lt;/remotelink&gt;   &lt;/emph&gt;      
      &lt;/entry&gt;
    &lt;/row&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;
            
		</codeblock>
    </section>
<section>    
  <title>Target XML for table with 2 remotelink elements</title>
<codeblock>

&lt;navaid:list style="banner"&gt;
  &lt;index:entry&gt;
    &lt;meta&gt;&lt;metaitem name="active" value="true"/&gt;&lt;/meta&gt;
    &lt;index:entrytext&gt;Mar&lt;/index:entrytext&gt;
  &lt;/index:entry&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;Feb&lt;/ref:marker&gt;
      &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="03AR-LAWNOW_LEG_COMMENCEMENT_ACTS_2013_02_ACT"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
  &lt;/index:entry&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;Jan&lt;/ref:marker&gt;
      &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="03AR-LAWNOW_LEG_COMMENCEMENT_ACTS_2013_01_ACT"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
  &lt;/index:entry&gt;
&lt;/navaid:list&gt;
            
		</codeblock>
</section>    
  <section>
  <title>Source XML for table with 1 remotelink element</title>
<codeblock>

&lt;table colsep="0" frame="none" pgwide="1" rowsep="0"&gt;
  &lt;tgroup cols="1" colsep="0" rowsep="0"&gt;
    &lt;colspec colname="C1" colnum="1"/&gt;
    &lt;tbody&gt;
    &lt;row&gt;
      &lt;entry align="center"&gt;
&lt;emph typestyle="bf"&gt;&lt;emph typestyle="ib"&gt;   Feb   &lt;/emph&gt;&lt;remotelink dpsi="03AR" remotekey1="DOC-ID" remotekey2="LAWNOW_LEG_COMMENCEMENT_ACTS_2013_01_ACT" service="DOC-ID"&gt;Jan&lt;/remotelink&gt;   &lt;/emph&gt;
      &lt;/entry&gt;
    &lt;/row&gt;
    &lt;/tbody&gt;
  &lt;/tgroup&gt;
&lt;/table&gt;
            
		</codeblock>
    </section>
<section>    
  <title>Target XML for table with 1 remotelink element</title>
<codeblock>

&lt;navaid:list style="banner"&gt;
  &lt;index:entry&gt;
    &lt;meta&gt;&lt;metaitem name="active" value="true"/&gt;&lt;/meta&gt;
    &lt;index:entrytext&gt;Feb&lt;/index:entrytext&gt;
  &lt;/index:entry&gt;
  &lt;index:entry&gt;
    &lt;index:locator&gt;&lt;ref:lnlink service="DOCUMENT"&gt;
      &lt;ref:marker&gt;Jan&lt;/ref:marker&gt;
      &lt;ref:locator&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOC-ID"/&gt;
          &lt;ref:key-value value="03AR-LAWNOW_LEG_COMMENCEMENT_ACTS_2013_01_ACT"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;&lt;/index:locator&gt;
  &lt;/index:entry&gt;
&lt;/navaid:list&gt;
            
		</codeblock>
</section>    
  <section>
  <title>Source XML for table with 0 remotelink elements</title>
<codeblock>

&lt;table colsep="0" frame="none" pgwide="1" rowsep="0"&gt;
&lt;tgroup cols="1" colsep="0" rowsep="0"&gt;
&lt;colspec colname="C1" colnum="1"/&gt;&lt;tbody&gt;&lt;row&gt;&lt;entry align="center"&gt;&lt;emph typestyle="ib"&gt;   1   &lt;/emph&gt;
&lt;/entry&gt;&lt;/row&gt;&lt;/tbody&gt;&lt;/tgroup&gt;&lt;/table&gt;
            
		</codeblock>
    </section>
<section>    
  <title>Target XML for table with 0 remotelink elements</title>
<codeblock>

&lt;navaid:list style="banner"&gt;
  &lt;index:entry&gt;
    &lt;meta&gt;&lt;metaitem name="active" value="true"/&gt;&lt;/meta&gt;
    &lt;index:entrytext&gt;1&lt;/index:entrytext&gt;
  &lt;/index:entry&gt;
&lt;/navaid:list&gt;
            
		</codeblock>
</section>    
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\navaid-combined-table-special-examples.dita  -->
<!--	<xsl:message>navaid-combined-table-special-examples.xsl requires manual development!</xsl:message> -->

	<!--<xsl:template match="remotelink">

		<!-\-  Original Target XPath:  navaid:list/@style="banner"   -\->
		<navaid:list>
			<xsl:attribute name="style">
				<xsl:text>banner</xsl:text>
			</xsl:attribute>
		</navaid:list>

	</xsl:template>-->

</xsl:stylesheet>