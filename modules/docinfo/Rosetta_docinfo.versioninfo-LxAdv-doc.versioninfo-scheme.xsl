<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0" exclude-result-prefixes="dita docinfo xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_docinfo.versioninfo-to-LexisAdvance_doc.versioninfo-scheme">
    <title><sourcexml>docinfo:versioninfo</sourcexml> to  <targetxml>doc:versioninfo</targetxml> <lnpid>id-CCCC-10307</lnpid></title>

    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <p><sourcexml>docinfo:versioninfo/@hasotheversions</sourcexml> becomes <targetxml>doc:versioninfo/@hasotherversions</targetxml> with these children:
                <ul>
                    <li><sourcexml>docinfo:versioninfo/docinfo:startdate[@day @month @year]</sourcexml> becomes <targetxml>doc:versioninfo/doc:startdate[@day @month @year]</targetxml>.
                    </li>
                    <li><sourcexml>docinfo:versioninfo/docinfo:enddate[@day @month @year]</sourcexml> becomes <targetxml>doc:versioninfo/doc:enddate[@day @month @year]</targetxml>.
                    </li>
                    <li><sourcexml>docinfo:versioninfo/docinfo:versionbranch[@value]</sourcexml> becomes <targetxml>doc:versioninfo/doc:versionbranch[@value]</targetxml>.</li>
                </ul>
            </p>
            <note><p>Added the attribute <targetxml>@normdate</targetxml> (value must be in '<u>YYYY-MM-DD</u>')
                    inside the target <targetxml>doc:startdate</targetxml> and
                        <targetxml>doc:enddate</targetxml> elements. <ul>
                        <li>If one or more of the three date values (year, month or day) are absent,
                            then attribute <targetxml>@normdate</targetxml> should not be
                            populated.</li>
                        <li>The <targetxml>@normdate</targetxml> attribute value shoud be generated
                            from target attributes (<targetxml>@year</targetxml>,
                                <targetxml>@month</targetxml> and <targetxml>@day</targetxml>),
                            which are comes under the <targetxml>doc:startdate</targetxml> and
                                <targetxml>doc:enddate</targetxml> elements within New Lexis.</li>
                    </ul>
                </p>
</note>
            <note><p>Added the mapping of <sourcexml>@startdate-tbd</sourcexml>
                    attribute which is comes under <sourcexml>docinfo:versioninfo</sourcexml>
                    element in source then it should be mapped in target
                        <targetxml>doc:versioninfo@startdate-tbd</targetxml> (attribute value must
                    be in 'true' OR 'false', default value is 'false').</p>
            </note>
            <p> For <b>CA05 Acts&amp;Bills</b> and <b>CA08 Constitutions</b>, suppress
                    <sourcexml>docinfo:versioninfo</sourcexml> from conversion if it has the
                following variations: <ul>
                    <li>&lt;docinfo:versioninfo&gt;&lt;/docinfo:versioninfo&gt;</li>
                    <li>&lt;docinfo:versioninfo hasotherversions="false"&gt;&lt;/docinfo:versioninfo&gt;</li>
                    <li>&lt;docinfo:versioninfo hasotherversions="true"&gt;&lt;/docinfo:versioninfo&gt;</li>
                </ul> The above variations should be considered as "empty" and needs to be
                suppressed from conversion. </p>
            <p>When transforming the attribute values, enforce these constraints:
                <ul>
                    <li>The <targetxml>@day</targetxml> value must be two digit number, i.e. from
                        '01' to '31'.</li>
                    <li>The <targetxml>@month</targetxml> value must be transformed to a two digit number from '01' to '12', i.e. 'January' = '01' and 'December' = '12'.</li>
                    <li>The <targetxml>@year</targetxml> value must be a four digit number, i.e. '2011'.</li>
                </ul>
            </p>
            
            <note><b>Exception for Canada</b>: Conversion should generate <targetxml>@day</targetxml> attribute
                    value in sequential digit. No need to add leading zero (0) to make the value in
                    two digits.</note>
                
        </section>
        
        <example>
            <title>Source XML based on Canada stream: </title>
            <codeblock>

&lt;docinfo:versioninfo hasotherversions="true"&gt;
    &lt;docinfo:startdate day="01" month="01" year="2003"/&gt;
    &lt;docinfo:enddate day="30" month="06" year="2003"/&gt;
&lt;/docinfo:versioninfo&gt;
</codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:versioninfo hasotherversions="true"&gt;
    &lt;doc:startdate day="1" month="01" year="2003"/&gt;
    &lt;doc:enddate day="30" month="06" year="2003"/&gt;
&lt;/doc:versioninfo&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;docinfo:versioninfo hasotherversions="true"&gt;
     &lt;docinfo:startdate year="2007" month="06" day="21"/&gt;
     &lt;docinfo:versionbranch value="1120669"/&gt;
&lt;/docinfo:versioninfo&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;doc:versioninfo hasotherversions="true"&gt;
    &lt;doc:startdate month="06" day="21" year="2007"/&gt;
    &lt;doc:versionbranch value="1120669"/&gt;
