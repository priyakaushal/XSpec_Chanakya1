<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/"
  version="2.0" exclude-result-prefixes="dita dig">

  <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dig.damages-to-LexisAdvance_casedigest.damages">
    <title>dig:damages-to-casedigest:damages <lnpid>id-UK03-27445</lnpid></title>
    <body>
      <p>
        <ul>
          <li>
            <sourcexml>dig:damages</sourcexml> becomes <targetxml>casedigest:damages</targetxml>. <note>The source attribute <sourcexml>dig:damages/@display-name</sourcexml> can be ignored. LBU has indicated the standardized headings in the UX samples and
              will be handled in stylesheets.</note> The children are converted as follows: <ul>
              <li>
                <sourcexml>dig:damages/dig:damages-amount/@damages-amounttype</sourcexml> becomes <targetxml>casedigest:damages/casedigest:specialdamages/@conversioncontext</targetxml>. The source attribute
                  <sourcexml>dig:damages-amount/@display-name</sourcexml> becomes <targetxml>casedigest:specialdamages/@label</targetxml>. When the attribute <sourcexml>dig:damages-amount/@damages-amounttype</sourcexml> is not present, then
                  <sourcexml>dig:damages-amount</sourcexml> will be mapped to <targetxml>casedigest:award</targetxml>. The source attribute <sourcexml>dig:damages-amount/@damages-amounttype</sourcexml> becomes
                  <targetxml>casedigest:specialdamages/@conversioncontext</targetxml>. The children are converted as follows: <ul>
                  <li>
                    <sourcexml>dig:damages/dig:damages-amount @damages-amounttype/money</sourcexml> becomes <targetxml>casedigest:damages/casedigest:specialdamages @conversioncontext/textitem/money</targetxml>. The source attribute
                      <sourcexml>money/@normval</sourcexml> becomes <targetxml>money/@normval</targetxml>. </li>
                </ul>
              </li>
            </ul>
            <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:damages&gt;
            &lt;dig:damages-amount display-name="General Damages (PSLA)"&gt;
                &lt;money&gt;£40,000.00&lt;/money&gt;
            &lt;/dig:damages-amount&gt;
            &lt;dig:damages-amount damages-amounttype="todays-value" display-name="General Damages (PSLA) Today's Value"&gt;
                &lt;money normval="48538"&gt;£48,538.19&lt;/money&gt;
            &lt;/dig:damages-amount&gt;
        &lt;/dig:damages&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>
&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;casedigest:damages&gt;
      &lt;casedigest:award&gt;
        &lt;textitem&gt;
          &lt;money&gt;£40,000.00&lt;/money&gt;
        &lt;/textitem&gt;
      &lt;/casedigest:award&gt;
       &lt;casedigest:specialdamages conversioncontext="todays-value" label="General Damages (PSLA) Today's Value"&gt;
        &lt;textitem&gt;
          &lt;money normval="48538"&gt;£48,538.19&lt;/money&gt;
        &lt;/textitem&gt;
      &lt;/casedigest:specialdamages&gt;
    &lt;/casedigest:damages&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
          </li>
          <li>UK quantums have separate sums for total award (damages) and for general damages through the attribute values "<b>general-damages | total-award</b>" added inside the "<targetxml>casedigest:award@awardtype</targetxml>". <note>If
                "<sourcexml>dig:damages-amount</sourcexml>" element comes with attribute "<sourcexml>@display-name</sourcexml>" with attribute value "<b>General Damages</b>" then it should be mapped with
                "<targetxml>casedigest:award@awardtype='general-damages'</targetxml>". </note>
            <note>If "<sourcexml>dig:damages-amount</sourcexml>" element comes with attribute "<sourcexml>@display-name</sourcexml>" with attribute value "<b>Total Damages</b>" then it should be mapped in target
                "<targetxml>casedigest:award@awardtype='total-award'</targetxml>". Refer below input and target snippet:</note>
            <pre>
