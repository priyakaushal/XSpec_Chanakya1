<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig"  xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita doc pubinfo dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_dig.review-contrib-disclaimer-copyright">
  <title>dig:review, contrib, disclaimer, copyright <lnpid>id-UK11DA-29450</lnpid></title>
  <body>
    <section><p><sourcexml>dig:review/contrib</sourcexml> becomes
          <targetxml>doc:metadata/pubinfo:pubinfo</targetxml>, with children as follows:<ul>
          <li><sourcexml>disclaimer</sourcexml> becomes
              <targetxml>disclaimer/bodytext/p/text</targetxml>. <b>This mapping is for the
                <sourcexml>disclaimer</sourcexml> pcdata.</b></li>
          <li><sourcexml>disclaimer/copyright</sourcexml> becomes <targetxml>copyright</targetxml>.
            Note that in target, <targetxml>disclaimer</targetxml> and
              <targetxml>copyright</targetxml> are siblings.</li>
        </ul></p>
      <p><b><u>Special rule for emphasis:</u></b> Source is
          <sourcexml>disclaimer/emph/copyright</sourcexml>. For target, keep the
          <targetxml>emph</targetxml> markup for the <targetxml>disclaimer</targetxml> content AND
        ALSO copy the <targetxml>emph</targetxml> markup to wrap the content of
          <targetxml>copyright</targetxml>.</p>
    </section>

    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:review&gt;
  &lt;contrib&gt;
    &lt;disclaimer&gt;
      &lt;emph typestyle="it"&gt;This publication contains information in summary form and is
        therefore intended for general guidance only. It is not intended to be a substitute for
        detailed research or the exercise of professional judgment. Neither EYGM Limited nor any
        other member of the global Ernst &amp;amp; Young organization can accept any responsibility
        for loss occasioned to any person acting or refraining from action as a result of any
        material in this publication. On any specific matter, reference should be made to the
        appropriate advisor.&lt;copyright&gt;Copyright: 2009 BDO LLP. All Rights
        Reserved.&lt;/copyright&gt;&lt;/emph&gt;
    &lt;/disclaimer&gt;
  &lt;/contrib&gt;
&lt;/dig:review&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;doc:metadata&gt;
  &lt;pubinfo:pubinfo&gt;
    &lt;disclaimer&gt;
      &lt;bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;
             &lt;emph typestyle="it"&gt;This publication contains information in summary form
                 and is therefore intended for general guidance only. It is not intended
                 to be a substitute for detailed research or the exercise of professional
                 judgment. Neither EYGM Limited nor any other member of the global Ernst
                 &amp;amp; Young organization can accept any responsibility for loss
                 occasioned to any person acting or refraining from action as a result of
                 any material in this publication. On any specific matter, reference
                 should be made to the appropriate advisor.&lt;/emph&gt;
          &lt;/text&gt;
        &lt;/p&gt;
      &lt;/bodytext&gt;
    &lt;/disclaimer&gt;
    &lt;copyright&gt;&lt;emph typestyle="it"&gt;Copyright: 2009 BDO LLP. All Rights Reserved.&lt;/emph&gt;&lt;/copyright&gt;
  &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;

                </pre>
    <section>
      <title>Changes</title>
      <p>2016-03-30: <ph id="change_20160330_jm">New section. New xpaths.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_dig.review-contrib-disclaimer-copyright.dita  -->
<!--	<xsl:message>UK11_DA_dig.review-contrib-disclaimer-copyright.xsl requires manual development!</xsl:message> -->

  <xsl:template match="dig:review">
    <xsl:apply-templates select="@*|node()"/>
  </xsl:template>
  
  
  
  <xsl:template match="disclaimer">
    <disclaimer>
      <bodytext>
        <p>
          <text>
            <xsl:apply-templates select="@* | node() except copyright"/>
          </text>
        </p>
      </bodytext>
    </disclaimer>
    <xsl:apply-templates select="copyright|emph/copyright"/>
  </xsl:template>

	<xsl:template match="copyright">
	  <copyright>
			<xsl:apply-templates select="@* | node()"/>
		</copyright>
	</xsl:template>
  
  <xsl:template match="copyright[parent::emph]">
    <copyright>
      <xsl:element name="emph">
        <xsl:copy-of select="parent::emph/@typestyle"/>
        <xsl:apply-templates select="node()"/>  
      </xsl:element>      
    </copyright>
  </xsl:template>

</xsl:stylesheet>