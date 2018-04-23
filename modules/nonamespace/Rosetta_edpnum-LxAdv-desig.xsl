<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" 
    version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_edpnum">
    <title><sourcexml>edpnum</sourcexml> to <targetxml>desig</targetxml> <lnpid>id-CCCC-10308</lnpid></title>
    <body>
        <section>
            <title>Instructions <i>[common element]</i></title>
            <ul>
                <li>If <sourcexml>edpnum</sourcexml> does <b>not</b> occur as a sibling of
                        <sourcexml>desig</sourcexml>, then <sourcexml>edpnum</sourcexml> becomes
                        <targetxml>desig</targetxml>.</li>
                <li>If <sourcexml>edpnum</sourcexml> and <sourcexml>desig</sourcexml> occur as
                    siblings, then <sourcexml>edpnum</sourcexml> becomes
                        <targetxml>altdesig</targetxml>. This scenario can occur in elements such as
                        <sourcexml>leg:heading</sourcexml>.</li>
                <li>In either case, preserve source document order in the output.</li>
                
            </ul>
        </section>

        <example>
            <title>Source XML</title>
            <codeblock>

&lt;heading&gt;
  &lt;edpnum&gt;[LEN 5638]&lt;/edpnum&gt;
  &lt;title&gt;EPA v Multiplex Constructions Pty Ltd&lt;/title&gt;
&lt;/heading&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML</title>
            <codeblock>

&lt;heading&gt;
  &lt;desig&gt;[LEN 5638]&lt;/desig&gt;
  &lt;title&gt;EPA v Multiplex Constructions Pty Ltd&lt;/title&gt;
&lt;/heading&gt;

	</codeblock>
        </example>

        <example>
            <title>Source XML - sibling <sourcexml>edpnum</sourcexml> and
                    <sourcexml>desig</sourcexml></title>
            <codeblock>

&lt;leg:heading inline="true"&gt;
    &lt;edpnum&gt;[78,025]&lt;/edpnum&gt;
    &lt;title searchtype="SECT-TITLE"&gt;Children's evidence to which this Act applies&lt;/title&gt;
    &lt;desig searchtype="SECT-NUM"&gt;&lt;designum&gt;6&lt;/designum&gt;&lt;/desig&gt;
&lt;/leg:heading&gt;

	</codeblock>
        </example>

        <example>
            <title>Target XML - sibling <sourcexml>edpnum</sourcexml> and
                    <sourcexml>desig</sourcexml></title>
            <codeblock>

&lt;heading inline="true"&gt;
    &lt;altdesig&gt;[78,025]&lt;/altdesig&gt;
    &lt;title&gt;Children's evidence to which this Act applies&lt;/title&gt;
    &lt;desig&gt;6&lt;/desig&gt;    
&lt;/heading&gt;


	</codeblock>
        </example>
        
        <note>If <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as siblings,
            then <sourcexml>edpnum</sourcexml> becomes <targetxml>altdesig</targetxml> This scenario
            can occur in elements such as <sourcexml>p</sourcexml>(applicable for UK22CS and
            UK06).</note>
        <example>
            <title>Source XML - sibling <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml></title>
            <codeblock>

&lt;p&gt;
    &lt;pnum&gt;1 (1)&lt;/pnum&gt;
    &lt;edpnum value="F1.302" inline="false"&gt;[F1.302]&lt;/edpnum&gt;         
&lt;/p&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML <b><sourcexml>edpnum</sourcexml> becomes
                <targetxml>altdesig</targetxml></b></title>
            <codeblock>

&lt;p&gt;
    &lt;desig&gt;1 (1)&lt;/desig&gt;
    &lt;altdesig value="F1.302" inline="false"&gt;[F1.302]&lt;/altdesig&gt;         
&lt;/p&gt;

	</codeblock>
        </example>


        <section>
            <title>Changes</title>
            <p>2016-10-12: <ph id="change_20161012_HP">Added rule for handling scenario when
                <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
                siblings (applicable for UK22CS and UK06).</ph></p>
            <p>2016-03-15: <ph id="change_20160315_HP">Added rule for handling scenario when
                <sourcexml>pnum</sourcexml> and <sourcexml>edpnum </sourcexml> occur as
                siblings (applicable only for UK22CS). [<b>RFA #2755</b>]</ph></p>
            <p>2013-10-22: <ph id="change_20131022_jm">Not a rule change. Modified 2nd example for
                    clarity. Removed <sourcexml>refpt</sourcexml> from source markup. Not pertinent
                    to <sourcexml>edpnum</sourcexml> rules. Separate rules for
                        <sourcexml>refpt</sourcexml> provide details. Responds to UK LBU
                query.</ph></p>
            <p>2013-03-06: <ph id="change_20130306_raj">Removed instructions/rules for exceptional
                    desig scenario and deprecated attribute <targetxml>@followstitle</targetxml>.
                    Added instructions for maintaining source document ordering.</ph></p>
            <p>2011-12-21: Included example for multiple desig and added the CR number.</p>
            <p>2011-12-22: Added instructions regarding the creation of altdesig.</p>
            <p>2011-01-17: Removed CR number from the instruction based on latest schema
                release.</p>
            <p>2012-05-16: Corrected last example. Added exceptional use case (copied from heading
                module). For when desig and altdesig occur both before and after the title.</p>
        </section>
        
      
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated (although the DITA file already has embedded XSLT).  Remove this comment after manual development complete!  (also remove the embedded XSLT within the DITA above) @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_edpnum-LxAdv-desig.dita  -->
	<!--<xsl:message>Rosetta_edpnum-LxAdv-desig.xsl requires manual development!</xsl:message>--> 
    
<!-- Awantika- added namespace attribute to the element -->
<!-- Made sure refpt and its contents are suppressed as invalid in desig/altdesig; allow other child elements to convert over by applying templates. JL -->
                <!-- CSN: Created epdnum template -->
                <xsl:template match="edpnum">
                    <xsl:choose>
                        <xsl:when test="../desig or ../pnum">
                            <xsl:element name="altdesig" namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <xsl:apply-templates select="@*|node() except refpt"/>
                            </xsl:element>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:element name="desig" namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <xsl:apply-templates select="@*|node() except refpt"/>
                            </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:template>
    
    <xsl:template match="edpnum/@inline[$streamID=('UK07')]">
        <xsl:attribute name="inline" select="."/>
    </xsl:template>
    
    <xsl:template match="edpnum/@value[$streamID=('UK07')]">
        <xsl:attribute name="value" select="."/>
    </xsl:template>
    
    <xsl:template match="edpnum/@inline[$streamID=('UK06','AU14','UK22CF')] | edpnum/@value[$streamID=('UK06','UK22CF')]"/>
    
    <xsl:template match="edpnum/@ln.user-displayed"/>
</xsl:stylesheet>