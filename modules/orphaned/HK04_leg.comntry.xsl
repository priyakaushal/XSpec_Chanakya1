<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
	xmlns:frm="http://www.lexis-nexis.com/glp/frm" 
	xmlns:leg="http://www.lexis-nexis.com/glp/leg"
	xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"
	xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/"
	xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
	xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0"
	exclude-result-prefixes="dita frm leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK06_LawsActsBillsMeasures-leg.comntry">
		<title><sourcexml>leg:comntry</sourcexml>
			<lnpid>id-HK04-36624</lnpid> </title>
		<body>
			<section>
				<p>
					<sourcexml>leg:comntry</sourcexml> becomes
					<targetxml>annot:annotations/annot:annotation-grp</targetxml> with optional attributes and
					child elements converted as: <ul>
						<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
						<li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
						<li><sourcexml>@toc-caption</sourcexml> becomes
							<targetxml>@alternatetoccaption</targetxml></li>
						<li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the
							first child in the sequence. Please refer to General Markup Section for handling
							<sourcexml>refpt</sourcexml>.</li>
						<li><sourcexml>heading/edpnum</sourcexml> becomes
							<targetxml>heading/desig</targetxml></li>
						<li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
					</ul>
					<ul>
						<li><b><sourcexml>leg:comntry</sourcexml> encountered in following scenarios:</b>
							<ul>
								<li><sourcexml>leg:comntry/level</sourcexml> becomes
									<targetxml>annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation</targetxml>
									with following attributes: <ul>
										<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
										<li><sourcexml>@subdoc</sourcexml> becomes
											<targetxml>@includeintoc</targetxml></li>
										<li><sourcexml>@toc-caption</sourcexml> becomes
											<targetxml>@alternatetoccaption</targetxml></li>
										<li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml>and must
											be the first child in the sequence. Please refer to General Markup Section for
											handling <sourcexml>refpt</sourcexml>.</li>
										<li><sourcexml>heading/edpnum</sourcexml> becomes
											<targetxml>heading/desig</targetxml></li>
										<li><sourcexml>heading/title</sourcexml> becomes
											<targetxml>heading/title</targetxml></li>
										<li><sourcexml>level/bodytext</sourcexml> becomes
											<targetxml>annot:annotation/bodytext</targetxml></li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</p>
				<p>Conversion of nested <sourcexml>level</sourcexml> element:</p>
				<p><sourcexml>leg:comntry/level/level</sourcexml> becomes
					<targetxml>annot:annotations/annot:annotation-grp[@grptype="COMMENTARY"]/annot:annotation/annot:annotationlevel</targetxml>
					with following attributes: <ul>
						<li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
						<li><sourcexml>@subdoc</sourcexml> becomes <targetxml>@includeintoc</targetxml></li>
						<li><sourcexml>@toc-caption</sourcexml> becomes
							<targetxml>@alternatetoccaption</targetxml></li>
						<li><sourcexml>refpt</sourcexml> becomes <targetxml>ref:anchor</targetxml> and must be the
							first child in the sequence. Please refer to General Markup Section for handling
							<sourcexml>refpt</sourcexml>.</li>
						<li><sourcexml>heading/edpnum</sourcexml> becomes
							<targetxml>heading/desig</targetxml></li>
						<li><sourcexml>heading/title</sourcexml> becomes <targetxml>heading/title</targetxml></li>
						<li><sourcexml>level/bodytext</sourcexml> becomes
							<targetxml>annot:annotationlevel/annot:bodytext</targetxml>
							<note><targetxml>annot:bodytext</targetxml> is required element in
								<targetxml>annot:annotationlevel</targetxml>.</note>
						</li>
						<li><sourcexml>leg:comntry/level/bodytext/leg:comntry/level/bodytext</sourcexml> becomes <targetxml>annot:annotations/annot:annotation-grp/annot:annotation/annot:annotationlevel/annot:bodytext</targetxml>.
							<note>If attribute <sourcexml>@leveltype</sourcexml> occurs within <sourcexml>leg:comntry/level</sourcexml> then <sourcexml>@leveltype</sourcexml> will be suppressed from conversion.</note>
						</li>
					</ul>
				</p>
				<p> </p>
				<pre>
        <![CDATA[
<leg:comntry>
    <level id="Lvl_5830603" leveltype="formgrp">
        <heading searchtype="LEGISLATION formgrp"/>
        <level id="Lvl_3492092" leveltype="form" subdoc="true" toc-caption="Writ of Summons">
            <heading searchtype="LEGISLATION form">
                <title>
                    <refpt id="HKCCP.V1.XI.APPA.FORM1" type="ext"/>Writ of Summons</title>
            </heading>
            <bodytext searchtype="FORM">
                   <p>
                  ................. 
                  .................
                   </p>
            </bodytext>
        </level>
    </level>
</leg:comntry>
]]>
      </pre>
				<p><b>becomes</b></p>
				<pre>
          <![CDATA[
 <annot:annotations>
    <annot:annotation-grp>
        <annot:annotation xml:id="Lvl_5830603">
            <heading/>
            <annot:annotationlevel xml:id="_Lvl_5830603" includeintoc="true"
                alternatetoccaption="Writ of Summons">
                <ref:anchor id="_HKCCP.V1.XI.APPA.FORM1" anchortype="global"/>
                <heading>
                    <title>Writ of Summons</title>    
                </heading>
                <annot:bodytext>
                     <p>
                  ................. 
                  .................
                    </p>
                </annot:bodytext>
            </annot:annotationlevel>
        </annot:annotation>
    </annot:annotation-grp>
 </annot:annotations>
      ]]>
      </pre>
				<b>Example <sourcexml>leg:comntry/level/bodytext/leg:comntry/level/bodytext</sourcexml></b>
				
				<pre>
     
      
