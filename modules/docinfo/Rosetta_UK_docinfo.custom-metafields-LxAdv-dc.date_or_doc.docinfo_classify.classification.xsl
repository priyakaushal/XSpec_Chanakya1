<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" 
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"
    version="2.0" exclude-result-prefixes="dita docinfo">
    <dita:topic
        id="Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification"
        xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/">
        <title>(UK) <sourcexml>docinfo:custom-metafield</sourcexml> to <targetxml>dc:date</targetxml> or
            <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]</targetxml>
            <lnpid>id-CCCC-10547</lnpid></title>
        <body>
            <section>
                <title>Instructions <i>[common element]</i></title>
                <note>About This Module: These are special rules for UK streams. The conversions
                    described here are <u>in addition to</u> the conversions described in <xref
                        href="Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.dita"
                        >"<sourcexml>docinfo:custom-metafields</sourcexml> to
                        <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]/meta/metaitem</targetxml>
                        (id-CCCC-10485)"</xref></note>
                <p>These are rules for mapping certain instances of the source element
                    <sourcexml>docinfo:custom-metafield</sourcexml>. The instances are identified
                    through the <sourcexml>@name</sourcexml> attribute. The items may not be present in
                    every stream. If present, the rules below apply. The rules are grouped by
                    target.</p>
                <p><b><u>Mapping to <targetxml>dc:date</targetxml></u></b></p>
                <p>Source: <ul>
                    <li><sourcexml>docinfo:custom-metafield[@name="editorialPublishedDate"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="createdDate"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="updatedDate"]</sourcexml></li>
                </ul></p>
                <p>Target:
                    <targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:date[@lnmeta:datetype]</targetxml>.
                    Where <sourcexml>@name</sourcexml> value becomes
                    <targetxml>@lnmeta:datetype</targetxml>value. And content of source element
                    becomes content of target.</p>
                <p><b><u>Mapping to <targetxml>classify:classification</targetxml></u></b></p>
                <p>Source: <ul>
                    <li><sourcexml>docinfo:custom-metafield[@name="important"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="highlightFrequency"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="inEditorialReview"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="resultType"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="word-toc"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="isDocBuilderAvailable"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="isCorePrecedent"]</sourcexml></li>
                    <!-- McNally June 16 2016: The next one, filterType, might be wanted in future. No initial requirement so commented-out. -->
                    <!--<li><sourcexml>docinfo:custom-metafield[@name="filterType"]</sourcexml></li>-->
                </ul></p>
                <p>Target: Each source item becomes <targetxml>metaitem[@name @value]</targetxml> within
                    <targetxml>classify:classification</targetxml> markup. As follows:</p>
                <p>Within <targetxml>doc:metadata/doc:docinfo</targetxml> -<ul>
                    <li>Create
                        <targetxml>classify:classification[@classscheme="uk-functional-information"]/classify:classitem</targetxml>.
                        The <targetxml>@classscheme</targetxml> value is hard coded.<ul>
                            <li>Create <targetxml>meta</targetxml><ul>
                                <li>For each <sourcexml>docinfo:custom-metafield</sourcexml>
                                    specified above, create <targetxml>metaitem[@name
                                        @value]</targetxml>. Where <sourcexml>@name</sourcexml>
                                    value becomes <targetxml>@name</targetxml> value. And
                                    content of source element becomes
                                    <targetxml>@value</targetxml> value.</li>
                            </ul></li>
                            <li>Create
                                <targetxml>classify:classitem-identifier/classify:classcode[@normval="functional-parameters"]</targetxml>.
                                The <targetxml>@normval</targetxml> value is hard coded.</li>
                        </ul></li>
                </ul><note>Create only one container
                    <targetxml>classify:classification[@classscheme="uk-functional-information"]/classify:classitem</targetxml>.
                    The container holds the items described above and may also hold mappings from
                    elsewhere in the same source file.</note></p>
                <p>
                    <note>This rule is applicable for specific instance of the source element
                        <sourcexml>docinfo:custom-metafield</sourcexml>. The instances are
                        identified through the <sourcexml>@name</sourcexml> attribute with value
                        "<sourcexml>containsAppealTracker</sourcexml>" and the target attribute
                        value should be all lower case (<targetxml>true</targetxml> or
                        <targetxml>false</targetxml>). This item may not be present in every UK
                        streams. If present then rule will be apply.</note>
                </p>
            </section>
            
            <example>
                <title>Source XML</title>
                <codeblock>
                    <![CDATA[
<docinfo>
    <docinfo:custom-metafields>
        <docinfo:custom-metafield name="important">true</docinfo:custom-metafield>
        <docinfo:custom-metafield name="inEditorialReview">yes</docinfo:custom-metafield>
        <docinfo:custom-metafield name="editorialPublishedDate">2010-02-17</docinfo:custom-metafield>
        <docinfo:custom-metafield name="createdDate">2016-01-04</docinfo:custom-metafield>
        <docinfo:custom-metafield name="updatedDate">2016-03-06</docinfo:custom-metafield>
        <docinfo:custom-metafield name="highlightFrequency">Weekly</docinfo:custom-metafield>
        <docinfo:custom-metafield name="resultType">Precedents</docinfo:custom-metafield>
        <docinfo:custom-metafield name="containsAppealTracker">false</docinfo:custom-metafield>
        <docinfo:custom-metafield name="word-toc">yes</docinfo:custom-metafield>
        <docinfo:custom-metafield name="hostDB">PAM</docinfo:custom-metafield>
        <docinfo:custom-metafield name="isDocBuilderAvailable">true</docinfo:custom-metafield>
        <docinfo:custom-metafield name="isCorePrecedent">true</docinfo:custom-metafield>
    </docinfo:custom-metafields>
</docinfo>

<!-- The item above, @name="hostDB", is an example of an item not included in these special rules and so not present in target -->
]]>
                </codeblock>
            </example>
            
            <example>
                <title>Target XML</title>
                <codeblock>
                    <![CDATA[
<doc:metadata>
    <doc:docinfo doc-content-country="GB">
        <dc:metadata>
            <dc:date lnmeta:datetype="editorialPublishedDate">2010-02-17</dc:date>
            <dc:date lnmeta:datetype="createdDate">2016-01-04</dc:date>
            <dc:date lnmeta:datetype="updatedDate">2016-03-06</dc:date>
        </dc:metadata>
        <classify:classification classscheme="uk-functional-information">
            <classify:classitem>
                <meta>
                    <metaitem name="important" value="true"/>
                    <metaitem name="inEditorialReview" value="yes"/>
                    <metaitem name="highlightFrequency" value="Weekly"/>
                    <metaitem name="resultType" value="Precedents"/>
                    <metaitem name="containsAppealTracker" value="false"/>
                    <metaitem name="word-toc" value="yes"/>
                    <metaitem name="isDocBuilderAvailable" value="true"/>
                    <metaitem name="isCorePrecedent" value="true"/>
                </meta>
                <classify:classitem-identifier>
                    <classify:classcode normval="functional-parameters"/>
                </classify:classitem-identifier>
            </classify:classitem>
        </classify:classification>
    </doc:docinfo>
</doc:metadata>
]]>
                </codeblock>
            </example>
            <section>
                <title>Changes</title>
                <p>2017-01-31: <ph id="change_20170131_jm">Added rule for "isCorePrecedent"; and updated the
                    example.</ph></p>
                <p>2016-11-30: <ph id="change_20161130_AS">Added rule for "isDocBuilderAvailable"; and
                    updated the example.</ph> VSTS #143964</p>
                <p>2016-10-04: <ph id="change_20161004_jm">Added rule for "word-toc"; and updated the
                    example.</ph></p>
                <p>2016-09-08: <ph id="change_20160908_SS">Added rule for attribute
                    <sourcexml>@name</sourcexml> with value "<u>containsAppealTracker</u>"; and
                    updated the example.</ph></p>
                <p>2016-07-26: <ph id="change_20160726_jm">Added rule for "resultType"; and updated the
                    example.</ph></p>
                <p>2016-07-13: <ph id="change_20160713_JCG">Added rules for "createdDate",
                    "updatedDate", and "inEditorialReview"; and updated the example.</ph></p>
                <p>2016-06-17: <ph id="change_20160617_jm">Created. New rules.</ph></p>
            </section>
            
        </body>
    </dita:topic>
    
    <!-- output as child of dc:metadata -->
    <xsl:template match="docinfo:custom-metafields/docinfo:custom-metafield[@name=('editorialPublishedDate' , 'createdDate' , 'updatedDate')]">
        <!-- Awantika: For UK streams above conditions need to be fulfilled in order to create multiple dc:date.
        Due to <xsl:if test="not(normalize-space(@value)='')"> it was not doing so, as @value does not come in docinfo:custom-metafield
        therefore commenting this out.-->
        <xsl:if test="not(normalize-space(.)='')">
        <dc:date>
            <xsl:attribute name="lnmeta:datetype" select="@name"/>
            <xsl:choose>
                <xsl:when test="matches(. , '\d{8}')">
                    <xsl:value-of select="concat(substring(. , 1, 4) , '-' , substring(. , 5, 2) , '-' , substring(. , 7, 2))"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="."/>
                </xsl:otherwise>
            </xsl:choose>
        </dc:date>
        </xsl:if>
    </xsl:template>
    
    <!-- output as uk functional information -->
    <!-- WPK 2017-11-28.  All UK items related to functional information markup.  		
        This note is replicated in each of the 3 modules (but not in the 2 default "pass through" behavior modules) listed below for clarity.
        <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]</targetxml>

        Module: \svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\docinfo\Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.xsl
        <lnpid>id-CCCC-10300</lnpid>
        this is the default "pass through" or non-classification behavior for lbu-meta not as functional information but as <doc:legacy-metadata metadatasource="lbu-meta">
        this is for items that either aren't converted to uk-functional-information.  technically the uk functional information items are ALSO
        passed through here additionally.
        
        Module: \svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\docinfo/Rosetta_UK_docinfo.custom-metafields-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta.meta.metaitem.xsl
		<lnpid>id-CCCC-10485</lnpid></title>
        this is the default "pass through" or non-classification behavior for custom-metafields not as functional information but as <doc:legacy-metadata metadatasource="lbu-meta">
        this is for items that either aren't converted to uk-functional-information.  technically the uk functional information items are ALSO
        passed through here additionally.
        
        Module: \svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\nonamespace\Rosetta_UK_docinfo-LxAdv-doc.docinfo_classify.classification.xsl
        <lnpid>id-CCCC-10546</lnpid>
        <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]</targetxml>
        documentation and code for functional information classification markup, but only these use cases:
        	<p>Source: <sourcexml>docinfo</sourcexml> attributes - <ul>
                        <li><sourcexml>@majorrevision</sourcexml></li>
                        <li><sourcexml>@excludefromalerts</sourcexml></li>
                    </ul></p>
        This creates the <classification> wrapper for all uk functional information use cases.
        <xsl:template match="docinfo" mode="UKClassify">

        Module: \svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\docinfo\Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification.xsl
        <lnpid>id-CCCC-10548</lnpid></title>
        <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]</targetxml>
        documentation and code (the <metaitem> within the classification wrapper) for these use cases only
            <p>Source: <ul>
                    <li><sourcexml>docinfo:metaitem[@name="alternative-title-formal" @value=""]</sourcexml></li>
                    <li><sourcexml>docinfo:metaitem[@name="alternative-title-acronym"  @value=""]</sourcexml></li>
                    <li><sourcexml>docinfo:metaitem[@name="alternative-title-popular"  @value=""]</sourcexml></li>
                </ul></p>

        Module: \svn\dataArch\XSLT\ContentArch\Rosetta-to-LA\modules\docinfo\Rosetta_UK_docinfo.custom-metafields-LxAdv-dc.date_or_doc.docinfo_classify.classification.xsl
        <lnpid>id-CCCC-10547</lnpid></title>
        <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]</targetxml>
        documentation and code (the <metaitem> within the classification wrapper)for functional information classification markup, but only these use cases:
           <p>Source: <ul>
                    <li><sourcexml>docinfo:custom-metafield[@name="editorialPublishedDate"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="createdDate"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="updatedDate"]</sourcexml></li>
                </ul></p>

                <p>Source: <ul>
                    <li><sourcexml>docinfo:custom-metafield[@name="important"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="highlightFrequency"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="inEditorialReview"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="resultType"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="word-toc"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="isDocBuilderAvailable"]</sourcexml></li>
                    <li><sourcexml>docinfo:custom-metafield[@name="isCorePrecedent"]</sourcexml></li>
                    <!-/- McNally June 16 2016: The next one, filterType, might be wanted in future. No initial requirement so commented-out. -/->
                    <!-/-<li><sourcexml>docinfo:custom-metafield[@name="filterType"]</sourcexml></li>-/->
                </ul></p>
        -->	
    <xsl:template match=" docinfo:custom-metafield[@name='important'] | docinfo:custom-metafield[@name='highlightFrequency'] | 
        docinfo:custom-metafield[@name='inEditorialReview'] | docinfo:custom-metafield[@name='resultType'] |
        docinfo:custom-metafield[@name='word-toc'] | docinfo:custom-metafield[@name='isDocBuilderAvailable'] | 
        docinfo:custom-metafield[@name='isCorePrecedent']">
        <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:attribute name="name" select="@name"/>
            <xsl:attribute name="value" select="."/>
        </metaitem>
    </xsl:template>
    
    
</xsl:stylesheet>
