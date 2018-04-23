<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
    xmlns:comm="http://www.lexis-nexis.com/glp/comm"
    xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/"
    xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/"
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
    exclude-result-prefixes="#all">

    <dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
        id="Rosetta_person-to-LexisAdvance_person.person">
        <title><sourcexml>person</sourcexml> to <targetxml>person:person</targetxml>
            <lnpid>id-CCCC-10428</lnpid></title>
        <body>
            <section>
                <title>Instructions <i>[common element]</i></title>
                <p>
                    <sourcexml>person</sourcexml> becomes <targetxml>person:person</targetxml>. </p>
                <ul>
                    <li><sourcexml>role</sourcexml> becomes <targetxml>role</targetxml>.<ul
                            id="ul_azn_zao_ih">
                            <li><sourcexml>fnr[@fntoken]</sourcexml> becomes
                                    <targetxml>footnote/ref:anchor[@id]</targetxml></li>
                        </ul></li>
                    <li><sourcexml>name.text</sourcexml> becomes
                            <targetxml>person:name.text</targetxml></li>
                    <li><sourcexml>name.detail</sourcexml> becomes
                            <targetxml>person:name.detail</targetxml>
                        <ul>
                            <li><sourcexml>name.degree</sourcexml> becomes
                                    <targetxml>person:name.degree</targetxml></li>
                            <li><sourcexml>name.honorific</sourcexml> becomes
                                    <targetxml>person:name.honorific</targetxml></li>
                        </ul>
                    </li>
                </ul>
                <note> If <sourcexml>remotelink[@hrefclass="http"][@href]</sourcexml> or
                        <sourcexml>url/remotelink[@hrefclass="http"]</sourcexml> is present, convert
                    according to the instructions for <sourcexml>url/remotelink</sourcexml>, only
                    creating a parent <targetxml>url</targetxml> if it is present.</note>
            </section>

            <example>
                <title>Source XML</title>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;person&gt; &lt;name.text&gt;Norman
                    Lyall&lt;/name.text&gt; &lt;name.detail&gt; &lt;name.degree&gt;BA,
                    LLB,&lt;/name.degree&gt; &lt;/name.detail&gt; &lt;role&gt;Solicitor of the
                    Supreme Court of New South Wales&lt;/role&gt; &lt;/person&gt; &lt;/text&gt;
                    &lt;/p&gt; </codeblock>
            </example>

            <example>
                <title>Target XML</title>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;person:person&gt;
                    &lt;person:name.text&gt;Norman Lyall&lt;/person:name.text&gt;
                    &lt;person:name.detail&gt; &lt;person:name.degree&gt;BA,
                    LLB,&lt;/person:name.degree&gt; &lt;/person:name.detail&gt;
                    &lt;role&gt;Solicitor of the Supreme Court of New South Wales&lt;/role&gt;
                    &lt;/person:person&gt; &lt;/text&gt;&lt;/p&gt; </codeblock>
            </example>
            <example>
                <title>Source XML: <sourcexml>role/fnr</sourcexml></title>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;person&gt; &lt;role&gt;by&lt;/role&gt;
                    &lt;name.text&gt;A J ABADEE&lt;/name.text&gt; &lt;role&gt;Barrister-at-law,
                    Sydney &lt;fnr fntoken="ACLP.C3.SC4.FNT1"
                    fnrtoken="ACLP.C3.SC4.FNT1-R"&gt;*&lt;/fnr&gt; &lt;/role&gt; &lt;/person&gt;
                    &lt;/text&gt;&lt;/p&gt; </codeblock>
            </example>

            <example>
                <title>Target XML: <sourcexml>role/fnr</sourcexml></title>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;person:person&gt; &lt;role&gt;by&lt;/role&gt;
                    &lt;person:name.text&gt;A J ABADEE&lt;/person:name.text&gt;
                    &lt;role&gt;Barrister-at-law, Sydney 
                    &lt;/role&gt; &lt;footnote&gt; &lt;ref:anchor
                    id="ACLP.C3.SC4.FNT1"/&gt; &lt;label&gt;&amp;#x002A;&lt;/label&gt;
                    &lt;bodytext&gt; &lt;p&gt;&lt;text&gt;Based on original commentary
                    by&lt;/text&gt;&lt;/p&gt; &lt;p&gt;&lt;text&gt;J F
                    CORKERY&lt;/text&gt;&lt;/p&gt; &lt;p&gt;&lt;text&gt;Professor of Law, Bond
                    University&lt;/text&gt;&lt;/p&gt; &lt;/bodytext&gt; &lt;/footnote&gt; &lt;/person:person&gt; &lt;/text&gt; &lt;/p&gt; </codeblock>
            </example>


            <example>
                <title>Source XML</title>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;role&gt;Chairman, Australian Advocacy
                    Institute&lt;/role&gt; &lt;/text&gt; &lt;/p&gt; </codeblock>
            </example>

            <example>
                <title>Target XML</title>
                <codeblock> &lt;p&gt; &lt;text&gt; &lt;person:person&gt; &lt;role&gt;Chairman,
                    Australian Advocacy Institute&lt;/role&gt; &lt;/person:person&gt; &lt;/text&gt;
                    &lt;/p&gt; </codeblock>
            </example>

            <example>
                <title>Source person/name.detail/name.honorific</title>
                <codeblock> &lt;person&gt; &lt;name.text&gt;The Hon R O Blanch&lt;/name.text&gt;
                    &lt;name.detail&gt; &lt;name.honorific&gt;AM&lt;/name.honorific&gt;
                    &lt;/name.detail&gt; ... &lt;/person&gt; </codeblock>
            </example>

            <example>
                <title>Target person:person/person:name.detail/person:name.honorific</title>
                <codeblock> &lt;person:person&gt; &lt;person:name.text&gt;The Hon R O
                    Blanch&lt;/person:name.text&gt; &lt;person:name.detail&gt;
                    &lt;person:name.honorific&gt;AM&lt;/person:name.honorific&gt;
                    &lt;/person:name.detail&gt; ... &lt;/person:person&gt; </codeblock>
            </example>



            <section>
                <title>Changes</title>
                <p>2018-03-16: Updated the targate example role/fnr.</p>
                <p>2011-12-21: Created.</p>
                <p>2011-12-21: defined instructions to handle a scenario that occurs in case
                    law.</p>
                <p>2011-12-22: defined instructions to handle a scenario that occurs in case
                    law.</p>
                <p>2012-01-16: defined instructions to handle name.detail and name.degree.</p>
                <p>2012-01-19: defined instructions to handle role, if it occurs as direct child of
                    case:author.</p>
                <p>2012-04-30: Add a note in CI's saying "A CR has been raised to allow
                        <targetxml>footnote</targetxml> in <targetxml>role</targetxml>".</p>
                <p>2012-05-14: Removed a note from CI's saying <b>"A CR has been raised to allow
                            <targetxml>footnote</targetxml> in <targetxml>role</targetxml> and CR
                        number is <b>DAAM2012043003311600</b>"</b>.</p>
                <p>2012-05-14: Example added for <sourcexml>role/fnr</sourcexml> becomes
                        <targetxml>role/footnote</targetxml></p>
                <p>2012-08-23: Added mapping for <sourcexml>fnr</sourcexml> becomes
                        <targetxml>footnote/ref:anchor[@id]</targetxml>. Removed courtcase specific
                    instructions to separate modules.</p>
                <p>2013-03-14: Add instruction and example: if <sourcexml>role</sourcexml> occurred
                    as a direct child of <sourcexml>text</sourcexml>.</p>
                <p>2015-02-03: <ph id="change_honorific_20150203_mlv">Added instruction for
                            <sourcexml>name.detail/name.honorific</sourcexml> mapping to
                            <targetxml>person:name.detail/person:name.honorific</targetxml>.</ph></p>
                <p>2015-07-16: <ph id="change_remotelink_20150716_bmh">Added instruction for
                            <sourcexml>person/remotelink</sourcexml> mapping to
                            <targetxml>ref:lnlink</targetxml>.</ph></p>
            </section>

        </body>
    </dita:topic>

    <!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_person-LxAdv-person.person.dita  -->


    <xsl:template match="person">
        <xsl:choose>
            <xsl:when test="parent::contrib and $streamID = 'UK09'">
                <xsl:apply-templates select="@* | node()"/>
            </xsl:when>
            <!-- SNB 2018-01-19 webstar 7091986: add special handling from CI for LPA when comm:info/contrib/note/p/text/person/remotelink[@href] -->
            <xsl:when test="$streamID = 'USLPA' and 
                parent::text[parent::p[parent::note[parent::contrib[parent::comm:info]]]] and 
                remotelink[@href]">
                <xsl:apply-templates select="remotelink"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="person:person">
                    <xsl:apply-templates select="@* | node()"/>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="bio[not(child::addl-info)][$streamID='UK12']" priority="25">
        <xsl:choose>
            <xsl:when test="parent::person">
                <person:bio>
                    <person:bio.text>
                        <bodytext>
                            <xsl:apply-templates select="@* | node()"/>
                        </bodytext>
                    </person:bio.text>
                </person:bio>
            </xsl:when>
            <xsl:otherwise>
                <person:person>
                    <person:bio>
                        <person:bio.text>
                            <bodytext>
                                <xsl:apply-templates select="@* | node()"/>
                            </bodytext>
                        </person:bio.text>
                    </person:bio>
                </person:person>
            </xsl:otherwise>
        </xsl:choose>
       
    </xsl:template>
    <xsl:template match="bio[not(addl-info)]">
        <!--  Original Target XPath:  person:person/person:bio   -->
        <!--  <person:person>-->
        <person:bio>
            <person:bio.text>
                <bodytext>
                    <xsl:apply-templates select="@* | node()"/>
                </bodytext>
            </person:bio.text>
        </person:bio>
        <!--</person:person>-->
    </xsl:template>

    <xsl:template match="bio[addl-info]">
        <!--  Original Target XPath:  person:person/person:bio   -->
        <!--<person:person>-->
        <person:bio>
            <xsl:apply-templates select="@* | node()"/>
        </person:bio>
        <!--</person:person>-->
    </xsl:template>

    <xsl:template match="addl-info">
        <!--  Original Target XPath:  person:bio/person:bio.text   -->
        <person:bio.text>
            <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                <xsl:apply-templates select="@* | node()"/>
            </bodytext>
        </person:bio.text>
    </xsl:template>

    <xsl:template match="govt-entity">
        <!--  Original Target XPath:  person:person/person:bio/person:bio.text/bodytext/p/text/entity:govt-entity   -->
        <entity:govt-entity>
            <xsl:apply-templates select="@* | node()"/>
        </entity:govt-entity>
    </xsl:template>

    <xsl:template match="role">
        <!--  Original Target XPath:  person:person/person:bio/person:bio.text/bodytext/p/text/person:person/role   -->
        <role>
            <xsl:apply-templates select="@* | node()"/>
        </role>
    </xsl:template>

    <xsl:template match="person/role">
        <role xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
            <xsl:apply-templates select="@* | node()"/>
        </role>
    </xsl:template>
    <!-- Ravikant: Added condition when fnr parent text/role for MY02 -->
    <xsl:template match="text/role">
        <xsl:element name="person:person">
                <xsl:for-each-group select="node()" group-adjacent="if(name(.)='fnr') then 1 else 0">
                    <xsl:choose>
                        <xsl:when test="current-grouping-key()=1">
                            <xsl:apply-templates select="current-group()"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:element name="role"
                                namespace="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
                                <xsl:apply-templates select="current-group()"/>
                            </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each-group>
                </xsl:element>
    </xsl:template>

    <!-- BRT: instruction includes conversion of fnr to footnote. Will not include it here. JL agrees: generic rule should handle this.
              Same for remotelink. -->

    <xsl:template match="name.text">
        <xsl:choose>
            <xsl:when test="$streamID='USLPA'">
                <xsl:element name="person:person">
                    <xsl:element name="person:name.text">
                        <xsl:apply-templates select="@* | node()"/>
                    </xsl:element>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="person:name.text">
                    <xsl:apply-templates select="@* | node()"/>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose> 
    </xsl:template>

    <xsl:template match="name.detail">
        <xsl:element name="person:name.detail">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>

    <!-- BRT: created and added to base.xsl -->
    <xsl:template match="name.degree">
        <xsl:element name="person:name.degree">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>


    <!-- BRT: created and added to base.xsl -->
    <xsl:template match="name.honorific">
        <xsl:element name="person:name.honorific">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
	
	<!-- JD: 2017-07-14: added; note additional handling in /modules/nonamespace/Rosetta_docinfo-LxAdv-doc.metadata_doc.docinfo.xsl -->
	<xsl:template match="person/@searchtype"/>


</xsl:stylesheet>
