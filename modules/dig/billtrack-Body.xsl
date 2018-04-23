<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:dig="http://www.lexis-nexis.com/glp/dig" xmlns:docinfo="http://www.lexis-nexis.com/glp/docinfo" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:billtrack="urn:x-lexisnexis:content:billtracking:1" 
  xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" 
  xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/"
  xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/"
  version="2.0" exclude-result-prefixes="dita dig docinfo leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="billtrack-Body">
  <title>Body <lnpid>id-AU12-20207</lnpid></title>
  <body>
    <p><targetxml>billtrack:billtrack/billtrack:body</targetxml> is created as described in the Introduction.</p>
    
    <section>
      <title>billtrack:body</title>
      <p>
        <ul>
          <li>
            <sourcexml>/DIGESTDOC/dig:body</sourcexml> becomes
            <targetxml>/billtrack:billtrack/billtrack:body</targetxml> with child elements being converted as:
            <ul>
              <li><sourcexml>dig:info</sourcexml> becomes
                <targetxml>primlaw:level[@leveltype="unclassified"]/primlaw:levelinfo/primlawinfo:primlawinfo</targetxml>
                and handle the children of <sourcexml>dig:info</sourcexml> as described below: 
                <ul>
                  <li>
                    <sourcexml>leg:info/leg:officialname</sourcexml> becomes                <targetxml>legisinfo:legisinfo/legisinfo:names/legisinfo:officialtitle</targetxml>
                    <pre>
&lt;leg:info&gt;
          &lt;leg:officialname&gt;&lt;refpt id="CTH_BIL_2008-31" type="ext"/&gt;SCREEN AUSTRALIA BILL 2008&lt;/leg:officialname&gt;
       &lt;/leg:info&gt;

                  
                  <b>Becomes</b>
                  
&lt;legisinfo:legisinfo&gt;
             &lt;legisinfo:names&gt;
                    &lt;legisinfo:officialtitle&gt;SCREEN AUSTRALIA BILL 2008&lt;/legisinfo:officialtitle&gt;
              &lt;/legisinfo:names&gt;
         &lt;/legisinfo:legisinfo&gt;
                           
                </pre>
                    <note>If the input document has scenario leg:officialname/refpt then suppress <sourcexml>refpt</sourcexml> from conversion
                      since the id value matches with <sourcexml>docinfo:doc-id</sourcexml>.</note>                    
                  </li>
                  <li>
                    <sourcexml>leg:info/leg:relatedleg</sourcexml> with attribute
                      <sourcexml>@type="subordinate"</sourcexml> becomes
                      <targetxml>billtrack:prelim/billtrack:relatedbills</targetxml> and create
                      <targetxml>billtrack:bill</targetxml> for handling
                      <sourcexml>remotelink</sourcexml>
                    <pre>
&lt;leg:info&gt;
&lt;leg:relatedleg type="subordinate"&gt;
        &lt;emph typestyle="bf"&gt;Cognate Bills&lt;/emph&gt;&lt;nl/&gt;
            &lt;remotelink dpsi="009U" remotekey1="REFPTID" docidref="ABCD_9876" refpt="NSW_BIL_1995-037" service="DOC-ID"&gt;Evidence (Consequential and Other Provisions) Bill 1995&lt;/remotelink&gt;&lt;nl/&gt;
            &lt;remotelink dpsi="009U" remotekey1="REFPTID" docidref="ABCD_9876" refpt="NSW_BIL_1995-038" service="DOC-ID"&gt;Evidence On Commission Bill 1995&lt;/remotelink&gt;
&lt;/leg:relatedleg&gt;
&lt;/leg:info&gt;

                <b>Becomes</b>
                  
