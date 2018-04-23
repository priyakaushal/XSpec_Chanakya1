<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
  xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
  version="2.0" exclude-result-prefixes="dita case dig">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.constituent-to-LexisAdvance_courtcase.counsel">
    <title>case:constituent-to-courtcase:counsel <lnpid>id-UK03-27414</lnpid></title>
    <body>
      <p>
        <b>There may be two scenarios:</b>
      </p>
      <p>
        <ul>
          <li>
            <b>Scenario 1:</b>
            <sourcexml>dig:body/dig:info/case:info/case:constituents</sourcexml> becomes <targetxml>casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:representation</targetxml>.
              <sourcexml>dig:body/dig:info/case:info/case:constituents/pgrp</sourcexml> becomes <targetxml>casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:representation/courtcase:arguments/bodytext/pgrp</targetxml>. The children can
            be converted as follows: <ul>
              <li>
                <sourcexml>dig:body/dig:info/case:info/case:constituents/case:constituent</sourcexml> becomes <targetxml>casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:representation/courtcase:counsel</targetxml>. <note>The source
                  attribute <sourcexml>case:constituents/@display-name</sourcexml> can be ignored. LBU has indicated the standardized headings in the UX samples and will be handled in stylesheets.</note>
              </li>
            </ul>
            <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:constituents display-name="Representation"&gt;
          &lt;case:constituent&gt;
            &lt;person&gt;
              &lt;name.text&gt;Turner Peacock, agents for Daniel &amp;amp; Cruttwell, Frome; Knapp-Fishers.&lt;/name.text&gt;
            &lt;/person&gt;
          &lt;/case:constituent&gt;
        &lt;/case:constituents&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;casedigest:appearances&gt;
        &lt;courtcase:representation&gt;
          &lt;courtcase:counsel&gt;
            &lt;person:counselor&gt;
              &lt;person:person&gt;
                &lt;person:name.text&gt;Turner Peacock, agents for Daniel &amp;amp; Cruttwell, Frome; Knapp-Fishers.&lt;/person:name.text&gt;
              &lt;/person:person&gt;
            &lt;/person:counselor&gt;
          &lt;/courtcase:counsel&gt;
        &lt;/courtcase:representation&gt;
      &lt;/casedigest:appearances&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
          </li>

          <li>
            <b>Scenario 2:</b>
            <sourcexml>dig:body/level/bodytext/case:embeddedcase/case:content/case:judgments/case:constituents</sourcexml> becomes
              <targetxml>casedigest:body/section/bodytext/courtcase:caseexcerpt/courtcase:body/courtcase:opinions/courtcase:representation</targetxml>. The children can be converted as follows: <ul>
              <li>
                <sourcexml>dig:body/level/bodytext/case:embeddedcase/case:content/case:judgments/case:constituents/case:constituent</sourcexml> becomes
                  <targetxml>casedigest:body/section/bodytext/courtcase:caseexcerpt/courtcase:body/courtcase:opinions/courtcase:representation/courtcase:counsel</targetxml>. </li>
            </ul>
            <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;level&gt;
      &lt;bodytext&gt;
        &lt;case:embeddedcase&gt;
          &lt;case:content&gt;
            &lt;case:judgments&gt;
              &lt;case:constituents&gt;
                &lt;case:constituent&gt;Mr Jonathan Rayner James, QC and Mr Michael
                    Jefferis for Mr Venables; Mr Philip Heslop, QC and Mr Jonathana
                    Crow for the applicants.
                &lt;/case:constituent&gt;
              &lt;/case:constituents&gt;
            &lt;/case:judgments&gt;
          &lt;/case:content&gt;
        &lt;/case:embeddedcase&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;section&gt;
      &lt;bodytext&gt;
        &lt;courtcase:caseexcerpt&gt;
          &lt;courtcase:content&gt;
            &lt;courtcase:opinions&gt;
              &lt;courtcase:representation&gt;
                &lt;courtcase:counsel&gt;Mr Jonathan Rayner James, QC and Mr Michael
                    Jefferis for Mr Venables; Mr Philip Heslop, QC and Mr Jonathana
                    Crow for the applicants.                
                &lt;/courtcase:counsel&gt;
              &lt;/courtcase:representation&gt;
            &lt;/courtcase:opinions&gt;
          &lt;/courtcase:content&gt;
        &lt;/courtcase:caseexcerpt&gt;
      &lt;/bodytext&gt;
    &lt;/section&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
          </li>
        </ul>
        <note>If input sceanrio is "<sourcexml>/dig:info/case:info/case:litigants/case:constituents/case:constituent/person/name.text</sourcexml>" the it should be mapped with target
            "<targetxml>/casedigest:caseinfo/casedigest:appearances/courtcase:representation/courtcase:counsel/person:counselor/person:person/person:name.text</targetxml>" and suppressed the <sourcexml>case:litigants</sourcexml> in target conversion.
          Refer the input and target example snippet:
          <pre>

