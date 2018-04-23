<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody-LxAdv-primlaw.bodytext_or_primlaw.level">
 <title>leg:levelbody <lnpid>id-HK04-36617</lnpid></title>
 <body>
  <section>
    
     <ul>
      <li class="- topic/li ">
       The conversion of <sourcexml>leg:levelbody</sourcexml> depends upon its child elements:
       <ul>
         <li>
           <sourcexml>leg:levelbody/leg:bodytext</sourcexml> becomes <targetxml>primlaw:bodytext</targetxml>.
         </li>
        <li> 
         <sourcexml>leg:levelbody/leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>.
        </li>
       </ul>
      </li>
     </ul>
     <ul>
       <li>Example for <sourcexml>leg:levelbody/leg:bodytext</sourcexml>
         <pre>
&lt;leg:body&gt;
  &lt;leg:level id="AOHK.0025.SUBLEG_001.BODY"&gt;
   &lt;leg:level-vrnt searchtype="LEGISLATION RULE" leveltype="rule"&gt;
     &lt;leg:levelbody&gt;
        &lt;leg:bodytext&gt;
           .....
        &lt;/leg:bodytext&gt;
   &lt;/leg:levelbody&gt;
  &lt;/leg:level-vrnt&gt;
 &lt;/leg:level&gt;
 ....
&lt;/leg:body&gt;

</pre>
                    <b>Becomes</b>
                    <pre>
        
&lt;courtrule:body&gt;
  &lt;primlaw:level leveltype="rule" xml:id="AOHK.0025.SUBLEG_001.BODY"&gt;
    &lt;primlaw:bodytext&gt;
      .....
    &lt;/primlaw:bodytext&gt;
  &lt;/primlaw:level&gt;
&lt;/courtrule:body&gt;

      </pre>
                </li>
       <li>Example for  <sourcexml>leg:levelbody/leg:level</sourcexml>:
         <pre>
&lt;leg:body&gt;
&lt;leg:level id="AOHK.0025.SUBLEG_001.BODY"&gt;
 &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="rule"&gt;
   &lt;leg:levelbody&gt;
      &lt;leg:level id="AOHK.0025.SUBLEG_001.RUL1"&gt;
          &lt;leg:level-vrnt toc-caption="1. Citation" subdoc="true" searchtype="LEGISLATION RULE" leveltype="rule"&gt;
              &lt;leg:levelbody&gt;
                  &lt;leg:bodytext&gt;
                     ....
                  &lt;/leg:bodytext&gt;
              &lt;/leg:levelbody&gt;
          &lt;/leg:level-vrnt&gt;
       &lt;/leg:level&gt;
     &lt;/leg:levelbody&gt;
   &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
&lt;/leg:body&gt;

   </pre>
                    <b>Becomes</b>
                    <pre>
    
    &lt;courtrule:body&gt;
       &lt;primlaw:level xml:id="AOHK.0025.SUBLEG_001.BODY" leveltype="rule"&gt;
           &lt;primlaw:level xml:id="AOHK.0025.SUBLEG_001.RUL1" leveltype="rule" includeintoc="true" alternatetoccaption="1. Citation"&gt;
              &lt;primlaw:bodytext&gt;
                 ....
              &lt;/primlaw:bodytext&gt;
         &lt;/primlaw:level&gt;
      &lt;/primlaw:level&gt;
    &lt;/courtrule:body&gt;
    

   </pre>
                </li>
      
     </ul>           
  </section>
     <section>
         <title>Changes</title>
         <p>2016-03-02: <ph id="change_20160302_HP">Created</ph>.</p>
     </section>
 </body>
	</dita:topic>


	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:level   -->
				<xsl:apply-templates select="@* | node()"/>

	</xsl:template>

</xsl:stylesheet>