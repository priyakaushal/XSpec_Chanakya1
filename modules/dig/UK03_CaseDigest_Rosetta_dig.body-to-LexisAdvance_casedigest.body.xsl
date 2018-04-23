<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:case="http://www.lexis-nexis.com/glp/case"
  xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita case dig">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.body-to-LexisAdvance_casedigest.body">
    <title>dig:body-to-casedigest:body <lnpid>id-UK03-27442</lnpid></title>
    <body>
      <p>
        <sourcexml>dig:body</sourcexml> becomes <targetxml>casedigest:body</targetxml>. <note>All content must be converted such that the order of elements is maintained whenever possible. Please see the <xref
            href="../../common_newest/Rosetta_Elements-LxAdv-Maintain_Sequential_Order.dita">'Maintain the Order of Elements Whenever Possible'</xref> section for more information.</note>
        <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;...
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;...&lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
      </p>
      <section>
        <title>Created</title>
        <p>2015-08-12</p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.body-to-LexisAdvance_casedigest.body.dita  -->

  <!-- CSN - 2017-11-27 - Webstar 7056763 - output proc:nocontent if no content -->
  <xsl:template match="dig:body">
    <casedigest:body>
      <xsl:choose>
        <xsl:when test="abstract | level | dig:cause-of-action | dig:damages | dig:info/note | dig:info/contrib | dig:info/references | dig:info/dig:title | dig:info/dig:subject">
          <xsl:apply-templates select="abstract | level | dig:cause-of-action | dig:damages | dig:info/note | dig:info/contrib | dig:info/references | dig:info/dig:title"/>
          <xsl:apply-templates select="dig:info/dig:subject"/>
        </xsl:when>
        <xsl:otherwise>
          <proc:nocontent/>
        </xsl:otherwise>
      </xsl:choose>
    </casedigest:body>
  </xsl:template>

</xsl:stylesheet>
