<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Articles_contrib">
    <title>contrib <lnpid>id-HK02-37009</lnpid></title>

    <body>
        <p><sourcexml>jrnl:prelim/contrib</sourcexml> becomes
                <targetxml>nitf:body/nitf:body.head/nitf:byline/person:contributor</targetxml>.</p>

        <p><sourcexml>contrib/@searchtype="AUTHOR"</sourcexml> becomes <targetxml>@contributor-type="AUTHOR"</targetxml> and <sourcexml>contrib/@payment="none" </sourcexml>attribute value "<b>none</b>" is fixed then suppressed in target</p>

        <p>If <sourcexml>@contribtype</sourcexml> and
                <sourcexml>@searchtype="AUTHOR"</sourcexml> is not present in the source data then
            conversion need to create <targetxml>@contributor-type="undetermined"</targetxml> in <targetxml>person:contributor</targetxml></p>
        <p>Conversion of child of <sourcexml>contrib</sourcexml> as follows:</p>
        <ul>
            <li><sourcexml>person</sourcexml> becomes <targetxml>person:person</targetxml> and attribute <sourcexml
                >person/@code-source="ctrl-vocab-term-id"</sourcexml> becomes <targetxml>@term-code-source="ctrl-vocab-term-id"</targetxml>.</li>
            <li><sourcexml>name.text</sourcexml> becomes
                <targetxml>person:name.text</targetxml>.</li>
            <li><sourcexml>bio</sourcexml> becomes
                <targetxml>person:person/person:bio</targetxml>.</li>
            <li><sourcexml>addl-info</sourcexml> becomes
                    <targetxml>person:bio/person:bio.text</targetxml>. Create
                    <targetxml>bodytext</targetxml> as child element of
                    <targetxml>person:bio.text</targetxml> for handling child elements of
                    <sourcexml>addl-info</sourcexml>.</li>
            <li><sourcexml>govt-entity</sourcexml> becomes
                    <targetxml>person:person/person:bio/person:bio.text/bodytext/p/text/entity:govt-entity</targetxml>.</li>
            <li><sourcexml>role</sourcexml> becomes
                    <targetxml>person:person/person:bio/person:bio.text/bodytext/p/text/person:person/role</targetxml>.</li>
        </ul>

        <pre>
&lt;jrnl:prelim&gt;
    &lt;contrib searchtype="AUTHOR"&gt;
        &lt;bio&gt;
            &lt;addl-info&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;role&gt;Title: The Open Corporation: Effective Self-Regulation and Democracy &lt;/role&gt;
                        &lt;govt-entity&gt;Publisher: Cambridge University Press &lt;/govt-entity&gt;
                        &lt;govt-entity&gt;Publication date: 2002 &lt;/govt-entity&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/addl-info&gt;
        &lt;/bio&gt;
        &lt;person&gt;
            &lt;name.text&gt;
                &lt;emph typestyle="bf"&gt;Author: Christine Parker&lt;/emph&gt;
            &lt;/name.text&gt;
        &lt;/person&gt;
    &lt;/contrib&gt;
&lt;/jrnl:prelim&gt;

<b>Becomes</b>

&lt;nitf:body&gt;
    &lt;nitf:body.head&gt;
        &lt;nitf:byline&gt;
            &lt;person:contributor contributor-type="author"&gt;
                &lt;person:person&gt;
                    &lt;person:bio&gt;
                        &lt;person:bio.text&gt;
                            &lt;bodytext&gt;
                                &lt;p&gt;
                                    &lt;text&gt;
                                        &lt;person:person&gt;
                                            &lt;role&gt;Title: The Open Corporation: Effective
                                                Self-Regulation and Democracy&lt;/role&gt;
                                        &lt;/person:person&gt;
                                        &lt;entity:govt-entity&gt;Publisher: Cambridge University
                                            Press&lt;/entity:govt-entity&gt;
                                        &lt;entity:govt-entity&gt;Publication date:
                                            2002&lt;/entity:govt-entity&gt;
                                    &lt;/text&gt;
                                &lt;/p&gt;
                            &lt;/bodytext&gt;
                        &lt;/person:bio.text&gt;
                    &lt;/person:bio&gt;
                    &lt;person:name.text&gt;
                        &lt;emph typestyle="bf"&gt;Author: Christine Parker&lt;/emph&gt;
                    &lt;/person:name.text&gt;
                &lt;/person:person&gt;
            &lt;/person:contributor&gt;
        &lt;/nitf:byline&gt;
    &lt;/nitf:body.head&gt;