&lt;billtrack:prelim&gt;
  &lt;billtrack:relatedbills&gt;
    &lt;billtrack:bill&gt;
    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
      &lt;ref:content&gt;Evidence (Consequential and Other Provisions) Bill 1995&lt;/ref:content&gt;
        &lt;ref:locator anchoridref="NSW_BIL_1995-038"&gt;
          &lt;ref:locator-key&gt;
            &lt;ref:key-name name="DOCID"/&gt;
            &lt;ref:key-value value="009U-ABCD_9876"/&gt;
          &lt;/ref:locator-key&gt;
        &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
    &lt;/billtrack:bill&gt;
    &lt;billtrack:bill&gt;
    &lt;ref:crossreference crossreferencetype="seeAlso"&gt;
      &lt;ref:content&gt;Evidence On Commission Bill 1995&lt;/ref:content&gt;
      &lt;ref:locator anchoridref="NSW_BIL_1995-038"&gt;
        &lt;ref:locator-key&gt;
          &lt;ref:key-name name="DOCID"/&gt;
          &lt;ref:key-value value="009U-ABCD_9876"/&gt;
        &lt;/ref:locator-key&gt;
      &lt;/ref:locator&gt;
    &lt;/ref:crossreference&gt;
    &lt;/billtrack:bill&gt;
  &lt;/billtrack:relatedbills&gt;
&lt;/billtrack:prelim&gt;

                    </pre>
                    <note>Kindly strip out the initial <sourcexml>emph</sourcexml> when it contains
                      the text "Cognate Bills" and the immediate newline (<sourcexml>nl</sourcexml>)
                      only.</note>
                    <note>The title "Cognate Bills" will be generated by the presentation
                      stylesheet.</note>
                    <note>The element <sourcexml>nl</sourcexml> will be suppressed from
                      conversion.</note>
                    <note>For handling <sourcexml>remotelink</sourcexml> refer <xref href="../../common_newest/Rosetta_remotelink-LxAdv-ref.crossreference.dita">remotelink</xref></note>
                  </li>              
                </ul>
             <ul>
                <li>
                  <p>There are two general types of documents in AU Bill Tracking:</p>
                  <ol>
                   <li>
                     <b>BILL DIGEST TYPE BILL TRACK DOCUMENTS</b>
                        <sourcexml>/DIGESTDOC/dig:body/level/bodytext</sourcexml> becomes
                          <targetxml>/billtrack:billtrack/billtrack:body/bodytext</targetxml>
                     <note>The bill digest type bill track documents are identified using the root element <sourcexml>DIGESTDOC</sourcexml> and <sourcexml>docinfo:selector</sourcexml> having value as "BILL".</note>
                        <pre>
                          <b>Source XML 1</b>
    &lt;level&gt;
           &lt;bodytext&gt;
            &lt;pgrp&gt;
             &lt;heading&gt;
              &lt;title&gt;&lt;emph typestyle="bf"&gt;Description of Bill&lt;/emph&gt;&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
              &lt;text&gt;This Bill is for an Act to establish Screen Australia, and for related purposes. The Bill provides for the establishment of Screen Australia ('SA'). SA would replace the Australian Film Commission ('AFC') (with the exception
of the National Film and Sound Archive (NFSA) function and certain functions which are to be transferred to the Australian Film, Television and Radio School (AFTRS)), the Film Finance Corporation Australia Limited ('FFC') and Film
Australia Limited ('FAL'). 
.....
              &lt;/text&gt;
          &lt;/p&gt;
          &lt;/pgrp&gt;
        &lt;/bodytext&gt;
      &lt;/level&gt;

</pre>
               <b>Becomes</b>
                      <pre>
                        <b>Target XML 1</b>
&lt;bodytext&gt;
            &lt;pgrp&gt;
             &lt;heading&gt;
               &lt;title&gt;&lt;emph typestyle="bf"&gt;Description of Bill&lt;/emph&gt;&lt;/title&gt;
             &lt;/heading&gt;
            &lt;p&gt;
              &lt;text&gt;This Bill is for an Act to establish Screen Australia, and for related purposes. The Bill provides for the establishment of Screen Australia ('SA'). SA would replace the Australian Film Commission ('AFC') (with the exception
of the National Film and Sound Archive (NFSA) function and certain functions which are to be transferred to the Australian Film, Television and Radio School (AFTRS)), the Film Finance Corporation Australia Limited ('FFC') and Film
Australia Limited ('FAL'). 
.....
             &lt;/text&gt;
            &lt;/p&gt;
           &lt;/pgrp&gt;
         &lt;/bodytext&gt;       
          
                        </pre>
                     <pre>
                       <b>Source XML 2</b>

