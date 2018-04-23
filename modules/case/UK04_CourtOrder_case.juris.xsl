<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtorder-case.juris">
  <title>case:juris <lnpid>id-UK04-27623</lnpid></title>
  <body>
    <p>The element <sourcexml>case:info/case:courtinfo/case:juris</sourcexml> is converted to
      different target elements depending on its contents. The three scenarios are described
      below.</p>
    <ol>
      <li>If the contents of <sourcexml>case:juris</sourcexml> is one of these three values:
        'EnglandandWales', 'Scotland' or 'NorthernIreland', then do the following conversion.<ul>
          <li>The element <sourcexml>case:info/case:courtinfo/case:juris</sourcexml> becomes
              <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:country</targetxml>.</li>
          <li>The attribute <targetxml>location:country/@codescheme</targetxml> is set to
            "ISO-3166-2".</li>
          <li>The attribute <targetxml>location:country/@countrycode</targetxml> is set depending on
            the content of <sourcexml>case:juris</sourcexml> as follows. <ul>
              <li>If 'EnglandandWales', then
                  <targetxml>location:country/@countrycode="GB-EAW"</targetxml>.</li>
              <li>If 'Scotland', then
                <targetxml>location:country/@countrycode="GB-SCT"</targetxml>.</li>
              <li>If 'NorthernIreland', then
                  <targetxml>location:country/@countrycode="GB-NIR"</targetxml>.</li>
            </ul>
          </li>
          <li>Also create element
              <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:country</targetxml>
            and set the attributes <targetxml>location:country@codescheme</targetxml> and
              <targetxml>location:country/@countrycode</targetxml> as described above.</li>
        </ul>
      </li>
      <li>If the contents of <sourcexml>case:courtloc</sourcexml> is 'European', then do the following conversion.<ul>
          <li>The element <sourcexml>case:info/case:courtinfo/case:juris</sourcexml> becomes
            <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:region</targetxml>.</li>
        <li>The attribute <targetxml>location:region/@regioncode</targetxml> is set to 'EU'.</li>
        <li>Also create element
        <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:coverage/location:region</targetxml>
        and set the attribute <targetxml>location:country@regioncode</targetxml> to 'EU'.</li>
        </ul>        
      </li>
      <li>Otherwise, <sourcexml>case:info/case:courtinfo/case:juris</sourcexml> becomes <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.
        <note>If there is a <sourcexml>case:info/case:courtinfo/case:courtloc</sourcexml> element
          present that is converted to
          <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:location/location:country</targetxml>,
          the <targetxml>jurisinfo:location</targetxml> and the <targetxml>jurisinfo:system</targetxml> are created within the same parent <targetxml>jurisinfo:courtinfo/jurisinfo:jurisdiction</targetxml>
          element.</note>
      </li>
    </ol>
    
      <p>Also see the subtopic <xref href="case.courtloc.dita"/>.</p>
    
    <section>
      <title>Source XML showing scenario #1</title>
      <codeblock>

&lt;case:courtinfo&gt;
  &lt;!--...--&gt;
  &lt;case:juris&gt;Scotland&lt;/case:juris&gt;
  &lt;!--...--&gt;
&lt;/case:courtinfo&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;jurisinfo:courtinfo&gt;
  &lt;!--...--&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:location&gt;
      &lt;location:country codescheme="ISO-3166-2" countrycode="GB-SCT"&gt;Scotland&lt;/location:country&gt;
    &lt;/jurisinfo:location&gt;
  &lt;/jurisinfo:jurisdiction&gt;
  &lt;!--...--&gt;
&lt;/jurisinfo:courtinfo&gt;
&lt;!--...--&gt;
&lt;doc:metadata&gt;
  &lt;doc:docinfo&gt;
    &lt;!--...--&gt;
    &lt;dc:metadata&gt;
      &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-2" countrycode="GB-SCT"&gt;Scotland&lt;/location:country&gt;
      &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;
    &lt;!--...--&gt;
  &lt;/doc:docinfo&gt;
&lt;doc:metadata&gt;


        </codeblock>
    </section>
    
    <section>
      <title>Source XML showing scenario #2</title>
      <codeblock>

