<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" version="2.0" exclude-result-prefixes="dita source_dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_desig_designum-to-LexisAdvance_desig">
    <title><sourcexml>desig/designum</sourcexml> to  <targetxml>desig</targetxml> <lnpid>id-CCCC-10280</lnpid></title>
    <body>
        <section>
            <p>
                <sourcexml>desig/designum</sourcexml> becomes <targetxml>desig</targetxml>.</p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;desig&gt;
    &lt;designum&gt;2200002817&lt;/designum&gt;
&lt;/desig&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;desig&gt;2200002817&lt;/desig&gt;

	</codeblock>
        </example>

        <section>
            <title>Changes</title>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_designum-Chof-desig-LxAdv-desig.dita  -->

<!-- JL note from dita for HK05
    
    *********************************************************************
                <note>If <sourcexml>dict:body/heading/desig/designum</sourcexml> have
                    <sourcexml>refpt</sourcexml> as child then move target mapping of
                    <sourcexml>refpt</sourcexml> to
                    <targetxml>dict:body/dict:defitem/tei:entry/tei:form/tei:orth/ref:anchor</targetxml></note>
    **********************************************************************-->
    
    
    <!-- ******************************************************************************************
        IMPORTANT NOTE!
    The  template for desig (match = "desig") SHOULD NOT BE IN THIS MODULE.
    
    That template (which used to be here)  has a conflict with the module for desig : 
    /XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_desig-LxAdv-desig.xsl
    
    Having the template for desig in this module caused over 1500 ambiguity errors in one test run.
    
    If you need a template for desig to go with designum, which you probably do, 
    please import the desig module for generic handling
    (/XSLT/ContentArch/Rosetta-to-LA/modules/nonamespace/Rosetta_desig-LxAdv-desig.xsl) 
    into your driver if it is not already there.  If you need specialized handing, please
    create a separate module for the desig template.
    
    Thanks, JL
    ********************************************************************************************** -->
    
 
    
	<xsl:template match="desig/designum">
        <xsl:choose>
            <xsl:when test="$streamID='HK05' and parent::desig/parent::heading/parent::source_dict:body">                    
                        <xsl:apply-templates select="@* | node() except refpt"/>
                        <xsl:apply-templates select="refpt" mode="hk05desig"/>
            </xsl:when>
            <!-- $streamID=('NZ11','AU10')
	                        when @id appears on designum, get error.  I suspect any stream would get this error, but 
	                            because this is common I opted for using stream ID.  If you get this error, consider this.
	                            Description: XTDE0410: An attribute node (xml:id) cannot be created after a child of the containing element."
	                            -->
            <xsl:when test="$streamID=('NZ11','AU10')">
                <xsl:apply-templates select="node() except refpt"/>                               
            </xsl:when>
            <xsl:otherwise>
                   <!-- <xsl:apply-templates select="@* | node()"/>-->
                    <!-- Awantika: ref:anchor is not allowed in desig -->
                    <xsl:apply-templates select="@* | node() except refpt"/>                
            </xsl:otherwise>
        </xsl:choose>
	</xsl:template>
    
    
   
    
    <xsl:template match="refpt" mode="hk05desig">
        <xsl:apply-templates/>
    </xsl:template>

</xsl:stylesheet>