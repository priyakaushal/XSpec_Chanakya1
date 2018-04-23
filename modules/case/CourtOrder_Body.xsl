<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:courtorder="urn:x-lexisnexis:content:courtorder:sharedservices:1"
	xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CourtOrder_Body">
  <title>Body <lnpid>id-AU07-19232</lnpid></title>
  <body>
    <p>
        <sourcexml>CASEDOC/case:body</sourcexml> becomes <targetxml>courtorder:courtorder/courtorder:body</targetxml>
        <ul>
            <li>
                <sourcexml>case:body/case:content</sourcexml> is a container element and need not be carried forward 
                in the conversion. However, all content must be converted such that the order of elements is maintained whenever possible. Please see the "Maintain the Order of Elements Whenever Possible" section for more information. The children are described below :
               
            </li>           
           
        </ul>
    </p>    
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU07_courtorder\CourtOrder_Body.dita  -->

	<xsl:template match="case:body">
		<courtorder:body>
			<xsl:apply-templates select="@*"/>
			<xsl:if test="heading[title][following-sibling::*[1][self::case:headnote[case:casename]]]">
				<xsl:apply-templates select="heading/title" mode="h"/>
			</xsl:if>	
			<xsl:choose>
				<xsl:when test="$streamID='NZ04'">
					<xsl:apply-templates select="case:headnote/case:factsummary,node() except (heading | case:headnote)"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="node() except (heading | case:headnote)"/>		
				</xsl:otherwise>
			</xsl:choose>
			
		</courtorder:body>
	</xsl:template>
	
	<xsl:template match="title" mode="h">
		<h>
			<xsl:copy-of select="if (@align) then @align else parent::heading/@align"/>
			<xsl:apply-templates/>
		</h>
	</xsl:template>
	

	<xsl:template match="case:content">
		<xsl:apply-templates/>
	</xsl:template>



</xsl:stylesheet>