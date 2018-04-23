<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"     xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita dig leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_contrib">
  <title>contrib (and children) <lnpid>id-UK11DA-29413</lnpid></title>
  <body>
    <note>These rules are for <sourcexml>dig:info/contrib</sourcexml>. See separate rules for <xref href="UK11_DA_dig.review-contrib-disclaimer-copyright.dita">dig:review/contrib</xref>.</note>
    <section><p>Mapping of <sourcexml>contrib</sourcexml> and its children is determined by
          <sourcexml>contrib[@contribtype]</sourcexml>, as follows:</p>
      <p>
        <ul>
          <li><sourcexml>@contribtype="author"</sourcexml>
            <ul>
              <li>
                <sourcexml>contrib[@contribtype="author"]/person/name.text</sourcexml> becomes
                  <targetxml>abstract:body/abstract:target/person:contributor[@contributor-type="author"]/person:person/person:name.text</targetxml>
              </li>
            </ul>
          </li>
          <li><sourcexml>@contribtype="bill-sponsor"</sourcexml>
            <ul>
              <li>
                <sourcexml>contrib[@contribtype="bill-sponsor"]/person/name.text</sourcexml> becomes
                  <targetxml>abstract:body/legisinfo:legisinfo/legisinfo:billinfo/legisinfo:sponsor</targetxml>.
                Note that "person" and "name" markup is not used in the target. </li>
            </ul>
          </li>
          <li><sourcexml>@contribtype="issuing-department"</sourcexml>
            <ul>
              <li>
                <sourcexml>contrib[@contribtype="issuing-department"]/org</sourcexml> becomes
                  <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/pubinfo:publisher</targetxml>
              </li>
            </ul>
          </li>
          <li><sourcexml>@contribtype="accreditation"</sourcexml>
            <ul>
              <li>
                <sourcexml>contrib[@contribtype="accreditation"]/org</sourcexml> becomes
                  <targetxml>abstract:body/abstract:author/textitem</targetxml>
              </li>
            </ul>
          </li>
        </ul>
      </p>
    </section>

    <pre>
              <b><i>Example 1: <sourcexml>@contribtype="author"</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;contrib contribtype="author"&gt;
      &lt;person&gt;
        &lt;name.text&gt;Tim Stephenson&lt;/name.text&gt;
      &lt;/person&gt;
    &lt;/contrib&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;abstract:body&gt;
  &lt;abstract:target&gt;
    &lt;person:contributor contributor-type="author"&gt;
      &lt;person:person&gt;
        &lt;person:name.text&gt;Tim Stephenson&lt;/person:name.text&gt;
      &lt;/person:person&gt;
    &lt;/person:contributor&gt;
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;
 
	</pre>
    <pre>
              <b><i>Example 2: <sourcexml>@contribtype="bill-sponsor"</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;contrib contribtype="bill-sponsor"&gt;
      &lt;person&gt;
        &lt;name.text&gt;Baroness Wilcox&lt;/name.text&gt;
      &lt;/person&gt;
    &lt;/contrib&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;abstract:body&gt;
  &lt;legisinfo:legisinfo&gt;
    &lt;legisinfo:billinfo&gt;
      &lt;legisinfo:sponsor&gt;Baroness Wilcox&lt;/legisinfo:sponsor&gt;
    &lt;/legisinfo:billinfo&gt;
  &lt;/legisinfo:legisinfo&gt;
&lt;/abstract:body&gt;
 
	</pre>
    <pre>
              <b><i>Example 3: <sourcexml>@contribtype="issuing-department"</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;contrib contribtype="issuing-department"&gt;
      &lt;org&gt;Association of Accountants&lt;/org&gt;
    &lt;/contrib&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;abstract:body&gt;
  &lt;abstract:target&gt;
    &lt;pubinfo:pubinfo&gt;
      &lt;pubinfo:publisher&gt;Association of Accountants&lt;/pubinfo:publisher&gt;
    &lt;/pubinfo:pubinfo&gt;
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;
 
	</pre>
    <pre>
              <b><i>Example 4: <sourcexml>@contribtype="accreditation"</sourcexml></i></b>
      
<b><i>SOURCE XML</i></b>                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;contrib contribtype="accreditation"&gt;
      &lt;org&gt;Produced in partnership with ...&lt;/org&gt;
    &lt;/contrib&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
<b><i>TARGET XML</i></b>                  

&lt;abstract:body&gt;
  &lt;abstract:author&gt;
    &lt;textitem&gt;Produced in partnership with ...&lt;/textitem&gt;
  &lt;/abstract:author&gt;
&lt;/abstract:body&gt;
 
        </pre>
    <section>
      <title>Changes</title>
      <p>2014-10-14: <ph id="change_20141014_jm">Rule change for
            <sourcexml>@contribtype="bill-sponsor"</sourcexml>. Person markup is removed from
          target. Formerly
            <targetxml>.../legisinfo:sponsor/person:person/person:name.text</targetxml>. Now
            <targetxml>.../legisinfo:sponsor</targetxml>. New data in Oct 2014 redelivery have
          different source markup for sponsor content,
            <sourcexml>leg:billinfo/sponsors/sponsor</sourcexml>. LBU has purposely excluded person
          markup because upcoming deliveries will include non-person content, e.g. "Home Office".
          Mapping for all is set to <targetxml>legisinfo:sponsor</targetxml> to sync target for
          similar content.</ph></p>
      <p>2013-04-08: <ph id="change_20130408_jm">Contributors - Removed references to pending CRs.
          Abstract schema allows all <sourcexml>contrib</sourcexml> mappings.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_contrib.dita  -->
	 
	 
<!-- Vikas Rohilla : Template match source and creates Target -->
  <xsl:template match="dig:info/contrib[@contribtype='issuing-department']" mode="issue-dept">
    <xsl:element name="pubinfo:publisher">
      <xsl:apply-templates select="@* | node()"/>
    </xsl:element>
	</xsl:template>

  <!--Vikas Rohilla : suppresed in the current mode -->
  <xsl:template match="dig:info/contrib[@contribtype='issuing-department']"/>

	<xsl:template match="contrib/@contribtype"/>
  
<!-- Vikas Rohilla : Template to match the contrib when parent is dig:review   -->
  <xsl:template match="contrib[parent::dig:review]">
    <xsl:apply-templates select="node()|@*"/>
  </xsl:template>
  
<!--  Vikas Rohilla : Template match contrib @contribtype='author'-->
  
  <xsl:template match="contrib[@contribtype='author']">
    <xsl:element name="person:contributor">
      <xsl:attribute name="contributor-type">
        <xsl:value-of select="@contribtype"/>  
      </xsl:attribute>
      <xsl:apply-templates select="node()"/>
    </xsl:element>
  </xsl:template>

  
  <xsl:template match="contrib[@contribtype='bill-sponsor']">
    <xsl:element name="legisinfo:billinfo">
      <xsl:element name="legisinfo:sponsor">
        <xsl:apply-templates select="node()"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>



</xsl:stylesheet>