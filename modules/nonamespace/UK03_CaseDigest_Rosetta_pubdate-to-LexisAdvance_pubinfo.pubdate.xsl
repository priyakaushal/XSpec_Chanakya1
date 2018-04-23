<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
  xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
  xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita case casedigest pubinfo dig">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_pubdate-to-LexisAdvance_pubinfo.pubdate">
    <title>pubdate-to-pubinfo:pubdate <lnpid>id-UK03-27454</lnpid></title>
    <body>
      <p>
        <ul>
          <li>
            <sourcexml>pubdate</sourcexml> becomes <targetxml>casedigest:casedigest/doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate</targetxml>. <note>LBU has confirmed that <sourcexml>pubdate</sourcexml> can be moved to
                <targetxml>doc:metadata</targetxml> and <b><i>stylesheet needs to move this to appropriate display.</i></b></note> The child element is described below : <ul>
              <li>
                <sourcexml>pubdate @day="" month="" @year=""/date</sourcexml> becomes <targetxml>casedigest:casedigest/doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate @day="" month="" @year=""/date-text</targetxml>. </li>
            </ul>
          </li>
        </ul>
        <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
     &lt;pubdate searchtype="CAW-PUB-DATE" display-name="Published Date"&gt;
        &lt;date day="06" month="10" year="2009"&gt;6 October 2009&lt;/date&gt;
      &lt;/pubdate&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:dates&gt;
        &lt;pubinfo:pubdate day="06" month="10" year="2009"&gt;
          &lt;date-text&gt;6 October 2009&lt;/date-text&gt;
        &lt;/pubindo:pubdate&gt;
      &lt;/pubinfo:dates&gt;
    &lt;/pubinfo:pubinfo&gt;
  &lt;/doc:metadata&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
      </p>
      <section>
        <title>Created</title>
        <p>2015-08-12</p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_pubdate-to-LexisAdvance_pubinfo.pubdate.dita  -->

  <!-- Vikas Rohilla : Created the Template pubdate and creates the pubinfo:dates	-->
  <!--Vikas Rohilla : Template to match the pubdate and creates the pubinfo:dates/pubinfo:pubdate -->

  <xsl:template match="pubdate[@display-name = 'Issue Date']"/>
  

  <xsl:template match="pubdate[@display-name = 'Published Date']"/>

  <xsl:template match="pubdate/@display-name"/>

  <xsl:template match="pubdate/@searchtype"/>

  <xsl:template match="pubdate/date/@day">
    <xsl:attribute name="day">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="pubdate/date/@month">
    <xsl:attribute name="month">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </xsl:template>
  
  <xsl:template match="pubdate/date/@year">
    <xsl:attribute name="year">
      <xsl:value-of select="."/>
    </xsl:attribute>
    <!-- if @day and @month are also present create @normdate -->
    <xsl:if test="parent::date/@day and parent::date/@month">
      <xsl:attribute name="normdate">
        <xsl:value-of select="concat(.,'-',parent::date/@month,'-',parent::date/@day)"/>
      </xsl:attribute>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="pubdate[@display-name=('Issue Date','Published Date')]/date">
    <date-text>
      <xsl:apply-templates select="node()"/>
    </date-text>
  </xsl:template>
  
  <!-- CSN - 2017/10/13 - The CI and DT dropped case:pubinfo so dropping it here also -->
  <xsl:template match="case:pubinfo"/>

</xsl:stylesheet>
