<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita pubinfo lnmeta">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK06_LawsActsBillsMeasures-copyright">
  <title><sourcexml>copyright</sourcexml> to <targetxml>copyright</targetxml> <lnpid>id-UK06-28009</lnpid></title>
  <body>
    <section>
      <p><sourcexml>copyright</sourcexml> becomes <targetxml>copyright</targetxml> with optional child
        <ul>
          <li><sourcexml>copyright.holder</sourcexml> becomes <targetxml>copyright-holder</targetxml>.</li>
        </ul>
      </p>
      <p>Keep <targetxml>copyright</targetxml> within <targetxml>doc:metadata/pubinfo:pubinfo</targetxml> in output documents and let the stylesheet handle it.</p>
    </section>
    <section>
      <title>Changes</title>
      <p>2014-01-31: Created. <sourcexml>copyright</sourcexml> encountered in new source delivery. Phase 5 UK discussion-defect tracking: issue #152.</p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_LawsActsBillsMeasures-copyright.dita  -->

	<!-- Sudhanshu Srivastava : 
	     Edited :- 19 June 2017.
	     Comments :- This is content specifci module handling copyright information.
	-->
	<xsl:template match="copyright">
		<!--  Original Target XPath:  copyright   -->
	<pubinfo:pubinfo>	
		<copyright xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</copyright>
	</pubinfo:pubinfo>
	</xsl:template>

	<xsl:template match="copyright.holder">
		<!--  Original Target XPath:  copyright-holder   -->
		<copyright-holder>
			<xsl:apply-templates select="@* | node()"/>
		</copyright-holder>
	</xsl:template>

</xsl:stylesheet>