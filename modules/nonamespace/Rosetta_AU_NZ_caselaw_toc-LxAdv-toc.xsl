<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_AU_NZ_caselaw_toc_to-LexisAdvance_toc">
    <title><sourcexml>toc</sourcexml> to <targetxml>toc</targetxml> <lnpid>id-CCCC-10241</lnpid></title>
    <body>
        <section>
            <p><sourcexml>toc</sourcexml> becomes <targetxml>toc</targetxml>. The children of
                    <sourcexml>toc</sourcexml> are handled as follows: <ul>
                    <li><sourcexml>heading</sourcexml> becomes <targetxml>heading</targetxml>.</li>
                    <li><sourcexml>toc-entry</sourcexml> becomes <targetxml>toc-entry</targetxml>.
                        The children of <sourcexml>toc-entry</sourcexml> are handled as follows: <ul>
                            <li><sourcexml>heading</sourcexml> becomes
                                    <targetxml>heading</targetxml>.</li>
                        </ul></li>
                </ul></p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;toc&gt;
    &lt;heading&gt;
        &lt;title&gt;
            &lt;emph typestyle="bf"&gt;Table of sections&lt;/emph&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;desig&gt;
                &lt;designum&gt;1-1&lt;/designum&gt;
            &lt;/desig&gt;
            &lt;title&gt;Short title&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
&lt;/toc&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;toc&gt;
    &lt;heading&gt;
        &lt;title&gt;
            &lt;emph typestyle="bf"&gt;Table of sections&lt;/emph&gt;
        &lt;/title&gt;
    &lt;/heading&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;desig&gt;1-1&lt;/desig&gt;
            &lt;title&gt;Short title&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
&lt;/toc&gt;

	</codeblock>
        </example>
        <section>
            <p>If <sourcexml>toc</sourcexml> has a child <sourcexml>page</sourcexml> with a
                following sibling <sourcexml>toc-entry</sourcexml>, <sourcexml>page</sourcexml>
                should map to <targetxml>toc-entry/ref:page</targetxml>. The parent of
                    <targetxml>ref:page</targetxml> should be the <targetxml>toc-entry</targetxml>
                that has been mapped from the following sibling of
                <sourcexml>toc/page</sourcexml>.</p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;toc&gt;
    ...
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;Cash flow problems..............................................................&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum&gt;22&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
    &lt;page reporter="urj" count="2" text="BC9801738 at " subdoc="true"/&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;Lack of accounting information..................................................&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum&gt;23&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
    ...
&lt;/toc&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;toc&gt;
    ...
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;Cash flow problems..............................................................&lt;/title&gt;
            &lt;desig value="22"&gt;22&lt;/desig&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
    &lt;toc-entry&gt;
        &lt;ref:page num="2" page-scheme-type="reporter-abbreviation" page-scheme="urj"/&gt;
        &lt;heading&gt;
            &lt;title&gt;Lack of accounting information..................................................&lt;/title&gt;
            &lt;desig value="23"&gt;23&lt;/desig&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
    ...
&lt;/toc&gt;

	</codeblock>
        </example>
        <section>
            <title>Directions specific AU01 caselaw (all DPSIs) and NZ03 caselaw (only DPSI
                02IT)</title>
            <p>If <sourcexml>desig/designum</sourcexml> occurs after <sourcexml>title</sourcexml>,
                then the following directions should be followed: <ul>
                    <li><sourcexml>title</sourcexml> becomes <targetxml>title</targetxml> as
                        usual.</li>
                    <li><sourcexml>desig/designum</sourcexml> becomes
                        <targetxml>toc-ref</targetxml>.</li>
                </ul></p>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo&gt;
    &lt;docinfo:dpsi id-string="02IT"/&gt;
    ...
&lt;/docinfo&gt;
...
&lt;toc&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;Introduction&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum&gt;1&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;What the Crown alleged against the appellant&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum&gt;5&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;Overview of the appeal&lt;/title&gt;
            &lt;desig&gt;
                &lt;designum&gt;17&lt;/designum&gt;
            &lt;/desig&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
    ...
&lt;/toc&gt;

	</codeblock>
        </example>
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;toc&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;Introduction&lt;/title&gt;
        &lt;/heading&gt;
        &lt;toc-ref&gt;1&lt;/toc-ref&gt;
    &lt;/toc-entry&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;What the Crown alleged against the appellant&lt;/title&gt;
        &lt;/heading&gt;
        &lt;toc-ref&gt;5&lt;/toc-ref&gt;
    &lt;/toc-entry&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;Overview of the appeal&lt;/title&gt;
        &lt;/heading&gt;
        &lt;toc-ref&gt;17&lt;/toc-ref&gt;
    &lt;/toc-entry&gt;
    ...
