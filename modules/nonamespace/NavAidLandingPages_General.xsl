<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:index="urn:x-lexisnexis:content:publicationindex:sharedservices:1" xmlns:navaid="urn:x-lexisnexis:content:navigationaid:sharedservices:1" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="navaid-general">
  <title>General Mark-Up <lnpid>id-AU16-21031</lnpid></title>
  <body>
    <p>The topics in this section contain default conversion instructions for common source document elements. These conversion instructions should be used for all elements that do not match one of the special scenarios described in the <xref href="navaid-body.dita">Body section</xref>.
      </p>
    
    <p>When converting elements based on the instructions in this <b>General Mark-Up</b> section, if there is no <targetxml>navaid:list</targetxml> or <targetxml>index:index</targetxml> open (the instruction is not being used to convert to a subelement of an open <targetxml>navaid:list</targetxml> or <targetxml>index:index</targetxml>), then <b><u>a <targetxml>navaid:landingpagebody/bodytext</targetxml> element should be opened if it is not already open</u></b>.
          </p>
          
         </body>
         	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU16_navaid\NavAidLandingPages_General.dita  -->
	<!--<xsl:message>NavAidLandingPages_General.xsl requires manual development!</xsl:message> -->

</xsl:stylesheet>