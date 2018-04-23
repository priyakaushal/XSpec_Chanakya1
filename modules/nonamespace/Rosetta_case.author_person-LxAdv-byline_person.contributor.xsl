<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_case.author_person-to-LexisAdvance_byline_person.contributor">
    <title><sourcexml>case:author/person</sourcexml> to <targetxml>byline/person:contributor</targetxml> <lnpid>id-CCCC-10254</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:author/person</sourcexml> becomes
                    <targetxml>byline/person:contributor</targetxml> populated with a required
                attribute <targetxml>@contributor-type="author"</targetxml>. </p>
            <ul>
                <li>
                    <sourcexml>name.text</sourcexml> becomes <targetxml>person:person/person:name.text</targetxml>
                </li>
            </ul>
        </section>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;case:author&gt;
    &lt;person&gt;
        &lt;name.text&gt;SAM ROSEWARNE&lt;/name.text&gt;
        &lt;role&gt;BARRISTER&lt;/role&gt;
    &lt;/person&gt;
&lt;/case:author&gt;

	</codeblock>
        </example>
        
        <example>
            <title>Target XML</title>
            <codeblock>

&lt;byline&gt;
    &lt;person:contributor contributor-type="author"&gt;
        &lt;person:person&gt;
            &lt;person:name.text&gt;SAM ROSEWARNE&lt;/person:name.text&gt;
            &lt;role&gt;BARRISTER&lt;/role&gt;
        &lt;/person:person&gt;
    &lt;/person:contributor&gt;
&lt;/byline&gt;

	</codeblock>
        </example>      
        <section>
            <title>Changes</title>
            <p>2011-08-23: Created.</p>
        </section>
    </body>
	</dita:topic>

 <!-- MDS 2017-06-21 - Defined in /case/Rosetta_case.author-to-LexisAdvance_note-byline.xsl -->
	<!-- JD: 2017-06-28: need to create the person:contributor/person:person wrappers, which is not included in  /case/Rosetta_case.author-to-LexisAdvance_note-byline.xsl -->
    <!-- MDS 2017-06-29 - The person:contributor/person:person wrapper is too included in the /case/Rosetta_case.author-to-LexisAdvance_note-byline.xsl :-P -->
	<xsl:template match="case:author/person">
	    <xsl:choose>
	        <xsl:when test="child::name.text | child::role and $streamID='AU09'">
	            <person:contributor>
	                <xsl:attribute name="contributor-type">
	                    <xsl:text>author</xsl:text>
	                </xsl:attribute>
	            <person:person>			   
	                <xsl:apply-templates select="@* | node()"/>
	            </person:person>
	            </person:contributor>
	        </xsl:when>
	        <xsl:otherwise>
	            <person:person>			   
	                <xsl:apply-templates select="@* | node()"/>
	            </person:person>
	        </xsl:otherwise>
	    </xsl:choose>
	    <!--  Original Target XPath:  byline/person:contributor   -->		
			    
	</xsl:template>
    
	<!--<xsl:template match="name.text">

		<!-\-  Original Target XPath:  person:person/person:name.text   -\->
		<person:person>
			<person:name.text>
				<xsl:apply-templates select="@* | node()"/>
			</person:name.text>
		</person:person>

	</xsl:template>-->

</xsl:stylesheet>