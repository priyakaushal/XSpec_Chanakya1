<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo"
    xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/"
    xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
    xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
    version="2.0" exclude-result-prefixes="#all">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA05_docinfo.versioninfo">
        <title>docinfo:versioninfo <lnpid>id-CA05-13634</lnpid></title>
        <body>
            <section>
                <note>The logic for repealed, repealedshell, and annual (see section <xref
                        href="../../common_newest/Rosetta_CA05-docinfo.custom-metafield-LxAdv-legisinfo.status.dita"
                        >custom-metafield</xref>) should be applied before looking at
                        <sourcexml>docinfo:versioninfo</sourcexml> for historical or consolidated.
                    Thus if a statuscode is created for "repealed, repealedshell, and annual" then
                    one should not be created here for "historical or consolidated". A document
                    should have only one status value.</note>

                <note>The format of date should be DD Month YYYY and conversion should generate
                    English or French value as per <sourcexml>docinfo:doc-lang/@lang</sourcexml>
                    attribute value, <b>en</b> for <b>English</b> and <b>fr</b> for <b>French</b>,
                    see below table for Month conversion:</note>
                <p>
                    <table frame="all" rowsep="1" colsep="1" id="table_nlk_rz2_rs">
                        <title>Month Conversion</title>
                        <tgroup cols="3">
                            <colspec colname="c1" colnum="1" colwidth="1.0*"/>
                            <colspec colname="c2" colnum="2" colwidth="1.0*"/>
                            <colspec colname="c3" colnum="3" colwidth="1.0*"/>
                            <thead>
                                <row>
                                    <entry align="center">Source Month Format</entry>
                                    <entry align="center">Month Name - English/French</entry>
                                    <entry align="center">Expected Value - English/French</entry>
                                </row>
                            </thead>
                            <tbody>
                                <row>
                                    <entry align="center">01</entry>
                                    <entry align="center">January/janvier</entry>
                                    <entry align="center">Jan/janv.</entry>
                                </row>
                                <row>
                                    <entry align="center">02</entry>
                                    <entry align="center">February/février</entry>
                                    <entry align="center">Feb./févr.</entry>
                                </row>
                                <row>
                                    <entry align="center">03</entry>
                                    <entry align="center">March/mars</entry>
                                    <entry align="center">Mar./mars</entry>
                                </row>
                                <row>
                                    <entry align="center">04</entry>
                                    <entry align="center">April/avril</entry>
                                    <entry align="center">Apr./avril</entry>
                                </row>
                                <row>
                                    <entry align="center">05</entry>
                                    <entry align="center">May/mai</entry>
                                    <entry align="center">May/mai</entry>
                                </row>
                                <row>
                                    <entry align="center">06</entry>
                                    <entry align="center">June/juin</entry>
                                    <entry align="center">June/juin</entry>
                                </row>
                                <row>
                                    <entry align="center">07</entry>
                                    <entry align="center">July/juillet</entry>
                                    <entry align="center">July/juil.</entry>
                                </row>
                                <row>
                                    <entry align="center">08</entry>
                                    <entry align="center">August/août</entry>
                                    <entry align="center">Aug./août</entry>
                                </row>
                                <row>
                                    <entry align="center">09</entry>
                                    <entry align="center">September/septembre</entry>
                                    <entry align="center">Sept./sept.</entry>
                                </row>
                                <row>
                                    <entry align="center">10</entry>
                                    <entry align="center">October/octobre</entry>
                                    <entry align="center">Oct./oct.</entry>
                                </row>
                                <row>
                                    <entry align="center">11</entry>
                                    <entry align="center">November/novembre</entry>
                                    <entry align="center">Nov./nov.</entry>
                                </row>
                                <row>
                                    <entry align="center">12</entry>
                                    <entry align="center">December/décembre</entry>
                                    <entry align="center">Dec./déc.</entry>
                                </row>
                            </tbody>
                        </tgroup>
                    </table>
                </p>

                <p>Summary: If <sourcexml>docinfo:versioninfo/docinfo:enddate</sourcexml> exists,
                    then target <targetxml>@statuscode="historical"</targetxml>, otherwise
                        <targetxml>@statuscode="consolidated"</targetxml>. Thus documents with no
                        <sourcexml>docinfo:versioninfo</sourcexml>, or empty
                        <sourcexml>docinfo:versioninfo</sourcexml> are considered
                    "consolidated".</p>
                <p>If input document is having the
                        <sourcexml>docinfo:versioninfo/docinfo:startdate</sourcexml> but no
                        <sourcexml>docinfo:enddate</sourcexml> (or no
                        <sourcexml>docinfo:versioninfo</sourcexml>) then create
                        <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="consolidated"]</targetxml>
                    (Generate this markup under the first <targetxml>primlaw:level</targetxml>
                    inside the <targetxml>*:body</targetxml> of the target document). Refer the
                    below input and target example:</p>
                <note>
                    <p>Mapping to <targetxml>legisinfo:statustext</targetxml> is conditional
                        depending upon document language, <sourcexml>docinfo:startdate</sourcexml>,
                        and <sourcexml>docinfo:enddate</sourcexml>, see table. For example if the
                        document is in French source and contains <sourcexml>docinfo:doc-lang
                            lang="fr"</sourcexml> then conversion should generate <b>"En vigueur
                            du"</b> instead of English <b>"Effective"</b> and for English source
                        documents, conversion should generate <b>"Effective"</b>.</p>
                </note>
                <p>Conditional mapping to <targetxml>legisinfo:statustext</targetxml>: <table
                        frame="all">
                        <tgroup cols="3">
                            <tbody>
                                <row>
                                    <entry><b>Condition:</b></entry>
                                    <entry><b>English</b>
                                        <targetxml>legisinfo:statustext</targetxml>:</entry>
                                    <entry><b>French</b>
                                        <targetxml>legisinfo:statustext</targetxml>:</entry>
                                </row>
                                <row>
                                    <entry>If no <sourcexml>docinfo:startdate</sourcexml> nor
                                            <sourcexml>docinfo:enddate</sourcexml>
                                    </entry>
                                    <entry>(no <targetxml>legisinfo:statustext</targetxml>)</entry>
                                    <entry>(no <targetxml>legisinfo:statustext</targetxml>)</entry>
                                </row>
                                <row>
                                    <entry>If <sourcexml>docinfo:startdate</sourcexml> but no
                                            <sourcexml>docinfo:enddate</sourcexml>
                                    </entry>
                                    <entry>"Effective "
                                        <sourcexml>docinfo:startdate</sourcexml></entry>
                                    <entry>"En vigueur du "
                                        <sourcexml>docinfo:startdate</sourcexml></entry>
                                </row>
                                <row>
                                    <entry>If both <sourcexml>docinfo:startdate</sourcexml> and
                                            <sourcexml>docinfo:enddate</sourcexml></entry>
                                    <entry>"Effective " <sourcexml>docinfo:startdate</sourcexml> "
                                        to " <sourcexml>docinfo:enddate</sourcexml></entry>
                                    <entry>"En vigueur du " <sourcexml>docinfo:startdate</sourcexml>
                                        " au " <sourcexml>docinfo:enddate</sourcexml></entry>
                                </row>
                            </tbody>
                        </tgroup>
                    </table>
                </p>
            </section>
            <example>
                <title>Mapping of <sourcexml>docinfo:versioninfo</sourcexml> with
                        <sourcexml>docinfo:startdate</sourcexml> and no
                        <sourcexml>docinfo:enddate</sourcexml> (English)</title>
                <codeblock> &lt;docinfo:versioninfo hasotherversions="true"&gt;
                    &lt;docinfo:startdate month="04" day="10" year="2007"/&gt; &lt;!-- If document
                    is not having docinfo:enddate markup--&gt; &lt;/docinfo:versioninfo&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;primlaw:levelinfo&gt; &lt;primlawinfo:primlawinfo&gt;
                    &lt;legisinfo:legisinfo&gt; &lt;legisinfo:statusgroup&gt; &lt;legisinfo:status
                    statuscode="consolidated"&gt; &lt;legisinfo:statustext&gt;Effective 10 Apr
                    2007&lt;/legisinfo:statustext&gt; &lt;/legisinfo:status&gt;
                    &lt;/legisinfo:statusgroup&gt; &lt;/legisinfo:legisinfo&gt;
                    &lt;/primlawinfo:primlawinfo&gt; &lt;/primlaw:levelinfo&gt; </codeblock>
            </example>

            <section>
                <p>If input document is having the <sourcexml>docinfo:versioninfo</sourcexml> with
                    both child elements <sourcexml>docinfo:startdate</sourcexml> and
                        <sourcexml>docinfo:enddate</sourcexml> then it converted as
                        <targetxml>primlaw:levelinfo/primlawinfo:primlawinfo/legisinfo:legisinfo/legisinfo:statusgroup/legisinfo:status[@statuscode="historical"]</targetxml>
                    (Generate this markup under the first <targetxml>primlaw:level</targetxml>
                    inside the <targetxml>*:body</targetxml> of the target document). Refer the
                    below input and target example:</p>
            </section>
            <example>
                <title>Mapping of <sourcexml>docinfo:versioninfo</sourcexml> with both child
                    elements <sourcexml>docinfo:startdate</sourcexml> and
                        <sourcexml>docinfo:enddate</sourcexml> (English)</title>
                <codeblock> &lt;docinfo:versioninfo hasotherversions="true"&gt;
                    &lt;docinfo:startdate month="04" day="1" year="2005"/&gt; &lt;docinfo:enddate
                    month="02" day="28" year="2007"/&gt; &lt;/docinfo:versioninfo&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;primlaw:levelinfo&gt; &lt;primlawinfo:primlawinfo&gt;
                    &lt;legisinfo:legisinfo&gt; &lt;legisinfo:statusgroup&gt; &lt;legisinfo:status
                    statuscode="historical"&gt; &lt;legisinfo:statustext&gt;Effective 01 Apr 2005 to
                    28 Feb 2007&lt;/legisinfo:statustext&gt; &lt;/legisinfo:status&gt;
                    &lt;/legisinfo:statusgroup&gt; &lt;/legisinfo:legisinfo&gt;
                    &lt;/primlawinfo:primlawinfo&gt; &lt;/primlaw:levelinfo&gt; </codeblock>
            </example>

            <example>
                <title>When the document is in French source and contains
                        <sourcexml>docinfo:doc-lang lang="fr"</sourcexml> then conversion should
                    generate <b>"En vigueur du"</b> instead of English <b>"Effective"</b> and "au"
                    instead of English "to" in <targetxml>legisinfo:statustext</targetxml>.</title>
                <codeblock> &lt;docinfo:doc-lang lang="fr"/&gt; and &lt;docinfo:versioninfo
                    hasotherversions="true"&gt; &lt;docinfo:startdate year="2012" month="03"
                    day="13"/&gt; &lt;docinfo:enddate year="2012" month="12" day="14"/&gt;
                    &lt;/docinfo:versioninfo&gt; </codeblock>
                <b>becomes</b>
                <codeblock> &lt;primlaw:levelinfo&gt; &lt;primlawinfo:primlawinfo&gt;
                    &lt;legisinfo:legisinfo&gt; &lt;legisinfo:statusgroup&gt; &lt;legisinfo:status
                    statuscode="historical"&gt; &lt;legisinfo:statustext&gt;En vigueur du 13 mars
                    2012 au 14 déc. 2012&lt;/legisinfo:statustext&gt; &lt;/legisinfo:status&gt;
                    &lt;/legisinfo:statusgroup&gt; &lt;/legisinfo:legisinfo&gt;
                    &lt;/primlawinfo:primlawinfo&gt; &lt;/primlaw:levelinfo&gt; </codeblock>
            </example>

            <section>
                <title>Changes</title>
                <p>2015-07-13: <ph id="change_20150713_PS">Added note for date format and also
                        created one table for Month conversion. Webteam #: 305202, Applicable on
                        CA05-CA08.</ph></p>
                <p>2015-06-16: <ph id="change_20150616_SEP">Add to note that if a statuscode is
                        created for "repealed, repealedshell, annual" then one should not be created
                        here for "historical or consolidated". A document should have only one
                        status value. WebTeam # 302809.</ph></p>
                <p>2015-02-10: <ph id="change_20150210_SEP">Add note and cross ref to check logic on
                        custom-metafield before applying this logic on historical or consolidated.
                        Also create "consolidated" markup when no
                            <sourcexml>docinfo:versioninfo</sourcexml>. Add conditional table
                        describing <targetxml>legisinfo:statustext</targetxml> for the permutations
                        in French and English. R4.5 Item #2048.</ph></p>
                <p>2014-10-01: <ph id="change_20141001_PS">Updated note and example when source
                        documents are in french to generate <b>au</b> instead of English <b>to</b>
                        in <targetxml>legisinfo:statustext</targetxml>. Applicable on CA05.</ph></p>
                <p>2014-08-13: <ph id="change_20140813_PS">Updated text to change <b>"Effective
                            from"</b> to <b>"Effective"</b> and <b>"en vigueur du"</b> to <b>"En
                            vigueur du"</b>.</ph></p>
                <p>2014-08-11: <ph id="change_20140811_PS">Added note and example when source
                        documents are in french to generate <b>"En vigueur du"</b> instead of
                        English <b>"Effective"</b>.</ph></p>
                <p>2014-06-05: <ph id="change_20140605_PS">Create the rule and example for handling
                        of <sourcexml>docinfo:versioninfo</sourcexml> with child elements
                            <sourcexml>docinfo:startdate</sourcexml> and
                            <sourcexml>docinfo:enddate</sourcexml></ph>.</p>
            </section>
        </body>
    </dita:topic>

    <!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA05-ActsNew\docinfo.versioninfo.dita  -->
    <!--	<xsl:message>docinfo.versioninfo.xsl requires manual development!</xsl:message> -->
    
    <xsl:template match="docinfo:versioninfo[child::docinfo:startdate]" priority="22">
        <xsl:choose>
            <xsl:when test="child::docinfo:enddate">
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:statusgroup>
                                <legisinfo:status>
                                <xsl:attribute name="statuscode">
                                    <xsl:text>historical</xsl:text>
                                </xsl:attribute>
                                    <legisinfo:statustext>
                                        <xsl:choose>
                                            <xsl:when test="/LEGDOC/docinfo/docinfo:doc-lang/@lang='en'">
                                                <xsl:text>Effective </xsl:text>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:text>En vigueur du </xsl:text>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:choose>
                                            <xsl:when test="string-length(child::docinfo:startdate/@day)=1">
                                                <xsl:text>0</xsl:text>
                                                <xsl:value-of select="child::docinfo:startdate/@day"/> 
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="child::docinfo:startdate/@day"/> 
                                            </xsl:otherwise>
                                        </xsl:choose>                                     
                                        <xsl:text>-</xsl:text>
                                        <xsl:choose>
                                            <xsl:when test="string-length(child::docinfo:startdate/@month)=1">
                                                <xsl:text>0</xsl:text>
                                                <xsl:value-of select="child::docinfo:startdate/@month"/> 
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="child::docinfo:startdate/@month"/>  
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="child::docinfo:startdate/@year"/>
                                        <xsl:choose>
                                            <xsl:when test="/LEGDOC/docinfo/docinfo:doc-lang/@lang='en'">
                                                <xsl:text> to </xsl:text>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:text> au </xsl:text>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:choose>
                                            <xsl:when test="string-length(child::docinfo:enddate/@day)=1">
                                                <xsl:text>0</xsl:text>
                                                <xsl:value-of select="child::docinfo:enddate/@day"/> 
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="child::docinfo:enddate/@day"/> 
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:text>-</xsl:text>
                                        <xsl:choose>
                                            <xsl:when test="string-length(child::docinfo:enddate/@month)=1">
                                                <xsl:text>0</xsl:text>
                                                <xsl:value-of select="child::docinfo:enddate/@month"/> 
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="child::docinfo:enddate/@month"/>  
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="child::docinfo:enddate/@year"/>
                                    </legisinfo:statustext>
                                </legisinfo:status>
                            </legisinfo:statusgroup>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:when>
            <xsl:otherwise>
                <primlaw:levelinfo>
                    <primlawinfo:primlawinfo>
                        <legisinfo:legisinfo>
                            <legisinfo:statusgroup>
                                <legisinfo:status>
                                    <xsl:attribute name="statuscode">
                                        <xsl:text>consolidated</xsl:text>
                                    </xsl:attribute>
                                    <legisinfo:statustext>
                                        <xsl:choose>
                                            <xsl:when test="/LEGDOC/docinfo/docinfo:doc-lang/@lang='en'">
                                                <xsl:text>Effective </xsl:text>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:text>En vigueur du </xsl:text>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:choose>
                                            <xsl:when test="string-length(child::docinfo:startdate/@day)=1">
                                                <xsl:text>0</xsl:text>
                                                <xsl:value-of select="child::docinfo:startdate/@day"/> 
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="child::docinfo:startdate/@day"/>  
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:text>-</xsl:text>
                                        <xsl:choose>
                                            <xsl:when test="string-length(child::docinfo:startdate/@month)=1">
                                                <xsl:text>0</xsl:text>
                                                <xsl:value-of select="child::docinfo:startdate/@month"/> 
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="child::docinfo:startdate/@month"/>  
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:text>-</xsl:text>
                                        <xsl:value-of select="child::docinfo:startdate/@year"/>
                                    </legisinfo:statustext>
                                </legisinfo:status>
                            </legisinfo:statusgroup>
                        </legisinfo:legisinfo>
                    </primlawinfo:primlawinfo>
                </primlaw:levelinfo>
            </xsl:otherwise>
        </xsl:choose>
        <!--  Original Target XPath:  @statuscode="historical"   -->
    </xsl:template>
    
    <xsl:template match="docinfo:versioninfo[@hasotherversions='true']"  mode="doc_version">
        <doc:versioninfo>
            <xsl:attribute name="hasotherversions">
                <xsl:value-of select="@hasotherversions"/>
            </xsl:attribute>
            <xsl:apply-templates select="node()" mode="doc_version_child"/>
        </doc:versioninfo>
    </xsl:template>
    
    <xsl:template match="docinfo:startdate" mode="doc_version_child">
        <doc:startdate>
            <xsl:copy-of select="@*"/>
        </doc:startdate>
    </xsl:template>
    
    <xsl:template match="docinfo:enddate" mode="doc_version_child">
        <doc:enddate>
            <xsl:copy-of select="@*"/>
        </doc:enddate>
    </xsl:template>
    
    <xsl:template match="docinfo:versionbranch" mode="doc_version_child">
        <doc:versionbranch>
            <xsl:copy-of select="@*"/>
        </doc:versionbranch>
    </xsl:template>
    
    
    
    <xsl:template match="LEGDOC/docinfo/docinfo:assoc-links/docinfo:assoc-links-grp/heading">
        
    </xsl:template>
    
</xsl:stylesheet>
