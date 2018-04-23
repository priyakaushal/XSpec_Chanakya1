<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.levelbody">
   <title>leg:levelbody <lnpid>id-HK06-37417</lnpid></title>
   <body>
      <section>
        <ul>
          <li>
            The conversion of <sourcexml>leg:levelbody</sourcexml> depends upon its child elements:
            <ul>
              <li>
                If <sourcexml>leg:level</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> then it will become
                <targetxml>primlaw:level</targetxml> i.e, 
                <sourcexml>leg:levelbody/leg:level</sourcexml> becomes <targetxml>primlaw:level</targetxml>.
              </li>
              <li>
                If <sourcexml>leg:bodytext</sourcexml> is the immediate child of <sourcexml>leg:levelbody</sourcexml> 
                then it will become <targetxml>primlaw:bodytext</targetxml> i.e,
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
    &lt;leg:level id="AOHK.CAP04C.S2"&gt;
        &lt;leg:level-vrnt leveltype="sect" searchtype="LEGISLATION SECT" subdoc="true" toc-caption="2 Fees payable in the High Court in Prize"&gt;
            &lt;leg:heading&gt;
                &lt;desig&gt;
                    &lt;designum&gt;
                        &lt;refpt id="AOHK.CAP04C.S2" type="ext"/&gt;2&lt;/designum&gt;
                &lt;/desig&gt;
                &lt;title&gt;Fees payable in the High Court in Prize&lt;/title&gt;
            &lt;/leg:heading&gt;
        &lt;/leg:level-vrnt&gt;
        ...
    &lt;/leg:level&gt;
&lt;/leg:levelbody&gt;

                 </codeblock>
           </example>
           
           <example>
             <title>Target XML 1 : For <sourcexml>leg:levelbody/leg:level</sourcexml></title>
             <codeblock>

&lt;primlaw:level leveltype="section" alternatetoccaption="2 Fees payable in the High Court in Prize" includeintoc="true"&gt;
    &lt;ref:anchor id="AOHK.CAP04C.S2" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;desig&gt;2&lt;/desig&gt; 
        &lt;title&gt;Fees payable in the High Court in Prize&lt;/title&gt;
    &lt;/heading&gt;                       
    ....
&lt;/primlaw:level&gt;

             </codeblock>
           </example>
     
     <example>
       <title>Source XML 2 : For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;leg:levelbody&gt;
  &lt;leg:bodytext&gt;
    &lt;p&gt;
        &lt;text&gt;Remarks:&lt;nl/&gt;Adaptation amendments retroactively made - see 25 of 1998 s 2&lt;/text&gt;
    &lt;/p&gt;
  &lt;/leg:bodytext&gt;
    ...
&lt;/leg:levelbody&gt;

                 </codeblock>
     </example>
     
     <example>
       <title>Target XML 2: For <sourcexml>leg:levelbody/leg:bodytext</sourcexml></title>
       <codeblock>

&lt;primlaw:bodytext&gt;
   &lt;p&gt;
        &lt;text&gt;Remarks:&lt;proc:nl/&gt;Adaptation amendments retroactively made - see 25 of 1998 s 2&lt;/text&gt;
    &lt;/p&gt;  
&lt;/primlaw:bodytext&gt;

             </codeblock>
     </example>
 <section>
      <title>Changes</title>
      <p>2016-04-19: Created.</p>
    </section> 
   </body>
	</dita:topic>


	<xsl:template match="leg:levelbody">

		<!--  Original Target XPath:  primlaw:level   -->
			<xsl:apply-templates select="@* | node()"/>

	</xsl:template>




</xsl:stylesheet>