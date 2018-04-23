<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Articles_bodytext">
    <title>bodytext <lnpid>id-HK02-37008</lnpid></title>

    <body>
        <p><sourcexml>bodytext</sourcexml> becomes
                <targetxml>bodytext</targetxml></p>

        <p>If input document is having <sourcexml>/JOURNALDOC/jrnl:body/jrnl:bodytext/level/bodytext</sourcexml> then it becomes
                <targetxml>/newsitem:newsitem/nitf:body/nitf:body.content/bodytext/section/bodytext</targetxml>.</p>

        <pre>&lt;jrnl:bodytext&gt;
    &lt;level&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;heading&gt;
                    &lt;title&gt;
                        &lt;emph typestyle="bf"&gt;Negotiations&lt;/emph&gt;
                    &lt;/title&gt;
                &lt;/heading&gt;
                &lt;p&gt;
                    &lt;text&gt;On 16 September 2002, representatives of the Government of Sri Lanka met
                        with nominees of the Liberation Tigers of Tamil Eelam (LTTE) at Sattahip in
                        Thailand for three days of negotiations to end the civil war that had
                        plagued the island state since the 1980s.&lt;fnr fntoken="APLR.FN2"
                            fnrtoken="APLR.FN2-R"&gt;1&lt;/fnr&gt; While informal and indirect contacts had
                        occurred from time to time between the two parties at different locations
                        and at different levels, this was the first time in seven years that
                        representatives of the two groups formally sat together pledging to seek a
                        peaceful solution to the conflict in Sri Lanka... &lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
&lt;/jrnl:bodytext&gt;

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
                            that had plagued the island state since the 1980s.&lt;footnote-ref
                                anchoridref="APLR.FN2"&gt;&lt;ref:anchor id="APLR.FN2-R"/&gt;&lt;label&gt;1&lt;/label&gt;
                            &lt;/footnote-ref&gt; While informal and indirect contacts had occurred from
                            time to time between the two parties at different locations and at
                            different levels, this was the first time in seven years that
                            representatives of the two groups formally sat together pledging to seek
                            a peaceful solution to the conflict in Sri Lanka.&lt;/text&gt;
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

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK02_Articles\HK02-Articles_bodytext.dita  -->
	<!--<xsl:message>HK02-Articles_bodytext.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="bodytext">

		<!--  Original Target XPath:  bodytext   -->
	    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
	        <xsl:apply-templates select="following-sibling::bodytext/node()"/>
		</bodytext>

	</xsl:template>
    
    <xsl:template match="bodytext[preceding-sibling::bodytext]"/>

    <!-- Seems entirely unnecessary with level modules -->
	<!--<xsl:template match="/JOURNALDOC/jrnl:body/jrnl:bodytext/level/bodytext">

		<!-\-  Original Target XPath:  /newsitem:newsitem/nitf:body/nitf:body.content/bodytext/section/bodytext   -\->
		<newsitem:newsitem xmlns:newsitem="http://www.lexisnexis.com/xmlschemas/content/news/newsitem/1/">
			<nitf:body xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/">
				<nitf:body.content>
					<bodytext>
						<section>
							<bodytext>
								<xsl:apply-templates select="@* | node()"/>
							</bodytext>
						</section>
					</bodytext>
				</nitf:body.content>
			</nitf:body>
		</newsitem:newsitem>

	</xsl:template>-->

</xsl:stylesheet>