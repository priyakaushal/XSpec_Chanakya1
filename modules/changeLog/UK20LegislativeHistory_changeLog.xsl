<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Change-Log">
        <title>Change Log</title>
        <body>
            <section>
                <title>Seclaw 8.19 PROD</title>
                <p>2017-02-01</p>
                <ul>
                    <li><xref href="../../../Rosetta/DITA-UK/UK20_Legislative_History/Introduction.dita">2017-01-31 - Introduction id-UK20-35808: Updated schema version to 8.19_PROD.</xref></li>
                    <li><xref href="../../../Rosetta/DITA-UK/UK20_Legislative_History/levelinfo.dita">2017-01-31 - levelinfo id-UK20-35812: Within
                            <sourcexml>classification</sourcexml> instructions, rule for
                            <sourcexml>classname</sourcexml> is expanded. Content of
                            <sourcexml>classname</sourcexml> continues to map as content of
                            <targetxml>classify:classname</targetxml> and in addition now maps as
                        value of <targetxml>@normval</targetxml>. VSTS 224984.</xref></li>
                </ul>
            </section>
            <section>
                <title>Seclaw 8.18 PROD</title>
                <p>2016-12-13</p>
                <ul>
                    <li><xref href="../../../Rosetta/DITA-UK/UK20_Legislative_History/Introduction.dita">2016-12-13 - Introduction id-UK20-35808: Updated schema version to
                        8.18_PROD.</xref></li>
                    <li><xref href="../../../Rosetta/DITA-UK/UK20_Legislative_History/levelinfo.dita">2016-12-13 - levelinfo id-UK20-35812: Added special rule for
                            <sourcexml>ci:cite[@normcite]</sourcexml>. Create
                            <targetxml>lnci:cite/lnci:content</targetxml> for target, suppressing
                            <sourcexml>@normcite</sourcexml> attribute but mapping the value to
                        populate <targetxml>lnci:content</targetxml>.</xref></li>
                    <li><xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-10-17 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Updated
                        the instruction for handling the target attribute
                            <targetxml>@normdate</targetxml>. [Webstar#6676189]</xref></li>
                    <li><xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-14 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Note
                        added for handling the input markup
                            '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</xref></li>
                    <li><xref href="../../../Rosetta/common_newest/Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita">2016-09-02 - docinfo:versioninfo to doc:versioninfo id-CCCC-10307: Special
                        Rule for added <targetxml>@normdate</targetxml> attribute inside the
                            <targetxml>doc:startdate</targetxml> and
                            <targetxml>doc:enddate</targetxml>.</xref></li>
                    <li><xref href="../../../Rosetta/common_newest/Rosetta_emph-LxAdv-emph.dita">2016-04-01 - emph to emph id-CCCC-10316: Added statement to clarify that
                        children of emph should be processed.</xref></li>
                    <li><xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-03-23 - ci.cite to lnci.cite id-CCCC-10268: Updated main instructions
                        to clarify that descendants of ci:cite, and not just children, are to be
                        processed.</xref></li>
                </ul>
            </section>
            <section>
                <title>Seclaw 8.9 PROD</title>
                <p>2016-02-22 
                    <ul>
                        <li><xref href="../../../Rosetta/DITA-UK/UK20_Legislative_History/levelinfo.dita">2016-02-22 - levelinfo id-UK20-35812: Created. Applicable on UK20,
                            RFA#, 2687, 2699.</xref></li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Seclaw 8.7 PROD</title>
                <p>2016-25-01 
                    <ul>
                        <li><xref href="../../../Rosetta/common_newest/Rosetta_ci.cite-LxAdv-lnci.cite.dita">2016-25-01 - ci:cite to lnci:cite id-CCCC-10268: Added
                                <sourcexml>ci:cite</sourcexml> module, Applicable on UK20, RFA#
                            2685.</xref></li>
                    </ul>
                </p>
            </section>
            <section>
                <title>Seclaw 8.4_PROD</title>
                <p>2015-05-10 
                    <ul>
                        <li><xref href="../../../Rosetta/DITA-UK/UK20_Legislative_History/Introduction.dita">2015-05-13 - Introduction id-UK20-35808: Change the Instruction for
                            picking the value for seclawtype from source element . #RFA 2318
                            Applicable to UK20. </xref></li>
                    </ul>
                </p>
            </section>
            <section>
                <title>2015-05-06</title>
                <p>Released the CI after the CI Review .</p>
            </section>
        </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK20_Legislative_History\UK20LegislativeHistory_changeLog.dita  -->

</xsl:stylesheet>