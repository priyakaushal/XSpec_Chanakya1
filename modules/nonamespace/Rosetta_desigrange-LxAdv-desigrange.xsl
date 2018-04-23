<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_desigrange-to-LexisAdvance_desigrange">
    <title><sourcexml>desigrange</sourcexml> to <targetxml>desigrange</targetxml> <lnpid>id-CCCC-10518</lnpid></title>
    <body>
        <section>
            <p>
                <sourcexml>desigrange[@firstvalue @lastvalue]</sourcexml> becomes
                    <targetxml>desigrange[@firstvalue @lastvalue]</targetxml>. The attributes are
                optional. Children convert as follows:<ul>
                    <li><sourcexml>desiglabel</sourcexml> becomes <targetxml>desig</targetxml> and
                            <sourcexml>designum</sourcexml> also becomes
                            <targetxml>desig</targetxml>. If both source elements are present, the
                        content is concatenated for target. For concatenation rules, see
                        instructions for <xref href="Rosetta_desiglabel-Chof-desig-LxAdv-desig.dita"><sourcexml>desig/desiglabel</sourcexml></xref>.</li>
                    <li><sourcexml>alias[@kw]</sourcexml> becomes
                            <targetxml>aliased-text[@alias-keyword]</targetxml>.</li>
                    <li>
                        <note>If there is nested <sourcexml>desigrange/designum/designum</sourcexml>
                            then both the <sourcexml>designum</sourcexml> content will be
                            concatenated inside one <targetxml>desig</targetxml>. Please refer the
                            example below.</note>
                    </li>
                </ul></p>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;desigrange firstvalue="4" lastvalue="7"&gt;
    &lt;desiglabel&gt;Sections &lt;/desiglabel&gt;
    &lt;designum&gt;4 to 7&lt;/designum&gt;
    &lt;alias kw="4"&gt;4&lt;/alias&gt;
    &lt;alias kw="5"&gt;5&lt;/alias&gt;
    &lt;alias kw="6"&gt;6&lt;/alias&gt;
    &lt;alias kw="7"&gt;7&lt;/alias&gt;
&lt;/desigrange&gt;

            </codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;desigrange firstvalue="4" lastvalue="7"&gt;
    &lt;desig&gt;Sections 4 to 7&lt;/desig&gt;
    &lt;aliased-text alias-keyword="4"&gt;4&lt;/alias&gt;
    &lt;aliased-text alias-keyword="5"&gt;5&lt;/alias&gt;
    &lt;aliased-text alias-keyword="6"&gt;6&lt;/alias&gt;
    &lt;aliased-text alias-keyword="7"&gt;7&lt;/alias&gt;
&lt;/desigrange&gt;

            </codeblock>
        </example>
        
        <example>
            <title>Source XML for nested designum</title>
            <codeblock>

&lt;desigrange firstvalue="I" lastvalue="a"&gt;
    &lt;designum&gt;I&lt;/designum&gt;
    &lt;designum&gt;a&lt;/designum&gt;
&lt;/desigrange&gt;

            </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;desigrange firstvalue="I" lastvalue="a"&gt;
    &lt;desig&gt;I a&lt;/desig&gt;
&lt;/desigrange&gt;

            </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2015-12-19: <ph id="change_20161219_AS">Instructions for nested designum.</ph></p>
            <p>2015-02-10: <ph id="change_20150210_jm">New section. Responds to UK12 data but rules
                    will be generally applicable. R4.5 Content Issue 2162.</ph></p>
        </section>
    </body>
	</dita:topic>
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_desigrange-LxAdv-desigrange.dita  -->
    <!-- Sudhanshu Srivastava 
         Edited :- 19 June 2017.
         Comments :- This is common module for UK06 only. Initially drafted on 19 june 2017.
    -->
	<xsl:template match="desigrange">
		<!--  Original Target XPath:  desigrange   -->
	    <desigrange>
	        <xsl:choose>
	            <xsl:when test="$streamID='UK12'">
	                <xsl:apply-templates select="@* | node() "/>
	            </xsl:when>
	            <xsl:when test="$streamID='UK22LF'">
	                <xsl:apply-templates select="@*"/>
	               <xsl:if test="desiglabel or designum">	                   
	                   <desig>	                       
	                       <xsl:apply-templates select="desiglabel | designum" mode="desigrange"/>
	                   </desig>
	               </xsl:if>
	                <xsl:apply-templates select="node() except (desiglabel | designum)"/>
	            </xsl:when>
	            <xsl:otherwise>
	                <xsl:apply-templates select="@* | node() except designum"/>
	            </xsl:otherwise>
	        </xsl:choose>	        
		</desigrange>
	</xsl:template>
    
    <xsl:template match="desigrange/@firstvalue">
        <xsl:attribute name="firstvalue" select="."/>
    </xsl:template>
    
    <xsl:template match="desigrange/@lastvalue">
        <xsl:attribute name="lastvalue" select="."/>
    </xsl:template>


    <!-- Sudhanshu Srivastava : Added this element 'designum' parent 'desigrange' for UK06   -->
    <xsl:template match="designum[parent::desigrange][$streamID='UK06']">
        <xsl:apply-templates select="@* | node() except refpt"/>                
    </xsl:template>
    
    <!-- Vikas Rohlla : added this for the streamID UK12    -->
    <xsl:template match="designum[parent::desigrange][$streamID='UK12']">
        <desig>
            <xsl:apply-templates select="@* | node() except refpt"/> 
        </desig>
    </xsl:template>
    
	<xsl:template match="alias">
		<!--  Original Target XPath:  aliased-text[@alias-keyword]   -->
	    <aliased-text>
			<xsl:apply-templates select="@* | node()"/>
		</aliased-text>
	</xsl:template>

    <xsl:template match="alias/@kw">
        <!--  Original Target XPath:  aliased-text[@alias-keyword]   -->
        <xsl:attribute name="alias-keyword" select="."/>
    </xsl:template>
    
    <xsl:template match="desiglabel | designum" mode="desigrange">
        <xsl:apply-templates/>
    </xsl:template>
    
</xsl:stylesheet>