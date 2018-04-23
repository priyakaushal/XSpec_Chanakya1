<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:caseinfo="http://www.lexisnexis.com/xmlschemas/content/legal/case-information/1/" xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:seclaw="http://www.lexisnexis.com/xmlschemas/content/legal/secondary-law/1/" version="2.0" exclude-result-prefixes="dita caseinfo seclaw">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="abstract">
   <title>abstract <lnpid>id-CA02DS-12808</lnpid></title>
   <body>
      <section>
<ul>
         <li>
                    <sourcexml>abstract</sourcexml> becomes <targetxml>abstract</targetxml>. <pre>


&lt;abstract&gt;
       ....
       ....
&lt;/abstract&gt; 

                    </pre>
                    <b>Becomes</b>
                    <pre>
    

&lt;abstract&gt;
       ....
       ....
&lt;/abstract&gt; 

               </pre>
                    <note>Rosetta element <sourcexml>catchwordgrp</sourcexml> occurs under
                            <sourcexml>abstract/catchwordgrp</sourcexml> with only child is a data
                        error. Rosetta element <sourcexml>abstract</sourcexml> contains only and
                        only catchwordgrp and not any other siblings within it. So, conversion need
                        to omit the abstract, and child element classification(with all its children
                        and contents) will be converted as child of
                            <targetxml>caseinfo:caseinfo</targetxml>. So follow below instructions. </note>
                    <b>Rosetta Input:</b>
                    <p><sourcexml>/DIGESTDOC/dig:body/dig:collection/dig:level/dig:item/abstract/catchwordgrp/catchwords</sourcexml></p>
                    <b>NL Output:</b>
                    <p><targetxml>/seclaw:seclaw/seclaw:body/seclaw:level/seclaw:bodytext/seclaw:digestgrp/seclaw:digest/seclaw:digestinfo/caseinfo:caseinfo/classify:classification[@classscheme="catchwords"]</targetxml></p>
                    <pre>
<b>Rosetta Input:</b>
          

&lt;dig:item&gt;
    &lt;abstract&gt;
        &lt;catchwordgrp&gt;
            &lt;catchwords&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Benefits and claims&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf" &gt;Benefits&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Special benefits&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Parental&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Canadian Charter of Rights and Freedoms, 1982, s. 15&lt;/emph&gt;&lt;/catchphrase&gt;
                &lt;catchphrase&gt;&lt;emph typestyle="bf"&gt;Unemployment Insurance Act, 
                    &lt;ci:cite&gt;
                        &lt;ci:case&gt;
                            &lt;ci:caseref ID="cref00004881" spanref="cspan00004881"&gt;
                                &lt;ci:reporter country="US" value="S.C." normpubcode="463"/&gt;
                                &lt;ci:edition&gt;
                                    &lt;ci:date year="1971"/&gt;
                                &lt;/ci:edition&gt;
                                &lt;ci:page num="1970"/&gt;
                            &lt;/ci:caseref&gt;
                        &lt;/ci:case&gt;
                        &lt;ci:content&gt;
                            &lt;ci:span spanid="cspan00004881"&gt;1971, S.C. 1970&lt;/ci:span&gt;
                        &lt;/ci:content&gt;
                    &lt;/ci:cite&gt;-71-72, c. 48, ss. 22(3)(a), 30, 32&lt;/emph&gt;
                &lt;/catchphrase&gt;
            &lt;/catchwords&gt;
        &lt;/catchwordgrp&gt;
    &lt;/abstract&gt;
    ..........
    ..........
&lt;/dig:item&gt;          


<b>NL Output:</b>
          

&lt;seclaw:digest&gt;
    &lt;seclaw:digestinfo&gt;
        &lt;caseinfo:caseinfo&gt;
            &lt;classify:classification classscheme="catchwords"&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Benefits and claims&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Benefits&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Special benefits&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Parental&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Canadian Charter of Rights and Freedoms, 1982, s. 15&lt;/emph&gt;&lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
                &lt;classify:classitem&gt;
                    &lt;classify:classitem-identifier&gt;
                        &lt;classify:classname&gt;&lt;emph typestyle="bf"&gt;Unemployment Insurance Act, 
                            &lt;lnci:cite&gt;
                                &lt;lnci:case&gt;
                                    &lt;lnci:caseref ID="cref00004881"&gt;
                                        &lt;lnci:reporter country="US" value="S.C." normpubcode="463"/&gt;
                                        &lt;lnci:edition&gt;
                                            &lt;lnci:date year="1971"/&gt;
                                        &lt;/lnci:edition&gt;
                                        &lt;lnci:page num="1970"/&gt;
                                    &lt;/lnci:caseref&gt;
                                &lt;/lnci:case&gt;
                                &lt;lnci:content&gt;1971, S.C. 1970&lt;/lnci:content&gt;
                            &lt;/lnci:cite&gt;-71-72, c. 48, ss. 22(3)(a), 30, 32&lt;/emph&gt;
                        &lt;/classify:classname&gt;
                    &lt;/classify:classitem-identifier&gt;
                &lt;/classify:classitem&gt;
            &lt;/classify:classification&gt;
        &lt;/caseinfo:caseinfo&gt;
    &lt;/seclaw:digestinfo&gt;
    .........
    .........
&lt;/seclaw:digest&gt;          

       </pre>
                </li>
      </ul>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02DS_DIGESTDOC_to_seclaw\abstract.dita  -->
	 
    <!-- Vikas Rohilla : Template to match the abstract and creates the abstract  -->
<!--    for the nonamespace  include in the target element-->
	<xsl:template match="abstract">
		<abstract>
			<xsl:apply-templates select="@* | node()"/>
		</abstract>
	</xsl:template>
    
    <!-- Vikas Rohilla : Template to match the abstract[child::catchwordgrp] and creates the seclaw:digestinfo/caseinfo:caseinfo  -->
    <xsl:template match="abstract[child::catchwordgrp]">
        <seclaw:digestinfo>
            <caseinfo:caseinfo>
            <xsl:apply-templates select="@* | node()"/>
            </caseinfo:caseinfo>
        </seclaw:digestinfo>
    </xsl:template>

	

</xsl:stylesheet>