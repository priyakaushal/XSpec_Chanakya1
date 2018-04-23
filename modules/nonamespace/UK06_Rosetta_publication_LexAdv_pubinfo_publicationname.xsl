<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/"
xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="UK09LegalNews_publication">
    <title>publication <lnpid>id-UK06-28053</lnpid></title>

    <body>
        <p><sourcexml>publication</sourcexml> becomes
                <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml>.</p>
        <example>
            <title>Source XML</title>
            <codeblock>

&lt;leg:info&gt;
    &lt;publication&gt;OJ L42 23.2.1970 p16&lt;/publication&gt;
    ...
&lt;/leg:info&gt;

           </codeblock>
            <title>Target XML</title>
            <codeblock>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:publicationname&gt;OJ L42 23.2.1970 p16&lt;/pubinfo:publicationname&gt;
        ...
    &lt;/pubinfo:pubinfo&gt;
    ...
&lt;/doc:metadata&gt;

           </codeblock>
        </example>
        <section>
            <title>Changes</title>           
            <p>2016-12-16: <ph id="change_20161216_AS">Created</ph></p>
        </section>   
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK06-LawsActsBillsMeasures\UK06_Rosetta_publication_LexAdv_pubinfo_publicationname.dita  -->
	
    <!-- Sudhanshu Srivastava 
         Edited :- 19 june 2017.
         Comments :- This is content specific module handling publication element.
    -->
	<xsl:template match="publication">
		<!--  Original Target XPath:  doc:metadata/pubinfo:pubinfo/pubinfo:publicationname   -->
				<pubinfo:publicationname>
					<xsl:apply-templates select="@* | node()"/>
				</pubinfo:publicationname>
	</xsl:template>

</xsl:stylesheet>