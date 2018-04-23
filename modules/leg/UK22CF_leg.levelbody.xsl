<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
    <title><sourcexml>leg:levelbody</sourcexml>
        <lnpid>id-UK22CF-39010</lnpid>
    </title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    The conversion of <sourcexml>leg:levelbody</sourcexml> depends upon its child elements:
                    <ul>
                        <li>
                            If <sourcexml>leg:level</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:level</targetxml> i.e, 
                            <sourcexml>leg:levelbody/leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>.
                        </li>
                        <li>
                            If <sourcexml>leg:bodytext</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:bodytext</targetxml> i.e,
                            <sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
                        </li>
                    </ul>
                </li>
            </ul>
        </section>

        
        <example>
            <title>Source XML 1 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
            <codeblock>

&lt;leg:level&gt;
        &lt;leg:level-vrnt leveltype="section"&gt;
            &lt;leg:heading&gt;
                &lt;desig value="1"&gt;
                    &lt;designum&gt;1&lt;/designum&gt;
                &lt;/desig&gt;
                &lt;title&gt;Citation, commencement and effect&lt;/title&gt;
            &lt;/leg:heading&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;pgrp&gt;
                        &lt;p&gt;
                            &lt;pnum&gt;(1)&lt;/pnum&gt;
                            &lt;text&gt;These Regulations may be cited as the Double Taxation Relief
                                (Surrender of Relievable Tax Within a Group) Regulations 2001 and
                                shall come into force on 31st March 2001.&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;pnum&gt;(2)&lt;/pnum&gt;
                            &lt;text&gt;These Regulations shall have effect in relation to any claim made
                                on or after 31st March 2001 for the surrender of an amount of EUFT
                                arising in respect of a dividend falling within section 806A(2) that
                                is paid by a company resident outside the United Kingdom to a
                                company resident in the United Kingdom, unless the dividend was paid
                                before that date.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/pgrp&gt;
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;


 <b>Becomes</b>


&lt;primlaw:level leveltype="section"&gt;
        &lt;heading&gt;
            &lt;desig value="1"&gt;1&lt;/desig&gt;
            &lt;title&gt;Citation, commencement and effect&lt;/title&gt;
        &lt;/heading&gt;
        &lt;primlaw:bodytext&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;desig&gt;(1)&lt;/desig&gt;
                    &lt;text&gt;These Regulations may be cited as the Double Taxation Relief (Surrender of
                        Relievable Tax Within a Group) Regulations 2001 and shall come into force on
                        31st March 2001.&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;desig&gt;(2)&lt;/desig&gt;
                    &lt;text&gt;These Regulations shall have effect in relation to any claim made on or
                        after 31st March 2001 for the surrender of an amount of EUFT arising in
                        respect of a dividend falling within section 806A(2) that is paid by a
                        company resident outside the United Kingdom to a company resident in the
                        United Kingdom, unless the dividend was paid before that date.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/primlaw:bodytext&gt;
    &lt;/primlaw:level&gt;

             </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-09-19: <ph id="change_20160919_RS">Created</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK22CF\leg.levelbody.dita  -->
	

	
	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:level   -->
	    <xsl:if test="child::leg:level">
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>
	    </xsl:if>
	</xsl:template>

	
	<xsl:template match="leg:levelbody[child::leg:bodytext]">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>