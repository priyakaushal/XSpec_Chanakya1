<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="legis-Metadata">
    <title>Metadata <lnpid>id-NZ06-23410</lnpid></title>
    <body>
        <p>
             <sourcexml>LEGDOC/docinfo</sourcexml> becomes            
            <targetxml>legis:legis/doc:metadata</targetxml> is created as described in the Introduction.</p>
           <note><targetxml>doc:metadata</targetxml> is the required parent element to capture all the <sourcexml>docinfo</sourcexml> information.            </note>
        <section>
            <title>doc:docinfo</title>

            <p><sourcexml>LEGDOC/docinfo</sourcexml> becomes <targetxml>legis:legis/doc:metadata/doc:docinfo</targetxml> and comes with 
                <targetxml>@doc-content-country</targetxml>.</p>
            <p>The <targetxml>doc:docinfo</targetxml> element childrens as described below: The
                    <sourcexml>LEGDOC/docinfo/docinfo:doc-country[@iso-cc]</sourcexml> element is
                used to define country in source document becomes
                    <targetxml>legis:legis/doc:metadata/doc:docinfo[@doc-content-country]</targetxml>
                <pre>&lt;docinfo&gt;
                    &lt;docinfo:doc-country iso-cc="NZ"/&gt;
                    becomes
                    &lt;doc:docinfo doc-content-country="NZ"&gt;
                </pre>
                <ul>
                    <li>Create a
                            <targetxml>legis:legis/doc:metadata/doc:docinfo/dc:metadata</targetxml>
                        and children as described below: <ul>
                            <li><sourcexml>LEGDOC/docinfo/docinfo:load-date/date</sourcexml> becomes
                                    <targetxml>legis:legis/doc:metadata/doc:docinfo/dc:metadata/dc:date[@lnmeta:datetype]</targetxml>
                                and populated as follows: <pre>&lt;docinfo:load-date&gt;
                                &lt;date day="01" month="01" year="2006"&gt;01 January 2006&lt;/date&gt;
                                &lt;/docinfo:load-date&gt;
                                <b>becomes</b>
                                &lt;dc:date lnmeta:datetype="load-date"&gt;2006-01-01&lt;/dc:date&gt;
                            </pre>
                                <note>The format of the content of all
                                        <targetxml>dc:date</targetxml> elements must be in
                                    'YYYY-MM-DD'.</note>
                                <note>The date type can also be used to capture processing dates as
                                    well. Examples might be: conversion-date, load-date</note>
                            </li>
                            <li><sourcexml>LEGDOC/docinfo/docinfo:doc-id</sourcexml> becomes
                                    <targetxml>legis:legis/doc:metadata/doc:docinfo/dc:metadata/dc:identifier[@lnmeta:identifier-scheme]</targetxml>
                                and populated as: <pre>
                                &lt;docinfo:doc-id&gt;NZSTATUTES_ACTS-Y.SGM_1999A25&lt;/docinfo:doc-id&gt;
                                <b>becomes</b>
                                &lt;dc:identifier lnmeta:identifier-scheme="DOC-ID"&gt;NZSTATUTES_ACTS-Y.SGM_1999A25&lt;/dc:identifier&gt;
                            </pre>
                                <note> Identifies the normalization scheme (e.g. URI, LNI, ISSN, et
                                    al.) used for the identifier</note>
                            </li>
                            <li><sourcexml>LEGDOC/docinfo/docinfo:doc-heading</sourcexml> becomes
                                    <targetxml>legis:legis/doc:metadata/doc:docinfo/dc:metadata/dc:title</targetxml>
                                and populated as:
                                <pre>
                                &lt;docinfo:doc-heading&gt;Year 2000 Information Disclosure Act&amp;#xA0;1999&lt;/docinfo:doc-heading&gt;
                                <b>becomes</b>
                                &lt;dc:title&gt;Year 2000 Information Disclosure Act&amp;#xA0;1999&lt;/dc:title&gt;
                            </pre>
                            </li>
                            <li><sourcexml>LEGDOC/docinfo/docinfo:doc-lang[@lang]</sourcexml>
                                becomes
                                    <targetxml>legis:legis/doc:metadata/doc:docinfo/dc:metadata/dc:language</targetxml>
                                and populated as: <pre>
                                &lt;docinfo:doc-lang lang="en"/&gt;
                                <b>becomes</b>
                                &lt;dc:language&gt;en-NZ&lt;/dc:language&gt;
                            </pre>
                                <note>The language is changing from "en" to "en-NZ" which specifies
                                    the language of the resource.</note>
                            </li>
                        </ul>
                    </li>
                    <li><sourcexml>LEGDOC/docinfo/docinfo:hier</sourcexml> becomes
                            <targetxml>legis:legis/doc:metadata/doc:docinfo/doc:hier</targetxml> and
                        children as described below: <ul>
                            <li><sourcexml>LEGDOC/docinfo/docinfo:hier/docinfo:hierlev</sourcexml>
                                becomes
                                    <targetxml>legis:legis/doc:metadata/doc:docinfo/doc:hier/doc:hierlev</targetxml>
                                and children as described below: <ul>
                                    <li><sourcexml>LEGDOC/docinfo/docinfo:hier/docinfo:hierlev/heading</sourcexml>
                                        becomes
                                            <targetxml>legis:legis/doc:metadata/doc:docinfo/doc:hier/doc:hierlev/heading</targetxml>
                                        and children as described below: <ul>
                                            <li><sourcexml>LEGDOC/docinfo/docinfo:hier/docinfo:hierlev/heading/title</sourcexml>
                                                becomes
                                                  <targetxml>legis:legis/doc:metadata/doc:docinfo/doc:hier/doc:hierlev/heading/title</targetxml>
                                            </li>
                                        </ul>
                                        <note> The attribute <sourcexml>@role</sourcexml> has been
                                            dropped in New Lexis. </note>
                                    </li>
                                </ul>
                                <pre>
                                &lt;docinfo:hier&gt;
                                &lt;docinfo:hierlev role="ancestor"&gt;
                                &lt;heading&gt;
                                &lt;title&gt;ACTS&lt;&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;docinfo:hierlev role="ancestor"&gt;
                                &lt;heading&gt;
                                &lt;title&gt;Y&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;docinfo:hierlev role="ancestor"&gt;
                                &lt;heading&gt;
                                &lt;title&gt;Year 2000 Information Disclosure Act&amp;#xA0;1999 &amp;#x2014; Public Act&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;docinfo:hierlev role="me"&gt;
                                &lt;heading&gt;
                                &lt;title&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;/docinfo:hierlev&gt;
                                &lt;/docinfo:hierlev&gt;
                                &lt;/docinfo:hierlev&gt;
                                &lt;/docinfo:hierlev&gt;
                                &lt;/docinfo:hierlev&gt;
                                &lt;/docinfo:hier&gt;
                                <b>becomes</b>
                                &lt;doc:hier&gt;
                                &lt;doc:hierlev&gt;
                                &lt;heading&gt;
                                &lt;title&gt;ACTS&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;doc:hierlev&gt;
                                &lt;heading&gt;
                                &lt;title&gt;Y&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;doc:hierlev&gt;
                                &lt;heading&gt;
                                &lt;title&gt;Year 2000 Information Disclosure Act&amp;#xA0;1999 &amp;#x2014; Public Act&lt;/title&gt;
                                &lt;/heading&gt;
                                &lt;doc:hierlev&gt;
                                &lt;heading&gt;
                                &lt;title&gt;YEAR 2000 INFORMATION DISCLOSURE ACT&amp;#xA0;1999/title&gt;
                                &lt;/heading&gt;
                                &lt;/doc:hierlev&gt;
                                &lt;/doc:hierlev&gt;
                                &lt;/doc:hierlev&gt;
                                &lt;/doc:hierlev&gt;
                                &lt;/doc:hierlev&gt;
                                &lt;/doc:hier&gt;
                            </pre>
                            </li>
                        </ul>
                    </li>
                    <li><sourcexml>docinfo:bookseqnum</sourcexml> becomes
                            <targetxml>doc:bookseqnum</targetxml>
                        <pre>
                        &lt;docinfo:bookseqnum&gt;273181624&lt;/docinfo:bookseqnum&gt;
                        <b>becomes</b>
                        &lt;doc:bookseqnum&gt;273181624&lt;/doc:bookseqnum&gt;
                    </pre>
                    </li>
     
                    <li><sourcexml>LEGDOC/docinfo/docinfo:versioninfo</sourcexml> becomes
                            <targetxml>legis:legis/doc:metadata/doc:docinfo/doc:versioninfo</targetxml>
                        with <sourcexml>@hasotheversions</sourcexml> becomes
                            <targetxml>@hasotherversions</targetxml> which has tokenized values(True
                        | False) and children as described below: <ul>
                            <li><sourcexml>LEGDOC/docinfo/docinfo:versioninfo/docinfo:startdate</sourcexml>
                                becomes
                                    <targetxml>legis:legis/doc:metadata/doc:docinfo/doc:versioninfo/doc:startdate</targetxml>
                                with comes <sourcexml>@month</sourcexml> becomes
                                    <targetxml>@month</targetxml>, <sourcexml>@day</sourcexml>
                                becomes <targetxml>@day</targetxml> and <sourcexml>year</sourcexml>
                                becomes <targetxml>@year</targetxml>
                                <sourcexml>LEGDOC/docinfo/docinfo:versioninfo/docinfo:enddate</sourcexml>
                                becomes
                                    <targetxml>legis:legis/doc:metadata/doc:docinfo/doc:versioninfo/doc:enddate</targetxml>
                                with comes <sourcexml>@month</sourcexml> becomes
                                    <targetxml>@month</targetxml>, <sourcexml>@day</sourcexml>
                                becomes <targetxml>@day</targetxml> and <sourcexml>year</sourcexml>
                                becomes <targetxml>@year</targetxml> and populated as: <pre>
                                &lt;docinfo:versioninfo hasotherversions="true"&gt;
                                &lt;docinfo:startdate day="21" month="10" year="2010"/&gt;
                                &lt;/docinfo:versioninfo&gt;
                                <b>becomes</b>
                                &lt;doc:versioninfo hasotherversions="true"&gt;
                                &lt;doc:startdate month="10" day="21" year="2010"/&gt;
                                &lt;/doc:versioninfo&gt;
                            </pre>
                                <note>The <targetxml>@day</targetxml> value must be in two digit
                                    number. i.e. from 01 to 31</note>
                                <note>The <targetxml>@month</targetxml> value must be transformed to
                                    '01' through '12'. i.e. 'June' = '06'</note>
                                <note>The <targetxml>@year</targetxml> value must be in four digit.
                                    i.e. '2011'</note>
                            </li>
                        </ul>
                    </li>
                    <li><sourcexml>LEGDOC/docinfo/docinfo:selector</sourcexml> becomes
                            <targetxml>legis:legis/doc:metadata/doc:docinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                        and populated as: <note>MLV: May be dropped after verifying what possible
                            values. Any data that is not included in the document elsewhere must be
                            kept however if it is already in the document somewhere else do we need
                            to keep it here.</note>
                        <pre>
                        &lt;docinfo:selector&gt;act&lt;/docinfo:selector&gt;
                        becomes
                        &lt;classify:classification classscheme="selector"&gt;
                        &lt;classify:classitem&gt;
                        &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;act&lt;/classify:classname&gt;
                        &lt;/classify:classitem-identifier&gt;
                        &lt;/classify:classitem&gt;
                        &lt;/classify:classification&gt;
                    </pre>
                    </li>
                    <li>
                        <sourcexml>docinfo:topiccodes</sourcexml> becomes
                            <targetxml>/doc:docinfo/classify:classification
                            @classscheme="topiccodes"</targetxml> with child element
                            <sourcexml>docinfo:topiccode</sourcexml> which becomes
                            <targetxml>/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                        <pre>
            &lt;docinfo:topiccodes&gt;
               &lt;docinfo:topiccode&gt;#PA#CODE#&lt;/docinfo:topiccode&gt;
            &lt;/docinfo:topiccodes&gt;            
            
            <b>becomes</b>
            
              &lt;classify:classification classscheme="topiccodes"&gt;
                    &lt;classify:classitem&gt;
                        &lt;classify:classitem-identifier&gt;
                               &lt;classify:classname&gt;#PA#CODE#&lt;/classify:classname&gt;
                         &lt;/classify:classitem-identifier&gt;
                     &lt;/classify:classitem&gt;
              &lt;/classify:classification&gt;
            </pre>
            <note>Example list of values includes #PA#CODE#, #PA#FAMM#, #PA#BSUM#, etc. .</note>
         </li>
      </ul>
    </p>
 </section>       
