<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.marginal-note">
  <title>leg:marginal-note <lnpid>id-CA07-14023</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:marginal-note</sourcexml> becomes
          <targetxml>marginnote[@notetype='reference']</targetxml> and create child elements
          <targetxml>bodytext/p/text</targetxml> and <targetxml>ref:anchor</targetxml>
        <note>Conversion needs to create a random unique <targetxml>ref:anchor</targetxml> if the
          source document does not containe one and <targetxml>@id</targetxml> of
            <targetxml>ref:anchor</targetxml> should be generated in the given format
            <targetxml>"CountryCode_FileName_NumDigit"</targetxml> (i.e. CA_01_01)</note>
        <note>If <sourcexml>leg:marginal-note</sourcexml> is child of
            <sourcexml>leg:level/leg:level-vrnt</sourcexml> then conversion need to create
            <targetxml>primlaw:level/primlaw:bodytext</targetxml> for handling
            <targetxml>marginnote[@notetype='reference']</targetxml> markup.</note>
      </p> 
    </section>

    <example>
      <title>Source XML</title>
      <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="3"&gt;
        &lt;leg:marginal-note&gt;Title&lt;/leg:marginal-note&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

      </codeblock>
    </example>

    <example>
        <title>Target XML</title>
        <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:bodytext&gt;
         &lt;marginnote notetype="reference"&gt;
               &lt;ref:anchor id="CA_01_01"/&gt;
               &lt;bodytext&gt;
                  &lt;p&gt;&lt;text&gt;Title&lt;/text&gt;&lt;/p&gt;
               &lt;/bodytext&gt;
         &lt;/marginnote&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;
    
        </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-09-17: <ph id="change_20140917_ssx">Updated instruction to generate <targetxml>ref:anchor/@id</targetxml> in given format <targetxml>"CountryCode_FileName_NumDigit"</targetxml></ph></p>
      <p>2014-06-03: <ph id="change_20140603_ssx">Instruction and example updated for adding
        attribute <targetxml>[@notetype="reference"]</targetxml> inside the target
        <targetxml>marginnote</targetxml> element for handling the input
        <sourcexml>leg:marginal-note</sourcexml>.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.marginal-note.dita  -->
	
	<!--<xsl:template match="leg:marginal-note">
-->
		<!--  Original Target XPath:  marginnote[@notetype='reference']   -->
	<!--	<marginnote>
			<xsl:apply-templates select="@* | node()"/>
		</marginnote>

	</xsl:template>-->

<!--	<xsl:template match="leg:level/leg:level-vrnt">-->

		<!--  Original Target XPath:  primlaw:level/primlaw:bodytext   -->
	<!--	<primlaw:level>
			<primlaw:bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</primlaw:bodytext>
		</primlaw:level>

	</xsl:template>-->
  
  <xsl:template match="leg:marginal-note" priority="2">
    <xsl:variable name="ref">
      <xsl:analyze-string select="//docinfo:bookseqnum" regex="(0)+([0-9]+)">
        <xsl:matching-substring>
          
          <xsl:value-of select="regex-group(2)"/>
          
        </xsl:matching-substring>
      </xsl:analyze-string>
    </xsl:variable>
    
    <xsl:variable name="i" select="count(preceding::leg:marginal-note) + 1"/>
    <!--  Original Target XPath:  primlaw:level/primlaw:bodytext/marginnote[@notetype='reference']/bodytext/p/text/   -->
    <primlaw:bodytext>
      <marginnote notetype="reference">
        <ref:anchor>
          <xsl:attribute name="id">
            <xsl:text>CA_</xsl:text>
            <xsl:value-of select="$ref"/>
            <xsl:text>_</xsl:text>
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