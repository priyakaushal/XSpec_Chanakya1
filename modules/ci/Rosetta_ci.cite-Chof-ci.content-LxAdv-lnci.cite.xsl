<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ci="http://www.lexis-nexis.com/ci" xmlns:lnci="http://www.lexisnexis.com/xmlschemas/content/shared/citations/1/" version="2.0" exclude-result-prefixes="dita ci">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_ci.cite-Chof-ci.content-LxAdv-lnci.cite">
    <title><sourcexml>ci:cite/ci:content/ci:cite</sourcexml> to
            <targetxml>lnci:cite</targetxml> <lnpid>id-CCCC-10507</lnpid></title>
    <body>
        <p>This rule only applies if and only if <b><u>all</u></b> of the following are true: <ul>
                <li>The XPaths <sourcexml>text/ci:cite/ci:content/ci:cite</sourcexml> or
                        <sourcexml>entry/ci:cite/ci:content/ci:cite</sourcexml> occur.</li>
                <li>The outer <sourcexml>ci:cite</sourcexml> (the direct child of
                    <sourcexml>text</sourcexml> or <sourcexml>entry</sourcexml>) in either of the above XPaths <b><u>does
                            not</u></b> have the attribute
                    <sourcexml>ci:cite/@type</sourcexml>.</li>
                <li>The outer <sourcexml>ci:cite</sourcexml> in either of the above XPaths contains other direct child elements
                            <b><u>in addition</u></b> to <sourcexml>ci:content</sourcexml>.</li>
            </ul>
        </p>
        <p>If <b><u>all</u></b> of the above conditions are true, each inner <sourcexml>ci:cite</sourcexml> (the
            direct child of <sourcexml>ci:content</sourcexml>) is moved outside the outer
            <sourcexml>ci:cite</sourcexml> so that the inner <sourcexml>ci:cite</sourcexml> becomes the immediate next sibling of the outer <sourcexml>ci:cite</sourcexml> (and also now a
            direct child of <sourcexml>text</sourcexml> or <sourcexml>entry</sourcexml>). Conversion
            is then done on the <sourcexml>ci:cite</sourcexml> elements as described in the topic
                <xref href="Rosetta_ci.cite-LxAdv-lnci.cite.dita"/>.</p>  
        <note>For another special scenario where the outer <sourcexml>ci:cite</sourcexml>
            <b><u>does</u></b> have the attribute <sourcexml>ci:cite/@type</sourcexml> and
            contains <sourcexml>ci:content</sourcexml> as its <b><u>only child</u></b>, please
            refer to the topic <xref href="Rosetta_UK_ci.cite-Chof-ci.content-LxAdv-lnci.cite.dita"/>.</note>
        <example>
            <title>Source XML </title>
            <codeblock>

&lt;text&gt;ECO provides funding for energy efficiency improvements 
    (carbon savings and heating cost reductions) worth approximately 
    £1.3 billion every year and was introduced through...
    &lt;!-- outer ci:cite element --&gt;
    &lt;ci:cite searchtype="LEG-REF" status="invalid"&gt;
      &lt;ci:sesslaw&gt;
        &lt;ci:sesslawinfo&gt;
          &lt;ci:sesslawnum num="1986_44a_Title"/&gt;
        &lt;/ci:sesslawinfo&gt;
        &lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;
      &lt;/ci:sesslaw&gt;
      &lt;ci:content&gt;GA 1986,
        &lt;!-- inner ci:cite element --&gt;
        &lt;ci:cite searchtype="LEG-REF" status="invalid"&gt;
          &lt;ci:sesslaw&gt;
            &lt;ci:sesslawinfo&gt;&lt;ci:sesslawnum num="1989_29a"/&gt;
              &lt;ci:hierpinpoint&gt;&lt;ci:hierlev label="section" num="41A"/&gt;&lt;/ci:hierpinpoint&gt;
            &lt;/ci:sesslawinfo&gt;
            &lt;ci:sesslawref&gt;&lt;ci:standardname normpubcode="UK_ACTS"/&gt;&lt;/ci:sesslawref&gt;
          &lt;/ci:sesslaw&gt;
          &lt;ci:content&gt;Electricity Act 1989, s 41A&lt;/ci:content&gt;
        &lt;/ci:cite&gt;
      &lt;/ci:content&gt;
    &lt;/ci:cite&gt; 
    ...and is implemented through...
&lt;/text&gt;

            </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;text&gt;ECO provides funding for energy efficiency improvements 
    (carbon savings and heating cost reductions) worth approximately 
    £1.3 billion every year and was introduced through...
    &lt;lnci:cite&gt;
        &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;
                &lt;lnci:sesslawnum num="1986_44a_Title"/&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;&lt;lnci:standardname normpubcode="UK_ACTS"/&gt;&lt;/lnci:sesslawref&gt;
        &lt;/lnci:sesslaw&gt;
        &lt;lnci:content&gt;GA 1986, &lt;/lnci:content&gt;
    &lt;/lnci:cite&gt; 
    &lt;lnci:cite&gt;
        &lt;lnci:sesslaw&gt;
            &lt;lnci:sesslawinfo&gt;&lt;lnci:sesslawnum num="1989_29a"/&gt;
                &lt;lnci:hierpinpoint&gt;&lt;lnci:hierlev label="section" num="41A"/&gt;&lt;/lnci:hierpinpoint&gt;
            &lt;/lnci:sesslawinfo&gt;
            &lt;lnci:sesslawref&gt;&lt;lnci:standardname normpubcode="UK_ACTS"/&gt;&lt;/lnci:sesslawref&gt;
        &lt;/lnci:sesslaw&gt;
        &lt;lnci:content&gt;Electricity Act 1989, s 41A&lt;/lnci:content&gt;
    &lt;/lnci:cite&gt;
    ...and is implemented through...
&lt;/text&gt;

            </codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2014-10-24: <ph id="change_20141024_JCG">Added this instruction.  (R4.5 Content Issue List #1995)</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\common_newest\Rosetta_ci.cite-Chof-ci.content-LxAdv-lnci.cite.dita  -->
<!--	<xsl:message>Rosetta_ci.cite-Chof-ci.content-LxAdv-lnci.cite.xsl requires manual development!</xsl:message> -->

	<xsl:template match="ci:cite/ci:content/ci:cite">

		<!--  Original Target XPath:  lnci:cite   -->
		<lnci:cite>
			<xsl:apply-templates select="@* | node()"/>
		</lnci:cite>

	</xsl:template>

	<xsl:template match="text/ci:cite/ci:content/ci:cite">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="entry/ci:cite/ci:content/ci:cite">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="ci:cite">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="text">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="entry">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="ci:cite/@type">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<!--<xsl:apply-templates select="@* | node()"/>-->
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="ci:content">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<!--<xsl:apply-templates select="@* | node()"/>-->
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>