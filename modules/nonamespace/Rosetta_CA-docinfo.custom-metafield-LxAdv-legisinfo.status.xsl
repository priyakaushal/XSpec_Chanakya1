<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA-docinfo.custom-metafield-to-legisinfo.status">
    <title>docinfo:custom-metafield to legisinfo:status <lnpid>id-CCCC-10496</lnpid></title>
    <body>
        <section>
            <p>This rule is applicable to CA05 &amp; CA06.</p>
            <p>When input <sourcexml>docinfo:custom-metafield/@name="dpsi"</sourcexml> is having
                below mentioned values of table then conversion should generate the Status text
                value in <targetxml>legisinfo:statustext</targetxml> as per mentioned in the
                    <b>Status text</b> column in below table (for Repeals) inside the first
                    <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> element. Refer
                Input and Target exmaples for reference:</p>
            <p><b>Target X-path for Repealed:
                    </b><targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml></p>
            <table>
                <title><u>Table for Repealed DPSI Values</u></title>
                <tgroup cols="3">
                    <thead>
                        <row>
                            <entry align="center">DPSI Value</entry>
                            <entry align="center">Source</entry>
                            <entry align="center">Status text</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry>03TR</entry>
                            <entry>Alberta Repealed Statutes</entry>
                            <entry>REPEALED</entry>
                        </row>
                        <row>
                            <entry>03GN</entry>
                            <entry>British Columbia Repealed Statutes</entry>
                            <entry>REPEALED</entry>
                        </row>
                        <row>
                            <entry>03U3</entry>
                            <entry>Canada Repealed Statutes</entry>
                            <entry>REPEALED</entry>
                        </row>
                        <row>
                            <entry>03JA</entry>
                            <entry>Lois abrogées du Canada</entry>
                            <entry>ABROGÉE</entry>
                        </row>
                        <row>
                            <entry>03U5</entry>
                            <entry>Ontario Repealed Statutes</entry>
                            <entry>REPEALED</entry>
                        </row>
                        <row>
                            <entry>03EX</entry>
                            <entry>Alberta Repealed Regulations</entry>
                            <entry>REPEALED</entry>
                        </row>
                        <row>
                            <entry>03GG</entry>
                            <entry>British Columbia Repealed Regulations</entry>
                            <entry>REPEALED</entry>
                        </row>
                        <row>
                            <entry>03J5</entry>
                            <entry>Canada Repealed Regulations</entry>
                            <entry>REPEALED</entry>
                        </row>
                        <row>
                            <entry>03QW</entry>
                            <entry>Ontario Repealed Regulations</entry>
                            <entry>REPEALED</entry>
                        </row>
                        <row>
                            <entry>0CV2</entry>
                            <entry>Règlements abrogés du Canada</entry>
                            <entry>ABROGÉ</entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <p><b>Target X-path for Annual:
                    </b><targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="annual"]/legisinfo:statustext</targetxml></p>
            <table>
                <title><u>Table for Annual DPSI Values</u></title>
                <tgroup cols="3">
                    <thead>
                        <row>
                            <entry align="center">DPSI Value</entry>
                            <entry align="center">Source</entry>
                            <entry align="center">Status text</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry>03E1</entry>
                            <entry>Alberta Annual Statutes</entry>
                            <entry>ANNUALS</entry>
                        </row>
                        <row>
                            <entry>03FE</entry>
                            <entry>British Columbia Annual Statutes</entry>
                            <entry>ANNUALS</entry>
                        </row>
                        <row>
                            <entry>03HK</entry>
                            <entry>Canada Annual Statutes</entry>
                            <entry>ANNUALS</entry>
                        </row>
                        <row>
                            <entry>03HQ</entry>
                            <entry>Lois annuelles du Canada</entry>
                            <entry>ANNUALS</entry>
                        </row>
                        <row>
                            <entry>03PJ</entry>
                            <entry>Ontario Annual Statutes</entry>
                            <entry>ANNUALS</entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <note>If <sourcexml>leg:body</sourcexml> is only having one child
                    <sourcexml>leg:info</sourcexml> inside the source document then conversion need
                to create empty <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml>
                inside the <targetxml>regulation:body</targetxml> for capturing the
                    "<targetxml>primlaw:levelinfo</targetxml>".</note>
            <pre><b><i>Example: Source Markup</i></b>

