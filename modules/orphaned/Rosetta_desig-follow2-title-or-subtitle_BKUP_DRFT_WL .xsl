<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" xmlns:annot="http://www.lexisnexis.com/xmlschemas/content/shared/annotations/1/" xmlns:primlaw="http://www.lexisnexis.com/xmlschemas/content/legal/primarylaw/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="Rosetta_desig-follow2-title-or-subtitle">
    <!-- this file is a temporary hack draft that is not to be used at the moment. please remove this comment and move into common_newest if necessary to implement-->
    <title><sourcexml>title[following-sibling::desig]</sourcexml> or
            <sourcexml>subtitle[following-sibling::desig]</sourcexml></title>
    <shortdesc>For all streams in AU. (NZ is applicable if  both AU/NZ are covered )</shortdesc>
    
    <body>
        <section>
            <p>In <targetxml>primlaw:level</targetxml>, <targetxml>admindoc:level</targetxml>,
                    <targetxml>annot:annotation</targetxml>,
                    <targetxml>annot:annotationlevel</targetxml> with a
                    <targetxml>heading</targetxml>. </p>
            <p>If <sourcexml>desig</sourcexml> follows <sourcexml>title</sourcexml> or
                    <sourcexml>subtitle</sourcexml>.</p>
            <ol>
                <li>Create a nested <targetxml>primlaw:level</targetxml>,
                        <targetxml>admindoc:level/bodytext</targetxml>, or
                        <targetxml>annot:annotationlevel/bodytext</targetxml>. (primlaw:level does
                    not require bodytext) </li>
                <li>Move the desig to the newly created level/heading</li>
                <li>The newly created level will get a leveltype of “canon”.</li>
                <li>The heading/inline attribute and value gets moved to the newly created level.
                </li>
            </ol>
            <note>The use of “canon” is semantically incorrect but will be corrected in the source
                data by eliminating all desig following title or subtitle. Once the source data is
                corrected this rule will be removed . </note>
        </section>
             
        <example spectitle="Source XML:primlaw:level">
            <codeblock>
                 
                &lt;leg:level id="CF.FL.FLRC04.CL6-36"&gt;
                     &lt;leg:level-vrnt toc-caption="[55,530.36] cl 6.36 Allowance for matters not specified" subdoc="true" searchtype="LEGISLATION CLAUSE" leveltype="clause"&gt;
                    ...
                     &lt;leg:heading inline="true"&gt;
                         &lt;edpnum&gt;&lt;refpt type="ext" id="CF.FL.FLRC04.CL6-36"/&gt;[55,530.36]&lt;/edpnum&gt;
                         &lt;title searchtype="CLAUSE-TITLE"&gt;Allowance for matters not specified&lt;/title&gt;
                         &lt;desig searchtype="CLAUSE-NUM"&gt;&lt;designum&gt;6.36&lt;/designum&gt;&lt;/desig&gt;
                      &lt;/leg:heading&gt;
                            ...
                            ...
                   &lt;/leg:level-vrnt&gt;
                 &lt;/leg:level&gt;
        
                
	         </codeblock>
       </example>
     
        <example spectitle="Target XML: primlaw:level">
            <codeblock>           
              
                 &lt;primlaw:level alternatetoccaption="[55,530.36] cl 6.36 Allowance for matters not specified" includeintoc="false" leveltype="clause"&gt;
                     &lt;ref:anchor anchortype="global" id="CF.FL.FLRC04.CL6-36"/&gt;
                     &lt;heading&gt;
                        &lt;altdesig&gt;[55,530.36]&lt;/altdesig&gt;
                        &lt;title&gt;Allowance for matters not specified&lt;/title&gt;
                     &lt;/heading&gt;
                   &lt;primlaw:level leveltype="clause"&gt;
                     &lt;heading inline="true"&gt;
                         &lt;desig&gt;6.36&lt;/desig&gt;
                     &lt;/heading&gt;
                     ...
                     ...
                  &lt;/primlaw:level&gt;
                &lt;/primlaw:level&gt;
           
            </codeblock>
        </example>

        <example spectitle="Source XML:annot:annotation">
            <codeblock>
                <!-- NOT DONE  -->
                 
                &lt;leg:comntry subdoc="true" toc-caption="Commentary"&gt;
                  &lt;level id="NOHS_WA.SGM_COMM.INTRO_3" leveltype="comm.intro" toc-caption="[WA1,001] Western Australia — Comparative Tables" subdoc="true"&gt;
                    &lt;heading searchtype="COMMENTARY"&gt;
                        &lt;title&gt;Western Australia — Comparative Tables&lt;/title&gt;
                        &lt;desig&gt;[WA1,001]&lt;/desig&gt;
                    &lt;/heading&gt;
                      ...
                    &lt;level id="NOHS_WA.SGM_NOHS.WA.WA1005" leveltype="subpara0" toc-caption="[WA1,005] Health and Safety Duties" subdoc="true"&gt;
                        &lt;heading searchtype="COMMENTARY"&gt;
                           &lt;title&gt;Health and Safety Duties&lt;/title&gt;
                           &lt;desig&gt;[WA1,005] &lt;/desig&gt;
                        &lt;/heading&gt;
                        &lt;bodytext searchtype="COMMENTARY"&gt;
                            &lt;p&gt;&lt;text&gt; Health and Saftey Content...&lt;/text&gt;&lt;/p&gt;
                        &lt;/bodytext&gt;
                      &lt;/level&gt;
                    &lt;/level&gt;
                 &lt;/leg:comntry&gt;
                
	</codeblock>
        </example>

