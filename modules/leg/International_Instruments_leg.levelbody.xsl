<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
    <title>leg:levelbody <lnpid>id-st07-31415</lnpid></title>
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
                
&lt;leg:levelbody&gt;
    &lt;leg:bodytext&gt;
        &lt;deflist&gt;
            &lt;defitem id="CC.UNFCCC.UNFCCC.ART1.CLIMATE-SYSTEM"&gt;
                &lt;defterm&gt;
                    &lt;refpt type="ext"
                        id="CC.UNFCCC.UNFCCC.ART1.CLIMATE-SYSTEM"/&gt;
                    &lt;emph typestyle="bf"&gt;&amp;ldquo;Climate
                        system&amp;rdquo;&lt;/emph&gt;
                &lt;/defterm&gt;
                &lt;defdesc&gt;
                    &lt;p&gt;
                        &lt;text&gt;means the totality of the atmosphere,
                            hydrosphere, biosphere and geosphere and their
                            interactions.&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/defdesc&gt;
            &lt;/defitem&gt;
        &lt;/deflist&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;

</pre>
                    <b>Becomes</b>
                    <pre>
        
&lt;primlaw:bodytext&gt;
    &lt;deflist&gt;
        &lt;defitem&gt;
            &lt;defterm&gt;
                &lt;ref:anchor anchortype="global" id="CC.UNFCCC.UNFCCC.ART1.CLIMATE-SYSTEM"/&gt;
                &lt;emph typestyle="bf"&gt;&amp;#x201C;Climate
                    system&amp;#x201D;&lt;/emph&gt;
            &lt;/defterm&gt;
            &lt;defdesc&gt;
                &lt;bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;means the totality of the atmosphere,
                            hydrosphere, biosphere and geosphere and their
                            interactions.&lt;/text&gt;
                        
                    &lt;/p&gt;
                &lt;/bodytext&gt;
            &lt;/defdesc&gt;
        &lt;/defitem&gt;
    &lt;/deflist&gt;
&lt;/primlaw:bodytext&gt;

      </pre>
                </li>
                <li>If the element <sourcexml>leg:levelbody</sourcexml> has child
                    <sourcexml>leg:level</sourcexml> then it becomes <targetxml>primlaw:level</targetxml> and
                    populated as: <pre>
    
&lt;leg:levelbody&gt;
    &lt;leg:level id="IPC_IC.SGM_CONV.INTRO_4"&gt;
        &lt;leg:level-vrnt searchtype="LEGISLATION INTRO" leveltype="intro"&gt;
            &lt;leg:levelbody&gt;
                &lt;leg:bodytext&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                            &lt;emph typestyle="it"&gt;Members,&lt;/emph&gt;
                        &lt;/text&gt;
                        &lt;text&gt;&lt;emph typestyle="it"&gt;Desiring&lt;/emph&gt; to reduce distortions and impediments to
                            international trade, and taking into account the need to promote effective and adequate
                            protection of intellectual property rights, and to ensure that measures and procedures to
                            enforce intellectual property rights do not themselves become barriers to legitimate
                            trade;&lt;/text&gt;
                        &lt;text&gt;&lt;emph typestyle="it"&gt;Recognizing&lt;/emph&gt; , to this end, the need for new rules and
                        disciplines concerning:&lt;/text&gt;
                        ..........
                        ..........
                    &lt;/p&gt;
                    .............
                    .............
                &lt;/leg:bodytext&gt;
                .............
                .............
            &lt;/leg:levelbody&gt;
            .............
            .............
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

   </pre>
                    <b>Becomes</b>
                    <pre>
    
&lt;primlaw:level xml:id="IPC_IC.SGM_CONV.INTRO_4" leveltype="introduction"&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text&gt;
                &lt;emph typestyle="it"&gt;Members,&lt;/emph&gt;
            &lt;/text&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;Desiring&lt;/emph&gt; to reduce distortions and impediments to
                international trade, and taking into account the need to promote effective and adequate
                protection of intellectual property rights, and to ensure that measures and procedures to
                enforce intellectual property rights do not themselves become barriers to legitimate
                trade;&lt;/text&gt;
            &lt;text&gt;&lt;emph typestyle="it"&gt;Recognizing&lt;/emph&gt; , to this end, the need for new rules and
                disciplines concerning:&lt;/text&gt;
            ..........
            ..........
        &lt;/p&gt;
        .............
        .............
    &lt;/primlaw:bodytext&gt;
    .............
    .............
    
    .............
    .............
    
