<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.histnote">
    <title>leg:histnote <lnpid>id-IN01-15416</lnpid></title>
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
    &lt;p&gt;&lt;text&gt;[Subs Act A1329 s 3]&lt;/text&gt;&lt;/p&gt;
&lt;/leg:histnote&gt;

      </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;note notetype="historical"&gt;
    &lt;bodytext&gt;
        &lt;p&gt;&lt;text&gt;[Subs Act A1329 s 3]&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
&lt;/note&gt;
    
      </codeblock>
    </example> 
      <note>If source document is having the input scenario "<sourcexml>pgrp/p/leg:histnote</sourcexml>" then conversion needs to drop '<sourcexml>p</sourcexml>' markup in target conversion and target mapping xpath is "<targetxml>pgrp/note[@notetype="historical"]</targetxml>".</note>      
<section>
    <title>Changes</title>
       <p>2014-03-21: <ph id="change_20140321_SSX">Created</ph>.</p>
</section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\IN01_Legislation\leg.histnote.dita  -->
	<xsl:message>IN01_Legislation_leg.histnote.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note[@notetype="historical"]   -->
		<note>
			<xsl:apply-templates select="@* | node()"/>
		</note>

	</xsl:template>

	<xsl:template match="pgrp/p/leg:histnote">

		<!--  Original Target XPath:  pgrp/note[@notetype="historical"]   -->
		<pgrp>
			<note>
				<xsl:apply-templates select="@* | node()"/>
			</note>
		</pgrp>

	</xsl:template>

	<xsl:template match="p">

		<!--  Original Target XPath:  pgrp/note[@notetype="historical"]   -->
		<pgrp>
			<note>
				<xsl:apply-templates select="@* | node()"/>
			</note>
		</pgrp>

	</xsl:template>

</xsl:stylesheet>