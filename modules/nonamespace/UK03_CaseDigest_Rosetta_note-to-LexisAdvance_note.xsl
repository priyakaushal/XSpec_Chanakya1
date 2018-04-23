<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
	xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0"
	exclude-result-prefixes="dita docinfo case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_note-to-LexisAdvance_note">
		<title>note-to-note <lnpid>id-UK03-27452</lnpid></title>
		<body>
			<p>
				<sourcexml>note</sourcexml> becomes <targetxml>note</targetxml>. The children can be converted as follows: <ul>
					<li>
						<note>Please note that <sourcexml>note/footnotegrp</sourcexml> is a data error. <b>Conversion needs to omit
								the file that has this xpath - <sourcexml>note/footnotegrp</sourcexml> from the acceptance testing.
							</b></note>
						<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;note notetype="commentary"&gt;
        &lt;footnotegrp&gt;
          &lt;footnote fntoken="0"&gt;
            &lt;fnbody&gt;
              &lt;p&gt;
                &lt;text&gt;1     Inheritance (Family Provision) Act, 1938, s. 2, as
                                    amended by Intestates' Estates Act, 1952, s. 7 and Sch. 3: "(1)
                                    Except as provided by the following provisions of this section
                                    or s. 4 of this Act, an order under this Act shall not be made
                                    save on an application made within six months from the date on
                                    which representation in regard to the deceased's estate is first
                                    taken out. (1A) If it is shown to the satisfaction of the court
                                    that the limitation of the said period of six months would
                                    operate unfairly, - (&lt;emph typestyle="it"&gt;a&lt;/emph&gt;) in
                                    consequence of the discovery of a will or codicil involving a
                                    substantial change in the disposition of the deceased's estate
                                    &amp;#x2026;, or (&lt;emph typestyle="it"&gt;b&lt;/emph&gt;) in consequence
                                    of a question whether a person had an interest in the estate
                                    &amp;#x2026; not having been determined at the time when
                                    representation was first taken out, or (&lt;emph typestyle="it"
                                        &gt;c&lt;/emph&gt;) in consequence of some other circumstances
                                    affecting the administration or distribution of the estate, the
                                    court may extend that period."
                &lt;/text&gt;
              &lt;/p&gt;
            &lt;/fnbody&gt;
          &lt;/footnote&gt;
        &lt;/footnotegrp&gt;
        &lt;page text="[1967] Ch. 634 at " count="" reporter="CH"/&gt;
      &lt;/note&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

This is a data error and conversion needs to omit this file from the acceptance tesing.

</pre>
						<pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:headnote&gt;
            &lt;note notetype="definition"&gt;
              &lt;p&gt;
                &lt;text&gt;The meaning of the expression "invoicing back" in that
                  sub-rule considered and explained.
                &lt;/text&gt;
              &lt;/p&gt;
            &lt;/note&gt;
          &lt;/case:headnote&gt;
        &lt;/case:embeddedcase&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;section&gt;
      &lt;bodytext&gt;
        &lt;courtcase:caseexcerpt&gt;
          &lt;courtcase:head&gt;
            &lt;note notetype="definition"&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;The meaning of the expression "invoicing back" in that
                        sub-rule considered and explained.
                  &lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;              
            &lt;/note&gt;
          &lt;/courtcase:head&gt;
        &lt;/courtcase:caseexcerpt&gt;
      &lt;/bodytext&gt;
    &lt;/section&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
					</li>
				</ul>
			</p>
			<section>
				<title>Created</title>
				<p>2015-08-12</p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_note-to-LexisAdvance_note.dita  -->

	<xsl:template match="note">
		<note>
			<xsl:apply-templates select="@*"/>
			<bodytext>
				<xsl:apply-templates select="node()"/>
			</bodytext>
		</note>
	</xsl:template>
	
	<!-- CSN - 2017-11-21 - Webstar 7051058 - Removed this template.  Logic moved to UK03_CaseDigest_Rosetta_case.constituent-to-LexisAdvance_courtcase.counsel.xsl
	<xsl:template match="note[parent::case:constituents]">
		<bodytext>
			<note>
				<xsl:apply-templates select="@*"/>
				<bodytext>
					<xsl:apply-templates select="node()"/>
				</bodytext>
			</note>
		</bodytext>
	</xsl:template>
	-->
	
	<xsl:template match="@notetype">
		<!--  Original Target XPath:  @notetype   -->
		<xsl:attribute name="notetype">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

	<xsl:template
		match="note[@notetype = 'other']/remotelink[contains(., '[version anglaise]') or contains(., '[French Version]')]"
		mode="doc-related_content">
		<doc:related-content>
			<doc:related-content-grp content-type="alternate-language-version">
				<doc:related-content-item>
					<doc:related-content-link>
						<ref:lnlink service="DOCUMENT">
							<ref:marker>
								<xsl:value-of select="."/>
							</ref:marker>
							<ref:locator>
								<ref:locator-key>
									<ref:key-name>
										<xsl:attribute name="name" select="@service"/>
									</ref:key-name>
									<ref:key-value>
										<xsl:attribute name="value" select="@remotekey2"/>
									</ref:key-value>
								</ref:locator-key>
								<ref:locator-params>
									<proc:param>
										<xsl:attribute name="name" select="'targetdoclang'"/>
										<xsl:attribute name="value"
											select="concat(docinfo:doc-lang/@lang, '-', docinfo:doc-country/@iso-cc)"/>
									</proc:param>
								</ref:locator-params>
							</ref:locator>
						</ref:lnlink>
					</doc:related-content-link>
				</doc:related-content-item>
			</doc:related-content-grp>
		</doc:related-content>
	</xsl:template>

</xsl:stylesheet>
