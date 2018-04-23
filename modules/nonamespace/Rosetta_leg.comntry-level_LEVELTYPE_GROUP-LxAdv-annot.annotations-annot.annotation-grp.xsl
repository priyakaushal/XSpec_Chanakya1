<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:source_docinfo="http://www.lexis-nexis.com/glp/docinfo"
  xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
  xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita glp leg source_docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.comntry-level_LEVELTYPE_GROUP-to-LexisAdvance_annot.annotations-annot.annotation-grp">
  <title><sourcexml>leg:comntry/level/@leveltype="group"</sourcexml> to
      <targetxml>annot:annotations/annot:annotation-grp/annot:annotation-grp</targetxml> <lnpid>id-CCCC-10375</lnpid></title>
  <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>@leveltype="group"</sourcexml>
            <b>becomes</b>
            <targetxml>annot:annotation-grp</targetxml> with optional attributes and  child
            elements converted as: <ul>
              <li><sourcexml>@subdoc</sourcexml>
                <b>becomes</b>
                <targetxml>@includeintoc</targetxml></li>
              <li><sourcexml>@toc-caption</sourcexml>
                <b>becomes</b>
                <targetxml>@alternatetoccaption</targetxml></li>
              <li><sourcexml>heading/@searchtype</sourcexml>
                <b>becomes</b>
                <targetxml>annot:annotation-grp/@grptype="COMMENTARY"</targetxml>
              </li>
              <li><sourcexml>refpt</sourcexml>
                <b>becomes</b>
                <targetxml>ref:anchor</targetxml> and must be the first child in the sequence.
                Refer to the <xref href="Rosetta_refpt-LxAdv-ref.anchor.dita">refpt</xref>
                section for more information.</li>
              <li><sourcexml>heading/edpnum</sourcexml>
                <b>becomes</b>
                <targetxml>heading/desig</targetxml></li>
              <li><sourcexml>heading/title</sourcexml>
                <b>becomes</b>
                <targetxml>heading/title</targetxml></li>
              <li><sourcexml>bodytext</sourcexml>
                <b>becomes</b>
                <targetxml>annot:annotation/bodytext</targetxml></li>
            </ul>
            
            <pre>
              <b><i>Example: Source XML</i></b>                 

&lt;leg:comntry toc-caption="Reader's Guide" subdoc="true"&gt;
      &lt;heading searchtype="COMMENTARY"&gt;
          &lt;title&gt;
            &lt;refpt type="ext" id="CLSA.VOFF.ARRS.RGUIDE"/&gt;
            Reader's Guide
          &lt;/title&gt;
      &lt;/heading&gt;
      &lt;level 
        id="CLSA_VOFF.SGM_GROUP_2" 
        leveltype="group" 
        toc-caption="Aim of the Guide" 
        subdoc="true"&gt;
          &lt;heading searchtype="COMMENTARY"&gt;
              &lt;title&gt;
                &lt;refpt type="ext" id="CLSA.VOFF.29035-1"/&gt;
                Aim of the Guide
              &lt;/title&gt;
          &lt;/heading&gt;
          &lt;bodytext searchtype="COMMENTARY"&gt;
              &lt;p&gt;
                  &lt;text&gt;
                      The aim of this Guide...
                  &lt;/text&gt;
              &lt;/p&gt;
          &lt;/bodytext&gt;
      &lt;/level&gt;
  &lt;/leg:comntry&gt;
</pre>
            <pre>
              <b><i>Example: Target XML</i></b>

&lt;annot:annotations&gt;
    &lt;annot:annotation-grp 
      grptype="COMMENTARY" 
      alternatetoccaption="Reader's Guide" 
      includeintoc="true"&gt;
        &lt;ref:anchor 
          id="CLSA.VOFF.ARRS.RGUIDE" 
          anchortype="global"/&gt;
        &lt;heading&gt;
          &lt;title&gt;Reader's Guide&lt;/title&gt;
        &lt;/heading&gt;
          &lt;annot:annotation-grp 
            xml:id="CLSA_VOFF.SGM_GROUP_2" 
            grptype="COMMENTARY" 
            alternatetoccaption="Aim of the Guide" 
            includeintoc="true"&gt;
                &lt;ref:anchor 
                  id="CLSA.VOFF.29035-1" 
                  anchortype="global"/&gt;
                &lt;heading&gt;
                  &lt;title&gt;Aim of the Guide&lt;/title&gt;
                &lt;/heading&gt;
            &lt;annot:annotation&gt;
              &lt;bodytext&gt;
                &lt;p&gt;
                  &lt;text&gt;
                    The aim of this Guide ...
                  &lt;/text&gt;
                &lt;/p&gt;
              &lt;/bodytext&gt;
            &lt;/annot:annotation&gt;
         &lt;/annot:annotation-grp&gt;
    &lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;

