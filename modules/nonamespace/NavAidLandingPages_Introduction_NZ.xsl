<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:comm="http://www.lexis-nexis.com/glp/comm"
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" 
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-introduction">
  <title>Introduction <lnpid>id-NZ14-25210</lnpid></title>
  <body>
    <section><title>These Conversion Instructions describe the conversion of New
        Zealand LawNow Landing Pages documents using COMMENTARYDOC
        standard DTD mark-up to the current version of the Navigation Aid And Landing Page Document
        Schema.</title>
    </section>

    <section>
      <title>The New Zealand content set contains files marked-up according to the
          <sourcexml>COMMENTARYDOC</sourcexml> DTD. For <sourcexml>COMMMENTARYDOC</sourcexml> DTD
        mark-up within a landing page document, the following specific xpath conversions apply to
        the first few high level elements.</title>
      <ul>
        <li><sourcexml>/COMMMENTARYDOC</sourcexml> becomes
            <targetxml>/navaid:landingpage</targetxml></li>
        <li><sourcexml>/COMMMENTARYDOC/docinfo</sourcexml> becomes
            <targetxml>/navaid:landingpage/doc:metadata/doc:docinfo</targetxml> and its various
          children are converted as described in the <xref href="../AU16_navaid/NavAidLandingPages_Metadata.dita">Metadata</xref> section.</li>
        <li><sourcexml>/COMMMENTARYDOC/comm:body</sourcexml> becomes
            <targetxml>/navaid:landingpage/navaid:landingpagebody</targetxml></li>
        <li>The <sourcexml>/COMMMENTARYDOC/comm:body/level</sourcexml> element's start-tag and
          end-tag (but not its content) are <b><u>always</u></b> dropped. Only this
            <b><u>top</u></b>
          <sourcexml>level</sourcexml> has its start-tag and end-tag dropped. There is also a
          scenerio where there is a nested <sourcexml>level</sourcexml>, and this scenario is
          converted by applying a special conversion. See the <xref href="navaid-separate-levels_NZ.dita">Convert Multiple
              <sourcexml>level</sourcexml> Elements To Multiple <targetxml>navaid:list</targetxml>
            Elements</xref> topic in the <b>Body</b> section.</li>
        <li><sourcexml>/COMMENTARYDOC/comm:body/level/heading</sourcexml> becomes
            <targetxml>/navaid:landingpage/navaid:landingpagebody/heading</targetxml>. The
          attributes of <sourcexml>heading</sourcexml> in this xpath are converted as described for
          the <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">common heading element</xref>. All
          subelements (such as <sourcexml>title</sourcexml> and its children) are converted using
          the common element instructions for these elements provided in the <xref href="../AU16_navaid/NavAidLandingPages_General.dita">General Mark-Up</xref> section of these
          conversion instructions. However, if a
            <sourcexml>/COMMMENTARYDOC/comm:body/heading/title/refpt</sourcexml> element occurs, the
            <sourcexml>refpt</sourcexml> is not only converted to <targetxml>ref:anchor</targetxml>
          as described for the <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">common refpt
            element</xref>, but is also moved to just before
            <targetxml>/navaid:landingpage/navaid:landingpagebody/heading</targetxml> so that its
          XPath is
          <targetxml>/navaid:landingpage/navaid:landingpagebody/ref:anchor</targetxml>.</li>
      </ul>
    </section>
    <section>
      <title>Source XML for start of COMMENTARYDOC</title>
      <codeblock>

&lt;COMMENTARYDOC ...&gt;
  &lt;!-- ... --&gt;
  &lt;comm:body&gt;
    &lt;level id="DEEMED-REGS-ARCHIVE-ALPHA" leveltype="comm.chap"&gt;
      &lt;heading searchtype="COMMENTARY"&gt;
        &lt;title&gt;
          &lt;refpt type="ext" id="DEEMED-REGS-ARCHIVE-ALPHA"/&gt;
          Deemed Regulations &amp;mdash; Alphabetical
        &lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext searchtype="COMMENTARY"&gt;

</codeblock>
    </section>
    <section>
      <title>Target XML for start of COMMENTARYDOC</title>
      <codeblock>

&lt;navaid:landingpage ...&gt;
&lt;!-- ... --&gt;
  &lt;navaid:landingpagebody&gt;
    &lt;ref:anchor id="DEEMED-REGS-ARCHIVE-ALPHA" anchortype="global"/&gt;
    &lt;heading&gt;
      &lt;title&gt;Deemed Regulations -- Alphabetical&lt;/title&gt;
    &lt;/heading&gt;

