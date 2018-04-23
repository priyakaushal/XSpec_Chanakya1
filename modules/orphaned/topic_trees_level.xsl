<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="psl_landingpgs-topic_trees_level">
  <title>Topic Tree <sourcexml>level</sourcexml> <lnpid>id-UK13-30027</lnpid></title>
  <body>
    <p>The element <sourcexml>level</sourcexml> becomes <targetxml>seclaw:level</targetxml>. The <sourcexml>level/@leveltype</sourcexml> attribute is converted as follows. <ul>
      <li>If <sourcexml>level/@leveltype</sourcexml> is "practicearea", "topic", or "subtopic", it becomes <targetxml>seclaw:level/@leveltype</targetxml>.</li>
      <li>If <sourcexml>level/@leveltype</sourcexml> is "subtopic-level" followed by a single digit (for example, "subtopic-level2" or "subtopic-level3"), it becomes <targetxml>seclaw:level/@leveltype="subtopic"</targetxml>. That is, the dash and all characters following it are removed.</li>
      <li>If <sourcexml>level/@leveltype</sourcexml> is one of the types listed below, it becomes <targetxml>seclaw:level/@xml:id</targetxml>, and <targetxml>seclaw:level/@leveltype</targetxml> is set to "landingpage": <ul>
        <li>'AtAGlance'</li>
        <li>'Cases'</li>
        <li>'Checklists'</li>
        <li>'Commentary'</li>
        <li>'FAQ'</li>
        <li>'Forms'.</li>
        <li>'In-HouseToolkit'</li>
        <li>'Journals'</li>
        <li>'Legislation'</li>
        <li>'News'</li>
        <li>'Overview'</li>
        <li>'PracticeNotes'</li>
        <li>'Precedents'</li>
        <li>'StartingPoints'</li>
      </ul></li>
      <li>If <sourcexml>level/@leveltype</sourcexml> is any value other than one described in the
          previous points, this is a data error and the LBU <b>must</b> be notified. As a recovery
          tactic, so that the document may continue to be processed, the value of
            <targetxml>seclaw:level/@leveltype="unclassified"</targetxml> may be used in this
          scenario.</li>
    </ul></p>
    <p>The child <sourcexml>level/heading</sourcexml> becomes <targetxml>seclaw:level/heading</targetxml> and its children are converted using the common element instructions provided in the section <xref href="general.dita"/>. 
    </p>
    <p>The child <sourcexml>level/levelinfo</sourcexml> becomes
        <targetxml>seclaw:level/seclaw:levelinfo</targetxml>. The
        <targetxml>seclaw:levelinfo</targetxml> element must occur <b><u>after</u></b> any
        <targetxml>heading</targetxml> target element. <ul>
        <li>Its child <sourcexml>classification</sourcexml> is converted as described in the topic
            <xref href="topic_trees_classification.dita"/>.</li>
        <li>Its child <sourcexml>services</sourcexml> is converted as described in the topic <xref href="topic_trees_services.dita"/>.</li>
      </ul>
    </p>
    <p>The child <sourcexml>level/level</sourcexml> (a <sourcexml>level</sourcexml> within a
        <sourcexml>level</sourcexml>) becomes
        <targetxml>seclaw:level/seclaw:bodytext/seclaw:level</targetxml> and is converted according
      to the instructions given in this topic. Please note:<ul>
      <li>A <targetxml>seclaw:level/seclaw:bodytext</targetxml> element is always created, and is a container for
      any child <targetxml>seclaw:level</targetxml> elements converted from corresponding
       child <sourcexml>level</sourcexml> source elements.</li>
        <li>The <targetxml>seclaw:bodytext</targetxml> element must occur <b><u>after</u></b> any
            <targetxml>heading</targetxml> and <targetxml>seclaw:levelinfo</targetxml> target
          elements.</li>
        <li>The <targetxml>seclaw:bodytext</targetxml> element is required according to the New
          Lexis seclaw schema, so it must always be created even if it is empty. It will be
          sometimes be empty if there are no child <sourcexml>level</sourcexml> source elements and
          thus no child <targetxml>seclaw:level</targetxml> target elements.</li>
      </ul></p>
    <section>
      <title>Source XML showing a <sourcexml>level</sourcexml> with child
          <sourcexml>level</sourcexml> elements</title>
      <codeblock>

