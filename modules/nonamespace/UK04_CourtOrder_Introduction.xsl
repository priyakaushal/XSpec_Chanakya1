<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita case docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-introduction">
  <title>Introduction <lnpid>id-UK04-27630</lnpid></title>
  <body>
    <section>
      <title>These Conversion Instructions describe the conversion of UK Case Practice Directions documents using CASEDOC standard DTD mark-up to the current version of the Court Order Schema.</title>
    </section>
    
    <section>
      <title>Notes</title>
      <p>Source elements and attributes are highlighted like this:
        <sourcexml>sourcexml</sourcexml></p>
      <p>Target elements and attributes are highlighted like this:
        <targetxml>targetxml</targetxml></p>
      <p>Verify content of the following target attributes: <ul>
        <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> and is between
          01-12. If the value is outside this range, do not output
          <targetxml>@month</targetxml>.</li>
        <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> and is between 01-31.
          If the value is outside this range, do not output <targetxml>@day</targetxml>.</li>
        <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> and is 4 digits in
          length. f the value is any other length, do not output
          <targetxml>@year</targetxml>.</li>
      </ul>
        <note>If a source <sourcexml>@day</sourcexml> or <sourcexml>@month</sourcexml> attribute
          value is only one digit, it should be output with a leading 0 to make it two
          digits.</note>
      </p>
      <p>Copy source attributes to target attributes unless otherwise specified.</p>
      <p>Whenever the terms "whitespace" or "white-space" are used, they refer to consecutive sequences of any number of spaces, tabs, newlines, and all character entities that represent spacing such as <sourcexml>&amp;nbsp;</sourcexml>, <sourcexml>&amp;ensp;</sourcexml>, <sourcexml>&amp;emsp;</sourcexml>.
      </p>
    </section>

    <section>
      <title>CASEDOC root element</title>
      <p>The root element <sourcexml>CASEDOC</sourcexml> becomes
          <targetxml>courtorder:courtorder</targetxml>
        <b><u>if and only if </u></b> the document contains a
          <sourcexml>docinfo/docinfo:selector</sourcexml> with content matching
        "CasePracticeDirection" when all white-space is ignored. This CI does not apply to documents
        containing <sourcexml>CASEDOC</sourcexml> mark-up where
          <sourcexml>docinfo/docinfo:selector</sourcexml> does not match "CasePracticeDirection"
        when all white-space is ignored, and the instructions given here should not be used to
        convert such documents.</p>
      <p>Note that in addition to determining that these instructions should be used for a
          <sourcexml>CASEDOC</sourcexml> document, the <sourcexml>docinfo:selector</sourcexml> is
        also mapped to
          <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="selector"]/classify:classitem/classify:classitemidentifier/
          classify:classname</targetxml> as described in the subtopic <xref href="../../common_newest/Rosetta_docinfo.selector-LxAdv-classify.classification_classscheme_selector-scheme.dita"><sourcexml>docinfo:selector</sourcexml> to
            <targetxml>classify:classification[@classscheme="selector"]</targetxml></xref> found in
        the <b>Metadata</b> section of this CI.</p>
      <p>The <sourcexml>CASEDOC</sourcexml> attribute <sourcexml>@type</sourcexml> is dropped.</p>
      <p>The element <sourcexml>/CASEDOC/case:body</sourcexml> is a container element, its start-tag
        and end-tag are dropped and its child elements <sourcexml>case:headnote</sourcexml> and
          <sourcexml>case:content</sourcexml> are converted as described in separate sections
        below.</p>
      </section>
      <section>
        <title>Source XML showing root element CASEDOC and some child elements</title>
        <codeblock>

&lt;CASEDOC ...&gt;
  &lt;docinfo ...&gt;
    &lt;!-- ... --&gt;
    &lt;docinfo:doc-lang lang="en"/&gt;
    &lt;docinfo:doc-country iso-cc="GB"/&gt;
    &lt;docinfo:selector&gt;CasePracticeDirection&lt;/docinfo:selector&gt;
  &lt;/docinfo&gt;
  &lt;case:body&gt;
    &lt;case:headnote&gt;
    &lt;!-- ... --&gt;
    &lt;/case:headnote&gt;
    &lt;case:content&gt;
    &lt;!-- ... --&gt;
    &lt;/case:content&gt;
  &lt;/case:body&gt;
&lt;/CASEDOC&gt;      

</codeblock>
      </section>
      <section>
        <title>Target XML showing root element courtorder:courtorder and some child elements</title>
        <codeblock>

&lt;courtorder:courtorder ... xml:lang="en-GB"&gt;
  &lt;courtorder:head&gt;
  &lt;!-- ... --&gt;
  &lt;/courtorder:head&gt;  
  &lt;courtorder:body&gt;
  &lt;!-- ... --&gt;
  &lt;/courtorder:body&gt;
  &lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="GB"&gt;
    &lt;!-- ... --&gt;
    &lt;classify:classification classscheme="selector"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;CasePracticeDirection&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
    &lt;!-- ... --&gt;
    &lt;/doc:docinfo&gt;
  &lt;/doc:metadata&gt;
&lt;/courtorder:courtorder&gt;

      </codeblock>
      </section>
      
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\Introduction.dita  -->
	<!--<xsl:message>UK04_CourtOrder_Introduction.xsl requires manual development!</xsl:message>--> 

		<xsl:template match="CASEDOC">

			<!--<xsl:if test="normalize-space(docinfo/docinfo:selector)='CasePracticeDirection'">-->
			<courtorder:courtorder>
			  <xsl:for-each select="$lexisAdvanceNamespaces/*">
			    <xsl:sort/>
			    <xsl:namespace name="{substring-after(substring-before(., '='), ':')}" select="substring-after(translate(., '&#034;', ''), '=')"/>
			  </xsl:for-each>
				<xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
				<xsl:call-template name="xml_lang"/>
				<xsl:apply-templates select="@*"/>
				
				<xsl:apply-templates select="case:body/case:headnote"/>
				
			  <xsl:apply-templates select="case:body/case:content"/>
				<doc:metadata>
					<xsl:apply-templates select="docinfo"/>
				</doc:metadata>
			</courtorder:courtorder>
			<!--</xsl:if>-->
	</xsl:template>

  <xsl:template match="CASEDOC/@type"/>
	
</xsl:stylesheet>