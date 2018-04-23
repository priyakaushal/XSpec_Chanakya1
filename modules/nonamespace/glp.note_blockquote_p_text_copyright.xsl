<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" 
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" 
  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
  version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="glp.note_blockquote_p_text_copyright">
  <title>glp:note/blockquote/p/text/copyright <lnpid>id-ST05-28447</lnpid></title>
  <body>
    <section>
      <p><sourcexml>glp:note/blockquote/p/text/copyright</sourcexml> becomes
          <targetxml>doc:metadata/pubinfo:pubinfo/copyright</targetxml>.</p>
    </section>
    <example>
      <title>Source XML based on AU content</title>
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
    </example>
    <example><title>Target XML</title>
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
      <p>2014-05-15: <ph id="change_20140515_SS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

 

	<xsl:template match="glp:note/blockquote/p/text/copyright">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/copyright   -->
				<copyright>
					<xsl:apply-templates select="@* | node()"/>
				</copyright>

	</xsl:template>

</xsl:stylesheet>