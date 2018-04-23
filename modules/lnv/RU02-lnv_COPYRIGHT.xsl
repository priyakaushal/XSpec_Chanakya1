<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:lnv="http://www.lexis-nexis.com/lnv" xmlns:lnvxe="http://www.lexis-nexis.com/lnvxe" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita lnv lnvxe">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="RU02-lnv_COPYRIGHT">
    <title>lnv:COPYRIGHT <lnpid>id-RU02-32056</lnpid>
    </title>
    
    <body>
        <p>
     <sourcexml>lnv:COPYRIGHT</sourcexml> becomes <targetxml>pubinfo:pubinfo/copyright</targetxml>   
     </p>
        <p>
            <sourcexml>lnvxe:copyright.year/@year</sourcexml> becomes
                <targetxml>pubinfo:pubinfo/copyright/copyright-year</targetxml></p>
             <p>
            <sourcexml>lnvxe:copyright.holder</sourcexml> becomes
                <targetxml>pubinfo:pubinfo/copyright/copyright-holder</targetxml></p>
        <example>
            <title>Source XML</title>
            <codeblock>
&lt;lnv:COPYRIGHT&gt;COPYRIGHT ©&lt;lnvxe:copyright.year year="2013"
            &gt;2013&lt;/lnvxe:copyright.year&gt;&lt;lnvxe:copyright.holder&gt;KLINE PRESTON PUBLISHING,
            INC.&lt;/lnvxe:copyright.holder&gt; ALL RIGHTS RESERVED
&lt;/lnv:COPYRIGHT&gt;
	</codeblock>
        </example>
        
        <example>
            <title>Target XML </title>
            <codeblock>
&lt;doc:metadata&gt;  
    &lt;pubinfo:pubinfo&gt;
        &lt;copyright&gt;COPYRIGHT © 
            &lt;copyright-year&gt;2013&lt;/copyright-year&gt;
            &lt;copyright-holder&gt;KLINE PRESTON PUBLISHING, INC.&lt;/copyright-holder&gt;
            ALL RIGHTS RESERVED
        &lt;/copyright&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;
	</codeblock>
        </example>
        
        <section>
            <title>Created</title>
            <p>2014-07-18: <ph id="change_20140718_AS">Added instructions for mapping of
                <sourcexml>lnv:COPYRIGHT</sourcexml> as per new source data</ph></p>            
        </section>
        
    </body>
    
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\RU02\RU02-lnv_COPYRIGHT.dita  -->
	<xsl:message>RU02-lnv_COPYRIGHT.xsl requires manual development!</xsl:message> 

	<xsl:template match="lnv:COPYRIGHT">

		<!--  Original Target XPath:  pubinfo:pubinfo/copyright   -->
		<pubinfo:pubinfo>
			<copyright>
				<xsl:apply-templates select="@* | node()"/>
			</copyright>
		</pubinfo:pubinfo>

	</xsl:template>

	<xsl:template match="lnvxe:copyright.year/@year">

		<!--  Original Target XPath:  pubinfo:pubinfo/copyright/copyright-year   -->
		<pubinfo:pubinfo>
			<copyright>
				<copyright-year>
					<xsl:apply-templates select="@* | node()"/>
				</copyright-year>
			</copyright>
		</pubinfo:pubinfo>

	</xsl:template>

	<xsl:template match="lnvxe:copyright.holder">

		<!--  Original Target XPath:  pubinfo:pubinfo/copyright/copyright-holder   -->
		<pubinfo:pubinfo>
			<copyright>
				<copyright-holder>
					<xsl:apply-templates select="@* | node()"/>
				</copyright-holder>
			</copyright>
		</pubinfo:pubinfo>

	</xsl:template>

</xsl:stylesheet>