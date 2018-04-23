<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="GPL_PH03_leg-level">
 <title>leg:level <lnpid>id-PH03-34616</lnpid></title>
 <body>
 
  <section>
   <p><sourcexml>leg:level</sourcexml> becomes <targetxml>admindoc:level</targetxml> comes with
     <sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml> and
     <sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> attributes
     <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and
     <sourcexml>toc-caption</sourcexml> becomes <targetxml>alternatetoccaption</targetxml>, the
    values are tokenized, <ul>
     <li><targetxml>admindoc:level[@leveltype="act"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="addendum"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="amendment"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="annex"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="appendix"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="article"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="canon"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="chapter"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="clause"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="constitution"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="companion"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="division"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="dictionary"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="exhibit"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="endnote"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="form"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="hierarchy-note"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="introduction"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="instrument"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="order"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="paragraph"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="part"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="preamble"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="regulation"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="rule"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="schedule"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="section"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subarticle"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subchapter"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subclause"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subdivision"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subparagraph"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subpart"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subrule"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subregulation"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subschedule"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subsection"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subtitle"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="supplement"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="table-of-contents"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="title"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="topic"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="treaty"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="agency"]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="subagency]</targetxml></li>
     <li><targetxml>admindoc:level[@leveltype="unclassified"]</targetxml></li>
    </ul></p>
   <p> [<targetxml>@leveltype</targetxml>] values in NewLexis conversion: <ul>
     <li><sourcexml>leg:level-vrnt/@leveltype="act"</sourcexml> becomes
       <targetxml>admindoc:level/@leveltype="act"</targetxml></li>
     <li><sourcexml>leg:level-vrnt/@leveltype="sect"</sourcexml> becomes
       <targetxml>admindoc:level/@leveltype="section"</targetxml></li>
     <li><sourcexml>leg:level-vrnt/@leveltype="subsect"</sourcexml> becomes
       <targetxml>admindoc:level/@leveltype="subsection"</targetxml></li>
     <li><sourcexml>leg:level-vrnt/@leveltype="chapter"</sourcexml> becomes
       <targetxml>admindoc:level/@leveltype="chapter"</targetxml></li>
     <li><sourcexml>leg:level-vrnt/@leveltype="part"</sourcexml> becomes
       <targetxml>admindoc:level/@leveltype="part"</targetxml></li>
     <li><sourcexml>leg:level-vrnt/@leveltype="division"</sourcexml> becomes
       <targetxml>admindoc:level/@leveltype="division"</targetxml></li>
    </ul></p>
   <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than the
    tokenized list shown above the value will be set as
    <targetxml>@leveltype="unclassified"</targetxml>.</note>
    </section>
  <section>
   <title>Source XML</title>
   <pre>
    
     &lt;leg:level id="PHPI.EO0037Y2001.BODY"&gt;
            &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
                &lt;leg:heading&gt;
                    &lt;title&gt;&lt;refpt id="PHPI.EO0037Y2001" type="ext"/&gt;EXECUTIVE ORDER NO.
                        37&lt;nl/&gt;ABOLISHING THE CABINET COMMITTEE ON MARITIME AND OCEAN AFFAIRS
                        (CABCOM-MOA)&lt;/title&gt;
                &lt;/leg:heading&gt;
                .......
            &lt;/leg:level-vrnt&gt;
     &lt;/leg:level&gt;
    
   </pre>
  </section>
  <p>
   Becomes
  </p>
  <section>
   <title>Target XML</title>
   <pre>
    
 &lt;admindoc:level xml:id="PHPI.EO0037Y2001.BODY" leveltype="act"&gt;
    &lt;ref:anchor id="PHPI.EO0037Y2001" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;EXECUTIVE ORDER NO. 37&lt;proc:nl/&gt;ABOLISHING THE CABINET COMMITTEE ON MARITIME AND OCEAN AFFAIRS
            (CABCOM-MOA)&lt;/title&gt;
    &lt;/heading&gt;
    .....
&lt;/admindoc:level&gt;
    
   </pre>
  </section>
  <p>
      <sourcexml>leg:level-vrnt</sourcexml> will be omitted and all its contents will be retained in
      conversion <note>In New Lexis <targetxml>admindoc:level</targetxml> element is used instead of
        Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>.
        So element <sourcexml>leg:level-vrnt</sourcexml> will be omitted from conversion .</note>
    </p>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH03-Regulation\GPL_PH03_leg-level.dita  -->
	<xsl:message>GPL_PH03_leg-level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  admindoc:level   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="toc-caption">

		<!--  Original Target XPath:  alternatetoccaption   -->
		<alternatetoccaption>
			<xsl:apply-templates select="@* | node()"/>
		</alternatetoccaption>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;act&#34;">

		<!--  Original Target XPath:  admindoc:level/@leveltype="act"   -->
		<admindoc:level>
			<xsl:attribute name="leveltype">
				<xsl:text>act</xsl:text>
			</xsl:attribute>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;sect&#34;">

		<!--  Original Target XPath:  admindoc:level/@leveltype="section"   -->
		<admindoc:level>
			<xsl:attribute name="leveltype">
				<xsl:text>section</xsl:text>
			</xsl:attribute>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;subsect&#34;">

		<!--  Original Target XPath:  admindoc:level/@leveltype="subsection"   -->
		<admindoc:level>
			<xsl:attribute name="leveltype">
				<xsl:text>subsection</xsl:text>
			</xsl:attribute>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;chapter&#34;">

		<!--  Original Target XPath:  admindoc:level/@leveltype="chapter"   -->
		<admindoc:level>
			<xsl:attribute name="leveltype">
				<xsl:text>chapter</xsl:text>
			</xsl:attribute>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;part&#34;">

		<!--  Original Target XPath:  admindoc:level/@leveltype="part"   -->
		<admindoc:level>
			<xsl:attribute name="leveltype">
				<xsl:text>part</xsl:text>
			</xsl:attribute>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt/@leveltype=&#34;division&#34;">

		<!--  Original Target XPath:  admindoc:level/@leveltype="division"   -->
		<admindoc:level>
			<xsl:attribute name="leveltype">
				<xsl:text>division</xsl:text>
			</xsl:attribute>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:  admindoc:level   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

</xsl:stylesheet>