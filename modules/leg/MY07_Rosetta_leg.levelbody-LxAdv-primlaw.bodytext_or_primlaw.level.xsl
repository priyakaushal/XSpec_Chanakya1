<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY07_Rosetta_leg.levelbody-LxAdv-primlaw.bodytext_or_primlaw.level">
 <title>leg:levelbody <lnpid>id-MY07-17421</lnpid></title>
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
     <ul>
      <li>If the elements <sourcexml>leg:levelbody</sourcexml> and
       <sourcexml>leg:bodytext</sourcexml> occurs simultaneously then
       <targetxml>primlaw:bodytext</targetxml> and populated as: 
       <pre>
                
&lt;leg:body&gt;
  &lt;leg:level id="USM.0333e.PUA0309y2012e.BODY"&gt;
   &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
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
  &lt;primlaw:level leveltype="act" xml:id="USM.0333e.PUA0309y2012e.BODY"&gt;
    &lt;primlaw:bodytext&gt;
      .....
    &lt;/primlaw:bodytext&gt;
  &lt;/primlaw:level&gt;
&lt;/courtrule:body&gt;

      </pre>
      </li>
      <li>If the element <sourcexml>leg:levelbody</sourcexml> has child
      <sourcexml>leg:level</sourcexml> then it becomes <targetxml>primlaw:level</targetxml> and
     populated as: <pre>
    
&lt;leg:body&gt;
&lt;leg:level id="USM.ALN0125y1958e"&gt;
 &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
   &lt;leg:levelbody&gt;
      &lt;leg:level id="USM.ALN0125y1958e.S1"&gt;
          &lt;leg:level-vrnt toc-caption="1. Citation" subdoc="true" searchtype="LEGISLATION SECT" leveltype="sect"&gt;
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
       &lt;primlaw:level xml:id="USM.ALN0125y1958e" leveltype="act"&gt;
           &lt;primlaw:level xml:id="USM.ALN0125y1958e.S1" leveltype="section" includeintoc="true" alternatetoccaption="1. Citation"&gt;
              &lt;primlaw:bodytext&gt;
                 ....
              &lt;/primlaw:bodytext&gt;
         &lt;/primlaw:level&gt;
      &lt;/primlaw:level&gt;
    &lt;/courtrule:body&gt;
    

   </pre>
    </li>
      <li>If the input documents are having scenario
       <sourcexml>leg:bodytext/leg:heading/title</sourcexml> then
       <sourcexml>leg:bodytext</sourcexml> becomes
       <targetxml>primlaw:bodytext</targetxml> and create a wrapper
       <targetxml>primlaw:level[@leveltype="unclassified"]</targetxml> with child
       <sourcexml>title</sourcexml> becomes <targetxml>title</targetxml>
       <pre>

&lt;leg:levelbody&gt;
  &lt;leg:bodytext&gt;
        &lt;leg:heading align="center"&gt;
            &lt;title&gt;
              &lt;refpt type="ext" id="USM.GN2740y1946e"/&gt;THE MALAY REGIMENT ENACTMENT&lt;nl/&gt;THE MALAY REGIMENT &amp;#x0028;PAY AND ALLOWANCES&amp;#x0029; RULES, 1946&lt;nl/&gt;&amp;#x005B;G.N. 2740/1946&amp;#x005D;
           &lt;/title&gt;
       &lt;/leg:heading&gt;
     ....
  &lt;/leg:bodytext&gt;
&lt;/&lt;leg:levelbody&gt;

                     
                 <b>Becomes</b>
                     

&lt;primlaw:bodytext&gt;
        &lt;primlaw:level leveltype="unclassified"&gt;
          &lt;ref:anchor id="USM.GN2740y1946e" anchortype="global"/&gt;
              &lt;heading align="center"&gt;                
                  &lt;title&gt;THE MALAY REGIMENT ENACTMENT&lt;nl/&gt;THE MALAY REGIMENT &amp;#x0028;PAY AND ALLOWANCES&amp;#x0029; RULES, 1946&lt;proc:nl&gt;
                  &amp;#x005B;G.N. 2740/1946&amp;#x005D;&lt;/title&gt;                
              &lt;/heading&gt;       
         &lt;/primlaw:level&gt;
        ....
