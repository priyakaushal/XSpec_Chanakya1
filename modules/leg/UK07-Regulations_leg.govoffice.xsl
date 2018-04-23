<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"	
    xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:legis="http://www.lexisnexis.com/xmlschemas/content/legal/legislation/1/" version="2.0" exclude-result-prefixes="dita leg jurisinfo">
    
	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.govoffice">
    <title>leg:govoffice <lnpid>id-UK07-28214</lnpid></title>
    <body>
        <section>
            <p><sourcexml>leg:govoffice</sourcexml> becomes <targetxml>regulation:head/jurisinfo:legisbodyinfo/jurisinfo:approvedby/jurisinfo:govbodyname</targetxml>.</p> 
        </section>
        <example>         
            <codeblock>

&lt;leg:info&gt;
    ......
    &lt;leg:govoffice&gt;
        &lt;emph typestyle="it"&gt;Approved by the Scottish Parliament&lt;/emph&gt;
    &lt;/leg:govoffice&gt;
    ......
&lt;/leg:info&gt;

            </codeblock>
            
      <b>Becomes</b>
            
      <codeblock>

&lt;regulation:head&gt;
    &lt;jurisinfo:legisbodyinfo&gt;
        &lt;jurisinfo:approvedby&gt;
            &lt;jurisinfo:govbodyname&gt;
                &lt;emph typestyle="it"&gt;Approved by the Scottish Parliament&lt;/emph&gt;
            &lt;/jurisinfo:govbodyname&gt;
        &lt;/jurisinfo:approvedby&gt;
    &lt;/jurisinfo:legisbodyinfo&gt;
&lt;/regulation:head&gt;
          
      </codeblock>      
        </example>    
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK07-Regulations\leg.govoffice.dita  -->
	



		<!--  Original Target XPath:  regulation:head/jurisinfo:legisbodyinfo/jurisinfo:approvedby/jurisinfo:govbodyname   -->
		
	    <xsl:template match="leg:govoffice">
	        <!--  Original Target XPath:  legis:head/jurisinfo:legisbodyinfo/jurisinfo:approvedby/jurisinfo:govbodyname   -->
	        <jurisinfo:approvedby>
	            <jurisinfo:govbodyname>
	                <xsl:apply-templates select="@* | node()"/>
	            </jurisinfo:govbodyname>
	        </jurisinfo:approvedby>
	    </xsl:template>

	

</xsl:stylesheet>