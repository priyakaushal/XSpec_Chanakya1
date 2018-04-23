<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="courtinfo">
    <title>case:courtinfo <lnpid>id-IN04-38820</lnpid></title>
    <body>
        <section>
            <ul>
                <li>
                    <sourcexml>case:courtinfo</sourcexml> the content consist of and it's maintained
                    in the following three elements: <targetxml>jurisinfo:courtinfo</targetxml>,
                        <targetxml>courtcase:judges</targetxml> and
                        <targetxml>decision:dates</targetxml> and the children are populated as
                    below : <ul>
                        <li>
                            <sourcexml>case:courtinfo/case:courtname</sourcexml> becomes
                                <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml>
                        </li>
                    </ul>
                    <pre>

&lt;case:courtinfo&gt;
    ...
    &lt;case:courtname&gt;High Court of Judicature at Bombay&lt;/case:courtname&gt;
&lt;/case:courtinfo&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    ...
    &lt;jurisinfo:courtname&gt;High Court of Judicature at Bombay&lt;/jurisinfo:courtname&gt;
&lt;/jurisinfo:courtinfo&gt;

            </pre>
                </li>
                <li>
                    <pre>If <sourcexml>abbrvname</sourcexml> comes with same value which is also available in another element (i.e. <sourcexml>case:courtcode</sourcexml>) then NewLexis conversion needs to be suppressed in target. Refer below example:

&lt;case:courtinfo&gt;
    &lt;case:courtcode&gt;INSC&lt;/case:courtcode&gt;
    ...
    &lt;abbrvname searchtype="COURT-ABBR-NAME"&gt;INSC&lt;/abbrvname&gt;
&lt;/case:courtinfo&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:alternatecourtcode alternatecourtcode="INSC"/&gt;
    ...
    &lt;!--Suppressed 'abbrvname' in NewLexis conversion because same value available in 'case:courtcode'--&gt;
&lt;/jurisinfo:courtinfo&gt;

            </pre>                </li>
                        <li> The element <sourcexml>case:courtcode</sourcexml> becomes
                        <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>
                    and create <targetxml>doc:legacy-metadata/meta/metaitem</targetxml> and the
                    attributes will be populated as <targetxml>@name="case:courtcode"</targetxml>
                    and <targetxml>@value</targetxml> will be the value of
                        <sourcexml>case:courtcode</sourcexml>. <note>PLEASE NOTE that the element
                            <sourcexml>doc:legacy-metadata</sourcexml> needs to be created only for
                            <sourcexml>case:courtcode</sourcexml> occurring within
                            <sourcexml>case:headnote/case:info/case:courtinfo</sourcexml>. There is
                        NO NEED to create <sourcexml>doc:legacy-metadata</sourcexml> for all other
                        occurrences, eg.,
                        <sourcexml>cttr:annot/case:info/case:courtinfo</sourcexml>. The element
                            <sourcexml>cttr:annot/case:info/case:courtinfo/case:courtcode</sourcexml>
                        becomes
                            <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode</targetxml>.</note>
                    <pre>

&lt;case:courtinfo&gt;
    ...
    &lt;case:courtcode&gt;INBOM&lt;/case:courtcode&gt;
&lt;/case:courtinfo&gt;


<b>Becomes</b>


&lt;jurisinfo:courtinfo&gt;
    ...
    &lt;jurisinfo:alternatecourtcode alternatecourtcode="INBOM"/&gt;
&lt;/jurisinfo:courtinfo&gt;
...
&lt;doc:legacy-metadata metadatasource="lbu-meta"&gt;
    &lt;meta&gt;
        &lt;metaitem name="case:courtcode" value="INBOM"/&gt;
    &lt;/meta&gt;
&lt;/doc:legacy-metadata&gt;

            </pre>
                </li>
                        <li>
                    <sourcexml>case:judges</sourcexml> becomes
                        <targetxml>cttr:caseinfo/courtcase:judges</targetxml> and the children are
                    populated as below : <ul>
                        <li>
                            <sourcexml>case:judge</sourcexml> becomes
                                <targetxml>person:judge/person:person/person:name.text</targetxml>
                        </li>
                    </ul>
                    <pre>

&lt;case:courtinfo&gt;
    &lt;case:judges&gt;
        &lt;case:judge&gt;THE HONOURABLE ACTING CHIEF JUSTICE MR. NARAYAN G CHANDAVARKAR &amp;amp; THE HONOURABLE MR. JUSTICE BATCHELOR&lt;/case:judge&gt;
    &lt;/case:judges&gt;
&lt;/case:courtinfo&gt;

<b>Becomes</b>

&lt;courtcase:judges&gt;
    &lt;person:judge&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;THE HONOURABLE ACTING CHIEF JUSTICE MR. NARAYAN G CHANDAVARKAR &amp;amp;&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:judge&gt;
    &lt;person:judge&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;THE HONOURABLE MR. JUSTICE&lt;/person:name.text&gt;
        &lt;/person:person&gt;
    &lt;/person:judge&gt;