&lt;docinfo:custom-metafields&gt;
    &lt;docinfo:custom-metafield name="dpsi"&gt;03TR&lt;/docinfo:custom-metafield&gt;
&lt;/docinfo:custom-metafields&gt;

</pre>
            <pre>
    <b><i>Example: Target Markup</i></b>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:levelinfo&gt;
        &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
                &lt;legisinfo:statusgroup&gt;
                    &lt;legisinfo:status statuscode="repealed"&gt;
                      &lt;legisinfo:statustext&gt;REPEALED&lt;/legisinfo:statustext&gt;
                    &lt;/legisinfo:status&gt;
                &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
        &lt;/primlawinfo:primlawinfo&gt;
    &lt;/primlaw:levelinfo&gt;
&lt;/primlaw:level&gt;

</pre>
            <p>When source documents is having <sourcexml>leg:histnote/h/@l</sourcexml> then
                    <sourcexml>leg:histnote</sourcexml> becomes
                    <targetxml>note/@notetype="historical"</targetxml> and <sourcexml>h</sourcexml>
                becomes <targetxml>h</targetxml> then drop attribute <sourcexml>@l</sourcexml> from
                the target conversion. See below snippet.</p>
            <pre>
&lt;leg:histnote&gt;
    &lt;h l="3" align="left"&gt;Acts Affected:&lt;/h&gt;
&lt;/leg:histnote&gt;

<b>Becomes</b>

&lt;note notetype="historical"&gt;
    &lt;bodytext&gt;
        &lt;h align="left"&gt;Acts Affected:&lt;/h&gt;
        ...
    &lt;/bodytext&gt;
&lt;/note&gt;
</pre>
            <p>When above mentioned <sourcexml>docinfo:custom-metafield/@name="dpsi"</sourcexml> is
                not present in the document then follow the below instruction to generate the
                    <targetxml>legisinfo:statustext</targetxml> value:</p>
            <p>When content of <sourcexml>leg:histnote/p/text</sourcexml> starts with value present
                in <b>Historical Note</b> column then conversion should generate the entire text of
                the <sourcexml>leg:histnote/p/text</sourcexml> in
                    <targetxml>legisinfo:statustext</targetxml> inside the first
                    <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> element. Refer
                Input and Target exmaples for reference:</p>
            <note><p>When Historical Note convertes into <targetxml>legisinfo:statustext</targetxml> then conversion
                    should not convert <sourcexml>leg:histnote/p/text</sourcexml> at his original
                    location inside
                        <targetxml>legisinfo:legisinfo\primlawhist:primlawhist\primlawhist:histgrp\primlawhist:histitem\bodytext\note
                        notetype="historical"</targetxml></p></note>
            <p><b>Target X-path:
                    </b><targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="repealedshell"]/legisinfo:statustext</targetxml>.</p>
            <table>
                <tgroup cols="1">
                    <thead>
                        <row>
                            <entry>Historical Note</entry>
                        </row>
                    </thead>
                    <tbody>
                        <row>
                            <entry>REPEALED by</entry>
                        </row>
                        <row>
                            <entry>ABROGÉ par</entry>
                        </row>
                        <row>
                            <entry>ABROGÉE par</entry>
                        </row>
                    </tbody>
                </tgroup>
            </table>
            <pre>
&lt;leg:histnote&gt;
    &lt;p&gt;
        &lt;text&gt;REPEALED by SA 2007 c42 s1 effective December 7, 2007 (R.A.)&lt;/text&gt;
    &lt;/p&gt;
&lt;/leg:histnote&gt;

<b>Becomes</b>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;primlaw:levelinfo&gt;
        &lt;primlawinfo:primlawinfo&gt;
            &lt;legisinfo:legisinfo&gt;
                &lt;legisinfo:statusgroup&gt;
                    &lt;legisinfo:status statuscode="repealedshell"&gt;
                      &lt;legisinfo:statustext&gt;REPEALED by SA 2007 c42 s1 effective December 7, 2007 (R.A.)&lt;/legisinfo:statustext&gt;
                    &lt;/legisinfo:status&gt;
                &lt;/legisinfo:statusgroup&gt;
            &lt;/legisinfo:legisinfo&gt;
        &lt;/primlawinfo:primlawinfo&gt;
    &lt;/primlaw:levelinfo&gt;
