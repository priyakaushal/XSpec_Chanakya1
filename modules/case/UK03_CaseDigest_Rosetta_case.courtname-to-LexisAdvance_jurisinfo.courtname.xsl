<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/"
    xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" version="2.0" exclude-result-prefixes="dita case dig">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.courtname-to-LexisAdvance_jurisinfo.courtname">
        <title>case:courtname-to-jurisinfo:courtname <lnpid>id-UK03-27417</lnpid></title>
        <body>
            <p>
                <ul>
                    <li>
                        <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:courtname</sourcexml> becomes <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname</targetxml>. The source attribute
                            <sourcexml>case:courtname/@display-name</sourcexml> can be ignored. LBU has indicated the standardized headings in the UX samples and will be handled in stylesheets.
                        <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:info&gt;
      &lt;case:info&gt;
        &lt;case:courtinfo&gt;
          &lt;case:courtname display-name="Court"&gt;First-tier Tribunal (Tax)&lt;/case:courtname&gt;
        &lt;/case:courtinfo&gt;
      &lt;/case:info&gt;
    &lt;/dig:info&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
      &lt;jurisinfo:courtinfo&gt;
        &lt;jurisinfo:courtname&gt;First-tier Tribunal (Tax)&lt;/jurisinfo:courtname&gt;
      &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
  &lt;/casedigest:head&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
                    </li>
                </ul>
                <note>If <sourcexml>case:courtname</sourcexml> element comes under this Xpath "<sourcexml>/DIGESTDOC/dig:body/level/bodytext/case:embeddedcase/case:headnote/case:info/case:courtinfo</sourcexml>" in source then it should be mapped in target
                        "<targetxml>/casedigest:casedigest/casedigest:body/section/bodytext/courtcase:caseexcerp/courtcase:head/caseinfo:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname</targetxml>". Refer input and target examples.</note>
                <pre>

&lt;DIGESTDOC&gt;
    &lt;dig:body&gt;
        &lt;level leveltype="Summary"&gt;
            &lt;bodytext&gt;
                &lt;case:embeddedcase&gt;
                    &lt;case:headnote&gt;
                        &lt;case:info&gt;
                            &lt;case:casename&gt;Trollope &amp;amp; Colls Ltd v North West Metropolitan
                                Regional Hospital Board&lt;/case:casename&gt;
                            &lt;case:courtinfo&gt;
                                &lt;case:courtname&gt;House of Lords&lt;/case:courtname&gt;
                                &lt;case:courtcode&gt;HL&lt;/case:courtcode&gt;
                            &lt;/case:courtinfo&gt; ... &lt;/case:info&gt;
                    &lt;/case:headnote&gt;
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
                    &lt;courtcase:head&gt;
                        &lt;caseinfo:caseinfo&gt;
                            &lt;caseinfo:casename&gt;
                                &lt;caseinfo:fullcasename&gt;Trollope &amp;amp; Colls Ltd v North West Metropolitan
                                    Regional Hospital Board&lt;/caseinfo:fullcasename&gt;
                            &lt;/caseinfo:casename&gt;
                            &lt;jurisinfo:courtinfo&gt;
                                &lt;jurisinfo:courtname&gt;House of Lords&lt;/jurisinfo:courtname&gt;
                            &lt;/jurisinfo:courtinfo&gt;
                            &lt;jurisinfo:courtinfo&gt;
                                &lt;jurisinfo:alternatecourtcode alternatecourtcode="HL"/&gt;
                            &lt;/jurisinfo:courtinfo&gt;
                        &lt;/caseinfo:caseinfo&gt;
                    &lt;/courtcase:head&gt;
                &lt;/courtcase:caseexcerpt&gt;
            &lt;/bodytext&gt;
        &lt;/section&gt;
    &lt;/casedigest:body&gt;
    ...
    &lt;doc:legacy-metadata metadatasource="lbu-meta"/&gt;
    ...
    &lt;meta&gt;
        &lt;metaitem name="case:courtcode" value="HL"/&gt;
    &lt;/meta&gt;
    &lt;/doc:legacy-metadata&gt;
&lt;/casedigest:casedigest&gt;

</pre>
            </p>
            <section>
                <title>Changes</title>
                <p>2016-10-05: <ph id="change_20161005_SS">Added note for handling input xpath "<sourcexml>/dig:body/level/bodytext/case:embeddedcase/case:headnote/case:info/case:courtinfo/case:courtname</sourcexml>".</ph></p>
                <p>2013-07-19: <ph id="change_20130719_DSF">Changed the target XPath to <b>casedigest:head</b>/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:courtname.</ph></p>
            </section>
        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.courtname-to-LexisAdvance_jurisinfo.courtname.dita  -->

    <!--Vikas Rohilla : Updated the template Initial -->
    <xsl:template match="case:courtname">
        <jurisinfo:courtname>
            <xsl:if test="parent::case:courtinfo/abbrvname">
                <xsl:attribute name="normshortname">
                    <xsl:value-of select="parent::case:courtinfo/abbrvname"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:apply-templates select="@* | node()"/>
        </jurisinfo:courtname>
    </xsl:template>

    <xsl:template match="case:courtname/@display-name"/>

    <xsl:template match="case:courtname/nl">
        <proc:nl/>
    </xsl:template>

</xsl:stylesheet>
