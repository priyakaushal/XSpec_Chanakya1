<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:guid="urn:x-lexisnexis:content:guid:global:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:globalentity="urn:x-lexisnexis:content:identified-entities:global:1" xmlns:ext="http://exslt.org/common" version="2.0" exclude-result-prefixes="dita case dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.juris-to-LexisAdvance_jurisinfo.system">
  <title>case:juris-to-jurisinfo:jurisdiction/jurisinfo:system <lnpid>id-UK03-27432</lnpid></title>
  <body>
    <p>
      <ul>
        <li>
          <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:juris</sourcexml> becomes
            <targetxml>casedigest:head/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system</targetxml>.
          The element <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:juris</sourcexml>
          is omitted if it has the value "255". <ul>
            <li> If the value of
                <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:juris</sourcexml> has any
              one of these three values 'EnglandandWales', 'Scotland' or 'NorthernIreland', then a
              new element <targetxml>dc:metadata/dc:coverage/location:country</targetxml> is
              created, with attributes <targetxml>@codescheme="ISO-3166-2"</targetxml> and
                <targetxml>@countrycode</targetxml>. The value of this new element will be the value
              of <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:juris</sourcexml>.
                <note> Value of attribute
                  <targetxml>dc:metadata/dc:coverage/location:country/@countrycode</targetxml> is
                determined by the value of source path
                  <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:juris</sourcexml>, as
                listed below. <ul>
                  <li>If the value is <sourcexml>EnglandandWales</sourcexml> then attribute value
                    will be <targetxml>@countrycode="GB-EAW"</targetxml>,</li>
                  <li>if <sourcexml>Scotland</sourcexml> then
                      <targetxml>@countrycode="GB-SCT"</targetxml>, and</li>
                  <li>if <sourcexml>NorthernIreland</sourcexml> then
                      <targetxml>@countrycode="GB-NIR"</targetxml>.</li>
                </ul>
              </note>
              <pre>

&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:juris&gt;Scotland&lt;/case:juris&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b>Becomes</b>

&lt;casedigest:caseinfo&gt;
  &lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
      &lt;jurisinfo:system&gt;Scotland&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
  &lt;/jurisinfo:courtinfo&gt;
&lt;/casedigest:caseinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-2" countrycode="GB-SCT"&gt;Scotland&lt;/location:city&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;
                
              </pre>
            </li>
            <li> If the value of
                <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:juris</sourcexml> is
              'EnglandandWales, Scotland, NorthernIreland, France', then 3 separate
                <targetxml>location:country</targetxml> elements are created within
                <targetxml>dc:metadata/dc:coverage</targetxml>. The following set of value and
              attributes are added to <targetxml>location:country</targetxml> elements, <ul>
                <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>,
                    <targetxml>@countrycode="GB-EAW"</targetxml> and value 'EnglandandWales'</li>
                <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>,
                    <targetxml>@countrycode="GB-SCT"</targetxml> and value 'Scotland'</li>
                <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>,
                    <targetxml>@countrycode="GB-NIR"</targetxml> and value 'NorthernIreland'</li>
                <li>Attributes <targetxml>@codescheme="ISO-3166-2"</targetxml>,
                    <targetxml>@countrycode="FR"</targetxml> and value 'France'</li>
              </ul>
            </li>
            <li>If the value of
                <sourcexml>dig:body/dig:info/case:info/case:courtinfo/case:juris</sourcexml> is
              'European', then a new element
                <targetxml>dc:metadata/dc:coverage/location:region</targetxml> is created with
              attribute <targetxml>@regioncode='EU'</targetxml> and value 'Europe'. <pre>
                
&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:juris&gt;European&lt;/case:juris&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

<b>Becomes</b>
                
&lt;casedigest:caseinfo&gt;
  &lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
      &lt;jurisinfo:system&gt;European&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
  &lt;/jurisinfo:courtinfo&gt;
&lt;/casedigest:caseinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:region regioncode="EU"&gt;Europe&lt;/location:region&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

              </pre>
            </li>
          </ul>
          <!--           
<pre>
<![CDATA[<case:info>
  <case:courtinfo>
    <case:juris>EnglandandWales</case:juris>
  </case:courtinfo>
</case:info>
]]>
<b>Becomes</b>
<![CDATA[<casedigest:caseinfo>
  <jurisinfo:courtinfo>
    <jurisinfo:jurisdiction>
      <jurisinfo:system>EnglandandWales</jurisinfo:system>
    </jurisinfo:jurisdiction>
  </jurisinfo:courtinfo>
</casedigest:caseinfo>

<dc:coverage>
  <location:country codescheme="ISO-3166-2" countrycode="GB-EAW">EnglandandWales</location:city>
</dc:coverage>
]]>
</pre>
-->
        </li>
        <li>
          <note>If input source document is having "<sourcexml>emph@typestyle</sourcexml>" with
            value "<b>hi</b>, <b>bf</b>, <b>it</b> and <b>caps</b>" inside the
              "<sourcexml>case:juris</sourcexml>" markup then conversion needs to drop
              "<b>emph@typestyle</b>" in NewLexis target, but if
              <sourcexml>emph@typestyle</sourcexml> is having value '<b>caps</b>' then the text
            needs to be capitalized in sentence case format.</note>
          <pre>
                            
&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:juris&gt;&lt;emph typestyle="hi"&gt;England &amp; Wales&lt;/emph&gt;&lt;/case:juris&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

          <b>Becomes</b>
                          
&lt;casedigest:caseinfo&gt;
  &lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
      &lt;jurisinfo:system&gt;England &amp;amp; Wales&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
  &lt;/jurisinfo:courtinfo&gt;
