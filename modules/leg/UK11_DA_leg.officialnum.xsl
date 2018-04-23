<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:abstract="urn:x-lexisnexis:content:abstract:sharedservices:1" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK11_DA_leg.officialnum">
  <title>leg:officialnum <lnpid>id-UK11DA-29430</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:officialnum</sourcexml> becomes
          <targetxml>abstract:body/legisinfo:legisinfo/legisinfo:billinfo/legisinfo:bill</targetxml>.</p></section>
    <note>Create one <targetxml>legisinfo:legisinfo</targetxml>. This may mean changing data
      sequence and that is ok. For example: Source may have
        <sourcexml>leg:info/leg:officialname</sourcexml> and separate
        <sourcexml>leg:info/leg:officialnum</sourcexml>. Target should have one
        <targetxml>legisinfo:legisinfo</targetxml> containing
        <targetxml>legisinfo:names/legisinfo:officialtitle</targetxml> and
        <targetxml>legisinfo:billinfo/legisinfo:bill</targetxml></note>
    <pre>
              <b><i>Example: Source XML 1</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;leg:info&gt;
      &lt;leg:officialname&gt;Scotland Act 2012&lt;/leg:officialname&gt;
    &lt;/leg:info&gt;
    ..... 
    &lt;leg:info&gt;
      &lt;leg:officialnum display-name="Enactment Citation"&gt;2012 c 11&lt;/leg:officialnum&gt;
    &lt;/leg:info&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
	</pre>
    <pre>
                    
              <b><i>Example: Target XML 1</i></b>
    
&lt;abstract:body&gt;
  &lt;legisinfo:legisinfo&gt;
    &lt;legisinfo:names&gt;
      &lt;legisinfo:officialtitle&gt;Scotland Act 2012&lt;/legisinfo:officialtitle&gt;
    &lt;/legisinfo:names&gt;
    &lt;legisinfo:billinfo&gt;
      &lt;legisinfo:bill&gt;2012 c 11&lt;/legisinfo:bill&gt;
    &lt;/legisinfo:billinfo&gt;
  &lt;/legisinfo:legisinfo&gt;
&lt;/abstract:body&gt;

    </pre>
    <pre>
              <b><i>Example: Source XML 2</i></b>
                  

&lt;dig:body&gt;
  &lt;dig:info&gt;
    &lt;leg:info&gt;
      &lt;leg:officialnum display-name="Enactment Citation"&gt;
        &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
          &lt;ci:sesslaw&gt;
            &lt;ci:sesslawinfo&gt;
              &lt;ci:sesslawnum num="2009_2677s_Title"/&gt;
            &lt;/ci:sesslawinfo&gt;
            &lt;ci:sesslawref&gt;
              &lt;ci:standardname normpubcode="UK_SI"/&gt;
            &lt;/ci:sesslawref&gt;
          &lt;/ci:sesslaw&gt;
          &lt;ci:content&gt;SI 2009/2677&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/leg:officialnum&gt;
    &lt;/leg:info&gt;
  &lt;/dig:info&gt;
&lt;/dig:body&gt;
 
    </pre>
    <pre>
                    
              <b><i>Example: Target XML 2</i></b>

&lt;abstract:body&gt;
  &lt;legisinfo:legisinfo&gt;
    &lt;legisinfo:billinfo&gt;
      &lt;legisinfo:bill&gt;
        &lt;lnci:cite status="valid"&gt;
          &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
              &lt;lnci:sesslawnum num="2009_2677s_Title"/&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
              &lt;lnci:standardname normpubcode="UK_SI"/&gt;
            &lt;/lnci:sesslawref&gt;
          &lt;/lnci:sesslaw&gt;
          &lt;lnci:content&gt;SI 2009/2677&lt;/lnci:content&gt;
        &lt;/lnci:cite&gt;
      &lt;/legisinfo:bill&gt;
    &lt;/legisinfo:billinfo&gt;
  &lt;/legisinfo:legisinfo&gt;
&lt;/abstract:body&gt;

    </pre>
    <section>
      <title>Changes</title>
      <p>2013-04-08: <ph id="change_20130408_jm"><sourcexml>leg:officialnum</sourcexml> - Abstract
          schema allows <targetxml>legisinfo:bill/lnci:cite</targetxml>. Removed reference to
          pending CR.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK11DA-Digest-Abstract\UK11_DA_leg.officialnum.dita  -->
 

  <xsl:template match="leg:officialnum">
    <legisinfo:legisinfo>
    <legisinfo:billinfo>
      <legisinfo:bill>
        <xsl:apply-templates select="@* | node()"/>
      </legisinfo:bill>
    </legisinfo:billinfo>
    </legisinfo:legisinfo>
  </xsl:template>
  
  <xsl:template match="leg:officialnum/@display-name"/>
  
  
</xsl:stylesheet>