</codeblock>
    </section>

    <section>
      <title>Notes</title>
      <p>Source elements and attributes are highlighted like this:
        <sourcexml>sourcexml</sourcexml></p>
      <p>Target elements and attributes are highlighted like this:
        <targetxml>targetxml</targetxml></p>
      <p>Verify content of following target attributes: <ul>
          <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> and is between 01-12. If the value is outside this range, do not output <targetxml>@month</targetxml>.</li>

          <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> and is between 01-31. If the value is outside this range, do not output <targetxml>@day</targetxml>.</li>

          <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> and is 4 digits in length. f the value is any other length, do not output <targetxml>@year</targetxml>.</li>
        </ul>

        <note>If a source <sourcexml>@day</sourcexml> or <sourcexml>@month</sourcexml> value is only one digit, it should be output with a leading 0 to make it two digits.</note>
      </p>
    </section>
  </body>


	</dita:topic>

  <xsl:param name="outputSchemaLoc"
    select="'http://www.lexisnexis.com/xmlschemas/content/legal/navaid/1/ sch_navaid.xsd'"/>

	<xsl:template match="COMMENTARYDOC">

		<!--  Original Target XPath:  /navaid:landingpage   -->
		<navaid:landingpage>
		  <xsl:call-template name="generateNSGlobalBindings"/>
		  <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
		  <xsl:call-template name="xml_lang"/>
		  <xsl:apply-templates select="@* except(@type)"/>
			<xsl:apply-templates select="node() except (docinfo)"/>
			<doc:metadata>
					<xsl:apply-templates select="docinfo"/>				
			</doc:metadata>
		</navaid:landingpage>

	</xsl:template>
  
  <!-- MDS 2017-09-18 - Not valid to 2.9 Schema which is currently used in PROD -->
 <!-- <xsl:template match="COMMENTARYDOC/@type">
    <xsl:attribute name="type">
      <xsl:choose>
        <xsl:when test=". = 'navigationaid'">navigationalaid</xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="."/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:attribute> 
  </xsl:template>-->
	
	<xsl:template match="comm:body">
		<navaid:landingpagebody>
			<xsl:apply-templates select="level[1]/heading/title/refpt"/>
			<xsl:apply-templates select="level[1]/heading"/>
			<xsl:apply-templates select="node()"/>
		</navaid:landingpagebody>
	</xsl:template>

	<xsl:template match="comm:body/level[1]">
		<xsl:apply-templates select="node() except (heading)"/>
	</xsl:template>

	<!-- JL: removed because generic handling handles this now -->
<!--	<xsl:template match="docinfo:doc-id"/>-->
	
	<xsl:template match="bodytext[parent::level]|p[parent::bodytext/parent::level]">
		<xsl:for-each-group select="*" group-adjacent="if (self::p[not(table)]|self::pgrp[p[not(table[tgroup[@cols='26']])]]) then 0 else 1">
			<xsl:choose>
				<xsl:when test="current-grouping-key()=0">
				  <xsl:choose>
				    <xsl:when test="current-group()[self::pgrp]">
				      
				        <bodytext>
				        <xsl:for-each select="current-group()">
				          <xsl:apply-templates select="."/>
				        </xsl:for-each>
				        </bodytext>
				      
				    </xsl:when>
				    <xsl:otherwise>
				      <navaid:list style='default'>
				        <xsl:for-each select="current-group()">
				          <xsl:value-of select="preceding-sibling::heading"/>
				          <xsl:apply-templates select="node()"/>
				        </xsl:for-each>
				      </navaid:list>
				    </xsl:otherwise>
				  </xsl:choose>
				</xsl:when>
				<xsl:otherwise>
						<xsl:for-each select="current-group()">
							<xsl:apply-templates select="."/>
						</xsl:for-each>					
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each-group>
		
	</xsl:template>
  
  <xsl:template match="p[parent::pgrp and table[tgroup[@cols='26']]][$streamID='NZ14']">
      <xsl:apply-templates select="node() except(heading)"/>    
  </xsl:template>
  
  <xsl:template match="pgrp[$streamID='NZ14']">
    <xsl:apply-templates select="node() except (heading)"/>
  </xsl:template>

</xsl:stylesheet>