</pre>
            <note>For the scenario, <sourcexml>leg:comntry/level/glp:note</sourcexml> add a
              attribute value <targetxml>@notetype="xref"</targetxml> to note in order to
              distinguish from other notes.</note>
            <note>If <sourcexml>glp:note</sourcexml> occurs before <sourcexml>heading</sourcexml> then move the <sourcexml>note</sourcexml> inside <targetxml>bodytext</targetxml> after <targetxml>heading</targetxml>.</note>
            <note>Refer common markup for handling of <xref href="Rosetta_glp.note-LxAdv-note.dita">glp:note</xref>.</note>
            <note>For handling of <sourcexml>glp:note/blockquote/hrule</sourcexml> omit
              <sourcexml>hrule</sourcexml> and presentation stylesheet will handle
              formatting.</note>
          </li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.comntry-level_LEVELTYPE_GROUP-LxAdv-annot.annotations-annot.annotation-grp.dita  -->

<!-- this is entirely identical to the comm.intro module and therefore the comm.intro module is handled here -->
	<xsl:template match="level[ancestor::leg:comntry][@leveltype=('group' , 'comm.intro')]">
		<!--  Original Target XPath:  annot:annotations/annot:annotation-grp/annot:annotation-grp   -->
			<annot:annotation-grp>
			  <xsl:if test="heading[@searchtype='COMMENTARY'] or heading[contains(title, '[Commentary]')]">
		    <xsl:attribute name="grptype" select="'COMMENTARY'"/>
		  </xsl:if>			    
				<xsl:apply-templates select="@*"/>
		    <xsl:apply-templates select="refpt | heading//refpt | bodytext/refpt"/>
				<!-- JD: 2017-08-08: added NZ06 here and to exclusion list below in order to match DT output (output header within <annot:annotation-grp> per instruction in DITA above, rather than within <annot:annotation>). -->
				<xsl:apply-templates select="heading[$streamID=('AU08','AU04','NZ06' , 'NZ12', 'AU18')]"/>
			  <!-- paul: see AU08 PS2017050300592679148LNIAUCOURTRULES_input_crimproc10061174.xml where heading is in group not in annotation  -->
			  <xsl:if test="*[not(self::levelinfo[source_docinfo:currencystatement] or self::level or self::refpt or self::glp:note or self::heading[$streamID=('AU04', 'AU08' , 'NZ12', 'AU18')])]">
			    <annot:annotation>
			      <xsl:choose>
			        <xsl:when test="heading[preceding-sibling::glp:note]">
			          <xsl:apply-templates select="node() except (refpt | glp:note | heading[$streamID=('AU08', 'AU04','NZ06' , 'NZ12')])"/>
			        </xsl:when>
			        <xsl:otherwise>
			          <xsl:apply-templates select="node() except (level |refpt | heading[$streamID=('AU08', 'AU04','NZ06' , 'NZ12', 'AU18')])"/>
			        </xsl:otherwise>
			      </xsl:choose>
			    </annot:annotation>
			  </xsl:if>
			  <xsl:apply-templates select="level"/>
		</annot:annotation-grp>
	</xsl:template>

<!-- note: we need to do something about refpt moving holistically. Where are the target, valid places? -->


  <!-- suppress the output of leg:comntry descendant level/@leveltype or else it gets copied. This should cover all leveltypes -->
  <xsl:template match="level[ancestor::leg:comntry]/@leveltype"/>
  
  <!-- JL I guess the instructions means this? 
  JL 20171012 removed because it is ambiguous with same-output template for leg:comntry-->
  <!--<xsl:template match="level[ancestor::leg:comntry]/glp:note/blockquote/hrule"/>-->



</xsl:stylesheet>