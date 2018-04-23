<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:legisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/legislation-info/1/" xmlns:primlawinfo="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw-info/1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-CA07-14020</lnpid></title>
   <body>
      <section>
        <ul>
          <li class="- topic/li ">
            <sourcexml>leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml> comes with attributes:
            <sourcexml>@searchtype</sourcexml> will be dropped from conversion and 
            <sourcexml>@leveltype</sourcexml> becomes <targetxml>@leveltype</targetxml> should be set to <b>"unclassified"</b> 
            i.e, <targetxml>@leveltype="unclassified"</targetxml>.
          </li>
        </ul>
      </section>

           <example>
             <title>Source XML</title>
             <codeblock>

&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading&gt;
            &lt;title align="center"&gt;A. Appeal Book&lt;/title&gt;
        &lt;/leg:heading&gt;
        ....
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML</title>
             <codeblock>

&lt;primlaw:level leveltype="unclassified"&gt;
    &lt;heading&gt;
        &lt;title&gt;A. Appeal Book&lt;/title&gt;
    &lt;/heading&gt;
    ....
&lt;/primlaw:level&gt;

             </codeblock>
           </example>
     
     <note><sourcexml>leg:level/leg:level-vrnt</sourcexml> will become <targetxml>primlaw:level</targetxml>.</note>
     <section>
       <p>When source file is not having <sourcexml>refpt</sourcexml> as a child of
          <sourcexml>leg:heading</sourcexml> then conversion should generate
          <targetxml>ref:anchor</targetxml> element as a first child of
         <targetxml>primlaw:level</targetxml> in target. <targetxml>ref:anchor/@id="TOC00*"</targetxml>,
        for * Conversion should generate a unique numeric value and
         <targetxml>ref:anchor/@anchortype="local"</targetxml>.</p>
       <note>Conversion should generate above <sourcexml>refpt</sourcexml> rule for all the
          <sourcexml>leg:heading</sourcexml> element those are having
          <sourcexml>leg:heading/@subdoc="true"</sourcexml>.</note>
     </section>
     
     <example>
       <title>Source XML</title>
       <codeblock>
&lt;leg:level&gt;
    &lt;leg:level-vrnt searchtype="LEGISLATION" leveltype="2"&gt;
        &lt;leg:heading subdoc="true" toc-caption="PARTIES AND JOINDER" align="center"&gt;
            &lt;title align="center"&gt;PARTIES AND JOINDER&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            ...
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
                 </codeblock>
     </example>
     
     <example>
       <title>Target XML</title>
       <codeblock>
&lt;primlaw:level alternatetoccaption="PARTIES AND JOINDER" includeintoc="true"
    leveltype="unclassified"&gt;
    &lt;ref:anchor id="TOC001" anchortype="local"/&gt;
    &lt;heading&gt;
        &lt;title&gt;PARTIES AND JOINDER&lt;/title&gt;
    &lt;/heading&gt;
    ...
&lt;/primlaw:level&gt;
             </codeblock>
     </example>
     
     <section>
       <title>Changes</title>
       <p>2016-06-04: <ph id="change_20160604_PS">Updated target element mapping when source is not having
         <sourcexml>refpt</sourcexml> as a child of <sourcexml>leg:heading</sourcexml>. Applicable on CA07.</ph></p>
       <p>2016-06-01: <ph id="change_20160601_PS">Updated note for generation of <targetxml>ref:anchor</targetxml> based on 
          <sourcexml>@subdoc="true"</sourcexml> value.</ph></p>
       <p>2016-06-01: 
        <ph id="change_20160106_PS">Added rule to generate <targetxml>ref:anchor</targetxml> element
          in <targetxml>primlaw:level</targetxml> when source is not having
            <sourcexml>refpt</sourcexml> as a child of <sourcexml>leg:heading</sourcexml>,
          Applicable on CA07. Webstar # 6527826.</ph></p>
       <p>2013-03-28: <ph id="change_20130328_SP">Updated target example [removed <targetxml>@align="center"</targetxml> from <targetxml>title</targetxml>.</ph></p>
     </section>

   </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA07-CourtRules\leg.level.dita  -->


  
  

  <xsl:template match="leg:level">
    <xsl:apply-templates select="@* | node()"/>
  </xsl:template>
  
</xsl:stylesheet>