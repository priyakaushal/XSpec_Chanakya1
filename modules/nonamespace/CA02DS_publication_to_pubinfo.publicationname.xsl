<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:doc="http://www.lexisnexis.com/xmlschemas/content/shared/document-level-metadata/1/" xmlns:pubinfo="http://www.lexisnexis.com/xmlschemas/content/shared/publication-info/1/" version="2.0" exclude-result-prefixes="dita pubinfo">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="publication">
    <title>publication <lnpid>id-CA02DS-12838</lnpid></title>
   <body>
      <section>
<ul>
         <li>
                    <sourcexml>publication</sourcexml>
             becomes <targetxml>doc:metadata/pubinfo:pubinfo/pubinfo:publicationname</targetxml>. 
             <pre>


&lt;publication&gt;Quantum - Determination de la peine&lt;/publication&gt;

                    </pre>
                    <b>Becomes</b>
                    <pre>

&lt;doc:metadata&gt;
    &lt;pubinfo:pubinfo&gt;
        &lt;pubinfo:publicationname&gt;Quantum - Determination de la peine&lt;/pubinfo:publicationname&gt;
    &lt;/pubinfo:pubinfo&gt;
&lt;/doc:metadata&gt;    
    

               </pre>
                </li>
    
      </ul>
</section>
   </body>
	</dita:topic>

	<!--  @@@This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\publication.dita  -->
	

    <!-- Vikas Rohilla : Template match publication and create pubinfo:publicationname -->
    <xsl:template match="publication">
        <pubinfo:publicationname>
            <xsl:apply-templates select="@* | node()"/>
        </pubinfo:publicationname>
    </xsl:template>

</xsl:stylesheet>