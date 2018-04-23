<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Article_Body">
  <title>jrnl:body <lnpid>id-HK02-37012</lnpid></title>

  <body>
    <p><sourcexml>jrnl:body</sourcexml> becomes <targetxml>nitf:body</targetxml></p>

    <p><targetxml>nitf:body.head</targetxml>, and
        <targetxml>nitf:body.content</targetxml> are created as children of
        <targetxml>nitf:body</targetxml></p>

<pre>
&lt;jrnl:body&gt;
	&lt;jrnl:info&gt;
	...
	&lt;/jrnl:info&gt;
&lt;/jrnl:body&gt;

<b>Becomes</b>

&lt;nitf:body&gt;
 &lt;nitf:body.head&gt;
 ...
 &lt;/nitf:body.head&gt;
 &lt;nitf:body.content&gt;
 ...
 &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;</pre>

<section>
  <title>Changes</title>
  <p>2016-03-03: <ph id="change_20160303_PS">Created.</ph></p>
</section>
</body>

	</dita:topic>


<!-- nitf:body.head and nitf:body.content are created in jrnl:prelim and jrnl:bodytext modules -->
	
	<xsl:template match="jrnl:body">

		<nitf:body>
			<xsl:apply-templates select="@* | node()"/>
		</nitf:body>

	</xsl:template>

</xsl:stylesheet>