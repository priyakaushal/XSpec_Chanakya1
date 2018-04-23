<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita comm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="common_rosetta_comm.info-person-to-LexisAdvance-dc.contributor">
	<title><sourcexml>COMMENTARYDOC/comm:info/contrib[person]</sourcexml>
		<lnpid>id-CCCC-10526</lnpid></title>
	<body>
		<section>
			<title>Instructions <i>[common element]</i></title>
			<p><sourcexml>COMMENTARYDOC/comm:info/contrib</sourcexml> maps to 
				<targetxml>doc:metadata/doc:docinfo/dc:metadata/dc:contributor</targetxml>, using 
				the following rules for the content of <sourcexml>contrib</sourcexml>. All of the 
				content of a single <sourcexml>contrib</sourcexml> element maps to content of the same 
				<targetxml>dc:contributor</targetxml> element in the target document:<ul>
					<li>Text directly within <sourcexml>contrib</sourcexml> (i.e. not text within child 
						elements or descendant elements) becomes text within 
						<targetxml>dc:contributor</targetxml>.</li>
					<li><sourcexml>person</sourcexml> becomes 
						<targetxml>person:contributor[contributor-type="contributor"]</targetxml>, and remains in 
						the same placement within any mixed text as it was in the source document. 
						Convert <sourcexml>person</sourcexml>
						to <targetxml>person:contributor/person:person</targetxml> following the instructions provided in <xref href="Rosetta_person-LxAdv-person.person.dita">person to person:person</xref></li>
					<li>Any elements within <sourcexml>contrib</sourcexml> not mentioned above in this list 
						are dropped when creating 
						<targetxml>dc:contributor</targetxml>. Note that this dropped content 
						might be used by a different mapping rule in this document, but it is not 
						transferred into <targetxml>dc:contributor</targetxml>.</li>
				</ul>
			</p>
		</section>
		
		<example>
			<title>Source COMMENTARYDOC/comm:info/contrib</title>				
			<codeblock>

&lt;comm:info&gt;
	&lt;contrib&gt;By &lt;person&gt;
			&lt;name.text&gt;Marcia E. Goodman&lt;/name.text&gt;
			&lt;remotelink href="http://www.lexisnexis.com/en-us/practice-advisor-authors/intellectual-property-technology.page#zzzz" hrefclass="http"&gt;Marcia E. Goodman&lt;/remotelink&gt;
		&lt;/person&gt; and &lt;person&gt;
			&lt;name.text&gt;Lori Zahalka&lt;/name.text&gt;
			&lt;remotelink href="http://www.lexisnexis.com/en-us/practice-advisor-authors/intellectual-property-technology.page#zzzz" hrefclass="http"&gt;Lori Zahalka&lt;/remotelink&gt;
		&lt;/person&gt;(partners), and &lt;person&gt;
			&lt;name.text&gt;Richard E. Nowalk&lt;/name.text&gt;
			&lt;remotelink href="http://www.lexisnexis.com/en-us/practice-advisor-authors/intellectual-property-technology.page#michael-j-kasdan" hrefclass="http"&gt;Richard E. Nowalk&lt;/remotelink&gt;
		&lt;/person&gt; (associate), Mayer Brown LLP.&lt;note&gt;
			&lt;p&gt;
				&lt;text&gt;
					&lt;emph typestyle="ib"&gt;Form and Drafting Notes Provided for Use in Lexis
                            Practice Advisor By:&lt;/emph&gt;
					&lt;url&gt;
						&lt;remotelink href="www.lexisnexis.com/en-us/practice-advisor-authors/intellectual-property-technology.page#michael-j-kasdan" hrefclass="http" newwindow="YES"&gt;Michael J.
                            Kasdan&lt;/remotelink&gt;
					&lt;/url&gt;, Wiggin and Dana LLP&lt;/text&gt;
			&lt;/p&gt;
		&lt;/note&gt;
	&lt;/contrib&gt;
&lt;/comm:info&gt;

			</codeblock>
			
			<title>Target form:clause/form:info/form:clausecaption</title>
			<codeblock>

