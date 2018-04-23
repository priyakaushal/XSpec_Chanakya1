<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="HK07_leg.comntry">
  <title><sourcexml>leg:comntry</sourcexml>
    <lnpid>id-HK07-37412</lnpid></title>
  <body>
    <section>
      <p>
        <sourcexml>leg:comntry</sourcexml> becomes
          <targetxml>annot:annotations/annot:annotation-grp</targetxml> with optional attributes and
        child elements converted as: <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes
              <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the
            first child in the sequence. Please refer to General Markup Section for handling
              <sourcexml>refpt</sourcexml>.</li>
          <li><sourcexml>heading/edpnum</sourcexml> becomes
            <targetxml>heading/desig</targetxml></li>
          <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
        </ul>
        <ul>
          <li><b><sourcexml>leg:comntry</sourcexml> encountered in following scenarios:</b>
            <ul>
              <li><sourcexml>level/bodytext/leg:comntry/level</sourcexml> becomes
                  <targetxml>seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml>
                with following attributes: <ul>
                  <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                  <li><sourcexml>@subdoc</sourcexml> becomes
                    <targetxml>@includeintoc</targetxml></li>
                  <li><sourcexml>@toc-caption</sourcexml> becomes
                      <targetxml>@alternatetoccaption</targetxml></li>
                  <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>and must
                    be the first child in the sequence. Please refer to General Markup Section for
                    handling <sourcexml>refpt</sourcexml>.</li>
                  <li><sourcexml>heading/edpnum</sourcexml> becomes
                      <targetxml>heading/desig</targetxml></li>
                  <li><sourcexml>heading/title</sourcexml> becomes
                      <targetxml>heading/title</targetxml></li>
                  <li><sourcexml>level/bodytext</sourcexml> becomes
                      <targetxml>annot:annotation/bodytext</targetxml></li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </p>
      <p>Conversion of nested <sourcexml>level</sourcexml> element:</p>
      <p><sourcexml>level/bodytext/leg:comntry/level/level</sourcexml> becomes <targetxml>seclaw:level/seclaw:bodytext/primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel</targetxml> with following attributes:
        <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the first child in the sequence. Please refer to General Markup Section for handling <sourcexml>refpt</sourcexml>.</li>
          <li><sourcexml>heading/edpnum</sourcexml> becomes <targetxml>heading/desig</targetxml></li>
          <li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
          <li><sourcexml>level/bodytext</sourcexml> becomes <targetxml>annot:annotationlevel/annot:bodytext</targetxml>
            <note><targetxml>annot:bodytext</targetxml> is required element in <targetxml>annot:annotationlevel</targetxml>.</note>
          </li>
        </ul>
      </p>
      <p><sourcexml>glp:note</sourcexml> as direct child of <sourcexml>leg:comntry/level</sourcexml></p>
      <p>NL schema is not allowed <targetxml>note</targetxml> as direct child of <targetxml>annot:annotation</targetxml> and <targetxml>annot:annotationlevel</targetxml>. Please refer to below list for handling <sourcexml>glp:note</sourcexml> scenarios:
        <ul>
          <li><sourcexml>leg:comntry/level/glp:note</sourcexml> becomes <targetxml>primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/bodytext/note</targetxml></li>
          <li><sourcexml>leg:comntry/level/level/glp:note</sourcexml> becomes <targetxml>primlaw:excerpt/primlaw:level/annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel/annot:bodytext/note</targetxml></li>
        </ul>
      </p>
      <pre>
&lt;leg:comntry subdoc="true" toc-caption="Commentary"&gt;
    &lt;level id="HKPI_DIV1_PD18.1_1558.0" leveltype="para0" subdoc="false" toc-caption=""&gt;
        &lt;heading searchtype="COMMENTARY"/&gt;
        &lt;level id="HKPI_DIV1_PD18.1_1558" leveltype="subpara0" subdoc="false" toc-caption=""&gt;
            &lt;heading searchtype="COMMENTARY"&gt;
                &lt;edpnum&gt;
                    &lt;refpt id="HKPI_DIV1_PD18.1_1558" type="ext"/&gt;[1558] &lt;/edpnum&gt;
            &lt;/heading&gt;
            &lt;bodytext searchtype="COMMENTARY"&gt;
                ...
            &lt;/bodytext&gt;
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/leg:comntry&gt;
      </pre>
      <p><b>becomes</b></p>
      <pre>
