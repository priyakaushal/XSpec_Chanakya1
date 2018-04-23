<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:glp="http://www.lexis-nexis.com/glp" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita glp leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="GPL_PH03_leg-heading">
    <title>leg:heading <lnpid>id-PH03-34613</lnpid></title>
 <body>
     <p>
         <sourcexml>leg:heading</sourcexml> becomes
                <targetxml>heading</targetxml> with attribute <sourcexml>@align</sourcexml> becomes <targetxml>align</targetxml> and <sourcexml>inline</sourcexml> becomes <targetxml>@inline</targetxml>
          <ul>
              <li><sourcexml>leg:level/leg:level-vrnt/leg:heading</sourcexml> becomes <targetxml>admindoc:level/heading</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt/leg:heading/title</sourcexml> becomes <targetxml>admindoc:level/heading/title</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt/leg:heading/refpt</sourcexml> becomes <targetxml>admindoc:level/ref:anchor</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt/leg:heading/desig/designum</sourcexml> becomes <targetxml>admindoc:level/heading/desig</targetxml></li>
              <li><sourcexml>leg:level/leg:level-vrnt/leg:heading/desig/designum/refpt</sourcexml> becomes <targetxml>admindoc:level/ref:anchor</targetxml></li>
          </ul>
     </p>
  <section>
   <title>Source XML</title>
   <pre>
   
&lt;leg:level id="PHSCI.SCOO0005Y2002.BODY"&gt;
    &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
        &lt;leg:heading&gt;
            &lt;title&gt;&lt;refpt id="PHSCI.SCOO0005Y2002" type="ext"/&gt;SUPREME COURT OFFICE ORDER
                NO. 05-02&lt;nl/&gt;FILING OF PAPERS INTENDED FOR THE CHIEF JUSTICE DURING HIS
                FOREIGN TRAVEL&lt;/title&gt;
        &lt;/leg:heading&gt;
        ...............
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
   
   </pre>
  </section>
  <p>Becomes</p>
  <section>
   <title>Target XML</title>
   <pre>
   
&lt;admindoc:level xml:id="PHSCI.SCOO0005Y2002.BODY" leveltype="act"&gt;
    &lt;ref:anchor id="PHSCI.SCOO0005Y2002" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;SUPREME COURT OFFICE ORDER
            NO. 05-02&lt;proc:nl/&gt;FILING OF PAPERS INTENDED FOR THE CHIEF JUSTICE DURING HIS
            FOREIGN TRAVEL&lt;/title&gt;
    &lt;/heading&gt;
    ........
&lt;/admindoc:level&gt;
   
   
   </pre>
  </section>
     <note>if <sourcexml>leg:heading</sourcexml> is child of <sourcexml>leg:bodytext</sourcexml> then create a wrapper <targetxml>admindoc:level</targetxml> for handling <sourcexml>leg:heading.</sourcexml></note>
     <section>
         <title>Source XML</title>
         <pre>
         
&lt;leg:level&gt;
    &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
        &lt;leg:heading&gt;
         &lt;title&gt;&lt;refpt id="PHPI.LOI1501Y1985" type="ext"/&gt;LETTER OF INSTRUCTIONS NO. 1501&lt;/title&gt;
        &lt;/leg:heading&gt;
        &lt;leg:levelbody&gt;
            &lt;leg:bodytext&gt;
                &lt;leg:heading&gt;
                 &lt;title&gt;&lt;nl/&gt;Subject Matter&lt;nl/&gt;:&lt;nl/&gt;
                        &lt;emph typestyle="it"&gt;Supplemental Guidelines for Local Government Supplements to Teacher Compensation&lt;/emph&gt;.
                &lt;title&gt;
                &lt;/leg:heading&gt;
                &lt;glp:note&gt;
                 &lt;p&gt;
                    &lt;text&gt;Date of Effectivity : &lt;emph typestyle="it"&gt;December 18, 1985&lt;/emph&gt;&lt;/text&gt;
                &lt;/p&gt;
                &lt;/glp:note&gt;
            &lt;/leg:bodytext&gt;
        &lt;/leg:levelbody&gt;
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
         
         </pre>
     </section>
     <p>
         Becomes
     </p>
     <section>
         <title>Target XML</title>
<pre>

&lt;admindoc:level leveltype="act"&gt;
    &lt;ref:anchor id="PHPI.LOI1501Y1985" anchortype="global"/&gt;
    &lt;heading&gt;&lt;titile&gt;LETTER OF INSTRUCTIONS NO. 1501&lt;/titile&gt;&lt;/heading&gt;
    &lt;admindoc:level&gt;
        &lt;heading&gt;
            &lt;title&gt;
                &lt;proc:nl/&gt;Subject Matter&lt;proc:nl/&gt;:&lt;proc:nl/&gt;
                        &lt;emph typestyle="it"&gt;Supplemental Guidelines for Local Government Supplements to Teacher Compensation&lt;/emph&gt;.
            &lt;/title&gt;
        &lt;/heading&gt;
    &lt;/admindoc:level&gt;
    &lt;note&gt;
        &lt;bodytext&gt;
            &lt;p&gt;
                &lt;text&gt;Date of Effectivity : &lt;emph typestyle="it"&gt;December 18, 1985&lt;/emph&gt;&lt;/text&gt;
            &lt;/p&gt;
        &lt;/bodytext&gt;
    &lt;/note&gt;
