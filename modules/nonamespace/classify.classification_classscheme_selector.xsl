<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="usm_landingpgs-classify.classification_classscheme_selector.dita">
  <title>create <targetxml>doc:metadata/classify:classification[@classscheme="selector"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
    element <lnpid>id-MY08-17626</lnpid></title>
  <body>
    <p>Within <targetxml>doc:metadata</targetxml>, after the creation of the required
        <targetxml>dc:metadata</targetxml> element and its children, the element
        <targetxml>classify:classification[@classscheme="selector"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
      is created with content "Legislation" (without the quotes). Thus, the element
        <targetxml>classify:classification[@classscheme="selector"]</targetxml>, with its child
        <targetxml>classify:classitem</targetxml> and its grandchild
        <targetxml>classify:classitem-identifier</targetxml>, must be created first to contain the
        <targetxml>classify:classname</targetxml> element.</p>
    <example>
      <title>Source XML</title>
      <codeblock>

&lt;LEGDOC ...&gt;
  &lt;docinfo partitionnum="LEG1"&gt;
    ...

        </codeblock>
    </example>

    <example>
      <title>Target XML</title>
      <codeblock>

  &lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="AU"&gt;
      &lt;dc:metadata&gt;
        ...
      &lt;/dc:metadata&gt;
  
      &lt;classify:classification classscheme="selector"&gt;
        &lt;classify:classitem&gt;
          &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Legislation&lt;/classify:classname&gt;
          &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
      &lt;/classify:classification&gt;
      ...

          </codeblock>
    </example>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY08_navaid\classify.classification_classscheme_selector.dita  -->
	<xsl:message>classify.classification_classscheme_selector.xsl requires manual development!</xsl:message> 

</xsl:stylesheet>