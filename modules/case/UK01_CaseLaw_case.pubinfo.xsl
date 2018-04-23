<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0" exclude-result-prefixes="dita case glp lnf xd">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.pubinfo">
		<title>case:pubinfo <lnpid>id-UK01-27043</lnpid>
		</title>
		<body>
			<section>
				<p><sourcexml>case:pubinfo</sourcexml> becomes <targetxml>note</targetxml> with the value of
						<targetxml>note/@notetype</targetxml> set to "other".</p>
				<p><sourcexml>case:pubinfo</sourcexml> should be suppressed if it contains any of the following values: <ul>
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
					</ul></p>
				<p>The content of <sourcexml>case:pubinfo</sourcexml> should be placed in
						<targetxml>note/bodytext/p/text</targetxml>.</p>
			</section>
			<example>
				<title>Mapping of <sourcexml>case:pubinfo</sourcexml></title>
				<codeblock> &lt;case:pubinfo&gt;** Traduction **&lt;/case:pubinfo&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;note notetype="other"&gt; &lt;bodytext&gt; &lt;p&gt; &lt;text&gt;** Traduction **&lt;/text&gt;
					&lt;/p&gt; &lt;/bodytext&gt; &lt;/note&gt; </codeblock>
			</example>
			<section>
				<title>Changes</title>
				<p>2016-12-05: <ph id="change_20161205_RS">Added instructions for handling case:pubinfo elements.</ph></p>
			</section>
		</body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\case.pubinfo.dita  -->
	
	<xd:doc>
		<xd:desc>
			<xd:p>Create lookup table in lnf:* namespace</xd:p>
		</xd:desc>
	</xd:doc>
	<lnf:pubinfoStrings>
		<lnf:string>** Preliminary Version **</lnf:string>
		<lnf:string>** Unedited **</lnf:string>
		<lnf:string>** Version textuele **</lnf:string>
		<lnf:string>Intitulé de la cause :</lnf:string>
		<lnf:string>** Translation**</lnf:string>
		<lnf:string>**Translation **</lnf:string>
		<lnf:string>* Translation **</lnf:string>
		<lnf:string>** Version textuelle**</lnf:string>
		<lnf:string>* Traduction **</lnf:string>
		<lnf:string>** Traducation **</lnf:string>
		<lnf:string>** Traducion **</lnf:string>
		<lnf:string>** Traduction *</lnf:string>
		<lnf:string>** Traduction ***</lnf:string>
		<lnf:string>** Traduction**</lnf:string>
		<lnf:string>** Translation</lnf:string>
		<lnf:string>** Translation **)</lnf:string>
		<lnf:string>** Translation**</lnf:string>
		<lnf:string>**Traduction **</lnf:string>
		<lnf:string>**: Traduction **</lnf:string>
		<lnf:string>'@c** Traduction **</lnf:string>
		<lnf:string>'@** Traduction **</lnf:string>
		<lnf:string>Rpertori:</lnf:string>
		<lnf:string>** Version textuellle **</lnf:string>
		<lnf:string>** Translations **</lnf:string>
		<lnf:string>**Translation **</lnf:string>
		<lnf:string>** Version textuelle**</lnf:string>
		<lnf:string>** Version textuelle **#</lnf:string>
		<lnf:string>** Version Textuelle **</lnf:string>
		<lnf:string>** Version textuelle *</lnf:string>
		<lnf:string>** Version textuelle</lnf:string>
		<lnf:string>** Version franaise **</lnf:string>
		<lnf:string>** Version francaise **</lnf:string>
		<lnf:string>** Unofficial Translation [*] **</lnf:string>
		<lnf:string>** Unofficial Translation ** [*]</lnf:string>
	</lnf:pubinfoStrings>

	<xd:doc>
		<xd:desc>
			<xd:p>Compare the value of case:pubinfo with values from lookup table; if found do not output.</xd:p>
		</xd:desc>
	</xd:doc>
  <xsl:template match="case:pubinfo"><!--  Original Target XPath:  note   -->
    <xsl:if test="not(text()=document('')/xsl:stylesheet/lnf:pubinfoStrings/lnf:string)">
      <xsl:choose>
        <xsl:when test="not(note or glp:note)">
          <note>
            <xsl:attribute name="notetype" select="'other'"/>
            <bodytext>
              <p>
                <text>
                  <xsl:apply-templates select="@* | node()"/>
                </text>
              </p>
            </bodytext>
          </note>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="@* | node()"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
  
</xsl:stylesheet>
