<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK14_Precedents_person-bio">
  <title>person/bio <lnpid>id-UK14-30221</lnpid></title>
  <body>
    <section>
      <p><sourcexml>person/bio</sourcexml> becomes
          <targetxml>person:person/person:bio/person:bio.text/bodytext</targetxml></p>
      <p>Note:<ul>
          <li><sourcexml>person/bio</sourcexml> occurs within
              <sourcexml>docinfo:assoc-links</sourcexml>, see Metadata section for rules on
              <sourcexml>docinfo:assoc-links</sourcexml>.</li>
          <li><sourcexml>person/bio</sourcexml> contains <sourcexml>figure</sourcexml>, see General
            Markup section for rules on <sourcexml>figure</sourcexml> and children.</li>
        </ul></p>
    </section>

    <pre>
        <b>EXAMPLE</b>
            
<b><i>Source XML</i></b>

&lt;docinfo:assoc-links&gt;
   &lt;docinfo:assoc-links-grp assoc-content="recommended-documents"&gt;
      &lt;heading&gt;
         &lt;title&gt;Lawrence Milner recommends&lt;/title&gt;
      &lt;/heading&gt;
      &lt;text&gt;
         &lt;person&gt;
            &lt;bio&gt;
               &lt;figure&gt;
                  &lt;caption&gt;EMEA regional counsel, Cadence Design Systems&lt;/caption&gt;
                  &lt;inlineobject type="image" mimetype="image/gif"
                      filename="MTT_Lawrence Milner.jpg"/&gt;
               &lt;/figure&gt;
            &lt;/bio&gt;
         &lt;/person&gt;
      &lt;/text&gt;
      ...
   &lt;/docinfo:assoc-links-grp&gt;
&lt;/docinfo:assoc-links&gt;
 
<b><i>Target XML</i></b>

&lt;doc:related-content&gt;
  &lt;doc:related-content-grp grptype="recommended-documents"&gt;
    &lt;heading&gt;
      &lt;title&gt;Lawrence Milner recommends&lt;/title&gt;
    &lt;/heading&gt;
    &lt;doc:related-content-item&gt;
      &lt;doc:related-content-desc&gt;
       &lt;p&gt;
        &lt;text&gt;
         &lt;person:person&gt;
          &lt;person:bio&gt;
           &lt;person:bio.text&gt;
            &lt;bodytext&gt;
              &lt;figure&gt;
                &lt;caption&gt;
                  &lt;p&gt;
                    &lt;text&gt;EMEA regional counsel, Cadence Design Systems&lt;/text&gt;
                  &lt;/p&gt;
                &lt;/caption&gt;
                &lt;ref:inlineobject&gt;
                  &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt;
                      &lt;ref:key-name name="object-key"/&gt;
                      &lt;ref:key-value value="MTT_Lawrence Milner.jpg"/&gt;
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
            &lt;/bodytext&gt;
           &lt;/person:bio.text&gt;
          &lt;/person:bio&gt;
         &lt;/person:person&gt;
        &lt;/text&gt;
       &lt;/p&gt;
      &lt;/doc:related-content-desc&gt;
    &lt;/doc:related-content-item&gt;
    ...
  &lt;/doc:related-content-grp&gt;
&lt;/doc:related-content&gt;

                </pre>

    <section>
      <title>Changes</title>
      <p>2016-12-14: <ph id="change_20161214_jm">Not a rule change directly to this module. Modified
          Example Target to reflect blobstore markup for ref:inlineobject; all paramater names that
          formerly contained the word "attachment" are now "object".</ph></p>
      <p>2013-11-11: <ph id="change_20131111_jm">Not a rule change. Illustrative. Corrected an error
          in the example. Previously showed <targetxml>caption</targetxml> with pcdata. Now
          corrected to <targetxml>caption/p/text</targetxml>. Responds to Phase 6 UK discussion
          board item 61.</ph></p>
      <p>2013-10-30: <ph id="change_20131030_jm">New section.
            <sourcexml>person/bio/figure</sourcexml> is new in Oct 2013 redelivery. This section
          describes rules for <sourcexml>person/bio</sourcexml>. Also added common rules for
            <sourcexml>figure</sourcexml> in the General Markup section. Webteam 239323.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK14-Precedents\UK14_Precedents_person-bio.dita  -->
<!--	<xsl:message>UK14_Precedents_person-bio.xsl requires manual development!</xsl:message> -->

	<xsl:template match="person/bio">

		<!--  Original Target XPath:  person:person/person:bio/person:bio.text/bodytext   -->
		<person:person>
			<person:bio>
				<person:bio.text>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</person:bio.text>
			</person:bio>
		</person:person>

	</xsl:template>

<!--	<xsl:template match="figure">

		<!-\-  Original Target XPath:  caption   -\->
		<caption>
			<xsl:apply-templates select="@* | node()"/>
		</caption>

	</xsl:template>

	<xsl:template match="person/bio/figure">

		<!-\-  Original Target XPath:     -\->
		<!-\-  Could not determine target element or attribute name:  <>  -\->			<xsl:apply-templates select="@* | node()"/>
		<!-\-  Could not determine target element or attribute name:  </>  -\->

	</xsl:template>-->

</xsl:stylesheet>