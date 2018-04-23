<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.histnote">
    <title>leg:histnote <lnpid>id-HK04-36614</lnpid></title>
  <body>
    <section>
        <p><sourcexml>leg:histnote</sourcexml>
            <b>becomes</b>
            <targetxml>note[@notetype="historical"]</targetxml> and populated as below: 
        </p>
        
    </section>
    <example>
            <title>Mapping of <sourcexml>leg:histnote</sourcexml></title>
            <codeblock>

&lt;leg:histnote&gt;
    &lt;p&gt;&lt;text&gt;[(25 of 1999 s 19)]&lt;/text&gt;&lt;/p&gt;
&lt;/leg:histnote&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;note notetype="historical"&gt;
    &lt;bodytext&gt;
        &lt;p&gt;&lt;text&gt;[(25 of 1999 s 19)]k&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/note&gt;
    
      </codeblock>
        </example> 
  	<!-- MDS This instruction moved to Rosetta p module -->
      <note>If source document is having the input scenario "<sourcexml>pgrp/p/leg:histnote</sourcexml>" then 
      	conversion needs to drop '<sourcexml>p</sourcexml>' markup in target conversion and target mapping xpath is 
      	"<targetxml>pgrp/note[@notetype="historical"]</targetxml>".</note>      
      <section>
          <title>Changes</title>
          <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
      </section>
  </body>
	</dita:topic>

	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note[@notetype="historical"]   -->
	    <note xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@*"/>
			<xsl:attribute name="notetype">historical</xsl:attribute>
			<xsl:choose>
			    <xsl:when test="bodytext">
			        <xsl:apply-templates select="node()"/>
			    </xsl:when>
			    <xsl:otherwise>
			        <bodytext>
			            <xsl:apply-templates select="node()"/>
			        </bodytext>
			    </xsl:otherwise>
			</xsl:choose>
		</note>

	</xsl:template>

</xsl:stylesheet>