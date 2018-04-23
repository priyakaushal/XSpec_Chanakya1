<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
	xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
	xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK12_level-leveltype.table-become-table">
		   <title>level[@leveltype="table"] become table <lnpid>id-UK12-29840</lnpid> </title>
    <body>
        <section>
            <p>If source document comes with <sourcexml>level[@leveltype = "table"]</sourcexml> and
                it's comes under <sourcexml>level[@leveltype]</sourcexml> with one attribute value
                among these values <b>(leg-derivation | leg-destination)</b> means <sourcexml>i.e
                    level[@leveltype = "leg-derivation"]/ level[@leveltype = "table"]</sourcexml>
                then conversion needs to create '<targetxml>table</targetxml> under
                    <targetxml>seclaw:level/seclaw:bodytext</targetxml> (i.e
                    <targetxml>seclaw:level/seclaw:bodytext/table</targetxml>) with attribute
                    <targetxml>@frame</targetxml>' and set the '<b>topbot</b>' value for attribute
                    <targetxml>@frame</targetxml> (i.e.
                    <targetxml>table[@frame="topbot"]</targetxml>) and attribute
                    value<sourcexml>level[@leveltype = "leg-derivation |
                    leg-destination"]</sourcexml> will be mapped with the value
                    <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml> in NL target
                document.</p>
            <p>If nested <sourcexml>level/@leveltype</sourcexml>having attribute value
                    <sourcexml>provision</sourcexml> means i.e.
                    <sourcexml>level[@leveltype="table"]/level[@leveltype="provision"]</sourcexml>
                then conversion needs to create  two column inside the <targetxml>table</targetxml>
                in target document according to below condition: <ul>
                    <li>Create first <targetxml>row</targetxml> under the
                            <targetxml>thead</targetxml> with two entries (i.e.
                            <targetxml>entry</targetxml>) as a heading and default values of heading
                        are <b>Provision </b>and <b>Origins</b>. </li>
                    <li>
                        <p>If <sourcexml>level/@leveltype = "source"</sourcexml> element as a
                            preceding-sibling of <sourcexml>level/@leveltype = "derivation |
                                destination"</sourcexml> and it's comes under
                                <sourcexml>level[@leveltype = "provision"]</sourcexml> then create
                            single <targetxml>row</targetxml> with two child
                                <targetxml>entries</targetxml> under <targetxml>tbody</targetxml>.
                            See input and target snippet for reference.</p>
                    </li>
                    <li>If <sourcexml>level/@leveltype = "source"</sourcexml> comes with child
                            <sourcexml>bodytext</sourcexml> markup (i.e.
                            <sourcexml>bodytext/p/text</sourcexml>) then conversion needs to create
                            <targetxml>p/text</targetxml> within <targetxml>entry</targetxml>
                        element inside the first column of <targetxml>table</targetxml> under the
                            <b>Provision</b> heading.</li>
                    <li>If <sourcexml>level/@leveltype = "derivation | destination"</sourcexml>
                        comes with child <sourcexml>bodytext </sourcexml>markup (i.e.
                            <sourcexml>bodytext/p/text/ci:cite</sourcexml>) then conversion needs to
                        create <targetxml>p/text/lnci:cite</targetxml> within
                            <targetxml>entry</targetxml> element inside the second column of
                            <targetxml>table</targetxml> under the <b>Origins</b> heading. Refer
                        input to output examples for better understanding. </li>
                </ul>
            </p>
        </section>
        <section>
            <b><i>Example: Source XML</i></b>
            <pre>
<![CDATA[ 
<level leveltype="leg-derivation">
    <heading>
        <title>Derivation Table <refpt id="act-id" type="ext"/></title>
    </heading>
    <bodytext>
        <p>
            <text>This Table shows the origins of the provisions of the Income Tax Act 2007.</text>
        </p>
    </bodytext>
    <level leveltype="table">
        <level leveltype="provision">
            <level leveltype="source">
                <bodytext>
                    <p>
                        <text>s 1(1), (2)</text>
                    </p>
                </bodytext>
            </level>
            <level leveltype="derivation">
                <bodytext>
                    <p>
                        <text>
                            <ci:cite searchtype="LEG-REF" normcite="UK_ACTS 1977 49 SECT 1">
                                <ci:content>National Health Service Act 1977, s 1(1)</ci:content>
                            </ci:cite>
                        </text>
                    </p>
                </bodytext>
            </level>
        </level>
    </level>
</level>
]]>
      </pre>
            <b><i>Example: Target XML</i></b>
            <pre>
<![CDATA[
<seclaw:level leveltype="unclassified">
    <ref:anchor id="act-id" anchortype="global"/>
    <heading>
        <title>Derivation Table </title>
    </heading>
    <seclaw:bodytext>
        <p>
            <text>This Table shows the origins of the provisions of the Income Tax Act 2007.</text>
        </p>
        <table frame="topbot">
            <tgroup cols="2">
                <colspec colname="col1" colnum="1" colsep="0" rowsep="0" colwidth="30*"/>
                <colspec colname="col2" colnum="2" colsep="0" rowsep="0" colwidth="70*"/>
                <thead>
                    <row>
                        <entry colname="col1" colsep="1" rowsep="1">Provision</entry>
                        <entry colname="col2" colsep="0" rowsep="1">Origins</entry>
                    </row>
                </thead>

                <tbody valign="top">
                    <row>
                        <entry colname="col1" colsep="1" rowsep="0">
                            <p>
                                <text>s 1(1), (2)</text>
                            </p>  </entry>
                        <entry colname="col2" colsep="0" rowsep="0">
                            <p>
                                <text>
                                    <lnci:cite normcite="UK_ACTS 1977 49 SECT 1">
                                        <lnci:content>National Health Service Act 1977, s
                                            1(1)</lnci:content>
                                    </lnci:cite>
                                </text>
                            </p>
                        </entry>
                    </row>
                </tbody>
            </tgroup>
        </table>
    </seclaw:bodytext>
</seclaw:level>
]]>
            </pre>
        </section>
        <section>
            <p>If multiple levels comes as a siblings under main
                    <sourcexml>level[@leveltype="provision"]</sourcexml> then follow below
                instruction:</p>
            <ul>
                <li>If source document having multiple subling levels (i.e.
                        <sourcexml>level/@leveltype = "derivation | destination |
                        remark"</sourcexml>) then first two levels should be converted as a
                        <targetxml>row</targetxml> with child <targetxml>entries</targetxml> as per
                    above mentioned rules and third (last) <sourcexml>level</sourcexml> should be
                    created one EMPTY <targetxml>entry</targetxml> before second
                        <targetxml>entry</targetxml> and second <targetxml>entry</targetxml> should
                    be capture value of last <sourcexml>level</sourcexml>. Refer below input and
                    output examples: </li>
            </ul>
        </section>
        <section>
            <b><i>Example: Source XML - For handling multiple <sourcexml>level/@leveltype =
                        "derivation | destination"</sourcexml>
                </i></b>
            <pre>
<![CDATA[ 
<level leveltype="provision">
    <level leveltype="source">
        <bodytext>
            <p>
                <text>s 3(1)</text>
            </p>
        </bodytext>
    </level>
    <level leveltype="derivation">
        <bodytext>
            <p>
                <text>
                    <ci:cite searchtype="LEG-REF"
                        normcite="UK_ACTS 2006 28 SCH 8">
                        <ci:content>Health Act 2006, Sch 8, para
                            7(2)</ci:content>
                    </ci:cite>
                </text>
            </p>
        </bodytext>
    </level>
    <level leveltype="derivation">
        <bodytext>
            <p>
                <text>
                    <ci:cite searchtype="LEG-REF"
                        normcite="UK_ACTS 1977 49 SECT 3">
                        <ci:content>National Health Service Act 1977, s
                            3(1)</ci:content>
                    </ci:cite>
                </text>
            </p>
        </bodytext>
    </level>
</level>  
]]>
      </pre>
            <b><i>Example: Target XML - For handling multiple <sourcexml>level/@leveltype =
                        "derivation | destination"</sourcexml></i></b>
            <pre>
<![CDATA[
<table frame="topbot">
    <tgroup cols="2">
        <colspec colname="col1" colnum="1" colsep="0" rowsep="0" colwidth="30*"/>
        <colspec colname="col2" colnum="2" colsep="0" rowsep="0" colwidth="70*"/>
        <thead >
            <row>
                <entry colname="col1" colsep="1" rowsep="1">Provision</entry>
                <entry colname="col2" colsep="0" rowsep="1">Origins</entry>
            </row>
        </thead>
        
        <tbody valign="top">
            <row>
                <entry colname="col1" colsep="1" rowsep="0">
                    <p>
                        <text>s 3(1)</text>
                    </p>  
                </entry>
                <entry colname="col2" colsep="0" rowsep="0">
                    <p>
                        <text>
                            <lnci:cite normcite="UK_ACTS 2006 28 SCH 8">
                                <lnci:content>Health Act 2006, Sch 8, para
                                    7(2)</lnci:content>
                            </lnci:cite>
                        </text>
                    </p>
                </entry>
            </row>
            <row>
                <entry colname="col1" colsep="1" rowsep="0"/>
                <entry colname="col2" colsep="0" rowsep="0">
                    <p>
                        <text>
                            <lnci:cite normcite="UK_ACTS 1977 49 SECT 3">
                                <lnci:content>National Health Service Act 1977, s
                                    3(1)</lnci:content>
                            </lnci:cite>
                        </text>
                    </p>
                </entry>
            </row>
        </tbody>
    </tgroup>
</table>
]]>
            </pre>
        </section>

        <section>
            <b><i>Example: Source XML - For handling <sourcexml>level/@leveltype =
                        "remark"</sourcexml>
                </i></b>
            <pre>
<![CDATA[ 
<level leveltype="provision">
    <level leveltype="source">
        <bodytext>
            <p>
                <text>Sch 3</text>
            </p>
        </bodytext>
    </level>
    <level leveltype="destination">
        <bodytext>
            <p>
                <text>
                    <ci:cite searchtype="LEG-REF" normcite="UK_ACTS 1994 SCH 3">
                        <ci:content>Vehicle Excise and Registration Act 1994,
                            Sch 3, para 25(2)</ci:content>
                    </ci:cite>
                </text>
            </p>
        </bodytext>
    </level>
    <level leveltype="remark">
        <bodytext>
            <p>
                <text>Repealed in part.</text>
            </p>
        </bodytext>
    </level>
</level>  
]]>
      </pre>
            <b><i>Example: Target XML For handling <sourcexml>level/@leveltype =
                        "remark"</sourcexml></i></b>
            <pre>
<![CDATA[
<table frame="topbot">
    <tgroup cols="2">
         <colspec colname="col1" colnum="1" colsep="0" rowsep="0" colwidth="30*"/>
                <colspec colname="col2" colnum="2" colsep="0" rowsep="0" colwidth="70*"/>
                <thead >
                    <row>
                        <entry colname="col1" colsep="1" rowsep="1">Provision</entry>
                        <entry colname="col2" colsep="0" rowsep="1">Origins</entry>
                    </row>
                </thead>
        <tbody valign="top">
            <row>
                <entry colname="col1" colsep="1" rowsep="0">
                    <p>
                        <text>Sch 3</text>
                    </p>  
                </entry>
                <entry colname="col2" colsep="0" rowsep="0">
                    <p>
                        <text>
                            <lnci:cite normcite="UK_ACTS 1994 SCH 3">
                                <ci:content>Vehicle Excise and Registration Act 1994,
                                    Sch 3, para 25(2)</ci:content>
                            </lnci:cite>
                        </text>
                    </p>
                </entry>
            </row>
            <row>
                <entry colname="col1" colsep="1" rowsep="0"/>
                <entry colname="col2" colsep="0" rowsep="0">
                    <p>
                        <text>Repealed in part.</text>
                    </p>
                </entry>
            </row>
        </tbody>
    </tgroup>
</table>
]]>
            </pre>
        </section>
        
        <section>
            <title>Changes</title>
            <p>2017-06-13: <ph id="change_20170613_RS">Updated the instruction and example of level[@leveltype = "table"]</ph></p>
            <p>2017-06-07: <ph id="change_20170607_RS">Created a new rule for
                    level[@leveltype="table"] become table.</ph></p>
        </section>
        
    </body>

	 </dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK/UK12-Treatise/UK12_level-leveltype.table-become-table.dita -->
<!--	<xsl:message>UK12_level-leveltype.table-become-table.xsl requires manual development!</xsl:message> -->
	
    <xsl:template match="level[@leveltype='leg-derivation' or @leveltype='leg-destination'][child::level[@leveltype='table']]" priority="10">
        <seclaw:level>
            <xsl:apply-templates select="@*,heading/title/refpt,heading"/>
            <seclaw:bodytext>
                <xsl:apply-templates select="* except heading"/>
            </seclaw:bodytext>
        </seclaw:level>
    </xsl:template>
    
    <xsl:template match="bodytext[parent::level[@leveltype='leg-derivation' or @leveltype='leg-destination']]" priority="20">
        <xsl:apply-templates select="node()"/>
    </xsl:template>
	
    <xsl:template match="level[@leveltype='table']" priority="30">
	    <table>
	        <xsl:attribute name="frame" select="'topbot'"/>
	        <xsl:if test="child::level[@leveltype='provision']">
	            <tgroup cols="3">
	                <colspec colname="col1" colnum="1" colsep="0" rowsep="0" colwidth="1*"/>
	                <colspec colname="col2" colnum="2" colsep="0" rowsep="0" colwidth="2*"/>
	                <colspec colname="col3" colnum="3" colsep="0" rowsep="0" colwidth="1*"/>
	                <thead>
	                    <row>
	                        <entry colname="col1" colsep="1" rowsep="1">Provision</entry>
	                        <entry colname="col2" colsep="1" rowsep="1">Replacement Provision (if any)</entry>
	                        <entry colname="col3" colsep="0" rowsep="1">Remarks</entry>
	                    </row>
	                </thead>
	                <tbody>
	                    <xsl:attribute name="valign" select="'top'"/>
	                    <xsl:choose>
	                        <xsl:when test="count(child::level[@leveltype='provision']/child::level[@leveltype='derivation' or @leveltype='destination']) eq 1">
	                            <xsl:if test="child::level[@leveltype='provision']/child::level[@leveltype='source'][following-sibling::level[@leveltype='derivation' or @leveltype='destination' or @leveltype='remark']]">
	                                <row>
	                                    <entry colname="col1" colsep="1" rowsep="0">
	                                        <xsl:apply-templates select="child::level[@leveltype='provision']/child::level[@leveltype='source']/bodytext/child::node()"/>
	                                    </entry>
	                                    <entry colname="col2" colsep="1" rowsep="0">
	                                        <xsl:apply-templates select="child::level[@leveltype='provision']/child::level[@leveltype='derivation' or @leveltype='destination']/bodytext/child::node()"/>
	                                    </entry>
	                                    <entry colname="col3" colsep="0" rowsep="0">
	                                        <xsl:apply-templates select="child::level[@leveltype='provision']/child::level[@leveltype='remark']/bodytext/child::node()"/>
	                                    </entry>
	                                </row>
	                            </xsl:if>
	                        </xsl:when>
	                        <xsl:otherwise>                              
	                            <xsl:for-each select="child::level[@leveltype='provision']/child::level[@leveltype='derivation' or @leveltype='destination']">
	                                <row>
	                                    <entry colname="col1" colsep="1" rowsep="0">
	                                        <xsl:apply-templates select="preceding-sibling::*[1][self::level[@leveltype='source']]/bodytext/child::node()"/>
	                                    </entry>
	                                    <entry colname="col2" colsep="1" rowsep="0">
	                                        <xsl:apply-templates select="bodytext/child::node()"/>
	                                    </entry>
	                                    <entry colname="col3" colsep="0" rowsep="0">
	                                        <xsl:apply-templates select="following-sibling::*[1][self::level[@leveltype='remark']]/bodytext/child::node()"/>
	                                    </entry>
	                                </row>
	                            </xsl:for-each>
	                        </xsl:otherwise>
	                    </xsl:choose>	                    
	                </tbody>
	            </tgroup>
	        </xsl:if>            
	    </table>
	</xsl:template>
	


	

</xsl:stylesheet>
