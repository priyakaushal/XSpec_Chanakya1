<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.prelim">
  <title>leg:levelprelim <lnpid>id-ST02-26420</lnpid></title>
   <body>
      <section>
        <ul>
            <li><sourcexml>leg:levelprelim</sourcexml>
                    <b>becomes</b>
                    <targetxml>primlaw:prelim</targetxml> 
            </li>
        </ul>
      </section>  
   	
   	<example>
   		<title>Source XML 1</title>
   		<codeblock>
   			
&lt;leg:level id="CPV.RC4.SCARV05.FORMGRP"&gt;
    &lt;leg:level-vrnt toc-caption="FORMS" subdoc="true"
        searchtype="LEGISLATION FORMS" leveltype="forms"&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;
                &lt;refpt type="ext" id="CPV.RC4.SCARV05.FORMGRP"&gt;&lt;/refpt&gt;FORMS&lt;/
                title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelprelim&gt;
            &lt;heading&gt;
                &lt;title&gt;CONTENTS&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;table frame="none" pgwide="1"&gt;
                    &lt;tgroup cols="3" colsep="0" rowsep="0" align="left"&gt;
                        &lt;colspec colwidth="40*" colname="col1" colsep="0" rowsep="0"/&gt;
                        &lt;colspec colwidth="200*" colname="col2" colsep="0" rowsep="0"/&gt;
                        &lt;colspec colwidth="55*" colname="col3" colsep="0" rowsep="0"/&gt;
                        &lt;thead valign="bottom"&gt;
                            &lt;row rowsep="0"&gt;                                
                                &lt;entry colname="col1" morerows="0" colsep="0" rowsep="0"
                                    valign="top"&gt;&lt;emph typestyle="it"&gt;Form&lt;/emph&gt;&lt;/entry&gt;
                                &lt;entry colname="col2" morerows="0" colsep="0" rowsep="0"
                                    align="center" valign="top"&gt;&lt;emph typestyle="it"&gt;Title&lt;/emph&gt;&lt;/entry&gt;
                                &lt;entry colname="col3" morerows="0" colsep="0" rowsep="0"
                                    align="right"&gt;&lt;emph typestyle="it"&gt;Paragraph&lt;/emph&gt;&lt;/entry&gt;
                            &lt;/row&gt;
                        &lt;/thead&gt;
                        &lt;tbody valign="bottom"&gt;
                            &lt;row rowsep="0"&gt;
                                &lt;entry colname="col1" morerows="0" colsep="0" rowsep="0"
                                    valign="top"&gt;1&lt;/entry&gt;
                                &lt;entry colname="col2" morerows="0" colsep="0" rowsep="0"
                                    align="justify" valign="top"&gt;Summons for Adoption Order&amp;nldr;&lt;/entry&gt;
                                &lt;entry colname="col3" morerows="0" colsep="0" rowsep="0"
                                    align="right"&gt;[IV 1.F1]&lt;/entry&gt;
                            &lt;/row&gt;
                        &lt;/tbody&gt;
                    &lt;/tgroup&gt;
                &lt;/table&gt;
            &lt;/p&gt;
        &lt;/leg:levelprelim&gt;
		...
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;

   		</codeblock>
   	</example>
            	
      <example>
      	<title>Target XML 1</title>
      	<codeblock>
      		
&lt;primlaw:level alternatetoccaption="FORMS" includeintoc="true"
    leveltype="unclassified"&gt;
    &lt;ref:anchor id="CPV.RC4.SCARV05.FORMGRP" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;FORMS&lt;/title&gt;
    &lt;/heading&gt;
    &lt;primlaw:prelim&gt;
        &lt;heading&gt;
            &lt;title&gt;CONTENTS&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;table frame="none" pgwide="1"&gt;
                &lt;tgroup cols="3" colsep="0" rowsep="0" align="left"&gt;
                    &lt;colspec colwidth="40*" colname="col1" colsep="0" rowsep="0"/&gt;
                    &lt;colspec colwidth="200*" colname="col2" colsep="0" rowsep="0"/&gt;
                    &lt;colspec colwidth="55*" colname="col3" colsep="0" rowsep="0"/&gt;
                    &lt;thead valign="bottom"&gt;
                        &lt;row rowsep="0"&gt;
                            &lt;entry colname="col1" morerows="0" colsep="0"
                                rowsep="0"valign="top"&gt;
                                &lt;emph typestyle="it"&gt;Form&lt;/emph&gt;
                            &lt;/entry&gt;
                            &lt;entry colname="col2" morerows="0" colsep="0" rowsep="0"
                                align="center" valign="top"&gt;
                                &lt;emph typestyle="it"&gt;Title&lt;/emph&gt;
                            &lt;/entry&gt;
                            &lt;entry colname="col3" morerows="0" colsep="0" rowsep="0"
                                align="right"&gt;
                                &lt;emph typestyle="it"&gt;Paragraph&lt;/emph&gt;
                            &lt;/entry&gt;
                        &lt;/row&gt;
                    &lt;/thead&gt;
                    &lt;tbody valign="bottom"&gt;
                        &lt;row rowsep="0"&gt;
                            &lt;entry colname="col1" morerows="0" colsep="0" rowsep="0"
                                valign="top"&gt;1&lt;/entry&gt;
                            &lt;entry colname="col2" morerows="0" colsep="0" rowsep="0"
                                align="justify" valign="top"&gt;Summons for Adoption Order&lt;/entry&gt;
                            &lt;entry colname="col3" morerows="0" colsep="0" rowsep="0"
                                align="right"&gt;[IV 1.F1]&lt;/entry&gt;
                        &lt;/row&gt;
                        62 | OpenTopic | 4. Body
                        ....
                    &lt;/tbody&gt;
                &lt;/tgroup&gt;
            &lt;/table&gt;
        &lt;/p&gt;
    &lt;/primlaw:prelim&gt;
    &lt;!-- ... --&gt;
&lt;/primlaw:level&gt;

      	</codeblock>
      </example>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-Standard\Courtrule\leg.levelprelim.dita  -->
	<xsl:message>Courtrule_leg.levelprelim.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:levelprelim">

		<!--  Original Target XPath:  primlaw:prelim   -->
		<primlaw:prelim>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:prelim>

	</xsl:template>

</xsl:stylesheet>