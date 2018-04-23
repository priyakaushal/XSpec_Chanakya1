<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:topic="urn:x-lexisnexis:content:topic:global:1"     xmlns:guid="urn:x-lexisnexis:content:guid:global:1" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita guid topic classify abstract">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_classification">
  <title>classification (and descendants) <lnpid>id-UK11DA-29412</lnpid></title>
  <body>
    <section>
      <p><sourcexml>classification</sourcexml> becomes
          <targetxml>abstract:body/abstract:target/pubinfo:pubinfo/classify:classification</targetxml>
        with descendants as follows:</p>
      <ul>
        <li><sourcexml>classitem[@classscheme]</sourcexml> becomes
            <targetxml>classify:classitem[@classscheme]</targetxml>
          <ul>
            <li><sourcexml>classitem-identifier</sourcexml> becomes
                <targetxml>classify:classitem-identifier</targetxml>
              <ul>
                <li><sourcexml>classname</sourcexml> becomes
                    <targetxml>classify:classname</targetxml></li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </section>
    <note>Occurs in smart forms, dpsi 0KVS.</note>
    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;classification&gt;
      &lt;classitem classscheme="agency"&gt;
        &lt;classitem-identifier&gt;
          &lt;classname&gt;The Law Society&lt;/classname&gt;
        &lt;/classitem-identifier&gt;
      &lt;/classitem&gt;
      &lt;classitem classscheme="agency-division"&gt;
        &lt;classitem-identifier&gt;
          &lt;classname&gt;Litigation Forms&lt;/classname&gt;
        &lt;/classitem-identifier&gt;
      &lt;/classitem&gt;
    &lt;/classification&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:body&gt;
  &lt;abstract:target&gt;
    &lt;pubinfo:pubinfo&gt;
      &lt;classify:classification&gt;
        &lt;classify:classitem classscheme="agency"&gt;
          &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;The Law Society&lt;/classify:classname&gt;
          &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
        &lt;classify:classitem classscheme="agency-division"&gt;
          &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Litigation Forms&lt;/classify:classname&gt;
          &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
      &lt;/classify:classification&gt;
    &lt;/pubinfo:pubinfo&gt;
  &lt;/abstract:target&gt;
&lt;/abstract:body&gt;

                </pre>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_classification.dita  -->
	 

	<xsl:template match="classification">
	  <!-- Rohan Borkar : added condition not to crete empty classify:classification classscheme="ln.legal"/classify:classitem classscheme="alert:alertReference" markup -->
	  <xsl:if test="classitem[@classscheme!='alert:alertReference']">
	  <classify:classification>
		  <xsl:apply-templates select="@* | node()"/>
			</classify:classification>
	  </xsl:if>
	</xsl:template>

	<xsl:template match="classitem">
	  <!-- BRT - added following if statement -->
	  <xsl:if test="@classscheme!='alert:alertReference'">
		<classify:classitem>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem>
	  </xsl:if>
	</xsl:template>

	<xsl:template match="classitem-identifier">
		<classify:classitem-identifier>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classitem-identifier>
	</xsl:template>

	<xsl:template match="classname">
	<classify:classname>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classname>
	</xsl:template>
  
  <xsl:template match="classname"></xsl:template>
  
  
  

</xsl:stylesheet>