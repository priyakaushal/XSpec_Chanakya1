<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
	xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:in="http://www.lexis-nexis.com/glp/in"
	xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-introduction">
  <title>Introduction <lnpid>id-AU16-21032</lnpid></title>
  <body>
    <section><title>These Conversion Instructions describe the conversion of Australian LawNow Landing Pages documents using INDEXDOC standard DTD mark-up to the current version of the Navigation Aid And Landing Page Document
        Schema.</title>
    </section>

    <section>
      <title>The Australian content set contains files marked-up according to the
          <sourcexml>INDEXDOC</sourcexml> DTD. For <sourcexml>INDEXDOC</sourcexml> DTD mark-up
        within a landing page document, the following specific xpath conversions apply to the first
        few high level elements.</title>
      <ul>
        <li><sourcexml>/INDEXDOC</sourcexml> becomes <targetxml>/navaid:landingpage</targetxml></li>
        <li><sourcexml>/INDEXDOC/docinfo</sourcexml> becomes
            <targetxml>/navaid:landingpage/doc:metadata/doc:docinfo</targetxml> and its various
          children are converted as described in the <xref href="NavAidLandingPages_Metadata.dita">Metadata</xref> section.</li>
        <li><sourcexml>/INDEXDOC/in:body</sourcexml> becomes
            <targetxml>/navaid:landingpage/navaid:landingpagebody</targetxml></li>
        <li><sourcexml>/INDEXDOC/in:body/heading</sourcexml> becomes
            <targetxml>/navaid:landingpage/navaid:landingpagebody/heading</targetxml>. The
          attributes of <sourcexml>heading</sourcexml> in this xpath are converted as described for
          the <xref href="../../common_newest/Rosetta_heading-LxAdv-heading.dita">common heading element</xref>. All
          subelements (such as <sourcexml>title</sourcexml> and its children) are converted using
          the common element instructions for these elements provided in the <xref href="NavAidLandingPages_General.dita">General Mark-Up</xref> section of these
          conversion instructions. However, if an
            <sourcexml>/INDEXDOC/in:body/heading/title/refpt</sourcexml> element occurs, the
            <sourcexml>refpt</sourcexml> is not only converted to <targetxml>ref:anchor</targetxml>
          as described for the <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">common refpt
            element</xref>, but is also moved to just before
            <targetxml>/navaid:landingpage/navaid:landingpagebody/heading</targetxml> so that its
          XPath is
          <targetxml>/navaid:landingpage/navaid:landingpagebody/ref:anchor</targetxml>.</li>
      </ul>
    </section>

    <section>
      <title>Source XML for start of INDEXDOC</title>
      <codeblock>

&lt;INDEXDOC ...&gt;
  &lt;!-- ... --&gt;
  &lt;in:body&gt;
    &lt;heading&gt;
      &lt;title&gt;LawNow New South Wales Legislation&lt;/title&gt;
    &lt;/heading&gt;


</codeblock>
    </section>
    <section>
      <title>Target XML for start of INDEXDOC</title>
      <codeblock>