&lt;case:courtinfo&gt;
  &lt;!--...--&gt;
  &lt;case:juris&gt;European&lt;/case:juris&gt;
  &lt;!--...--&gt;
&lt;/case:courtinfo&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;jurisinfo:courtinfo&gt;
  &lt;!--...--&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:location&gt;
      &lt;location:region regioncode="EU"&gt;European&lt;/location:region&gt;
    &lt;/jurisinfo:location&gt;
  &lt;/jurisinfo:jurisdiction&gt;
  &lt;!--...--&gt;
&lt;/jurisinfo:courtinfo&gt;
&lt;!--...--&gt;
&lt;doc:metadata&gt;
  &lt;doc:docinfo&gt;
    &lt;!--...--&gt;
    &lt;dc:metadata&gt;
      &lt;dc:coverage&gt;
        &lt;location:region regioncode="EU"&gt;European&lt;/location:region&gt;
      &lt;/dc:coverage&gt;
    &lt;/dc:metadata&gt;
    &lt;!--...--&gt;
  &lt;/doc:docinfo&gt;
&lt;doc:metadata&gt;

</codeblock>
    </section>
    
    
    
    <section>
      <title>Source XML showing scenario #3 along with a <sourcexml>case:courtloc</sourcexml> that is converted</title>
      <codeblock>

&lt;case:courtinfo&gt;
  &lt;!--...--&gt;
  &lt;case:juris&gt;255&lt;/case:juris&gt;
  &lt;!--...--&gt;
&lt;/case:courtinfo&gt;

      </codeblock>
    </section>
    <section>
      <title>Target XML </title>
      <codeblock>

&lt;jurisinfo:courtinfo&gt;
  &lt;!--...--&gt;
  &lt;jurisinfo:jurisdiction&gt;
    &lt;jurisinfo:system&gt;255&lt;/jurisinfo:system&gt;
  &lt;/jurisinfo:jurisdiction&gt;
  &lt;!--...--&gt;
&lt;/jurisinfo:courtinfo&gt;

        </codeblock>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-05-07: <ph id="change_20130507_JCG_1">Updated instruction to handle additional conversion scenarios.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK04_CourtOrder\case.juris.dita  -->
	<!--<xsl:message>UK04_CourtOrder_case.juris.xsl requires manual development!</xsl:message> -->
  <xsl:variable name="juris" select="/CASEDOC/case:body/case:headnote/case:info/case:courtinfo/case:juris"/>

	<xsl:template match="case:info/case:courtinfo/case:juris">
  <xsl:choose>
    <xsl:when test="$juris[contains(.,'EnglandandWales') or contains(.,'Scotland') or contains(.,'NorthernIreland') ]">
      <jurisinfo:jurisdiction>
        <jurisinfo:location>
          <location:country>
            <xsl:attribute name="codescheme">
              <xsl:text>ISO-3166-2</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="countrycode">
              <xsl:choose>
                <xsl:when test="$juris='EnglandandWales'">
                  <xsl:text>GB-EAW</xsl:text>
                </xsl:when>
                <xsl:when test="$juris='Scotland'">
                  <xsl:text>GB-SCT</xsl:text>
                </xsl:when>
                <xsl:when test="$juris='NorthernIreland'">
                  <xsl:text>GB-NIR</xsl:text>
                </xsl:when>
              </xsl:choose>
            </xsl:attribute>
            <xsl:apply-templates select="@* | node()"/>
          </location:country>
        </jurisinfo:location>
      </jurisinfo:jurisdiction>
    </xsl:when>
    <xsl:when test="$juris[contains(.,'European')]">
      <jurisinfo:jurisdiction>
        <jurisinfo:location>
          <location:region>
            <xsl:attribute name="regioncode">
              <xsl:text>EU</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
          </location:region>
        </jurisinfo:location>
      </jurisinfo:jurisdiction>
    </xsl:when>
    <xsl:otherwise>
      <jurisinfo:jurisdiction>
        <jurisinfo:system>
          <xsl:apply-templates select="@*|node()"/>
        </jurisinfo:system>
      </jurisinfo:jurisdiction>
    </xsl:otherwise>
  </xsl:choose>
	</xsl:template>

	
</xsl:stylesheet>