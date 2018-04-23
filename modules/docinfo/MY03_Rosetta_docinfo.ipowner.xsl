<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="GPL_IN01_Rosetta_docinfo.ipowner">
    <title>docinfo:ipowner <lnpid>id-MY03-16422</lnpid></title>
    <body>
        <section>
            <p>Suppressed <sourcexml>docinfo:ipowner</sourcexml> from target mapping.</p>
<codeblock>
&lt;docinfo:ipowner ipowner="India" trackid="IN0S4J"/&gt;
</codeblock>
            <p>becomes</p>
<codeblock>
&lt;!-- Suppressed from target --&gt;
</codeblock>
            
        </section>
        
        <section>
            <title>Change Log</title>
            <p>2015-12-22: <ph id="change_20151222_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY03_Commentary-From-Prece\MY03_Rosetta_docinfo.ipowner.dita  -->
<!--	<xsl:message>MY03_Rosetta_docinfo.ipowner.xsl requires manual development!</xsl:message> -->

	<xsl:template match="docinfo:ipowner"/>

</xsl:stylesheet>