<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
    xmlns:form="http://www.lexisnexis.com/xmlschemas/content/shared/form/1/" 
    xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/"
    xmlns:pubfm="http://www.lexisnexis.com/xmlschemas/content/shared/publication-front-matter/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" xmlns:comm="http://www.lexis-nexis.com/glp/comm" version="2.0" exclude-result-prefixes="dita form pubfm">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Comm-Form-Pre_level1">
    <title><sourcexml>level</sourcexml>
        <lnpid>id-HK07-37415</lnpid></title>

    <body>
        <section>
            <ul>
                <li><sourcexml>level</sourcexml> becomes <targetxml>seclaw:level</targetxml> comes
                    with following attributes: <ul>
                        <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                        <li><sourcexml>@subdoc</sourcexml> becomes
                                <targetxml>@includeintoc</targetxml></li>
                        <li><sourcexml>@toc-caption</sourcexml> becomes
                                <targetxml>@alternatetoccaption</targetxml></li>
                        <li><sourcexml>@leveltype</sourcexml> becomes
                                <targetxml>@leveltype</targetxml> and the values are tokenized for
                                <targetxml>@leveltype</targetxml>.</li>
                    </ul>
                    <p><b>Below are the unique values for <targetxml>@leveltype</targetxml> found in
                            the source documents and the corresponding mapping in NewLexis. For
                            certain <targetxml>@leveltype</targetxml> values set as
                                <targetxml>@leveltype="unclassified"</targetxml>.</b></p>
                    <note><p><b>In NewLexis Schema, <targetxml>seclaw:level</targetxml> can not
                                nest. If a nested <sourcexml>level</sourcexml> occurs in the input
                                Rosetta xml then create a <targetxml>seclaw:bodytext</targetxml>
                                before the nested
                        <targetxml>seclaw:level</targetxml>.</b></p></note>
                    <ul>
                        <li><sourcexml>level[@leveltype="chapter"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="form"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="formgrp"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="form"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="group"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="division"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="para0"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="paragraph"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="subpara0"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="subparagraph"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.2"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.A"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.A2"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.A3"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.A4"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.G"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="comm.chap.H"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="chapter"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="prec"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="prec.grp"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="precgrp1"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="unclassified"]</targetxml></li>
                        <li><sourcexml>level[@leveltype="prelim"]</sourcexml> becomes
                                <targetxml>seclaw:level[@leveltype="preamble"]</targetxml></li>
                    </ul>
                </li>
            </ul>
            <pre>
&lt;comm:body&gt;
    &lt;level id="HKCCP.V2.I.3.Commentary" leveltype="comm.chap" subdoc="false"&gt;
        ...
    &lt;/level&gt;
&lt;/comm:body&gt;
        </pre>
            <p><b>becomes</b></p>
            <pre>
&lt;seclaw:body&gt;
    &lt;seclaw:level xml:id="HKCCP.V2.I.3.Commentary" leveltype="chapter" includeintoc="false"&gt;
        ...
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
        </pre>
        </section>
        <section>
            <title>Scenario 1</title>
            <p>If <sourcexml>level</sourcexml> comes with following
                    <sourcexml>@leveltype</sourcexml> values: <ul>
                    <li>level[@leveltype="prec.grp"]</li>
                    <li>level[@leveltype="precgrp"]</li>
                    <li>level[@leveltype="precgrp1"]</li>
                    <li>level[@leveltype="precgrp2"]</li>
                    <li>level[@leveltype="prec"]</li>
                </ul>
                <b>or</b>
                <sourcexml>level[@lelvetype="comm.chap"]</sourcexml> occurs as parent of any listed
                above <sourcexml>level[@leveltype]</sourcexml> values then
                    <sourcexml>level</sourcexml> becomes <targetxml>form:form</targetxml> with
                following attributes: <ul>
                    <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                    <li><sourcexml>@subdoc</sourcexml> becomes
                        <targetxml>@includeintoc</targetxml></li>
                    <li><sourcexml>@toc-caption</sourcexml> becomes
                            <targetxml>@alternatetoccaption</targetxml></li>
                    <li><sourcexml>@leveltype</sourcexml> becomes
                            <targetxml>form:form/form:info/meta/metaitem[@value]</targetxml></li>
                </ul>
                <ul>
                    <li><sourcexml>level/bodytext</sourcexml> becomes
                            <targetxml>form:form/form:document/form:bodytext</targetxml> The child
                        element of <sourcexml>level/bodytext</sourcexml> includes: <ul>
                            <li><sourcexml>level/bodytext/h</sourcexml> becomes
                                    <targetxml>form:form/form:document/form:bodytext/form:h</targetxml></li>
                            <li><sourcexml>level/bodytext/l</sourcexml> becomes
                                    <targetxml>form:form/form:document/form:bodytext/form:list</targetxml></li>
                            <li><sourcexml>level/bodytext/p</sourcexml> becomes
                                    <targetxml>form:form/form:document/form:bodytext/form:p</targetxml></li>
                            <li><sourcexml>level/bodytext/p/text</sourcexml> becomes
                                    <targetxml>form:form/form:document/form:bodytext/form:p/form:text</targetxml></li>
                            <li><sourcexml>level/bodytext/p/l</sourcexml> becomes
                                    <targetxml>form:form/form:document/form:bodytext/form:p/form:list</targetxml></li>
                            <li>If the <sourcexml>inlineobject</sourcexml>
                                <i>is</i> a diagram or picture illustrating textual material (e.g.
                                not a minor icon or symbol),
                                    <sourcexml>level/bodytext/p/text/inlineobject</sourcexml>
                                becomes
                                    <targetxml>form:form/form:document/form:bodytext/form:p/form:text/figure/ref:inlineobject</targetxml></li>
                        </ul>
                    </li>
                </ul>
                <b>And populated as below:</b>
            </p>
            <pre>
