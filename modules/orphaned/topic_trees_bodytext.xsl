<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="psl_landingpgs-topic_trees_bodytext">
  <title>Topic Tree <sourcexml>bodytext</sourcexml> <lnpid>id-UK13-30025</lnpid></title>
  <body>
      <p>The element <sourcexml>level/bodytext</sourcexml> becomes <targetxml>seclaw:level/seclaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem</targetxml>.</p>
    <p>Only one <targetxml>seclaw:levelinfo</targetxml> element is created as a child of
        <targetxml>seclaw:level</targetxml>. If a <targetxml>seclaw:levelinfo</targetxml> element
      has already been created due to a <sourcexml>levelinfo</sourcexml> element (see instructions
      in topic <xref href="topic_trees_level.dita"/>) then that same element is used as the parent
      of the <targetxml>ref:relatedcontent</targetxml> element as well. If no
        <sourcexml>levelinfo</sourcexml> element exists, then a
        <targetxml>seclaw:levelinfo</targetxml> element is created as a parent of the
        <targetxml>ref:relatedcontent</targetxml> element.</p>
    <p>Only one <targetxml>ref:relatedcontent</targetxml> element is created as a container for all <targetxml>ref:relatedcontentitem</targetxml> elements.</p>
      <p>Each <sourcexml>bodytext</sourcexml> element becomes a separate <targetxml>ref:relatedcontentitem</targetxml> element.<ul>
        <li>The attribute <sourcexml>bodytext/@searchtype</sourcexml> becomes <targetxml>ref:relatedcontentitem/@contenttype</targetxml>.</li>
        <li>The attribute <targetxml>ref:relatedcontentitem/@relationship</targetxml> is set to
          "landingpage".</li>
        <li>The element <sourcexml>bodytext/remotelink</sourcexml> becomes
            <targetxml>ref:relatedcontentitem/ref:related-content-link/ref:lnlink</targetxml>.
          (First, the child <targetxml>ref:related-content-link</targetxml> is created as a wrapper,
          then the grandchild <targetxml>ref:lnlink</targetxml> is created). The
            <sourcexml>remotelink</sourcexml> attributes and child elements are converted as
          specified in the next topic (<xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.lnlink_(special).dita"/>). Note
          that is a special conversion of <sourcexml>remotelink</sourcexml>; it is to be applied
          only to the XPath <sourcexml>level/bodytext/remotelink</sourcexml> and only within
              <b><u>Topic Tree</u></b> documents.</li>
      </ul>
    </p> 
    <section>
      <title>Source XML showing <sourcexml>level</sourcexml> with both
          <sourcexml>levelinfo</sourcexml> and <sourcexml>bodytext</sourcexml> child
        elements.</title>
      <codeblock>

&lt;level leveltype="subtopic-level2"&gt;
  &lt;levelinfo&gt;
    &lt;classification classscheme="ln.legal"&gt;
      &lt;classitem classscheme="topic:topicReference"&gt;
        &lt;meta&gt;
          &lt;metaitem name="appliedby" value="human"/&gt;
        &lt;/meta&gt;
        &lt;classitem-identifier&gt;
          &lt;classcode normval="urn:topic:93316180353644a798d20b2a1ed56e78"/&gt;
        &lt;/classitem-identifier&gt;
      &lt;/classitem&gt;
    &lt;/classification&gt;
  &lt;/levelinfo&gt;
  &lt;heading&gt;
    &lt;title&gt;The term of trust and confidence&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext searchtype="PracticeNotes"&gt;
    &lt;remotelink remotekey1="DOCID" service="DOC-ID" dpsi="0OLD" remotekey2="0OLD_154105"
      &gt;The term of trust and confidence Practical Guidance&lt;/remotelink&gt;
  &lt;/bodytext&gt;
  &lt;bodytext searchtype="Cases"&gt;
    &lt;remotelink remotekey1="DOCID" service="DOC-ID" dpsi="0OLD" remotekey2="0OLD_156100"
      &gt;The term of trust and confidence Cases&lt;/remotelink&gt;
  &lt;/bodytext&gt;
  &lt;bodytext searchtype="News"&gt;
    &lt;remotelink remotekey1="DOCID" service="DOC-ID" dpsi="0OLD" remotekey2="0OLD_168577"
      &gt;The term of trust and confidence News Analysis&lt;/remotelink&gt;
  &lt;/bodytext&gt;
&lt;/level&gt;

      </codeblock>
    </section>
      <section>
        <title>Target XML </title>
        <codeblock>

&lt;seclaw:level leveltype="subtopic"&gt;
  &lt;heading&gt;
    &lt;title&gt;The term of trust and confidence&lt;/title&gt;
  &lt;/heading&gt;
  &lt;seclaw:levelinfo&gt;
    &lt;classify:classification classscheme="ln.legal"&gt;
      &lt;classify:classitem classscheme="topic:topicReference"&gt;
        &lt;meta&gt;
          &lt;metaitem name="appliedby" value="human"/&gt;
        &lt;/meta&gt;
        &lt;topic:topicReference guid:guid="urn:topic:93316180353644a798d20b2a1ed56e78"/&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
    &lt;ref:relatedcontent&gt;
      &lt;ref:relatedcontentitem contenttype="PracticeNotes" relationship="landingpage"&gt;
        &lt;ref:related-content-link&gt;
          &lt;ref:lnlink service="DOCUMENT"&gt;
            &lt;ref:marker&gt;The term of trust and confidence Practical Guidance&lt;/ref:marker&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt;
                &lt;ref:key-value value="0OLD-0OLD_154105"/&gt;
              &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:lnlink&gt;
        &lt;/ref:related-content-link&gt;
      &lt;/ref:relatedcontentitem&gt;
      &lt;ref:relatedcontentitem contenttype="Cases" relationship="landingpage"&gt;
        &lt;ref:related-content-link&gt;
          &lt;ref:lnlink service="DOCUMENT"&gt;
            &lt;ref:marker&gt;The term of trust and confidence Cases&lt;/ref:marker&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt;
                &lt;ref:key-value value="0OLD-0OLD_156100"/&gt;
              &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:lnlink&gt;
        &lt;/ref:related-content-link&gt;
      &lt;/ref:relatedcontentitem&gt;
      &lt;ref:relatedcontentitem contenttype="News" relationship="landingpage"&gt;
        &lt;ref:related-content-link&gt;
          &lt;ref:lnlink service="DOCUMENT"&gt;
            &lt;ref:marker&gt;The term of trust and confidence News Analysis&lt;/ref:marker&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt;
                &lt;ref:key-value value="0OLD-0OLD_168577"/&gt;
              &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:lnlink&gt;
        &lt;/ref:related-content-link&gt;
      &lt;/ref:relatedcontentitem&gt;
    &lt;/ref:relatedcontent&gt;
  &lt;/seclaw:levelinfo&gt;
  &lt;seclaw:bodytext&gt;&lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

        </codeblock>
      </section>
    <section>
      <title>Source XML showing <sourcexml>level</sourcexml> with <sourcexml>bodytext</sourcexml> child
        elements but no <sourcexml>levelinfo</sourcexml> child element.</title>
      <codeblock>

&lt;level leveltype="subtopic"&gt;
  &lt;heading&gt;
    &lt;title&gt;Work rated as equivalent&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext searchtype="PracticeNotes"&gt;
    &lt;remotelink remotekey1="DOCID" service="DOC-ID" dpsi="0OLD" remotekey2="0OLD_154680"
      &gt;Work rated as equivalent Practical Guidance&lt;/remotelink&gt;
  &lt;/bodytext&gt;
  &lt;bodytext searchtype="StartingPoints"&gt;
    &lt;remotelink remotekey1="DOCID" service="DOC-ID" dpsi="0OLD" remotekey2="0OLD_227808"
      &gt;Work rated as equivalent Starting Points&lt;/remotelink&gt;
  &lt;/bodytext&gt;
  &lt;bodytext searchtype="News"&gt;
    &lt;remotelink remotekey1="DOCID" service="DOC-ID" dpsi="0OLD" remotekey2="0OLD_204494"
      &gt;Work rated as equivalent News Analysis&lt;/remotelink&gt;
  &lt;/bodytext&gt;
&lt;/level&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;seclaw:level leveltype="subtopic"&gt;
  &lt;heading&gt;
    &lt;title&gt;Work rated as equivalent&lt;/title&gt;
  &lt;/heading&gt;
  &lt;seclaw:levelinfo&gt;
    &lt;ref:relatedcontent&gt;
      &lt;ref:relatedcontentitem contenttype="PracticeNotes" relationship="landingpage"&gt;
        &lt;ref:related-content-link&gt;
          &lt;ref:lnlink service="DOCUMENT"&gt;
            &lt;ref:marker&gt;Work rated as equivalent Practical Guidance&lt;/ref:marker&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt;
                &lt;ref:key-value value="0OLD-0OLD_154680"/&gt;
              &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:lnlink&gt;
        &lt;/ref:related-content-link&gt;
      &lt;/ref:relatedcontentitem&gt;
      &lt;ref:relatedcontentitem contenttype="StartingPoints" relationship="landingpage"&gt;
        &lt;ref:related-content-link&gt;
          &lt;ref:lnlink service="DOCUMENT"&gt;
            &lt;ref:marker&gt;Work rated as equivalent Starting Points&lt;/ref:marker&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt;
                &lt;ref:key-value value="0OLD-0OLD_227808"/&gt;
              &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:lnlink&gt;
        &lt;/ref:related-content-link&gt;
      &lt;/ref:relatedcontentitem&gt;
      &lt;ref:relatedcontentitem contenttype="News" relationship="landingpage"&gt;
        &lt;ref:related-content-link&gt;
          &lt;ref:lnlink service="DOCUMENT"&gt;
            &lt;ref:marker&gt;Work rated as equivalent News Analysis&lt;/ref:marker&gt;
            &lt;ref:locator&gt;
              &lt;ref:locator-key&gt;
                &lt;ref:key-name name="DOC-ID"/&gt;
                &lt;ref:key-value value="0OLD-0OLD_204494"/&gt;
              &lt;/ref:locator-key&gt;
            &lt;/ref:locator&gt;
          &lt;/ref:lnlink&gt;
        &lt;/ref:related-content-link&gt;
      &lt;/ref:relatedcontentitem&gt;
    &lt;/ref:relatedcontent&gt;
  &lt;/seclaw:levelinfo&gt;
  &lt;seclaw:bodytext&gt;&lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

        </codeblock>
    </section>
    <section>
      <title>Changes</title>
      <p>2016-01-22: <ph id="change_20160122_JCG">Changed the wrapper element created for each <sourcexml>bodytext/remotelink</sourcexml> to <targetxml>ref:related-content-link</targetxml> (was previously <targetxml>ref:relatedcontentattachment</targetxml>).</ph></p>
      <p>2015-11-02: <ph id="change_20151102_JCG">Extensive changes have been made to the mappings
          for the <sourcexml>bodytext</sourcexml> element and its child elements; please review the
          new instructions and the examples carefully.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\topic_trees_bodytext.dita  -->
	<!--<xsl:message>topic_trees_bodytext.xsl requires manual development!</xsl:message> -->

	<xsl:template match="bodytext">

		<!--  Original Target XPath:  seclaw:level/seclaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem   -->
		<seclaw:level>
			<seclaw:levelinfo>
				<ref:relatedcontent>
					<ref:relatedcontentitem>
						<xsl:apply-templates select="@* | node()"/>
					</ref:relatedcontentitem>
				</ref:relatedcontent>
			</seclaw:levelinfo>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level/bodytext">

		<!--  Original Target XPath:  seclaw:level/seclaw:levelinfo/ref:relatedcontent/ref:relatedcontentitem   -->
		<seclaw:level>
			<seclaw:levelinfo>
				<ref:relatedcontent>
					<ref:relatedcontentitem>
						<xsl:apply-templates select="@* | node()"/>
					</ref:relatedcontentitem>
				</ref:relatedcontent>
			</seclaw:levelinfo>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="levelinfo">

		<!--  Original Target XPath:  ref:relatedcontent   -->
		<ref:relatedcontent>
			<xsl:apply-templates select="@* | node()"/>
		</ref:relatedcontent>

	</xsl:template>

	<xsl:template match="bodytext/@searchtype">

		<!--  Original Target XPath:  ref:relatedcontentitem/@contenttype   -->
		<ref:relatedcontentitem>
			<xsl:attribute name="contenttype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="bodytext/remotelink">

		<!--  Original Target XPath:  ref:relatedcontentitem/ref:related-content-link/ref:lnlink   -->
		<ref:relatedcontentitem>
			<ref:related-content-link>
				<ref:lnlink>
					<xsl:apply-templates select="@* | node()"/>
				</ref:lnlink>
			</ref:related-content-link>
		</ref:relatedcontentitem>

	</xsl:template>

	<xsl:template match="remotelink">

		<!--  Original Target XPath:  ref:related-content-link   -->
		<ref:related-content-link>
			<xsl:apply-templates select="@* | node()"/>
		</ref:related-content-link>

	</xsl:template>

	<xsl:template match="level/bodytext/remotelink">

		<!--  Original Target XPath:  ref:related-content-link   -->
		<ref:related-content-link>
			<xsl:apply-templates select="@* | node()"/>
		</ref:related-content-link>

	</xsl:template>

	<xsl:template match="level">

		<!--  Original Target XPath:  ref:related-content-link   -->
		<ref:related-content-link>
			<xsl:apply-templates select="@* | node()"/>
		</ref:related-content-link>

	</xsl:template>

</xsl:stylesheet>