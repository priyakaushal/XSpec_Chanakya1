<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.categories">
    <title>leg:categories <lnpid>id-ST04-26813</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:categories/leg:heading/subtitle</sourcexml> becomes <targetxml>regulation:head/primlawinfo:primlawinfo/classify:classification[@classscheme="leg:categories"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</p>
            <note>Actually <sourcexml>leg:categories</sourcexml> generally occurs with descendant
                    <sourcexml>/leg:heading/subtitle</sourcexml>, so conversion need to move the
                existing contents of <sourcexml>leg:categories/leg:heading/subtitle</sourcexml> to
                NL element <targetxml>classify:classname</targetxml> as it is. So in this scenario
                Rosetta element <sourcexml>leg:heading</sourcexml> and
                    <sourcexml>subtitle</sourcexml> will be omitted during NL conversion.</note>
            <note>
                If <sourcexml>emph</sourcexml> occurs within <sourcexml>title</sourcexml> and <sourcexml>subtitle</sourcexml> with the attribute's value <sourcexml>emph[@typesytle="it"]</sourcexml> or <sourcexml>emph[@typesytle="un"]</sourcexml> will be retained and all other <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
            <pre>
                <b><i>Source example based on UK content</i></b>

&lt;leg:body&gt;
    .......
    &lt;leg:info subseqdoc="false"&gt;
        ..........
        &lt;leg:categories&gt;
            &lt;leg:heading searchtype="LEGISLATION"&gt;
                &lt;subtitle&gt;
                    &lt;emph typestyle="bf"&gt;SUPREME COURT OF ENGLAND AND WALES&lt;/emph&gt;
                    &lt;nl/&gt;
                    &lt;emph typestyle="bf"&gt;COUNTY COURTS&lt;/emph&gt;
                &lt;/subtitle&gt;
            &lt;/leg:heading&gt;
        &lt;/leg:categories&gt;
        ..........
    &lt;/leg:info&gt;
    .........
&lt;/leg:body&gt;


</pre>
                <pre>

              <b><i>Target Example</i></b>



&lt;regulation:head&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;classify:classification classscheme="leg:categories"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;SUPREME COURT OF ENGLAND AND WALES&lt;proc:nl/&gt;COUNTY COURTS&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/regulation:head&gt;

            </pre>
        </section>    
    <section>
      <title>Changes</title>
      <p>YYYY-MM-DD: ______________________________________________________________________.</p>
    </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Regulation\leg.categories.dita  -->
	<xsl:message>leg.categories.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:categories/leg:heading/subtitle">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/classify:classification[@classscheme="leg:categories"]/classify:classitem/classify:classitem-identifier/classify:classname   -->
		<regulation:head>
			<primlawinfo:primlawinfo xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/">
				<classify:classification>
					<classify:classitem>
						<classify:classitem-identifier>
							<classify:classname>
								<xsl:apply-templates select="@* | node()"/>
							</classify:classname>
						</classify:classitem-identifier>
					</classify:classitem>
				</classify:classification>
			</primlawinfo:primlawinfo>
		</regulation:head>

	</xsl:template>

	<xsl:template match="leg:categories">

		<!--  Original Target XPath:  classify:classname   -->
		<classify:classname>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classname>

	</xsl:template>

	<xsl:template match="/leg:heading/subtitle">

		<!--  Original Target XPath:  classify:classname   -->
		<classify:classname>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classname>

	</xsl:template>

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="subtitle">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="emph">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="emph[@typesytle=&#34;it&#34;]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="emph[@typesytle=&#34;un&#34;]">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>