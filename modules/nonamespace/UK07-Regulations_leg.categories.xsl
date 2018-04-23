<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:regulation="urn:x-lexisnexis:content:regulation:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.categories">
    <title>leg:categories <lnpid>id-UK07-28211</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:categories/leg:heading/subtitle</sourcexml> becomes
                    <targetxml>regulation:head/primlawinfo:primlawinfo/classify:classification[@classscheme="leg:categories"]/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</p>
            <note>Actually <sourcexml>leg:categories</sourcexml> generally occurs with descendant
                    <sourcexml>/leg:heading/subtitle</sourcexml>, so conversion need to move the
                existing contents of <sourcexml>leg:categories/leg:heading/subtitle</sourcexml> to
                NL element <targetxml>classify:classname</targetxml> as it is. So in this scenario
                Rosetta element <sourcexml>leg:heading</sourcexml> and
                    <sourcexml>subtitle</sourcexml> will be omitted during NL conversion.</note>
            <note> If <sourcexml>emph</sourcexml> occurs within <sourcexml>title</sourcexml> and
                    <sourcexml>subtitle</sourcexml> with the attribute's value
                    <sourcexml>emph[@typesytle="it"]</sourcexml> or
                    <sourcexml>emph[@typesytle="un"]</sourcexml> will be retained and all other
                    <sourcexml>emph</sourcexml> will be omitted from the NL conversion.</note>
            <note>If <sourcexml>h</sourcexml> direct child of <sourcexml>leg:categories</sourcexml>
                then conversion needs to mapped in target
                    <targetxml>classify:classification/@classscheme="leg:categories"/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.
                For more clarification please refer the example below:</note>
            <pre>

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


<b>Becomes</b>


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
            <pre>
<b>SOURCE XML</b>
&lt;leg:body&gt;
    &lt;leg:info&gt;
        &lt;!-- ETC. --&gt;
        &lt;leg:categories&gt;
            &lt;h align="center"&gt;
                &lt;emph typestyle="bf"&gt;CROFTING&lt;/emph&gt;
            &lt;/h&gt;
        &lt;/leg:categories&gt;
    &lt;/leg:info&gt;
    &lt;!-- ETC. --&gt;
&lt;/leg:body&gt; 

<b>TARGET XML</b> 

&lt;legis:head&gt;
    &lt;primlawinfo:primlawinfo&gt;
        &lt;!-- ETC. --&gt;
        &lt;classify:classification classscheme="leg:categories"&gt;
            &lt;classify:classitem&gt;
                &lt;classify:classitem-identifier&gt;
                    &lt;classify:classname&gt;
                        &lt;emph typestyle="bf"&gt;CROFTING&lt;/emph&gt;&lt;/classify:classname&gt;
                &lt;/classify:classitem-identifier&gt;
            &lt;/classify:classitem&gt;
        &lt;/classify:classification&gt;
    &lt;/primlawinfo:primlawinfo&gt;
&lt;/legis:head&gt;
&lt;legis:body&gt;
    &lt;!-- ETC. --&gt;
&lt;/legis:body&gt;               
            </pre>
        </section>
        <section>
            <title>Changes</title>
            <p>2016-12-05: <ph id="change_20161205_AS">Added instructions to handle <sourcexml>leg:categories/h/emph</sourcexml>.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.categories.dita  -->


	<xsl:template match="leg:categories">

		<!--  Original Target XPath:  regulation:head/primlawinfo:primlawinfo/classify:classification[@classscheme="leg:categories"]/classify:classitem/classify:classitem-identifier/classify:classname   -->
	    <classify:classification classscheme="leg:categories">
					<classify:classitem>
						<classify:classitem-identifier>
							<classify:classname>
								<xsl:value-of select="."/>
							</classify:classname>
						</classify:classitem-identifier>
					</classify:classitem>
				</classify:classification>

	</xsl:template>


</xsl:stylesheet>