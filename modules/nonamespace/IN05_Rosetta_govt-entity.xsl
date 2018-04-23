<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:entity="http://www.lexisnexis.com/xmlschemas/content/shared/identified-entities/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN05_Rosetta_govt-entity">
  <title>govt-entity <lnpid>id-IN05-38819</lnpid></title>
  
  <body>
    <p>
      <ul>
        <li><sourcexml>govt-entity</sourcexml> becomes <targetxml>entity:govt-entity</targetxml>.                  
        </li>       
      </ul>     
    </p>    
    
    <pre> 

&lt;bio&gt;
    &lt;addl-info&gt;        
        &lt;p&gt;
            &lt;text&gt;
                &lt;govt-entity&gt; New Delhi.&lt;/govt-entity&gt;
            &lt;/text&gt;
        &lt;/p&gt;
    &lt;/addl-info&gt;
&lt;/bio&gt;


<b>Becomes</b>


&lt;person:bio&gt;
    &lt;person:bio.text&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;
                    &lt;entity:govt-entity&gt; New Delhi.&lt;/entity:govt-entity&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/person:bio.text&gt;
&lt;/person:bio&gt;

</pre>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN05-Articles\IN05_Rosetta_govt-entity.dita  -->
	<xsl:message>IN05_Rosetta_govt-entity.xsl requires manual development!</xsl:message> 

	<xsl:template match="govt-entity">

		<!--  Original Target XPath:  entity:govt-entity   -->
		<entity:govt-entity>
			<xsl:apply-templates select="@* | node()"/>
		</entity:govt-entity>

	</xsl:template>

</xsl:stylesheet>