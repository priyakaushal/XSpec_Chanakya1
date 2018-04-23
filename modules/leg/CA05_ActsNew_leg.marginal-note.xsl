<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="dita leg primlaw ref docinfo">

    	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.marginal-note">
  <title>leg:marginal-note <lnpid>id-CA05-13626</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:marginal-note</sourcexml>
        <b>Becomes</b>
        <targetxml>primlaw:level/primlaw:bodytext/marginnote[@notetype='reference']/bodytext/p/text/</targetxml>.</p>
      
        <note><p>Create a random unique <targetxml>ref:anchor</targetxml> within marginnote if the source document
          does not contain one and <sourcexml>ID</sourcexml> of <sourcexml>ref:anchor</sourcexml>
          should be generated by given format "<targetxml>CountryCode_FileName_NumDigit</targetxml>"
          (i.e. CA_10002_001).</p></note>
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:marginal-note</sourcexml></title>
      <codeblock>
&lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="3"&gt;
        &lt;leg:marginal-note&gt;Further respecting
            guarantee&lt;/leg:marginal-note&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:bodytext&gt;
        &lt;marginnote notetype="reference"&gt;
            &lt;ref:anchor id="CA_10002_001"/&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;Further respecting guarantee&lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/marginnote&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;    
      </codeblock>
    </example>
    
    <section>
      <title>Changes</title>
      <p>2014-08-11: <ph id="change_20140811_PS">Updated instruction to generate
            <targetxml>@notetype='reference'</targetxml> and <targetxml>ref:anchor/@id</targetxml>
          value.</ph></p>
      <p>2014-06-05: <ph id="change_20140605_PS">Update <sourcexml>leg:marginal-note</sourcexml> mapping and example. R4.5 Issue #1449.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\leg.marginal-note.dita  -->
	<!--<xsl:message>leg.marginal-note.xsl requires manual development!</xsl:message> 
-->
    <xsl:template match="leg:marginal-note" priority="2">
        <!-- <xsl:for-each select=".">-->
        <xsl:variable name="i" select="count(preceding::leg:marginal-note) + 1"/>
        <xsl:variable name="ref">
            <xsl:analyze-string select="preceding::docinfo:bookseqnum" regex="(0)+([0-9]+)">
                <xsl:matching-substring>
                    
                    <xsl:value-of select="regex-group(2)"/>
                    
                </xsl:matching-substring>
            </xsl:analyze-string>
        </xsl:variable>
                <primlaw:bodytext>
            <marginnote notetype="reference">
                <ref:anchor>
                    <xsl:attribute name="id">
                        <xsl:text>CA_</xsl:text>
                        <xsl:value-of select="$ref"/>
                        <xsl:text>_</xsl:text>
                        <xsl:text>00</xsl:text>
                        <xsl:value-of select="$i"/>
                    </xsl:attribute>
                </ref:anchor>
                <bodytext>
                    <p>
                        <text>
                            <xsl:apply-templates select="@* | node()"/>
                        </text>
                    </p>
                </bodytext>
            </marginnote>
        </primlaw:bodytext>
    </xsl:template>


</xsl:stylesheet>