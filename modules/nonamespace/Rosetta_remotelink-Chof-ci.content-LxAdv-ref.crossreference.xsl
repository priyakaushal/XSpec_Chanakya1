<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0" exclude-result-prefixes="dita ci xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_remotelink-Chof-ci.content-LxAdv-ref.crossreference">
    <title><sourcexml>ci:cite/ci:content/remotelink</sourcexml> <lnpid>id-CCCC-10512</lnpid></title>
    <body>
        <p>This rule only applies when the XPaths <sourcexml>text/ci:cite/ci:content/remotelink</sourcexml> or
            <sourcexml>entry/ci:cite/ci:content/remotelink</sourcexml> occur. In this scenario, each <sourcexml>remotelink</sourcexml> (the
            direct child of <sourcexml>ci:content</sourcexml>) is moved outside the 
            <sourcexml>ci:cite</sourcexml> so that the <sourcexml>remotelink</sourcexml> becomes the <sourcexml>ci:cite</sourcexml> element's immediate next sibling (and also now a
            direct child of <sourcexml>text</sourcexml> or <sourcexml>entry</sourcexml>). Conversion
            is then done on the <sourcexml>ci:cite</sourcexml> element as described in the section <b><i>General Markup</i></b>. The moved <sourcexml>remotelink</sourcexml> element is converted as described in the topic <xref href="Rosetta_remotelink-LxAdv-ref.crossreference.dita"/>.</p> 
        <note>Depending on the attribute values and contents of the <sourcexml>remotelink</sourcexml>, it is converted to <targetxml>ref:crossreference</targetxml>, <targetxml>ref:lnlink</targetxml>, or <targetxml>url</targetxml>.</note>
        <example>
            <title>Source XML </title>
            <codeblock>

&lt;text&gt;
    ...
    &lt;ci:cite searchtype="LEG-REF" status="invalid"&gt;
        &lt;ci:sesslaw&gt;
            &lt;ci:sesslawinfo&gt;
                &lt;ci:sesslawnum num="1970_9a"/&gt;
                &lt;ci:hierpinpoint&gt;
                    &lt;ci:hierlev label="section" num="109BCT"/&gt;
                &lt;/ci:hierpinpoint&gt;
            &lt;/ci:sesslawinfo&gt;
            &lt;ci:sesslawref&gt;
                &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
            &lt;/ci:sesslawref&gt;
        &lt;/ci:sesslaw&gt;
        &lt;ci:content&gt;
            &lt;remotelink hrefclass="http" href="www.somedomain.com/practice-statments/cpi"&gt;Statement of Practice 2/90, page 97&lt;/remotelink&gt;CT
        &lt;/ci:content&gt;
    &lt;/ci:cite&gt;
    ...
&lt;/text&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;text&gt;
    ...
    &lt;lnci:cite&gt;
        &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
                &lt;lnci:sesslawnum num="1970_9a"/&gt;
                &lt;lnci:hierpinpoint&gt;
                    &lt;lnci:hierlev label="section" num="109BCT"/&gt;
                &lt;/lnci:hierpinpoint&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;
                &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
            &lt;/lnci:sesslawref&gt;
        &lt;/lnci:sesslaw&gt;
        &lt;lnci:content&gt;CT&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    &lt;ref:lnlink service="URL"&gt;
        &lt;ref:marker&gt;Statement of Practice 2/90, page 97&lt;/ref:marker&gt;
        &lt;ref:locator&gt;
            &lt;ref:locator-key&gt;
                &lt;ref:key-name name="URL"/&gt;
                &lt;ref:key-value value="http://www.somedomain.com/practice-statments/cpi"/&gt;
            &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:lnlink&gt;
    ...
&lt;/text&gt;

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-10-24: <ph id="change_20141024_JCG">Added this instruction. (R4.5 Content Issue List #1997)</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_remotelink-Chof-ci.content-LxAdv-ref.crossreference.dita  -->
    
	<xsl:template match="text/ci:cite/ci:content[remotelink] | entry/ci:cite/ci:content[remotelink]" priority="25">
	    <xsl:if test="node()[not(self::remotelink)]">
	        <lnci:content>
               <xsl:apply-templates select="@* |node() except remotelink"/>
            </lnci:content>
        </xsl:if>
	</xsl:template>
    
    <xsl:template match="text/ci:cite[ci:content[remotelink]] | entry/ci:cite[ci:content[remotelink]]" priority="25">
        <lnci:cite>
            <xsl:if test="ci:content/link">
                <xsl:attribute name="citeref" select="ci:content/link/@refpt"/>
            </xsl:if>
            <xsl:apply-templates select="@* | node()"/>
        </lnci:cite>
        <xsl:apply-templates select="ci:content/remotelink"/>
    </xsl:template>

	
</xsl:stylesheet>