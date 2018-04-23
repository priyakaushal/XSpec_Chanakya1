<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_alttitle-to-LexisAdvance_alttitle">
  <title><sourcexml>alttitle</sourcexml> to <targetxml>alttitle</targetxml> <lnpid>id-CCCC-10221</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>alttitle</sourcexml> becomes <targetxml>alttitle</targetxml>. </p>     
    </section>
    
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:heading&gt;
    &lt;desig searchtype="CHAP-NUM"&gt;&lt;designum&gt;&lt;refpt id="CPSA.SDCR.SDCR.PT2" type="ext"/&gt;Part II&lt;/designum&gt;&lt;/desig&gt;
    &lt;title searchtype="CHAP-TITLE"&gt; &amp;#x2014; Application of Part I [&lt;emph typestyle="it"&gt;Supreme Court Only&lt;/emph&gt;]&lt;/title&gt;
    &lt;alttitle&gt;Part III &amp;#x2014; The Civil Division &amp;#x2014; Procedures under Special Acts [&lt;emph typestyle="it"&gt;District Court Only&lt;/emph&gt;]&lt;/alttitle&gt;
&lt;/leg:heading&gt;

	</codeblock>

      <title>Target XML</title>
      <codeblock>

&lt;heading&gt;
    &lt;desig&gt;Part II&lt;/desig&gt;
    &lt;title&gt; &amp;#x2014; Application of Part I [&lt;emph typestyle="it"&gt;Supreme Court Only&lt;/emph&gt;]&lt;/title&gt;
    &lt;alttitle&gt;Part III &amp;#x2014; The Civil Division &amp;#x2014; Procedures under Special Acts [&lt;emph typestyle="it"&gt;District Court Only&lt;/emph&gt;]&lt;/alttitle&gt;
&lt;/heading&gt;

	</codeblock>
    </example>    
 
    <section>
      <title>Changes</title>
      <p>2012-09-06: </p>      
    </section>
  </body>
	</dita:topic>

	<xsl:template match="alttitle">

		<!--  Original Target XPath:  alttitle   -->
	  <alttitle xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</alttitle>

	</xsl:template>

</xsl:stylesheet>