&lt;/casedigest:caseinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-2" countrycode="GB-EAW"&gt;England &amp;amp; Wales&lt;/location:region&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

          </pre> 
          <pre><b>Handling for "case:juris/emph@typestyle@='caps'"</b>
                            
&lt;case:info&gt;
  &lt;case:courtinfo&gt;
    &lt;case:juris&gt;
       &lt;emph typestyle="caps"&gt;
           &lt;emph typestyle="bf"&gt;france&lt;/emph&gt;
       &lt;/emph&gt;
    &lt;/case:juris&gt;
  &lt;/case:courtinfo&gt;
&lt;/case:info&gt;

          <b>Becomes</b>
                          
&lt;casedigest:caseinfo&gt;
  &lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
      &lt;jurisinfo:system&gt;France&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
  &lt;/jurisinfo:courtinfo&gt;
&lt;/casedigest:caseinfo&gt;

&lt;dc:metadata&gt;
  &lt;dc:coverage&gt;
    &lt;location:country codescheme="ISO-3166-2" countrycode="FR"&gt;France&lt;/location:region&gt;
  &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

          </pre> 
        </li>
      </ul>
    </p>
    <section>
      <title>Changes</title>
      <p>2016-01-14: <ph id="change_20160114_SS">Updated a note for suppress the
        <sourcexml>emph@typestyle='caps'</sourcexml> and <sourcexml>'bf'</sourcexml> markup from input to target conversion when
        it's a direct child of 'case:juris' in source.</ph></p>
      <p>2015-11-16: <ph id="change_20151116_SS">Added a note for suppress the
            <sourcexml>emph@typestyle='hi'</sourcexml> markup from input to target conversion when
          it's a direct child of 'case:juris' in source.</ph></p>
      <p>2013-07-19: <ph id="change_20130719_DSF">Changed the target XPath to
          <b>casedigest:head</b>/casedigest:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction/jurisinfo:system.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK03_CaseDigest\Rosetta_case.juris-to-LexisAdvance_jurisinfo.jurisdiction-jurisinfo.system.dita  -->
  
  <!-- Vikas Rohilla : Updated the Template Initial -->
  <xsl:variable name="pguid">
    <codes>
      <code key="CA" value="urn:entity:geob-101733280"/>
      <code key="CD" value="urn:entity:geob-101733280"/>
      <code key="Canada" value="urn:entity:geob-101733280"/>
      <code key="UK" value="urn:entity:geob-101733280"/>
      <code key="AB" value="urn:entity:geob-101865413"/>
      <code key="BC" value="urn:entity:geob-100301383"/>
      <code key="PE" value="urn:entity:geob-101864367"/>
      <code key="MB" value="urn:entity:geob-101864769"/>
      <code key="NL" value="urn:entity:geob-102223081"/>
      <code key="NF" value="urn:entity:geob-102223081"/>
      <code key="NT" value="urn:entity:geob-101865328"/>
      <code key="NB" value="urn:entity:geob-101378115"/>
      <code key="NS" value="urn:entity:geob-101507047"/>
      <code key="NU" value="urn:entity:geob-101770571"/>
      <code key="ON" value="urn:entity:geob-101149718"/>
      <code key="QC" value="urn:entity:geob-100432051"/>
      <code key="PQ" value="urn:entity:geob-100432051"/>
      <code key="SK" value="urn:entity:geob-102094956"/>
      <code key="YT" value="urn:entity:geob-102091695"/>
    </codes>
  </xsl:variable>
  
  <!--Key kCodeByName for match the code -->
  <xsl:key name="kCodeByName" match="*:code" use="string(@key)"/> 
  
  
  <!-- Vikas Rohilla : Created the Template for the case:juris    -->
  <xsl:template match="case:courtinfo/case:juris">
    <xsl:variable name="jurisValue">
      <xsl:choose>
        <xsl:when test=".='EnglandandWales'">
          <xsl:text>GB-EAW</xsl:text>
        </xsl:when>
        <xsl:when test=".='NorthernIreland'">
          <xsl:text>GB-NIR</xsl:text>
        </xsl:when>
        <xsl:when test=".='Scotland'">
          <xsl:text>GB-SCT</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="."/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:element name="jurisinfo:jurisdiction">
      <xsl:apply-templates select="//case:courtinfo/case:courtloc"/>
      <xsl:element name="jurisinfo:system">
        <xsl:attribute name="normshortname">
          <xsl:value-of select="$jurisValue"/>
        </xsl:attribute>
        <xsl:element name="globalentity:entity">
          <xsl:element name="globalentity:content">
            <xsl:value-of select="$jurisValue"/>
          </xsl:element>
          <xsl:element name="globalentity:entityReference">
            <xsl:attribute name="guid:guid">
              <xsl:value-of select="key('kCodeByName', ., $pguid)/@value"/>
            </xsl:attribute>
            <xsl:attribute name="role">
              <xsl:text>urn:contentType:geography</xsl:text>
            </xsl:attribute>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template>  
  
  <xsl:template match="case:juris/@ln.user-displayed"/>
  
<!-- value of select because does not alow emph -->
  <xsl:template match="case:courtinfo/case:juris[$streamID='UK03']" priority="2">
    <!-- CSN - 2017/10/21 removed jurisinfo:jurisinfo as it is a wrapper supplied by parent template
    <xsl:element name="jurisinfo:jurisdiction"> -->
      <xsl:element name="jurisinfo:system">
        <xsl:value-of select="."/>
      </xsl:element>
  </xsl:template>

</xsl:stylesheet>