<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_dispformula-to-LexisAdvance_formula">
    <title><sourcexml>dispformula</sourcexml> to  <targetxml>formula</targetxml> <lnpid>id-CCCC-10281</lnpid></title>
    <body>
        <section>
            <p>
                <sourcexml>dispformula</sourcexml> becomes <targetxml>formula</targetxml>
                <ul>
                    <li>
                        <sourcexml>frac</sourcexml> becomes <targetxml>frac</targetxml>
                        
                        
                        <ul>
                            <li>
                                <sourcexml>numer</sourcexml> becomes <targetxml>numer</targetxml> is the required child element for <targetxml>frac</targetxml>.
                            </li>
                            
                            <li>
                                <sourcexml>denom</sourcexml> becomes <targetxml>denom</targetxml> is the required child element for <targetxml>frac</targetxml>.
                            </li>
                        </ul> 
                    </li>
                </ul>            
            </p>
        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;dispformula&gt;
    &lt;frac&gt;
        &lt;numer&gt;2 &amp;times; P &amp;times; (J &amp;minus; A)&lt;/numer&gt;
        &lt;denom&gt;J&lt;/denom&gt;
    &lt;/frac&gt;
&lt;/dispformula&gt;
	
            </codeblock>
        </example>
	
        <example>
		  <title>Target XML</title>
		  <codeblock>

&lt;formula&gt;
    &lt;frac&gt;
         &lt;numer&gt;2 &amp;#x00D7; P &amp;#x00D7; (J &amp;#x2212; A)&lt;/numer&gt;
         &lt;denom&gt;J&lt;/denom&gt;
    &lt;/frac&gt;
&lt;/formula&gt;

		  </codeblock>
        </example>

        <section>
            <title>Changes</title>
        </section>
    </body>
	</dita:topic>


	<xsl:template match="dispformula">

		<!--  Original Target XPath:  formula   -->
	    <formula xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</formula>

	</xsl:template>
    
<!-- MDS 2017-04-20 - This templates is already defined in '/nonamespace/Rosetta_frac-LxAdv-num_frac.xsl' -->
<!--	<xsl:template match="frac">

		<!-\-  Original Target XPath:  frac   -\->
		<frac>
			<xsl:apply-templates select="@* | node()"/>
		</frac>

	</xsl:template>-->
    
    <!-- MDS 2017-04-20 - This templates is already defined in '/nonamespace/Rosetta_frac-LxAdv-num_frac.xsl' -->
	<!--<xsl:template match="numer">

		<!-\-  Original Target XPath:  numer   -\->
		<numer>
			<xsl:apply-templates select="@* | node()"/>
		</numer>

	</xsl:template>-->
    
<!-- MDS 2017-04-20 - This templates is already defined in '/nonamespace/Rosetta_frac-LxAdv-num_frac.xsl' -->
	<!--<xsl:template match="denom">

		<!-\-  Original Target XPath:  denom   -\->
		<denom>
			<xsl:apply-templates select="@* | node()"/>
		</denom>

	</xsl:template>-->

</xsl:stylesheet>