&lt;/primlaw:bodytext&gt;
            
                   </pre>
      </li>
      <li> The first occurence of <sourcexml>leg:bodytext</sourcexml> becomes
                        <targetxml>primlaw:bodytext</targetxml> and after if
                        <sourcexml>leg:bodytext</sourcexml> has other
                        <sourcexml>leg:bodytext</sourcexml> or <sourcexml>leg:level</sourcexml> as
                    siblings then wrap each of them <targetxml>primlaw:level</targetxml> with
                        <targetxml>@leveltype="unclassified"</targetxml>
                    <pre>
<b>Example 1 Source</b>                       

&lt;leg:level id="USM.0053e.APUA0285y2012e.BODY"&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
        ....
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                ....
            &lt;/leg:bodytext&gt;
            &lt;leg:level id="USM.0053e.APUA0285y2012e.S1"&gt;
                    &lt;leg:level-vrnt toc-caption="1. Citation and commencement" subdoc="true" searchtype="LEGISLATION SECT" leveltype="sect"&gt;
                    ....
                    &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
            &lt;leg:level id="USM.0053e.APUA0285y2012e.S2"&gt;
                    &lt;leg:level-vrnt toc-caption="2. Substitution of Schedule" subdoc="true" searchtype="LEGISLATION SECT" leveltype="sect"&gt;
                        ....
                    &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;                

</pre>
                    <b>Becomes</b>
                    <pre>   
        <b>Example 1 Target </b>

&lt;primlaw:level xml:id="USM.0053e.APUA0285y2012e.BODY" leveltype="act"&gt;
    ....
    &lt;primlaw:bodytext&gt;
        .....
    &lt;/primlaw:bodytext&gt;
      &lt;primlaw:level xml:id="USM.0053e.APUA0285y2012e.S1" leveltype="section" alternatetoccaption="1. Citation and commencement" includeintoc="true"&gt;
        ....    
      &lt;/primlaw:level&gt;
     &lt;primlaw:level xml:id="USM.0053e.APUA0285y2012e.S2" leveltype="section" alternatetoccaption="2. Substitution of Schedule" includeintoc="true"&gt;
         ....
      &lt;/primlaw:level&gt;
       
&lt;/primlaw:level&gt;
     
       </pre>
                    <pre>
        <b>Example 2 Source</b>
        
 &lt;leg:level id="USM.LN0328y1952e"&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION ACT" leveltype="act"&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                .....
            &lt;/leg:bodytext&gt;
            &lt;leg:level id="USM.LN0328y1952e.PT1"&gt;
                 &lt;leg:level-vrnt searchtype="LEGISLATION SCHEDULEGRP" leveltype="schedulegrp"&gt;
                        .....
                    &lt;/leg:level-vrnt&gt;
            &lt;/leg:level&gt;
            &lt;leg:bodytext&gt;
                .....
            &lt;/leg:bodytext&gt;
            &lt;leg:bodytext&gt;
                .....
            &lt;/leg:bodytext&gt;

        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
        
     </pre>
                    <b>becomes</b>
                    <pre>
        <b>Example 2 Target</b>
        
&lt;primlaw:level leveltype="act" xml:id="USM.LN0328y1952e"&gt;
       &lt;primlaw:bodytext&gt;
          .....
       &lt;/primlaw:bodytext&gt;
       &lt;primlaw:level leveltype="schedule" xml:id="USM.LN0328y1952e.PT1"&gt;
         .....
       &lt;/primlaw:level&gt;
       &lt;primlaw:level leveltype="unclassified"&gt;
         &lt;primlaw:bodytext&gt;
           .....
         &lt;/primlaw:bodytext&gt;
      &lt;/primlaw:level&gt;
      &lt;primlaw:level leveltype="unclassified"&gt;
         &lt;primlaw:bodytext&gt;
            .....
         &lt;/primlaw:bodytext&gt;
     &lt;/primlaw:level&gt;
    
&lt;/primlaw:level&gt;
        
        
       </pre>
                </li>
     </ul>           
  </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY07_CourtRule\MY07_Rosetta_leg.levelbody-LxAdv-primlaw.bodytext_or_primlaw.level.dita  -->
	<!--<xsl:message>MY07_Rosetta_leg.levelbody-LxAdv-primlaw.bodytext_or_primlaw.level.xsl requires manual development!</xsl:message>--> 

    <xsl:template match="leg:levelbody">
        <!--  Original Target XPath:  primlaw:level   -->
        <xsl:apply-templates select="@* | node()"/>
    </xsl:template>


</xsl:stylesheet>