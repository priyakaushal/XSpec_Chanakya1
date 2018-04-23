<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" xmlns:ci="http://www.lexis-nexis.com/ci" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA10_Introduction">
    <title>Introduction <lnpid>id-CA10-14613</lnpid></title>
    <body>
        <section><p>This document describes the conversion of CA10 content to the LexisAdvance seclaw  8.23 PROD
                schema.</p>
            <title>Root Element</title>
            <p><sourcexml>COMMENTARYDOC</sourcexml> becomes <targetxml>seclaw:seclaw</targetxml>
                which has a required attribute <targetxml>@seclawtype</targetxml>, the value of
                attribute <targetxml>@seclawtype</targetxml> depends on the value of
                    <sourcexml>/level/bodytext/@searchtype</sourcexml> attribute in input sample.
                Below are the rules to assign the value of attribute
                    <targetxml>@seclawtype</targetxml>.</p>
            <ul>
                <li>if <sourcexml>/level/bodytext</sourcexml> contains
                        <sourcexml>@searchtype="COMMENTARY"</sourcexml>, then the value of
                        <targetxml>/seclaw:seclaw/@seclawtype</targetxml> will become
                        <targetxml>/seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</li>
                <li>if <sourcexml>/level/bodytext</sourcexml> contains
                        <sourcexml>@searchtype="FORM"</sourcexml>, then the value of
                        <targetxml>/seclaw:seclaw/@seclawtype</targetxml> will become
                        <targetxml>/seclaw:seclaw[@seclawtype="form"]</targetxml>.</li>
                <li>If above listed rule are not true then create
                        <targetxml>seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</li>
            </ul>
            <p><targetxml>seclaw:head</targetxml>, <targetxml>seclaw:body</targetxml>, and
                    <targetxml>doc:metadata</targetxml> are created as required children of
                    <targetxml>seclaw:seclaw</targetxml>
            </p>
            <title>General Notes and Conventions</title>
            <ul>
                <li>The terms <b>NewLexis</b> and <b>LexisAdvance</b> are used interchangeably.</li>
                <li><sourcexml>@searchtype</sourcexml> attribute will be dropped from conversion in
                    NewLexis except for JCITE markup.</li>
                <li>Source elements and attributes are highlighted like this:
                        <sourcexml>sourcexml</sourcexml></li>
                <li>Target elements and attributes are highlighted like this:
                        <targetxml>targetxml</targetxml></li>
                <li>Verify the following target attributes values:<table frame="all" id="table_ris_iyh_uj">
                        <tgroup cols="3">
                            <thead>
                                <row>
                                    <entry>source</entry>
                                    <entry>target</entry>
                                    <entry>rule</entry>
                                </row>
                            </thead>
                            <tbody>
                                <row>
                                    <entry><sourcexml>@month</sourcexml></entry>
                                    <entry><targetxml>@month</targetxml></entry>
                                    <entry><ul>
                                            <li>2 digit values between 01-12</li>
                                            <li>if source value is outside this range, do not output
                                                  <targetxml>@month</targetxml></li>
                                        </ul></entry>
                                </row>
                                <row>
                                    <entry><sourcexml>@day</sourcexml></entry>
                                    <entry><targetxml>@day</targetxml></entry>
                                    <entry><ul>
                                            <li>2 digit values between 01-31</li>
                                            <li>if source value is outside this range, do not output
                                                  <targetxml>@day</targetxml></li>
                                        </ul></entry>
                                </row>
                                <row>
                                    <entry><sourcexml>@year</sourcexml></entry>
                                    <entry><targetxml>@year</targetxml></entry>
                                    <entry><ul>
                                            <li>4 digit numerical values</li>
                                            <li>if source value is not 4 digits, do not output
                                                  <targetxml>@year</targetxml></li>
                                        </ul></entry>
                                </row>
                            </tbody>
                        </tgroup>
                    </table></li>
            </ul>
        </section>
        <section>
            <title>Changes</title>
            <p>2017-05-15: <ph id="change_20170515_RS">Updated schema version to 8.23 PROD.</ph></p>
            <p>2017-03-03: <ph id="change_20170426_SS">Updated schema version to 8.22 PROD.</ph></p>
            <p>2017-03-03: <ph id="change_20170307_SS">Updated schema version to 8.21 PROD.</ph></p>
            <p>2017-03-03: <ph id="change_20170303_SS">Updated schema version to 8.20 PROD.</ph></p>
            <p>2016-04-28: <ph id="change_20160428_PS">Added instruction for generation of attaribute 
                    <targetxml>seclaw:seclaw[@seclawtype="commentary"]</targetxml>.</ph></p>
            <p>2016-04-01: <ph id="change_20160401_mcj_introduction_1">Updated schema version to
          8.11 PROD.</ph></p>
            <p>2015-03-20: <ph id="change_20150320_jm">Updated schema version to 8.3 PROD.</ph></p>
            <p>2014-10-07: <ph id="change_20141007_xx">Updated schema version to 8.1 PROD.</ph></p>
            <p>2014-08-13: <ph id="change_20140813_jm">Updated schema version to 7.13 PROD.</ph></p>
            <p>2014-06-06: <ph id="change_20140606_jm">Updated schema version to 7.11 PROD.</ph></p>
            <p>2014-06-05: <ph id="change_20140605_jm">Note that the following module has been added
                    to the emphasis (emph) rules in the General Markup section:
                        <sourcexml>heading/title/emph/@typestyle="bf"</sourcexml> to
                        <targetxml>heading/title</targetxml> (id-CCCC-10495). This is a common
                    module for all Canada streams.</ph></p>
            <p>2014-06-04: <ph id="change_20140604_jm">Note there is a minor administrative change
                    for the <sourcexml>publication</sourcexml> module in the General Markup section.
                    No change to rule. Original module was written for CA10 and is now replaced with
                    common all-stream version. Module name now shows the common identifier
                    id-CCCC-10438. No other impact.</ph></p>
            <p>2014-06-02: <ph id="change_20140602_jm">Updated schema version to 7.10 PROD.</ph></p>
            <p>2013-12-30: <ph id="change_20131230_jm">Updated schema version to 7.8 PROD.</ph></p>
            <p>2013-08-06: <ph id="change_20130806_raj">Added rules for setting the value of
                        <targetxml>seclaw:seclaw[@seclawtype]</targetxml>.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA10-Treatise_Textbook_Forms\CA10_Introduction.dita  -->
	<!--@WIP: Writing this module for CA10 --> 

	<xsl:template match="COMMENTARYDOC">

		<!--  Original Target XPath:  seclaw:seclaw   -->
		<seclaw:seclaw>
		    <xsl:call-template name="generateNSGlobalBindings"/>
		     <xsl:attribute name="xsi:schemaLocation" select="$outputSchemaLoc"/>
		    <xsl:apply-templates select="@*"/>
		    <xsl:call-template name="xml_lang"/>
		    <xsl:attribute name="seclawtype">
		        <xsl:choose>
		            <xsl:when test="comm:body/level/bodytext[@searchtype='FORM']">
		                <xsl:text>form</xsl:text>
		            </xsl:when>
		            <xsl:otherwise>
		                <xsl:text>commentary</xsl:text>
		            </xsl:otherwise>
		        </xsl:choose>
		    </xsl:attribute>
		    <seclaw:head>
		        <xsl:apply-templates select="//ci:cite[@type='cite4thisdoc'][1]"/>
		    </seclaw:head>
		    
		    <xsl:apply-templates select="comm:body"/>
		    
		    <doc:metadata>
		        <xsl:apply-templates select="/COMMENTARYDOC/comm:info/publication"/>
		        <xsl:apply-templates select="docinfo"/>
		    </doc:metadata>
		</seclaw:seclaw>

	</xsl:template>



</xsl:stylesheet>