&lt;DIGESTDOC&gt;
  &lt;dig:body&gt;
    &lt;dig:damages&gt;
            &lt;dig:damages-amount display-name="General Damages (PSLA)"&gt;
                &lt;money&gt;£9,000.00&lt;/money&gt;
            &lt;/dig:damages-amount&gt;
            &lt;dig:damages-amount damages-amounttype="todays-value" display-name="General Damages (PSLA) Today's Value"&gt;
                &lt;money normval="15511"&gt;£15,511.58&lt;/money&gt;
            &lt;/dig:damages-amount&gt;
        &lt;/dig:damages&gt;
        ...
        &lt;dig:damages&gt;
            &lt;dig:damages-amount display-name="Total Damages"&gt;
                &lt;money&gt;£105,500.00&lt;/money&gt;
            &lt;/dig:damages-amount&gt;
        &lt;/dig:damages&gt;
  &lt;/dig:body&gt;
&lt;/DIGESTDOC&gt;

<b>Becomes</b>

&lt;casedigest:casedigest&gt;
  &lt;casedigest:body&gt;
    &lt;casedigest:damages&gt;
      &lt;casedigest:award awardtype="general-damages"&gt;
        &lt;textitem&gt;
          &lt;money&gt;£9,000.00&lt;/money&gt;
        &lt;/textitem&gt;
      &lt;/casedigest:award&gt;
       &lt;casedigest:specialdamages conversioncontext="todays-value" label="General Damages (PSLA) Today's Value"&gt;
        &lt;textitem&gt;
          &lt;money normval="15511"&gt;£15,511.58&lt;/money&gt;
        &lt;/textitem&gt;
      &lt;/casedigest:specialdamages&gt;
    &lt;/casedigest:damages&gt;
    ...  
    &lt;casedigest:damages&gt;
      &lt;casedigest:award awardtype="total-award"&gt;
        &lt;textitem&gt;
          &lt;money&gt;£105,500.00&lt;/money&gt;
        &lt;/textitem&gt;
      &lt;/casedigest:award&gt;
    &lt;/casedigest:damages&gt;
  &lt;/casedigest:body&gt;  
&lt;/casedigest:casedigest&gt;
</pre>
          </li>

        </ul>
      </p>
      <section>
        <title>Changes</title>
        <p>2016-02-22: <ph id="change_20160222_SS">Added the instruction for differentiate the two type of damages in target (i.e. <b>General Damages</b> and <b>Total Damages</b>) . RFA #<b>2701</b></ph>
        </p>
      </section>
    </body>
  </dita:topic>

  <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_dig.damages-to-LexisAdvance_casedigest.damages.dita  -->

  <!-- Vikas Rohilla : Updated the template Initial -->
  <xsl:template match="dig:damages">
    <casedigest:damages>
      <xsl:apply-templates select="@* | node()"/>
    </casedigest:damages>
  </xsl:template>

  <xsl:template match="dig:damages-amount">
    <casedigest:award>
      <xsl:attribute name="awardtype" select="@display-name"/>
      <xsl:if test="@damages-amounttype">
        <xsl:attribute name="conversioncontext" select="@damages-amounttype"/>
      </xsl:if>
      <textitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
        <xsl:apply-templates select="node()"/>
      </textitem>
    </casedigest:award>
  </xsl:template>

  <xsl:template match="money">
    <money xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
      <xsl:apply-templates select="@* | node()"/>
    </money>
  </xsl:template>

  <xsl:template match="money/@normval">
    <xsl:copy-of select="."/>
  </xsl:template>

  <!-- CSN - 2017/10/18 - Nothing in the CI and nothing in the GDS for these templates so removing 
  <xsl:template match="dig:damages-valuation">
    <casedigest:valuation>
      <bodytext>
        <xsl:apply-templates select="@* | node()"/>
      </bodytext>
    </casedigest:valuation>
  </xsl:template>

  <xsl:template match="dig:damages-description/p | dig:damages-description">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>

  <xsl:template match="dig:damages-description/p/text">
    <casedigest:awardamount>
      <textitem>
        <xsl:apply-templates select="@* | node()"/>
      </textitem>
    </casedigest:awardamount>
  </xsl:template>
  -->
</xsl:stylesheet>
