<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.pubinfo">
  <title>case:pubinfo <lnpid>id-CA01-12228</lnpid></title>
  <body>
    <section>
      <p><sourcexml>case:pubinfo</sourcexml> should be suppressed if it contains any of the
        following values: <ul>
          <li>** Preliminary Version **</li>
          <li>** Unedited **</li>
          <li>** Version textuele **</li>
          <li>Intitulé de la cause :</li>
          <li>** Translation**</li>
          <li>**Translation **</li>
          <li>* Translation **</li>
          <li>** Version textuelle**</li>
          <li>* Traduction **</li>
          <li>** Traducation **</li>
          <li>** Traducion **</li>
          <li>** Traduction *</li>
          <li>** Traduction ***</li>
          <li>** Traduction**</li>
          <li>** Translation</li>
          <li>** Translation **)</li>
          <li>** Translation**</li>
          <li>**Traduction **</li>
          <li>**: Traduction **</li>
          <li>'@c** Traduction **</li>
          <li>'@** Traduction **</li>
          <li>Rpertori:</li>
          <li>** Version textuellle **</li>
          <li>** Translations **</li>
          <li>**Translation **</li>
          <li>** Version textuelle**</li>
          <li>** Version textuelle **#</li>
          <li>** Version Textuelle **</li>
          <li>** Version textuelle *</li>
          <li>** Version textuelle</li>
          <li>** Version franaise **</li>
          <li>** Version francaise **</li>
          <li>** Unofficial Translation [*] **</li>
          <li>** Unofficial Translation ** [*]</li>
          <li>** Version textuelle **</li>
        </ul></p>
      <p>If <sourcexml>case:pubinfo</sourcexml> does not contain one of the values listed above, it
        becomes <targetxml>note</targetxml> with the value of <targetxml>note/@notetype</targetxml>
        set to "other".</p>
      <p>The content of <sourcexml>case:pubinfo</sourcexml> should be placed in
          <targetxml>note/bodytext/p/text</targetxml>.</p>
    </section>
    <example>
      <title>Mapping of <sourcexml>case:pubinfo</sourcexml></title>
      <codeblock>

&lt;case:pubinfo&gt;** Traduction **&lt;/case:pubinfo&gt;

           </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;note notetype="other"&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;** Traduction **&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/note&gt;

           </codeblock>
    </example>
    <section>
      <title>Changes</title>
      <p>2014-07-18: <ph id="change_20140718_PS">Added <b>** Version textuelle **</b> in the suppressed list.</ph></p>
    </section>
  </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.pubinfo.dita  -->

  <!--  Vikas Rohilla :Template to match the case:pubinfo and create the note -->
	<xsl:template match="case:pubinfo">
	  <xsl:element name="note">
	    <xsl:attribute name="notetype">
	      <xsl:text>other</xsl:text>
	    </xsl:attribute>
	    <xsl:element name="p">
	      <xsl:element name="text">
	        <xsl:apply-templates select="node()"/>
	      </xsl:element>
	    </xsl:element>
	  </xsl:element>
	</xsl:template>

</xsl:stylesheet>