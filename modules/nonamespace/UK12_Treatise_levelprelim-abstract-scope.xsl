<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/"
  xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita primlaw leg primlawinfo seclaw legisinfo legis jurisinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK12_Treatise_levelprelim-abstract-scope">
  <title>levelprelim, abstract, scope <lnpid>id-UK12-29819</lnpid></title>
  <body>
    <p><sourcexml>levelprelim</sourcexml> becomes <targetxml>seclaw:prelim</targetxml>. Children as follow:<ul>
        <li><sourcexml>abstract</sourcexml> becomes <targetxml>abstract/bodytext</targetxml></li>
        <li><sourcexml>scope</sourcexml> conversion depends on whether child
            <sourcexml>leg:info</sourcexml> is present. As follows:<ul>
            <li>If <sourcexml>scope</sourcexml> does <b>NOT</b> have child
                <sourcexml>leg:info</sourcexml>, then <sourcexml>scope</sourcexml> becomes
                <targetxml>unitscope/bodytext</targetxml></li>
            <li>If <sourcexml>scope</sourcexml>
              <b>DOES</b> have child <sourcexml>leg:info</sourcexml>, then
                <sourcexml>scope/leg:info</sourcexml> becomes
                <targetxml>primarysource/legis:legis/legis:head</targetxml>. Children as follow:<ul>
                <li><sourcexml>leg:officialname</sourcexml> becomes
                    <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>. <ul>
                    <li>Attribute <sourcexml>leg:officialname[@leg-signal]</sourcexml> is
                      suppressed. (Because content same as <sourcexml>leg:status</sourcexml>).</li>
                  </ul></li>
                <li><sourcexml>abbrvname</sourcexml> becomes
                    <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:names/abbrvname</targetxml></li>
                <li><sourcexml>leg:officialnum</sourcexml> becomes
                    <targetxml>primlawinfo:primlawinfo/primlawinfo:identifier[@idtype="officialnum"]</targetxml>.
                  With children:<ul>
                    <li><sourcexml>leg:year</sourcexml> becomes
                        <targetxml>primlawinfo:identifier-component[@type="year"]</targetxml></li>
                    <li><sourcexml>leg:seriesnum</sourcexml> becomes
                        <targetxml>primlawinfo:identifier-component[@type="seriesnum"]</targetxml></li>
                  </ul></li>
                <li><sourcexml>leg:juris/location/country</sourcexml> becomes
                    <targetxml>jurisinfo:legisbodyinfo/jurisinfo:approvedby/jurisinfo:govbodyname</targetxml></li>
                <li><sourcexml>leg:status</sourcexml> becomes
                    <targetxml>primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status/legisinfo:statustext</targetxml></li>
              </ul><note>Do not create multiple adjacent instances for the following containers
                (i.e. merge adjacent to single container): <targetxml>primlawinfo:primlawinfo,
                  legisinfo:legisinfo, legisinfo:names</targetxml>.</note></li>
          </ul></li>
      </ul></p>
    <pre>
        <b>EXAMPLE 1. <sourcexml>abstract</sourcexml>; and <sourcexml>scope</sourcexml> without child <sourcexml>leg:info</sourcexml></b>
            
<b><i>Source XML</i></b>