&lt;level&gt; 
  &lt;bodytext&gt;
   &lt;pgrp&gt;
     &lt;heading&gt;
      &lt;title&gt;Links to documents on Government Websites&lt;/title&gt;
     &lt;/heading&gt;
 &lt;p&gt;
 &lt;text&gt;
    &lt;emph typestyle="bf"&gt;ACT Parliamentary Counsel's Office&lt;/emph&gt;
 &lt;/text&gt;
 &lt;/p&gt;
 &lt;p&gt;
 &lt;text&gt;
    &lt;remotelink hrefclass="http" newwindow="YES" href="www.legislation.act.gov.au/b/db_31286/default.asp"&gt;Text of bill&lt;/remotelink&gt;
 &lt;/text&gt;
 &lt;/p&gt;
 &lt;p&gt;
  &lt;text&gt;
    &lt;remotelink hrefclass="http" newwindow="YES" href="www.legislation.act.gov.au/es/db_31301/20071017-35168/pdf/db_31301.pdf"&gt;Explanatory Memorandum
    &lt;/remotelink&gt;
  &lt;/text&gt;
 &lt;/p&gt;
  &lt;/pgrp&gt;
  &lt;/bodytext&gt;
 &lt;/level&gt;

</pre>
               <b>Becomes</b>
<pre>
                          <b>Target XML 2</b> 

  &lt;bodytext&gt;
           &lt;pgrp&gt;
                &lt;heading&gt;
                    &lt;title&gt;Links to documents on Government Websites&lt;/title&gt;
                 &lt;/heading&gt;
                &lt;p&gt;
                    &lt;text&gt;&lt;emph typestyle="bf"&gt;ACT Parliamentary Counsel's Office&lt;/emph&gt;&lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:lnlink service="URL"&gt;
                            &lt;ref:marker&gt;Text of bill&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="URL"/&gt;
                                    &lt;ref:key-value value="http://www.legislation.act.gov.au/b/db_31286/default.asp"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;                        
                     &lt;/text&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;text&gt;
                        &lt;ref:lnlink service="URL"&gt;
                            &lt;ref:marker&gt;Explanatory Memorandum&lt;/ref:marker&gt;
                            &lt;ref:locator&gt;
                                &lt;ref:locator-key&gt;
                                    &lt;ref:key-name name="URL"/&gt;
                                    &lt;ref:key-value value="http://www.legislation.act.gov.au/es/db_31301/20071017-35168/pdf/db_31301.pdf"/&gt;
                                &lt;/ref:locator-key&gt;
                            &lt;/ref:locator&gt;
                        &lt;/ref:lnlink&gt;                        
                     &lt;/text&gt;
                &lt;/p&gt;
          &lt;/pgrp&gt;
      &lt;/bodytext&gt;
          
</pre>
              <note>The element <sourcexml>level</sourcexml> will be omitted from conversion.</note>       
                </li>
                    <li>
                      <b>STATUS TYPE BILL TRACK DOCUMENTS</b>
                      <sourcexml>/DIGESTDOC/dig:body/level</sourcexml> becomes
                      <targetxml>/billtrack:billtrack/billtrack:body/bodytext/pgrp</targetxml>
                      <note>For status type documents add <targetxml>pgrp</targetxml> as child of <targetxml>bodytext</targetxml> and the input files will be of the format "XXX_STATUS.xml" where XXX is represents different states of AU.</note>
                      <pre>
                        <b>Source XML 1</b>
&lt;dig:body&gt;
    &lt;level&gt;
      &lt;heading&gt;
        &lt;title&gt;Queensland Update Status&lt;/title&gt;
      &lt;/heading&gt;
      &lt;bodytext&gt;
        &lt;p&gt;
          &lt;text&gt;This service is current as at the dates listed in the following table:&lt;/text&gt;
        &lt;/p&gt;
        &lt;!-- ... --&gt;
      &lt;/bodytext&gt;
    &lt;/level&gt;
  &lt;/dig:body&gt;

                 </pre>
                  <pre>
                    <b>Target XML 1</b>