&lt;/nitf:body&gt;
</pre>

        <section>
            <title>Changes</title>
            <p>2016-03-02: <ph id="change_20160302_PS">Created.</ph></p>
        </section>

    </body>

	</dita:topic>

	<xsl:template match="jrnl:prelim/contrib">

		<!--  Original Target XPath:  nitf:body/nitf:body.head/nitf:byline/person:contributor   -->
		<nitf:byline>
			<person:contributor>
				<xsl:apply-templates select="@* | node()"/>
			</person:contributor>
		</nitf:byline>

	</xsl:template>

	<xsl:template match="contrib/@searchtype[matches(normalize-space(.), 'AUTHOR')]">
		<!--  Original Target XPath:  @contributor-type="AUTHOR"   -->
		<xsl:attribute name="contributor-type">
			<xsl:text>author</xsl:text>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="contrib[not(@searchtype[matches(normalize-space(.), 'AUTHOR')])]/@contribtype">

	    <!-- SS 27-11-2017: Added below condition for adding value 'author' inside @contributor-type-->
	    <xsl:choose>
	        <xsl:when test="contains(., 'AUTHOR')">
	            <xsl:attribute name="contributor-type">
	                <xsl:text>author</xsl:text>
	            </xsl:attribute>
	        </xsl:when>
	        <xsl:otherwise>
	            <xsl:attribute name="contributor-type">
	                <xsl:text>undetermined</xsl:text>
	            </xsl:attribute>
	        </xsl:otherwise>
	    </xsl:choose>
	</xsl:template>

	<xsl:template match="contrib">

		<!--  Original Target XPath:  person:person   -->
		<person:person>
			<xsl:apply-templates select="@* | node()"/>
		</person:person>

	</xsl:template>
    <!--Ravikant: handling payment attribute with none value -->
    <xsl:template match="contrib/@payment[.='none']"/>
    
    <!--Ravikant: webstar 7046647 handling code-source Attribute -->
    <xsl:template match="person">

		<!--  Original Target XPath:  person:person   -->
		<person:person>
		    <xsl:if test="./@code-source">
		        <xsl:attribute name="term-code-source">
		            <xsl:value-of select="./@code-source"/> 
		        </xsl:attribute>  
		    </xsl:if>
		    <xsl:apply-templates select="@* except (@code-source) | node()"/>
		</person:person>

	</xsl:template>

	<xsl:template match="name.text">

		<!--  Original Target XPath:  person:name.text   -->
		<person:name.text>
			<xsl:apply-templates select="@* | node()"/>
		</person:name.text>

	</xsl:template>

	<xsl:template match="bio[not(addl-info)]">

		<!--  Original Target XPath:  person:person/person:bio   -->
			<person:person>
				<person:bio>
					<person:bio.text>
					    <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
					        <xsl:apply-templates select="@* | node()"/>
					    </bodytext>
					</person:bio.text>
				</person:bio>
			</person:person>

	</xsl:template>
    
    <xsl:template match="bio[addl-info]">
        
        <!--  Original Target XPath:  person:person/person:bio   -->
        <person:person>
            <person:bio>
                <xsl:apply-templates select="@* | node()"/>
            </person:bio>
        </person:person>
        
        
        
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
		<entity:govt-entity xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/">
			<xsl:apply-templates select="@* | node()"/>
		</entity:govt-entity>

	</xsl:template>

	<xsl:template match="role">

		<!--  Original Target XPath:  person:person/person:bio/person:bio.text/bodytext/p/text/person:person/role   -->
	    <role xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:apply-templates select="@* | node()"/>
		</role>

	</xsl:template>
    <!--<xsl:template match="@code-source">
        <xsl:attribute name="term-code-source">
            <xsl:value-of select="."/> 
        </xsl:attribute>  
    </xsl:template>-->

</xsl:stylesheet>