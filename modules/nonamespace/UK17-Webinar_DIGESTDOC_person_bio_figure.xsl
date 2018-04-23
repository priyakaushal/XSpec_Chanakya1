<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK17-Webinar_DIGESTDOC_person_bio_figure">
  <title>person/bio/figure <lnpid>id-UK17-36211</lnpid></title>

  <body>
    <p>If <sourcexml>bio</sourcexml> is a direct child of <sourcexml>person</sourcexml> and it's
      parent element of <sourcexml>figure/inflineobject</sourcexml> in source document then target
      conversion should be mapped with <targetxml>p/text/figure</targetxml> (should be drop the
      parent <sourcexml>person/bio</sourcexml> wrapper element of <sourcexml>figure</sourcexml> in
      target conversion): </p>
    <example>
      <title>Source XML</title>
      <codeblock>

        &lt;text&gt;
          &lt;person&gt;
            &lt;bio&gt;
              &lt;figure&gt;
                &lt;inlineobject type="image" mimetype="image/gif" filename="test_recommended_by.jpg" /&gt;
              &lt;/figure&gt;
            &lt;/bio&gt;
          &lt;/person&gt;
        &lt;/text&gt;

           </codeblock>
      <title>Target XML</title>
      <codeblock>

        &lt;text&gt;
          &lt;person&gt;
            &lt;bio&gt;
              &lt;figure&gt;
                &lt;ref:inlineobject&gt;
                    &lt;ref:locator&gt;
                        &lt;ref:locator-key&gt;
                            &lt;ref:key-name name="object-key"/&gt;
                            &lt;ref:key-value value="test_recommended_by.jpg"/&gt;
                        &lt;/ref:locator-key&gt;
                        &lt;ref:locator-params&gt;
                          &lt;proc:param name="object-type" value="IMG"/&gt;
                          &lt;proc:param name="external-or-local" value="external"/&gt;
                          &lt;proc:param name="object-server" value="Blobstore"/&gt;
                          &lt;proc:param name="object-pguid" value="urn:contentItem:0000-0000-0000-0000-00000-00"/&gt;
                          &lt;proc:param name="componentseq" value="1"/&gt; 
                        &lt;/ref:locator-params&gt;
                    &lt;/ref:locator&gt;
                &lt;/ref:inlineobject&gt;
              &lt;/figure&gt;
            &lt;/bio&gt;
          &lt;/person&gt;
        &lt;/text&gt;

           </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2016-12-14: <ph id="change_20161214_JM">Not a rule change directly to this module. Modified
          Example Target to reflect blobstore markup for ref:inlineobject; all paramater names that
          formerly contained the word "attachment" are now "object".</ph></p>
      <p>2016-08-03: <ph id="change_20160803_JM">Not a rule change directly to this module. Modified
          Example Target to reflect blobstore markup.</ph></p>
      <p>2015-08-20: Created</p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK17-Webinar\UK17-Webinar_DIGESTDOC_person_bio_figure.dita  -->

	<xsl:template match="bio[parent::person][figure][not(child::*[2])][not(preceding-sibling::* or following-sibling::*)]" priority="25">
	  <xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="person[bio[figure[inlineobject]][not(child::*[2])]][not(child::*[2])]" priority="25">
    <xsl:apply-templates/>
	</xsl:template>

	

</xsl:stylesheet>