<!-- ORDERING OF DESIG -->
        <example spectitle="Target XML:annot:annotation">
            <codeblock>
    &lt;annot:annotations&gt;
            &lt;annot:annotation-grp grptype="COMMENTARY" xml:id="NOHS_WA.SGM_COMM.INTRO_3"&gt;
              &lt;annot:annotation alternatetoccaption="[WA1,001] Western Australia — Comparative Tables" includeintoc="true" xml:id="NOHS_WA.SGM_NOHS.WA.WA1001"&gt;
                &lt;heading&gt;
                  &lt;title&gt;Western Australia — Comparative Tables&lt;/title&gt;
                  &lt;desig&gt;[WA1,001]&lt;/desig&gt;
                &lt;/heading&gt;
             
                  &lt;annot:annotationlevel alternatetoccaption="[WA1,005] Health and Safety Duties" includeintoc="true" xml:id="NOHS_WA.SGM_NOHS.WA.WA1005"&gt;
                      &lt;ref:anchor anchortype="global" id="NOHS.WA.WA1005"/&gt;
                       &lt;heading&gt;
                         &lt;title&gt;Health and Safety Duties&lt;/title&gt;
                         &lt;desig&gt;[WA1,005] &lt;/desig&gt;
                      &lt;/heading&gt;
                       ...
                       ...
                  &lt;annot:annotationlevel&gt;
            &lt;/annot:annotation&gt;
          &lt;/annot:annotation-grp&gt;
       &lt;/annot:annotations&gt;  

       </codeblock>
        </example>
        
        <example spectitle="Source XML:admindoc:level">
            <codeblock>
                 
                   &lt;leg:level&gt;
                &lt;leg:level-vrnt toc-caption="cl 5 Unresolved complaints" subdoc="true" leveltype="clause"&gt;
                    &lt;leg:heading inline="true"&gt;
                        &lt;title searchtype="CLAUSE-TITLE"&gt;&lt;refpt id="CLP.IR.CPMO5.SCH2.CL5" type="ext"/&gt;Unresolved complaints&lt;/title&gt;
                        &lt;desig searchtype="CLAUSE-NUM"&gt;&lt;designum&gt;5&lt;/designum&gt;&lt;/desig&gt;
                    &lt;/leg:heading&gt;
                    &lt;p&gt;
                        &lt;text&gt;
                        If a Mobile End User is not satisfied with a reassessment determination conducted in accordance with clause 2 of this Schedule, the Mobile
                        Carrier or Content Host will inform the Mobile End User about the independent process for resolving such matters&lt;/text&gt;
                    &lt;/p&gt;
                &lt;/leg:level-vrnt&gt;
                &lt;/leg:level&gt;
               
	       </codeblock>
        </example>      
        
        <example spectitle="Target XML:admindoc:level">
            <!-- THIS IS CORRECT -->
            <codeblock>
                
              &lt;admindoc:level alternatetoccaption="cl 5 Unresolved complaints" includeintoc="true" leveltype="clause"&gt;
                 &lt;ref:anchor anchortype="global" id="CLP.IR.CPMO5.SCH2.CL5"/&gt;
                   &lt;heading&gt;
                      &lt;title&gt; Unresolved complaints&lt;/title&gt;
                   &lt;/heading&gt;
                 &lt;admindoc:level leveltype="canon"&gt;
                    &lt;heading inline="true"&gt;
                       &lt;desig&gt;5&lt;/desig&gt;
                    &lt;/heading&gt;
                   &lt;admindoc:bodytext&gt;
                      &lt;p&gt;
                        &lt;text&gt;If a Mobile End User is not satisfied with a reassessment determination conducted in accordance with clause 2 of this Schedule, the Mobile
                            Carrier or Content Host will inform the Mobile End User about the independent process for resolving such matters.&lt;/text&gt;
                        &lt;/p&gt;
                    &lt;/admindoc:bodytext&gt;
                 &lt;/admindoc:level&gt;
              &lt;/admindoc:level&gt;
               
	</codeblock>
        </example>
        <section>
            <title>Changes</title>
            <p>2013-05-16 <ph>Created </ph></p>
        </section>

    </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\Rosetta_desig-follow2-title-or-subtitle_BKUP_DRFT_WL .dita  -->
	<xsl:message>Rosetta_desig-follow2-title-or-subtitle_BKUP_DRFT_WL .xsl requires manual development!</xsl:message> 

	<xsl:template match="title[following-sibling::desig]">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="subtitle[following-sibling::desig]">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="desig">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="title">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

	<xsl:template match="subtitle">

		<!--  Original Target XPath:  primlaw:level   -->
		<primlaw:level>
			<xsl:apply-templates select="@* | node()"/>
		</primlaw:level>

	</xsl:template>

</xsl:stylesheet>