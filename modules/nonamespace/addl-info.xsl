<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="addl-info">
  <title>addl-info <lnpid>id-MY02-16208</lnpid></title>
  
  <body>
    
    <p><sourcexml>bio/addl-info</sourcexml> becomes <targetxml>person:bio/person:bio.text</targetxml>. Create <targetxml>bodytext</targetxml> as child element of <targetxml>person:bio.text</targetxml> for handling child elements of <sourcexml>addl-info</sourcexml>.</p>    

    
<pre>

&lt;bio&gt;
    &lt;addl-info&gt;      
         &lt;p&gt;
            &lt;text&gt;
                &lt;company&gt;Universiti Utara Malaysia&lt;/company&gt;
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
                    &lt;entity:company&gt;Universiti Utara Malaysia&lt;/entity:company&gt;
                &lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/person:bio.text&gt;
&lt;/person:bio&gt;

</pre>  
    
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY02_Journals\addl-info.dita  -->
<!--	<xsl:message>addl-info.xsl requires manual development!</xsl:message> -->

    <!--  Vikas Rohilla : Handeled in the common module Rosetta_person-LxAdv-person.person.xsl  -->

    <!--<xsl:template match="addl-info">
        <person:bio.text>
            <bodytext>
                <xsl:apply-templates select="@* | node()"/>
            </bodytext>
        </person:bio.text>
    </xsl:template>-->

</xsl:stylesheet>