&lt;/doc:versioninfo&gt;

	</codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2016-10-17: <ph id="change_20161017_SS">Updated the instruction for handling the
                    target attribute <targetxml>@normdate</targetxml>.
                [Webstar<b>#6676189</b>]</ph></p>
            <p>2016-09-14: <ph id="change_20160914_SS">Note added for handling the input markup '<targetxml>docinfo:versioninfo@startdate-tbd</targetxml>'.</ph></p>
            <p>2016-09-02: <ph id="change_20160902_SS">Special Rule for added
                        <targetxml>@normdate</targetxml> attribute inside the
                        <targetxml>doc:startdate</targetxml> and
                    <targetxml>doc:enddate</targetxml>.</ph></p>
            <p>2014-07-02: <ph id="change_20140702_SS">Edit a note for Canada only to generate
                        <targetxml>@day</targetxml> attribute value must be in sequential digit
                    number. No need to add leading zero (0) to make the value in two digits. This
                    immediate applies to ALL Canada streams.</ph></p>
            <p>2014-06-09: <ph id="change_20140609_PS">Added note for Canada only to generate
                        <targetxml>@day</targetxml> attribute value as per the source. No need to
                    add zero (0) to make the value in two digits. This immediate applies to ALL
                    Canada streams.</ph></p>
            <p>2014-04-15: <ph id="change_20140415_ss">Added the content stream code "<b>CA08
                        Constitutions</b>" inside the Note for handling empty use cases of
                        <sourcexml>docinfo:versioninfo</sourcexml> for Canada streams.</ph></p>
            <p>2013-05-24: <ph id="change_20130524_vv">Instructions added for handling empty use cases of <sourcexml>docinfo:versioninfo</sourcexml> for Canada content stream.</ph></p>
            <p>2011-08-30: Created.</p>
            <p>2012-12-03: Instruction and example added for <sourcexml>docinfo:versioninfo/docinfo:versionbranch[@value]</sourcexml>.</p>
        </section>
        
        
        
    </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_docinfo.versioninfo-LxAdv-doc.versioninfo-scheme.dita  -->

                <!-- CSN: Created docinfo:versioninfo, docinfo:startdate, docinfo:enddate. -->
   <xsl:template match="docinfo:versioninfo">
      <xsl:choose>
         <xsl:when test="$streamID=('CA05' , 'CA08') and not(child::*)"/>
         <xsl:otherwise>
           <xsl:element name="doc:versioninfo">
              <xsl:apply-templates select="@*|node()"/>
           </xsl:element>
         </xsl:otherwise>
      </xsl:choose>
    </xsl:template>
                
    <xsl:template match="docinfo:versioninfo/@hasotherversions | docinfo:versionbranch/@value | docinfo:versioninfo/@startdate-tbd">
           <xsl:copy-of select="."/>
      </xsl:template>
    
      <xsl:template match="docinfo:startdate">
          <xsl:element name="doc:startdate">
               <xsl:call-template name="dateAtts"/>
           </xsl:element>
      </xsl:template>
    
    <xsl:template match="docinfo:enddate">
        <xsl:element name="doc:enddate">
            <xsl:call-template name="dateAtts"/>
        </xsl:element>
    </xsl:template>
                
   <xsl:template match="docinfo:versionbranch">
      <xsl:element name="doc:versionbranch">
         <xsl:apply-templates select="@*"/>
      </xsl:element>
   </xsl:template>
    
    <xsl:template name="dateAtts">
        <xsl:variable name="dayValue" as="xs:integer">
            <xsl:choose>
                <xsl:when test="@day">
                    <xsl:value-of select="xs:integer(@day)"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="monthValue" as="xs:integer">
            <xsl:choose>
                <xsl:when test="@month">
                    <xsl:value-of select="xs:integer(@month)"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        
        <xsl:variable name="monthValueString" as="xs:string" select="if ($monthValue lt 10 and $monthValue gt 0) then concat( '0' , string($monthValue) ) else string($monthValue)"/>
        <xsl:variable name="yearValue" as="xs:integer" select="xs:integer(@year)"/>
        <xsl:variable name="current2digitYear" as="xs:integer" select="xs:integer(substring(string(current-date()),3,2))"/>
        <xsl:variable name="outputDay" as="xs:boolean" select="if ($dayValue gt 0 and $dayValue lt 32) then true() else false()"/>
        <xsl:variable name="outputMonth" as="xs:boolean" select="if ($monthValue gt 0 and $monthValue lt 13) then true() else false()"/>
        <xsl:variable name="outputYear" as="xs:boolean" select="if ($yearValue gt 0) then true() else false()"/>
        <xsl:variable name="dayNorm" as="xs:string" select="if ($dayValue lt 10) then concat( '0' , string($dayValue) ) else string($dayValue)"/>
        <xsl:variable name="yearNorm" as="xs:string" select="if ($yearValue lt 10) then concat( '200' , string($yearValue) ) else
            if ($yearValue le $current2digitYear) then concat( '20' , string($yearValue) ) else
            if ($yearValue lt 100) then concat( '19' , string($yearValue) ) else
            if ($yearValue lt 1000) then concat( '0' , string($yearValue) ) else
            string($yearValue)"/>
        
        <xsl:if test="$outputDay and $outputMonth and $outputYear">
            <xsl:attribute name="day" select="$dayValue"/>
            <xsl:attribute name="normdate" select="concat($yearNorm,'-',$monthValueString,'-',$dayNorm)"/>
        </xsl:if>
        <xsl:if test="$outputMonth and $outputYear">
            <xsl:attribute name="month" select="$monthValueString"/>
        </xsl:if>
        <xsl:if test="$outputYear">
            <xsl:attribute name="year" select="$yearValue"/>
        </xsl:if>        
        
    </xsl:template>         
</xsl:stylesheet>