&lt;DIGESTDOC&gt;
    &lt;dig:body&gt;
        &lt;dig:info&gt;
            &lt;case:info&gt;
                &lt;case:litigants&gt;
                    &lt;case:constituents&gt;
                        &lt;case:constituent&gt;
                            &lt;person&gt;
                                &lt;name.text&gt;HER MAJESTY’S REVENUE AND CUSTOMS&lt;/name.text&gt;
                            &lt;/person&gt;
                        &lt;/case:constituent&gt;
                        &lt;case:constituent&gt;
                            &lt;person&gt;
                                &lt;name.text&gt;HER MAJESTY’S REVENUE AND CUSTOMS&lt;/name.text&gt;
                            &lt;/person&gt;
                        &lt;/case:constituent&gt;
                    &lt;/case:constituents&gt;
                &lt;/case:litigants&gt;
            &lt;/case:info&gt;
        &lt;/dig:info&gt;
    &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;casedigest:appearances&gt;
        &lt;courtcase:representation&gt;
          &lt;courtcase:counsel&gt;
            &lt;person:counselor&gt;
              &lt;person:person&gt;
                &lt;person:name.text&gt;HER MAJESTY’S REVENUE AND CUSTOMS&lt;/person:name.text&gt;
              &lt;/person:person&gt;
            &lt;/person:counselor&gt;
          &lt;/courtcase:counsel&gt;
          &lt;courtcase:counsel&gt;
            &lt;person:counselor&gt;
              &lt;person:person&gt;
                &lt;person:name.text&gt;HER MAJESTY’S REVENUE AND CUSTOMS&lt;/person:name.text&gt;
              &lt;/person:person&gt;
            &lt;/person:counselor&gt;
          &lt;/courtcase:counsel&gt;
        &lt;/courtcase:representation&gt;
      &lt;/casedigest:appearances&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
        </note>
      </p>
      <section>
        <title>Changes</title>
        <p>2016-02-22: <ph id="change_20160222_SS">Added a note for handling scenario "<sourcexml>case:info/case:litigants/case:constituents/case:constituent/person/name.text</sourcexml>". RFA #<b>2769</b></ph></p>
        <p>2013-07-19: <ph id="change_20130719_DSF">Changed the target XPath for Scenario 1 to <b>casedigest:head</b>/casedigest:caseinfo/casedigest:appearances/courtcase:representation.</ph></p>
        <p>2014-01-24: <ph id="change_20140124_SS">Added the note and example for handling the attribute <sourcexml>[@display-name]</sourcexml> in <sourcexml>case:constituents</sourcexml> element.</ph></p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.constituent-to-LexisAdvance_courtcase.counsel.dita  -->

  <xsl:template match="case:constituents">
    <casedigest:appearances>
      <!-- CSN - 2017-11-21 - Webstar 7051058 - handle p. -->
      <xsl:for-each-group select="*" group-adjacent="if (self::note or self::p) then 0 else 1">
        <xsl:choose>
          <xsl:when test="current-grouping-key() = 0">
            <courtcase:representation>
              <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:apply-templates select="current-group()"/>
              </bodytext>
            </courtcase:representation>
          </xsl:when>
          <xsl:otherwise>
            <courtcase:representation>
              <xsl:apply-templates select="current-group()"/>
            </courtcase:representation>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each-group>
    </casedigest:appearances>
  </xsl:template>

  <xsl:template match="case:constituents[parent::case:judgments]">
    <courtcase:representation>
      <xsl:apply-templates select="@* | node()"/>
    </courtcase:representation>
  </xsl:template>

  <xsl:template match="case:constituent">
    <xsl:element name="courtcase:counsel">
      <xsl:apply-templates select="@* | node()"/>
    </xsl:element>
  </xsl:template>

  <!-- CSN - 2017-11-29 - Webstar 7058157 - no requirements for this attribute so suppress -->
  <xsl:template match="case:constituent/@constituenttype"/>
  
  <xsl:template match="case:constituent/person">
    <person:counselor>
      <person:person>
        <xsl:apply-templates select="@* | node()"/>
      </person:person>
    </person:counselor>
  </xsl:template>

  <xsl:template match="case:litigants">
    <xsl:apply-templates select="node() except text() | @*"/>
    <!-- CSN - 2017/10/21 - default any text to party -->
    <!-- CSN - 2017/11/03 - Webstar 7040040 - Input docs are incorrectly indented so doing this to ignore indention space -->
    <!-- <xsl:if test="text()"> -->
    <xsl:if test="text()[normalize-space(.) != '']">
      <casedigest:appearances>
        <courtcase:parties>
          <courtcase:party partyrole="unknown">
            <xsl:apply-templates select="text()"/>
          </courtcase:party>
        </courtcase:parties>
      </casedigest:appearances>
    </xsl:if>
  </xsl:template>

  <xsl:template match="case:constituents/@display-name"/>

</xsl:stylesheet>
