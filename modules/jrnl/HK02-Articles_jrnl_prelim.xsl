<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Articles_jrnl_prelim">
    <title>jrnl:prelim <lnpid>id-HK02-37016</lnpid></title>

    <body>
        <p><sourcexml>jrnl:prelim</sourcexml> conversion
            need to omit this element.</p>

        <p>
            <sourcexml>jrnl:prelim/heading/title</sourcexml> becomes <targetxml>nitf:body.head/nitf:hedline/nitf:hl1</targetxml></p>

        <p>Drop <sourcexml>@searchtype</sourcexml> attribute from <sourcexml>heading</sourcexml>
            element.</p>

        <pre>
&lt;jrnl:body&gt;
    &lt;jrnl:prelim&gt;
        &lt;heading searchtype="JOURNAL-HEADING"&gt;
            &lt;title&gt; Peace in Sri Lanka: Problems and Prospects&lt;/title&gt;
        &lt;/heading&gt;
        &lt;contrib searchtype="AUTHOR"&gt;
            &lt;person&gt;
                &lt;name.text&gt;
                    &lt;emph typestyle="bf"&gt;Chandra R de silva&lt;fnr fntoken="APLR.FN1" fnrtoken="APLR.FN1-R"&gt;*&lt;/fnr&gt;
                    &lt;/emph&gt;
                &lt;/name.text&gt;
            &lt;/person&gt;
        &lt;/contrib&gt;
    &lt;/jrnl:prelim&gt;
&lt;/jrnl:body&gt;

<b>Becomes</b>

&lt;nitf:body.head&gt;
    &lt;nitf:hedline&gt;
        &lt;nitf:hl1&gt; Peace in Sri Lanka: Problems and Prospects &lt;/nitf:hl1&gt;
    &lt;/nitf:hedline&gt;
    &lt;nitf:byline&gt;
        &lt;person:contributor contributor-type="author"&gt;
            &lt;person:person&gt;
                &lt;person:name.text&gt;
                    &lt;emph typestyle="bf"&gt;Chandra R de silva&lt;footnote-ref anchoridref="APLR.FN1"&gt;
                            &lt;ref:anchor id="APLR.FN1-R"/&gt;
                            &lt;label&gt;*&lt;/label&gt;
                        &lt;/footnote-ref&gt;
                    &lt;/emph&gt;
                &lt;/person:name.text&gt;
            &lt;/person:person&gt;
        &lt;/person:contributor&gt;
    &lt;/nitf:byline&gt;
&lt;/nitf:body.head&gt;
</pre>

        <section>
            <title>Changes</title>
            <p>2016-03-03: <ph id="change_20160303_PS">Created.</ph></p>
        </section>

    </body>

	</dita:topic>

    <!-- AWantika:2017-11-28- copyright will be created in metadata under pubinfo:pubinfo. Updated in introduction. Webstar# 7054920 -->
	<xsl:template match="jrnl:prelim">
		<nitf:body.head>
		    <xsl:apply-templates select="@* | node() except copyright"/>
		</nitf:body.head>
	</xsl:template>

	<xsl:template match="jrnl:prelim/heading/@searchtype"/>
    
    <!-- HK02-Articles heading handling -->
    <xsl:template match="heading[parent::jrnl:prelim]">
      <nitf:hedline>
        <nitf:hl1>
            <xsl:apply-templates/>
        </nitf:hl1>
      </nitf:hedline>
    </xsl:template>
    
</xsl:stylesheet>