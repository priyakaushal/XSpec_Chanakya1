<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    version="2.0" exclude-result-prefixes="dita">


    <!-- **************** -->
    <!-- MDS Be sure to include Rosetta_designum-Chof-desig-LxAdv-desig.xsl in any driver that includes this module. -->
    <!-- **************** -->
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_desig-to-LexisAdvance_desig">
    <title><sourcexml>desig</sourcexml> to  <targetxml>desig</targetxml> <lnpid>id-CCCC-10278</lnpid></title>
    <body>
        <section>
            <p>
                <sourcexml>desig</sourcexml> becomes <targetxml>desig</targetxml>. </p>
            <p>
                Optional attribute <sourcexml>@value</sourcexml> becomes <targetxml>@value</targetxml>.
            </p>
            <p>
                Optional attribute <sourcexml>@inline</sourcexml> becomes <targetxml>@inline</targetxml>.
            </p>
            <p>
                Drop any remaining attributes.
            </p>
            <p>
                Please also see the instructions in <xref href="../common_newest/Rosetta_edpnum-LxAdv-desig.dita">edpnum</xref> regarding the
                occurrence of both <sourcexml>desig</sourcexml> and <sourcexml>edpnum</sourcexml> as sibling elements
                within the same parent element.
            </p>
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
<!-- Awantika: desig sibling of title becomes toc-ref in AU01 -->
    <!-- Awantika: to resolve the ambiguity between Rosetta_desig-LxAdv-desig_ref.para and Rosetta_desig-LxAdv-desig updated the template match witn not(parent::p) 
    as if desig is in the heading then it will convert ot desig if inside p then it will convert to ref:para. Removed toc-ref as it will bw mapped in toc module.
    -->
	<xsl:template match="desig[not(parent::p)]">
		<!--  Original Target XPath:  desig   -->
	 
	            <desig xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	               <!-- Awantika: created desig @value to get the value from designum and should not get the value of designum in text of desig
	               rather only desiglabel text is populated inside desig-->
	                <xsl:choose>
	                    <xsl:when test="$streamID='AU20'">
	                        <xsl:attribute name="value">
	                            <xsl:value-of select="child::designum"/>
	                        </xsl:attribute>	
	                        <xsl:apply-templates select="node() except designum"/>
	                    </xsl:when>
	                    <!-- $streamID=('NZ11','AU10')
	                        when @id appears on designum, get error.  I suspect any stream would get this error, but 
	                            because this is common I opted for using stream ID.  If you get this error, consider this.
	                            Description: XTDE0410: An attribute node (xml:id) cannot be created after a child of the containing element."
	                            -->
	                    <xsl:when test="$streamID=('NZ11','AU10') and designum">
	                        <xsl:apply-templates select="@value | @inline | designum/@id"/>
	                        <xsl:apply-templates select="*"/>
	                    </xsl:when>
	                    <xsl:when test="$streamID=('NZ11','AU10') and not(designum)">
	                        <xsl:apply-templates select="@value | @inline"/>
	                        <xsl:apply-templates select="node()"/>
	                    </xsl:when>
	                    <xsl:otherwise>
	                        <xsl:apply-templates select="@value | @inline | node()"/>
	                    </xsl:otherwise>
	                </xsl:choose>        
	            </desig>	            
	      
	</xsl:template>
    
    <xsl:template match="desig/@value | desig/@inline">
        <xsl:copy-of select="."/>
    </xsl:template>

<!-- edpnum has it's own element as sibling, and its own module. no need to affect this node. -->

</xsl:stylesheet>