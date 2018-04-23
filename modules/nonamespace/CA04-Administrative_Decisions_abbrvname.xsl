<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CAN_Rosetta_abbrvname-to-LexisAdvance_caseinfo.shortcasename">
   <title>abbrvname <lnpid>id-CA04-13407</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">abbrvname</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">caseinfo:casename/caseinfo:shortcasename</targetxml> and attribute <sourcexml>@display-name</sourcexml> becomes <targetxml>name</targetxml>.
                  
         <pre xml:space="preserve" class="- topic/pre ">

&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;abbrvname display-name="Indexed as:" searchtype="SHORT-CASE-NAME"&gt;Boucher (Re)&lt;/abbrvname&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt; 

                   
<b class="+ topic/ph hi-d/b ">Becomes</b>          
    
&lt;admindoc:head&gt;
    &lt;admindecision:decisioninfo&gt;
        &lt;admindecision:caseinfo&gt;
            &lt;caseinfo:casename&gt;
                &lt;caseinfo:shortcasename name="Indexed as:"&gt;Boucher (Re)&lt;/caseinfo:shortcasename&gt;
            &lt;/caseinfo:casename&gt;
        &lt;/admindecision:caseinfo&gt;
    &lt;/admindecision:decisioninfo&gt;
&lt;/admindoc:head&gt;

           </pre>
            
            <note class="- topic/note ">If input document has <sourcexml class="+ topic/keyword xml-d/sourcexml ">nl</sourcexml> within <sourcexml class="+ topic/keyword xml-d/sourcexml ">abbrvname</sourcexml> then convert all
               newlines to a single space character.</note>
         </li>
    
   <li class="- topic/li "> If <sourcexml class="+ topic/keyword xml-d/sourcexml ">abbrvname</sourcexml> is the child of <targetxml class="+ topic/keyword xml-d/targetxml ">case:courtinfo</targetxml> then it
                    will become <targetxml>jurisinfo:courtinfo/jurisinfo:courtname</targetxml> with
                    attribute <targetxml>@normshortname</targetxml>
                    <pre xml:space="preserve" class="- topic/pre ">

&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:courtinfo&gt;
            &lt;abbrvname ln.user-displayed="false"&gt;ABEnvAppBd&lt;/abbrvname&gt;
        &lt;/case:courtinfo&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;

                    
      <b class="+ topic/ph hi-d/b ">Becomes</b> 
      
&lt;admindoc:head&gt;
    &lt;admindecision:decisioninfo&gt;
        &lt;admindecision:caseinfo&gt;
            &lt;jurisinfo:courtinfo&gt;
                &lt;jurisinfo:courtname normshortname="ABEnvAppBd"/&gt;
            &lt;/jurisinfo:courtinfo&gt;
        &lt;/admindecision:caseinfo&gt;
    &lt;/admindecision:decisioninfo&gt;
&lt;/admindoc:head&gt;

      </pre>
                    <note><sourcexml>case:courtinfo/abbrvname</sourcexml> will also be mapped in
                            <targetxml>jurisinfo:courtinfo/jurisinfo:alternatecourtcode</targetxml>.
                        For more confirmation please see below examples.</note><pre>


&lt;case:headnote&gt;
    &lt;case:info&gt;
        &lt;case:courtinfo&gt;
            &lt;abbrvname ln.user-displayed="false"&gt;CASCC&lt;/abbrvname&gt;
            &lt;case:courtname&gt;Supreme Court of Canada&lt;nl/&gt; On appeal from British Columbia&lt;/case:courtname&gt;
        &lt;/case:courtinfo&gt;
    &lt;/case:info&gt;
&lt;/case:headnote&gt;

<b>Becomes</b> 
   
&lt;casedigest:head&gt;
    &lt;casedigest:caseinfo&gt;
        &lt;jurisinfo:courtinfo&gt;
            &lt;jurisinfo:courtname normshortname="CASCC"&gt;Supreme Court of Canada&lt;proc:nl/&gt; On appeal from British
                Columbia&lt;/jurisinfo:courtname&gt;
            &lt;jurisinfo:alternatecourtcode alternatecourtcode="CASCC"/&gt;
        &lt;/jurisinfo:courtinfo&gt;
    &lt;/casedigest:caseinfo&gt;
&lt;/casedigest:head&gt;</pre>
       <!-- <note>For
                        handling <b>@ln.user-displayed</b> attribute, refer the general markup <xref
                            href="../../common_newest/Rosetta_abbrvname_ln.user-displayed.dita"
                            >ln.user_displayed="false"</xref> section in the CI.</note> -->
                </li>
      </ul>
</section>
       <section><title>Changes</title>
           <p>2014-10-22<ph id="change_20141022">Updated CI for <targetxml>jurisinfo:courtname@normshortname</targetxml> to also be placed in <targetxml>jurisinfo:alternatecourtcode@alternatecourtcode</targetxml>...R4.5 Db issue #1987</ph></p>
       </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\abbrvname.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_abbrvname.xsl requires manual development!</xsl:message> -->

	<xsl:template match="abbrvname">
	    <xsl:choose>
	        <xsl:when test="parent::case:courtinfo">
	            <jurisinfo:courtname>
	                <xsl:attribute name="normshortname">
	                    <xsl:value-of select="."/>
	                </xsl:attribute>
	                <xsl:apply-templates select="following-sibling::case:courtname"/>
	            </jurisinfo:courtname>
	        </xsl:when>
	        <xsl:otherwise>
	            <caseinfo:shortcasename>
	                <xsl:apply-templates select="@* | node()"/>
	            </caseinfo:shortcasename>
	        </xsl:otherwise>
	    </xsl:choose>
	</xsl:template>

    <xsl:template match="abbrvname/@display-name">

		<!--  Original Target XPath:  name   -->
		<xsl:attribute name="name">
			<xsl:value-of select="."/>
		</xsl:attribute>

	</xsl:template>


    <xsl:template match="case:courtinfo">
        <jurisinfo:courtinfo>
            <xsl:apply-templates select="@*|node()"/>
        </jurisinfo:courtinfo>
    </xsl:template>

    <xsl:template match="case:courtinfo/abbrvname" mode="courtinfo">
        <jurisinfo:alternatecourtcode>
            <xsl:attribute name="alternatecourtcode">
                <xsl:value-of select="."/>
            </xsl:attribute>
        </jurisinfo:alternatecourtcode>
    </xsl:template>
    
    <xsl:template match="abbrvname/nl">
        <xsl:value-of select="' '"/>
    </xsl:template>
    
    <xsl:template match="abbrvname/@searchtype"/>
</xsl:stylesheet>