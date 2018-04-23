<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_level5">
  <title><sourcexml>level</sourcexml> encountered without attribute <lnpid>id-NZ09-24224</lnpid></title>
  <body>
    <section>
      <p><b>If in the source document a <sourcexml>level</sourcexml> with no attributes is encountered and it has no content except children <sourcexml>level</sourcexml>, then drop the outer <sourcexml>level</sourcexml> wrapper in these circumstances.</b></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ09_Comm_Form_Prec_Text\Comm-Form-Pre_level5.dita  -->
	
	<xsl:template match="level[not(@*)][level][not(child::*[2])]" priority="30">
		<xsl:apply-templates/>		
	</xsl:template>

</xsl:stylesheet>