&lt;seclaw:bodytext&gt;
    &lt;primlaw:excerpt&gt;
        &lt;primlaw:level leveltype="unclassified"&gt;
            &lt;annot:annotations&gt;
                &lt;annot:annotation-grp grptype="COMMENTARY" includeintoc="true"
                    alternatetoccaption="Commentary"&gt;
                    &lt;annot:annotation xml:id="HKPI_DIV1_PD18.1_1558.0" includeintoc="false"
                        alternatetoccaption=""&gt;
                        &lt;heading/&gt;
                        &lt;annot:annotationlevel&gt;
                            &lt;heading&gt;
                                &lt;desig&gt;[1558]&lt;/desig&gt;
                            &lt;/heading&gt;
                            &lt;annot:bodytext&gt;
                                ...
                            &lt;/annot:bodytext&gt;
                        &lt;/annot:annotationlevel&gt;
                    &lt;/annot:annotation&gt;
                &lt;/annot:annotation-grp&gt;
            &lt;/annot:annotations&gt;
        &lt;/primlaw:level&gt;
    &lt;/primlaw:excerpt&gt;
&lt;/seclaw:bodytext&gt;
      </pre>      
    </section>
    <section>
      <title>Change Log</title>
      <p>2016-04-12: <ph id="change_20160412_PS">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK07_Commentary\HK07_leg.comntry.dita  -->
	
	
	<xsl:template match="leg:comntry">
		<primlaw:excerpt>
			<primlaw:level>
			  <xsl:attribute name="leveltype">
			    <xsl:text>unclassified</xsl:text>
			  </xsl:attribute>
		<annot:annotations>
			<annot:annotation-grp>
				<xsl:attribute name="grptype">
					<xsl:text>COMMENTARY</xsl:text>
				</xsl:attribute>
			  <xsl:attribute name="includeintoc">
			    <xsl:value-of select="./level[1]/@subdoc"/>
			  </xsl:attribute>
			  
			  <xsl:attribute name="alternatetoccaption">
			    <xsl:value-of select="./level[1]/@toc-caption"/>
			  </xsl:attribute>
			 <!-- <xsl:call-template name="subdoc"/>
			  <xsl:call-template name="toc-caption"/>-->
			 <!-- <xsl:apply-templates select="@id"/>-->				
				<!--<xsl:apply-templates/>-->
			  <xsl:choose>
			    
			  <!--  <xsl:when test=".[ancestor::level][parent::bodytext][child::level/level]">
			    <!-\-<xsl:when test="ancestor::level and parent::bodytext and child::level/level">-\->
			      <annot:annotation>
			       
			            <xsl:apply-templates select="@* | node()"/>
			      </annot:annotation>
			    </xsl:when>-->
			    <xsl:when test=".[ancestor::level][parent::bodytext][child::level[@leveltype='prec.grp']]">
			      <!-- SS - 2017-11-24: Added annot:annotation/bodytext markup as a parent for allowing child form:form in LA-->
			      <annot:annotation>
			        <bodytext>
			          <xsl:apply-templates select="child::node()"/>
			        </bodytext>
			      </annot:annotation>
			    </xsl:when>
			    <xsl:when test=".[ancestor::level][parent::bodytext][child::level]">
			      <!-- Awantika: Commenting annot:annotation and creating it in level where parent is leg:comntry -->
			      <!--<annot:annotation>-->
			        <xsl:apply-templates select="@* | node()"/>
			      <!--</annot:annotation>-->
			    </xsl:when>
			    <xsl:otherwise>
			      <xsl:apply-templates select="@* | node()"/>
			    </xsl:otherwise>
			  </xsl:choose>			  
			</annot:annotation-grp>		 
		</annot:annotations>
			</primlaw:level>
		</primlaw:excerpt>
	</xsl:template>

<xsl:template match="glp:note[ancestor::leg:comntry and parent::level]">
  <annot:annotation>
    <bodytext>
      <note>
        <xsl:apply-templates select="@* | node()"/>
      </note>
    </bodytext>
  </annot:annotation>
</xsl:template>
 
  <xsl:template match="glp:note[preceding::leg:comntry and ancestor::level and parent::level]">
    <annot:annotation>
      <annot:annotationlevel>
        <annot:bodytext>
          <note>
            <xsl:apply-templates select="@* | node()"/>
          </note>
        </annot:bodytext>
      </annot:annotationlevel>
    </annot:annotation>
  </xsl:template>
</xsl:stylesheet>