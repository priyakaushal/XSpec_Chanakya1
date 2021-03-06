<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
   <title>leg:levelbody <lnpid>id-MY05LB-16816</lnpid></title>
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
             <title>Source XML 1 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
             <codeblock>

&lt;leg:levelbody&gt;
    &lt;leg:level id="USM.0181e.APPENDIX02"&gt;
        &lt;leg:level-vrnt toc-caption="FINANCIAL IMPLICATIONS"
            subdoc="true" searchtype="LEGISLATION ATTACHMENT"
            leveltype="attachment"&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;leg:heading&gt;
                        &lt;title searchtype="ATTACH-TITLE"&gt;&lt;refpt type="ext"
                            id="USM.0181e.APPENDIX02"/&gt;FINANCIAL
                            IMPLICATIONS&lt;/title&gt;
                    &lt;/leg:heading&gt;
                    ...
                &lt;/leg:bodytext&gt;
            &lt;/leg:levelbody&gt;
            ...
        &lt;/leg:level-vrnt&gt;
     &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;


                 </codeblock>
           </example>
           
           <example>
             <title>Target XML 1 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
             <codeblock>

&lt;primlaw:level leveltype="attachment" alternatetoccaption="FINANCIAL IMPLICATIONS" includeintoc="true"&gt;
    &lt;ref:anchor id="USM.0181e.APPENDIX02" anchortype="global"/&gt;
    &lt;primlaw:bodytext&gt;
        &lt;primlaw:level leveltype="unclassified"&gt;
            &lt;heading&gt;
                &lt;title&gt;FINANCIAL IMPLICATIONS&lt;/title&gt;
            &lt;/heading&gt;                       
            ....
        &lt;/primlaw:level&gt;
    &lt;/primlaw:bodytext&gt;
&lt;/primlaw:level&gt;

             </codeblock>
           </example>
     
     <example>
       <title>Source XML 2 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;leg:levelbody&gt;
  &lt;leg:bodytext&gt;
      &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;&amp;#x0028;i&amp;#x0029; Clauses 13, 14 and 15&lt;/emph&gt; 
               provide for unlawful possession of, and restriction...&lt;/text&gt;&lt;/p&gt;
  &lt;/leg:bodytext&gt;
    ...
&lt;/leg:levelbody&gt;

                 </codeblock>
     </example>
     
     <example>
       <title>Target XML 2: For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;primlaw:bodytext&gt;
   &lt;p&gt;&lt;text&gt;&lt;emph typestyle="it"&gt;&amp;#x0028;i&amp;#x0029; Clauses 13, 14 and 15&lt;/emph&gt; 
               provide for unlawful possession of, and restriction...&lt;/text&gt;&lt;/p&gt;  
&lt;/primlaw:bodytext&gt;

             </codeblock>
     </example>
 <section>
       <title>Changes</title>
       <p>2013-11-14: <ph id="change_20131114_SS">Created</ph>.</p>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY05LB_Bills\leg.levelbody.dita  -->
<!--	<xsl:message>MY05LB_Bills_leg.levelbody.xsl requires manual development!</xsl:message> -->

  <xsl:template match="leg:levelbody">
    <xsl:apply-templates select="node()"/>
  </xsl:template>
</xsl:stylesheet>