&lt;/toc&gt;

	</codeblock>
        </example>
        
        <section>
            <title>Scenario for AU01 caselaw</title>
            <p>When <sourcexml>entry-pageref</sourcexml> is a child of <sourcexml>toc-entry</sourcexml> then <sourcexml>toc-entry</sourcexml> becomes <targetxml>toc-entry</targetxml> and <sourcexml>entry-pageref</sourcexml> becomes <targetxml>toc-pageref</targetxml>.</p>
            </section>
            <example>
                <title>Source XML</title>
                <codeblock>
&lt;toc&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;Table of Contents&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;I. Introduction&lt;/title&gt;
        &lt;/heading&gt;
        &lt;entry-pageref&gt;[1]&lt;/entry-pageref&gt;
    &lt;/toc-entry&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;II. Tom&amp;#x2019;s case at trial&lt;/title&gt;
        &lt;/heading&gt;
        &lt;entry-pageref&gt;[13]&lt;/entry-pageref&gt;
    &lt;/toc-entry&gt;
    ...
&lt;/toc&gt;
	</codeblock>
            </example>
            <example>
                <title>Target XML</title>
                <codeblock>
&lt;toc&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;Table of Contents&lt;/title&gt;
        &lt;/heading&gt;
    &lt;/toc-entry&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;I. Introduction&lt;/title&gt;
        &lt;/heading&gt;
        &lt;toc-pageref&gt;[1]&lt;/toc-pageref&gt;
    &lt;/toc-entry&gt;
    &lt;toc-entry&gt;
        &lt;heading&gt;
            &lt;title&gt;II. Tom&amp;#x2019;s case at trial&lt;/title&gt;
        &lt;/heading&gt;
        &lt;toc-pageref&gt;[13]&lt;/toc-pageref&gt;
    &lt;/toc-entry&gt;
    ...
&lt;/toc&gt;
	</codeblock>
            </example>
            
        <section>
            <title>Changes</title>
            <p>2013-11-12: <ph id="change_20131112_PS">Added Instruction and example when <sourcexml>toc-entry</sourcexml> is having child <sourcexml>entry-pageref</sourcexml>. Webstar #: 5093906. This change immediately applies to AU01 Caselaw.</ph></p>
            <p>2013-05-10: <ph id="change_20130510_DSF">Removed the directions to set toc-ref/@type
                    to "paragraph" in the directions specific to NZ03 caselaw. Expanded the
                    NZ03-specific directions to cover AU01.</ph></p>
            <p>2013-04-30: <ph id="change_20130430_DSF">Created new version of instructions for
                        <sourcexml>toc</sourcexml> with directions specific to NZ03
                        caselaw.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_AU_NZ_caselaw_toc-LxAdv-toc.dita  -->
	 

	<xsl:template match="toc">

		<!--  Original Target XPath:  toc   -->
		<toc>	
		    <xsl:apply-templates select="@* | node()"/>	
		   
		    	   	   
		</toc>
	</xsl:template>

	
	<xsl:template match="toc-entry">

		<!--  Original Target XPath:  toc-entry   -->
		<toc-entry>
		    <xsl:if test="following-sibling::page">		      
		        <xsl:apply-templates select="following-sibling::page[1]"/>
		       
		        <!--<xsl:if test="child::entry-pageref">
		            <toc-pageref>
		                <xsl:apply-templates/>
		            </toc-pageref>
		        </xsl:if>-->
		    </xsl:if>
		    <xsl:if test="child::heading[child::desig/designum]">
		        <toc-ref>
		            <xsl:apply-templates select="@* | node()"/>
		        </toc-ref>
		    </xsl:if>
		   
		    <xsl:apply-templates/>
		</toc-entry>
	</xsl:template>

    <xsl:template match="entry-pageref">        
       
        <toc-pageref>
            <xsl:apply-templates select="@* | node()"/>
        </toc-pageref>
        
    </xsl:template>
    
    
<!--	<xsl:template match="desig/designum">

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="title">

		<!-\-  Original Target XPath:  title   -\->
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>

	</xsl:template>

	<xsl:template match="entry-pageref">

		<!-\-  Original Target XPath:  toc-entry   -\->
		<toc-entry>
			<xsl:apply-templates select="@* | node()"/>
		</toc-entry>

	</xsl:template>-->

</xsl:stylesheet>