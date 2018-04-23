<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:admindecision="urn:x-lexisnexis:content:administrative-decision:sharedservices:1" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.constituents">
   <title>case:constituents <lnpid>id-CA04-13414</lnpid></title>
   <body>
      <section>
          <ul>
         <li class="- topic/li ">
                   <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:constituents</sourcexml>
                    becomes <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:representation</targetxml> and create <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:counsel/bodytext</targetxml> within <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:representation</targetxml> for handling child elements of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:constituents</sourcexml>   <note class="- topic/note ">Conversion should create <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:representation</targetxml> as the first child within <targetxml class="+ topic/keyword xml-d/targetxml ">admindoc:body</targetxml> in order to maintain element ordering.</note>
                   
             <note class="- topic/note ">Remove colons (:) with or without space from <sourcexml>case:constituents/title</sourcexml> in New Lexis Conversion <targetxml>admindecision:representation/admindecision:counsel/bodytext/pgrp/heading/title</targetxml> if appear after the following-
                 <ul>
                     <li>
                                <sourcexml>Appearances:</sourcexml> to
                                    <targetxml>Appearances</targetxml></li>
                     <li><sourcexml>Counsel:</sourcexml> to <targetxml>Counsel</targetxml>
                            </li>
                     <li>
                                <sourcexml>Comparutions :</sourcexml>
                                    to<targetxml>Comparutions</targetxml>
                            </li>
                     <li>
                                <sourcexml>Comparutions:</sourcexml>
                                    to<targetxml>Comparutions</targetxml>
                            </li>
                     <li>
                                <sourcexml>Avocats :</sourcexml> to<targetxml>Avocats</targetxml>
                            </li>
                     <li>
                                <sourcexml>Avocats:</sourcexml>to <targetxml>Avocats</targetxml>
                            </li>
                     <li>
                                <sourcexml>Ont comparu:</sourcexml> to<targetxml>Ont
                                    comparu</targetxml>
                            </li>
                     <li>
                                <sourcexml>Ont comparu :</sourcexml>to <targetxml>Ont
                                    comparu</targetxml>
                            </li>
                     <li>
                                <sourcexml>AVOCATS:</sourcexml> to<targetxml>AVOCATS</targetxml>
                            </li>
                     <li>
                                <sourcexml>AVOCATS :</sourcexml>to <targetxml>AVOCATS</targetxml>
                            </li>
                            <li><sourcexml>Cases cited:</sourcexml> to <targetxml>Cases
                                    cited</targetxml></li>
                            <li><sourcexml>Cases Cited:</sourcexml> to <targetxml>Cases
                                    Cited</targetxml></li>
                            <li><sourcexml>Jurisprudence cite :</sourcexml> to
                                    <targetxml>Jurisprudence cite</targetxml></li>
                            <li><sourcexml>Statutes, Regulations and Rules Cited:</sourcexml> to
                                    <targetxml>Statutes, Regulations and Rules
                                Cited</targetxml></li>
                            <li><sourcexml>Législation citée :</sourcexml> to <targetxml>Législation
                                    citée</targetxml></li>
                            <li><sourcexml>Authors and Texts Cited:</sourcexml> to
                                    <targetxml>Authors and Texts Cited</targetxml></li>
                            <li><sourcexml>Texts Cited:</sourcexml> to <targetxml>Texts
                                    Cited</targetxml></li>
                            <li><sourcexml>Causes citées et consultées :</sourcexml> to
                                    <targetxml>Causes citées et consultées</targetxml></li>
                            <li><sourcexml>Jurisprudence et doctrine citées et consultées
                                    :</sourcexml> to <targetxml>Jurisprudence et doctrine citées et
                                    consultées</targetxml></li>
                            <li><sourcexml>Doctrine et jurisprudence citées :</sourcexml> to
                                    <targetxml>Doctrine et jurisprudence citées</targetxml></li>
                            <li><sourcexml>Doctrine citée :</sourcexml> to <targetxml>Doctrine
                                    citée</targetxml></li>  </ul>               
             </note>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:constituents&gt;
    &lt;pgrp&gt;
        &lt;heading&gt;
            &lt;title&gt;Appearances:&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;Peter Csiszar, for the employer.&lt;nl/&gt; Clea Parfitt, for the union.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:constituents&gt;
                   
             
<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;admindecision:representation&gt;
    &lt;admindecision:counsel&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;heading&gt;
                    &lt;title&gt;Appearances&lt;/title&gt;
                &lt;/heading&gt;
                &lt;p&gt;
                    &lt;text&gt;Peter Csiszar, for the employer.&lt;proc:nl/&gt; Clea Parfitt, for the
                        union.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/admindecision:counsel&gt;
&lt;/admindecision:representation&gt;

</pre>                    
         </li>
              
              <li> If <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:constituents</sourcexml> is child of <sourcexml class="+ topic/keyword xml-d/sourcexml ">case:appendix/case:headnote/case:info</sourcexml> then it becomes
                        <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:appendix/admindecision:representation</targetxml> and create
                        <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:counsel/bodytext</targetxml> within <targetxml class="+ topic/keyword xml-d/targetxml ">admindecision:representation</targetxml>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:appendix&gt;
    &lt;case:headnote&gt;
        &lt;case:info&gt;
            &lt;case:constituents&gt;
                &lt;pgrp&gt;
                    &lt;heading&gt;
                        &lt;title&gt;Appearances:&lt;/title&gt;
                    &lt;/heading&gt;
                    &lt;p&gt;
                       &lt;text&gt;
                       For Appellants&lt;nl/&gt;
                       Mr. R.A. Gillespie&lt;nl/&gt; 
                       Mr. L. Gross represented by Mrs. K. Young&lt;nl/&gt; 
                       Ms. N. Hayward represented by Mrs. K. Young&lt;nl/&gt;
                       Mr. P. O'Brien represented by Mrs. K. Young&lt;nl/&gt; 
                       Ms. P. Parsons represented by Mrs. K. Young&lt;nl/&gt; 
                       Ms. M. Beard represented by Mrs. K.Young&lt;nl/&gt; 
                       Ms. L. Floyd represented by Mrs. K. Young&lt;nl/&gt; 
                       Ms. L. Graves represented by Mrs. K. Young&lt;nl/&gt; 
                       Mr. T. Young represented by Mrs. K.Young&lt;nl/&gt; 
                       Ms. C. Young represented by Mrs. K. Young&lt;nl/&gt; 
                       Mrs. J. MacKenzie&lt;nl/&gt;
                            &lt;!-- .... --&gt;
                        &lt;/text&gt;
                    &lt;/p&gt;
                &lt;/pgrp&gt;
            &lt;/case:constituents&gt;
        &lt;/case:info&gt;
    &lt;/case:headnote&gt;
