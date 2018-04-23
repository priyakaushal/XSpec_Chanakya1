<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK09LegalNews_levelprelim_abstract">
    <title>levelprelim/abstract <lnpid>id-UK09-29020</lnpid></title>
    <body>
        <p>When <sourcexml>level</sourcexml> contains <sourcexml>levelprelim/abstract</sourcexml>,
                <sourcexml>level</sourcexml> should be omitted.</p>
        <p>The first occurence of <sourcexml>levelprelim/abstract</sourcexml> should be mapped to
                <targetxml>nitf:body.head/abstract/bodytext</targetxml>.</p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;jrnl:bodytext searchtype="ARTICLE"&gt;
    &lt;level&gt;
        &lt;levelprelim&gt;
            &lt;abstract&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;&lt;emph typestyle="bf"&gt;Abstract:&lt;/emph&gt; This paper
                            presents an economic model to connect with the substantial empirical
                            literature on social capital and health that exists largely outside of
                            economics...&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/abstract&gt;
        &lt;/levelprelim&gt;
    &lt;/level&gt;
    &lt;level&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;text&gt;Health Law&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;The social capital and health literature covers many disciplines:
                        epidemiology, medicine, sociology, health care organization, political
                        science, and economics...&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
    ...
&lt;/jrnl:bodytext&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        ...
        &lt;abstract&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;&lt;emph typestyle="bf"&gt;Abstract:&lt;/emph&gt; This paper
                            presents an economic model to connect with the substantial empirical
                            literature on social capital and health that exists largely outside of
                            economics...&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/abstract&gt;
    &lt;/nitf:body.head&gt;
    &lt;nitf:body.content&gt;
        &lt;bodytext&gt;
            &lt;section&gt;
                &lt;bodytext&gt;
                    &lt;pgrp&gt;
                        &lt;p&gt;
                            &lt;text&gt;Health Law&lt;/text&gt;
                        &lt;/p&gt;
                        &lt;p&gt;
                            &lt;text&gt;The social capital and health literature covers many disciplines:
                                epidemiology, medicine, sociology, health care organization,
                                political science, and economics...&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/pgrp&gt;
                &lt;/bodytext&gt;
            &lt;/section&gt;
            ...
        &lt;/bodytext&gt;
    &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;

           </codeblock>
        </example>
        <p>If there are two or more occurences of <sourcexml>levelprelim/abstract</sourcexml>, then
            the second and subsequent occurences should be omitted, but the content in
                <sourcexml>abstract/p/text</sourcexml> should be mapped to
                <targetxml>bodytext/h</targetxml>.</p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;jrnl:bodytext searchtype="ARTICLE"&gt;
    &lt;level&gt;
        &lt;levelprelim&gt;
            &lt;abstract&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;Legal analysis is dominated by legal arguments, and the
                            assessment of any legal claim requires the assessment of the strengths
                            and weaknesses of those arguments...&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/abstract&gt;
        &lt;/levelprelim&gt;
    &lt;/level&gt;
    &lt;level&gt;
        &lt;levelprelim&gt;
            &lt;abstract&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;Keywords: evidence; logic; law; jurisprudence;
                            epistemology&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/abstract&gt;
        &lt;/levelprelim&gt;
    &lt;/level&gt;
    &lt;level&gt;
        &lt;heading&gt;
            &lt;title&gt;
                &lt;emph typestyle="bf"&gt;1. Introduction to the concept of the 'logocratic'
                    method&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;p&gt;
                    &lt;text&gt;Legal analysis is dominated by legal arguments, and the assessment of any
                        legal claim requires the assessment of the strengths and weaknesses of those
                        arguments...&lt;/text&gt;
                &lt;/p&gt;
                ...
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/level&gt;
    ...
&lt;/jrnl:bodytext&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        ...
        &lt;abstract&gt;
            &lt;bodytext&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;emph typestyle="it"&gt;Legal analysis is dominated by legal arguments, and the
                            assessment of any legal claim requires the assessment of the strengths
                            and weaknesses of those arguments...&lt;/emph&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/bodytext&gt;
        &lt;/abstract&gt;
    &lt;/nitf:body.head&gt;
    &lt;nitf:body.content&gt;
        &lt;bodytext&gt;
            &lt;h&gt;
                &lt;emph typestyle="it"&gt;Keywords: evidence; logic; law; jurisprudence;
                    epistemology&lt;/emph&gt;
            &lt;/h&gt;
            &lt;section&gt;
                &lt;heading&gt;
                    &lt;title&gt;
                        &lt;emph typestyle="bf"&gt;1. Introduction to the concept of the 'logocratic'
                            method&lt;/emph&gt;
                    &lt;/title&gt;
                &lt;/heading&gt;
                &lt;bodytext&gt;
                    &lt;pgrp&gt;
                        &lt;p&gt;
                            &lt;text&gt;Legal analysis is dominated by legal arguments, and the assessment
                                of any legal claim requires the assessment of the strengths and
                                weaknesses of those arguments...&lt;/text&gt;
                        &lt;/p&gt;
                        ...
                    &lt;/pgrp&gt;
                &lt;/bodytext&gt;
            &lt;/section&gt;
            ...
        &lt;/bodytext&gt;
    &lt;/nitf:body.content&gt;
&lt;/nitf:body&gt;

           </codeblock>
        </example>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK09-LegalNews\UK09LegalNews_levelprelim_abstract.dita  -->
	<xsl:message>UK09LegalNews_levelprelim_abstract.xsl requires manual development!</xsl:message> 

	<xsl:template match="level">

		<!--  Original Target XPath:  nitf:body.head/abstract/bodytext   -->
		<nitf:body.head>
			<abstract>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</abstract>
		</nitf:body.head>

	</xsl:template>

	<xsl:template match="levelprelim/abstract">

		<!--  Original Target XPath:  nitf:body.head/abstract/bodytext   -->
		<nitf:body.head>
			<abstract>
				<bodytext>
					<xsl:apply-templates select="@* | node()"/>
				</bodytext>
			</abstract>
		</nitf:body.head>

	</xsl:template>

	<xsl:template match="abstract/p/text">

		<!--  Original Target XPath:  bodytext/h   -->
		<bodytext>
			<h>
				<xsl:apply-templates select="@* | node()"/>
			</h>
		</bodytext>

	</xsl:template>

</xsl:stylesheet>