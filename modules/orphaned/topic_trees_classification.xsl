<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="psl_landingpgs-topic_trees_classification">
  <title>Topic Tree <sourcexml>classification</sourcexml> <lnpid>id-UK13-30026</lnpid></title>
  <body>
    <p>The element <sourcexml>classification</sourcexml> becomes <targetxml>classify:classification</targetxml> as described in the topic <xref href="classification.dita"/>. Please see that topic for detailed instructions and examples.</p>
  <section>
    <title>Changes</title>
    <p>2016-03-31: <ph id="change_20160331_JCG">Moved instructions and examples to a new topic (now referenced by this topic) that deals with classificaiton mark-up for both topic tree documents and POD documents.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\topic_trees_classification.dita  -->
	<!--<xsl:message>topic_trees_classification.xsl requires manual development!</xsl:message> -->

	<xsl:template match="classification">

		<!--  Original Target XPath:  classify:classification   -->
		<classify:classification>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classification>

	</xsl:template>

</xsl:stylesheet>