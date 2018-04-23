<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/"
	xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.headnote">
   <title>case:headnote <lnpid>id-NZ17CC-25815</lnpid></title>
   <body>
      <section>
          <ul>
         <li class="- topic/li ">
                    <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:headnote</sourcexml>
                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">casedigest:head</targetxml>.
                    <pre xml:space="preserve" class="- topic/pre ">


&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:casename&gt;McPherson v ACC&lt;/case:casename&gt;
    &lt;!-- .... --&gt;    
    &lt;/case:info&gt;     
&lt;/case:headnote&gt; 

                  
<b class="+ topic/ph hi-d/b ">Becomes</b>
             

&lt;casedigest:head&gt;
 &lt;casedigest:caseinfo&gt;         
         &lt;caseinfo:casename&gt;
              &lt;caseinfo:fullcasename&gt;McPherson v ACC&lt;/caseinfo:fullcasename&gt;
         &lt;/caseinfo:casename&gt;
         &lt;!-- .... --&gt;
    &lt;/casedigest:caseinfo&gt; 
&lt;/casedigest:head&gt;

</pre>
           </li>
          </ul>
          
          <ul>
          <li> <sourcexml>heading/title</sourcexml> and <sourcexml>heading/remotelink</sourcexml> maps to
              <targetxml>ref:relatedrefs/bodytext/textitem/ref:crossreference</targetxml></li>
</ul>
          
          <pre xml:space="preserve" class="- topic/pre ">


&lt;case:headnote&gt;
   		&lt;heading&gt;
			&lt;title&gt;See &lt;/title&gt;
			&lt;remotelink dpsi="0016" remotekey1="REFPTID" service="DOC-ID" refpt="ACLREP.1999.125.FC.38" 
			  docidref="1999_12_1999_125_FC_38_146"&gt;[125 FC 38]&lt;/remotelink&gt;
		&lt;/heading&gt;
			
&lt;/case:headnote&gt; 

                  
<b class="+ topic/ph hi-d/b ">Becomes</b>
             

&lt;casedigest:head&gt;
       	&lt;ref:relatedrefs&gt;
       	    &lt;bodytext&gt;
               &lt;textitem&gt; See 
                 &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
                    &lt;ref:content&gt;[125 FC 38]&lt;/ref:content&gt;
                    &lt;ref:locator anchoridref="ACLREP.1999.125.FC.38"&gt;
                       &lt;ref:locator-key&gt;
                          &lt;ref:key-name name="DOC-ID"/&gt;
                          &lt;ref:key-value value="0016"/&gt;
                        &lt;/ref:locator-key&gt;
                    &lt;/ref:locator&gt;
                 &lt;/ref:crossreference&gt;
			   &lt;/textitem&gt;
			&lt;/bodytext&gt;
		&lt;/ref:relatedrefs&gt;
  
&lt;/casedigest:head&gt;

</pre>

          <ul>
              <li><sourcexml>case:headnote/heading/edpnum</sourcexml> maps to 
                  <targetxml>/casedigest:casedigest/casedigest:body/section[@sectiontype="casedigestidentifier"][@includeintoc="false"]</targetxml>,
                  as the first child element after any <targetxml>heading</targetxml> or <targetxml>ref:anchor</targetxml> 
                  children within <targetxml>casedigest:body</targetxml> (<targetxml>heading</targetxml> 
                  and <targetxml>ref:anchor</targetxml>, if they exist, are required by the schema to be the first elements in 
                  sequence inside <targetxml>casedigest:body</targetxml>).
                  <ul>
                      <li>Text within <sourcexml>edpnum</sourcexml> maps to 
                          <targetxml>casedigest:body/section[@sectiontype="casedigestidentifier"]/heading/desig/text()</targetxml></li>
                      <li><sourcexml>edpnum/refpt</sourcexml> maps to 
                          <targetxml>casedigest:body/section[@sectiontype="casedigestidentifier"]/ref:anchor</targetxml></li>
                      <li><sourcexml>refpt/@id</sourcexml> maps to <targetxml>ref:anchor/@id</targetxml></li>
                      <li><sourcexml>refpt/@type="ext"</sourcexml> maps to <targetxml>ref:anchor/@anchortype="global"</targetxml></li>
                      <li><sourcexml>refpt/@type="local"</sourcexml> maps to <targetxml>ref:anchor/@anchortype="local"</targetxml></li>
                      <li>If <sourcexml>refpt/@type</sourcexml> does not exist, create <targetxml>ref:anchor/@anchortype="local"</targetxml></li>
                      <li>If <sourcexml>refpt/text()</sourcexml> contains any non-whitespace, non-linefeed characters, the 
                          text content maps to <targetxml>ref:anchor/ref:anchortext/text()</targetxml></li>
                  </ul>
              </li>
          </ul>
          
          <pre xml:space="preserve" class="- topic/pre ">


