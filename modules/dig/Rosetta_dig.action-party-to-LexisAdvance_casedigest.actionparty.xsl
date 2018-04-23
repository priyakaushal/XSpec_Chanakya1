<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dig="http://www.lexis-nexis.com/glp/dig"
  xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case dig">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.action-party-to-LexisAdvance_casedigest.actionparty">
    <title>dig:action-party-to-casedigest:actionparty <lnpid>id-UK03-27441</lnpid></title>
    <body>
      <section>
        <p>
          <sourcexml>dig:cause-of-action/dig:action-party</sourcexml> becomes <targetxml>casedigest:body/casedigest:actionparty</targetxml>. Please note that <targetxml>casedigest:actionparty</targetxml> comes with a required attribute
            <targetxml>casedigest:actionparty/@partyrole</targetxml> with the value <targetxml>casedigest:actionparty/@partyrole="unknown"</targetxml>. The children can be converted as follows: <ul>
            <li>
              <sourcexml>dig:cause-of-action/dig:action-party/gender</sourcexml> becomes <targetxml>casedigest:body/casedigest:actionparty/person:gender</targetxml>. </li>
            <li>
              <sourcexml>dig:cause-of-action/dig:action-party/dig:age/age</sourcexml> becomes <targetxml>casedigest:body/casedigest:actionparty/person:age</targetxml>. <p><u><b>Rule</b></u>: If source documents comes with
                  “<sourcexml>dig:age/age</sourcexml>” markup then it should be mapped with <targetxml>person:age</targetxml> in target and it’s source attributes should be converted according to below list: <ul>
                  <li>The Surce attribute <sourcexml>dig:age/@type</sourcexml> becomes <targetxml>person:age/@agedesc</targetxml>.</li>
                  <li><sourcexml>dig:age/age@normval</sourcexml> becomes <targetxml>person:age/@ normval</targetxml>.</li>
                  <li>The source <sourcexml>dig:age/@searchtype</sourcexml> is dropped.</li>
                </ul>
              </p><note>The source attribute <sourcexml>dig:age/@display-name</sourcexml> can be ignored. LBU has indicated the standardized headings in the UX samples and will be handled in stylesheets.</note>
            </li>
          </ul>
          <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:cause-of-action&gt;
      &lt;dig:action-party&gt;
        &lt;dig:age searchtype="AGE-AT-INJURY" type="at-injury" display-name="Age at Injury"&gt;
          &lt;age&gt;18 Year(s) 0 Month(s)&lt;/age&gt;
        &lt;/dig:age&gt;
        &lt;dig:age type="at-trial" display-name="Age at Trial"&gt;
          &lt;age&gt;23 Year(s) 0 Month(s)&lt;/age&gt;
        &lt;/dig:age&gt;
        &lt;gender display-name="Gender"&gt;Male&lt;/gender&gt;
      &lt;/dig:action-party&gt;
    &lt;/dig:cause-of-action&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;    
      &lt;casedigest:actionparty partyrole="unknown"&gt;
        &lt;person:age agedesc="at-injury"&gt;18 Year(s) 0 Month(s)&lt;/person:age&gt;
        &lt;person:age agedesc="at-trial"&gt;23 Year(s) 0 Month(s)&lt;/person:age&gt;
        &lt;person:gender&gt;Male&lt;/person:gender&gt;
      &lt;/casedigest:actionparty&gt;    
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
          <note>If <sourcexml>dig:age@type</sourcexml> have any one attribute value among these three values “<b>at-injury | at-trial | at-settle</b>” and if <sourcexml>case:decisiontype@searchtype</sourcexml> markup have attribute value <b>"OUT-OF-COURT
              "</b> in source documents then create the <b>“at-settle”</b> instead of <b>“at-trial”</b> inside the target <targetxml>person:age@agedesc="at-settle"</targetxml>. Refer below input and output snippet for reference:</note>
          <pre>

  &lt;dig:age type="at-injury"&gt;
      &lt;age normval="P6Y0M"&gt;6 Year(s)&lt;/age&gt;
  &lt;/dig:age&gt;
  &lt;dig:age type="at-trial"&gt;
      &lt;age normval="P18Y0M"&gt;18 Year(s)&lt;/age&gt;
  &lt;/dig:age&gt;
  ...
  &lt;case:decisiontype&gt;Out of Court&lt;/case:decisiontype&gt;

                <b>Becomes</b>

&lt;person:age agedesc="at-injury"&gt;6 Year(s)&lt;/person:age&gt;
&lt;person:age agedesc="at-settle"&gt;18 Year(s)&lt;/person:age&gt;
...
&lt;casedigest:caseinfo&gt;
    &lt;casedigest:decisionresult&gt;Out of Court&lt;/casedigest:decisionresult&gt;
&lt;/casedigest:caseinfo&gt;
...
&lt;metaitem name="SettledOrTrial" value="Settled"/&gt;

</pre>
          <note>If input document is having the sceanrio "<sourcexml>dig:body/dig:cause-of-action/dig:action-party/p/text/person</sourcexml>" then conversion needs to mapped "<targetxml>casedigest:body/casedigest:actionparty/person:person</targetxml>" and
            dropped this "<sourcexml>p/text</sourcexml>" source markup in target conversion and converted its child elements according to general markup. Refer below input and output snippet:
            <pre>

