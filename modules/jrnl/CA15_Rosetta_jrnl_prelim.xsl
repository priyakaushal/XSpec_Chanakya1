<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA15_Rosetta_jrnl_prelim">
    <title>jrnl:prelim <lnpid>id-CA15-35418</lnpid></title>
    <body>
        <p><sourcexml>jrnl:prelim</sourcexml> This is a container element and will be omitted from
            conversion.</p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;jrnl:prelim searchtype="ARTICLE"&gt;
    ...
&lt;/jrnl:prelim&gt;

            </codeblock>            
        </example>
        <section>
            <title>Changes</title>
            <p>2015-02-17: <ph id="change_20150217_AS">Created.</ph></p>
        </section>
    </body>

	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA15-Journal_Articles\CA15_Rosetta_jrnl_prelim.dita  -->
	<!--<xsl:message>CA15_Rosetta_jrnl_prelim.xsl requires manual development!</xsl:message> -->

    <xsl:template match="jrnl:prelim">

	    <xsl:apply-templates select="jrnl:articletitle"/>
        <xsl:apply-templates select="bookinfo/contrib[@contribtype]"/>
        <xsl:apply-templates select="contrib[@contribtype]"/>
        <xsl:apply-templates select="abstract"/>
	    <xsl:apply-templates select="highlight"/>
     
       
     
	    
		

	</xsl:template>

</xsl:stylesheet>