<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
  xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" 
  exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
   <title>leg:levelbody <lnpid>id-HK01-36817</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            The conversion of <sourcexml>leg:levelbody</sourcexml> depends upon its child elements:
            <ul>
              <li>
                If <sourcexml>leg:level</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:level</targetxml> i.e, 
                <sourcexml>leg:levelbody/leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>.
              </li>
              <li>
                If <sourcexml>leg:bodytext</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become <targetxml>primlaw:bodytext</targetxml> i.e,
                <sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
              </li>
            </ul>
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML 1 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
             <codeblock>

&lt;leg:levelbody&gt;
  &lt;leg:bodytext&gt;
    &lt;glp:note&gt;
      &lt;p&gt;
          &lt;text&gt;To consolidate and amend the law relating to companies...&lt;/text&gt;
      &lt;/p&gt;
    &lt;/glp:note&gt;
&lt;/leg:bodytext&gt;


                 </codeblock>
           </example>
           
           <example>
             <title>Target XML 1 :  <sourcexml>primlaw:bodytext</sourcexml></title>
             <codeblock>

&lt;primlaw:bodytext&gt;
  &lt;note&gt;
    &lt;bodytext&gt;
        &lt;p&gt;&lt;text&gt;To consolidate and amend the law relating to companies...&lt;/text&gt;&lt;/p&gt;
    &lt;/bodytext&gt;
  &lt;/note&gt;

&lt;/primlaw:bodytext&gt;

             </codeblock>
           </example>
     
     <example>
       <title>Source XML 2 : For <sourcexml>leg:bodytext</sourcexml></title>
       <codeblock>

&lt;leg:bodytext&gt;
  &lt;p&gt;&lt;text&gt;This Ordinance may be cited as the Companies Ordinance.&lt;/text&gt;&lt;/p&gt;
&lt;/leg:bodytext&gt;

                 </codeblock>
     </example>
     
     <example>
       <title>Target XML 2:  <sourcexml>primlaw:bodytext</sourcexml></title>
       <codeblock>

&lt;primlaw:bodytext&gt;
  &lt;p&gt;&lt;text&gt;This Ordinance may be cited as the Companies Ordinance.&lt;/text&gt;&lt;/p&gt;  
&lt;/primlaw:bodytext&gt;

             </codeblock>
     </example>
 <section>
       <title>Changes</title>
       <p>2016-03-04: <ph id="change_20160304_SS">Created</ph>.</p>
</section>
   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-HK\HK01_Acts\leg.levelbody.dita  -->

<!-- JL : seems like this is a passthrough  -->
	
  <xsl:template match="leg:levelbody">
    <xsl:apply-templates select="node()"/>		
	</xsl:template>

</xsl:stylesheet>