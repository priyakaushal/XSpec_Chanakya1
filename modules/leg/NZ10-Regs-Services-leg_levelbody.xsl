<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0"
	exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="NZ-Regs-Services-leg_levelbody">
		<title>leg:levelbody and leg:bodytext <lnpid>id-NZ10-24416</lnpid></title>
		<body>
			<section>
				<ul>
					<li><sourcexml>leg:levelbody</sourcexml> and <sourcexml>leg:bodytext</sourcexml>
						comes in following scenarios: <ul>
							<li>If the elements <sourcexml>leg:levelbody</sourcexml> and
									<sourcexml>leg:bodytext</sourcexml> occur simultaneously then
									<b>becomes</b>
								<targetxml>primlaw:bodytext</targetxml> and populated as: <pre>
              <b><i>Example: Source XML 1</i></b>


&lt;leg:levelbody&gt;
	&lt;leg:bodytext&gt;
		&lt;p&gt;&lt;text&gt;These regulations shall come into force on the 1st day of August 1987.&lt;/text&gt;&lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

                
</pre>
								<pre>

              <b><i>Example: Target XML 1</i></b>

&lt;primlaw:bodytext&gt;
	&lt;p&gt;&lt;text&gt;These regulations shall come into force on the 1st day of August 1987.&lt;/text&gt;&lt;/p&gt;
&lt;/primlaw:bodytext&gt;

                </pre>
							</li> <li>If the element <sourcexml>leg:levelbody</sourcexml> has child
									<sourcexml>leg:level</sourcexml> then it becomes
									<targetxml>primlaw:level</targetxml> and populated as: <pre>  
 
&lt;leg:levelbody&gt;
	&lt;leg:level id="1987R200S1-1"&gt;
		&lt;leg:level-vrnt leveltype="subreg" searchtype="LEGISLATION SUBREG"&gt;
			&lt;leg:heading inline="true"&gt;
				&lt;desig&gt;&lt;designum&gt;&lt;refpt id="1987R200S1-1" type="ext"/&gt;(1)&lt;/designum&gt;&lt;/desig&gt;
			&lt;/leg:heading&gt;
			....
		&lt;/leg:level-vrnt&gt;
	&lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

          
                <b>Becomes</b>
                  

&lt;primlaw:level leveltype="subregulation"&gt;
	&lt;ref:anchor id="1987R200S1-1" anchortype="global"/&gt;
	&lt;heading&gt;
    	&lt;desig&gt;(1)&lt;/desig&gt;
    &lt;/heading&gt;
    ....
&lt;/primlaw:level&gt;                
               
                </pre>
								<note>Refer common_rosetta_refpt for handling of
										<sourcexml>refpt</sourcexml></note>
							</li> <li>If the input documents are having scenario
									<sourcexml>leg:bodytext/leg:heading/subtitle</sourcexml> then it
								will becomes <targetxml>primlaw:bodytext/h</targetxml>
								<pre>


&lt;leg:bodytext&gt;
	&lt;leg:heading&gt;
		&lt;subtitle&gt;[Excerpts only]&lt;/subtitle&gt;
	&lt;/leg:heading&gt;
	....
&lt;/leg:bodytext&gt;


                     
                 <b>Becomes</b>
                	

&lt;primlaw:bodytext&gt;
	&lt;h&gt;[Excerpts only]&lt;/h&gt;
    ....
&lt;/primlaw:bodytext&gt;
    
                </pre>
							</li>
						</ul>
					</li>
				</ul>
			</section>
		</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ10_Regulation_From_Services\NZ-Regs-Services-leg_levelbody.dita  -->
	<!--<xsl:message>NZ-Regs-Services-leg_levelbody.xsl requires manual development!</xsl:message>-->

	<xsl:template match="leg:levelbody">
		<!--  Original Target XPath:  primlaw:bodytext   -->
		
			<xsl:apply-templates select="@* | node()"/>
		
	</xsl:template>

	<xsl:template match="leg:levelbody/leg:bodytext">
		<!--  Original Target XPath:  primlaw:bodytext   -->

			<xsl:apply-templates select="@* | node()"/>
		
	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading">
		<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="leg:bodytext/leg:heading/subtitle">
		<!--  Original Target XPath:  primlaw:bodytext/h   -->
		
			<h>
				<xsl:apply-templates select="@* | node()"/>
			</h>
		

	</xsl:template>

</xsl:stylesheet>
