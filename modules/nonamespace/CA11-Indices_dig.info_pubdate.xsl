<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:leg="http://www.lexis-nexis.com/glp/leg"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" version="2.0" exclude-result-prefixes="dita dig ci leg docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-Indices_dig.info_pubdate">
    <title>dig:info/pubdate <lnpid>id-CA11-14817</lnpid></title>

    <body>
        <section>
        <p><sourcexml>dig:info/pubdate</sourcexml> becomes <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:dates/pubinfo:pubdate</targetxml>.</p>
        <p><sourcexml>date</sourcexml> becomes <targetxml>date</targetxml>.</p>
        
        <p>Drop <sourcexml>@ln.user-displayed="false"</sourcexml> attribute with its value.</p>

            <pre xml:space="preserve" class="- topic/pre ">
&lt;dig:info&gt;
    &lt;pubdate ln.user-displayed="false"&gt;
        &lt;date&gt;2014&lt;/date&gt;
    &lt;/pubdate&gt;
&lt;/dig:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:dates&gt;
            &lt;pubinfo:pubdate&gt;
                &lt;date&gt;2014&lt;/date&gt;
            &lt;/pubinfo:pubdate&gt;
        &lt;/pubinfo:dates&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;
         </pre>
        </section>
        <section>
            <title>Change Log</title>
            <p>2014-09-01: <ph id="change_20140901_PS">Created. Added new instruction for
                        <sourcexml>dig:info/pubdate</sourcexml>. Applicable on CA11.</ph></p>
        </section>
    </body>
	</dita:topic>


    <xsl:template match="dig:info/pubdate">
			<pubinfo:dates>
			    <pubinfo:pubdate>
				<xsl:apply-templates select="@*|node()"/>
			    </pubinfo:pubdate>
			</pubinfo:dates>
	</xsl:template>


	<xsl:template match="date">

		<!--  Original Target XPath:  date   -->
		<date>
			<xsl:apply-templates select="@*|node()"/>
		</date>

	</xsl:template>

    <xsl:template match="@ln.user-displayed"/>


</xsl:stylesheet>