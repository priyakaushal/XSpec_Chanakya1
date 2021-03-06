<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:person="http://www.lexisnexis.com/xmlschemas/content/shared/person/1/" version="2.0" exclude-result-prefixes="dita dig">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dig.age">
   <title>dig:age <lnpid>id-CA02DC-12625</lnpid></title>
   <body>
      <section>
         <ul>
            <li>
               <sourcexml>dig:age/age</sourcexml> becomes <targetxml>person:age</targetxml>. And
                  <sourcexml>@searchtype</sourcexml> will be suppressed during conversion. <pre xml:space="preserve">

&lt;dig:age searchtype="EMPLOYEE-AGE"&gt;
    &lt;age&gt;50&lt;/age&gt;
&lt;/dig:age&gt; 

                    </pre>
               <b>Becomes</b>
               <pre xml:space="preserve">
    
&lt;person:age&gt;50&lt;/person:age&gt; 

               </pre>
            </li>
         </ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DC_DIGESTDOC_to_casedigest\dig.age.dita  -->
	 
<!--Vikas Rohilla : updated the template Initilal  -->
   <xsl:template match="dig:age">
      <xsl:apply-templates select="node()|@*"/>
   </xsl:template>
	
   <xsl:template match="dig:age/age">
		<person:age>
			<xsl:apply-templates select="@* | node()"/>
		</person:age>

	</xsl:template>

   <xsl:template match="dig:age/@searchtype"/>

</xsl:stylesheet>