&lt;level leveltype="topic"&gt;
  &lt;levelinfo&gt;
    &lt;classification classscheme="ln.legal"&gt;
      &lt;!-- ... --&gt;
    &lt;/classification&gt;
  &lt;/levelinfo&gt;
  &lt;heading&gt;
    &lt;title&gt;Starting employment&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext searchtype="Commentary"&gt;
    &lt;!-- ... --&gt;
  &lt;/bodytext&gt;
  &lt;bodytext searchtype="Legislation"&gt;
    &lt;!-- ... --&gt;
  &lt;/bodytext&gt;
  &lt;!-- ... --&gt;
  &lt;level leveltype="subtopic"&gt;
    &lt;!-- ... --&gt;
  &lt;/level&gt;
  &lt;level leveltype="subtopic"&gt;
    &lt;!-- ... --&gt;
  &lt;/level&gt;
&lt;/level&gt;

      </codeblock>
    </section>
      <section>
        <title>Target XML </title>
        <codeblock>

&lt;seclaw:level leveltype="topic"&gt;
  &lt;heading&gt;
    &lt;title&gt;Starting employment&lt;/title&gt;
  &lt;/heading&gt;
  &lt;seclaw:levelinfo&gt;
    &lt;classify:classification classscheme="ln.legal"&gt;
      &lt;!-- ... --&gt;
    &lt;/classify:classification&gt;
    &lt;ref:relatedcontent&gt;
      &lt;ref:relatedcontentitem contenttype="Commentary" relationship="landingpage"&gt;
        &lt;!-- ... --&gt;
      &lt;/ref:relatedcontentitem&gt;
    &lt;/ref:relatedcontent&gt;
    &lt;ref:relatedcontent&gt;
      &lt;ref:relatedcontentitem contenttype="Legislation" relationship="landingpage"&gt;
        &lt;!-- ... --&gt;
      &lt;/ref:relatedcontentitem&gt;
    &lt;/ref:relatedcontent&gt;
  &lt;/seclaw:levelinfo&gt;
  &lt;seclaw:bodytext&gt;
    &lt;seclaw:level leveltype="subtopic"&gt;
      &lt;!-- ... --&gt;
    &lt;/seclaw:level&gt;
    &lt;seclaw:level leveltype="subtopic"&gt;
      &lt;!-- ... --&gt;
    &lt;/seclaw:level&gt;
  &lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

        </codeblock>
      </section>
    
    <section>
      <title>Source XML showing a <sourcexml>level</sourcexml> with no child
          <sourcexml>level</sourcexml> element</title>
      <codeblock>

&lt;level leveltype="subtopic-level2"&gt;
  &lt;levelinfo&gt;
    &lt;classification classscheme="ln.legal"&gt;
      &lt;!-- ... --&gt;
    &lt;/classification&gt;
  &lt;/levelinfo&gt;
  &lt;heading&gt;
    &lt;title&gt;Employee status&lt;/title&gt;
  &lt;/heading&gt;
  &lt;bodytext searchtype="Precedents"&gt;
    &lt;!-- ... --&gt;
  &lt;/bodytext&gt;
  &lt;bodytext searchtype="PracticeNotes"&gt;
    &lt;!-- ... --&gt;
  &lt;/bodytext&gt;
&lt;/level&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <p>Note an empty <targetxml>seclaw:bodytext</targetxml> is still output.</p>
      <codeblock>

&lt;seclaw:level leveltype="topic"&gt;
  &lt;heading&gt;
    &lt;title&gt;Starting employment&lt;/title&gt;
  &lt;/heading&gt;
  &lt;seclaw:levelinfo&gt;
    &lt;classify:classification classscheme="ln.legal"&gt;
      &lt;!-- ... --&gt;
    &lt;/classify:classification&gt;
    &lt;ref:relatedcontent&gt;
      &lt;ref:relatedcontentitem contenttype="Precedents" relationship="landingpage"&gt;
        &lt;!-- ... --&gt;
      &lt;/ref:relatedcontentitem&gt;
    &lt;/ref:relatedcontent&gt;
    &lt;ref:relatedcontent&gt;
      &lt;ref:relatedcontentitem contenttype="PracticeNotes" relationship="landingpage"&gt;
        &lt;!-- ... --&gt;
      &lt;/ref:relatedcontentitem&gt;
    &lt;/ref:relatedcontent&gt;
  &lt;/seclaw:levelinfo&gt;
  &lt;seclaw:bodytext&gt;&lt;/seclaw:bodytext&gt;
