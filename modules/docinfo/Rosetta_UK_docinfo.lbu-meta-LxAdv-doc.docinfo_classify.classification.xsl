<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita docinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_UK_docinfo.lbu-meta-LxAdv-doc.docinfo_classify.classification">
    <title>(UK) <sourcexml>docinfo:lbu-meta</sourcexml> to
            <targetxml>doc:metadata/doc:docinfo/classify:classification[@classscheme="uk-functional-information"]</targetxml>
        <lnpid>id-CCCC-10548</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <note>About This Module: These are special rules for UK streams. The conversions
                described here are <u>in addition to</u> the conversions described in <xref href="Rosetta_docinfo.lbu-meta-LxAdv-doc.legacy-metadata_metadatasource_lbu-meta-scheme.dita">"<sourcexml>docinfo:lbu-meta</sourcexml> to
                        <targetxml>doc:legacy-metadata[@metadatasource="lbu-meta"]</targetxml>
                    (id-CCCC-10300)"</xref></note>
            <p>These are rules for mapping certain instances of the source element
                    <sourcexml>docinfo:metaitem</sourcexml>. The instances are identified through
                the <sourcexml>@name</sourcexml> attribute. The items may not be present in every
                stream. If present, the rules below apply.</p>
            <p>Source: <ul>
                    <li><sourcexml>docinfo:metaitem[@name="alternative-title-formal"
                            @value=""]</sourcexml></li>
                    <li><sourcexml>docinfo:metaitem[@name="alternative-title-acronym"
                            @value=""]</sourcexml></li>
                    <li><sourcexml>docinfo:metaitem[@name="alternative-title-popular"
                            @value=""]</sourcexml></li>
                </ul></p>
            <p>Target: Each source item becomes <targetxml>metaitem[@name @value]</targetxml> within
                    <targetxml>classify:classification</targetxml> markup. As follows:</p>
            <p>Within <targetxml>doc:metadata/doc:docinfo</targetxml> -<ul>
                    <li>Create
                            <targetxml>classify:classification[@classscheme="uk-functional-information"]/classify:classitem</targetxml>.
                        The <targetxml>@classscheme</targetxml> value is hard coded.<ul>
                            <li>Create <targetxml>meta</targetxml><ul>
                                    <li>For each <sourcexml>docinfo:metaitem</sourcexml> specified
                                        above, create <targetxml>metaitem[@name @value]</targetxml>.
                                        Where <sourcexml>@name</sourcexml> and
                                            <sourcexml>@value</sourcexml> become
                                            <targetxml>@name</targetxml> and
                                            <targetxml>@value</targetxml>.</li>
                                </ul></li>
                            <li>Create
                                    <targetxml>classify:classitem-identifier/classify:classcode[@normval="functional-parameters"]</targetxml>.
                                The <targetxml>@normval</targetxml> value is hard coded.</li>
                        </ul></li>
                </ul><note>Create only one container
                        <targetxml>classify:classification[@classscheme="uk-functional-information"]/classify:classitem</targetxml>.
                    The container holds the items described above and may also hold mappings from
                    elsewhere in the same source file.</note></p>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo&gt;
  &lt;docinfo:lbu-meta&gt;
    &lt;docinfo:metaitem name="alternative-title-formal" value="Merger confidentiality agreement in letter form"/&gt;
    &lt;docinfo:metaitem name="alternative-title-acronym" value="NDA"/&gt;
    &lt;docinfo:metaitem name="alternative-title-popular" value="Non-disclosure clause for a shareholders’ agreement"/&gt;
    &lt;docinfo:metaitem name="lbu-sourcename" value="LexisPSL Commercial Precedents"/&gt;
  &lt;/docinfo:lbu-meta&gt;
&lt;/docinfo&gt;

&lt;!-- The last item, @name="lbu-sourcename", is an example of an item not included in these special rules and so not present in target --&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:metadata&gt;
  &lt;doc:docinfo doc-content-country="GB"&gt;
    &lt;dc:metadata&gt;
        ...... 
    &lt;/dc:metadata&gt;
    &lt;classify:classification classscheme="uk-functional-information"&gt;
       &lt;classify:classitem&gt;
          &lt;meta&gt;
             &lt;metaitem name="alternative-title-formal" value="Merger confidentiality agreement in letter form"/&gt;
             &lt;metaitem name="alternative-title-acronym" value="NDA"/&gt;
             &lt;metaitem name="alternative-title-popular" value="Non-disclosure clause for a shareholders’ agreement"/&gt;
          &lt;/meta&gt;
          &lt;classify:classitem-identifier&gt;
             &lt;classify:classcode normval="functional-parameters"/&gt;
          &lt;/classify:classitem-identifier&gt;
       &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
  &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

	</codeblock>
        </example>

        <section>
            <title>Changes</title>
            <p>2016-08-01: <ph id="change_20160801_jm">Created. New rules.</ph></p>
        </section>

    </body>
	</dita:topic>

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
    <xsl:template match="docinfo:lbu-meta[$streamID='UK14']/docinfo:metaitem[@name=('alternative-title-formal','alternative-title-acronym','alternative-title-popular')]
        ">
        <metaitem xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:attribute name="name" select="@name"/>
            <xsl:attribute name="value" select="@value"/>
        </metaitem>
    </xsl:template>
    

</xsl:stylesheet>