<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Linxplus-Article_date">
  <title>date <lnpid>id-NZ07DN-23814</lnpid></title>

  <body>
    <p><sourcexml>date</sourcexml> becomes <targetxml>pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate</targetxml></p>

    <p><targetxml>@year</targetxml> and <targetxml>@month</targetxml> are created as attribute of
            <targetxml>pubinfo:pubdate</targetxml>
         element.</p>

<pre xml:space="preserve" class="- topic/pre ">
&lt;pubdate ln.user-displayed="false"&gt;
    &lt;date year="2005" month="11"&gt;Nov 2005&lt;/date&gt;
&lt;/pubdate&gt;


<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;pubinfo:dates&gt;
    &lt;pubinfo:pubdate year="2005" month="11"/&gt;
&lt;/pubinfo:dates&gt;
</pre>
      
      <note class="- topic/note ">For handling @ln.user-displayed attribute, please refer to general markup ln.user_displayed="false" section in the CI.</note>
      
</body>

	</dita:topic>


	<xsl:template match="date">

		<!--  Original Target XPath:  pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate   -->
			<pubinfo:dates>
				<pubinfo:pubdate>
					<xsl:apply-templates select="@*"/>
				</pubinfo:pubdate>
			</pubinfo:dates>

	</xsl:template>

	<xsl:template match="date/@month">
		<xsl:attribute name="month">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="date/@year">
		<xsl:attribute name="year">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="date/@day">
		<xsl:attribute name="day">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>

</xsl:stylesheet>