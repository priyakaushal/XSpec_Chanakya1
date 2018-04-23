<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:casesum="http://www.lexisnexis.com/xmlschemas/content/legal/case-summary/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Caselaw_Introduction">
  <title>Introduction <lnpid>id-CA01-12208</lnpid></title>
  <body>
    <section>
      <p>These Conversion Instructions describe the conversion of Canadian Rosetta cases documents
        to the 10.2 PROD version of the NewLexis CourtCase schema.</p>
      <p>CA cases are identified by the following criteria: <ul>
          <li>The root element of the document is <sourcexml>CASEDOC</sourcexml>.</li>
          <li>The value of <sourcexml>CASEDOC/@type</sourcexml> is "fulltext".</li>
          <li>The value of <sourcexml>/CASEDOC/docinfo/docinfo:doc-country/@iso-cc</sourcexml> is "CA".</li>
        </ul></p>
      <p><sourcexml>CASEDOC</sourcexml> becomes <targetxml>courtcase:courtcase</targetxml>. <targetxml>courtcase:courtcase/@xml:lang</targetxml> is
        populated as follows: <ol>
          <li>Extract the value of <sourcexml>/CASEDOC/docinfo/docinfo:doc-lang</sourcexml>.</li>
          <li>Extract the value of <sourcexml>/CASEDOC/docinfo/docinfo:doc-country</sourcexml>.</li>
          <li>Concatenate value of 1 and 2 with a hyphen between them and place the resulting value in
              <targetxml>courtcase:courtcase/@xml:lang</targetxml>.</li>
        </ol></p>
      <p><targetxml>courtcase:head</targetxml>, <targetxml>courtcase:body</targetxml>, and <targetxml>doc:metadata</targetxml> are created as required
        children of <targetxml>courtcase:courtcase</targetxml>.</p>
    </section>
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;CASEDOC&gt;
  &lt;docinfo&gt;
    ...
    &lt;docinfo:doc-lang lang="fr"/&gt;
    &lt;docinfo:doc-country iso-cc="CA"/&gt;
  &lt;/docinfo&gt;
  ...
&lt;/CASEDOC&gt;
           </codeblock>
      <title>Target XML</title>
      <codeblock>

&lt;courtcase:courtcase xml:lang="fr-CA"&gt;
      &lt;courtcase:head&gt;...&lt;/courtcase:head&gt;
      &lt;courtcase:body&gt;...&lt;/courtcase:body&gt;
      &lt;doc:metadata&gt;...&lt;/doc:metadata&gt;
&lt;/courtcase:courtcase&gt;
           </codeblock>
    </example>
    <section>
      <title>Note:</title>
      <p>Source elements and attributes are highlighted like this: <sourcexml>SOURCEXML</sourcexml>.</p>
      <p>Target elements and attributes are highlighted like this: <targetxml>TARGETXML</targetxml>.</p>
      <p>Examples are represented like this: <pre>EXAMPLE</pre></p>
      <p>Source attributes should be copied over to the target unless otherwise specified.</p>
    </section>
  </body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_introduction.dita  -->
	
  <xsl:template match="CASEDOC">    
    <!--  Original Target XPath:  courtcase:courtcase   -->
    <xsl:element name="courtcase:courtcase">
      <xsl:for-each select="$lexisAdvNamespaces/*">
        <xsl:sort/>
        <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
      </xsl:for-each>
      <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
      <xsl:attribute name="xml:lang">
        <xsl:value-of select="concat(docinfo/docinfo:doc-lang/@lang,'-',docinfo/docinfo:doc-country/@iso-cc)"/>
      </xsl:attribute>
      <!-- court:casehead -->
      <xsl:apply-templates select="case:body/case:headnote"/>
      <!-- courtcase:body -->
      <xsl:apply-templates select="case:body"/>
      <!-- doc:metadata   -->
      <xsl:element name="doc:metadata">
        <xsl:apply-templates select="docinfo"/>
      </xsl:element>
    </xsl:element>
    
  </xsl:template>
  
  <xsl:template match="case:disposition[parent::case:headnote]"/>
  
  <xsl:template match="@type"/>

</xsl:stylesheet>