<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.heading">
  <title>leg:heading <lnpid>id-ST04-26821</lnpid></title>
  <body>
    <section>
      
        <p><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attributes <sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml> which has tokenized values and
            populated as:
            <ul>
                <li><sourcexml>heading[@inline="true"]</sourcexml></li>
                <li><sourcexml>heading[@inline="false"]</sourcexml></li>
            </ul>
        </p>
      <note>Attribute <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and <sourcexml>@toc-caption</sourcexml> becomes  <targetxml>@alternatetoccaption</targetxml>. The attributes <targetxml>@includeintoc</targetxml> and <targetxml>@alternatetoccaption</targetxml> will be part of element <targetxml>primlaw:level</targetxml> during NL conversion.</note>
        
        <pre>
              <b><i>Source example based on NZ content - Handling of 'leg:heading' with '@inline' attribute</i></b>

&lt;leg:level id="1987R200S1"&gt;
	&lt;leg:level-vrnt leveltype="reg" searchtype="LEGISLATION REG" subdoc="true" toc-caption="reg 1 Title and commencement"&gt;
		&lt;leg:heading inline="true"&gt;
			&lt;title searchtype="REG-TITLE"&gt;&lt;refpt id="1987R200S1" type="ext"/&gt;Title and commencement&lt;/title&gt;
			&lt;desig searchtype="REG-NUM"&gt;
				&lt;designum&gt;1&lt;/designum&gt;
			&lt;/desig&gt;
		&lt;/leg:heading&gt;
		...
&lt;/leg:level&gt;



</pre>
        <pre>

              <b><i>Target Example</i></b>


&lt;primlaw:level leveltype="regulation" includeintoc="true" alternatetoccaption="reg 1 Title and commencement"&gt;
	&lt;ref:anchor id="1987R200S1" anchortype="global"/&gt;
	&lt;heading inline="true"&gt;
		&lt;desig&gt;(1)&lt;/desig&gt;
		&lt;title&gt;Title and commencement&lt;/title&gt;
	&lt;/heading&gt;
	....
&lt;/primlaw:level&gt;

</pre>
        <note>Duplicate anchors should be suppressed in mapping rosetta to NL and
            note this means exact duplicates. Repeating anchors are ok and should
            not be suppressed. (non duplicate multiple anchors). Refer common <xref href="../../common_newest/Rosetta_refpt-LxAdv-ref.anchor.dita">common_rosetta_refpt.dita</xref>
            file for handling of "<sourcexml>refpt</sourcexml>" element.</note>
        <pre>
            <b><i>Source example based on UK content</i></b>

&lt;leg:level&gt;
    &lt;leg:level-vrnt&gt;
        &lt;leg:heading align="center"&gt;
            &lt;title&gt;
                &lt;emph typestyle="bf"&gt;EXPLANATORY NOTE&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/leg:heading&gt;
        ........
    &lt;/leg:level-vrnt&gt;
    .........
&lt;/leg:level&gt;

        </pre>
        <pre>
              <b><i>Target Example</i></b>
              

&lt;primlaw:level leveltype="unclassified"&gt;
        &lt;heading align="center"&gt;
            &lt;title&gt;EXPLANATORY NOTE&lt;/title&gt;
        &lt;/heading&gt;
    .........
&lt;/primlaw:level&gt;
            </pre>
      
        <note>If <sourcexml>@align</sourcexml> attribute value is <b>"center"</b> (i.e.
                align="center") then remove the <sourcexml>@align</sourcexml>attribute because this
                attribute default value is <targetxml>"left"</targetxml>. This rule is applicable
                for CANADA content stream. Please refer the below input and target examples:</note>
        <pre>
               <b><i>Source example based on CA content</i></b>

&lt;leg:level&gt;
   &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt; 
     &lt;leg:heading subdoc="true" toc-caption="FORM B" align="center"&gt;
        &lt;title&gt;FORM B&lt;/title&gt;
    &lt;/leg:heading&gt;
  &lt;/leg:level-vrnt&gt;
      &lt;!--...--&gt;
&lt;/leg:level&gt;  
                     
              <b><i>Target Example</i></b>
                     

&lt;primlaw:level leveltype="unclassified" includeintoc="true" alternatetoccaption="FORM B"&gt;
    &lt;heading&gt;
        &lt;title&gt;FORM B&lt;/title&gt;
     &lt;/heading&gt;
     &lt;!--...--&gt;
