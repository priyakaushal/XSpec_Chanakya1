<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:proc="http://www.lexisnexis.com/xmlschemas/content/shared/process-elements/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.courtname-LxAdv_jurisinfo.courtname.dita">
  <title>case:courtname <lnpid>id-CCCC-12013</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:courtname</sourcexml> becomes
        <targetxml>jurisinfo:courtname</targetxml>.</p>
      <note>Any <sourcexml>nl</sourcexml> elements that occur inside
        <sourcexml>case:courtname</sourcexml> should be suppressed if they are preceded or
        followed by a space. Any <sourcexml>nl</sourcexml> elements that are not preceded or
        followed by a space should be converted into a single space character.</note>
      <note>Exception scenario for CA01-Cases: <sourcexml>nl</sourcexml> becomes
          <targetxml>proc:nl</targetxml> that occur inside
        <sourcexml>case:courtname</sourcexml>.</note>
    </section>
    <example>
      <title>Example: CA Content</title>
      <codeblock>
&lt;case:courtinfo&gt;
    ...
    &lt;abbrvname ln.user-displayed="false"&gt;NTSC&lt;/abbrvname&gt;
    &lt;case:courtname&gt;Supreme Court of The Northwest Territories&lt;nl/&gt; Yellowknife, Northwest Territories&lt;/case:courtname&gt;
    ...
&lt;/case:courtinfo&gt;
           </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;jurisinfo:courtinfo&gt;
    ...
    &lt;jurisinfo:courtname normscheme="calongabbr"&gt;Supreme Court of The Northwest Territories&lt;proc:nl/&gt;
    Yellowknife, Northwest Territories&lt;/jurisinfo:courtname&gt;
    ...
&lt;/jurisinfo:courtinfo&gt;
           </codeblock>
    </example>
    <example>
      <title>Example: NZ Content</title>
      <codeblock>
&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;Court of Appeal&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;Court of Appeal&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;
      </codeblock>signing 
    </example>
    <example>
      <title>Example: UK Content</title>
      <codeblock>
&lt;case:courtinfo&gt;
  &lt;case:courtname&gt;TRIBUNAL CENTRE: LONDON&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;
      </codeblock>
      <b>becomes</b>
      <codeblock>
&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:courtname&gt;TRIBUNAL CENTRE: LONDON&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;
      </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2015-02-09: <ph id="change_20150209_PS">Updated target example, removed attribute <targetxml>@normlongname</targetxml> from target, Applicable on CA01.</ph></p>
      <p>2013-02-13: <ph id="change_20130203_DSF">Added instructions for handling
        <sourcexml>case:courtname/nl</sourcexml> and a sample mapping.</ph></p>
      <p>2014-02-19: <ph id="change_20140219_PS">Added note and updated snippet for CA content, This change immediately applies to CA01-Cases.</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_caselaw\Rosetta_case.courtname-LxAdv_jurisinfo.courtname.dita  -->
	 
  <!-- Vikas Rohilla : Template to match the case:courtname and create the jurisinfo:courtname -->
	<xsl:template match="case:courtname">
		<jurisinfo:courtname>
			<!-- JD: 2017-06-15: In UK01 this is shown in example code in CI but not mentioned elsewhere and not present in DT output.
			Adding exclusion test for UK01, but I suspect rather than include this will need to be specifically included for certain streams.
			-->
		  <!-- Ravikant: 2018-03-09 Added the streamID MY01 for case:courtname in below if condition -->
		  <xsl:if test="not($streamID='UK01' or $streamID='MY01')">
			  <xsl:attribute name="normscheme">
			    <xsl:text>calongabbr</xsl:text>
			  </xsl:attribute>
			</xsl:if>
		  <xsl:apply-templates select="preceding-sibling::abbrvname"/>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtname>
	</xsl:template>

  <xsl:template match="case:courtname[$streamID=('AU01', 'NZ03', 'AU09')]">
<!--Satbir: Added condition for dropping EMPTY element-->
    <xsl:choose>
      <xsl:when test="not(*) and not(normalize-space())"/>
        
      <xsl:otherwise>
        <jurisinfo:courtname> 
          <xsl:apply-templates select="@* | node()"/>
        </jurisinfo:courtname>    
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>