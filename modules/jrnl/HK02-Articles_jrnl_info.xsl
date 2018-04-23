<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Articles_jrnl_info">
    <title>jrnl:info <lnpid>id-HK02-37014</lnpid></title>

    <body>
        <p>Suppress <sourcexml>jrnl:info</sourcexml>
            because its an container element and child of this mapped into head section.</p>

        <pre>
&lt;jrnl:info&gt;
    ...
&lt;/jrnl:info&gt;

<b>Becomes</b>

&lt;!-- Suppress &lt;jrnl:info&gt; element from target --&gt;
</pre>

        <section>
            <title>Changes</title>
            <p>2016-03-03: <ph id="change_20160303_PS">Created.</ph></p>
        </section>

    </body>
	</dita:topic>

	<!-- Suppress jrnl:info -->
	<xsl:template match="jrnl:info"/>

</xsl:stylesheet>