&lt;navaid:landingpage ...&gt;
  &lt;navaid:landingpagebody&gt;
    &lt;heading&gt;
      &lt;title&gt;LawNow Legislation New South Wales&lt;/title&gt;
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
      <p>Whenever the terms "whitespace" or "white-space" are used, they refer to consecutive sequences of any number of spaces, tabs, newlines, and all character entities that represent spacing such as <sourcexml>&amp;nbsp;</sourcexml>, <sourcexml>&amp;ensp;</sourcexml>, <sourcexml>&amp;emsp;</sourcexml>.
        </p>
    </section>
  </body>


	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\NavAidLandingPages_Introduction_AU.dita  -->
	<!--<xsl:message>NavAidLandingPages_Introduction_AU.xsl requires manual development!</xsl:message> -->


  <xsl:param name="outputSchemaLoc"
    select="'http://www.lexisnexis.com/xmlschemas/content/legal/navaid/1/ sch_navaid.xsd'"/>
  
	<xsl:template match="INDEXDOC">

		<!--  Original Target XPath:  /navaid:landingpage   -->
		<navaid:landingpage>
		  <xsl:call-template name="generateNSGlobalBindings"/>
		  
		  <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
		  
		  <xsl:call-template name="xml_lang"/>
			<xsl:apply-templates select="in:body"/>
		  <doc:metadata>
		    <xsl:apply-templates select="docinfo"/>
		  </doc:metadata>
		</navaid:landingpage>

	</xsl:template>

	<xsl:template match="INDEXDOC/in:body">

		<!--  Original Target XPath:  /navaid:landingpage/navaid:landingpagebody   -->
			<navaid:landingpagebody>
			  <xsl:apply-templates select="heading"/>
			  <xsl:apply-templates select="p|in:lev1" mode="alt-heading"/>
			  <!-- If except() isn't working also test any fix against these documents:
			  PS2017050805314465258LNIAUINDEX_input_LAWNOW_LEG_HISTORICALVERSIONS_SUBLEG_WA_0151010000.xml-->
			  <!-- starts-with(@remotekey2, 'LAWNOW_LEG_LAUNCH') or  -->
			  <xsl:for-each-group select="node() except (heading, p[text/emph=(tokenize($altHeadingValues, ','))], p[matches(text, ' ') and not(text/remotelink)])" 
			    group-adjacent="if (self::p[text/remotelink[
			    not((starts-with(@remotekey2, 'LAWNOW_LEG_LAUNCH') and contains(., 'LawNow Home Page')) or starts-with(@remotekey2, 'LAWNOW_LEG_COMMENCEMENT_ACTS') or
			    starts-with(@remotekey2, 'LAWNOW_LEG_TITLES_ACTS_') or starts-with(@remotekey2, 'LAWNOW_LEG_CURRENT_ACTS_') or
			    starts-with(@remotekey2, 'LAWNOW_LEG_REPEALED_ACTS_') or starts-with(@remotekey2, 'LAWNOW_LEG_MADEASSENT_ACTS_') or
			    starts-with(@remotekey2, 'LAWNOW_LEG_COMMENCEMENT_ACTS_') or starts-with(@remotekey2, 'LAWNOW_LEG_KEYWORDS_ACTS_') or
			    starts-with(@remotekey2, 'LAWNOW_LEG_HISTORICALVERSIONS_ACTS_') or starts-with(@remotekey2, 'LAWNOW_LEG_TITLES_SUBLEG_') or
			    starts-with(@remotekey2, 'LAWNOW_LEG_CURRENT_SUBLEG_') or starts-with(@remotekey2, 'LAWNOW_LEG_REPEALED_SUBLEG_') or
			    starts-with(@remotekey2, 'LAWNOW_LEG_MADEASSENT_SUBLEG_') or starts-with(@remotekey2, 'LAWNOW_LEG_COMMENCEMENT_SUBLEG_') or
			    starts-with(@remotekey2, 'LAWNOW_LEG_KEYWORDS_SUBLEG_') or starts-with(@remotekey2, 'LAWNOW_LEG_HISTORICALVERSIONS_SUBLEG_'))]
			    ] or
			    (self::p[text[not(remotelink)]]) or
			    (self::p[glp:note]) or
			    (self::p[text/emph[not(remotelink) and (not(following-sibling::remotelink or preceding-sibling::remotelink)) ]]) or
			    (self::p[table]) or
			    (self::table[(not(descendant::remotelink=(tokenize($docMenuItem, ','))) and 
			    not(descendant::remotelink[1]/@remotekey2[starts-with(., 'LAWNOW_LEG_YEARTITLE_BILLS')]) and 
			    not(descendant::remotelink/@remotekey2[starts-with(., 'LAWNOW_LEG_DEFTERM_SUBLEG_')]) and 
			    not(descendant::remotelink/@remotekey2[starts-with(., 'LAWNOW_LEG_DEFTERM_ACTS_')])) and
			    not(tgroup/tbody/row/entry/l) and
			    (not(tgroup/tbody/row[2]) and not(tgroup/tbody/row[matches(entry[not(descendant::lilabel)], '[\t\p{Zs}]')]))]) or
			    (self::table[tgroup/thead]) or
			    (self::table[tgroup/tbody/row/entry/remotelink[starts-with(@href, 'www.capmon.com')]]) or
			    (self::table[tgroup/tbody/row/entry/remotelink[starts-with(., 'All Acts by Title')]])
			    ) then 0 else 1">
			    <xsl:choose>
			      <xsl:when test="current-grouping-key()=0">
			        <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			          <xsl:for-each select="current-group()">
			            <xsl:apply-templates select="."/>
			          </xsl:for-each>
			        </bodytext>
			      </xsl:when>
			      <xsl:otherwise>                   
			          <xsl:for-each select="current-group()">
			            <xsl:apply-templates select="."/>
			          </xsl:for-each>			        
			      </xsl:otherwise>
			    </xsl:choose>
			  </xsl:for-each-group>
			</navaid:landingpagebody>
		

	</xsl:template>
  
  <!-- <xsl:template match="text[child::deflist]" priority="1">
  <xsl:for-each-group select="node()" group-adjacent="if (self::deflist) then 0 else 1">
    <xsl:choose>
      <xsl:when test="current-grouping-key()=0">
        <xsl:for-each select="current-group()">
          <xsl:apply-templates select="."/>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">	                    
          <xsl:for-each select="current-group()">
            <xsl:apply-templates select="."/>
          </xsl:for-each>
        </text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:for-each-group>
  </xsl:template> -->

	<xsl:template match="in:body/heading">

		<!--  Original Target XPath:  /navaid:landingpage/navaid:landingpagebody/heading   -->
		<xsl:apply-templates select="refpt|title/refpt"/>
	  <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node() except (refpt)"/>
		</heading>

	</xsl:template>
  
  <xsl:template match="p[matches(text, 'Â ')]"/>

  
</xsl:stylesheet>