<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"  xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita case dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.judges-to-LexisAdvance_courtcase.judges">
  <title>case:judges-to-courtcase:judges <lnpid>id-UK03-27430</lnpid></title>
  <body>
    <p>
      <ul>
        <li>
          <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:judges</sourcexml> becomes
            <targetxml>casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:panel/courtcase:judges</targetxml>.
          The source attribute <sourcexml>case:judges/@display-name</sourcexml> can be ignored. LBU
          has indicated the standardized headings in the UX samples and will be handled in
          stylesheets. The child element is described below: <ul>
            <li>
              <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:judges/case:judge</sourcexml>
              becomes
                <targetxml>casedigest:head/casedigest:caseinfo/casedigest:appearances/courtcase:panel/courtcase:judges/person:judge</targetxml>.
              The source attribute <sourcexml>case:judges/case:judge/@display-name</sourcexml> is
              dropped. </li>
          </ul>
          <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
         &lt;case:courtinfo&gt;
             &lt;case:judges&gt;
                &lt;case:judge&gt;SIR R. MALINS, V.C.&lt;/case:judge&gt;
             &lt;/case:judges&gt;
         &lt;/case:courtinfo&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;casedigest:appearances&gt;
         &lt;courtcase:panel&gt;
           &lt;courtcase:judges&gt;
              &lt;person:judge&gt;SIR R. MALINS, V.C.&lt;/person:judge&gt;
           &lt;/courtcase:judges&gt;
         &lt;/courtcase:panel&gt;
      &lt;/casedigest:appearances&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
          <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
         &lt;case:courtinfo&gt;
            &lt;case:judges display-name="Judges"&gt;MICHAEL TILDESLEY OBE; CHRISTOPHER JENKINS&lt;/case:judges&gt;
         &lt;/case:courtinfo&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;casedigest:appearances&gt;
         &lt;courtcase:panel&gt;
           &lt;courtcase:judges&gt;MICHAEL TILDESLEY OBE; CHRISTOPHER JENKINS&lt;/courtcase:judges&gt;
         &lt;/courtcase:panel&gt;
      &lt;/casedigest:appearances&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
        </li>
      </ul>
    </p>
    <section>
      <title>Changes</title>
      <p>2013-07-19: <ph id="change_20130719_DSF">Changed the target XPaths to
            <b>casedigest:head</b>/casedigest:caseinfo/jurisinfo:courtinfo/casedigest:appearances/courtcase:panel/courtcase:judges
          and
          <b>casedigest:head</b>/casedigest:caseinfo/jurisinfo:courtinfo/casedigest:appearances/courtcase:panel/courtcase:judges/person:judge</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.judges-to-LexisAdvance_courtcase.judges.dita  -->

  <!-- CSN - 2017-11-29 - Webstar 7058157 - previous code created invalid construct courtcase:judges/courtcase:judges -->
  <xsl:template match="case:judges">
    <xsl:choose>
      <xsl:when test="parent::case:courtinfo/parent::case:info/parent::case:headnote">
        <courtcase:panel>
          <courtcase:judges>
            <xsl:apply-templates select="@* | node()"/> 
          </courtcase:judges>
        </courtcase:panel>     
      </xsl:when>
      <xsl:when test="parent::case:courtinfo/parent::case:judgment">
        <courtcase:opinionby>
          <xsl:apply-templates/>
        </courtcase:opinionby>
      </xsl:when>
      <xsl:otherwise>
        <casedigest:appearances>
          <courtcase:panel>
            <courtcase:judges>
              <xsl:apply-templates select="@* | node()"/>
            </courtcase:judges>
          </courtcase:panel>
        </casedigest:appearances>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="case:judge[parent::case:judges[parent::case:courtinfo[parent::case:judgment]]]">
    <person:judge>
      <person:person>
        <person:name.text>
          <xsl:apply-templates select="node()"/>
        </person:name.text>
      </person:person>
    </person:judge>
      </xsl:template>
  
  <xsl:template match="case:judge">
    <person:judge>
      <xsl:apply-templates select="node()"/>
    </person:judge>
  </xsl:template>
  
  <xsl:template match="case:judges/@display-name"/>
  


</xsl:stylesheet>