&lt;/case:appendix&gt;


<b class="+ topic/ph hi-d/b ">Becomes</b>  
                        
&lt;admindecision:appendix&gt;
&lt;admindecision:representation&gt;
    &lt;admindecision:counsel&gt;
        &lt;bodytext&gt;
            &lt;pgrp&gt;
                &lt;heading&gt;&lt;title&gt;Appearances&lt;/title&gt;&lt;/heading&gt;
                &lt;p&gt;
                    &lt;text&gt;
                    For Appellants&lt;proc:nl/&gt;
                    Mr. R.A. Gillespie&lt;proc:nl/&gt;
                    Mr. L. Gross represented by Mrs. K. Young&lt;proc:nl/&gt;
                    Ms. N. Hayward represented by Mrs. K. Young&lt;proc:nl/&gt;
                    Mr. P. O'Brien represented by Mrs. K. Young&lt;proc:nl/&gt;
                    Ms. P. Parsons represented by Mrs. K. Young&lt;proc:nl/&gt;
                    Ms. M. Beard represented by Mrs. K. Young&lt;proc:nl/&gt;
                    Ms. L. Floyd represented by Mrs. K. Young&lt;proc:nl/&gt;
                    Ms. L. Graves represented by Mrs. K. Young&lt;proc:nl/&gt;
                    Mr. T. Young represented by Mrs. K. Young&lt;proc:nl/&gt;
                    Ms. C. Young represented by Mrs. K. Young&lt;proc:nl/&gt;
                    Mrs. J. MacKenzie&lt;proc:nl/&gt;
                        &lt;!-- .... --&gt;
                    &lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;
        &lt;/bodytext&gt;
    &lt;/admindecision:counsel&gt;
  &lt;/admindecision:representation&gt;
&lt;/admindecision:appendix&gt;
    </pre>

                </li>
          </ul>
      </section>
       <section>
           <title>Changes</title>
           <p>2014-10-27: <ph id="change_20141027_AS">update the List of terms in CA04 CI with the terms listed in the CA01 CI where the CI mentions admindecision:representation and ref:relatedrefs <b>Db issue #355</b></ph></p>
           <p>2014-06-19: <ph id="change_20140619_AS">Remove colon from case:constituents title Appearances:... Db issue #1649</ph></p>
       </section>       
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA04-Administrative_Decisions\case.constituents.dita  -->
	<!--<xsl:message>CA04-Administrative_Decisions_case.constituents.xsl requires manual development!</xsl:message> -->

	<xsl:template match="case:constituents">
	    <!--<xsl:choose>
	        <xsl:when test="ancestor::case:appendix/case:headnote/case:info">
	            <admindecision:appendix>
	                <admindecision:representation>
	                    <admindecision:counsel>
	                        <bodytext>
	                            <xsl:apply-templates select="@* | node()"/>
	                        </bodytext>
	                    </admindecision:counsel>
	                </admindecision:representation>
	            </admindecision:appendix>
	        </xsl:when>
	        <xsl:otherwise>-->
	    <!--RS[2017-12-01]: Edit the template for adding element admindecision:representation/bodytext when input have case:constituents element as a child  of case:appendix/case:headnote/case:info-->
	            <admindecision:representation>
	                <admindecision:counsel>
	                    <bodytext>
	                        <xsl:apply-templates select="@* | node()"/>
	                    </bodytext>
	                </admindecision:counsel>
	            </admindecision:representation>
	       <!--</xsl:otherwise>
	    </xsl:choose>
-->	</xsl:template>

    <xsl:template match="title[ancestor::case:constituents]" priority="25">
        <xsl:choose>
            <xsl:when test="replace(.,' ','')=$titlecase">
                <title>
                    <xsl:value-of select="normalize-space(replace(.,':',''))"/>
                </title>
            </xsl:when>
            <xsl:otherwise>
                <title>
                    <xsl:value-of select="."/>
                </title>
            </xsl:otherwise>
        </xsl:choose>
       
    </xsl:template>
	
    <xsl:variable name="titlecase" select="'Appearances:',
        'Counsel:',
        'Comparutions:',
        'Comparutions:',
        'Avocats:',
        'Avocats:',
        'Ontcomparu:',
        'Ontcomparu:',
        'AVOCATS:',
        'AVOCATS:',
        'Casescited:',
        'CasesCited:',
        'Jurisprudencecite:',
        'Statutes,RegulationsandRulesCited:',
        'Législationcitée:',
        'AuthorsandTextsCited:',
        'TextsCited:',
        'Causescitéesetconsultées:',
        'Jurisprudenceetdoctrinecitéesetconsultées:',
        'Doctrineetjurisprudencecitées:',
        'Doctrinecitée:'"/>
</xsl:stylesheet>