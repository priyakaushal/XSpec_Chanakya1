<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
    <title>Catchwordgrp <lnpid>id-NZ17CA-25614</lnpid></title>
    <body>
        <section>
            <ul>
                <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml> omit tag and
                    retain content. <ul class="- topic/ul ">
                        <li class="- topic/li ">
                            <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwords</sourcexml> becomes
                            <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification</targetxml> and comes with <targetxml class="+ topic/keyword xml-d/targetxml ">@classscheme="catchwords"</targetxml>
                            <ul class="- topic/ul ">
                                <li class="- topic/li ">
                                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchphrase</sourcexml> becomes
                                    <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem</targetxml>
                                    <ul class="- topic/ul ">
                                        <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem/classify:classitem-identifier</targetxml>
                                            <ul class="- topic/ul ">
                                                <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                                                </li></ul></li></ul></li></ul></li></ul>
                    <note class="- topic/note ">Each instance of <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwords</sourcexml> should be converted to
                        its own <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification[@classscheme="catchwords"]</targetxml> element. Also, each
                        instance of <sourcexml>catchphrase</sourcexml> should be converted to
                        <targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</note>
                </li>
            </ul>

        </section>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;
            &lt;emph typestyle="it"&gt;Shares and Securities&lt;/emph&gt;
        &lt;/catchphrase&gt;
        &lt;catchphrase&gt;
            &lt;emph typestyle="it"&gt;Crown retail deposit guarantee scheme&lt;/emph&gt;
        &lt;/catchphrase&gt;
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

      </codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;abstract:head&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
        &lt;classify:classitem&gt;
            &lt;classify:classitem-identifier&gt;
                &lt;classify:classname&gt;
                    &lt;emph typestyle="it"&gt;Shares and Securities&lt;/emph&gt;
                &lt;/classify:classname&gt;
            &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
        &lt;classify:classitem&gt;
            &lt;classify:classitem-identifier&gt;
                &lt;classify:classname&gt;
                    &lt;emph typestyle="it"&gt;Crown retail deposit guarantee scheme&lt;/emph&gt;
                &lt;/classify:classname&gt;
            &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
&lt;/abstract:head&gt;

      </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
        
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CA_Citatordoc_To_Abstract\catchwordgrp.dita  -->
	
	<!-- Sudhanshu Srivastava : 
	     Edited on : 22 Aug 2017.
	     Comments: This module is handling catchwordgrp and processing its child nodes.
	-->

	<xsl:template match="catchwordgrp">
		<!--  Original Target XPath:  classify:classification   -->
			<xsl:apply-templates select="@* | node()"/>
	</xsl:template>

	<xsl:template match="catchwords">
		<!--  Original Target XPath:  classify:classification   -->
	    <classify:classification>
	        <xsl:attribute name="classscheme" select="'catchwords'"/>
			<xsl:apply-templates select="node()"/>
		</classify:classification>
	</xsl:template>

	<xsl:template match="catchphrase">
		<!--  Original Target XPath:  classify:classification/classify:classitem   -->
			<classify:classitem>
			    <classify:classitem-identifier>
			        <classify:classname>
				<xsl:apply-templates select="@* | node()"/>
			        </classify:classname>
			    </classify:classitem-identifier>
			</classify:classitem>
	</xsl:template>

</xsl:stylesheet>