&lt;COMMENTARYDOC&gt;
  &lt;comm:body&gt;
    &lt;level leveltype="title"&gt;
      &lt;heading&gt;
        &lt;title&gt;Equality and human rights - overview&lt;/title&gt;
      &lt;/heading&gt;
      &lt;levelprelim&gt;
        &lt;scope&gt;
          &lt;p&gt;
            &lt;text&gt;Three main issues...&lt;/text&gt;
          &lt;/p&gt;
        &lt;/scope&gt;
        &lt;abstract&gt;
          &lt;p&gt;
            &lt;text&gt;This document is an overview of...&lt;/text&gt;
          &lt;/p&gt;
        &lt;/abstract&gt;
      &lt;/levelprelim&gt;
      &lt;bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;In the UK, the legislation governing...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:seclaw&gt;
  &lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="title"&gt;
      &lt;heading&gt;
        &lt;title&gt;Equality and human rights - overview&lt;/title&gt;
      &lt;/heading&gt;
      &lt;seclaw:prelim&gt;
        &lt;unitscope&gt;
          &lt;bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;Three main issues...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/bodytext&gt;
        &lt;/unitscope&gt;
        &lt;abstract&gt;
          &lt;bodytext&gt;
            &lt;p&gt;
              &lt;text&gt;This document is an overview of...&lt;/text&gt;
            &lt;/p&gt;
          &lt;/bodytext&gt;
        &lt;/abstract&gt;
      &lt;/seclaw:prelim&gt;
      &lt;seclaw:bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;In the UK, the legislation governing...&lt;/text&gt;
        &lt;/p&gt;
      &lt;/seclaw:bodytext&gt;
    &lt;/seclaw:level&gt;
  &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;

                </pre>
    <pre>
        <b>EXAMPLE 2. <sourcexml>scope</sourcexml> with child <sourcexml>leg:info</sourcexml></b>
            
<b><i>Source XML</i></b>

&lt;COMMENTARYDOC&gt;
  &lt;comm:body&gt;
    &lt;level&gt;
      &lt;levelprelim&gt;
        &lt;scope&gt;
          &lt;leg:info&gt;
            &lt;leg:officialname leg-signal="in-force"&gt;Education Act 2002&lt;/leg:officialname&gt;
            &lt;abbrvname&gt;EA 2002&lt;/abbrvname&gt;
            &lt;leg:officialnum&gt;
              &lt;leg:year&gt;2002&lt;/leg:year&gt;
              &lt;leg:seriesnum&gt;32&lt;/leg:seriesnum&gt;
            &lt;/leg:officialnum&gt;
            &lt;leg:juris&gt;
              &lt;location&gt;
                &lt;country&gt;UK Parliament (Westminster)&lt;/country&gt;
              &lt;/location&gt;
            &lt;/leg:juris&gt;
            &lt;leg:status&gt;in-force&lt;/leg:status&gt;
          &lt;/leg:info&gt;
        &lt;/scope&gt;
      &lt;/levelprelim&gt;
      &lt;!-- etc. --&gt;
    &lt;/level&gt;
  &lt;/comm:body&gt;
&lt;/COMMENTARYDOC&gt;
 
<b><i>Target XML</i></b>

&lt;seclaw:seclaw&gt;
  &lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="unclassified"&gt;
      &lt;seclaw:prelim&gt;
        &lt;primarysource&gt;
          &lt;legis:legis&gt;
            &lt;legis:head&gt;
              &lt;primlawinfo:primlawinfo&gt;
                &lt;legisinfo:legisinfo&gt;
                  &lt;legisinfo:names&gt;
                    &lt;legisinfo:officialtitle&gt;Education Act 2002&lt;/legisinfo:officialtitle&gt;
                    &lt;abbrvname&gt;EA 2002&lt;/abbrvname&gt;
                  &lt;/legisinfo:names&gt;
                  &lt;legisinfo:statusgroup&gt;
                    &lt;legisinfo:status&gt;
                      &lt;legisinfo:statustext&gt;in-force&lt;/legisinfo:statustext&gt;
                    &lt;/legisinfo:status&gt;
                  &lt;/legisinfo:statusgroup&gt;
                &lt;/legisinfo:legisinfo&gt;
                &lt;primlawinfo:identifier idtype="officialnum"&gt;
                  &lt;primlawinfo:identifier-component type="year"&gt;2002&lt;/primlawinfo:identifier-component&gt;
                  &lt;primlawinfo:identifier-component type="seriesnum"&gt;32&lt;/primlawinfo:identifier-component&gt;
                &lt;/primlawinfo:identifier&gt;
              &lt;/primlawinfo:primlawinfo&gt;
              &lt;jurisinfo:legisbodyinfo&gt;
                &lt;jurisinfo:approvedby&gt;
                  &lt;jurisinfo:govbodyname&gt;UK Parliament (Westminster)&lt;/jurisinfo:govbodyname&gt;
                &lt;/jurisinfo:approvedby&gt;
              &lt;/jurisinfo:legisbodyinfo&gt;
            &lt;/legis:head&gt;
          &lt;/legis:legis&gt;
        &lt;/primarysource&gt;
      &lt;/seclaw:prelim&gt;
      &lt;!-- etc --&gt;
    &lt;/seclaw:level&gt;
  &lt;/seclaw:body&gt;
