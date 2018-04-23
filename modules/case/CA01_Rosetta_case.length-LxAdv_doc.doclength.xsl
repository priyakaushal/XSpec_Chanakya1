<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita case">
<!--<xsl:output indent="no"></xsl:output>-->
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.length-LxAdv_doc.doclength">
    <title>case:length <lnpid>id-CA01-12226</lnpid></title>
    <body>
        <section conref="../../common_caselaw/conref_content/Rosetta_case.length-LxAdv_doc.doclength.dita#Rosetta_case.length-LxAdv_doc.doclength/mapping"/>
        <example>
            <codeblock>
&lt;case:length&gt;(8 pages)&lt;/case:length&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="CA"&gt;
        &lt;dc:metadata&gt;
            ...
        &lt;/dc:metadata&gt;
        &lt;doc:doclength num="8" unit="pages" source="conversion"/&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
       </codeblock>
        </example>
        <p>When we have 2 types of value in <sourcexml>case:length</sourcexml> element then
            conversion should create seperate <targetxml>doc:length</targetxml> element for each
            value.</p>
        <example>
            <codeblock>      
&lt;case:length&gt;(43 pages) (127 paras.)&lt;/case:length&gt;
        </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;doc:metadata&gt;
    &lt;doc:docinfo doc-content-country="CA"&gt;
        &lt;dc:metadata&gt;
            ...
        &lt;/dc:metadata&gt;
        &lt;doc:doclength num="43" unit="pages" source="conversion"/&gt;
        &lt;doc:doclength num="127" unit="paras" source="conversion"/&gt;
    &lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;
        </codeblock>
        </example>

    <note><p>Exception for Canada: Conversion should add period (.) when <targetxml>@unit</targetxml>
                attribute is having values (paras, para, paragr, pp and p), for more clarification
                refer below example.</p></note>
        
<pre>
&lt;case:length&gt;(1 para.)&lt;/case:length&gt;

<b>Becomes</b>

&lt;doc:doclength num="1" unit="para." source="conversion"/&gt;
</pre>
        
        <pre>
&lt;case:length&gt;(2 pages)&lt;/case:length&gt;

<b>Becomes</b>

&lt;doc:doclength num="2" unit="pages" source="conversion"/&gt;
        </pre>
        
        <pre>
&lt;case:length&gt;(158 pp.)&lt;/case:length&gt;

<b>Becomes</b>

&lt;doc:doclength num="158" unit="pp." source="conversion"/&gt;
        </pre>
        
        <pre>
&lt;case:length&gt;(8 pages) (36 paras.)&lt;/case:length&gt;

<b>Becomes</b>

&lt;doc:doclength num="8" unit="pages" source="conversion"/&gt;
&lt;doc:doclength num="36" unit="paras." source="conversion"/&gt;
</pre>

        <section>
            <title>Changes</title>
            <p>2014-04-21: <ph id="change_20140421_PS">Added list of abbreviated values for <targetxml>@unit</targetxml> attribute, R4.5 Content Issue
                #:1402. This change immediately applies to CA01-Cases.</ph></p>
            <p>2014-04-18: <ph id="change_20140418_PS">Added note and example for Canada content to
                add period (.) in <targetxml>@unit</targetxml> attribute, R4.5 Content Issue
                #:1402. This change immediately applies to CA01-Cases.</ph></p>
            <p>2013-12-23: <ph id="change_20131223_PS">Added new scenario and example when 2 values are occuring in
                    one <sourcexml>case:length</sourcexml> element. Webteam # 248246. This change
                    immediately applies to CA01-Cases.</ph></p>
            </section>

    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.length-LxAdv_doc.doclength.dita  -->
	 
    <!-- Vikas Rohilla: Template to match the case:length and create the doc:doclength with the attributes @num, @unit, @source  -->
    <xsl:template match="case:length">	   
        <xsl:analyze-string select="normalize-space(text()[1])" regex="([^)]+)">
            <xsl:matching-substring>
                <doc:doclength>
                    <xsl:attribute name="num">
                        <xsl:analyze-string select="." regex="([0-9]+)\s+([a-z]+)">
                            <xsl:matching-substring>
                                <xsl:value-of select="regex-group(1)"/>
                            </xsl:matching-substring>
                        </xsl:analyze-string>
                    </xsl:attribute>
                    <xsl:attribute name="unit">
                        <xsl:variable name="var_unit">
                            <xsl:analyze-string select="." regex="([0-9]+)\s+([a-z]+)">
                                <xsl:matching-substring>
                                    <xsl:value-of select="regex-group(2)"/>
                                </xsl:matching-substring>
                            </xsl:analyze-string>
                        </xsl:variable>
                        <xsl:choose>
                            <xsl:when test="$var_unit='para' or  $var_unit='pp' or $var_unit='paras' or $var_unit='paragr' or $var_unit='p'">
                                <xsl:value-of select="concat($var_unit,'.')"/>        
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$var_unit"/>
                            </xsl:otherwise>
                        </xsl:choose>	                    
                    </xsl:attribute>
                    <xsl:attribute name="source">
                        <xsl:text>conversion</xsl:text>
                    </xsl:attribute>
                </doc:doclength>
            </xsl:matching-substring>
        </xsl:analyze-string>
    </xsl:template>

</xsl:stylesheet>