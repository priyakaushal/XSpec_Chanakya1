<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:jrnl="http://www.lexis-nexis.com/glp/jrnl" xmlns:nitf="http://iptc.org/std/NITF/2006-10-18/" version="2.0" exclude-result-prefixes="dita jrnl">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Journaldoc-jrnl_topic">
    <title>jrnl:topic <lnpid>id-ST09-32628</lnpid></title>
    <body>
        <p><sourcexml>jrnl:topic</sourcexml> becomes
                <targetxml>nitf:body.head/nitf:hedline/nitf:hl2</targetxml>.
                <sourcexml>heading</sourcexml> and <sourcexml>subtitle</sourcexml> elements inside
                <sourcexml>jrnl:topic</sourcexml> are omitted, but any children of
                <sourcexml>subtitle</sourcexml> are mapped to children of
                <targetxml>nitf:hl2</targetxml>. </p>
        <p>If <sourcexml>emph</sourcexml> is present inside <sourcexml>subtitle</sourcexml>, it
            should be omitted.</p>
        <p>If <sourcexml>jrnl:topic</sourcexml> and its children do not contain any textual content,
        then it should be suppressed.</p>
        
<pre>
     <b><i>Source example based on AU content</i></b>

&lt;jrnl:prelim searchtype="ARTICLE"&gt;
    &lt;jrnl:articletitle&gt;
        &lt;emph typestyle="bf"&gt;How to avoid a bad trip in e-commerce&lt;/emph&gt;
    &lt;/jrnl:articletitle&gt;
    &lt;jrnl:topic&gt;
        &lt;heading&gt;
            &lt;subtitle&gt;Commercial fraud Part 2&lt;/subtitle&gt;
        &lt;/heading&gt;
    &lt;/jrnl:topic&gt;
    &lt;jrnl:topic&gt;
        &lt;heading&gt;
            &lt;subtitle/&gt;
        &lt;/heading&gt;
    &lt;/jrnl:topic&gt;
    ...
&lt;/jrnl:prelim&gt;

<b>Becomes</b>

&lt;nitf:body.head&gt;
    &lt;nitf:hedline&gt;
        &lt;nitf:hl1&gt;How to avoid a bad trip in e-commerce&lt;/nitf:hl1&gt;
        &lt;nitf:hl2&gt;Commercial fraud Part 2&lt;/nitf:hl2&gt;
    &lt;/nitf:hedline&gt;
    ...
&lt;/nitf:body.head&gt;
</pre>
        <section>
            <title>Changes</title>
            <p>Created.</p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Newsitem\Journaldoc-jrnl_topic.dita  -->
	<xsl:message>Journaldoc-jrnl_topic.xsl requires manual development!</xsl:message> 

	<xsl:template match="jrnl:topic">

		<!--  Original Target XPath:  nitf:body.head/nitf:hedline/nitf:hl2   -->
		<nitf:body.head>
			<nitf:hedline>
				<nitf:hl2>
					<xsl:apply-templates select="@* | node()"/>
				</nitf:hl2>
			</nitf:hedline>
		</nitf:body.head>

	</xsl:template>

	<xsl:template match="heading">

		<!--  Original Target XPath:  nitf:hl2   -->
		<nitf:hl2>
			<xsl:apply-templates select="@* | node()"/>
		</nitf:hl2>

	</xsl:template>

	<xsl:template match="subtitle">

		<!--  Original Target XPath:  nitf:hl2   -->
		<nitf:hl2>
			<xsl:apply-templates select="@* | node()"/>
		</nitf:hl2>

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>