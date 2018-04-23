<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="publication">
    
    <title>publication <lnpid>id-MY02-16226</lnpid></title>
    
    <body>
        
        <p><sourcexml>publication</sourcexml> becomes <targetxml>pubinfo:pubinfo/pubinfo:publicationname</targetxml>.</p>
        <note>The target mapping will be part of <targetxml>doc:metadata</targetxml>.</note>
        
<pre>

&lt;jrnl:info&gt;
   &lt;publication&gt; Articles&lt;/publication&gt;
&lt;!--...--&gt;
&lt;/jrnl:info&gt;	


<b>Becomes</b>


&lt;doc:metadata&gt;
    &lt;doc:docinfo&gt;
        &lt;!-- ... --&gt;
    &lt;/doc:docinfo&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:publicationname&gt; Articles&lt;/pubinfo:publicationname&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;

</pre>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY02_Journals\publication.dita  -->
<!--	<xsl:message>MY02_Journals_publication.xsl requires manual development!</xsl:message> -->

	<xsl:template match="publication">
		<pubinfo:publicationname>
			<xsl:apply-templates/>
		</pubinfo:publicationname>
	</xsl:template>

</xsl:stylesheet>