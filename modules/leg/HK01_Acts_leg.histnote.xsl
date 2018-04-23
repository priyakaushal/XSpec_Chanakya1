<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
    version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.histnote">
    <title>leg:histnote <lnpid>id-HK01-36813</lnpid></title>
  <body>
    <section>
        <p><sourcexml>leg:histnote</sourcexml>
            <b>becomes</b>
            <targetxml>note[@notetype="historical"]</targetxml> and populated as below: 
        </p>
        
    </section>
    <example>
            <title>Mapping of <sourcexml>leg:histnote</sourcexml></title>
            <codeblock>

&lt;leg:histnote&gt;
    &lt;p&gt;
        &lt;text&gt;[(Added6 of 1984 s 2)]&lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:histnote&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;note notetype="historical"&gt;
    &lt;bodytext&gt;
        &lt;p&gt;
         &lt;text&gt;[(Added6 of 1984 s 2)]&lt;/text&gt;
        &lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/note&gt;
    
      </codeblock>
        </example> 
      <note>If source document is having the input scenario
                "<sourcexml>heading/leg:histnote</sourcexml>" then conversion needs to convert
            target mapping xpath is
            "<targetxml>heading/note[@notetype="historical"]</targetxml>".</note>
      <note>If source document is having the input scenario
          "<sourcexml>defitem/leg:histnote</sourcexml>" then conversion needs to convert
          target mapping xpath is
          "<targetxml>defitem/note[@notetype="historical"]</targetxml>".</note>
      <note>If source document is having the input scenario
          "<sourcexml>leg:bodytext/leg:histnote</sourcexml>" then conversion needs to convert
          target mapping xpath is
          "<targetxml>primlaw:bodytext/note[@notetype="historical"]</targetxml>".</note>
      <note>If source document is having the input scenario
                "<sourcexml>li/p/leg:histnote</sourcexml>" then conversion needs to convert target
            mapping xpath is "<targetxml>listitem/bodytext/note[@notetype="historical"]</targetxml>"
            and dropped the "<sourcexml>p</sourcexml>" markup in target conversion.</note>
      
<section>
    <title>Changes</title>
       <p>2016-03-04: <ph id="change_20160304_SS">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK01_Acts\leg.histnote.dita  -->
	 

	<xsl:template match="leg:histnote">
		<note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:attribute name="notetype">historical</xsl:attribute>
			<xsl:apply-templates select="@*"/>
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="node()"/>
			</bodytext>
		</note>
	</xsl:template>

	
</xsl:stylesheet>