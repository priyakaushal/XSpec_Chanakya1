<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:decision="http://www.lexisnexis.com/xmlschemas/content/legal/decision/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.dates">
    <title>case:dates <lnpid>id-CA01-12215</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:dates</sourcexml> becomes
                    <targetxml>caseinfo:caseinfo/decision:dates</targetxml>. The children of
                    <sourcexml>case:dates</sourcexml> are mapped as follows: <ul>
                    <li><sourcexml>case:hearingdates</sourcexml> becomes
                            <targetxml>decision:dates/decision:argueddate/date-text</targetxml>. <ul>
                            <li>If there are any <sourcexml>nl</sourcexml> elements in
                                    <sourcexml>case:hearingdates</sourcexml>, then
                                    <sourcexml>nl</sourcexml> should be suppressed, but a new
                                    <targetxml>date-text</targetxml> should be started for every
                                occurrence of <sourcexml>nl</sourcexml>.
                                    <targetxml>date-text</targetxml> will only be mapped around the
                                text of the date. Conversion should suppress space after
                                    <sourcexml>nl</sourcexml> in target conversion, see below
                                example for more clarification.</li>
                        </ul></li>
                    <li><sourcexml>case:decisiondate</sourcexml> becomes
                            <targetxml>decision:dates/decision:decisiondate</targetxml>. The
                        children and attributes of <sourcexml>case:decisiondate</sourcexml> are
                        mapped as follows:<ul>
                            <li>The attribute <targetxml>decision:decisiondate/@normdate</targetxml>
                                should be populated with the values of
                                    <sourcexml>case:decisiondate/date/@year</sourcexml>,
                                    <sourcexml>case:decisiondate/date/@month</sourcexml> and
                                    <sourcexml>case:decisiondate/date/@day</sourcexml> concatenated
                                and separated by a single hyphen. The values of
                                    <sourcexml>case:decisiondate/date/@month</sourcexml> and
                                    <sourcexml>case:decisiondate/date/@day</sourcexml> should be
                                padded with zeroes so that they are 2 digits. <note>If one or more
                                    of the three date values (year, month or day) are absent, then
                                        <targetxml>decision:decisiondate/@normdate</targetxml>
                                    should <b>not</b> be populated.</note></li>
                            <li><sourcexml>case:decisiondate/date</sourcexml> becomes
                                    <targetxml>decision:decisiondate/date-text</targetxml>
                                <note>When <sourcexml>@ln.user-displayed="false"</sourcexml> is
                                    present in <sourcexml>case:decisiondate</sourcexml>, the child
                                        <sourcexml>date</sourcexml> element should be suppressed so
                                    that no content will be displayed.</note></li>
                            <li><sourcexml>case:decisiondate/date/@day</sourcexml> becomes
                                    <targetxml>decision:decisiondate/@day</targetxml>.</li>
                            <li><sourcexml>case:decisiondate/date/@month</sourcexml> becomes
                                    <targetxml>decision:decisiondate/@month</targetxml>.</li>
                            <li><sourcexml>case:decisiondate/date/@year</sourcexml> becomes
                                    <targetxml>decision:decisiondate/@year</targetxml>.</li>
                        </ul></li>
                </ul></p>
        </section>
        <example>
            <title>Mapping of <sourcexml>case:dates/case:hearingdates</sourcexml></title>
            <codeblock>

&lt;case:dates&gt;
    &lt;case:hearingdates&gt;November 24, 1981&lt;/case:hearingdates&gt;
&lt;/case:dates&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;decision:dates&gt;
    &lt;decision:argueddate&gt;
        &lt;date-text&gt;November 24, 1981&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;

           </codeblock>
        </example>
        <example>
            <title>Mapping of <sourcexml>case:dates/case:hearingdates</sourcexml> with
                    <sourcexml>nl</sourcexml></title>
            <codeblock>

&lt;case:dates&gt;
    &lt;case:hearingdates&gt;Heard: May 23, 2007.&lt;nl/&gt; Oral judgment: May 23, 2007.&lt;nl/&gt; Filed: June 25, 2007.&lt;/case:hearingdates&gt;
&lt;/case:dates&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;decision:dates&gt;
    &lt;decision:argueddate&gt;Heard: &lt;date-text&gt;May 23, 2007.&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
    &lt;decision:argueddate&gt;Oral judgment: &lt;date-text&gt;May 23, 2007.&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
    &lt;decision:argueddate&gt;Filed: &lt;date-text&gt;June 25, 2007.&lt;/date-text&gt;
    &lt;/decision:argueddate&gt;