&lt;/seclaw:level&gt;

        </codeblock>
    </section>
   
    
    <section>
      <title>Changes</title>
      <p>2015-11-02: <ph id="change_20151102_JCG">Added details to the instructions regarding the conversion of nested <sourcexml>level</sourcexml> source elements, as well as those regarding <targetxml>seclaw:bodytext</targetxml> target elements, to reflect latest source mark-up structure. Also updated the examples.</ph></p>
      <p>2015-04-14: <ph id="change_20150414_JCG">Updated the instructions regarding how <sourcexml>level/@leveltype</sourcexml> is mapped to reflect latest rules and values.</ph></p>
      <p>2015-03-07: <ph id="change_20150307_JCG">Added instructions to handle <sourcexml>level/@leveltype</sourcexml> attribute values of "subtopic-level2" and "subtopic-level3".</ph></p>
      <p>2013-06-18: <ph id="change_20130618_JCG">Added an instruction to handle <sourcexml>level/@leveltype="super-topic"</sourcexml> and <sourcexml>level/@leveltype="supertopic"</sourcexml>.</ph></p>
      <p>2013-06-11: <ph id="change_20130611_JCG">Added an instruction to convert <sourcexml>level/@leveltype="sub-topic"</sourcexml> to <targetxml>seclaw:level/@leveltype="subtopic</targetxml> (remove the dash).</ph></p>
    </section>
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK13_PSL_LandingPages\topic_trees_level.dita  -->
	<!--<xsl:message>topic_trees_level.xsl requires manual development!</xsl:message> -->

	<xsl:template match="level">

		<!--  Original Target XPath:  seclaw:level   -->
		<seclaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level/@leveltype">

		<!--  Original Target XPath:  seclaw:level/@leveltype   -->
		<seclaw:level>
			<xsl:attribute name="leveltype">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level/heading">

		<!--  Original Target XPath:  seclaw:level/heading   -->
		<seclaw:level>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level/levelinfo">

		<!--  Original Target XPath:  seclaw:level/seclaw:levelinfo   -->
		<seclaw:level>
			<seclaw:levelinfo>
				<xsl:apply-templates select="@* | node()"/>
			</seclaw:levelinfo>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="classification">

		<!--  Original Target XPath:  seclaw:level/seclaw:bodytext/seclaw:level   -->
		<seclaw:level>
			<seclaw:bodytext>
				<seclaw:level>
					<xsl:apply-templates select="@* | node()"/>
				</seclaw:level>
			</seclaw:bodytext>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="services">

		<!--  Original Target XPath:  seclaw:level/seclaw:bodytext/seclaw:level   -->
		<seclaw:level>
			<seclaw:bodytext>
				<seclaw:level>
					<xsl:apply-templates select="@* | node()"/>
				</seclaw:level>
			</seclaw:bodytext>
		</seclaw:level>

	</xsl:template>

	<xsl:template match="level/level">

		<!--  Original Target XPath:  seclaw:level/seclaw:bodytext/seclaw:level   -->
		<seclaw:level>
			<seclaw:bodytext>
				<seclaw:level>
					<xsl:apply-templates select="@* | node()"/>
				</seclaw:level>
			</seclaw:bodytext>
		</seclaw:level>

	</xsl:template>

	<!--<xsl:template match="level/@leveltype=&#34;super-topic&#34;">

		<!-\-  Original Target XPath:  seclaw:level/@leveltype="subtopic   -\->
		<seclaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>subtopic</xsl:text>
			</xsl:attribute>
		</seclaw:level>

	</xsl:template>-->

	<!--<xsl:template match="level/@leveltype=&#34;supertopic&#34;">

		<!-\-  Original Target XPath:  seclaw:level/@leveltype="subtopic   -\->
		<seclaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>subtopic</xsl:text>
			</xsl:attribute>
		</seclaw:level>

	</xsl:template>-->

	<!--<xsl:template match="level/@leveltype=&#34;sub-topic&#34;">

		<!-\-  Original Target XPath:  seclaw:level/@leveltype="subtopic   -\->
		<seclaw:level>
			<xsl:attribute name="leveltype">
				<xsl:text>subtopic</xsl:text>
			</xsl:attribute>
		</seclaw:level>

	</xsl:template>-->

</xsl:stylesheet>