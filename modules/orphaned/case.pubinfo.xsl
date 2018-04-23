<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.pubinfo">
   <title>case:pubinfo <lnpid>id-CA02CC-12430</lnpid></title>
   <body>
      <section>
         <note>LBU comments on below mentioned documents: <b>CA00000006171278_00000001.xml</b> and <b>CA00000005569481_00000238.xml</b> – should not have been sent for conversion. Please drop from conversion testing.</note>
         <p><sourcexml>case:pubinfo</sourcexml> should be suppressed if it contains any of the
            following values: <ul>
               <li>** Preliminary Version **</li>
               <li>** Unedited **</li>
               <li>** Version textuelle **</li>
               <li>Intitulé de la cause :</li>
               <li>** Translation**</li>
               <li>**Translation **</li>
               <li>* Translation **</li>
               <li>** Version textuelle**</li>
               <li>* Traduction **</li>
               <li>** Traducation **</li>
               <li>** Traducion **</li>
               <li>** Traduction *</li>
               <li>** Traduction ***</li>
               <li>** Traduction**</li>
               <li>** Translation</li>
               <li>** Translation **)</li>
               <li>** Translation**</li>
               <li>**Traduction **</li>
               <li>**: Traduction **</li>
               <li>'@c** Traduction **</li>
               <li>'@** Traduction **</li>
               <li>Rpertori:</li>
               <li>** Version textuelle **</li>
               <li>** Translations **</li>
               <li>**Translation **</li>
               <li>** Version textuelle**</li>
               <li>** Version textuelle **#</li>
               <li>** Version Textuelle **</li>
               <li>** Version textuelle *</li>
               <li>** Version textuelle</li>
               <li>** Version franaise **</li>
               <li>** Version francaise **</li>
               <li>** Unofficial Translation [*] **</li>
               <li>** Unofficial Translation ** [*]</li>
            </ul></p>
         <p>If <sourcexml>case:pubinfo</sourcexml> does not contain one of the values listed above, it
            becomes <targetxml>note</targetxml> with the value of <targetxml>note/@notetype</targetxml>
            set to "other".</p>
         <p>The content of <sourcexml>case:pubinfo</sourcexml> should be placed in
            <targetxml>note/bodytext/p/text</targetxml>.</p>
      </section>
      <example>
         <title>Mapping of <sourcexml>case:pubinfo</sourcexml></title>
         <codeblock>

&lt;case:pubinfo&gt;** Traduction **&lt;/case:pubinfo&gt;

           </codeblock>
         <b>becomes</b>
         <codeblock>

&lt;note notetype="other"&gt;
  &lt;bodytext&gt;
    &lt;p&gt;
      &lt;text&gt;** Traduction **&lt;/text&gt;
    &lt;/p&gt;
  &lt;/bodytext&gt;
&lt;/note&gt;

           </codeblock>
      </example>
      <section>
         <title>Changes</title>
         <p>2014-05-19: <ph id="change20140519_AS">Proper spelling of ** Version textuelle is added... DB issue#197</ph>
         </p>
      </section>
   </body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.pubinfo.dita  -->

   <xsl:variable name="text">
     
    
      <li>** Unofficial Translation ** [*]</li>
   </xsl:variable>
   
   
   
<!-- Sudhanshu Srivastava edited on 16-May-2017.-->
   <xsl:template match="case:pubinfo[.=('** Preliminary Version **','** Traduction **','** Translation **','** Unedited **','** Version textuelle **','Intitulé de la cause :','** Translation**','**Translation **','* Translation **','** Version textuelle**','* Traduction **','** Traducation **','** Traducion **','** Traduction *','** Traduction ***','** Traduction**','** Translation','** Translation **)','** Translation**','**Traduction **','**: Traduction **','''@c** Traduction **','''@** Traduction **','Rpertori:','** Version textuelle **','** Translations **','**Translation **','** Version textuelle**','** Version textuelle **#','** Version Textuelle **','** Version textuelle *','** Version textuelle','** Version franaise **','** Version francaise **','** Unofficial Translation [*] **','** Unofficial Translation ** [*]')]" priority="2"/>
		
   <xsl:template match="case:pubinfo" priority="1">
	   <note notetype="{'other'}">
	      <bodytext>
	         <p>
            <text>
      			<xsl:apply-templates/>
	         </text>
	         </p>
	      </bodytext>
	   </note>

	</xsl:template>
</xsl:stylesheet>