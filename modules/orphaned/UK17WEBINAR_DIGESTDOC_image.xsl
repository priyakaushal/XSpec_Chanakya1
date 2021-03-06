<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="topic-1">
  <title>Presenter Inline Recommend Image <lnpid>id-UK17-30611</lnpid></title>
  <body>
    <p>When <sourcexml>figure</sourcexml> is a descendant of
        <sourcexml>docinfo/docinfo:assoc-links/docinfo:assoc-links-grp</sourcexml> it contains an
      image of author recommendations. Output
        <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml> inside
        <targetxml>seclaw:body</targetxml>.<ul>
        <li>If <sourcexml>docinfo:assoc-links-grp/heading</sourcexml> is present, apply
            <sourcexml>heading</sourcexml> general markup.</li>
        <li>Output <targetxml>seclaw:bodytext/p/text</targetxml>.<ul>
            <li>Pass thru <sourcexml>text/person/bio</sourcexml>.</li>
            <li>Apply <sourcexml>figure</sourcexml> general markup.</li>
          </ul></li>
      </ul></p>
    <example>
      <title>Source XML</title>
      <codeblock>&lt;docinfo:assoc-links-grp assoc-content="recommended-by"&gt;
  &lt;heading&gt;
    &lt;title&gt;Author name recommends&lt;/title&gt;
  &lt;/heading&gt;
  &lt;text&gt;
    &lt;person&gt;
      &lt;bio&gt;
        &lt;figure&gt;
          &lt;inlineobject type="image" mimetype="image/gif" filename="test_recommended_by.jpg"/&gt;
        &lt;/figure&gt;
      &lt;/bio&gt;
    &lt;/person&gt;
  &lt;/text&gt;</codeblock>
      <title>Target XML</title>
      <codeblock>&lt;seclaw:body&gt;
      &lt;seclaw:level leveltype="unclassified"&gt;
         &lt;heading&gt;
            &lt;title&gt;Author name recommends&lt;/title&gt;
         &lt;/heading&gt;
         &lt;seclaw:bodytext&gt;
            &lt;p&gt;
               &lt;text&gt;
                  &lt;figure&gt;
                     &lt;ref:inlineobject&gt;
                        &lt;ref:locator&gt;
                           &lt;ref:locator-key&gt;
                              &lt;ref:key-name name="attachment-key"/&gt;
                              &lt;ref:key-value value="test_recommended_by.jpg"/&gt;
                           &lt;/ref:locator-key&gt;
                           &lt;ref:locator-params&gt;
                              &lt;proc:param name="attachment-type" value="IMG"/&gt;
                              &lt;proc:param name="external-or-local" value="external"/&gt;
                              &lt;proc:param name="attachment-server" value="BlobStore"/&gt;
                              &lt;proc:param name="attachment-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
                              &lt;proc:param name="componentseq" value="1"/&gt;
                           &lt;/ref:locator-params&gt;
                        &lt;/ref:locator&gt;
                     &lt;/ref:inlineobject&gt;
                  &lt;/figure&gt;
               &lt;/text&gt;
            &lt;/p&gt;
         &lt;/seclaw:bodytext&gt;
      &lt;/seclaw:level&gt;</codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2016-08-03: <ph id="change_20160803_JM">Not a rule change directly to this module. Modified
          Example Target to reflect blobstore markup.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-CLE_materials\UK17WEBINAR_DIGESTDOC_image.dita  -->
	<xsl:message>UK17WEBINAR_DIGESTDOC_image.xsl requires manual development!</xsl:message> 

	<xsl:template match="figure">

		<!--  Original Target XPath:  seclaw:level[@leveltype="unclassified"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="docinfo/docinfo:assoc-links/docinfo:assoc-links-grp">

		<!--  Original Target XPath:  seclaw:level[@leveltype="unclassified"]   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="docinfo:assoc-links-grp/heading">

		<!--  Original Target XPath:  seclaw:bodytext/p/text   -->
		<seclaw:bodytext>
			<p>
				<text>
					<xsl:apply-templates select="@* | node()"/>
				</text>
			</p>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  seclaw:bodytext/p/text   -->
		<seclaw:bodytext>
			<p>
				<text>
					<xsl:apply-templates select="@* | node()"/>
				</text>
			</p>
		</seclaw:bodytext>

	</xsl:template>

	<xsl:template match="text/person/bio">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>