&lt;comm:body&gt;
    &lt;level id="HKCF.I.FORMS_OLD" leveltype="prec.grp"&gt;
        &lt;heading searchtype="FORM"&gt;
            &lt;title&gt;
                &lt;refpt id="HKCF.I.FORMS_OLD" type="ext"/&gt;Forms &lt;/title&gt;
        &lt;/heading&gt;
        &lt;level id="HKCF.I.PREC0038" leveltype="prec" subdoc="false"
            toc-caption="ORIGINATING SUMMONS for judicial review "&gt;
            &lt;heading searchtype="FORM"&gt;
                &lt;title&gt;
                    &lt;refpt id="HKCF.I.PREC0038" type="ext"/&gt;38 ORIGINATING SUMMONS for judicial
                    review &lt;/title&gt;
            &lt;/heading&gt;
            ...
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;
        </pre>
            <p><b>becomes</b></p>
            <pre>
&lt;seclaw:body&gt;
    &lt;form:form xml:id="HKCF.I.FORMS_OLD"&gt;
        &lt;ref:anchor id="HKCF.I.FORMS_OLD" anchortype="global"/&gt;
        &lt;form:info&gt;
            &lt;meta&gt;
                &lt;metaitem name="leveltype" value="prec.grp"/&gt;
            &lt;/meta&gt;
        &lt;/form:info&gt;
        &lt;form:document annotated="false" official="false" typeofdoc="unnamed"&gt;
            &lt;heading&gt;
                &lt;title&gt;Forms&lt;/title&gt;
            &lt;/heading&gt;
            &lt;form:bodytext&gt;
                &lt;form:form xml:id="HKCF.I.PREC0038" includeintoc="false"
                    alternatetoccaption="ORIGINATING SUMMONS for judicial review "&gt;
                    &lt;ref:anchor id="HKCF.I.PREC0038" anchortype="global"/&gt;
                    &lt;form:info&gt;
                        &lt;meta&gt;
                            &lt;metaitem name="leveltype" value="prec"/&gt;
                        &lt;/meta&gt;
                    &lt;/form:info&gt;
                    &lt;heading&gt;
                        &lt;title&gt;38 ORIGINATING SUMMONS for judicial review&lt;/title&gt;
                    &lt;/heading&gt;
                    ...
                &lt;/form:form&gt;
            &lt;/form:bodytext&gt;
        &lt;/form:document&gt;
    &lt;/form:form&gt;
&lt;/seclaw:body&gt;
        </pre>
        </section>
        <section>
            <title>Scenario 2</title>
            <p>If <sourcexml>level</sourcexml> comes with <sourcexml>@leveltype="prelim"</sourcexml>
                becomes <targetxml>seclaw:prelim</targetxml> come with following attributes: <ul>
                    <li><sourcexml>@id</sourcexml> becomes <targetxml>@xml:id</targetxml></li>
                    <li><sourcexml>@subdoc</sourcexml> becomes
                        <targetxml>@includeintoc</targetxml></li>
                    <li><sourcexml>@toc-caption</sourcexml> becomes
                            <targetxml>@alternatetoccaption</targetxml></li>
                </ul>
                <note>Attribute <sourcexml>level[@leveltype="prelim"]</sourcexml> will be moved in
                        <targetxml>pubfm:narrative[@narrativetype="prelim"]</targetxml></note> And
                children described below: <ul>
                    <li><sourcexml>level[@leveltype="prelim"]/bodytext</sourcexml> becomes
                            <targetxml>pubfm:narrative</targetxml> with
                            <targetxml>@narrativetype="prelim"</targetxml>
                        <note><b><i><targetxml>pubfm:narrative[@narrativetype="prelim"]</targetxml></i></b>
                            is like a bodytext here. So <targetxml>pgrp</targetxml> will becomes
                            direct child of
                                        <b><i><targetxml>pubfm:narrative[@narrativetype="prelim"]</targetxml></i></b>.</note></li>
                </ul>
                <b>Markup populated as below:</b>
            </p>
            <pre>
