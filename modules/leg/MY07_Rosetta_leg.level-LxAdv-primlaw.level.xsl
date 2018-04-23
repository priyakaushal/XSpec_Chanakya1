<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:leg="http://www.lexis-nexis.com/glp/leg"
  xmlns:glp="http://www.lexis-nexis.com/glp" 
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
  exclude-result-prefixes="dita leg">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
    id="MY07_Rosetta_leg.level-LxAdv-primlaw.level">
    <title>leg:level <lnpid>id-MY07-17420</lnpid></title>
    <body>
      <section>
        <p>
          <ul>
            <li><sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes
              with attributes, <sourcexml>@id</sourcexml> Becomes <targetxml>@xml:id</targetxml>
              <sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> attributes
                <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and
                <sourcexml>toc-caption</sourcexml> becomes
                <targetxml>alternatetoccaption</targetxml>, the values are tokenized, <ul>
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
                <li><targetxml>primlaw:level[@leveltype="companion"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="division"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="dictionary"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="exhibit"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="endnote"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="form"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="hierarchy-note"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="introduction"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="instrument"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="order"]</targetxml></li>
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
                <li><targetxml>primlaw:level[@leveltype="subregulation"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="subschedule"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="subsection"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="subtitle"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="supplement"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="table-of-contents"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="title"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="topic"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="treaty"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="agency"]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="subagency]</targetxml></li>
                <li><targetxml>primlaw:level[@leveltype="unclassified"]</targetxml></li>
              </ul> and populated as: <note>If the input files are having @leveltype values other
                than the tokenized list shown above the value will be set as
                  <targetxml>@leveltype="unclassified"</targetxml>.</note>
              <pre>
      
       &lt;leg:level id="USM.ALN0125y1958e"&gt;
            &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
                &lt;leg:heading align="center"&gt;
                    &lt;title&gt;
                        SMALL ESTATES &amp;#x0028;DISTRIBUTION&amp;#x0029; &amp;#x0028;AMENDMENT&amp;#x0029; RULES,
                        1958&lt;nl/&gt;&amp;#x005B;L.N.125/1958&amp;#x005D;&lt;/title&gt;
                &lt;/leg:heading&gt;
       
        &lt;/leg:level&gt;
    
    </pre>
              <b>Becomes</b>
              <pre>  
    
    &lt;primlaw:level xml:id="USM.ALN0125y1958e" leveltype="act"&gt;
          &lt;heading align="center"&gt;
              &lt;title&gt;SMALL ESTATES &amp;#x0028;DISTRIBUTION&amp;#x0029; &amp;#x0028;AMENDMENT&amp;#x0029; RULES, 1958&lt;proc:nl/&gt;&amp;#x005B;L.N.125/1958&amp;#x005D;&lt;/title&gt;
           &lt;/heading&gt;
    &lt;/primlaw:level&gt;
    
    </pre>
              <sourcexml>leg:level-vrnt</sourcexml> will be omitted and all its contents will be
              retained in conversion <note>In New Lexis <targetxml>primlaw:level</targetxml> element
                is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and
                  <sourcexml>leg:level-vrnt</sourcexml>. So element
                  <sourcexml>leg:level-vrnt</sourcexml> will be omitted from conversion and
                attributes <sourcexml>/leg:level-vrnt/@leveltype</sourcexml> will become
                  <targetxml>primlaw:level/@leveltype</targetxml> with its value,
                  <sourcexml>/leg:level-vrnt/@searchtype</sourcexml> will be suppressed,
                  <sourcexml>/leg:level-vrnt/@subdoc</sourcexml> will become
                  <targetxml>primlaw:level/@includeintoc</targetxml> with its value and
                  <sourcexml>/leg:level-vrnt/@toc-caption</sourcexml> will become
                  <targetxml>/primlaw:level/@alternatetoccaption</targetxml> with all its
                value.</note>
            </li>
          </ul>
        </p>
      </section>
      <section>
        <title>Changes</title>
        <p>2013-11-14: <ph id="change_20131114_SSX">Created</ph>.</p>
      </section>
    </body>
  </dita:topic>

  <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY07_CourtRule\MY07_Rosetta_leg.level-LxAdv-primlaw.level.dita  -->
  <!--<xsl:message>MY07_Rosetta_leg.level-LxAdv-primlaw.level.xsl requires manual
    development!</xsl:message>-->

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

  <xsl:template match="leg:level/@subdoc">
    <!--  Original Target XPath:  @includeintoc   -->
    <xsl:attribute name="includeintoc">
      <xsl:value-of select="."/>
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
    <!--  Original Target XPath:  primlaw:level   -->
    <!-- JL added levelstatus/refpt because it needs to be bumped up generically -->
    <xsl:apply-templates
      select="leg:heading/descendant::refpt[not(parent::glp:note)] | leg:levelinfo/leg:levelstatus/refpt"/>
    <xsl:apply-templates select="leg:heading"/>
    <xsl:apply-templates select="leg:heading/glp:note"/>
    <xsl:apply-templates select="leg:heading/leg:empleg"/>
    <xsl:apply-templates select="node() except (leg:heading | leg:empleg)"/>
  </xsl:template>

  <xsl:template match="leg:level-vrnt/@leveltype">
    <xsl:variable name="levelTypeValues"
      select="tokenize('act,addendum,amendment,annex,appendix,article,canon,chapter,clause,constitution,companion,division,dictionary,exhibit,endnote,form,hierarchy-note,introduction,instrument,order,paragraph,part,preamble,regulation,rule,schedule,section,subarticle,subchapter,subclause,subdivision,subparagraph,subpart,subrule,subregulation,subschedule,subsection,subtitle,supplement,table-of-contents,title,topic,treaty,agency,subagency', ',')"/>
    <!--  Original Target XPath:  @leveltype   -->
    <xsl:attribute name="leveltype">
      <xsl:choose>
        <xsl:when test="index-of($levelTypeValues, .)">
          <xsl:value-of select="."/>
        </xsl:when>
        <!-- JL accommodating some HK misspellings which are routine -->
        <xsl:when test=". = 'rul'">
          <xsl:text>rule</xsl:text>
        </xsl:when>
        <xsl:when test=". = 'subrul'">
          <xsl:text>subrule</xsl:text>
        </xsl:when>
        <xsl:when test=". = 'reg'">
          <xsl:text>regulation</xsl:text>
        </xsl:when>
        <xsl:when test=". = 'subreg'">
          <xsl:text>subregulation</xsl:text>
        </xsl:when>
        <xsl:when test=". = 'sect'">
          <xsl:text>section</xsl:text>
        </xsl:when>
        <!-- MDS - 2017-04-14 - Taken from Instructions in '/leg/HK06_Regulations_leg.level.xsl' -->
        <xsl:when test="$streamID = 'HK06'">
          <xsl:choose>
            <xsl:when test=". = 'attachments'">attachment</xsl:when>
            <xsl:when test=". = 'comm.intro'">annotation-group</xsl:when>
            <xsl:when test=". = 'convention'">treaty</xsl:when>
            <xsl:when test=". = 'group'">chapter</xsl:when>
            <xsl:when test=". = 'leg-inst'">instrument</xsl:when>
            <xsl:when test=". = 'miscins'">instrument</xsl:when>
            <xsl:when test=". = 'proc-guide'">procedural-guide</xsl:when>
            <xsl:when test=". = 'reg-code'">regulatory-code</xsl:when>
            <xsl:when test=". = 'release'">instrument</xsl:when>
            <xsl:when test=". = 'scale'">schedule</xsl:when>
            <xsl:when test=". = 'scalep'">paragraph</xsl:when>
            <xsl:when test=". = 'scales'">schedule</xsl:when>
            <xsl:when test=". = 'scalesp'">paragraph</xsl:when>
            <xsl:when test=". = 'schedulegrp'">schedule</xsl:when>
            <xsl:when test=". = 'subgroup'">subchapter</xsl:when>
            <xsl:when test=". = 'summary'">introduction</xsl:when>
            <xsl:when test=". = 'subsect'">subsection</xsl:when>
            <xsl:otherwise>
              <xsl:text>unclassified</xsl:text>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>unclassified</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  </xsl:template>



  <xsl:template match="leg:level/@subdoc">
    <!--  Original Target XPath:  @includeintoc   -->
    <xsl:attribute name="includeintoc">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>



</xsl:stylesheet>
