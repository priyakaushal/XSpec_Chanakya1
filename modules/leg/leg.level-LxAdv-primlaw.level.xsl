<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" 
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
  xmlns:glp="http://www.lexis-nexis.com/glp" version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level-LxAdv-primlaw.level">
  <title>leg:level <lnpid>id-HK04-36616</lnpid></title>
 <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes
            with attributes, <sourcexml>@id</sourcexml> Becomes <targetxml>@xml:id</targetxml>
            <sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> attributes
              <sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml> and
              <sourcexml>toc-caption</sourcexml> becomes <targetxml>alternatetoccaption</targetxml>,
            the values are tokenized, and populated as: <ul>
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
            </ul>
            <note>If the input files are having @leveltype values other than the tokenized list
              shown above the value will be set as
              <targetxml>@leveltype="unclassified"</targetxml>.</note>
            <sourcexml>leg:level-vrnt</sourcexml> will be omitted and all its contents will be
            retained in conversion <note>In New Lexis <targetxml>primlaw:level</targetxml> element
              is used instead of Rosetta elements <sourcexml>leg:level</sourcexml> and
                <sourcexml>leg:level-vrnt</sourcexml>. 
              So element <sourcexml>leg:level-vrnt</sourcexml> will be omitted from conversion and attributes
                <sourcexml>/leg:level-vrnt/@leveltype</sourcexml> will become
                <targetxml>primlaw:level/@leveltype</targetxml> with its value,
                <sourcexml>/leg:level-vrnt/@searchtype</sourcexml> will be suppressed,
                <sourcexml>/leg:level-vrnt/@subdoc</sourcexml> will become
                <targetxml>primlaw:level/@includeintoc</targetxml> with its value and
                <sourcexml>/leg:level-vrnt/@toc-caption</sourcexml> will become
                <targetxml>/primlaw:level/@alternatetoccaption</targetxml> with all its
              value.</note>
            
            <p>As per LBU recommend the rules are listed below for some unique
              [<targetxml>@leveltype</targetxml>] values in NewLexis conversion: 
              <ul>
                <li>If input <sourcexml>[@leveltype="attachments"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="attachment"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="comm.intro"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="annotation-group"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="convention"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="treaty"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="group"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="chapter"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="leg-inst"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="miscins"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="proc-guide"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="procedural-guide"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="reg-code"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="regulatory-code"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="release"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="instrument"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="scale"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="scalep"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="scales"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="scalesp"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="paragraph"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="schedulegrp"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="schedule"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="subgroup"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="subchapter"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="summary"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="introduction"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="sect"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="section"]</targetxml>
                </li>
                <li>If input <sourcexml>[@leveltype="subsect"]</sourcexml>
                  becomes <targetxml>primlaw:level[@leveltype="subsection"]</targetxml>
                </li>
              </ul>
              <note class="- topic/note ">If the input files are having
                <sourcexml>@leveltype</sourcexml> values other than the tokenized list shown
                above the value will be set as
                <targetxml>@leveltype="unclassified"</targetxml>.</note> Examples are populated as
              below:</p>
            <pre>&lt;leg:level id="AOHK.CAP290A.BODY"&gt;
            &lt;leg:level-vrnt searchtype="LEGISLATION RULE" leveltype="rule"&gt;
                &lt;leg:heading align="center"&gt;
                    &lt;title&gt; ADOPTION RULES&lt;/title&gt;
                &lt;/leg:heading&gt;
       
        &lt;/leg:level&gt;
    </pre>
            <b>Becomes</b>
            <pre>  
    
    &lt;primlaw:level xml:id="AOHK.CAP290A.BODY" leveltype="rule"&gt;
          &lt;heading align="center"&gt;
              &lt;title&gt;ADOPTION RULES&lt;/title&gt;
           &lt;/heading&gt;
    &lt;/primlaw:level&gt;
    
    </pre>
          </li>
        </ul>
      </p>
      <p><sourcexml>leg:leveinfo</sourcexml> becomes <targetxml>legisinfo:legisinfo</targetxml>.</p>
    </section>  
   <section>
     <title>Changes</title>
     <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
   </section>
  </body>
	</dita:topic>

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

  <xsl:template match="leg:level-vrnt/@leveltype">
    <xsl:variable name="levelTypeValues" select="if ($streamID=('NZ01','NZ06')) then
      ('act' , 'addendum' , 'agency' , 'amendment' , 'annex' , 'appendix' , 'article' , 'attachment', 'canon' , 'chapter' , 'clause' , 'companion' , 'constitution' , 'division' , 'endnote' , 'exhibit' , 'form' , 'glossary' , 'hierarchy-note' , 'instrument' , 'introduction' , 'order' , 'paragraph' , 'part' , 'preamble' , 'regulation' , 'rule' , 'schedule' , 'section' , 'specification' , 'subagency' , 'subarticle' , 'subchapter' , 'subclause' , 'subdivision' , 'subparagraph' , 'subpart' , 'subregulation' , 'subrule' , ' subschedule' , 'subsection' , 'subtitle' , 'supplement' , 'table-of-contents' , 'title' , 'topic' , 'treaty' , 'unclassified' , 'volume')
      else
      ('act' , 'addendum' , 'amendment' , 'annex' , 'appendix' , 'article' , 'canon' , 'chapter' , 'clause' , 'constitution' , 'companion' , 'division' , 'dictionary' , 'exhibit' , 'endnote' , 'form' , 'hierarchy-note' , 'introduction' , 'instrument' , 'order' , 'paragraph' , 'part' , 'preamble' , 'regulation' , 'rule' , 'schedule' , 'section' , 'subarticle' , 'subchapter' , 'subclause' , 'subdivision' , 'subparagraph' , 'subpart' , 'subrule' , 'subregulation' , 'subschedule' , 'subsection' , 'subtitle' , 'supplement' , 'table-of-contents' , 'title' , 'topic' , 'treaty' , 'agency' , 'subagency')"/>

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
		  <xsl:choose>
		    <xsl:when test=".=$levelTypeValues">
		      <xsl:value-of select="."/>
		    </xsl:when>
		    <!-- JL accommodating some HK misspellings which are routine -->
		  	<xsl:when test=".='attachment'">
		  		<xsl:text>attachment</xsl:text>
		  	</xsl:when>
		  	<xsl:when test=".='chap'">
		  		<xsl:text>chapter</xsl:text>
		  	</xsl:when>
		  	<xsl:when test=".='conv.sect'">
		  		<xsl:text>section</xsl:text>
		  	</xsl:when>		  	
		  	<xsl:when test=".='forms' and $streamID='NZ06'">
		  		<xsl:text>unclassified</xsl:text>
		  	</xsl:when>
		  	<xsl:when test=".='reg'">
		  		<xsl:text>regulation</xsl:text>
		  	</xsl:when>
		  	<xsl:when test=".='rul'">
		      <xsl:text>rule</xsl:text>
		    </xsl:when>
		  	<xsl:when test=".='schedulegrp' and $streamID='NZ06'"><!-- JD: note that 'schedulegrp' maps to 'unclassified' in NZ06 but 'schedule' in NZ18. -->
		  		<xsl:text>unclassified</xsl:text>
		  	</xsl:when>
		  	<xsl:when test=".='sect'">
		  		<xsl:text>section</xsl:text>
		  	</xsl:when>
		  	<xsl:when test=".='subart'">
		  		<xsl:text>subarticle</xsl:text>
		  	</xsl:when>		  	
		  	<xsl:when test=".='subreg'">
		  		<xsl:text>subregulation</xsl:text>
		  	</xsl:when>
		  	<xsl:when test=".='subrul'">
		      <xsl:text>subrule</xsl:text>
		    </xsl:when>
		  	<!-- ff condition true for NZ also -->
		  	<xsl:when test=".='subsect'">
		  		<xsl:text>subsection</xsl:text>
		  	</xsl:when>
		  	
		    <!-- MDS - 2017-04-14 - Taken from Instructions in '/leg/HK06_Regulations_leg.level.xsl' -->
		    <xsl:when test="$streamID='HK06'">
		      <xsl:choose>
		        <xsl:when test=".='attachments'">attachment</xsl:when>
		        <xsl:when test=".='comm.intro'">annotation-group</xsl:when>
		        <xsl:when test=".='convention'">treaty</xsl:when>
		        <xsl:when test=".='group'">chapter</xsl:when>
		        <xsl:when test=".='leg-inst'">instrument</xsl:when>
		        <xsl:when test=".='miscins'">instrument</xsl:when>
		        <xsl:when test=".='proc-guide'">procedural-guide</xsl:when>
		        <xsl:when test=".='reg-code'">regulatory-code</xsl:when>
		        <xsl:when test=".='release'">instrument</xsl:when>
		        <xsl:when test=".='scale'">schedule</xsl:when>
		        <xsl:when test=".='scalep'">paragraph</xsl:when>
		        <xsl:when test=".='scales'">schedule</xsl:when>
		        <xsl:when test=".='scalesp'">paragraph</xsl:when>
		        <xsl:when test=".='schedulegrp'">schedule</xsl:when>
		        <xsl:when test=".='subgroup'">subchapter</xsl:when>
		        <xsl:when test=".='summary'">introduction</xsl:when>		        
		        <xsl:otherwise>
		          <xsl:text>unclassified</xsl:text>
		        </xsl:otherwise>		        
		      </xsl:choose>
		    </xsl:when>
		    <!-- AU08 use case endmatter ancestor PS2017050216382536881LNIAUCOURTRULES_input_ACT_REG_2006-2912760.xml
		    The CI sample snip clearly shows this to map to "endnote" although it isn't in the list of @leveltypes in text description.  
		    In order to match DT it is included here.  -->
		    <xsl:when test="$streamID='AU08' and .='notes' and parent::leg:level-vrnt[parent::leg:level[parent::leg:endmatter]]">endnote</xsl:when>		        
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
	  <xsl:apply-templates select="leg:heading/(refpt | desig/designum/refpt | title/refpt | subtitle/refpt | edpnum/refpt) | leg:levelinfo/leg:levelstatus/refpt"/>
	  <xsl:apply-templates select="leg:heading | leg:levelinfo"/>
	  <xsl:apply-templates select="leg:heading/leg:empleg | leg:heading/leg:histnote"/>
	  <xsl:apply-templates select="node() except(leg:heading, leg:levelinfo)"/>
	</xsl:template>
  
  <!-- 2017-10-04 - MDS: This is now addressed more correctly within /modules/leg/Rosetta_leg.levelstatus_ln.user-displayed.xsl -->
  <!-- 2017-04-19 - MDS: No instructions in HK06 CI but elements in source needed to be addressed.-->  
<!--  <xsl:template match="leg:levelinfo[$streamID=('HK06')]">
    <primlaw:levelinfo>
      <primlawinfo:primlawinfo>
        <legisinfo:legisinfo>
          <xsl:apply-templates select="@* | node()"/>        
        </legisinfo:legisinfo>
      </primlawinfo:primlawinfo>
    </primlaw:levelinfo>
  </xsl:template>-->
  
  <xsl:template match="leg:level-vrnt/@searchtype | leg:level/@searchtype"/>
 
</xsl:stylesheet>