&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:cause-of-action&gt;
        &lt;dig:action-party searchtype="injured-party"&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;person&gt;
                        &lt;name.text&gt;
                            &lt;emph typestyle="bf"&gt;AD&lt;/emph&gt;
                        &lt;/name.text&gt;
                        &lt;role searchtype="is-child"&gt;Child&lt;/role&gt;
                        &lt;role searchtype="is-protected"&gt;Protected&lt;/role&gt;
                    &lt;/person&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/dig:action-party&gt;
    &lt;/dig:cause-of-action&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
    &lt;casedigest:body&gt;    
        &lt;casedigest:actionparty partyrole="unknown"&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;&lt;emph typestyle="bf"&gt;AD&lt;/emph&gt;&lt;/person:name.text&gt;
                &lt;role&gt;Child&lt;/role&gt;
                &lt;role&gt;Protected&lt;/role&gt;
            &lt;/person:person&gt;
        &lt;/casedigest:actionparty&gt;    
    &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
          </note>
        </p>
      </section>
      <section>
        <title>Changes</title>
        <p>2016-03-18: <ph id="change_20160318_SS">Instruction created for handling if <sourcexml>dig:age@type</sourcexml> have any one attribute value among these three values "<b>at-injury | at-trial | at-settle</b>" and
              <sourcexml>case:decisiontype@searchtype</sourcexml> comes with attribute value <b>"OUT-OF-COURT "</b>.</ph></p>
        <p>2016-03-08: <ph id="change_20160308_SS">Instruction created for handling input scenario "<sourcexml>/DIGESTDOC/dig:body/dig:cause-of-action/dig:action-party/p/text/person</sourcexml>". RFA #<b>2792</b></ph></p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.action-party-to-LexisAdvance_casedigest.actionparty.dita  -->

  <!--Vikas Rohilla : Updated the template initial -->
  <xsl:template match="dig:action-party">
    <casedigest:actionparty>
      <!--      <xsl:apply-templates select="@* | node()"/>-->
      <xsl:apply-templates select="child::p/text/person"/>
      <xsl:apply-templates select="child::p/text/gender"/>
      <xsl:apply-templates select="child::p/text/dig:age"/>
    </casedigest:actionparty>
  </xsl:template>

  <!-- 2017/11/01 - CSN - the change to the template above (commented out line and addition of the three apply-templates) broke UK03 so I created a stream specific template -->
  <xsl:template match="dig:action-party[$streamID = ('UK03')]">
    <casedigest:actionparty>
      <xsl:apply-templates select="@* | node()"/>
    </casedigest:actionparty>
  </xsl:template>

  <xsl:template match="dig:action-party/@searchtype">
    <xsl:attribute name="partyrole">
      <xsl:choose>
        <xsl:when test=". = ('defendant', 'defendant-party1')">
          <xsl:text>defendant</xsl:text>
        </xsl:when>
        <xsl:when test=". = 'petitioner'">
          <xsl:text>petitioner</xsl:text>
        </xsl:when>
        <xsl:when test=". = 'plaintiff'">
          <xsl:text>plaintiff</xsl:text>
        </xsl:when>
        <xsl:when test=". = 'prosecution'">
          <xsl:text>prosecution</xsl:text>
        </xsl:when>
        <xsl:when test=". = 'respondent'">
          <xsl:text>respondent</xsl:text>
        </xsl:when>
        <xsl:when test=". = 'other'">
          <xsl:text>other</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>unknown</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  </xsl:template>

  <!-- CSN - 2017/10/23 - priority is to override this temlate in the general p module
    <xsl:template match="p[text[not(node()) or (string() and not(normalize-space()) and not(*))] and count(*)=1 ]"/>
  -->
  <xsl:template match="p[parent::dig:action-party]" priority="99">
    <xsl:apply-templates/>
  </xsl:template>

  <!-- CSN - 2017/10/23 - priority is to override this temlate in the general p module
    <xsl:template match="p[text[not(node()) or (string() and not(normalize-space()) and not(*))] and count(*)=1 ]"/>
  -->
  <xsl:template match="text[parent::p/parent::dig:action-party]" priority="99">
    <xsl:for-each select="node()">
      <xsl:choose>
        <xsl:when test="self::person">
          <xsl:apply-templates select="self::person"/>
        </xsl:when>
        <xsl:otherwise>
          <person:person>
            <person:name.text>
              <xsl:apply-templates select="."/>
            </person:name.text>
          </person:person>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
  </xsl:template>

  <!-- Vikas Rohilla : Created the template -->
  <!-- CSN - 2017/10/19 - occupation is not in the GDS and not in the CI so removing 
  <xsl:template match="occupation">
    <person:person>
      <person:bio>
        <person:bio.detail>
          <person:bio.employment>
            <xsl:apply-templates select="node() | @*"/>
          </person:bio.employment>
        </person:bio.detail>
      </person:bio>
    </person:person>
  </xsl:template>

  <xsl:template match="occupation[not(child::*)]">
    <person:occupation>
      <xsl:apply-templates select="node()"/>
    </person:occupation>
  </xsl:template>
  -->

</xsl:stylesheet>