&lt;/decision:dates&gt;
           </codeblock>
        </example>
        <example>
            <title>Mapping of <sourcexml>case:dates/case:decisiondate</sourcexml> with
                    <sourcexml>@ln.user-displayed="false"</sourcexml></title>
            <codeblock>

&lt;case:dates&gt;
    &lt;case:decisiondate ln.user-displayed="false"&gt;
        &lt;date year="1981" month="9" day="8"&gt;1981/9/8&lt;/date&gt;
    &lt;/case:decisiondate&gt;
&lt;/case:dates&gt;

           </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;decision:dates&gt;
    &lt;decision:decisiondate year="1981" month="09" day="8" normdate="1981-09-08"/&gt;
&lt;/decision:dates&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-11-24: <ph id="change_20141124_PS">Updated rule that conversion should suppress space after <sourcexml>nl</sourcexml> in target conversion for <sourcexml>decision:argueddate</sourcexml>. Applicable on CA01.</ph></p>
            <p>2014-10-23: <ph id="change_20141023_SEP">Updated example target: date-text will be created around text of the date only....<b>4B DB item # 352</b></ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.dates.dita  -->

    <!--note create the wrapper on case:date template	 -->
	 
        <xsl:template match="case:dates">
            <xsl:apply-templates/>
        </xsl:template>

    <!-- Vikas Rohilla : Template to match the case:dates-->
	<xsl:template match="case:dates/case:hearingdates">
		<xsl:element name="decision:dates">
			<xsl:element name="decision:argueddate">
			    <xsl:choose>
			        <xsl:when test="contains(.,':')">
			            <xsl:value-of select="concat(substring-before(.,':'),': ')"/>
			            <xsl:element name="date-text">
			                <xsl:value-of select="substring-after(.,': ')"/>
			            </xsl:element>			            
			        </xsl:when>
			        <xsl:otherwise>
			            <xsl:element name="date-text">
			                <xsl:value-of select="."/>
			            </xsl:element>
			        </xsl:otherwise>
			    </xsl:choose>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
<!-- Vikas Rohilla : Template to match the case:dates-->
    <xsl:template match="case:dates/case:hearingdates[child::nl]" priority="2">
        <xsl:element name="decision:dates">
<!-- Sudhanshu implemented on 5 may 2017-->		
            <!-- Awantika: Changed due to webstar  6995871, as data was getting dropped after </nl> -->
            <xsl:for-each select="text()">
                <xsl:element name="decision:argueddate">
                    <xsl:choose>
                        <xsl:when test="substring-before(normalize-space(.),':')">
                            <xsl:value-of select="concat(substring-before(normalize-space(.),':'),': ')"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="concat(substring-before(normalize-space(.),':'),' ')"/>
                        </xsl:otherwise>
                    </xsl:choose>                    
                    <xsl:choose>
                        <xsl:when test="substring-after(.,' ') and not(substring-after(.,': '))">
                            <xsl:element name="date-text">
                                <xsl:value-of select="substring-after(., ' ')"/>
                            </xsl:element>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:element name="date-text">
                                <xsl:value-of select="substring-after(.,': ')"/>
                            </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>                   
                   
                </xsl:element>
		    </xsl:for-each>   
		</xsl:element>
	</xsl:template>
    

    
	<!-- Vikas Rohilla : Template to match the case:dates/case:decisiondate[@ln.user-displayed='false'] -->
	<xsl:template match="case:dates/case:decisiondate[@ln.user-displayed='false']">
		<decision:dates>
			<decision:decisiondate>
            	<xsl:apply-templates select="child::date/@*"/>
			    <xsl:if test="child::date/@*">
			    <xsl:attribute name="normdate">
					<xsl:value-of select="concat(child::date/@year,'-',child::date/@month,'-',child::date/@day)"/>
				</xsl:attribute>
			    </xsl:if>
			</decision:decisiondate>
		</decision:dates>
	</xsl:template>
    
    <xsl:template match="date/@year">
        <xsl:attribute name="year">
            <xsl:value-of select="."/>
        </xsl:attribute>    
    </xsl:template>

    <xsl:template match="date/@month">
        <xsl:attribute name="month">
            <xsl:value-of select="."/>
        </xsl:attribute>    
    </xsl:template>

    <xsl:template match="date/@day">
        <xsl:attribute name="day">
            <xsl:value-of select="."/>
        </xsl:attribute>    
    </xsl:template>
    
</xsl:stylesheet>