&lt;/primlaw:level&gt;
                   
        </pre>
        <p>If the input documents are having scenarios <sourcexml>leg:bodytext/leg:heading/desig</sourcexml> and <sourcexml>leg:bodytext/leg:heading/title</sourcexml> then <sourcexml>leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml> and create a wrapper <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> with child <sourcexml>desig</sourcexml> becomes <targetxml>desig</targetxml> and <sourcexml>title</sourcexml> becomes <targetxml>title</targetxml></p>
        
        <pre>
               <b><i>Source example based on UK content</i></b>

&lt;leg:bodytext&gt;
    &lt;leg:heading align="left" searchtype="LEGISLATION"&gt;
        &lt;desig inline="true" searchtype="PROV-NUM"&gt;
            &lt;designum&gt;
                &lt;emph typestyle="bf"&gt;3&lt;/emph&gt;
            &lt;/designum&gt;
        &lt;/desig&gt;
    &lt;/leg:heading&gt;
&lt;/leg:bodytext&gt;
                     
              <b><i>Target Example</i></b>
                     

&lt;primlaw:bodytext&gt;
    &lt;primlaw:level leveltype="unclassfied"&gt;
        &lt;heading align="left"&gt;
            &lt;desig inline="true"&gt;&lt;emph typestyle="bf"&gt;3&lt;/emph&gt;&lt;/desig&gt;
        &lt;/heading&gt;   
    &lt;/primlaw:level&gt;
    ....
&lt;/primlaw:bodytext&gt;
                   
        </pre>
        <p>If the input document has scenarios <sourcexml>leg:heading/leg:histnote</sourcexml> and <sourcexml>leg:heading/glp:note</sourcexml> then move the note after
            <sourcexml>heading</sourcexml> within <targetxml>primlaw:level</targetxml>
        
            <pre>
               <b><i>Source example based on AU content</i></b>

&lt;leg:level&gt;
    ....
    &lt;leg:heading&gt;
        &lt;desig searchtype="SCH-NUM"&gt;&lt;designum&gt;SCHEDULE 2&lt;/designum&gt;&lt;/desig&gt;&lt;title
            searchtype="SCH-TITLE"&gt;FORMS&lt;/title&gt;
        &lt;leg:histnote&gt;
            &lt;p&gt;&lt;text&gt;[Sch 2 rep SLI 179 of 2007 r 3 and Sch 1[47], effective 27
                June 2007]&lt;/text&gt;&lt;/p&gt;
        &lt;/leg:histnote&gt;
        &lt;glp:note&gt;
            &lt;p&gt;&lt;text&gt;The above amendment legislation removed the Forms from the
                Rules. These Forms are now located in the &amp;#x201C;Forms&amp;#x201D; guide card
                in volume 2 of this service.&lt;/text&gt;&lt;/p&gt;
        &lt;/glp:note&gt;
    &lt;/leg:heading&gt;
    ....
&lt;/leg:level&gt;
                     
              <b><i>Target Example</i></b>
                     

&lt;primlaw:level&gt;
    .....
    &lt;heading&gt;&lt;desig&gt;SCHEDULE 2&lt;/desig&gt;
        &lt;title&gt;FORMS&lt;/title&gt;
    &lt;/heading&gt;
    &lt;note notetype="historical"&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;[Sch 2 rep SLI 179 of 2007 r 3 and Sch 1[47], effective 27 June
                    2007]&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;The above amendment legislation removed the Forms from the Rules.
                    These Forms are now located in the &amp;#x201C;Forms&amp;#x201D; guide card in
                    volume 2 of this service.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
    ....
&lt;/primlaw:level&gt;
                   
        </pre>
        
        </p>
</section>
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.heading.dita  -->
	<xsl:message>Regulation_leg.heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="@inline">

		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="heading[@inline=&#34;true&#34;]">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="heading[@inline=&#34;false&#34;]">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  "left"   -->
		<!--  Could not determine target element or attribute name:  <"left">  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </"left">  -->

	</xsl:template>

	<xsl:template match="@align">

		<!--  Original Target XPath:  "left"   -->
		<!--  Could not determine target element or attribute name:  <"left">  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </"left">  -->

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/desig">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/title">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="desig">

		<!--  Original Target XPath:  desig   -->
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  title   -->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="leg:heading/leg:histnote">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:heading/glp:note">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>