<![CDATA[
<leg:comntry>
 <level leveltype="comm30">
  <bodytext>
   <heading>
    <title>NOTES</title>
   </heading>
  </bodytext>
  <bodytext>
   <leg:comntry>
    <level leveltype="comm32">
     <bodytext>
      <heading>
       <title>Initial Commencement</title>
      </heading>
      <!-- ETC. -->
     </bodytext>
    </level>
   </leg:comntry>
  </bodytext>
 </level>
</leg:comntry>
]]>
      </pre>
				<b>become</b>
				<pre>
<![CDATA[
<annot:annotations>
 <annot:annotation-grp grptype="COMMENTARY">
  <annot:annotation>
   <heading>
    <title>NOTES</title>
   </heading>
   <annot:annotationlevel>
    <heading>
     <title>Initial Commencement</title>
    </heading>
    <annot:bodytext>
     <!-- ETC. -->
    </annot:bodytext>
   </annot:annotationlevel> 
  </annot:annotation>
 </annot:annotation-grp>
</annot:annotations>
]]>
      </pre>
			</section>
			<section>
				<title>Change Log</title>
				<p>2017-05-05: <ph id="change_20170505_RS">
					Updated target mapping for <sourcexml>leg:comntry/level/bodytext/leg:comntry/level/bodytext</sourcexml>.</ph></p>
				<p>2017-04-20: <ph id="change_20170420_HP">Instruction added leg:comntry/level.</ph></p>
			</section>
		</body>
		
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK04_CourtRule\HK04_leg.comntry.dita  -->
	<xsl:message>HK04_leg.comntry.xsl requires manual development!</xsl:message> 
	

	<xsl:template match="leg:comntry">
		
		<annot:annotations>
			<annot:annotation-grp>
				<xsl:apply-templates select="@* | node()"/>
			</annot:annotation-grp>
		</annot:annotations>
	</xsl:template>

	<xsl:template match="leg:comntry/@id">
	
		<xsl:attribute name="xml:id" select="."/>

	</xsl:template>

	<xsl:template match="leg:comntry/@subdoc">
		
		<xsl:attribute name="includeintoc" select="."/>
	</xsl:template>

	<xsl:template match="leg:comntry/@toc-caption">
		
		<xsl:attribute name="alternatetoccaption" select="."/>
	</xsl:template>

	<xsl:template match="refpt">
		
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>
	</xsl:template>

	<xsl:template match="heading/edpnum">
	
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>
	</xsl:template>
	
	<xsl:template match="heading/title">
		
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>
	</xsl:template>

	<xsl:template match="leg:comntry/level">
		<annot:annotations>
			<annot:annotation-grp>
				<annot:annotation>
				<xsl:apply-templates select="@* | node()"/>
				</annot:annotation>
			</annot:annotation-grp>
		</annot:annotations>
	</xsl:template>
	
	
	<xsl:template match="leg:comntry/level/@id">
		
		<xsl:attribute name="xml:id" select="."/>
		
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/@subdoc">
		
		<xsl:attribute name="includeintoc" select="."/>
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/@toc-caption">
	
		<xsl:attribute name="alternatetoccaption" select="."/>
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/refpt">
		
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/heading/edpnum">
		
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/heading/title">
		
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>
	</xsl:template>
			

	<xsl:template match="leg:comntry/level/bodytext">
		
		<annot:annotations>
			<annot:annotation-grp>
				<annot:annotation>
					<bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</bodytext>
				</annot:annotation>
			</annot:annotation-grp>
		</annot:annotations>
	</xsl:template>


	<xsl:template match="leg:comntry/level/level">
		<annot:annotations>
			<annot:annotation-grp>
				<annot:annotation>
					<annot:annotationlevel>
					<xsl:apply-templates select="@* | node()"/>
					</annot:annotationlevel>
				</annot:annotation>
			</annot:annotation-grp>
		</annot:annotations>
	</xsl:template>
	
	
	<xsl:template match="leg:comntry/level/level/@id">
		
		<xsl:attribute name="xml:id" select="."/>
		
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/level/@subdoc">
		
		<xsl:attribute name="includeintoc" select="."/>
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/level/@toc-caption">
		
		<xsl:attribute name="alternatetoccaption" select="."/>
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/level/refpt">
		
		<ref:anchor>
			<xsl:apply-templates select="@* | node()"/>
		</ref:anchor>
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/level/heading/edpnum">
		
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>
	</xsl:template>
	
	<xsl:template match="leg:comntry/level/level/heading/title">
		
		<title>
			<xsl:apply-templates select="@* | node()"/>
		</title>
	</xsl:template>
	
	
	<xsl:template match="leg:comntry/level/level/bodytext">
		
		<annot:annotations>
			<annot:annotation-grp>
				<annot:annotation>
					<annot:annotationlevel>
						<annot:bodytext>
						<xsl:apply-templates select="@* | node()"/>
						</annot:bodytext>
					</annot:annotationlevel>
				</annot:annotation>
			</annot:annotation-grp>
		</annot:annotations>
	</xsl:template>


	<xsl:template match="leg:comntry/level/bodytext/leg:comntry/level/bodytext">
		
		<annot:annotations>
		<annot:annotation-grp>
			<annot:annotation>
				<annot:annotationlevel>
					<annot:bodytext>
						<xsl:apply-templates select="@* | node()"/>
					</annot:bodytext>
				</annot:annotationlevel>
			</annot:annotation>
		</annot:annotation-grp>
		</annot:annotations>
	</xsl:template>



</xsl:stylesheet>
