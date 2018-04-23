<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-leg.comntry">
  <title><sourcexml>leg:comntry</sourcexml> <lnpid>id-ST03-26617</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:comntry</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp</targetxml>.
        <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the first child in the sequence. Please refer to General Markup Section for handling <sourcexml>refpt</sourcexml>.</li>
          <li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
          <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
        </ul>
        
        <ul>
          <li><b><sourcexml>leg:comntry</sourcexml> encountered in following scenarios:</b>
            
            <ul>
              <li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry</sourcexml> becomes <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml> with optional attributes and child elements converted as:
                <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
                </ul>
              </li>
              
              <li><sourcexml>leg:preamble/leg:bodytext/leg:comntry</sourcexml> becomes <targetxml>primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]</targetxml> with optional attributes and child elements converted as:
                <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
                </ul>
              </li>
              
              <li><sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level</sourcexml> becomes <targetxml>primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml> with optional attributes and child elements converted as:
                <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
                  <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>and must be the first child in the sequence. Refer to the refpt section for more information.</li>
                  <li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
                  <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
                  <li><sourcexml>level/bodytext</sourcexml> becomes <targetxml>annot:annotation/bodytext</targetxml></li>
                </ul>
                <note>If attribute <sourcexml>@leveltype</sourcexml> occurs within <sourcexml>leg:comntry/level</sourcexml> then <sourcexml>@leveltype</sourcexml> will be suppressed from conversion.</note>
              </li>
            </ul>
          </li>
        </ul>
      </p>
    </section>
    <example>
      <title>UK SOURCE XML 1: Mapping of <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry</sourcexml></title>
      <codeblock>

&lt;leg:body&gt;
 &lt;leg:level&gt;
  &lt;leg:level-vrnt leveltype="sched"&gt;
   &lt;leg:levelbody&gt;
    &lt;leg:level&gt;
     &lt;leg:level-vrnt leveltype="prov1"&gt;
      &lt;leg:levelbody&gt;
       &lt;!-- ETC. --&gt;
       &lt;leg:comntry searchtype="ANNOTATIONS"&gt;
        &lt;level leveltype="comm30"&gt;
         &lt;bodytext&gt;
          &lt;heading searchtype="ANNOTATIONS"&gt;
           &lt;title&gt;&lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;&lt;/title&gt;
          &lt;/heading&gt;
         &lt;/bodytext&gt;
         &lt;level leveltype="comm32"&gt;
          &lt;heading searchtype="ANNOTATIONS"&gt;
           &lt;title&gt;&lt;emph typestyle="bf"&gt;Amendment&lt;/emph&gt;&lt;/title&gt;
          &lt;/heading&gt;
          &lt;bodytext&gt;
           &lt;!-- ETC. --&gt;
          &lt;/bodytext&gt;
         &lt;/level&gt;
        &lt;/level&gt;
       &lt;/leg:comntry&gt;
      &lt;/leg:levelbody&gt;
     &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
   &lt;/leg:levelbody&gt;
  &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;
&lt;/leg:body&gt;        
      </codeblock>
      <b>Become</b>
      <title>UK TARGET XML 1: Mapping of <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry</sourcexml></title>
      <codeblock>

&lt;legis:body&gt;
 &lt;primlaw:level leveltype="schedule"&gt;
  &lt;primlaw:level leveltype="paragraph"&gt;
   &lt;!-- ETC. --&gt;
   &lt;annot:annotations&gt;
    &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
     &lt;annot:annotation&gt;
      &lt;bodytext&gt;
       &lt;h&gt;&lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;&lt;/h&gt;
      &lt;/bodytext&gt;
      &lt;annot:annotationlevel&gt;
       &lt;heading&gt;
        &lt;title&gt;Amendment&lt;/title&gt;
       &lt;/heading&gt;
       &lt;annot:bodytext&gt;
        &lt;!-- ETC. --&gt;
       &lt;/annot:bodytext&gt;
      &lt;/annot:annotationlevel&gt;
     &lt;/annot:annotation&gt;
    &lt;/annot:annotation-grp&gt;
   &lt;/annot:annotations&gt;
  &lt;/primlaw:level&gt;
 &lt;/primlaw:level&gt;
&lt;/legis:body&gt;
        
      </codeblock>
    </example>
    <example>
      <title>UK SOURCE XML 2: Mapping of <sourcexml>leg:preamble/leg:bodytext/leg:comntry</sourcexml></title>
      <codeblock>

&lt;leg:preamble&gt;
 &lt;leg:bodytext searchtype="LEGISLATION"&gt;
  &lt;leg:comntry searchtype="ANNOTATIONS"&gt;
   &lt;level leveltype="comm30"&gt;
    &lt;bodytext&gt;
     &lt;heading searchtype="ANNOTATIONS"&gt;
      &lt;title&gt;&lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;&lt;/title&gt;
     &lt;/heading&gt;
    &lt;/bodytext&gt;
    &lt;!-- ETC. --&gt;
   &lt;/level&gt;
  &lt;/leg:comntry&gt;
 &lt;/leg:bodytext&gt;
&lt;/leg:preamble&gt;
        
      </codeblock>
      <b>Become</b>
      <title>UK TARGET XML 2: Mapping of <sourcexml>leg:preamble/leg:bodytext/leg:comntry</sourcexml></title>
      <codeblock>

