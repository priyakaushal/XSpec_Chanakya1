<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo-classification-LxAdv-doc.metadata_doc.docinfo-classify-classification">
  <title>docinfo_classification-to-doc:docinfo-classify:classification <lnpid>id-UK03-27463</lnpid></title>
  <body>
      <p>If input document are having below scenarios like:
          <ul>
              <li><sourcexml>/DIGESTDOC/docinfo/classification/classitem/classitem-identifier/classname</sourcexml> then it becomes
                  <targetxml>/casedigest:casedigest/doc:metadata/doc:docinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
              </li>
              <li><sourcexml>/DIGESTDOC/docinfo/classification/classitem/classitem-identifier/classcode</sourcexml> then it becomes
                  <targetxml>/casedigest:casedigest/doc:metadata/doc:docinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classcode</targetxml>.
              </li>
              
              <li>
                  <p><b>Note  </b>if<sourcexml>
                      classification/classitem[@classscheme="topic:topicReference"</sourcexml>
                      Please refer <b>id-CCCC-10516</b>
                  </p>
              </li>
              
              <li><sourcexml>/DIGESTDOC/docinfo/classification/classitem/meta</sourcexml> then it becomes
                  <targetxml>/casedigest:casedigest/doc:metadata/doc:docinfo/classify:classification/classify:classitem/meta</targetxml>.
              </li>
              <li><sourcexml>/DIGESTDOC/docinfo/classification/classitem/meta/metaitem</sourcexml> then it becomes
                  <targetxml>/casedigest:casedigest/doc:metadata/doc:docinfo/classify:classification/classify:classitem/meta/metaitem</targetxml>.
              </li>
          </ul>
          <pre>

&lt;DIGESTDOC>
  &lt;dig:body>
    &lt;docinfo>
        ...
        &lt;classification classscheme="injurytype">
            &lt;classitem>
                &lt;classitem-identifier>
                    &lt;classname>Orthopaedic Injuries&lt;/classname>
                &lt;/classitem-identifier>
            &lt;/classitem>
            &lt;classitem>
                &lt;classitem-identifier>
                    &lt;classname>Scarring to Other Parts of the Body&lt;/classname>
                &lt;/classitem-identifier>
            &lt;/classitem>
        &lt;/classification>
    &lt;/docinfo>
  &lt;/dig:body>
&lt;/DIGESTDOC>

<b>Becomes</b>

&lt;casedigest:casedigest>
   &lt;doc:metadata>
     &lt;doc:docinfo>
        ...
        &lt;classify:classification classscheme="injurytype">
            &lt;classify:classitem>
                 &lt;classify:classitem-identifier>
                     &lt;classify:classname>Orthopaedic Injuries&lt;/classify:classname>
                 &lt;/classify:classitem-identifier>
            &lt;/classify:classitem>
            &lt;classify:classitem>
                &lt;classify:classitem-identifier>
                    &lt;classify:classname>Scarring to Other Parts of the Body&lt;/classify:classname>
                &lt;/classify:classitem-identifier>
            &lt;/classify:classitem>
        &lt;/classify:classification>            
    &lt;/doc:docinfo>
  &lt;/doc:metadata>
&lt;/casedigest:casedigest>

</pre>
    </p>
      <p><b>Example 2:</b>
      <pre>
  &lt;classification classscheme="ln.legal">
    &lt;classitem classscheme="topic:topicReference">
        &lt;meta>
            &lt;metaitem name="appliedby" value="human" />
        &lt;/meta>
        &lt;classitem-identifier>
            &lt;classcode normval="urn:topic:9D04DC0A87954FDD9ED075C0B80CFA30" />
        &lt;/classitem-identifier>
    &lt;/classitem>
    &lt;classitem classscheme="topic:topicReference">
        &lt;meta>
            &lt;metaitem name="appliedby" value="human" />
        &lt;/meta>
        &lt;classitem-identifier>
            &lt;classcode normval="urn:topic:10F81766317A490DA613C127940C527B" />
        &lt;/classitem-identifier>
    &lt;/classitem>
&lt;/classification>      


<b>Becomes</b>
&lt;classify:classification classscheme="ln.legal">
    &lt;classify:classitem classscheme="topic:topicReference">
        &lt;meta>
            &lt;metaitem name="appliedby" value="human" />
        &lt;/meta>
        &lt;topic:topicReference guid:guid="urn:topic:9D04DC0A87954FDD9ED075C0B80CFA30" />
  &lt;/classify:classitem>
    &lt;classify:classitem classscheme="topic:topicReference">
        &lt;meta>
            &lt;metaitem name="appliedby" value="human" />
        &lt;/meta>
        &lt;topic:topicReference guid:guid="urn:topic:10F81766317A490DA613C127940C527B" />
   &lt;/classify:classitem>
&lt;/classify:classification>

      </pre></p>
      <section>
          <title>Changes</title>
          <p>2017-02-13: <ph id="change_20170213_RS">Update the example related to topic:topicReference</ph></p>
          <p>2016-10-21: <ph id="change_20161021_HP">Instruction created for handling input scenario
              <sourcexml>/DIGESTDOC/docinfo/classification/classitem/meta</sourcexml> and
              <sourcexml>/DIGESTDOC/docinfo/classification/classitem/classitem-identifier/classcode</sourcexml></ph></p>
          <p>2016-03-08: <ph id="change_20160308_SS">Instruction created for handling input scenario "<sourcexml>/DIGESTDOC/docinfo/classification/classitem/classitem-identifier/classname</sourcexml>".
              RFA #<b>2790</b></ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_docinfo-classification-LxAdv-doc.metadata_doc.docinfo-classify-classification.dita  -->
	<xsl:message>Rosetta_docinfo-classification-LxAdv-doc.metadata_doc.docinfo-classify-classification.xsl requires manual development!</xsl:message> 

	<xsl:template match="/DIGESTDOC/docinfo/classification/classitem/classitem-identifier/classname">

		<!--  Original Target XPath:  /casedigest:casedigest/doc:metadata/doc:docinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<casedigest:casedigest xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/">
			<doc:metadata xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/">
				<doc:docinfo>
					<classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
						<classify:classitem>
							<classify:classitem-identifier>
								<classify:classname>
									<xsl:apply-templates select="@* | node()"/>
								</classify:classname>
							</classify:classitem-identifier>
						</classify:classitem>
					</classify:classification>
				</doc:docinfo>
			</doc:metadata>
		</casedigest:casedigest>

	</xsl:template>

	<xsl:template match="/DIGESTDOC/docinfo/classification/classitem/classitem-identifier/classcode">

		<!--  Original Target XPath:  /casedigest:casedigest/doc:metadata/doc:docinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classcode   -->
		<casedigest:casedigest xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/">
			<doc:metadata xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/">
				<doc:docinfo>
					<classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
						<classify:classitem>
							<classify:classitem-identifier>
								<classify:classcode>
									<xsl:apply-templates select="@* | node()"/>
								</classify:classcode>
							</classify:classitem-identifier>
						</classify:classitem>
					</classify:classification>
				</doc:docinfo>
			</doc:metadata>
		</casedigest:casedigest>

	</xsl:template>

	<xsl:template match="/DIGESTDOC/docinfo/classification/classitem/meta">

		<!--  Original Target XPath:  /casedigest:casedigest/doc:metadata/doc:docinfo/classify:classification/classify:classitem/meta   -->
		<casedigest:casedigest xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/">
			<doc:metadata xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/">
				<doc:docinfo>
					<classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
						<classify:classitem>
							<meta>
								<xsl:apply-templates select="@* | node()"/>
							</meta>
						</classify:classitem>
					</classify:classification>
				</doc:docinfo>
			</doc:metadata>
		</casedigest:casedigest>

	</xsl:template>

	<xsl:template match="/DIGESTDOC/docinfo/classification/classitem/meta/metaitem">

		<!--  Original Target XPath:  /casedigest:casedigest/doc:metadata/doc:docinfo/classify:classification/classify:classitem/meta/metaitem   -->
		<casedigest:casedigest xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/">
			<doc:metadata xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/">
				<doc:docinfo>
					<classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
						<classify:classitem>
							<meta>
								<metaitem>
									<xsl:apply-templates select="@* | node()"/>
								</metaitem>
							</meta>
						</classify:classitem>
					</classify:classification>
				</doc:docinfo>
			</doc:metadata>
		</casedigest:casedigest>

	</xsl:template>

</xsl:stylesheet>