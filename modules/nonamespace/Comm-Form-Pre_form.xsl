<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_form">
  <title><sourcexml>form</sourcexml> <lnpid>id-AU05-18810</lnpid></title>
  <body>
    <section>
      <p><sourcexml>form</sourcexml> becomes <targetxml>form:form</targetxml> and children described as below:
        <ul>
          <li>Create <targetxml>form:document</targetxml> with <targetxml>[@annotated="false"]</targetxml>, <targetxml>[@official="false"]</targetxml> and <targetxml>[@typeofdoc="unnamed"]</targetxml>. All these attributes are required in <targetxml>form:document</targetxml>. Attribute <targetxml>@annotated</targetxml> and <targetxml>@official</targetxml> have boolean value. Attribute <targetxml>@typeofdoc</targetxml> have tokenized value.</li>
          <li><sourcexml>bodytext</sourcexml> becomes <targetxml>form:bodytext</targetxml>.</li>
          <li><sourcexml>p</sourcexml> becomes <targetxml>form:p</targetxml>.</li>
          <li><sourcexml>text</sourcexml> becomes <targetxml>form:text</targetxml></li>
          <li><sourcexml>l</sourcexml> becomes <targetxml>form:list</targetxml></li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU05_Comm_Form_Prec\Comm-Form-Pre_form.dita  -->
	

	<xsl:template match="form">
		<form:form>
			<form:document annotated="false" official="false" typeofdoc="unnamed">
				<xsl:apply-templates select="@*"/>
					<xsl:for-each-group select="*" group-adjacent="if (self::bodytext) then 0 else 1">
						<xsl:choose>
							<xsl:when test="current-grouping-key()=0">
								<form:bodytext>
									<xsl:apply-templates select="current-group()" mode="form"/>
								</form:bodytext>
							</xsl:when>
							<xsl:otherwise>
								<xsl:apply-templates select="current-group()"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each-group>
			</form:document>
		</form:form>

	</xsl:template>

<!-- the rest are in the level2 template -->

</xsl:stylesheet>