&lt;/courtcase:judges&gt;

            </pre>
                </li>
                        <li>
                            <sourcexml>case:dates</sourcexml> becomes <targetxml>decision:dates</targetxml>
                            and the children are populated as below : <ul>
                                <li>
                            <sourcexml>case:dates/case:decisiondate</sourcexml> becomes
                                <targetxml>decision:dates/decision:decisiondate</targetxml> and the
                            children are populated as below: <ul>
                                <li>
                                    <sourcexml>date</sourcexml> becomes
                                        <targetxml>date-text</targetxml>; the conversion also covers
                                    the attributes <sourcexml>@day</sourcexml> becomes
                                        <targetxml>decision:decisiondate/@day</targetxml>
                                    <sourcexml>@month</sourcexml> becomes
                                        <targetxml>decision:decisiondate/@month</targetxml>
                                    <sourcexml>@year</sourcexml> becomes
                                        <targetxml>decision:decisiondate/@year</targetxml>
                                </li>
                            </ul>
                            <note>Please note that the schema allows @day to be a single digit and
                                hence the leading zero is not required in the
                                    <targetxml>decision:decisiondate @day</targetxml>.</note>
                            <note>Please note that the attribute
                                    <targetxml>decision:decisiondate/@normdate</targetxml> needs to
                                be populated for all the
                                    <targetxml>decision:decisiondate</targetxml> for sorting
                                purposes. Please see the example below for more details : </note>
                            <pre>

&lt;case:dates&gt;
    &lt;case:decisiondate&gt;
        &lt;date day="05" month="03" year="1909"&gt;05-Mar-1909&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

<b>Becomes</b>

&lt;decision:dates&gt;
    &lt;decision:decisiondate day="05" month="03" year="1909" normdate="1909-03-05"&gt;
        &lt;date-text&gt;05-Mar-1909&lt;/date-text&gt;
    &lt;/decision:decisiondate&gt;
&lt;/decision:dates&gt;

            </pre>
                        </li>
                            </ul>
                        </li>
                        <li>
                            <p>There are two scenarios in handling of <sourcexml>case:juris</sourcexml>
                                based on the value:</p>
                            <p>
                                <b>Scenario 1: The value of <sourcexml>case:juris</sourcexml> represents a country</b> i.e. ININDIA (IN)</p>
                            <p><sourcexml>case:info/case:courtinfo/case:juris</sourcexml> maps to three
                                places:</p>
                            <ul>
                                <li>
                                    <targetxml>cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction</targetxml>
                                    with children: <ul>
                                        <li><targetxml>jurisinfo:location/location:country[@codescheme="ISO-3166-1"@countrycode="Y"]</targetxml> where "Y" is the
                                            target code provided above. The <targetxml>@codescheme</targetxml> value is hard-coded.</li>
                                        <li><targetxml>jurisinfo:system</targetxml> populated with the
                                            source value.</li>
                                    </ul></li>
                                <li><targetxml>dc:metadata/dc:coverage/location:country[@codescheme="ISO-3166-1"
                                        @countrycode="Y"]</targetxml> where "Y" is the target code
                                    provided above. The <targetxml>@codescheme</targetxml> value is hard-coded.</li>
                            </ul>

                            <pre>

&lt;case:juris&gt;ININDIA&lt;/case:juris&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:location&gt;
            &lt;location:country codescheme="ISO-3166-1" countrycode="IN"/&gt;
        &lt;/jurisinfo:location&gt;
        &lt;jurisinfo:system&gt;IN&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
&lt;dc:metadata&gt;
    ...
    &lt;dc:coverage&gt;
        &lt;location:country codescheme="ISO-3166-1" countrycode="IN"/&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

            </pre>
                           
                            <p>
                        <b>Scenario 2: The value of <sourcexml>case:juris</sourcexml> represents an
                            INDIA States</b></p>
                            <p>The following values are Indian States,
                                described here in format X(Y) where X is the source value and Y is
                                the target code:</p>
                            <p>INJAP, INJBOM, INJCAL, INJCHG, INJDEL, INJGUJ and others.</p>
                          
                            <p><sourcexml>case:info/case:courtinfo/case:juris</sourcexml> maps to three
                                places:</p>
                            <ul>
                                <li>
                                    <targetxml>cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction</targetxml>
                                    with children: <ul>
                                        <li><targetxml>jurisinfo:location/location:country[@codescheme="ISO-3166-1"
                                        @countrycode="IN"]</targetxml>. The attribute values are
                                    hard-coded.</li>
                                        <li><targetxml>jurisinfo:system</targetxml> populated with the
                                            source value.</li>
                                    </ul></li>
                                <li><targetxml>dc:metadata/dc:coverage/location:state[@codescheme="ISO-3166-2"
                                        @statecode="Y"]</targetxml> where "Y" is the target code
                                    provided above. The <targetxml>@codescheme</targetxml> value is hard-coded.</li>
                            </ul>
                            <note>This difference is correct: <targetxml>jurisinfo:location</targetxml> has child <targetxml>location:country</targetxml>. And <targetxml>dc:coverage</targetxml>
                                has child <targetxml>location:state</targetxml>.</note>
                            <pre>