&lt;primlaw:level leveltype="preamble"&gt;
 &lt;annot:annotations&gt;
  &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
   &lt;annot:annotation&gt;
    &lt;bodytext&gt;
     &lt;h&gt;
      &lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;
     &lt;/h&gt;
    &lt;/bodytext&gt;
    &lt;!-- ETC. --&gt;
   &lt;/annot:annotation&gt;
  &lt;/annot:annotation-grp&gt;
 &lt;/annot:annotations&gt;
&lt;/primlaw:level&gt;
        
      </codeblock>
    </example>
    <example>
      <title>UK SOURCE XML 3: Mapping of <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level</sourcexml></title>
      <codeblock>

&lt;leg:body&gt;
 &lt;leg:level&gt;
  &lt;leg:level-vrnt leveltype="sched"&gt;
   &lt;leg:levelbody&gt;
    &lt;leg:level&gt;
     &lt;leg:level-vrnt leveltype="prov1"&gt;
      &lt;leg:levelbody&gt;
       &lt;!-- ETC. --&gt;
       &lt;leg:comntry searchtype="ANNOTATIONS"&gt;
        &lt;level leveltype="comm30"&gt;
         &lt;bodytext&gt;
          &lt;heading searchtype="ANNOTATIONS"&gt;
           &lt;title&gt;&lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;&lt;/title&gt;
          &lt;/heading&gt;
         &lt;/bodytext&gt;
         &lt;level leveltype="comm32"&gt;
          &lt;heading searchtype="ANNOTATIONS"&gt;
           &lt;title&gt;&lt;emph typestyle="bf"&gt;Amendment&lt;/emph&gt;&lt;/title&gt;
          &lt;/heading&gt;
          &lt;bodytext&gt;
           &lt;!-- ETC. --&gt;
          &lt;/bodytext&gt;
         &lt;/level&gt;
        &lt;/level&gt;
       &lt;/leg:comntry&gt;
      &lt;/leg:levelbody&gt;
     &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
   &lt;/leg:levelbody&gt;
  &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;
&lt;/leg:body&gt;
        
      </codeblock>
      <b>Become</b>
      <title>UK TARGET XML 3: Mapping of <sourcexml>leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level</sourcexml></title>
      <codeblock>

&lt;legis:body&gt;
 &lt;primlaw:level leveltype="schedule"&gt;
  &lt;primlaw:level leveltype="paragraph"&gt;
   &lt;!-- ETC. --&gt;
   &lt;annot:annotations&gt;
    &lt;annot:annotation-grp grptype="COMMENTARY"&gt;
     &lt;annot:annotation&gt;
      &lt;bodytext&gt;
       &lt;h&gt;&lt;emph typestyle="bf"&gt;NOTES&lt;/emph&gt;&lt;/h&gt;
      &lt;/bodytext&gt;
      &lt;annot:annotationlevel&gt;
       &lt;heading&gt;
        &lt;title&gt;Amendment&lt;/title&gt;
       &lt;/heading&gt;
       &lt;annot:bodytext&gt;
        &lt;!-- ETC. --&gt;
       &lt;/annot:bodytext&gt;
      &lt;/annot:annotationlevel&gt;
     &lt;/annot:annotation&gt;
    &lt;/annot:annotation-grp&gt;
   &lt;/annot:annotations&gt;
  &lt;/primlaw:level&gt;
 &lt;/primlaw:level&gt;
&lt;/legis:body&gt;
        
      </codeblock>
    </example>
   <section>
    <title>Changes</title>
    <p>2013-07-16: <ph id="change_20130716_SK">Instruction narrative edited for language; no changes to mappings, no impact to stylesheets.</ph></p>
    
    <p>2013-07-08: <ph id="change_20130708_AB">Created.</ph></p>
   </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Legislation\legis-leg.comntry.dita  -->
	<xsl:message>legis-leg.comntry.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:comntry">

		<!--  Original Target XPath:  annot:annotations/annot:annotation-grp   -->
		<annot:annotations>
			<annot:annotation-grp>
				<xsl:apply-templates select="@* | node()"/>
			</annot:annotation-grp>
		</annot:annotations>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
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

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="heading/edpnum">

		<!--  Original Target XPath:  heading/desig   -->
		<heading>
			<desig>
				<xsl:apply-templates select="@* | node()"/>
			</desig>
		</heading>

	</xsl:template>

	<xsl:template match="heading/title">

		<!--  Original Target XPath:  heading/title   -->
		<heading>
			<title>
				<xsl:apply-templates select="@* | node()"/>
			</title>
		</heading>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:comntry">

		<!--  Original Target XPath:  primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]   -->
		<primlaw:level>
			<annot:annotations>
				<annot:annotation-grp>
					<xsl:apply-templates select="@* | node()"/>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:preamble/leg:bodytext/leg:comntry">

		<!--  Original Target XPath:  primlaw:level[@leveltype="preamble"]/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]   -->
		<primlaw:level>
			<annot:annotations>
				<annot:annotation-grp>
					<xsl:apply-templates select="@* | node()"/>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:levelbody/leg:comntry/level">

		<!--  Original Target XPath:  primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation   -->
		<primlaw:level>
			<annot:annotations>
				<annot:annotation-grp>
					<annot:annotation>
						<xsl:apply-templates select="@* | node()"/>
					</annot:annotation>
				</annot:annotation-grp>
			</annot:annotations>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="level/bodytext">

		<!--  Original Target XPath:  annot:annotation/bodytext   -->
		<annot:annotation>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</annot:annotation>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="leg:comntry/level">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>