&lt;/seclaw:seclaw&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2016-10-21: <ph id="change_20161021_jm">Added rule for <sourcexml>leg:status</sourcexml>.
          And changed rule for attribute <sourcexml>leg:officialname[@leg-signal]</sourcexml>. The
          attribute is now suppressed because same content as the recently added element
            <sourcexml>leg:status</sourcexml>. No new xpath.</ph></p>
      <p>2016-01-28: <ph id="change_20160128_jm">New rules. New target xpaths. Cover
            <sourcexml>leg:info</sourcexml> and children. Occur in Amendment Table docs. RFA
          2659.</ph></p>
      <p>2015-05-14: <ph id="change_20150514_jm">New rule. New target xpath. Maps
            <sourcexml>scope</sourcexml> to <targetxml>unitscope</targetxml>. Responds to new markup
          in recent UK12 data delivery. R4.5 Content Issue 2308.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK12-Treatise\UK12_Treatise_levelprelim-abstract-scope.dita  -->
<!--	<xsl:message>UK12_Treatise_levelprelim-abstract-scope.xsl requires manual development!</xsl:message> -->
  
  <xsl:template match="levelprelim">
    <seclaw:prelim>
      <xsl:apply-templates select="@* | node()"/>
    </seclaw:prelim>
  </xsl:template>
  
  <xsl:template match="abstract">
    <abstract>
      <bodytext>
        <xsl:apply-templates select="@* | node()"/>
      </bodytext>
    </abstract>
  </xsl:template>
  
  <xsl:template match="scope[not(child::leg:info)]">
    <unitscope>
      <bodytext>
        <xsl:apply-templates select="@* | node()"/>
      </bodytext>
    </unitscope>
  </xsl:template>
  
  <xsl:template match="scope[child::leg:info]">
    <primarysource>      
          <xsl:apply-templates select="@* | node()"/>
    </primarysource>
  </xsl:template>
  
  <xsl:template match="leg:status">
    <primlawinfo:primlawinfo>
      <legisinfo:legisinfo>
        <legisinfo:statusgroup>
          <legisinfo:status>
            <legisinfo:statustext>
              <xsl:apply-templates select="@*|node()"/>
              <xsl:if test="following-sibling::*[1][self::publication]">
                <xsl:text> </xsl:text>
                <xsl:apply-templates select="following-sibling::*[1][self::publication]" mode="UK12publication"/>
              </xsl:if>
            </legisinfo:statustext>
          </legisinfo:status>
        </legisinfo:statusgroup>
      </legisinfo:legisinfo>
    </primlawinfo:primlawinfo>
  </xsl:template>
  
  <xsl:template match="publication" mode="UK12publication">
    <xsl:apply-templates select="node()"/>
  </xsl:template>
  <xsl:template match="publication[parent::leg:info]"/>
  
  <xsl:template match="leg:juris">
    <jurisinfo:legisbodyinfo>
          <xsl:apply-templates select="@*|node()"/>
    </jurisinfo:legisbodyinfo>
  </xsl:template>
   
  <xsl:template match="leg:juris/location">
    <jurisinfo:approvedby>
      <xsl:apply-templates select="@*|node()"/>
    </jurisinfo:approvedby>
  </xsl:template>
  
  <xsl:template match="leg:juris/location/country">
    <jurisinfo:govbodyname>
      <xsl:apply-templates select="@*|node()"/>
    </jurisinfo:govbodyname>
  </xsl:template>
  
  
 
  
</xsl:stylesheet>