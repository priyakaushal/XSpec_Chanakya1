<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1"
    xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="company">
    <title>company <lnpid>id-IN07-38407</lnpid></title>
  
  <body>
      <section>
    <p>
      <ul>
        <li><sourcexml>company</sourcexml> becomes <targetxml>entity:company</targetxml>.                  
        </li>       
      </ul>     
    </p>    
      </section>
      <example>
          <title>Source XML</title>
          <codeblock>
&lt;dict:definition&gt;
    &lt;p&gt;&lt;text&gt;Name of a private ...... &lt;company&gt;Ltd&lt;/company&gt; in the UK&amp;#x0029;. &amp;#x0028;&lt;emph typestyle="it"&gt;International Accounting; Business&lt;/emph&gt;&amp;#x0029;&lt;/text&gt;&lt;/p&gt;
&lt;/dict:definition&gt;

</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;tei:entry&gt;
    &lt;tei:def&gt;
        &lt;pgrp&gt;
            &lt;p&gt;&lt;text&gt;Name of a private ...... &lt;entity:company&gt;Ltd&lt;/entity:company&gt; in the UK&amp;#x0029;. &amp;#x0028;&lt;emph typestyle="it"&gt;International Accounting; Business&lt;/emph&gt;&amp;#x0029;&lt;/text&gt;&lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/tei:def&gt;   
&lt;/tei:entry&gt;
          </codeblock></example>
      <section>
          <title>Changes</title>
          <p>2016-07-05: <ph id="change_20160705_RS">Created</ph>.</p>
      </section>
  </body>
	</dita:topic>


	<xsl:template match="company">

		<!--  Original Target XPath:  entity:company   -->
		<entity:company>
			<globalentity:entity>
			   <globalentity:content>
			       <xsl:apply-templates select="@* | node()"/>
			   </globalentity:content> 
			</globalentity:entity>
		</entity:company>

	</xsl:template>

</xsl:stylesheet>