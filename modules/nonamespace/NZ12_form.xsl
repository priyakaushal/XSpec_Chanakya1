<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="id-form-newForNZ12">
  <title><sourcexml>form</sourcexml> <lnpid>id-form-newForNZ12</lnpid></title>
  <body>
    <section>
      <p><sourcexml>form</sourcexml> becomes <targetxml>form:form</targetxml> and children described as below:
        <ul>
          <li>Create <targetxml>form:document</targetxml> with <targetxml>[@annotated="false"]</targetxml>, <targetxml>[@official="true"]</targetxml> and <targetxml>[@typeofdoc="unnamed"]</targetxml>. All these attributes are required in <targetxml>form:document</targetxml>. Attribute <targetxml>@annotated</targetxml> and <targetxml>@official</targetxml> have boolean value. Attribute <targetxml>@typeofdoc</targetxml> have tokenized value.</li>
          <li><sourcexml>bodytext</sourcexml> becomes <targetxml>form:bodytext</targetxml>.</li>
          <li><sourcexml>p</sourcexml> becomes <targetxml>form:p</targetxml>.</li>
          <li><sourcexml>text</sourcexml> becomes <targetxml>form:text</targetxml></li>
          <li><sourcexml>l</sourcexml> becomes <targetxml>form:list</targetxml></li>
        	<li><sourcexml>li</sourcexml> becomes <targetxml>form:listitem</targetxml></li>
        </ul>
      </p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU05_Comm_Form_Prec\Comm-Form-Pre_form.dita  -->
	

	<xsl:template match="form">
		<form:form>
			<form:document annotated="false" official="true" typeofdoc="unnamed">
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

	<xsl:template match="bodytext" mode="form">
		<xsl:call-template name="form-mode-bodytext-level"/>
	</xsl:template>
		
	
	<xsl:template name="form-mode-bodytext-level">
		<xsl:for-each-group select="*" group-adjacent="if(self::p or self::h or self::l or self::blockquote) then 0 else 1">
			<xsl:choose>
				<xsl:when test="current-grouping-key()=0">
					<xsl:apply-templates select="current-group()" mode="form"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="current-group()"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each-group>
	</xsl:template>
	
	
	<!-- derived the following rules from schema + common-sense
	valid children of form:bodytext:
	
        form:p"/>
        form:h"/>
        form:list"/>
        
        base:figure"/>
       
        form:sigblock"/>
        location:address"/>
        proc:stars"/>
        base:hrule"/>
        base:blockquote"/>
        base:deflist"/>
        base:pgrp"/>
        base:note"/>
        base:notes"/>
        base:qanda"/>
        base:table"/>
        primlaw:excerpt"/>
        form:block"/>
      </xs:choice>-->
	
	
	
	<xsl:template match="h" mode="form">
		<form:h>
			<xsl:copy-of select="@* except (@typesize)"/>
			<xsl:apply-templates select="node()"/>
		</form:h>
	</xsl:template>
	
	<xsl:template match="p" mode="form">
		<form:p>
			<xsl:apply-templates select="@*"/>
			<xsl:if test="not(@style)">
				<xsl:copy-of select="text/@align"/>
			</xsl:if>
			<xsl:for-each-group select="*" group-adjacent="if(self::text or self::p) then 0 else 1">
				<xsl:choose>
					<xsl:when test="current-grouping-key()=0">
						<xsl:apply-templates select="current-group()" mode="form"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="current-group()"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each-group>
		</form:p>
	</xsl:template>
	
	<xsl:template match="text" mode="form">
		<xsl:for-each-group select="node()" group-adjacent="if (self::deflist) then 0 else 1">
			<xsl:choose>
				<xsl:when test="current-grouping-key()=0">
					<xsl:apply-templates select="current-group()"/>
				</xsl:when>
				<xsl:otherwise>
					<form:text>
						<xsl:apply-templates select="current-group()"/>
					</form:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each-group>
	</xsl:template>
	
	<xsl:template match="l" mode="form">
		<form:list>
			<xsl:for-each-group select="*" group-adjacent="if (self::li) then 0 else 1">
				<xsl:choose>
					<xsl:when test="current-grouping-key()=0">
						<xsl:apply-templates select="current-group()" mode="form"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="current-group()"/>						
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each-group>
		</form:list>
	</xsl:template>
	
	<xsl:template match="li" mode="form">
		<form:listitem>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="lilabel/refpt"/>
			<xsl:apply-templates select="lilabel"/>
			<form:bodytext>
				<xsl:for-each-group select="* except lilabel" group-adjacent="if(self::p or self::h or self::l) then 0 else 1">
					<xsl:choose>
						<xsl:when test="current-grouping-key()=0">
							<xsl:apply-templates select="current-group()" mode="form"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:apply-templates select="current-group()"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each-group>
				<xsl:if test="following-sibling::*[1][self::l]">					
					<xsl:apply-templates select="following-sibling::*[1][self::l]" mode="form"/>					
				</xsl:if>
			</form:bodytext>			
		</form:listitem>
	</xsl:template>
	

</xsl:stylesheet>