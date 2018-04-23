<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN06_Introduction">
    <title>Introduction <lnpid>id-IN06-38011</lnpid></title>
    <body>
        <section><title>This Conversion Instruction describes the conversion of Seclaw 8.13 Prod schema in the
                document.</title>
            <p><sourcexml>/COMMENTARYDOC</sourcexml> becomes <targetxml>/seclaw:seclaw</targetxml>,
                which is a root element for Commentary stream and attributes are populated as
                follows: <ul>
                    <li>Create <targetxml>/seclaw:seclaw[@seclawtype]</targetxml> and values are
                        tokenized for attribute <targetxml>@seclawtype</targetxml>.
                            <note>seclaw:seclaw[@seclawtype] corresponding attribute value is not
                            used in Rosetta markup, the LBU recommend that the CI instruct
                            conversion to look for the first <sourcexml>level@leveltype</sourcexml>
                            and map that value. If the value is <b>"form*"</b> or <b>"prec*"</b>
                            then output the <targetxml>@seclawtype</targetxml> type as <b>"form"</b>
                            or <b>"precedent"</b> respectively. Any other value should default to
                                <b>"commentary"</b>.</note> Rules are listed below to define
                            <targetxml>seclaw:seclaw[@seclawtype]</targetxml> in NewLexis
                        conversion: <ul>
                            <li>If first <sourcexml>level[@leveltype="prec"]</sourcexml> or
                                    <sourcexml>level[@leveltype="prec.grp"]</sourcexml> then create
                                    <targetxml>seclaw:seclaw[@seclawtype="precedent"]</targetxml>.</li>
                            <li>If first <sourcexml>level[@leveltype="comm.chap"]</sourcexml> and
                                nested level is <sourcexml>level[@leveltype="prec"]</sourcexml> or
                                    <sourcexml>level[@leveltype="prec.grp"]</sourcexml> then create
                                    <targetxml>seclaw:seclaw[@seclawtype="precedent"]</targetxml>.</li>
                            <li>If first <sourcexml>level[@leveltype="form"]</sourcexml> or
                                    <sourcexml>level[@leveltype="form.grp"]</sourcexml> then create
                                    <targetxml>seclaw:seclaw[@seclawtype="form"]</targetxml>.</li>
                            <li>If rule 1-3 in listed above are not true then create
                                    <targetxml>seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</li>
                        </ul>
                    </li>
                </ul>
            </p>
            <p><targetxml>seclaw:head</targetxml>, <targetxml>seclaw:body</targetxml>, and
                    <targetxml>doc:metadata</targetxml> are created as require children of
                    <targetxml>seclaw:seclaw</targetxml>
            </p>
            <note><sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion in
                NewLexis except for JCITE markup.</note>
            <note>NewLexis schema does not allow white space in attribute values that provide a
                unique identifier for that element. If white space is encountered in attribute
                values then replace it with an underscore sign(_), and the attribute value should be
                unique within a document.</note>
            <note><b>Handling of element <sourcexml>refpt</sourcexml>:</b> As
                    <sourcexml>refpt</sourcexml> has to be converted to
                    <targetxml>ref:anchor</targetxml> and <targetxml>xml:id</targetxml> can stay as
                long as it does not duplicate. If it duplicates with
                    <targetxml>ref:anchor/@id</targetxml>, remove the <targetxml>@xml:id</targetxml>
                and retain <targetxml>ref:anchor</targetxml> with all its conversion in
                output.</note>
        </section>

        <section>
            <title>Notes</title>
            <p>Source elements and attributes are highlighted like this:
                    <sourcexml>sourcexml</sourcexml></p>
            <p>Target elements and attributes are highlighted like this:
                    <targetxml>targetxml</targetxml></p>
            <p>Verify content of following target attributes: <ul>
                    <li><sourcexml>@month</sourcexml> becomes <targetxml>@month</targetxml> is
                        between 01-12. Any numbers outside this range, do not output a
                            <targetxml>@month</targetxml>.</li>

                    <li><sourcexml>@day</sourcexml> becomes <targetxml>@day</targetxml> is between
                        01-31. Any numbers outside this range, do not output
                            <targetxml>@day</targetxml>.</li>

                    <li><sourcexml>@year</sourcexml> becomes <targetxml>@year</targetxml> is 4
                        digits in length. Any other lengths, do not output
                            <targetxml>@year</targetxml>.</li>
                </ul>
            </p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN06-Commentary\IN06_Introduction.dita  -->
	<xsl:message>IN06_Introduction.xsl requires manual development!</xsl:message> 

	<xsl:template match="/COMMENTARYDOC">

		<!--  Original Target XPath:  /seclaw:seclaw   -->
		<seclaw:seclaw>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:seclaw>

	</xsl:template>

	<xsl:template match="level@leveltype">

		<!--  Original Target XPath:  @seclawtype   -->
		<xsl:attribute name="seclawtype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;prec&#34;]">

		<!--  Original Target XPath:  seclaw:seclaw[@seclawtype="precedent"]   -->
		<seclaw:seclaw>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:seclaw>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;prec.grp&#34;]">

		<!--  Original Target XPath:  seclaw:seclaw[@seclawtype="precedent"]   -->
		<seclaw:seclaw>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:seclaw>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;comm.chap&#34;]">

		<!--  Original Target XPath:  seclaw:seclaw[@seclawtype="precedent"]   -->
		<seclaw:seclaw>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:seclaw>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;form&#34;]">

		<!--  Original Target XPath:  seclaw:seclaw[@seclawtype="form"]   -->
		<seclaw:seclaw>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:seclaw>

	</xsl:template>

	<xsl:template match="level[@leveltype=&#34;form.grp&#34;]">

		<!--  Original Target XPath:  seclaw:seclaw[@seclawtype="form"]   -->
		<seclaw:seclaw>
			<xsl:apply-templates select="@* | node()"/>
		</seclaw:seclaw>

	</xsl:template>

	<xsl:template match="@searchtype">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:  ref:anchor   -->
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>

	</xsl:template>

	<xsl:template match="sourcexml">

		<!--  Original Target XPath:  targetxml   -->
		<targetxml>
			<xsl:apply-templates select="@* | node()"/>
		</targetxml>

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

	<xsl:template match="@year">

		<!--  Original Target XPath:  @year   -->
		<xsl:attribute name="year">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

</xsl:stylesheet>