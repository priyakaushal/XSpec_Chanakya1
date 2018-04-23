<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ci="http://www.lexis-nexis.com/ci" 
    xmlns:case="http://www.lexis-nexis.com/glp/case"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_desig_desiglabel-to-LexisAdvance_desig">
    <title><sourcexml>desig</sourcexml> to <targetxml>desig/ref:para</targetxml>
        <lnpid>id-CCCC-10501</lnpid></title>
    <body>
        <section>
            <title>Applicable only on AU01, AU13, NZ03, CA01, CA04 and CA10.</title>
            <p>When source document is having <sourcexml>desig</sourcexml> then
                    <sourcexml>desig</sourcexml> becomes <targetxml>desig/ref:para</targetxml>.</p>
            <p>Value of <sourcexml>desig@value</sourcexml> becomes both <targetxml>desig@value</targetxml> and <targetxml>desig/ref:para@num</targetxml>.</p>
            <p>Value of <targetxml>ref:para/@para-scheme</targetxml> is
                    <sourcexml>ci:reporter</sourcexml> value from (<b><i>first</i></b>)
                    <sourcexml>ci:cite/[@type=”cite4thisdoc”]/ci:case/ci:caseref/ci:reporter</sourcexml>.</p>
            <p><targetxml>ref:para/@para-scheme-type="reporter-abbrev"</targetxml> is hardcoded
                value.</p>
<pre>
&lt;p&gt;
    &lt;desig value="5"&gt;5&lt;/desig&gt;
    &lt;text&gt;...&lt;/text&gt;
&lt;/p&gt;

<b>and</b>

&lt;case:reportercite&gt;
    &lt;ci:cite type="cite4thisdoc"&gt;
        &lt;ci:case&gt;
            &lt;ci:caseinfo&gt;
                &lt;ci:decisiondate year="1974" /&gt;
            &lt;/ci:caseinfo&gt;
            &lt;ci:caseref&gt;
                &lt;ci:reporter value="IPR" /&gt;
                &lt;ci:volume num="1a"&gt;&lt;/ci:volume&gt;
                &lt;ci:edition&gt;
                    &lt;ci:date year="1974" /&gt;
                &lt;/ci:edition&gt;
                &lt;ci:page num="511" /&gt;
            &lt;/ci:caseref&gt;
        &lt;/ci:case&gt;
        &lt;ci:content&gt;
            &lt;citefragment searchtype="CASE-CITE-REF"&gt;(1974) 1a IPR 511&lt;/citefragment&gt;
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
&lt;/case:reportercite&gt;

<b>Becomes</b>

&lt;p&gt;
    &lt;desig value="5"&gt;&lt;ref:para num="5" para-scheme="IPR" para-scheme-type="reporter-abbrev"&gt;5&lt;/ref:para&gt;&lt;/desig&gt;
    &lt;text&gt;...&lt;/text&gt;
&lt;/p&gt;
</pre>
        </section>
 
        <section>
            <title>Changes</title>
            <p>2014-09-03: <ph id="change_20170426_SS">The same rule is applicable on CA10.</ph></p>
            <p>2014-09-03: <ph id="change_20140903_PS">The same rule is applicable on CA01 and CA04.</ph></p>
            <p>2014-08-29: <ph id="change_20140829_SS">Updated instruction and example for handling
                        <targetxml>desig/@value</targetxml> and it's mapped with
                        <targetxml>desig@value/ref:para@num</targetxml> (means
                        <targetxml>ref:para</targetxml> should be placed inside of
                        <targetxml>desig</targetxml> markup).</ph></p>
            <p>2014-08-04: <ph id="change_20140804_PS">Updated instruction for <targetxml>@para-scheme</targetxml> and <targetxml>@para-scheme-type</targetxml> attribute.</ph></p>
            <p>2014-08-01: <ph id="change_20140801_PS">Created, this immediately applies to AU01, AU13 and NZ03.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_desig-LxAdv-desig_ref.para.dita  -->
	 

	<xsl:template match="desig">

		<!--  Original Target XPath:  desig/ref:para   -->
	    <xsl:choose>
	        <xsl:when test="$streamID=('AU01', 'NZ03', 'CA01','CA04')">
	            
	            <desig>
	                <xsl:attribute name="value">
	                    <xsl:value-of select="@value"/>
	                </xsl:attribute>
	                <ref:para>
	                    <xsl:attribute name="num">
	                        <xsl:value-of select="@value"/>
	                    </xsl:attribute>
	                    <xsl:attribute name="para-scheme">
	                        <xsl:value-of select="(//ci:cite/ci:case/ci:caseref/ci:reporter/@value)[1]"/>
	                    </xsl:attribute>
	                    <xsl:attribute name="para-scheme-type">
	                        <xsl:text>reporter-abbrev</xsl:text>
	                    </xsl:attribute>
	                    <xsl:apply-templates select="@* | node()"/>
	                </ref:para>
	                <!-- Awantika: Duplicate ref:para if case:courtcite/ci:cite/@type="cite4thisdoc" in AU01 -->
	                <xsl:if test="$streamID='AU01' and //case:courtcite[ci:cite[@type='cite4thisdoc']]">
	                    <ref:para>
	                        <xsl:attribute name="num">
	                            <xsl:value-of select="@value"/>
	                        </xsl:attribute>
	                        <xsl:attribute name="para-scheme">
	                            <xsl:value-of select="(//ci:au/@courtcode)[1]"/>
	                        </xsl:attribute>
	                        <xsl:attribute name="para-scheme-type">
	                            <xsl:text>reporter-abbrev</xsl:text>
	                        </xsl:attribute>	                   
	                    </ref:para>
	                </xsl:if>
	            </desig>
	            
	        </xsl:when>
	        <xsl:when test="$streamID=('AU13','HK09')">
	            <xsl:choose>
	                <xsl:when test="parent::heading[parent::case:body]">
	                    <desig>
	                        <xsl:value-of select="."/>
	                    </desig>
	                </xsl:when>
	                <xsl:otherwise>
	                    <desig>
	                        <xsl:attribute name="value">
	                            <xsl:value-of select="@value"/>
	                        </xsl:attribute>
	                        <ref:para>
	                            <xsl:attribute name="num">
	                                <xsl:value-of select="@value"/>
	                            </xsl:attribute>
	                            <xsl:attribute name="para-scheme">
	                                <xsl:value-of select="(//ci:cite/ci:case/ci:caseref/ci:reporter/@value)[1]"/>
	                            </xsl:attribute>
	                            <xsl:attribute name="para-scheme-type">
	                                <xsl:text>reporter-abbrev</xsl:text>
	                            </xsl:attribute>
	                            <xsl:apply-templates select="@* | node()"/>
	                        </ref:para>
	                    </desig>
	                </xsl:otherwise>
	            </xsl:choose>
	        </xsl:when>
	    </xsl:choose>
	    
	    
		

	</xsl:template>

	
	
</xsl:stylesheet>