&lt;billtrack:body&gt;
    &lt;bodytext&gt;
      &lt;pgrp&gt;
        &lt;heading&gt;
          &lt;title&gt;Queensland Update Status&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
          &lt;text&gt;This service is current as at the dates listed in the following table:&lt;/text&gt;
        &lt;/p&gt;
        &lt;!-- ... --&gt;
      &lt;/pgrp&gt;
    &lt;/bodytext&gt;
  &lt;/billtrack:body&gt;
  
                  </pre>  
                  </li>
                  </ol>                           
                </li>          
               </ul>            
              </li>
            </ul>
          </li>
        </ul>
      </p>
    </section>
    <section>
      <title/>
      <p>2014-09-25: <ph id="change_20140925_AS">Updated "DOCID" to ref:key-name name="DOC-ID"</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU12_Bill_Tracking\billtrack-Body.dita  -->
	 

	<xsl:template match="dig:body">
			<billtrack:body>
				<xsl:apply-templates select="@* | node()"/>
			</billtrack:body>
	</xsl:template>

	<xsl:template match="dig:info">
		<primlaw:level leveltype="unclassified">
			<primlaw:levelinfo>
				<primlawinfo:primlawinfo>
					<xsl:apply-templates select="@* | node()"/>
				</primlawinfo:primlawinfo>
			</primlaw:levelinfo>
		</primlaw:level>
	  <xsl:apply-templates select="leg:info/leg:relatedleg"/>
	</xsl:template>

	<xsl:template match="leg:info">
	  <xsl:if test="not(leg:juris and not(child::*[2])) and not(leg:relatedleg and not(child::*[2]))">
	    <legisinfo:legisinfo>
	      <xsl:apply-templates select="@*|node() except (leg:juris | leg:relatedleg) "/>			
	    </legisinfo:legisinfo>
	  </xsl:if>	 
	</xsl:template>

  <xsl:template match="leg:officialname">
    <legisinfo:names>
      <legisinfo:officialtitle>
        <xsl:apply-templates select="@* | node() except refpt"/>
      </legisinfo:officialtitle>
    </legisinfo:names>
  </xsl:template>
	
		<xsl:template match="leg:relatedleg[@type='subordinate']">
		  <billtrack:prelim>
		    <billtrack:relatedbills>
		      <xsl:apply-templates select="@* except @type"/>
		      <xsl:for-each select="node() except (emph[parent::leg:relatedleg[@type='subordinate']][.='Cognate Bills'] | nl)">
		        <xsl:choose>
		          <xsl:when test="self::remotelink">
		            <billtrack:bill>
		              <xsl:apply-templates select="."/>
		            </billtrack:bill>
		          </xsl:when>
		          <xsl:otherwise>
		            <xsl:apply-templates select="."/>
		          </xsl:otherwise>
		        </xsl:choose>
		      </xsl:for-each>
		    </billtrack:relatedbills>
		  </billtrack:prelim>
		</xsl:template>
		
		
	<xsl:template match="dig:body/level">
	  <xsl:choose>
	    <xsl:when test="ancestor::dig:body/preceding-sibling::docinfo/docinfo:selector[lower-case(.)='bill']">
	      <xsl:apply-templates select="@* | node()"/>
	    </xsl:when>
	    <xsl:otherwise>
	      <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <pgrp>
	          <xsl:apply-templates select="@*|node()"/>
	        </pgrp>
	      </bodytext>
	    </xsl:otherwise>
	  </xsl:choose>	  
	</xsl:template>	


	<xsl:template match="dig:body/level/bodytext">
	  
	  <xsl:choose>	    
	    <xsl:when test="ancestor::dig:body/preceding-sibling::docinfo/docinfo:selector[lower-case(.)='bill']">
	      <bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
	        <xsl:apply-templates select="@*|node()"/>
	      </bodytext>
	    </xsl:when>
	    <xsl:otherwise>
	       <xsl:apply-templates select="@*|node()"/>
	    </xsl:otherwise>
	  </xsl:choose>
	</xsl:template>



	

</xsl:stylesheet>