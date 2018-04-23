<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:lnmeta="http://www.lexisnexis.com/xmlschemas/content/shared/lexisnexis-metadata/1/"    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
xmlns:source_dict="http://www.lexis-nexis.com/glp/dict"
xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="AU21_LegalTopicSum-Introduction">
    <title>Introduction <lnpid>id-AU21-22412</lnpid></title>
  
    <shortdesc>This document describes the conversion of AU21 Legal Topic Summaries content to the
        LexisAdvance Dictionary 2.5 PROD schema.</shortdesc>
    <prolog>
        <metadata>
            <prodinfo>
                <prodname>Legal Topic Summaries(AU/NZ)</prodname>
                <vrmlist>
                    <vrm version=""/>
                </vrmlist>
            </prodinfo>
        </metadata>
    </prolog>
    <body>

        <section>
            <title>Root Element</title>
            <p>
                <sourcexml>DICTIONARYDOC</sourcexml> becomes <targetxml>dict:dictionary</targetxml>. </p>
            <p><targetxml>dict:head</targetxml>, <targetxml>dict:body</targetxml>, and
                    <targetxml>doc:metadata</targetxml> are created as required children of
                    <targetxml>dict:dictionary</targetxml>.</p>
        </section>


        <section>
            <title>Notes</title>
            <p>The following information is meant to help the user understand the conventions used
                in this document.</p>
            <p>Source elements and attributes are highlighted like this: <sourcexml>XML
                    SOURCE</sourcexml></p>
            <p>Target elements and attributes are highlighted like this: <targetxml>XML
                    TARGET</targetxml></p>
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
        <section>
            <title>Changes</title>
            <p>2013-04-03: <ph id="change_20130403_wl">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	

	<xsl:template match="DICTIONARYDOC">
		<!--  Original Target XPath:  dict:dictionary   -->
		<dict:dictionary>
		    <xsl:call-template name="generateNSGlobalBindings"/>
		    <xsl:attribute name="xml:lang" select="concat(docinfo/docinfo:doc-lang/@lang, '-', docinfo/docinfo:doc-country/@iso-cc)"/>
			<dict:head>
			</dict:head>
		    <dict:body>
		        <xsl:apply-templates select="source_dict:body"/>
		    </dict:body>
		    <doc:metadata>
		        <xsl:apply-templates select="docinfo"/>
		    </doc:metadata>
		</dict:dictionary>
	</xsl:template>
</xsl:stylesheet>