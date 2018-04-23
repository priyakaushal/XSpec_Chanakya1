<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.histnote">
  <title>leg:histnote <lnpid>id-HK06-37412</lnpid></title>
  <body>
    <section>
      <p><sourcexml>leg:histnote</sourcexml> becomes <targetxml>note</targetxml> with attribute 
      	<targetxml>@notetype="historical"</targetxml> and create child element <targetxml>bodytext</targetxml></p> 
    </section>
    <example>
      <title>Mapping of <sourcexml>leg:histnote</sourcexml></title>
      <codeblock>

&lt;leg:histnote&gt;
   &lt;p&gt;
    &lt;text&gt;[( 24 of 1988 s 3; 103 of 1995 s 27)]&lt;/text&gt;
   &lt;/p&gt;
&lt;/leg:histnote&gt;

      </codeblock>
      <b>becomes</b>
      <codeblock>

&lt;note notetype="historical"&gt;
  &lt;bodytext&gt;
     &lt;p&gt;
     &lt;text&gt;[( 24 of 1988 s 3; 103 of 1995 s 27)]&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/note&gt;
    
      </codeblock>
    </example>
    <note>If <sourcexml>leg:histnote</sourcexml> comes under the <sourcexml>leg:bodytext</sourcexml>
      then it should be mapped with <targetxml>primlaw:bodytext/note</targetxml> with attribute
        <targetxml>@notetype="historical"</targetxml>.</note>
    <note>If <sourcexml>leg:histnote</sourcexml> comes under the <sourcexml>defitem</sourcexml>
      then it should be mapped with <targetxml>defitem/note</targetxml> with attribute
      <targetxml>@notetype="historical"</targetxml>.</note>
    <note>If <sourcexml>leg:histnote</sourcexml> comes under the <sourcexml>leg:heading</sourcexml>
      then it should be mapped with <targetxml>heading/note</targetxml> with attribute
      <targetxml>@notetype="historical"</targetxml>.</note>
    <section>
      <title>Changes</title>
      <p>2016-04-19: Created.</p>
    </section>  
  </body>
	</dita:topic>

	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note   -->
	  <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:attribute name="notetype">historical</xsl:attribute>
			<bodytext>
			  <xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</note>

	</xsl:template>

	

</xsl:stylesheet>