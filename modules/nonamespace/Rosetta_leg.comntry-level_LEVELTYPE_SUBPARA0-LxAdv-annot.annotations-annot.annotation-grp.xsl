<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" 
  xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_leg.comntry-level_LEVELTYPE_SUBPARA0-to-LexisAdvance_annot.annotations-annot.annotation-grp">
  <title><sourcexml>leg:comntry/level @leveltype="subpara0"</sourcexml> to <targetxml>annot:annotations/annot:annotation-grp/annot:annotation/annot:annotationlevel</targetxml> <lnpid>id-CCCC-10377</lnpid></title>
  <body>
    <section>
      <p>
        <ul>
          <li><sourcexml>@leveltype="subpara0"</sourcexml>
            <b>becomes</b>
            <targetxml>annot:annotationlevel</targetxml> with optional attributes and child elements converted as: <ul>
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
                <targetxml>bodytext</targetxml></li>
            </ul>
            
            <pre>
              <b><i>Example: Source XML</i></b>                 

&lt;leg:comntry subdoc="true" toc-caption="Commentary"&gt;
	&lt;level id="ACLL_CCPA.SGM_GROUP_2" leveltype="para0" toc-caption="Outline" subdoc="true"&gt;
		&lt;heading searchtype="COMMENTARY"&gt;&lt;title&gt;Outline&lt;/title&gt;&lt;/heading&gt;
		&lt;bodytext searchtype="COMMENTARY"&gt;
			&lt;p&gt;&lt;text&gt;The Corporations (Commonwealth Powers) Acts 2001 [State] are Acts which....&lt;/text&gt;&lt;/p&gt;
		&lt;/bodytext&gt;
		&lt;level id="ACLL_CCPA.SGM_GROUP_3" leveltype="subpara0" toc-caption="Provisions" subdoc="true"&gt;
			&lt;heading searchtype="COMMENTARY"&gt;&lt;title&gt;Provisions&lt;/title&gt;&lt;/heading&gt;
			&lt;bodytext searchtype="COMMENTARY"&gt;
				&lt;p&gt;&lt;text&gt;This Act enacts ancillary provisions, including transitional provisions...&lt;/text&gt;&lt;/p&gt;
			&lt;/bodytext&gt;
		&lt;/level&gt;
	&lt;/level&gt;
&lt;/leg:comntry&gt;
</pre>
            <pre>
              <b><i>Example: Target XML</i></b>
              

&lt;annot:annotations&gt;
	&lt;annot:annotation-grp alternatetoccaption="Commentary" includeintoc="true"&gt;
		&lt;annot:annotation xml:id="ACLL_CCPA.SGM_GROUP_2" alternatetoccaption="Outline" includeintoc="true"&gt;
			&lt;heading&gt;&lt;title&gt;Outline&lt;/title&gt;&lt;/heading&gt;
			&lt;bodytext&gt;
				&lt;p&gt;&lt;text&gt;The Corporations (Commonwealth Powers) Acts 2001 [State] are Acts which....&lt;/text&gt;&lt;/p&gt;
			&lt;/bodytext&gt;
			&lt;annot:annotationlevel xml:id="ACLL_CCPA.SGM_GROUP_3" alternatetoccaption="Provisions" includeintoc="true"&gt;
				&lt;heading&gt;&lt;title&gt;Provisions&lt;/title&gt;&lt;/heading&gt;
				&lt;annot:bodytext&gt;
					&lt;p&gt;&lt;text&gt;This Act enacts ancillary provisions, including transitional provisions...&lt;/text&gt;&lt;/p&gt;
				&lt;/annot:bodytext&gt;
			&lt;/annot:annotationlevel&gt;
		&lt;/annot:annotation&gt;
	&lt;/annot:annotation-grp&gt;
&lt;/annot:annotations&gt;

                </pre>
          </li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_leg.comntry-level_LEVELTYPE_SUBPARA0-LxAdv-annot.annotations-annot.annotation-grp.dita  -->

	<xsl:template match="level[@leveltype='subpara0'][ancestor::leg:comntry]">
	  <annot:annotationlevel>
	    <xsl:apply-templates select="@*"/>
	    <xsl:apply-templates select="refpt | heading/descendant::refpt | bodytext/refpt"/>
	    <xsl:apply-templates select="heading"/>
	    <xsl:if test="child::*[not(self::refpt or self::heading)]">
	      <annot:bodytext>
	        <xsl:apply-templates select="node() except (heading | refpt)"/>
	      </annot:bodytext>
	    </xsl:if>
	  	<!-- JL: annot:bodytext is requires so do this if there is no content at all. -->
	  	<xsl:if test="not(child::*[not(self::refpt or self::heading)])">
	  		<annot:bodytext>
	  			<p xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"/>
	  		</annot:bodytext>
	  	</xsl:if>
	  </annot:annotationlevel>	  
		<!--<annot:annotationlevel>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="refpt | heading/descendant::refpt | bodytext/refpt"/>
			<xsl:apply-templates select="node() except (refpt | level)"/>
		  <xsl:if test="not(bodytext) and level">
		    <annot:bodytext>
		      <xsl:apply-templates select="node() except (heading)"/>
		    </annot:bodytext>
		  </xsl:if>
		</annot:annotationlevel>-->
	</xsl:template>	
  
  <xsl:template match="level[@leveltype='subpara0'][ancestor::leg:comntry]/bodytext">
      <xsl:apply-templates select="@* | node() except refpt"/>    
  </xsl:template>
</xsl:stylesheet>