<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	
	xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
	version="2.0" exclude-result-prefixes="dita xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Articles_pubdate">
    <title>pubdate <lnpid>id-HK02-37019</lnpid></title>

    <body>
        <p><sourcexml>pubdate</sourcexml> becomes
                <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates</targetxml>.</p>
        <p><sourcexml>date</sourcexml> becomes <targetxml>pubinfo:pubdate</targetxml>,
                <sourcexml>date/@year</sourcexml> becomes
                <targetxml>pubinfo:pubdate/@year</targetxml> and PCDATA of
                <sourcexml>date</sourcexml> becomes
            <targetxml>pubinfo:pubdate/date-text</targetxml>.</p>

        <pre>
&lt;jrnl:info&gt;
    &lt;pubdate ln.user-displayed="false"&gt;
        &lt;date year="2011"&gt;2011 &lt;/date&gt;
    &lt;/pubdate&gt;
&lt;/jrnl:info&gt;

<b>Becomes</b>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:dates&gt;
            &lt;pubinfo:pubdate year="2011"&gt;
                &lt;date-text&gt;2011 &lt;/date-text&gt;
            &lt;/pubinfo:pubdate&gt;
        &lt;/pubinfo:dates&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;
</pre>

        <section>
            <title>Changes</title>
            <p>2016-03-03: <ph id="change_20160303_PS">Created.</ph></p>
        </section>

    </body>
	</dita:topic>


	<xsl:template match="pubdate">

		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:dates   -->
	        <pubinfo:dates xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
	            <pubinfo:pubdate xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/">
				        <xsl:call-template name="DATE_attributes">
				            <xsl:with-param name="date">
				                <xsl:copy-of select="date"/>
				            </xsl:with-param>
				        </xsl:call-template>
	                   <xsl:apply-templates select="@*[not(name() = ('year', 'month', 'day', 'ln.user-displayed'))]"/>
				       <xsl:apply-templates select="node()"/>
				    </pubinfo:pubdate>
				</pubinfo:dates>

	</xsl:template>
    
    <xsl:template match="pubdate/@ln.user-displayed"/>

	<xsl:template match="date[parent::pubdate]">

		<!--  Original Target XPath:  pubinfo:pubdate   -->
	    <date-text xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="node()"/>
		</date-text>

	</xsl:template>
	
	
	

</xsl:stylesheet>