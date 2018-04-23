<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
	version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote_case.info_case.courtinfo">
   <title>case:courtinfo <lnpid>id-AU07-19219</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote/case:info/case:courtinfo</sourcexml> becomes 
                        <targetxml class="+ topic/keyword xml-d/targetxml ">courtorder:head/jurisinfo:courtinfo</targetxml>.
                        The children are described below :
                        
                            
                            </li>
                        </ul>                   
      </section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\case.courtinfo.dita  -->
	

	<xsl:template match="case:headnote/case:info/case:courtinfo">
		<jurisinfo:courtinfo >
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="case:courtcode"/>
			<xsl:apply-templates select="case:courtname"/>
			<xsl:apply-templates select="case:juris"/>
		</jurisinfo:courtinfo>
	</xsl:template>

</xsl:stylesheet>