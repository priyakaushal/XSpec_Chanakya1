<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.govoffice">
    
    <title>leg:govoffice <lnpid>id-CN01-15217</lnpid></title>
  <body> 
       <p>       
         <ul>
             <li><sourcexml>leg:govoffice</sourcexml> becomes
                        <targetxml>jurisinfo:govbodyname</targetxml> . <pre>
              
                 &lt;leg:govoffice&gt;National People&amp;#x0027;s Congress&lt;/leg:govoffice&gt;
              
              
              <b>Becomes</b>
              
             
               &lt;jurisinfo:govbodyname&gt;National People's Congress&lt;/jurisinfo:govbodyname&gt;
                     
                  </pre>
                </li>
     
     </ul>         
     </p>
 <section>
       <title>Changes</title>
       <p>2014-04-08: <ph id="change_20140408_BRT">Created</ph>.</p>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\CN01-Legislation\leg.govoffice_jurisinfo.govbodyname.dita  -->
	<xsl:message>leg.govoffice_jurisinfo.govbodyname.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:govoffice">

		<!--  Original Target XPath:  jurisinfo:govbodyname   -->
		<jurisinfo:govbodyname>
			<xsl:apply-templates select="@* | node()"/>
		</jurisinfo:govbodyname>

	</xsl:template>

</xsl:stylesheet>