<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.versioninfo-to-LexisAdvance_ref.groupid">
	<title><sourcexml>docinfo:versioninfo</sourcexml> to  <targetxml>ref:groupid</targetxml> <lnpid>id-CCCC-10499</lnpid></title>

    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><sourcexml>docinfo:versioninfo/docinfo:versionbranch</sourcexml> becomes
                    <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="variants-1"]/ref:resourceid</targetxml>
                with attribute handling as follows: <ul>
                    <li>The content of
                            <sourcexml>docinfo:versioninfo/docinfo:versionbranch/@value</sourcexml>,
                        prepended with the string "urn:cldi-1:", becomes the content of
                            <targetxml>ref:groupid/ref:resourceid/@ref:resourcekey</targetxml></li>
                </ul>
                <note>If source attribute <sourcexml>@hasotherversions</sourcexml> comes with value
                        "<b>false</b>" then conversion should not create
                        <targetxml>doc:membership\ref:groupid</targetxml> markup in target.</note>
            </p>
        </section>
        <example>
         <title>Mapping of <sourcexml>docinfo:versioninfo/docinfo:versionbranch[@value]</sourcexml></title>
            <codeblock>

&lt;docinfo:versioninfo hasotherversions="true"&gt;
    &lt;docinfo:startdate day="29" month="06" year="2005"/&gt;
    &lt;docinfo:versionbranch value="03JC-55f4bd2a842a39d3580d89a0dcbb9cb0"/&gt;
&lt;/docinfo:versioninfo&gt; 

	</codeblock>
         <b>becomes</b>
            <codeblock>

&lt;doc:docinfo doc-content-country="CA"&gt;
    &lt;!-- ...--&gt;
   &lt;doc:membership&gt;
        &lt;ref:groupid group-type="variants-1"&gt;
            &lt;ref:resourceid ref:resourcekey="urn:cldi-1:03JC-55f4bd2a842a39d3580d89a0dcbb9cb0"/&gt;
        &lt;/ref:groupid&gt;   
    &lt;/doc:membership&gt;
	...
&lt;/doc:docinfo&gt;

	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2016-10-14: <ph id="change_20161014_SS">Updated the note for handling the source
                attribute <sourcexml>@hasotherversions="false"</sourcexml>.[Webstar<b>#6676189</b>]</ph></p>
            <p>2016-10-07: <ph id="change_20161007_SS">Added note for handling the source attribute
                        <sourcexml>@hasotherversions</sourcexml> comes with value
                    '<b>false</b>'.</ph></p>
            <p>2015-01-21: <ph id="change_20150121_SEP">Per Enterprise Architecture, update target urn from "urn:variants-1:" to "urn:cldi-1:". R4.5 RFA #2146.</ph></p>
            <p>2014-09-15: <ph id="change_20140915_SSX">Updated target mapping of <sourcexml>docinfo:versioninfo/docinfo:versionbranch</sourcexml> from <b>Head</b> to <targetxml>doc:docinfo/doc:membership/ref:groupid[@group-type="variants-1"]/ref:resourceid</targetxml></ph></p>
            <p>2014-08-11: <ph id="change_20140811_PS">Updated source snippet elements starting with
                        <b>"docinfo:"</b> instead of <b>"doc:"</b>.</ph></p>
            <p>2014-06-26: <ph id="change_20140626_sep">Make <targetxml>ref:resourcekey</targetxml> UCN value urn conform to PGUID registry, e.g. "urn:variants-1:03JC-55f4bd2a842a39d3580d89a0dcbb9cb0".</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.versioninfo- -LxAdv_ref.groupid.dita  -->
<!--	<xsl:message>Rosetta_docinfo.versioninfo-\-LxAdv_ref.groupid.xsl requires manual development!</xsl:message> -->

                <!-- CSN: Created docinfo:versionbranch. -->
                <xsl:template xmlns="http://dita.oasis-open.org/architecture/2005/" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" match="docinfo:versionbranch">
                    <xsl:element name="ref:groupid">
                        <xsl:attribute name="group-type">variants-1</xsl:attribute>
                        <xsl:element name="ref:resourceid">
                            <xsl:attribute name="ref:resourcekey">
                                <xsl:value-of select="concat('urn:cldi-1:', @value)"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:element>
                </xsl:template>
            
</xsl:stylesheet>