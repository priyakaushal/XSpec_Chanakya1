<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci"
    xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr"
    xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0"
    exclude-result-prefixes="dita ci case source_cttr xs">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_inlineobject-Chof-ci.conent_remotelink-LxAdv-lnci.content_ref.crossreference">
        <title><sourcexml>ci:content/remotelink/inlineobject</sourcexml> to <targetxml>lnci:content/ref:crossreference</targetxml>
            <lnpid>id-CCCC-10357</lnpid></title>
        <body>
            <section>
                <note>This topic is used in numerous conversion instructions for several LBUs. It is a shared topic rather than duplicated to ensure consistency and accuracy. The xml snippets
                    contained in this topic reflect markup needed for the Apollo image handling application. The UK is the first LBU to move from Apollo to the Blobstore application for image
                    handling. Therefore, if this is a UK conversion instruction document, please refer to the following topics for correct image handling markup.<ul>
                        <li><sourcexml>lnlink[@service="ATTACHMENT"]</sourcexml> to <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images (id-CCCC-10542)</li>
                        <li><sourcexml>inlineobject</sourcexml> to <targetxml>ref:inlineobject</targetxml> for BLOBSTORE images (id-CCCC-10540)</li>
                        <li><sourcexml>link[@filename]</sourcexml> to <targetxml>ref:lnlink[@service="ATTACHMENT"]</targetxml> for BLOBSTORE images (id-CCCC-10541)</li>
                    </ul></note>
                <p><sourcexml>ci:content/remotelink/inlineobject</sourcexml> becomes <targetxml>lnci:content/ref:crossreference</targetxml>. The attributes and children of
                        <targetxml>ref:crossreference</targetxml> are populated as follows: </p>
                <ul>
                    <li>
                        <targetxml>@crossreferencetype="citatorAlert"</targetxml>
                    </li>
                    <li>
                        <targetxml>@referencedresourcetype="citator"</targetxml>
                    </li>
                </ul>
                <p>If <sourcexml>inlineobject/@alttext="Citation information available - Click for CaseBase entry"</sourcexml>:</p>
                <ul>
                    <li>
                        <targetxml>@referencedresourcesentiment="none"</targetxml>
                    </li>
                    <li><targetxml>ref:content</targetxml> is populated with "Citation information available"</li>
                </ul>
                <p>If <sourcexml>inlineobject/@alttext="Citation information only - Click for CaseBase entry"</sourcexml>:</p>
                <ul>
                    <li>
                        <targetxml>@referencedresourcesentiment="none"</targetxml>
                    </li>
                    <li><targetxml>ref:content</targetxml> is populated with "Citation information only"</li>
                </ul>
                <p>If <sourcexml>inlineobject/@alttext="Positive treatment indicated - Click for CaseBase entry"</sourcexml>:</p>
                <ul>
                    <li>
                        <targetxml>@referencedresourcesentiment="positive"</targetxml>
                    </li>
                    <li><targetxml>ref:content</targetxml> is populated with "Positive treatment indicated"</li>
                </ul>
                <p>If <sourcexml>inlineobject/@alttext="Neutral treatment indicated - Click for CaseBase entry"</sourcexml>:</p>
                <ul>
                    <li>
                        <targetxml>@referencedresourcesentiment="neutral"</targetxml>
                    </li>
                    <li><targetxml>ref:content</targetxml> is populated with "Neutral treatment indicated"</li>
                </ul>
                <p>If <sourcexml>inlineobject/@alttext="Negative treatment indicated - Click for CaseBase entry"</sourcexml>:</p>
                <ul>
                    <li>
                        <targetxml>@referencedresourcesentiment="negative"</targetxml>
                    </li>
                    <li><targetxml>ref:content</targetxml> is populated with "Negative treatment indicated"</li>
                </ul>
                <p>If <sourcexml>inlineobject/@alttext="Cautionary treatment indicated - Click for CaseBase entry"</sourcexml>:</p>
                <ul>
                    <li>
                        <targetxml>@referencedresourcesentiment="cautionary"</targetxml>
                    </li>
                    <li><targetxml>ref:content</targetxml> is populated with "Cautionary treatment indicated"</li>
                </ul>
                <p>If <sourcexml>inlineobject/@alttext="Click for CaseBase entry"</sourcexml>:</p>
                <ul>
                    <li><targetxml>@referencedresourcesentiment</targetxml> will not be used</li>
                    <li><targetxml>ref:content</targetxml> is populated with "Click for CaseBase entry"</li>
                </ul>
                <note>Refer to the general markup instructions for specific <sourcexml>remotelink</sourcexml> mapping information.</note>
            </section>

            <example>
                <title>Source XML showing <sourcexml>inlineobject</sourcexml> occurring in <sourcexml>ci:content/remotelink</sourcexml></title>
                <codeblock> &lt;ci:cite searchtype="CASE-REF"&gt; &lt;ci:case&gt; ... &lt;/ci:case&gt; &lt;ci:content&gt; ... &lt;remotelink dpsi="0018" refpt="34408" remotekey1="DOC-ID"
                    service="DOC-ID"&gt; &lt;inlineobject alttext="Cautionary treatment indicated - Click for CaseBase entry" attachment="web-server" filename="2.gif" type="image"/&gt;
                    &lt;/remotelink&gt; &lt;/ci:content&gt; &lt;/ci:cite&gt; </codeblock>
                <title>Target XML</title>
                <codeblock> &lt;lnci:cite&gt; &lt;lnci:case&gt; ... &lt;/lnci:case&gt; &lt;lnci:content&gt; ... &lt;ref:crossreference crossreferencetype="citatorAlert"
                    referencedresourcesentiment="cautionary" referencedresourcetype="citator"&gt; &lt;ref:content&gt;Cautionary treatment indicated&lt;/ref:content&gt; &lt;ref:locator&gt;
                    &lt;ref:locator-key&gt; &lt;ref:key-name name="DOC-ID"/&gt; &lt;ref:key-value value="0018-34408"/&gt; &lt;/ref:locator-key&gt; &lt;/ref:locator&gt; &lt;/ref:crossreference&gt;
                    &lt;/lnci:content&gt; &lt;/lnci:cite&gt; </codeblock>
            </example>
            <section>
                <title>Changes :</title>
                <p>2016-08-05: <ph id="change_20160805_AS">Added Note about xml snippets that illustrate image handling. Note summarizes move from Apollo to Blobstore application. UK is first LBU to
                        move to Blobstore. </ph></p>
                <p>2013-03-21: <ph id="change_20130321_RJ"> Created.</ph></p>
            </section>

        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_inlineobject-Chof-ci.conent_remotelink-LxAdv-lnci.content_ref.crossreference.dita  -->


    <!-- this duplicates somewhat default behavior, but without stream tests and 
        excludes a named template that is present only in certain citator streams -->



    <xsl:template
        match="ci:content/remotelink[inlineobject][preceding-sibling::citefragment[$streamID = ('AU08', 'AU04', 'AU19-CA', 'AU17' , 'AU07', 'AU09')] or 
        parent::ci:content or parent::source_cttr:annot or ancestor::citefragment[ancestor::case:references] or (ancestor::ci:content and $streamID=('AU04', 'AU19-CA'))]"
        priority="30">
        <xsl:element name="ref:crossreference">
            <xsl:attribute name="crossreferencetype">
                <xsl:text>citatorAlert</xsl:text>
            </xsl:attribute>
            <xsl:if test="not(inlineobject/@alttext='Click for CaseBase entry')">
                <!-- paul: CI says to suppress attribute if value is equal to this -->
            <xsl:attribute name="referencedresourcesentiment">
                <xsl:choose>
                    <xsl:when test="ancestor::COMMENTARYDOC or ancestor::CITATORDOC or ancestor::CASEDOC[@type='summary']">
                        <xsl:choose>
                            <xsl:when test="inlineobject/@alttext = 'Citation information available - Click for CaseBase entry'">
                                <xsl:text>none</xsl:text>
                            </xsl:when>
                            <xsl:when test="inlineobject/@alttext = 'Citation information only - Click for CaseBase entry'">
                                <xsl:text>none</xsl:text>
                            </xsl:when>
                            <xsl:when test="inlineobject/@alttext = 'Positive treatment indicated - Click for CaseBase entry'">
                                <xsl:text>positive</xsl:text>
                            </xsl:when>
                            <xsl:when test="inlineobject/@alttext = 'Neutral treatment indicated - Click for CaseBase entry'">
                                <xsl:text>neutral</xsl:text>
                            </xsl:when>
                            <xsl:when test="inlineobject/@alttext = 'Negative treatment indicated - Click for CaseBase entry'">
                                <xsl:text>negative</xsl:text>
                            </xsl:when>
                            <xsl:when test="inlineobject/@alttext = 'Cautionary treatment indicated - Click for CaseBase entry'">
                                <xsl:text>cautionary</xsl:text>
                            </xsl:when>
                            <xsl:when test="inlineobject/@alttext = 'Click for CaseBase entry'">
                                <xsl:text>none</xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>none</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="referencedresourcetype">
                <xsl:text>citator</xsl:text>
            </xsl:attribute>
            <xsl:element name="ref:content">
                <xsl:value-of
                    select="
                        if (contains(inlineobject/@alttext, ' - Click for CaseBase entry')) then
                            substring-before(inlineobject/@alttext, ' - Click for CaseBase entry')
                        else
                            inlineobject/@alttext"/>
                <xsl:apply-templates select="node() except (inlineobject)"/>
            </xsl:element>
            <ref:locator>
                <xsl:for-each select="
                        if (@refpt) then
                            @refpt
                        else
                            @remotekey2">
                    <!-- MDS - 2017-05-12 - Created choose statement to deal with empty @refpt in source resulting in empty @anchoridref in target. -->
                    <xsl:choose>
                        <xsl:when test="normalize-space(.) = ''"/>
                        <xsl:otherwise>
                            <xsl:attribute name="anchoridref">
                                <xsl:call-template name="normalizeIdString"/>
                            </xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <ref:locator-key>
                    <ref:key-name name="DOC-ID"/>
                    <ref:key-value>
                        <xsl:attribute name="value">
                            <xsl:choose>
                                <xsl:when test="@dpsi">
                                    <xsl:value-of select="@dpsi"/>
                                </xsl:when>
                                <!-- JL I don't think we can assume that @dpsi is always equal to the dpsi for the 
									document's product, so removing other ways to find the dpsi for the product -->
                                <!--<xsl:when test="//docinfo:dpsi/@id-string">
									<xsl:value-of select="//docinfo:dpsi/@id-string"/>
								</xsl:when>-->
                                <xsl:otherwise>
                                    <!--<xsl:value-of select="$dpsi"/>-->
                                    <xsl:call-template name="outputErrorMessage">
                                        <xsl:with-param name="messageText" as="xs:string" select="'remotelink/@dpsi is missing and link cannot be correctly completed'"/>
                                        <xsl:with-param name="errorType" as="xs:string" select="'ICCE'"/>
                                        <xsl:with-param name="errorCode" as="xs:string*" select="'TBD'"/>
                                        <xsl:with-param name="context" as="xs:string">
                                            <xsl:value-of select="base-uri()"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:text>-</xsl:text>

                            <xsl:choose>
                                <xsl:when test="@remotekey1 = 'DOC-ID' or @remotekey1 = 'DOCID'">

                                    <xsl:value-of
                                        select="
                                            if (@remotekey2) then
                                                @remotekey2
                                            else
                                                @refpt"/>

                                </xsl:when>
                                <xsl:when test="@remotekey1 = 'REFPTID' or @remotekey1 = 'REFPT'">

                                    <xsl:choose>
                                        <xsl:when test="@docidref">
                                            <xsl:value-of select="@docidref"/>
                                        </xsl:when>
                                        <xsl:when test="@status=('unval','invalid')"><!-- no @docidref however status is unvalidated or invalid so don't throw error  --></xsl:when>
                                        <xsl:otherwise>
                                            <!-- This should be an error message -->
                                            <xsl:text>XXXX</xsl:text>
                                            <xsl:call-template name="outputErrorMessage">
                                                <xsl:with-param name="messageText" as="xs:string" select="'remotelink/@docidref is missing and link cannot be correctly completed'"/>
                                                <xsl:with-param name="errorType" as="xs:string" select="'ICCE'"/>
                                                <xsl:with-param name="errorCode" as="xs:string*" select="'403'"/>
                                                <xsl:with-param name="context" as="xs:string">
                                                    <xsl:value-of select="base-uri()"/>
                                                </xsl:with-param>
                                            </xsl:call-template>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:attribute>
                    </ref:key-value>
                </ref:locator-key>
            </ref:locator>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
