<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
	xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1"
	xmlns:op="http://www.lexis-nexis.com/glp/op"
	version="2.0" exclude-result-prefixes="dita op">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK08OpDoc_op.header">
		<title>op.header <lnpid>id-UK08OR-28817</lnpid></title>
		<body>
			<section>
				<p><sourcexml>op:header</sourcexml> becomes
						<targetxml>regulation:regulation/doc:metadata</targetxml> with child
					element <targetxml>pubinfo:pubinfo</targetxml> and child element will
					be converted as: <ul>
						<li><sourcexml>op:title</sourcexml> becomes
								<targetxml>pubinfo:publicationname</targetxml></li>
						<li><sourcexml>alttitle</sourcexml> becomes
								<targetxml>pubinfo:publicationsubtitle</targetxml></li>
					</ul>
				</p>


				<pre>

&lt;op:body&gt;
  &lt;op:header&gt;
    &lt;op:title&gt;FSA (UKLA) Listing Rules&lt;/op:title&gt;
  &lt;/op:header&gt;
  ...
&lt;/op:body&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
  &lt;pubinfo:pubinfo&gt;
    &lt;pubinfo:publicationname&gt;
      FSA (UKLA) Listing Rules
    &lt;/pubinfo:publicationname&gt;
  &lt;/pubinfo:pubinfo&gt;
  ...
&lt;/doc:metadata&gt;

      </pre>
				<pre>

&lt;op:body&gt;
 &lt;op:header&gt;
  &lt;op:title&gt;Energy Market Participants&lt;/op:title&gt;
  &lt;alttitle&gt;Energy Market Participants Guide&lt;/alttitle&gt;
 &lt;/op:header&gt;
  ...
&lt;/op:body&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
  &lt;pubinfo:pubinfo&gt;
    &lt;pubinfo:publicationname&gt;Energy Market Participants&lt;/pubinfo:publicationname&gt;
    &lt;pubinfo:publicationsubtitle&gt;Energy Market Participants Guide&lt;/pubinfo:publicationsubtitle&gt;
  &lt;/pubinfo:pubinfo&gt;
  ...
&lt;/doc:metadata&gt;

      </pre>
			</section>
			<section>
				<title>Changes</title>
				<p>2016-01-07 <ph id="change_20160107_AB">Instruction added for handling
							<sourcexml>alttitle</sourcexml>. (RFA #2677).</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK08_Quasi\UK08OR_QUASI_OPDOC_To_Regulation\UK08_OPDOC_Regulation-op.header.dita  -->

	<xsl:template match="op:header" mode="metadata">
		<!--  Original Target XPath:  regulation:regulation/doc:metadata   -->
		<!--<doc:metadata
			xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/">-->
			<pubinfo:pubinfo>				
				<xsl:apply-templates select="@* | node()" mode="metadata"/>
			</pubinfo:pubinfo>
		<!--</doc:metadata>-->
	</xsl:template>

	<xsl:template match="op:title" mode="metadata">
		<!--  Original Target XPath:  pubinfo:publicationname   -->
		<pubinfo:publicationname>
			<xsl:apply-templates select="@* | node()"/>
		</pubinfo:publicationname>
	</xsl:template>

	<xsl:template match="alttitle" mode="metadata">
		<!--  Original Target XPath:  pubinfo:publicationsubtitle   -->
		<pubinfo:publicationsubtitle>
			<xsl:apply-templates select="@* | node()"/>
		</pubinfo:publicationsubtitle>
	</xsl:template>
	
	<!-- stub out default (non-modal) handling -->
	<xsl:template match="op:header | op:title"/>

</xsl:stylesheet>
