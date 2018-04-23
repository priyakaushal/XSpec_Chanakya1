<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK09_Rosetta_glp.note_blockquote_p_text_copyright">
	  <title>glp:note/blockquote/p/text/copyright <lnpid>id-HK09-39443</lnpid></title>
  <body>
    <section>
      <p><sourcexml>glp:note/blockquote/p/text/copyright</sourcexml> becomes
          <targetxml>doc:metadata/pubinfo:pubinfo/copyright</targetxml>.</p>
    </section>
    <example>
      <codeblock>
&lt;glp:note&gt;
  &lt;blockquote&gt;
    &lt;p&gt;
      &lt;text&gt;
        &lt;copyright&gt;© The Incorporated Council of Law Reporting for the State of Queensland,
          2010.&lt;/copyright&gt;
      &lt;/text&gt;
    &lt;/p&gt;
  &lt;/blockquote&gt;
&lt;/glp:note&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;doc:metadata&gt;
  ...
  &lt;pubinfo:pubinfo&gt;
    &lt;copyright&gt;© The Incorporated Council of Law Reporting for the State of Queensland,
      2010.&lt;/copyright&gt;
  &lt;/pubinfo:pubinfo&gt;
  ...
&lt;/doc:metadata&gt;

           </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2013-07-22: <ph id="change_20130722_DSF">Created.</ph></p>
    </section>
  </body>
	</dita:topic>


	<xsl:template match="glp:note/blockquote/p/text/copyright" mode="metadata">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/copyright   -->
			<pubinfo:pubinfo xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
			  <copyright xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					<xsl:apply-templates select="@* | node()"/>
				</copyright>
			</pubinfo:pubinfo>

	</xsl:template>
  
  <xsl:template match="glp:note[blockquote/p/text/copyright]"/>

</xsl:stylesheet>