&lt;comm:body&gt;
    &lt;level&gt;
        &lt;heading searchtype="COMMENTARY"&gt;
            &lt;desig&gt;
                &lt;designum&gt;
                    &lt;refpt id="HLHK_15" type="ext"/&gt;15 &amp;#x2014; &lt;/designum&gt;
            &lt;/desig&gt;
            &lt;title&gt;
                &lt;emph typestyle="caps"&gt;Agency&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;level id="PRELIM_15" leveltype="prelim" subdoc="false" toc-caption="About this Title"&gt;
            ...
        &lt;/level&gt;
    &lt;/level&gt;
&lt;/comm:body&gt;
        </pre>
            <p><b>becomes</b></p>
            <pre>
&lt;seclaw:body&gt;
    &lt;seclaw:level leveltype="unclassified"&gt;
        &lt;heading&gt;
            &lt;desig&gt;15 —&lt;/desig&gt;
            &lt;title&gt;
                &lt;emph typestyle="caps"&gt;Agency&lt;/emph&gt;
            &lt;/title&gt;
        &lt;/heading&gt;
        &lt;seclaw:prelim xml:id="PRELIM_15" leveltype="unclassified" includeintoc="false"
            alternatetoccaption="About this Title"&gt;
            ...
        &lt;/seclaw:prelim&gt;
    &lt;/seclaw:level&gt;
