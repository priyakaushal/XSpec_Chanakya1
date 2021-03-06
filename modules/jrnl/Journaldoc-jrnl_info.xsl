<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc-jrnl_info">
  <title>jrnl:info <lnpid>id-ST09-32623</lnpid></title>

  <body>
      <p><sourcexml>jrnl:info</sourcexml> becomes <targetxml>doc:metadata/pubinfo:pubinfo</targetxml></p>

<pre>
           <b><i>Source example based on AU content</i></b>

&lt;jrnl:body&gt;
	&lt;jrnl:info&gt;
        &lt;pubdate&gt;
            &lt;date month="02" year="2009"/&gt;
        &lt;/pubdate&gt;
        &lt;jrnl:volnum&gt;13&lt;/jrnl:volnum&gt;
        &lt;jrnl:issnum&gt;1&lt;/jrnl:issnum&gt;
	&lt;/jrnl:info&gt;
&lt;/jrnl:body&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
	&lt;pubinfo:pubinfo&gt;
	   &lt;pubinfo:dates&gt;
            &lt;pubinfo:pubdate month="02" year="2009"/&gt;
       &lt;/pubinfo:dates&gt;
       &lt;pubinfo:volnum&gt;13&lt;/pubinfo:volnum&gt;
       &lt;pubinfo:issnum&gt;1&lt;/pubinfo:issnum&gt;
	&lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;
</pre>
      <section>
          <title>Changes</title>
          <p>Created.</p>
      </section>
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc-jrnl_info.dita  -->
	<xsl:message>Journaldoc-jrnl_info.xsl requires manual development!</xsl:message> 

	<xsl:template match="jrnl:info">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo   -->
		<doc:metadata>
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				<xsl:apply-templates select="@* | node()"/>
			</pubinfo:pubinfo>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>