</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ06_Acts_From_Services\NZ_Acts_From_Services-Metadata.dita  -->
	<xsl:message>NZ_Acts_From_Services-Metadata.xsl requires manual development!</xsl:message> 

	<xsl:template match="LEGDOC/docinfo">

		<!--  Original Target XPath:  legis:legis/doc:metadata   -->
		<legis:legis>
			<doc:metadata>
				<xsl:apply-templates select="@* | node()"/>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="docinfo">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<xsl:apply-templates select="@* | node()"/>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:doc-country[@iso-cc]">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo[@doc-content-country]   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<xsl:apply-templates select="@* | node()"/>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:load-date/date">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/dc:metadata/dc:date[@lnmeta:datetype]   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<dc:metadata>
						<dc:date>
							<xsl:apply-templates select="@* | node()"/>
						</dc:date>
					</dc:metadata>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:doc-id">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/dc:metadata/dc:identifier[@lnmeta:identifier-scheme]   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<dc:metadata>
						<dc:identifier>
							<xsl:apply-templates select="@* | node()"/>
						</dc:identifier>
					</dc:metadata>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:doc-heading">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/dc:metadata/dc:title   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<dc:metadata>
						<dc:title>
							<xsl:apply-templates select="@* | node()"/>
						</dc:title>
					</dc:metadata>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:doc-lang[@lang]">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/dc:metadata/dc:language   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<dc:metadata>
						<dc:language>
							<xsl:apply-templates select="@* | node()"/>
						</dc:language>
					</dc:metadata>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:hier">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/doc:hier   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<doc:hier>
						<xsl:apply-templates select="@* | node()"/>
					</doc:hier>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:hier/docinfo:hierlev">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/doc:hier/doc:hierlev   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<doc:hier>
						<doc:hierlev>
							<xsl:apply-templates select="@* | node()"/>
						</doc:hierlev>
					</doc:hier>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:hier/docinfo:hierlev/heading">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/doc:hier/doc:hierlev/heading   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<doc:hier>
						<doc:hierlev>
							<heading>
								<xsl:apply-templates select="@* | node()"/>
							</heading>
						</doc:hierlev>
					</doc:hier>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:hier/docinfo:hierlev/heading/title">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/doc:hier/doc:hierlev/heading/title   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<doc:hier>
						<doc:hierlev>
							<heading>
								<title>
									<xsl:apply-templates select="@* | node()"/>
								</title>
							</heading>
						</doc:hierlev>
					</doc:hier>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="@role">

		<!--  Original Target XPath:  doc:bookseqnum   -->
		<doc:bookseqnum>
			<xsl:apply-templates select="@* | node()"/>
		</doc:bookseqnum>

	</xsl:template>

	<xsl:template match="docinfo:bookseqnum">

		<!--  Original Target XPath:  doc:bookseqnum   -->
		<doc:bookseqnum>
			<xsl:apply-templates select="@* | node()"/>
		</doc:bookseqnum>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:versioninfo">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/doc:versioninfo   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<doc:versioninfo>
						<xsl:apply-templates select="@* | node()"/>
					</doc:versioninfo>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="@hasotheversions">

		<!--  Original Target XPath:  @hasotherversions   -->
		<xsl:attribute name="hasotherversions">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:versioninfo/docinfo:startdate">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/doc:versioninfo/doc:startdate   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<doc:versioninfo>
						<doc:startdate>
							<xsl:apply-templates select="@* | node()"/>
						</doc:startdate>
					</doc:versioninfo>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="@month">

		<!--  Original Target XPath:  @month   -->
		<xsl:attribute name="month">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@day">

		<!--  Original Target XPath:  @day   -->
		<xsl:attribute name="day">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="year">

		<!--  Original Target XPath:  @year   -->
		<xsl:attribute name="year">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:versioninfo/docinfo:enddate">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/doc:versioninfo/doc:enddate   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<doc:versioninfo>
						<doc:enddate>
							<xsl:apply-templates select="@* | node()"/>
						</doc:enddate>
					</doc:versioninfo>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="LEGDOC/docinfo/docinfo:selector">

		<!--  Original Target XPath:  legis:legis/doc:metadata/doc:docinfo/classify:classification/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<legis:legis>
			<doc:metadata>
				<doc:docinfo>
					<classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
						<classify:classitem>
							<classify:classitem-identifier>
								<classify:classname>
									<xsl:apply-templates select="@* | node()"/>
								</classify:classname>
							</classify:classitem-identifier>
						</classify:classitem>
					</classify:classification>
				</doc:docinfo>
			</doc:metadata>
		</legis:legis>

	</xsl:template>

	<xsl:template match="docinfo:topiccodes">

		<!--  Original Target XPath:  /doc:docinfo/classify:classification@classscheme="topiccodes"   -->
		<doc:docinfo>
			<classify:classification xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
				<xsl:apply-templates select="@* | node()"/>
			</classify:classification>
		</doc:docinfo>

	</xsl:template>

	<xsl:template match="docinfo:topiccode">

		<!--  Original Target XPath:  /classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classitem xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/">
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>

	</xsl:template>

</xsl:stylesheet>