&lt;/admindoc:level&gt;

</pre>
     </section>
     <note>If <sourcexml>leg:heading</sourcexml> is having <sourcexml>glp:note</sourcexml> markup
            and <sourcexml>glp:note</sourcexml> comes with only child <sourcexml>refpt</sourcexml>
            and no <b>PCDATA</b> , then conversion needs to suppress
                <sourcexml>glp:note/refpt</sourcexml> in target. conversion</note>
  <section>
      <title>
   Source XML
      </title>
      <pre>

&lt;leg:level id="PHPI.EO0264Y2003.BODY"&gt;
    &lt;leg:level-vrnt leveltype="act" searchtype="LEGISLATION ACT"&gt;
        &lt;leg:heading&gt;
            &lt;glp:note&gt;
                &lt;refpt id="PHPI.EO0264Y2003_1" type="ext"/&gt;
            &lt;/glp:note&gt;
            &lt;title&gt;&lt;refpt id="PHPI.EO0264Y2003" type="ext"/&gt;EXECUTIVE ORDER NO. 264 &lt;nl/&gt;MODIFYING THE
                NOMENCLATURE AND THE RATES OF IMPORT DUTY ON VARIOUS PRODUCTS UNDER SECTION 104 OF THE TARIFF
                AND CUSTOMS CODE OF 1978 (PRESIDENTIAL DECREE NO. 1464, AS AMENDED)&lt;/title&gt;
        &lt;/leg:heading&gt;
        .......
    &lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;
          
      </pre>
  </section>
   <p>Becomes</p>
     <section>
         <title>Target XML</title>
         <pre>

&lt;admindoc:level xml:id="PHPI.EO0264Y2003.BODY" leveltype="act"&gt;
    &lt;ref:anchor id="PHPI.EO0264Y2003" anchortype="global"/&gt;
    &lt;heading&gt;
        &lt;title&gt;
            EXECUTIVE ORDER NO. 264 &lt;proc:nl/&gt;MODIFYING THE
            NOMENCLATURE AND THE RATES OF IMPORT DUTY ON VARIOUS PRODUCTS UNDER SECTION 104 OF THE TARIFF
            AND CUSTOMS CODE OF 1978 (PRESIDENTIAL DECREE NO. 1464, AS AMENDED)
        &lt;/title&gt;
    &lt;/heading&gt;
&lt;/admindoc:level&gt;                          

         </pre>
     </section>
 </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-GPL\PH03-Regulation\GPL_PH03_leg-heading.dita  -->
	<xsl:message>GPL_PH03_leg-heading.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:heading">

		<!--  Original Target XPath:  heading   -->
		<heading>
			<xsl:apply-templates select="@* | node()"/>
		</heading>

	</xsl:template>

	<xsl:template match="@align">

		<!--  Original Target XPath:  align   -->
		<align>
			<xsl:apply-templates select="@* | node()"/>
		</align>

	</xsl:template>

	<xsl:template match="inline">

		<!--  Original Target XPath:  @inline   -->
		<xsl:attribute name="inline">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading">

		<!--  Original Target XPath:  admindoc:level/heading   -->
		<admindoc:level>
			<heading>
				<xsl:apply-templates select="@* | node()"/>
			</heading>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/title">

		<!--  Original Target XPath:  admindoc:level/heading/title   -->
		<admindoc:level>
			<heading>
				<title>
					<xsl:apply-templates select="@* | node()"/>
				</title>
			</heading>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/refpt">

		<!--  Original Target XPath:  admindoc:level/ref:anchor   -->
		<admindoc:level>
			<ref:anchor xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/desig/designum">

		<!--  Original Target XPath:  admindoc:level/heading/desig   -->
		<admindoc:level>
			<heading>
				<desig>
					<xsl:apply-templates select="@* | node()"/>
				</desig>
			</heading>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level/leg:level-vrnt/leg:heading/desig/designum/refpt">

		<!--  Original Target XPath:  admindoc:level/ref:anchor   -->
		<admindoc:level>
			<ref:anchor xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/">
				<xsl:apply-templates select="@* | node()"/>
			</ref:anchor>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:bodytext">

		<!--  Original Target XPath:  admindoc:level   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:heading.">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="glp:note">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="refpt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

	<xsl:template match="glp:note/refpt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>