<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:courtcase="http://www.lexisnexis.com/xmlschemas/content/legal/courtcase/1/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="case.constituents">
   <title>case:constituents <lnpid>id-CA02CC-12411</lnpid></title>
   <body>
      <section>
          <ul>
         <li>
                    <sourcexml>case:constituents</sourcexml> becomes
                        <targetxml>casedigest:body/casedigest:appearances/courtcase:representation</targetxml>
                    and create <targetxml>courtcase:counsel</targetxml>
                    <note>Remove the Colons (:) which comes under
                            <targetxml>ref:relatedrefs</targetxml> and
                            <targetxml>courtcase:representation</targetxml> - either under
                            <targetxml>heading/title</targetxml> if appear after the following- <ul id="ul_ptw_rfp_xp">
                            <li>
                                <sourcexml>Appearances:</sourcexml> to
                                    <targetxml>Appearances</targetxml></li>
                            <li><sourcexml>Counsel:</sourcexml> to <targetxml>Counsel</targetxml>
                            </li>
                            <li>
                                <sourcexml>Comparutions :</sourcexml>
                                    to<targetxml>Comparutions</targetxml>
                            </li>
                            <li>
                                <sourcexml>Comparutions:</sourcexml>
                                    to<targetxml>Comparutions</targetxml>
                            </li>
                            <li>
                                <sourcexml>Avocats :</sourcexml> to<targetxml>Avocats</targetxml>
                            </li>
                            <li>
                                <sourcexml>Avocats:</sourcexml>to <targetxml>Avocats</targetxml>
                            </li>
                            <li>
                                <sourcexml>Ont comparu:</sourcexml> to<targetxml>Ont
                                    comparu</targetxml>
                            </li>
                            <li>
                                <sourcexml>Ont comparu :</sourcexml>to <targetxml>Ont
                                    comparu</targetxml>
                            </li>
                            <li>
                                <sourcexml>AVOCATS:</sourcexml> to<targetxml>AVOCATS</targetxml>
                            </li>
                            <li>
                                <sourcexml>AVOCATS :</sourcexml>to <targetxml>AVOCATS</targetxml>
                            </li>
                            <li><sourcexml>Cases cited:</sourcexml> to <targetxml>Cases
                                    cited</targetxml></li>
                            <li><sourcexml>Cases Cited:</sourcexml> to <targetxml>Cases
                                    Cited</targetxml></li>
                            <li><sourcexml>Jurisprudence cite :</sourcexml> to
                                    <targetxml>Jurisprudence cite</targetxml></li>
                            <li><sourcexml>Statutes, Regulations and Rules Cited:</sourcexml> to
                                    <targetxml>Statutes, Regulations and Rules
                                Cited</targetxml></li>
                            <li><sourcexml>Législation citée :</sourcexml> to <targetxml>Législation
                                    citée</targetxml></li>
                            <li><sourcexml>Authors and Texts Cited:</sourcexml> to
                                    <targetxml>Authors and Texts Cited</targetxml></li>
                            <li><sourcexml>Texts Cited:</sourcexml> to <targetxml>Texts
                                    Cited</targetxml></li>
                            <li><sourcexml>Causes citées et consultées :</sourcexml> to
                                    <targetxml>Causes citées et consultées</targetxml></li>
                            <li><sourcexml>Jurisprudence et doctrine citées et consultées
                                    :</sourcexml> to <targetxml>Jurisprudence et doctrine citées et
                                    consultées</targetxml></li>
                            <li><sourcexml>Doctrine et jurisprudence citées :</sourcexml> to
                                    <targetxml>Doctrine et jurisprudence citées</targetxml></li>
                            <li><sourcexml>Doctrine citée :</sourcexml> to <targetxml>Doctrine
                                    citée</targetxml></li>
                        </ul></note>
                    <pre>

&lt;case:constituents&gt;
    &lt;pgrp&gt;
        &lt;heading&gt;
            &lt;title&gt;Counsel :&lt;/title&gt;
        &lt;/heading&gt;
        &lt;p&gt;
            &lt;text&gt;For the employer: M. Patrick Moran and Diana Belaisis.&lt;nl/&gt; For the union: Paul Falzone and Vito Tomas.&lt;/text&gt;
        &lt;/p&gt;
    &lt;/pgrp&gt;
&lt;/case:constituents&gt;

             </pre>
                    <b>Becomes</b>
                    <pre>

&lt;courtcase:representation&gt;
    &lt;courtcase:counsel&gt;
            &lt;pgrp&gt;
                &lt;heading&gt;
                    &lt;title&gt;Counsel&lt;/title&gt;
                &lt;/heading&gt;
                &lt;p&gt;
                    &lt;text&gt;For the employer: M. Patrick Moran and Diana Belaisis. For the union:
                        Paul Falzone and Vito Tomas.&lt;/text&gt;
                &lt;/p&gt;
            &lt;/pgrp&gt;        
    &lt;/courtcase:counsel&gt;
&lt;/courtcase:representation&gt;

</pre>
                </li>
          </ul>
      </section>
       <section>
           <title>Changes</title>
            <p>2014-10-30: <ph id="change_20141027_AS">update the List of terms <b>Db issue
                    #358</b></ph></p>   
           <p>2014-04-21: <ph id="change_20140421_AS">Note regarding the clarification of removal of colons....<b>"DB item # 179</b></ph></p>
           <p>2014-04-09: <ph id="change_20140409_AS">Removed Colons (:) from lables...<b>"DB item # 1255</b></ph></p>
       </section>
   </body>
	</dita:topic>

	
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-CAN\CA02-Case_Summaries\CA02CC_CASEDOC\case.constituents.dita  -->
		<!-- Sudhanshu Srivastava edited on 16-May-2017.-->
		<xsl:template match="case:constituents">
		<!--  Original Target XPath:  casedigest:body/casedigest:appearances/courtcase:representation   -->
		<courtcase:representation>
			<bodytext xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
				<xsl:apply-templates select="@* | node()"/>
			</bodytext>
		</courtcase:representation>
	</xsl:template>
</xsl:stylesheet>