&lt;/primlaw:level&gt;
    

   </pre>
                </li>
               
                <li> The first occurence of <sourcexml>leg:bodytext</sourcexml> becomes
                    <targetxml>primlaw:bodytext</targetxml> and after if <sourcexml>leg:bodytext</sourcexml> has
                    other <sourcexml>leg:bodytext</sourcexml> or <sourcexml>leg:level</sourcexml> as siblings then
                    wrap each of them <targetxml>primlaw:level</targetxml> with
                    <targetxml>@leveltype="unclassified"</targetxml>
                    <pre>
<b>Example 1 Source</b>                       

&lt;leg:levelbody&gt;
    &lt;leg:level id="IPCPY.IC.AUSFTA.ART17-1.1"&gt;
        &lt;leg:level-vrnt searchtype="LEGISLATION SUBARTICLE" leveltype="subarticle"&gt;
            ........
            ........
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text/&gt;
            &lt;blockquote&gt;
                &lt;h align="left"&gt;
                    &lt;emph typestyle="bf"&gt;International Agreements&lt;/emph&gt;
                &lt;/h&gt;
            &lt;/blockquote&gt;
            &lt;text/&gt;
        &lt;/p&gt;
    &lt;/leg:bodytext&gt;
    &lt;leg:level id="IPCPY.IC.AUSFTA.ART17-1.4"&gt;
        &lt;leg:level-vrnt searchtype="LEGISLATION SUBARTICLE" leveltype="subarticle"&gt;
            ........
            ........
        &lt;/leg:level-vrnt&gt;
    &lt;/leg:level&gt;
    &lt;leg:bodytext&gt;
        &lt;p&gt;
            &lt;text/&gt;
            &lt;blockquote&gt;
                &lt;h align="left"&gt;
                    &lt;emph typestyle="bf"&gt;National Treatment&lt;/emph&gt;
                &lt;/h&gt;
            &lt;/blockquote&gt;
            &lt;text/&gt;
        &lt;/p&gt;
    &lt;/leg:bodytext&gt;
&lt;/leg:levelbody&gt;                

</pre>
                    <b>Becomes</b>
                    <pre>   
        <b>Example 1 Target </b>

&lt;primlaw:level leveltype="subarticle"&gt;
        &lt;ref:anchor id="IPCPY.IC.AUSFTA.ART17-1.1" anchortype="global"&gt; &lt;/ref:anchor&gt;
        
            ........
            ........
        
    &lt;/primlaw:level&gt;
    &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text/&gt;
            &lt;blockquote&gt;
                &lt;h align="left"&gt;
                    &lt;emph typestyle="bf"&gt;International Agreements&lt;/emph&gt;
                &lt;/h&gt;
            &lt;/blockquote&gt;
            &lt;text/&gt;
        &lt;/p&gt;
    &lt;/primlaw:bodytext&gt;
    &lt;primlaw:level leveltype="subarticle"&gt;
        &lt;ref:anchor id="IPCPY.IC.AUSFTA.ART17-1.4" anchortype="global"&gt; &lt;/ref:anchor&gt;
        
            ........
            ........
        
    &lt;/primlaw:level&gt;
    &lt;primlaw:level leveltype="unclassified"&gt;
        &lt;primlaw:bodytext&gt;
        &lt;p&gt;
            &lt;text/&gt;
            &lt;blockquote&gt;
                &lt;h align="left"&gt;
                    &lt;emph typestyle="bf"&gt;National Treatment&lt;/emph&gt;
                &lt;/h&gt;
            &lt;/blockquote&gt;
            &lt;text/&gt;
        &lt;/p&gt;
        &lt;/primlaw:bodytext&gt;
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
       &lt;primlaw:level leveltype="schedulegrp" xml:id="USM.LN0328y1952e.PT1"&gt;
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
        <section>
            <title>change</title>
        </section>
    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\International_Instruments\leg.levelbody.dita  -->
	<xsl:message>International_Instruments_leg.levelbody.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:level">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

	<xsl:template match="leg:levelbody/leg:bodytext">

		<!--  Original Target XPath:  primlaw:bodytext   -->
		<primlaw:bodytext>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:bodytext>

	</xsl:template>

</xsl:stylesheet>