&lt;/primlaw:level&gt;
</pre>
        </section>

        <section>
            <title>Changes</title>
			<p>2015-02-10: <ph id="change_20150210_SEP">Separate out Table for Annual DPSI Values. Applicable on CA05/06. R4.5 Item #2048.</ph></p>
            <p>2015-01-22: <ph id="change_20150122_PS">Changed attaribute value <targetxml>@statuscode="repealedshell"</targetxml> to <targetxml>@statuscode="repealed"</targetxml>. Applicable on CA05.</ph></p>
            <p>2014-11-24: <ph id="change_20141124_PS">Added note to generate Historical Note convertes into <targetxml>legisinfo:statustext</targetxml> then conversion
                should not convert <sourcexml>leg:histnote/p/text</sourcexml> at his original location, Applicable on CA05 &amp; CA06.</ph></p>
            <p>2014-10-28: <ph id="change_20141028_PS">Added new DPSI of <b>ANNUALS</b> for creation
                    of <targetxml>legisinfo:status</targetxml> and also change the attribute value
                    of <targetxml>legisinfo:status/@statuscode="repealed"</targetxml> to
                        <targetxml>legisinfo:status/@statuscode="repealedshell"</targetxml>.
                    Applicable on CA05 &amp; CA06.</ph></p>
            <p>2014-09-23: <ph id="change_20140923_PS">Updated rule and example to capture entire
                    text of <sourcexml>leg:histnote/p/text</sourcexml> in
                        <targetxml>legisinfo:statustext</targetxml>. Applicable only on CA05 &amp;
                    CA06.</ph></p>
            <p>2014-09-17: <ph id="change_20140917_PS">Added Status text column in the <b>DPSI</b>
                    table and also added an instruction to generate
                        <targetxml>legisinfo:statustext</targetxml> value based on historical note.
                    Added example also. Applicable only on CA05 &amp; CA06.</ph></p>
            <p>2014-08-19: <ph id="change_20140819_PS">Updated rule to read only <b>DPSI</b> value
                    and remove the reference to historical notes. Applicable only on CA05 &amp;
                    CA06.</ph></p>
            <p>2014-08-13: <ph id="change_20140813_SS">Updated Instruction and example for creating
                        <targetxml>legisinfo:status[@statuscode="repealed"]/legisinfo:statustext</targetxml>
                    markup in target converstion when input is having desired <b>DPSI
                    </b>value.</ph></p>
            <p>2014-07-28: <ph id="change_20140728_SS">Added a note for creating empty
                        <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> inside
                        <targetxml>regulation:body</targetxml> in target conversion when input
                        <sourcexml>leg:body</sourcexml> markup is only having one child
                        <sourcexml>leg:info</sourcexml>.</ph></p>
            <p>2014-06-12: <ph id="change_20140612_PS">Created. This is applicable to CA05 and
                    CA06.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.dita  -->
	<xsl:message>Rosetta_CA-docinfo.custom-metafield-LxAdv-legisinfo.status.xsl requires manual development!</xsl:message> 

	<xsl:template match="docinfo:custom-metafield/@name=&#34;dpsi&#34;">

		<!--  Original Target XPath:  legisinfo:statustext   -->
		<legisinfo:statustext>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:statustext>

	</xsl:template>

	<xsl:template match="leg:body">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:info">

		<!--  Original Target XPath:  primlaw:level[@leveltype="unclassified"]   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:histnote/h/@l">

		<!--  Original Target XPath:  note/@notetype="historical"   -->
		<note>
			<xsl:attribute name="notetype">
				<xsl:text>historical</xsl:text>
			</xsl:attribute>
		</note>

	</xsl:template>

	<xsl:template match="leg:histnote">

		<!--  Original Target XPath:  note/@notetype="historical"   -->
		<note>
			<xsl:attribute name="notetype">
				<xsl:text>historical</xsl:text>
			</xsl:attribute>
		</note>

	</xsl:template>

	<xsl:template match="h">

		<!--  Original Target XPath:  h   -->
		<h>
			<xsl:apply-templates select="@* | node()"/>
		</h>

	</xsl:template>

	<xsl:template match="@l">

		<!--  Original Target XPath:  legisinfo:statustext   -->
		<legisinfo:statustext>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:statustext>

	</xsl:template>

	<xsl:template match="leg:histnote/p/text">

		<!--  Original Target XPath:  legisinfo:statustext   -->
		<legisinfo:statustext>
			<xsl:apply-templates select="@* | node()"/>
		</legisinfo:statustext>

	</xsl:template>

</xsl:stylesheet>