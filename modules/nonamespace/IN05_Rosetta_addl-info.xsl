<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="IN05_Rosetta_addl-info">
  <title>addl-info <lnpid>id-IN05-38810</lnpid></title>
  
  <body>
    
    <p><sourcexml>bio/addl-info</sourcexml> becomes <targetxml>person:bio/person:bio.text</targetxml>. Create <targetxml>bodytext</targetxml> as child element of <targetxml>person:bio.text</targetxml> for handling child elements of <sourcexml>addl-info</sourcexml>.</p>    

    
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
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN05-Articles\IN05_Rosetta_addl-info.dita  -->
	<xsl:message>IN05_Rosetta_addl-info.xsl requires manual development!</xsl:message> 

	<xsl:template match="bio/addl-info">

		<!--  Original Target XPath:  person:bio/person:bio.text   -->
		<person:bio>
			<person:bio.text>
				<xsl:apply-templates select="@* | node()"/>
			</person:bio.text>
		</person:bio>

	</xsl:template>

	<xsl:template match="addl-info">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>