<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Articles_level">
    <title>level <lnpid>id-HK02-37017</lnpid></title>

    <body>
        <p><sourcexml>level</sourcexml> becomes <targetxml>section</targetxml>.</p>

        <pre>
&lt;level&gt;
    &lt;bodytext&gt;
        &lt;pgrp&gt;
            &lt;heading&gt;
                &lt;title&gt;
                    &lt;emph typestyle="bf"&gt;Negotiations&lt;/emph&gt;
                &lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;On 16 September 2002, representatives of the Government of Sri Lanka met with
                    nominees of the Liberation Tigers of Tamil Eelam (LTTE) at Sattahip in Thailand
                    for three days of negotiations to end the civil war that had plagued the island
                    state since the 1980s.
                    ...
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/level&gt;

<b>Becomes</b>

&lt;nitf:body.content&gt;
    &lt;bodytext&gt;
        &lt;section&gt;
            &lt;bodytext&gt;
                &lt;pgrp&gt;
                    &lt;heading&gt;
                        &lt;title&gt;
                            &lt;emph typestyle="bf"&gt;Negotiations&lt;/emph&gt;
                        &lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;p&gt;
                        &lt;text&gt;On 16 September 2002, representatives of the Government of Sri Lanka
                            met with nominees of the Liberation Tigers of Tamil Eelam (LTTE) at
                            Sattahip in Thailand for three days of negotiations to end the civil war
                            that had plagued the island state since the 1980s.
                            ...
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/pgrp&gt;
            &lt;/bodytext&gt;
        &lt;/section&gt;
    &lt;/bodytext&gt;
&lt;/nitf:body.content&gt;
</pre>

        <section>
            <title>Changes</title>
            <p>2016-03-03: <ph id="change_20160303_PS">Created.</ph></p>
        </section>

    </body>
	</dita:topic>


	<xsl:template match="level">

		<!--  Original Target XPath:  section   -->
	    <section xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</section>

	</xsl:template>

</xsl:stylesheet>