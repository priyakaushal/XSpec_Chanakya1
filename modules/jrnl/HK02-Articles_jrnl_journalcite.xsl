<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Articles_jrnl_journalcite">
    <title>jrnl:journalcite <lnpid>id-HK02-37015</lnpid></title>

    <body>
        <p><sourcexml>jrnl:journalcite</sourcexml> becomes
                <targetxml>newsitem:head/ref:citations/ref:cite4thisresource/@citetype="cite4thisdoc"</targetxml></p>

        <pre>
&lt;jrnl:body&gt;
    &lt;jrnl:info&gt;
        &lt;jrnl:journalcite&gt;
            &lt;ci:cite type="cite4thisdoc"&gt;
                &lt;ci:case&gt;
                    &lt;ci:caseref&gt;
                        &lt;ci:reporter value="APLR"/&gt;
                        &lt;ci:volume num="11-1"/&gt;
                        &lt;ci:edition&gt;
                            &lt;ci:date year="2003"/&gt;
                        &lt;/ci:edition&gt;
                        &lt;ci:page num="1"/&gt;
                    &lt;/ci:caseref&gt;
                &lt;/ci:case&gt;
                &lt;ci:content&gt;
                    &lt;citefragment searchtype="CASE-CASE-REF"&gt;(2003) 11-1 APLR 1 &lt;/citefragment&gt;
                &lt;/ci:content&gt;
            &lt;/ci:cite&gt;
        &lt;/jrnl:journalcite&gt;
    &lt;/jrnl:info&gt;
&lt;/jrnl:body&gt;

<b>Becomes</b>

&lt;newsitem:head&gt;
    &lt;ref:citations&gt;
        &lt;ref:cite4thisresource citetype="cite4thisdoc"&gt;
            &lt;lnci:cite&gt;
                &lt;lnci:case&gt;
                    &lt;lnci:caseref&gt;
                        &lt;lnci:reporter value="APLR"/&gt;
                        &lt;lnci:volume num="11-1"/&gt;
                        &lt;lnci:edition&gt;
                            &lt;lnci:date year="2003"/&gt;
                        &lt;/lnci:edition&gt;
                        &lt;lnci:page num="1"/&gt;
                    &lt;/lnci:caseref&gt;
                &lt;/lnci:case&gt;
                &lt;lnci:content&gt;(2003) 11-1 APLR 1 &lt;/lnci:content&gt;
            &lt;/lnci:cite&gt;
        &lt;/ref:cite4thisresource&gt;
    &lt;/ref:citations&gt;
&lt;/newsitem:head&gt;
</pre>

        <section>
            <title>Changes</title>
            <p>2016-03-03: <ph id="change_20160303_PS">Created.</ph></p>
        </section>

    </body>
	</dita:topic>

	<xsl:template match="jrnl:journalcite">

		<!--  Original Target XPath:  newsitem:head/ref:citations/ref:cite4thisresource/@citetype="cite4thisdoc"   -->
			<ref:citations xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<ref:cite4thisresource>
					<xsl:attribute name="citetype">
						<xsl:text>cite4thisdoc</xsl:text>
					</xsl:attribute>
				    <xsl:apply-templates/>
				</ref:cite4thisresource>
			</ref:citations>

	</xsl:template>

</xsl:stylesheet>