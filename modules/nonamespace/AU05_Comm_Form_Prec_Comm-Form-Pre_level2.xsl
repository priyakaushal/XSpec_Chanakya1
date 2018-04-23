<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:glp="http://www.lexis-nexis.com/glp"
	version="2.0" exclude-result-prefixes="dita leg glp">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_level2">
  <title><sourcexml>level</sourcexml> becomes <targetxml>form:form</targetxml> <lnpid>id-AU05-18821</lnpid></title>
  <body>
    <section>
      <p>If <sourcexml>level</sourcexml> comes with following <sourcexml>@leveltype</sourcexml> values:
        <ul>
          <li>level[@leveltype="prec.grp"]</li>
          <li>level[@leveltype="precgrp"]</li>
          <li>level[@leveltype="precgrp1"]</li>
          <li>level[@leveltype="precgrp2"]</li>
          <li>level[@leveltype="prec"]</li>
        </ul>
        <b>or</b> <sourcexml>level[@lelvetype="comm.chap"]</sourcexml> occurs as parent of any listed above <sourcexml>level[@leveltype]</sourcexml> values then <sourcexml>level</sourcexml> becomes <targetxml>form:form</targetxml> with following attributes:
        <ul>
          <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
          <li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
          <li><sourcexml>@toc-caption</sourcexml> becomes <targetxml>@alternatetoccaption</targetxml></li>
          <li><sourcexml>@leveltype</sourcexml> becomes <targetxml>form:form/form:info/meta/metaitem[@value]</targetxml></li>
        </ul>
        <ul>
          <li><sourcexml>level/bodytext</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext</targetxml>
            The child element of <sourcexml>level/bodytext</sourcexml> includes: 
            <ul>
              <li><sourcexml>level/bodytext/h</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:h</targetxml></li>
              <li><sourcexml>level/bodytext/l</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:list</targetxml></li>
              <li><sourcexml>level/bodytext/p</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p</targetxml></li>
              <li><sourcexml>level/bodytext/p/text</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
              <li><sourcexml>level/bodytext/p/l</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p/form:list</targetxml></li>
              <li>If the <sourcexml>inlineobject</sourcexml> <i>is</i> a diagram or picture illustrating textual material (e.g. not a minor icon or symbol), <sourcexml>level/bodytext/p/text/inlineobject</sourcexml> becomes <targetxml>form:form/form:document/form:bodytext/form:p/form:text/figure/ref:inlineobject</targetxml></li>
            </ul>
          </li>
        </ul>
        <b>And populated as below:</b>
      </p>
    </section>
    <section>
      <title>Changes</title>
      <p>2013-11-14: <ph id="change_20131114_AB">Added instruction for handling <sourcexml>level/bodytext/p/text/inlineobject</sourcexml> Webteam #5110865</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU05_Comm_Form_Prec\Comm-Form-Pre_level2.dita  -->
	<xsl:param name="formLeveltypes" select="('prec.grp' , 'precgrp' , 'precgrp1' , 'precgrp2' , 'prec' , 'form')"/>
	
	<xsl:template match="level[@leveltype=$formLeveltypes] | 
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]" priority="25">
		<form:form>
			<xsl:apply-templates select="@* except @leveltype"/>
			<xsl:apply-templates select="refpt | heading//refpt"/>
			<xsl:apply-templates select="@leveltype" mode="form"/>
			<xsl:apply-templates select="glp:note"/>			
			<form:document annotated="false" official="false" typeofdoc="unnamed">				
				<xsl:apply-templates select="heading"/>
				<xsl:for-each-group select="* except (heading | refpt | glp:note)" group-adjacent="if (self::bodytext | self::level) then 0 else 1">
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
	
	
	<xsl:template match="level" mode="form">
		<form:form>
			<xsl:apply-templates select="@* except @leveltype"/>
			<xsl:apply-templates select="refpt | heading//refpt"/>
			<xsl:apply-templates select="@leveltype" mode="form"/>
			<xsl:apply-templates select="glp:note"/>			
			<form:document annotated="false" official="false" typeofdoc="unnamed">				
				<xsl:apply-templates select="heading"/>
				<xsl:for-each-group select="* except (heading | refpt | glp:note)" group-adjacent="if (self::bodytext | self::level) then 0 else 1">
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
	
	<xsl:template match="level/@leveltype" mode="form">
		<form:info>
			<xsl:apply-templates select="parent::level/heading/leg:empleg"/>
			<meta xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<metaitem>
					<xsl:attribute name="name">leveltype</xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
				</metaitem>
			</meta>			
		</form:info>
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
	
	<xsl:template match="blockquote" mode="form">
		<xsl:choose>
			<xsl:when test="parent::bodytext/child::blockquote[2]">
				<xsl:apply-templates select="." mode="#default"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select="*" mode="form"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
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
				<xsl:for-each-group select="* except lilabel" group-adjacent="if(self::p or self::h or self::l or self::blockquote) then 0 else 1">
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
	
	
	
	<!--<xsl:template match="level[@leveltype=$formLeveltypes]/bodytext/blockquote | level[parent::level[@leveltype=$formLeveltypes]]/bodytext/blockquote |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/blockquote" priority="35">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="level[@leveltype=$formLeveltypes]/bodytext/h | level[parent::level[@leveltype=$formLeveltypes]]/bodytext/h |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/h		
		| level[@leveltype=$formLeveltypes]/bodytext/blockquote/h | level[parent::level[@leveltype=$formLeveltypes]]/bodytext/blockquote/h |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/blockquote/h" priority="25">
		<form:h>
			<xsl:copy-of select="@* except (@typesize)"/>
			<xsl:apply-templates select="node()"/>
		</form:h>
	</xsl:template>
	
	<xsl:template match="level[@leveltype=$formLeveltypes]/bodytext/p | level[parent::level[@leveltype=$formLeveltypes]]/bodytext/p | 
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/p | 		
		level[@leveltype=$formLeveltypes]/bodytext/blockquote/p | level[parent::level[@leveltype=$formLeveltypes]]/blockquote/bodytext/p |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/blockquote/p
		" priority="25">
		<form:p>
			<xsl:if test="not(@style)">
				<xsl:copy-of select="text/@align"/>
			</xsl:if>
			<xsl:apply-templates select="@* |node()"/>
		</form:p>
	</xsl:template>
	
	<xsl:template match="level[@leveltype=$formLeveltypes]/bodytext/l |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/l | 
		level[parent::level[@leveltype=$formLeveltypes]]/bodytext/l |		
		level[@leveltype=$formLeveltypes]/bodytext/blockquote/l | level[parent::level[@leveltype=$formLeveltypes]]/bodytext/blockquote/l |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/blockquote/l" priority="25">
		<form:list>
			<xsl:apply-templates select="@*|node()"/>
		</form:list>
	</xsl:template>
	
	<xsl:template match="level[@leveltype=$formLeveltypes]/bodytext/l/li | level[parent::level[@leveltype=$formLeveltypes]]/bodytext/l/li |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/l/li | 		
		level[@leveltype=$formLeveltypes]/bodytext/blockquote/l/li | level[parent::level[@leveltype=$formLeveltypes]]/bodytext/blockquote/l/li |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/blockquote/l/li" priority="25">
		<form:listitem>
			<xsl:apply-templates select="@*|node()"/>
		</form:listitem>
	</xsl:template>

	<xsl:template match="level[@leveltype=$formLeveltypes]/bodytext/p/text | level[parent::level[@leveltype=$formLeveltypes]]/bodytext/p/text |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/p/text | 		
		level[@leveltype=$formLeveltypes]/bodytext/blockquote/p/text | level[parent::level[@leveltype=$formLeveltypes]]/bodytext/blockquote/p/text |
		level[@leveltype='comm.chap'][level[@leveltype=$formLeveltypes]][not(level[@leveltype='para0'])]/bodytext/blockquote/p/text" priority="25">
		<xsl:for-each-group select="*" group-adjacent="if (self::deflist) then 0 else 1">
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
	</xsl:template>-->
	
</xsl:stylesheet>