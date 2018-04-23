<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:leg="http://www.lexis-nexis.com/glp/leg" xmlns:admindoc="urn:x-lexisnexis:content:administrative-document:sharedservices:1" version="2.0" exclude-result-prefixes="dita leg">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="leg.level">
   <title>leg:level <lnpid>id-AU19CA-21613</lnpid></title>
   <body>
      <section>
         <ul><li>
            <sourcexml>leg:level</sourcexml> 
            <b>Becomes</b> 
            <targetxml>admindoc:level</targetxml> comes
            with below attribute:
            <ul>
               <li>
                  <sourcexml>@id</sourcexml> 
                  <b>Becomes</b> 
                  <targetxml>@xml:id</targetxml>
               </li>
               <li>
                  <sourcexml>@subdoc</sourcexml> 
                  <b>Becomes</b> 
                  <targetxml>@includeintoc</targetxml>
               </li>
               <li>
                  <sourcexml>@toc-caption</sourcexml> 
                  <b>Becomes</b> 
                  <targetxml>@alternatetoccaption</targetxml>
               </li>
              </ul>
			and
              <sourcexml>@leveltype</sourcexml> 
            <b>Becomes</b> 
            <targetxml>@leveltype</targetxml>, the values are tokenized: 
			  <ul>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="act"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="addendum"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="amendment"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="annex"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="appendix"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="article"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="canon"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="chapter"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="clause"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="companion"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="constitution"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="dictionary"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="division"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="endnote"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="exhibit"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="form"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="hierarchy-note"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="introduction"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="order"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="part"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="preamble"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="regulation"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="rule"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="section"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subarticle"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subclause"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subdivision"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subparagraph"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subpart"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subregulation"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subschedule"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subrule"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subsection"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subtitle"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="supplement"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="table-of-contents"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="title"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="topic"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="treaty"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="agency"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="subagency"]</targetxml>
               </li>
			  	         <li>
                  <targetxml>admindoc:level[@leveltype="unclassified"]</targetxml>
               </li>
			         </ul>
          	As per LBU recommend the rules are listed below for some unique [<targetxml>@leveltype</targetxml>] values in NewLexis conversion:
          		<ul>
          			  <li>If input <sourcexml>[[@leveltype="agreement"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="agreement"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="attachment"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="attachments"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="attachment"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="comm.intro"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="annotation-group"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="convention"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="treaty"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="group"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="leg-inst"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="miscins"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="proc-guide"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="procedural-guide"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="reg-code"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="regulatory-code"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="release"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="instrument"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="scale"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="scalep"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="scales"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="scalesp"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="paragraph"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="schedulegrp"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="schedule"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="subgroup"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="subchapter"]</targetxml>
               </li>
          			  <li>If input <sourcexml>[@leveltype="summary"]</sourcexml> becomes <targetxml>admindoc:level[@leveltype="introduction"]</targetxml>
               </li>
          			</ul>
          	
          	<note>If the input files are having <sourcexml>@leveltype</sourcexml> values other than the tokenized list shown above the value will be set as <targetxml>@leveltype="unclassified"</targetxml>.</note>
          	
          	Examples are populated as below:
           <pre>
                
              <b><i>Example: Source XML 1</i></b>

&lt;leg:level id="AL.AATL.CPNRDRR.BODY"&gt;
	&lt;leg:level-vrnt searchtype="LEGISLATION LEG-INST" leveltype="leg-inst"&gt;
		....
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;


</pre>

            <pre>

              <b><i>Example: Target XML 1</i></b>


&lt;admindoc:level xml:id="AL.AATL.CPNRDRR.BODY" leveltype="instrument"&gt;
	....
&lt;/admindoc:level&gt;

            </pre>
   
            <pre>
              <b><i>Example: Source XML 2</i></b>

&lt;leg:level id="AL.AATL.CPNRDRR.CL1"&gt;
	&lt;leg:level-vrnt toc-caption="[1160] cl 1 Citation" subdoc="true" searchtype="LEGISLATION CLAUSE" leveltype="clause"&gt;
		....
	&lt;/leg:level-vrnt&gt;
&lt;/leg:level&gt;


</pre>

            <pre>
              <b><i>Example: Target XML 2</i></b>
              

&lt;admindoc:level xml:id="AL.AATL.CPNRDRR.CL1" alternatetoccaption="[1160] cl 1 Citation" includeintoc="true" leveltype="clause"&gt;
	....
&lt;/admindoc:level&gt;

              
            </pre>

			         <note>In NL Schema <targetxml>admindoc:level</targetxml> element is used instead of Rosetta elements
                <sourcexml>leg:level</sourcexml> and <sourcexml>leg:level-vrnt</sourcexml>. Pick the attribute 
                <sourcexml>@leveltype</sourcexml> with value from <sourcexml>leg:level-vrnt</sourcexml> element
				and <sourcexml>leg:level-vrnt</sourcexml> will be suppressed from conversion.</note>
          </li></ul>
      </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU19CA_ASX\AU19_CA_ASX_leg.level.dita  -->
	<xsl:message>AU19_CA_ASX_leg.level.xsl requires manual development!</xsl:message> 

	<xsl:template match="leg:level">

		<!--  Original Target XPath:  admindoc:level   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="@id">

		<!--  Original Target XPath:  @xml:id   -->
		<xsl:attribute name="xml:id">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@subdoc">

		<!--  Original Target XPath:  @includeintoc   -->
		<xsl:attribute name="includeintoc">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@toc-caption">

		<!--  Original Target XPath:  @alternatetoccaption   -->
		<xsl:attribute name="alternatetoccaption">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="@leveltype">

		<!--  Original Target XPath:  @leveltype   -->
		<xsl:attribute name="leveltype">
			<xsl:apply-templates select="node()"/>
		</xsl:attribute>

	</xsl:template>

	<xsl:template match="[[@leveltype=&#34;agreement&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="agreement"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;attachment&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="attachment"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;attachments&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="attachment"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;comm.intro&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="annotation-group"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;convention&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="treaty"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;group&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="subchapter"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;leg-inst&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="instrument"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;miscins&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="instrument"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;proc-guide&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="procedural-guide"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;reg-code&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="regulatory-code"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;release&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="instrument"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;scale&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="schedule"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;scalep&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="paragraph"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;scales&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="schedule"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;scalesp&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="paragraph"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;schedulegrp&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="schedule"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;subgroup&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="subchapter"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="[@leveltype=&#34;summary&#34;]">

		<!--  Original Target XPath:  admindoc:level[@leveltype="introduction"]   -->
		<admindoc:level>
			<xsl:apply-templates select="@* | node()"/>
		</admindoc:level>

	</xsl:template>

	<xsl:template match="leg:level-vrnt">

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>