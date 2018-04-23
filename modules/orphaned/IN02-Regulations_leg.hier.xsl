<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.hier">
    <title>leg:hier/leg:hierlev <lnpid>id-IN02-15612</lnpid></title>
  <body>
    <section>
        <p><sourcexml>leg:hier/leg:hierlev</sourcexml> becomes <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and populated as below:
      </p> 
    </section>
    <example>         
      <codeblock>

&lt;leg:hier&gt;
    &lt;leg:hierlev searchtype="SCH-NUM"&gt;SCHEDULE&lt;/leg:hierlev&gt;
&lt;/leg:hier&gt;

      </codeblock>
        <b>Becomes</b>
        <codeblock>

&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="IN"&gt;
        ..........
        &lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
            &lt;meta&gt;
                &lt;metaitem name="leg:hierlev" value="SCHEDULE"/&gt;
            &lt;/meta&gt;
        &lt;/doc:legacy-metadata&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

        </codeblock>
    </example>    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN02-Regulations\leg.hier.dita  -->
	<xsl:message>IN02-Regulations_leg.hier.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:hier/leg:hierlev">

		<!--  Original Target XPath:  doc:legacy-metadata/meta/metaitem   -->
		<doc:legacy-metadata>
			<meta>
				<metaitem>
					<xsl:apply-templates select="@* | node()"/>
				</metaitem>
			</meta>
		</doc:legacy-metadata>

	</xsl:template>

</xsl:stylesheet>