&lt;cttr:body&gt;
	&lt;case:headnote&gt;
		&lt;heading&gt;
			&lt;edpnum searchtype="ACLNUM"&gt;
				&lt;refpt id="ACLREP.1978.105.NSW.1" type="ext"&gt;&lt;/refpt&gt;[105 NSW 1]&lt;/edpnum&gt;
		&lt;/heading&gt;
		&lt;case:info&gt;
			...
		&lt;/case:info&gt;
	&lt;/case:headnote&gt;
	&lt;cttr:content&gt;
		...
	&lt;/cttr:content&gt;
&lt;/cttr:body&gt;


<b class="+ topic/ph hi-d/b ">Becomes</b>
             

&lt;casedigest:body&gt;
	&lt;section sectiontype="casedigestidentifier" includeintoc="false"&gt;
		&lt;ref:anchor id="ACLREP.1978.105.NSW.1" anchortype="global"/&gt;
		&lt;heading&gt;
			&lt;desig&gt;[105 NSW 1]&lt;/desig&gt;
		&lt;/heading&gt;
	&lt;/section&gt;
	...
		...
&lt;/casedigest:body&gt;      

          </pre>



      </section>
       
       <section>
           <title>Changes</title>  
           <p>2016-02-01 - SNB: <ph id="change_20160201_snb">changed instruction for 
               <sourcexml>case:headnote/heading/edpnum</sourcexml> and its content, moving target markup to 
               <targetxml>/casedigest:casedigest/casedigest:body/section</targetxml>.</ph></p>
           <p>2015-02-10: <ph id="change_20150210_mlv-1">MLV:  Added instruction and example for <sourcexml>case:headnote/heading/edpnum</sourcexml>
            with text and <sourcexml>refpt</sourcexml>.</ph></p>
           <p>2015-01-20: <ph id="change_20150120_mlv-2">Added instruction and example for <sourcexml>case:headnote/heading/title</sourcexml> with "See" reference.
           </ph></p>
       </section>    
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\case.headnote.dita  -->
	
	<xsl:template match="case:headnote">
		<casedigest:head>
			<xsl:apply-templates select="@*"/>
			<xsl:for-each select="* | case:info/case:parallelcite">
				<xsl:choose>
					<xsl:when test="self::heading">
						<xsl:apply-templates select="." mode="relatedrefs"/>
					</xsl:when>
					<xsl:when test="self::case:length"/>
					<xsl:otherwise>
						<xsl:apply-templates select="."/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</casedigest:head>
	</xsl:template>
	
	<xsl:template match="case:info">
		<casedigest:caseinfo>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="*[not(self::case:parallelcite)] | case:courtinfo/case:judges | case:courtinfo/case:dates"/>
		</casedigest:caseinfo>
	</xsl:template>
	
	<xsl:template match="case:casename">
		<caseinfo:casename>
			<caseinfo:fullcasename>
				<xsl:apply-templates select="@* | node()"/>
			</caseinfo:fullcasename>
		</caseinfo:casename>
	</xsl:template>
	
	<xsl:template match="heading" mode="relatedrefs">
		<xsl:if test="title or remotelink">
		<ref:relatedrefs>
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<textitem>
				<xsl:for-each select="title | remotelink">
					<xsl:choose>
						<xsl:when test="self::title">
							<xsl:apply-templates/>
						</xsl:when>
						<xsl:when test="self::remotelink">
							<xsl:apply-templates select="."/>
						</xsl:when>
					</xsl:choose>
				</xsl:for-each>
				</textitem>
			</bodytext>
		</ref:relatedrefs>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="case:headnote/heading/edpnum" mode="section">
		<section xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
			<xsl:attribute name="sectiontype">casedigestidentifier</xsl:attribute>
			<xsl:attribute name="includeintoc">false</xsl:attribute>
			<xsl:apply-templates select="refpt"/>
			<heading>
				<desig>
					<xsl:apply-templates select="node() except refpt"/>
				</desig>
			</heading>
		</section>
	</xsl:template>
	
</xsl:stylesheet>