&lt;case:juris&gt;INJUP&lt;/case:juris&gt;

<b>Becomes</b>

&lt;jurisinfo:courtinfo&gt;
    &lt;jurisinfo:jurisdiction&gt;
        &lt;jurisinfo:location&gt;
            &lt;location:country codescheme="ISO-3166-1" countrycode="IN"/&gt;
        &lt;/jurisinfo:location&gt;
        &lt;jurisinfo:system&gt;INJUP&lt;/jurisinfo:system&gt;
    &lt;/jurisinfo:jurisdiction&gt;
&lt;/jurisinfo:courtinfo&gt;
&lt;dc:metadata&gt;
    ...
    &lt;dc:coverage&gt;
       &lt;location:state codescheme="ISO-3166-2" statecode="INJUP"/&gt;
    &lt;/dc:coverage&gt;
&lt;/dc:metadata&gt;

            </pre>
                          
                        </li>
                    </ul>
        </section>
        <section>
            <title>Changes</title>
            <p>2016-08-18: <ph id="change_20160818_SS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_courtinfo.dita  -->
	<xsl:message>IN04_courtinfo.xsl requires manual development!</xsl:message> 

	<xsl:template match="case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo   -->
		<jurisinfo:courtinfo>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:courtinfo/case:courtname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:courtname   -->
		<jurisinfo:courtinfo>
			<jurisinfo:courtname>
				<xsl:apply-templates select="@* | node()"/>
			</jurisinfo:courtname>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="abbrvname"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:courtcode"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="doc:legacy-metadata"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:headnote/case:info/case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:courtinfo"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="cttr:annot/case:info/case:courtinfo/case:courtcode"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  jurisinfo:courtinfo/jurisinfo:alternatecourtcode/@alternatecourtcode   -->
		<jurisinfo:courtinfo>
			<jurisinfo:alternatecourtcode>
				<xsl:attribute name="alternatecourtcode">
					<xsl:apply-templates select="node()"/>
				</xsl:attribute>
			</jurisinfo:alternatecourtcode>
		</jurisinfo:courtinfo>

	</xsl:template>

	<xsl:template match="case:judges"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:caseinfo/courtcase:judges   -->
		<cttr:caseinfo>
			<courtcase:judges>
				<xsl:apply-templates select="@* | node()"/>
			</courtcase:judges>
		</cttr:caseinfo>

	</xsl:template>

	<xsl:template match="case:judge"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  person:judge/person:person/person:name.text   -->
		<person:judge>
			<person:person>
				<person:name.text>
					<xsl:apply-templates select="@* | node()"/>
				</person:name.text>
			</person:person>
		</person:judge>

	</xsl:template>

	<xsl:template match="case:dates"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:dates   -->
		<decision:dates>
			<xsl:apply-templates select="@* | node()"/>
		</decision:dates>

	</xsl:template>

	<xsl:template match="case:dates/case:decisiondate"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:dates/decision:decisiondate   -->
		<decision:dates>
			<decision:decisiondate>
				<xsl:apply-templates select="@* | node()"/>
			</decision:decisiondate>
		</decision:dates>

	</xsl:template>

	<xsl:template match="date"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  date-text   -->
		<date-text>
			<xsl:apply-templates select="@* | node()"/>
		</date-text>

	</xsl:template>

	<xsl:template match="@day"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:decisiondate/@day   -->
		<decision:decisiondate>
			<xsl:attribute name="day">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="@month"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:decisiondate/@month   -->
		<decision:decisiondate>
			<xsl:attribute name="month">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="@year"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  decision:decisiondate/@year   -->
		<decision:decisiondate>
			<xsl:attribute name="year">
				<xsl:apply-templates select="node()"/>
			</xsl:attribute>
		</decision:decisiondate>

	</xsl:template>

	<xsl:template match="case:juris"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction   -->
		<cttr:citeddecision>
			<cttr:caseinfo>
				<jurisinfo:courtinfo>
					<jurisinfo:jurisdiction>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:jurisdiction>
				</jurisinfo:courtinfo>
			</cttr:caseinfo>
		</cttr:citeddecision>

	</xsl:template>

	<xsl:template match="case:info/case:courtinfo/case:juris"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:citeddecision/cttr:caseinfo/jurisinfo:courtinfo/jurisinfo:jurisdiction   -->
		<cttr:citeddecision>
			<cttr:caseinfo>
				<jurisinfo:courtinfo>
					<jurisinfo:jurisdiction>
						<xsl:apply-templates select="@* | node()"/>
					</jurisinfo:jurisdiction>
				</jurisinfo:courtinfo>
			</cttr:caseinfo>
		</cttr:citeddecision>

	</xsl:template>

</xsl:stylesheet>