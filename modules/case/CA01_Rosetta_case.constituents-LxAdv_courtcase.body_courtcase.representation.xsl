<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case"  xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="CA01_Rosetta_case.constituents-LxAdv_courtcase.body_courtcase.representation">
    <title>case:constituents <lnpid>id-CA01-12211</lnpid></title>
    <body>
        <section>
            <p><sourcexml>case:constituents</sourcexml> becomes
                    <targetxml>courtcase:body/courtcase:representation/bodytext</targetxml>.</p>
            
            <note><p>Remove the colon (:) or space colon ( :) which comes under
                        <targetxml>courtcase:representation</targetxml> under
                        <targetxml>heading/title</targetxml>.
            <ul>
                <li><sourcexml>Avocats:</sourcexml> to <targetxml>Avocats</targetxml></li>
                <li><sourcexml>Avocats :</sourcexml> to <targetxml>Avocats</targetxml></li>
                <li><sourcexml>Cases cited:</sourcexml> to <targetxml>Cases cited</targetxml></li>
                <li><sourcexml>Cases Cited:</sourcexml> to <targetxml>Cases Cited</targetxml></li>
                <li><sourcexml>Jurisprudence cite :</sourcexml> to <targetxml>Jurisprudence
                                cite</targetxml></li>
                <li><sourcexml>Statutes, Regulations and Rules Cited:</sourcexml> to
                                <targetxml>Statutes, Regulations and Rules Cited</targetxml></li>
                <li><sourcexml>Législation citée :</sourcexml> to <targetxml>Législation
                                citée</targetxml></li>
                <li><sourcexml>Authors and Texts Cited:</sourcexml> to <targetxml>Authors and Texts
                                Cited</targetxml></li>
                <li><sourcexml>Texts Cited:</sourcexml> to <targetxml>Texts Cited</targetxml></li>
                <li><sourcexml>Causes citées et consultées :</sourcexml> to <targetxml>Causes citées
                                et consultées</targetxml></li>
                <li><sourcexml>Jurisprudence et doctrine citées et consultées :</sourcexml> to
                                <targetxml>Jurisprudence et doctrine citées et
                                consultées</targetxml></li>
                <li><sourcexml>Doctrine et jurisprudence citées :</sourcexml> to <targetxml>Doctrine
                                et jurisprudence citées</targetxml></li>
                <li><sourcexml>Doctrine citée :</sourcexml> to <targetxml>Doctrine
                            citée</targetxml></li>
                <li><sourcexml>Counsel:</sourcexml> to <targetxml>Counsel</targetxml></li>
            </ul></p></note>
            
        </section>
        <example>
            <title>Mapping of <sourcexml>case:constituents</sourcexml></title>
            <codeblock>

&lt;case:info&gt;
    &lt;case:constituents&gt;
        &lt;pgrp&gt;
            &lt;p&gt;
                &lt;text&gt;E. Neil McKenlvey, c.r., pour la Demanderesse.&lt;nl/&gt; A.R. Pringle, pour la Défenderesse.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/case:constituents&gt;
&lt;/case:info&gt;

       </codeblock>
            <b>becomes</b>
            <codeblock>

&lt;courtcase:representation&gt;
    &lt;bodytext&gt;
        &lt;pgrp&gt;
            &lt;p&gt;
                &lt;text&gt;E. Neil McKenlvey, c.r., pour la Demanderesse.&lt;proc:nl/&gt; A.R. Pringle, pour la Défenderesse.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/courtcase:representation&gt;

       </codeblock>
        </example>
        
        <example>
            <title>Example 2</title>
            <codeblock>
&lt;case:constituents&gt;
    &lt;pgrp&gt;
        &lt;heading&gt;
            &lt;title&gt;Counsel:&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;Stephanie L. Newell, for Newfoundland Association of Public Employees.&lt;nl/&gt; Paul Noble,
                for Her Majesty the Queen.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:constituents&gt;
       </codeblock>
            <b>becomes</b>
            <codeblock>
&lt;courtcase:representation&gt;
    &lt;bodytext&gt;
        &lt;pgrp&gt;
            &lt;heading&gt;
                &lt;title&gt;Counsel&lt;/title&gt;
            &lt;/heading&gt;
            &lt;p&gt;
                &lt;text&gt;Stephanie L. Newell, for Newfoundland Association of Public Employees.&lt;nl/&gt;
                    Paul Noble, for Her Majesty the Queen.&lt;/text&gt;
            &lt;/p&gt;
        &lt;/pgrp&gt;
    &lt;/bodytext&gt;
&lt;/courtcase:representation&gt;
       </codeblock>
        </example>
        
        <section>
            <title>Changes</title>
            <p>2014-09-04: <ph id="change_20140904_PS">Updated instruction for removal of colon from <targetxml>courtcase:representation</targetxml> based on list included. Applicable on CA01.</ph></p>
            <p>2014-06-11: <ph id="change_20140611_PS">Added instruction and example for removal of colon from <targetxml>courtcase:representation</targetxml>. R4.5 Issue # 1648.</ph></p>
        </section>
    </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA01-Cases\CA01_Rosetta_case.constituents-LxAdv_courtcase.body_courtcase.representation.dita  -->
	 
<!-- Sudhanshu Srivastava edited on 16-May-2017.-->
	<xsl:template match="case:info/case:constituents">
		<!--  Original Target XPath:  courtcase:body/courtcase:representation/bodytext   -->
		<courtcase:representation>
			<bodytext>
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</courtcase:representation>
		
	</xsl:template>
</xsl:stylesheet>