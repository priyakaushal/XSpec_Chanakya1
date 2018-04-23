<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:glp="http://www.lexis-nexis.com/glp" 
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" 
    xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" 
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    version="2.0" exclude-result-prefixes="dita glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK15PG_COMMENTARYDOC_glp.note-xref">
    <title>glp:note[@notetype="xref"] <lnpid>id-UK15-30415</lnpid></title>

    <body>
        <p><sourcexml>glp:note[notetype="xref"]</sourcexml> becomes
                <targetxml>marginnote</targetxml>. The mapping of
                <sourcexml>glp:note[notetype="xref"]</sourcexml> varies slightly depending on the parent:<ul>
                <li><sourcexml>bodytext/glp:note[notetype="xref"]</sourcexml> becomes
                        <targetxml>seclaw:bodytext/p/text/marginnote</targetxml>. Conversion should
                        <b>not</b> create a new <targetxml>p</targetxml> element, but instead place
                    the newly created <targetxml>text/marginnote</targetxml> in
                        <targetxml>p</targetxml> that was mapped from the preceding sibling
                        <sourcexml>p</sourcexml> of
                    <sourcexml>glp:note[notetype="xref"]</sourcexml>.</li>
                <li><sourcexml>li/glp:note[notetype="xref"]</sourcexml> becomes
                        <targetxml>listitem/bodytext/p/text/marginnote</targetxml>. Conversion
                    should <b>not</b> create a new <targetxml>p</targetxml> element, but instead
                    place the newly created <targetxml>text/marginnote</targetxml> in
                        <targetxml>p</targetxml> that was mapped from the preceding sibling
                        <sourcexml>p</sourcexml> of
                    <sourcexml>glp:note[notetype="xref"]</sourcexml>.</li>
            </ul></p>
        <p>In <b>all</b> situations the children of <targetxml>marginnote</targetxml> should be
            populated as follows:<ul>
                <li>Create the required child <targetxml>marginnote/ref:anchor</targetxml> and
                    populate <targetxml>ref:anchor/@id</targetxml> with a concatenation of the
                    following values separated by "_" (don't include quotation marks):<ul>
                        <li>uk</li>
                        <li>the value in
                                <sourcexml>/COMMENTARYDOC/docinfo/docinfo:doc-id</sourcexml></li>
                        <li>a digit, starting with 1 that is incremented by 1 for each occurence of
                                <sourcexml>glp:note[notetype="xref"]</sourcexml> in a document</li>
                    </ul></li>
                <li>The content of <sourcexml>bodytext/glp:note[notetype="xref"]</sourcexml> should
                    be placed in <targetxml>marginnote/bodytext</targetxml>.</li>
            </ul></p>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;In general, the consent of deferred members to a buy-out will usually be required in
            advance to enable trustees to obtain a discharge from the liabilities owed by them to
            the bought-out members.&lt;/text&gt;
    &lt;/p&gt;
    &lt;glp:note notetype="xref"&gt;
        &lt;p nl="0"&gt;
            &lt;text&gt;
                &lt;ci:cite searchtype="LEG-REF" status="valid"&gt;
                    &lt;ci:sesslaw&gt;
                        &lt;ci:sesslawinfo&gt;
                            &lt;ci:sesslawnum num="1993_48a" /&gt;
                            &lt;ci:hierpinpoint&gt;
                                &lt;ci:hierlev label="section" num="12C" /&gt;
                            &lt;/ci:hierpinpoint&gt;
                        &lt;/ci:sesslawinfo&gt;
                        &lt;ci:sesslawref&gt;
                            &lt;ci:standardname normpubcode="UK_ACTS"/&gt;
                        &lt;/ci:sesslawref&gt;
                    &lt;/ci:sesslaw&gt;
                    &lt;ci:content&gt;PSA 1993, ss 12C&lt;/ci:content&gt;
                &lt;/ci:cite&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/glp:note&gt;
    ...
&lt;/bodytext&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;seclaw:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;In general, the consent of deferred members to a buy-out will usually be required in
            advance to enable trustees to obtain a discharge from the liabilities owed by them to
            the bought-out members.&lt;/text&gt;
        &lt;text&gt;
            &lt;marginnote&gt;
                &lt;ref:anchor id="uk_0ON9_156022_1"/&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;lnci:cite status="valid"&gt;
                                &lt;lnci:sesslaw&gt;
                                    &lt;lnci:sesslawinfo&gt;
                                        &lt;lnci:sesslawnum num="1993_48a"/&gt;
                                        &lt;lnci:hierpinpoint&gt;
                                            &lt;lnci:hierlev label="section" num="12C"/&gt;
                                        &lt;/lnci:hierpinpoint&gt;
                                    &lt;/lnci:sesslawinfo&gt;
                                    &lt;lnci:sesslawref&gt;
                                        &lt;lnci:standardname normpubcode="UK_ACTS"/&gt;
                                    &lt;/lnci:sesslawref&gt;
                                &lt;/lnci:sesslaw&gt;
                                &lt;lnci:content&gt;PSA 1993, ss 12C&lt;/lnci:content&gt;
                            &lt;/lnci:cite&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/marginnote&gt;
        &lt;/text&gt;
    &lt;/p&gt;
    ...
&lt;/seclaw:bodytext&gt;

           </codeblock>
        </example>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK15-PracticalGuidance\UK15PG_COMMENTARYDOC_glp.note-xref.dita  -->
<!--	<xsl:message>UK15PG_COMMENTARYDOC_glp.note-xref.xsl requires manual development!</xsl:message> -->

    <xsl:template match="glp:note[notetype='xref']">

		<!--  Original Target XPath:  marginnote   -->
		<marginnote>
			<xsl:apply-templates select="@* | node()"/>
		</marginnote>

	</xsl:template>

    <xsl:template match="bodytext/glp:note[notetype='xref']">

		<!--  Original Target XPath:  seclaw:bodytext/p/text/marginnote   -->
		<seclaw:bodytext>
			<p>
				<text>
					<marginnote>
						<xsl:apply-templates select="@* | node()"/>
					</marginnote>
				</text>
			</p>
		</seclaw:bodytext>

	</xsl:template>

	<!--<xsl:template match="p">

		<!-\-  Original Target XPath:  text/marginnote   -\->
		<text>
			<marginnote>
				<xsl:apply-templates select="@* | node()"/>
			</marginnote>
		</text>

	</xsl:template>-->

    <xsl:template match="li/glp:note[notetype='xref']">

		<!--  Original Target XPath:  listitem/bodytext/p/text/marginnote   -->
		<listitem>
			<bodytext>
				<p>
					<text>
						<marginnote>
							<xsl:apply-templates select="@* | node()"/>
						</marginnote>
					</text>
				</p>
			</bodytext>
		</listitem>

	</xsl:template>

	<!--<xsl:template match="/COMMENTARYDOC/docinfo/docinfo:doc-id">

		<!-\-  Original Target XPath:  marginnote/bodytext   -\->
		<marginnote>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</marginnote>

	</xsl:template>-->

</xsl:stylesheet>