&lt;doc:metadata&gt;
	&lt;doc:docinfo doc-content-country="US"&gt;
		&lt;dc:metadata&gt;
			...			
			&lt;dc:contributor&gt;
					&lt;person:person&gt;
						&lt;person:name.text&gt;J. Bryan Echols&lt;/person:name.text&gt;
					&lt;/person:person&gt;
					&lt;ref:lnlink service="URL"&gt;
						&lt;ref:marker&gt;J. Bryan Echols&lt;/ref:marker&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="URL"/&gt;
								&lt;ref:key-value value="http://www.lexisnexis.com/en-us/practice-advisor-authors/zzzz"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/person:contributor&gt;, &lt;person:contributor contributor-type="contributor"&gt;
					&lt;person:person&gt;
						&lt;person:name.text&gt;Waller Lansden Dortch&lt;/person:name.text&gt;
					&lt;/person:person&gt;
					&lt;ref:lnlink service="URL"&gt;
						&lt;ref:marker&gt;Waller Lansden Dortch&lt;/ref:marker&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="URL"/&gt;
								&lt;ref:key-value value="http://www.lexisnexis.com/en-us/practice-advisor-authors/zzzz"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/person:contributor&gt; &amp;amp; &lt;person:contributor contributor-type="contributor"&gt;
					&lt;person:person&gt;
						&lt;person:name.text&gt;Davis&lt;/person:name.text&gt;
					&lt;/person:person&gt;
					&lt;ref:lnlink service="URL"&gt;
						&lt;ref:marker&gt;Davis&lt;/ref:marker&gt;
						&lt;ref:locator&gt;
							&lt;ref:locator-key&gt;
								&lt;ref:key-name name="URL"/&gt;
								&lt;ref:key-value value="http://www.lexisnexis.com/en-us/practice-advisor-authors/zzzz"/&gt;
							&lt;/ref:locator-key&gt;
						&lt;/ref:locator&gt;
					&lt;/ref:lnlink&gt;
				&lt;/person:contributor&gt; LLP&lt;/dc:contributor&gt;
		   ...
		&lt;/dc:metadata&gt;
		...
	&lt;/doc:docinfo&gt;
&lt;/doc:metadata&gt;

			</codeblock>
		</example>
		
		<section>
			<title>Changes</title>
			<p>2017-02-07: <ph id="change_20170207_snb">LPA 2016 enhancements: Change the title of this section 
				to reflect that this is a mapping for when <sourcexml>comm:info/contrib</sourcexml> contains 
				a <sourcexml>person</sourcexml>, but doesnt just map that element. Changed mapping to map text content of
				<sourcexml>comm:info/contrib</sourcexml> as 
				well as <sourcexml>comm:info/contrib/person</sourcexml> to be content of 
				<targetxml>dc:contributor</targetxml>. This change allows editorially-created text content with author 
				embedded to be mapped to LexisAdvance content for display in the author section of the target 
				document. Updated the example accordingly.</ph></p>
			<p>2015-07-16: <ph id="change_20150716_bmh">Created new instruction for conversion of
						<sourcexml>contrib/person</sourcexml> to
					<targetxml>doc:metadata/dc:contributor</targetxml>.</ph></p>
		</section>
	</body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_contrib-person.dita  -->
	<!--<xsl:message>Rosetta_contrib-person.xsl requires manual development!</xsl:message>--> 

	<xsl:template match="COMMENTARYDOC/comm:info/contrib[person]">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/dc:metadata/dc:contributor   -->
		<doc:metadata>
			<doc:docinfo>
				<dc:metadata>
					<dc:contributor>
						<xsl:apply-templates select="@* | node()"/>
					</dc:contributor>
				</dc:metadata>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="COMMENTARYDOC/comm:info/contrib">

		<!--  Original Target XPath:  doc:metadata/doc:docinfo/dc:metadata/dc:contributor   -->
		<doc:metadata>
			<doc:docinfo>
				<dc:metadata>
					<dc:contributor>
						<xsl:apply-templates select="@* | node()"/>
					</dc:contributor>
				</dc:metadata>
			</doc:docinfo>
		</doc:metadata>

	</xsl:template>

	<xsl:template match="contrib">

		<!--  Original Target XPath:  dc:contributor   -->
		<dc:contributor>
			<xsl:apply-templates select="@* | node()"/>
		</dc:contributor>

	</xsl:template>

	<xsl:template match="person">

		<!--  Original Target XPath:  person:contributor[contributor-type="contributor"]   -->
		<person:contributor>
			<xsl:apply-templates select="@* | node()"/>
		</person:contributor>

	</xsl:template>

	<xsl:template match="comm:info/contrib[not(child::note)]" priority="2">

		<!--  Original Target XPath:  dc:contributor   -->
		<dc:contributor>
			<xsl:apply-templates select="@* | node()"/>
		</dc:contributor>

	</xsl:template>

	<xsl:template match="comm:info/contrib/person">

		<!--  Original Target XPath:  dc:contributor   -->
		<dc:contributor>
			<xsl:apply-templates select="@* | node()"/>
		</dc:contributor>

	</xsl:template>

	<xsl:template match="contrib/person">

		<!--  Original Target XPath:  doc:metadata/dc:contributor   -->
		<doc:metadata>
			<dc:contributor>
				<xsl:apply-templates select="@* | node()"/>
			</dc:contributor>
		</doc:metadata>

	</xsl:template>

</xsl:stylesheet>