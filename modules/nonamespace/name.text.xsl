<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="name.text">
  <title>name.text <lnpid>id-MY02-16222</lnpid></title>
  
  <body>
    <p>
      <ul>
        <li><sourcexml>name.text</sourcexml> becomes <targetxml>person:name.text</targetxml>                
        </li>       
      </ul>     
    </p>    
    
    <pre> 

&lt;jrnl:prelim&gt;   
    &lt;contrib&gt;        
        &lt;person searchtype="AUTHOR"&gt;&lt;name.text&gt;Andrew Stewart*&lt;/name.text&gt;&lt;/person&gt;        
    &lt;/contrib&gt;
&lt;/jrnl:prelim&gt;


<b>Becomes</b>


&lt;nitf:body.head&gt;
    &lt;nitf:byline&gt;
        &lt;person:contributor contributor-type="author"&gt; 
            &lt;person:person&gt;
                &lt;person:name.text&gt;Andrew Stewart*&lt;/person:name.text&gt;
            &lt;/person:person&gt;
        &lt;/person:contributor&gt;
&lt;/nitf:body.head&gt;

</pre>
      <section>
          <title>Changes</title>
          <p>2014-11-14: <ph id="change_20141114_PS">Change <targetxml>person:contributor/@contributor-type</targetxml> attribute value from Upper to lower case in the target.</ph></p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY02_Journals\name.text.dita  -->
<!--	<xsl:message>name.text.xsl requires manual development!</xsl:message> -->

    <!--Vikas Rohilla : Handeled in the Common module Rosetta_person-LxAdv-person.person.xsl -->

	<!--<xsl:template match="name.text">
		<person:name.text>
			<xsl:apply-templates select="@* | node()"/>
		</person:name.text>

	</xsl:template>-->

</xsl:stylesheet>