<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
    <title>leg:heading <lnpid>id-CA08-14214</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and <sourcexml>@toc-caption</sourcexml> <targetxml>@alternatetoccaption</targetxml> and <sourcexml>@align</sourcexml> becomes <targetxml>@align</targetxml>.</p>
            <note>If <sourcexml>@align</sourcexml> attribute value is <b>"center"</b> (i.e.
                align="center") then remove the <sourcexml>@align</sourcexml>attribute because this
                attribute default value is <targetxml>"left"</targetxml>. This rule is applicable for four
                CAN content stream: CA05- Acts &amp; Bills, CA06-Regs, CA07-Court Rules and
                CA08-Constitutions. </note>
            <note>The attributes <targetxml>@includeintoc</targetxml> and <targetxml>@alternatetoccaption</targetxml> will be part of element <targetxml>primlaw:level</targetxml>.</note>      
        </section>
        <example>
            <title>Mapping of <sourcexml>leg:heading</sourcexml></title>
            <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading align="center"&gt;
            &lt;title inline="true"&gt;SECTION&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum searchtype="SECT-NUM"&gt;II.&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;
  &lt;/leg:level-vrnt&gt;
      &lt;!--...--&gt;
&lt;/leg:level&gt;  

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;heading&gt;
        &lt;title inline="true"&gt;SECTION&lt;/title&gt;&lt;desig&gt;II.&lt;/desig&gt;
     &lt;/heading&gt;
     &lt;!--...--&gt;
&lt;/primlaw:level&gt;
    
      </codeblock>
        </example> 
        
        <note>If input documents having a <sourcexml>docinfo:subtype</sourcexml> element with values
            <sourcexml>"cdc" or "dcc"</sourcexml> then attribute
            <sourcexml>align="center"</sourcexml> should not suppressed in target mapping
            because these documents are not legsislative documents but have been squeezed into the
            legislative category and their headings should be centered i.e.
            <targetxml>heading[@align="center"]</targetxml>.</note>
        <note>Conversion need to move <b>@align</b> attribute from
            <sourcexml>heading/title[@align='center']</sourcexml> to
            <targetxml>heading[@align='center']</targetxml> on the basis of above
            scenario.</note>
        
        <example>
            <title>Mapping of <sourcexml>leg:heading</sourcexml> with
                <sourcexml>align="center"</sourcexml></title>
            <codeblock>

&lt;docinfo:subtype&gt;cdc&lt;/docinfo:subtype&gt;

...

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading&gt;
            &lt;title align="center"&gt;* Meech Lake Accord *&lt;/title&gt;
            ...
        &lt;/leg:heading&gt;
  &lt;/leg:level-vrnt&gt;
      &lt;!--...--&gt;
&lt;/leg:level&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;heading align="center"&gt;
        &lt;title&gt;* Meech Lake Accord *&lt;/title&gt;
        ...
     &lt;/heading&gt;
     &lt;!--...--&gt;
&lt;/primlaw:level&gt;

...

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
&lt;meta&gt;
&lt;metaitem name="docinfo:subtype" value="cdc"/&gt;
&lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
    
      </codeblock>
        </example>
        <example>
            <title>Mapping of <sourcexml>leg:heading</sourcexml> with
                <sourcexml>align="center"</sourcexml></title>
            <codeblock>

&lt;docinfo:subtype&gt;cdc&lt;/docinfo:subtype&gt;

...

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading align="center"&gt;
            &lt;title inline="true"&gt;SECTION&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum searchtype="SECT-NUM"&gt;II.&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/leg:heading&gt;
  &lt;/leg:level-vrnt&gt;
      &lt;!--...--&gt;
&lt;/leg:level&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;heading align="center"&gt;
        &lt;title inline="true"&gt;SECTION&lt;/title&gt;&lt;desig&gt;II.&lt;/desig&gt;
     &lt;/heading&gt;
     &lt;!--...--&gt;
&lt;/primlaw:level&gt;

...

&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
&lt;meta&gt;
&lt;metaitem name="docinfo:subtype" value="cdc"/&gt;
&lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;
    
      </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-06-17: <ph id="change_20140617_ss">Added note and example for conversion need to move
                <b>@align</b> attribute from
                <sourcexml>heading/title[@align='center']</sourcexml> to
                <targetxml>heading[@align='center']</targetxml> in target mapping when input
                documents having a <sourcexml>docinfo:subtype</sourcexml> element with values
                <sourcexml>"cdc" or "dcc"</sourcexml></ph></p>
            <p>2013-07-30: <ph id="change_20130730_ss">Instruction and example updated for retaining the attribute <targetxml>@align="center"</targetxml> in target mapping when input documents having a <sourcexml>docinfo:subtype</sourcexml> element with values <sourcexml>"cdc" or "dcc"</sourcexml></ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA08-Constitutions\leg.heading.dita  -->
<!--	<xsl:message>CA08-Constitutions_leg.heading.xsl requires manual development!</xsl:message> 
-->
    <xsl:template match="leg:heading" priority="2">
        
        <!--  Original Target XPath:  heading   -->
        <heading>
            <xsl:apply-templates select="node()"/>
        </heading>
        
    </xsl:template>
    
    <xsl:template match="title" priority="2">
        <title>
            <xsl:apply-templates select="@* | node()"/>
        </title>
    </xsl:template>
    
    <xsl:template match="desig" priority="2">
        <desig>
            <xsl:value-of select="child::designum"/>
        </desig>
    </xsl:template>
    
    <xsl:template match="title/@align" priority="2"> </xsl:template>
    
    <xsl:template match="title/emph">
        <emph typestyle="it">
            <xsl:apply-templates select="@* | node()"/>
        </emph>
    </xsl:template>
    
    <xsl:template match="heading/@align" priority="2"/>
    
    <xsl:template match="leg:heading/@subdoc" priority="2"> </xsl:template>
    
    <xsl:template match="leg:heading/@toc-caption" priority="2"> </xsl:template>

</xsl:stylesheet>