&lt;/seclaw:body&gt;
        </pre>
        </section>
        <section>
            <title>Change Log</title>
            <p>2016-04-12: <ph id="change_20160412_PS">Created.</ph></p>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK07_Commentary\HK07_level.dita  -->
	
	
	<!--<xsl:template match="level[not(@*)]">
	    <xsl:apply-templates select="node()"/>
	</xsl:template>-->
    
    <xsl:template match="level">
        <xsl:choose>
            <xsl:when test="./parent::comm:body">
                
                    <xsl:element name="seclaw:level">
                        <xsl:apply-templates select="@subdoc"/>
                        <xsl:apply-templates select="@toc-caption"/>
                        <xsl:apply-templates select="@id"/>
                        <xsl:call-template name="leveltype"/>
                        <xsl:apply-templates select="heading/descendant::refpt"/>
                        
                        <xsl:apply-templates select="heading"/>
                        
                        <seclaw:bodytext>
                            <xsl:apply-templates select="*[not(self::heading)]"/>    
                        </seclaw:bodytext> 
                    </xsl:element>
                
            </xsl:when>
            <xsl:when test="ancestor::leg:comntry and not(parent::leg:comntry)" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"> 
                
                <xsl:element name="annot:annotationlevel">
                    <xsl:apply-templates select="@subdoc"/>
                    <xsl:apply-templates select="@toc-caption"/>
                    <xsl:apply-templates select="@id"/>
                  
                    <xsl:apply-templates select="heading/descendant::refpt"/>
                    
                    <xsl:apply-templates select="heading"/>
                    
                    <annot:bodytext>
                        <xsl:apply-templates select="*[not(self::heading)]"/>    
                    </annot:bodytext> 
                </xsl:element>
            </xsl:when>
            <xsl:when test="parent::leg:comntry" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/"> 
                
                
                  <!--  <xsl:apply-templates select="@subdoc"/>
                    <xsl:apply-templates select="@toc-caption"/>
                    <xsl:apply-templates select="@id"/>
                    <xsl:call-template name="leveltype"/>-->
                <!-- Awantika: Creating annot:annotation and commenting it in leg:comntry as it was getting duplicated -->
                <annot:annotation>
                    <xsl:apply-templates select="heading/descendant::refpt"/>
                    <xsl:apply-templates select="heading"/>
                    <xsl:choose>
                        <xsl:when test="child::bodytext">
                            <bodytext>
                                <xsl:apply-templates select="*[not(self::heading)]"/> 
                            </bodytext>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="*[not(self::heading)]"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </annot:annotation>
                
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="seclaw:level">
                    <xsl:call-template name="leveltype"/>
                    <xsl:apply-templates select="@subdoc"/>
                    <xsl:apply-templates select="@toc-caption"/>
                    <xsl:apply-templates select="@id"/>
                    <xsl:apply-templates select="heading/descendant::refpt"/>
                
                    <xsl:apply-templates select="heading"/>
                    
                    <seclaw:bodytext>
                        <xsl:apply-templates select="*[not(self::heading)]"/>
                      
                    </seclaw:bodytext> 
                </xsl:element>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
       
    <xsl:template match="level[@leveltype='prec' or @leveltype='prec.grp' or @leveltype='precgrp' or @leveltype='precgrp1' or @leveltype='precgrp2' or parent::comm.chap or ancestor::level[@leveltype = 'prec.grp']]">
				<form:form>
				    <xsl:apply-templates select="@subdoc"/>
				    <xsl:apply-templates select="@toc-caption"/>
				    <xsl:apply-templates select="@id"/>			
					 
					<form:info>
						<meta>
							<metaitem>
								<xsl:attribute name="name">
									<xsl:text>leveltype</xsl:text>
								</xsl:attribute>
								<xsl:attribute name="value">
									<xsl:value-of select="@leveltype"/>
								</xsl:attribute>
							</metaitem>
						</meta>
					</form:info>
				   <!-- <xsl:if test="child::heading">
				        <xsl:apply-templates/>
				    </xsl:if>-->
				    <form:document>
				        <xsl:attribute name="annotated">
				            <xsl:value-of>false</xsl:value-of>
				        </xsl:attribute>
				        <xsl:attribute name="official">
				            <xsl:text>false</xsl:text>
				        </xsl:attribute>
				        <xsl:attribute name="typeofdoc">
				            <xsl:text>unnamed</xsl:text>
				        </xsl:attribute>
				        <xsl:apply-templates select="heading"/>
                        <xsl:choose>
                            <xsl:when test="descendant::bodytext">
      
                                <form:bodytext>
                                    <xsl:choose>
                                        <xsl:when test="child::bodytext/h">
                                            <xsl:apply-templates select="node() except heading"/>
                                            <!--<xsl:call-template name="form-h"/>-->
                                        </xsl:when>
                                        <xsl:when test="child::bodytext/l">
                                            <form:list>
                                                <xsl:apply-templates select="node() except heading"/>
                                            </form:list>
                                        </xsl:when>
                                        <xsl:when test="child::bodytext/p">
                                                <xsl:apply-templates select="node() except heading"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:apply-templates select="node() except heading"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </form:bodytext>
                            </xsl:when>
                        </xsl:choose>
				    </form:document>
                 </form:form>	
			</xsl:template>
       
    
    <xsl:template name="form-list" match="list[ancestor::level/@leveltype='prec or prec.grp or precgrp or precgrp1 or precgrp2']">
        <form:list>
            <xsl:apply-templates/>
        </form:list>
    </xsl:template>
	
    <xsl:template name="subdoc" match="@subdoc">
		<xsl:attribute name="includeintoc">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
    <xsl:template name="toc-caption" match="@toc-caption">
		<xsl:attribute name="alternatetoccaption">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<!--<xsl:template name="id" match="@id">			
				<xsl:call-template name="amIaDuplicate"/>
	</xsl:template>-->
	
	<xsl:template name="leveltype">
		<xsl:attribute name="leveltype">
			<xsl:choose>
				<xsl:when test="./@leveltype='chapter'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='form'">
					<xsl:text>form</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='formgrp'">
					<xsl:text>form</xsl:text>
				</xsl:when>				
				<xsl:when test="./@leveltype='group'">
					<xsl:text>division</xsl:text>
				</xsl:when>				
				<xsl:when test="./@leveltype='para0'">
					<xsl:text>paragraph</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='subpara0'">
					<xsl:text>subparagraph</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='comm.chap'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='comm.chap.2'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='comm.chap.A'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='comm.chap.A2'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='comm.chap.A3'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='comm.chap.A4'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='comm.chap.G'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>
				<xsl:when test="./@leveltype='comm.chap.H'">
					<xsl:text>chapter</xsl:text>
				</xsl:when>			
				
				<xsl:when test="./@leveltype='prelim'">
					<xsl:text>preamble</xsl:text>
				</xsl:when>				
				<xsl:otherwise>
					<xsl:text>unclassified</xsl:text>
				</xsl:otherwise>
			</xsl:choose>		
		</xsl:attribute>
	</xsl:template>

    <xsl:template name="seclaw_prelim">
        <xsl:if test="@leveltype='prelim'">
            <seclaw:prelim>
                <xsl:apply-templates select="@subdoc"/>
                <xsl:apply-templates select="@toc-caption"/>
                <xsl:apply-templates select="@id"/>                
                    <xsl:attribute name="narrativetype">
                        <xsl:value-of select="@leveltype"/>
                    </xsl:attribute>
                <xsl:choose>
                    <xsl:when test="./bodytext">
                        <pubfm:narrative>
                            <xsl:attribute name="narrativetype">
                                <xsl:value-of select="@leveltype"/>
                            </xsl:attribute>                            <xsl:apply-templates/>
                        </pubfm:narrative>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates/>
                    </xsl:otherwise>
                </xsl:choose>              
            </seclaw:prelim>
        </xsl:if>   
       
    </xsl:template>
	
	
</xsl:stylesheet>