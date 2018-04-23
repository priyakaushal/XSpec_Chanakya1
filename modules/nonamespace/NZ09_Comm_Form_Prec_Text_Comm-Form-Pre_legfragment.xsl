<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_legfragment">
  <title><sourcexml>legfragment</sourcexml> <lnpid>id-NZ09-24219</lnpid></title>
  <body>
    <section>
      <p><sourcexml>legfragment</sourcexml> becomes <targetxml>primlaw:excerpt</targetxml>.
        <note>For handling of <sourcexml>blockquote/legfragment</sourcexml> scenario, please refer to General Markup Section for handling <xref href="../../common_newest/Rosetta_blockquote-LxAdv-blockquote.dita">blockquote</xref></note>
        <ul>
          <li>
            <sourcexml>legfragment</sourcexml> has legislative elements as <sourcexml>legfragment/leg:level</sourcexml>.
            <sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes with following attributes:
            <ul>
              <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
              <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
              <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
              <li><sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> and the values are tokenized for <targetxml>@leveltype</targetxml>. These are listed below:
                <ul>
                  <li><targetxml>primlaw:level[@leveltype="act"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="addendum"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="amendment"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="annex"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="appendix"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="article"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="canon"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="chapter"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="clause"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="constitution"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="paragraph"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="part"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="preamble"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="regulation"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="rule"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="schedule"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="section"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subarticle"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subchapter"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subclause"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subdivision"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subparagraph"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subpart"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subrule"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="subagency]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="special-alert"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="special-unit"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="court-order"]</targetxml></li>
                  <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
                </ul>
              </li>
            </ul>
            <note>In New Lexis <targetxml>primlaw:level</targetxml> element is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the <sourcexml>@leveltype</sourcexml> value from <sourcexml>leg:level-vrnt</sourcexml> and the element <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
            <note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than the tokenized list shown above the value will be set as <targetxml>@leveltype="unclassified"</targetxml></note> And <targetxml>primlaw:level</targetxml> children are describe below:
            <ul>
              <li><sourcexml>leg:heading</sourcexml> becomes <targetxml>heading</targetxml> with attribute <sourcexml>@inline</sourcexml>, which becomes <targetxml>@inline</targetxml> and has tokenized values that are populated as:
                <ul>
                  <li><targetxml>heading[@inline="true"]</targetxml></li>
                  <li><targetxml>heading[@inline="false"]</targetxml></li>
                </ul>
              </li>
              <li>If the elements <sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml> occurs simultaneously becomes <targetxml>primlaw:bodytext</targetxml>.
                <note>If the element <sourcexml>leg:levelbody</sourcexml> has child <sourcexml>leg:level</sourcexml> then <sourcexml>leg:levelbody</sourcexml> will be suppressed from NL conversion.</note>
              </li>
            </ul>
            <note>When target conversion are having <targetxml>@leveltype="clause"</targetxml>, <targetxml>@leveltype="section"</targetxml> or <targetxml>@leveltype="regulation"</targetxml> then within that <targetxml>primlaw:level</targetxml>, attribute <targetxml>@inline</targetxml> (value of <b>true</b> or <b>false</b>) is removed at the following locations (below listed elements). Removal of <targetxml>@inline</targetxml> attribute will not propagate to child <targetxml>primlaw:level</targetxml>. Please refer the below snippet for your reference.
              <ul>
                <li><targetxml>heading</targetxml></li>
                <li><targetxml>heading/desig</targetxml></li>
                <li><targetxml>heading/altdesig</targetxml></li>
                <li><targetxml>heading/title</targetxml></li>
                <li><targetxml>heading/alttitle</targetxml></li>
                <li><targetxml>alt-heading</targetxml></li>
                <li><targetxml>alt-heading/desig</targetxml></li>
                <li><targetxml>alt-heading/title</targetxml></li>
                <li><targetxml>alt-heading/alttitle</targetxml></li>
              </ul>
            </note>
            <note>There are some cases where the source value of <sourcexml>@leveltype</sourcexml> does not exactly match the target value of <targetxml>@leveltype</targetxml> then refer the below shown table:
              <table id="table_mew_znv_km">
                <tgroup cols="2">
                  <colspec colnum="1" colname="col1"/>
                  <colspec colnum="2" colname="col2"/>
                  <thead>
                    <row>
                      <entry>leg:level/@leveltype </entry>
                      <entry>primlaw:level/@leveltype </entry>
                    </row>
                  </thead>
                  <tbody>
                    <row>
                      <entry>sect</entry>
                      <entry>section</entry>
                    </row>
                    <row>
                      <entry>conv.sect</entry>
                      <entry>section</entry>
                    </row>
                    <row>
                      <entry>reg</entry>
                      <entry>regulation</entry>
                    </row>
                  </tbody>
                </tgroup>
              </table>
            </note>
            <targetxml>primlaw:level</targetxml> populated as below:
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2014-02-03: <ph id="change_20140203_AB">Added the instruction for suppressing the <targetxml>@inline</targetxml> attribute when target conversion are having <targetxml>primlaw:level@leveltype="clause"</targetxml>. R4.5 Content issue #1066</ph></p>
      <p>2014-02-11: <ph id="change_20140211_AB">Updated the instruction for suppressing the <targetxml>@inline</targetxml> attribute when target conversion are having <targetxml>@leveltype="clause"</targetxml>, <targetxml>@leveltype="section"</targetxml> or <targetxml>@leveltype="regulation"</targetxml>. R4.5 Content issue #1066</ph></p>
      <p>2014-02-21: <ph id="change_20140221_AB">Updated the instruction for suppressing the <targetxml>@inline</targetxml> attribute when target conversion are having <targetxml>@leveltype="clause"</targetxml>, <targetxml>@leveltype="section"</targetxml> or <targetxml>@leveltype="regulation"</targetxml>. R4.5 Content issue #1066</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ09_Comm_Form_Prec_Text\Comm-Form-Pre_legfragment.dita  -->
  <xsl:template match="leg:level">
    <!--  Original Target XPath:  primlaw:level   -->
    <primlaw:level>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="leg:level-vrnt/@*"/>
      <!-- in case there's no leveltype in the input -->
      <xsl:if test="not(leg:level-vrnt/@leveltype)">
        <xsl:attribute name="leveltype" select="'unclassified'"/>
      </xsl:if>
      <xsl:apply-templates select="node()"/>
    </primlaw:level>
    
  </xsl:template>
  
  
  
  <xsl:template match="leg:level-vrnt/@leveltype">
    <xsl:variable name="levelTypeValues" select="('act' , 'addendum' , 'agency',  'amendment' , 'annex' , 'appendix' , 'article' , 'canon' , 'chapter' , 'clause' , 'constitution' , 'division' , 'exhibit' , 'form' , 'hierarchy-note' , 'paragraph' , 'part' , 'preamble' , 'regulation' , 'rule' , 'schedule' , 'section' , 'subagency',  'subarticle' , 'subchapter' , 'subclause' , 'subdivision' , 'subparagraph' , 'subpart' , 'subrule' , 'subsection' , 'subtitle' , 'supplement' , 'table-of-contents' , 'title' , 'topic' ,  'unclassified' , 'special-alert' , 'special-unit', 'court-order', 'introduction')"/>
    
    <xsl:attribute name="leveltype">
      <xsl:choose>
        <xsl:when test=".=$levelTypeValues">
          <xsl:value-of select="."/>
        </xsl:when>
        <!-- JL accommodating some  misspellings which are routine -->
        <xsl:when test=".='sect'">
          <xsl:text>section</xsl:text>
        </xsl:when>
        <xsl:when test=".='conv.sect'">
          <xsl:text>section</xsl:text>
        </xsl:when>
        <xsl:when test=".='reg'">
          <xsl:text>regulation</xsl:text>
        </xsl:when>
        <!--<xsl:when test=".='chap'">
          <xsl:text>chapter</xsl:text>
        </xsl:when>
        <xsl:when test=".='subreg'">
          <xsl:text>subregulation</xsl:text>
        </xsl:when>
        <xsl:when test=".='sect'">
          <xsl:text>section</xsl:text>
        </xsl:when>
        <xsl:when test=".='attachment'">
          <xsl:text>attachment</xsl:text>
        </xsl:when>-->
        <!-- ff condition true for NZ also -->
        <xsl:when test=".='subsect'">subsection</xsl:when>        
        <xsl:otherwise>
          <xsl:text>unclassified</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="leg:level-vrnt/@subdoc">
    
    <!--  Original Target XPath:  @includeintoc   -->
    <xsl:attribute name="includeintoc">
      <xsl:value-of select="."/>
    </xsl:attribute>
    
  </xsl:template>
  
  <xsl:template match="leg:level-vrnt/@toc-caption">
    <!--  Original Target XPath:  alternatetoccaption   -->
    <xsl:attribute name="alternatetoccaption">
      <xsl:value-of select="."/>
    </xsl:attribute>
    
  </xsl:template>
  
  <xsl:template match="leg:level-vrnt">
    <!-- JL added levelstatus/refpt because it needs to be bumped up generically 
	  NOTE that the order of templates below is specified in the CIs-->
    <xsl:apply-templates select="leg:heading/(refpt | desig/designum/refpt | title/refpt | edpnum/refpt) | leg:levelinfo/leg:levelstatus/refpt"/>
    <xsl:apply-templates select="leg:heading | leg:levelinfo"/>
    <xsl:apply-templates select="leg:heading/leg:empleg | leg:heading/leg:histnote"/>
    <xsl:apply-templates select="node() except(leg:heading, leg:levelinfo)"/>
  </xsl:template>
  
  <xsl:template match="leg:levelbody">
    <xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="leg:level-vrnt/@searchtype | leg:level/@searchtype"/>
  
  <xsl:template match="leg:heading">
    <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:apply-templates select="@* | node() except (refpt | leg:empleg)"/>
    </heading>
  </xsl:template>
  
  <xsl:template match="leg:heading/@align">
    <xsl:copy-of select="."/>
  </xsl:template>
  
  <xsl:template match="leg:heading/@inline | leg:heading/desig/@inline | leg:heading/edpnum/@inline | leg:heading/title/@inline" priority="25">   
      <xsl:if test="not(parent::*[ancestor-or-self::leg:heading[parent::leg:level-vrnt[(@leveltype=('clause', 'section', 'sect', 'conv.sect' , 'regulation'))]]])">
        <xsl:copy-of select="."/>
      </xsl:if>    
  </xsl:template> 


</xsl:stylesheet>