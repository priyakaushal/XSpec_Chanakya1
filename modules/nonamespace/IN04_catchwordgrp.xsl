<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
   <title>catchwordgrp <lnpid>id-IN04-38811</lnpid></title>
   <body>
      <section>
         <ul><li>
                   
            <sourcexml>catchwordgrp</sourcexml> becomes <targetxml>cttr:descriptors/cttr:descriptorsection @descriptortype="catchwords-and-digest"</targetxml>
            <note>
            The content in <sourcexml>catchwordgrp</sourcexml> and <sourcexml>cttr:summary</sourcexml> 
            needs to be present in the same <targetxml>cttr:descriptorsection</targetxml>. 
            Also, please note that consecutive <sourcexml>catchwordgrp</sourcexml> elements should be grouped into a single <targetxml>cttr:descriptorsection</targetxml>.
            However, all content must be converted such that the order of elements is maintained whenever possible. Please see the "Maintain the Order of Elements Whenever Possible" section for more information.
            An example illustrating this scenario is shown below.
          </note>
            <ul>
               <li>
                  <sourcexml>catchwords</sourcexml> becomes <targetxml>classify:classification @classscheme="catchwords"</targetxml>
                  <ul>
                     <li>
                        <sourcexml>catchphrase</sourcexml> becomes <targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                
                        <p>Scenario:1 - Single <sourcexml>catchwordgrp</sourcexml> within <sourcexml>cttr:content</sourcexml>.</p>
<pre>

&lt;catchwordgrp&gt;
	 &lt;heading&gt;
      &lt;title&gt;Catchwords And Digest&lt;/title&gt;
    &lt;/heading&gt;
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Code of Civil Procedure , 1908 Limitation Act 1963, Article 182,
                        Clause 2, 3 Execution Proceedings Application for execution filed three
                        years after the date of final decree Whether the application filed is barred
                        by Limitation Held, Execution Application is time-barred Application falls
                        neither under clause 2 or clause 3 of Limitation Act No appeal and Review
                        filed to hear the decree in question No substance Appeal
                        dismissed.&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

<b>Becomes</b>

  &lt;cttr:descriptors&gt;
    &lt;cttr:descriptorsection descriptortype="catchwords-and-digest"&gt;
      &lt;heading&gt;
      &lt;title&gt;Catchwords And Digest&lt;/title&gt;
    &lt;/heading&gt;
      ....
      &lt;classify:classification classscheme="catchwords"&gt;
        &lt;classify:classitem&gt;
          &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Code of Civil Procedure , 1908 Limitation Act 1963, Article 182,
                        Clause 2, 3 Execution Proceedings Application for execution filed three
                        years after the date of final decree Whether the application filed is barred
                        by Limitation Held, Execution Application is time-barred Application falls
                        neither under clause 2 or clause 3 of Limitation Act No appeal and Review
                        filed to hear the decree in question No substance Appeal
                        dismissed.&lt;/classify:classname&gt;
          &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
      &lt;/classify:classification&gt;
    &lt;/cttr:descriptorsection&gt;
&lt;/cttr:descriptors&gt;
                

</pre>                        <p>Scenario:2 - Multiple <sourcexml>catchwordgrp</sourcexml> within <sourcexml>cttr:content</sourcexml>.</p>
                       <pre>

&lt;cttr:content&gt;
  ...
  &lt;catchwordgrp&gt;
    &lt;heading&gt;
      &lt;title&gt;Catchwords And Digest&lt;/title&gt;
    &lt;/heading&gt;
    &lt;catchwords&gt;
      &lt;catchphrase&gt;Negligence&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
  &lt;/catchwordgrp&gt;
  &lt;cttr:summary&gt;
    ...
  &lt;/cttr:summary&gt;
  &lt;catchwordgrp&gt;
    &lt;catchwords&gt;
      &lt;catchphrase&gt;Evidence &lt;/catchphrase&gt;
    &lt;/catchwords&gt;
  &lt;/catchwordgrp&gt;
&lt;/cttr:content&gt;


<b>Becomes</b>


&lt;cttr:descriptors&gt;
  &lt;cttr:descriptorsection descriptortype="catchwords-and-digest"&gt;
    ...
    &lt;heading&gt;
      &lt;title&gt;Catchwords And Digest&lt;/title&gt;
    &lt;/heading&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Negligence&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
    &lt;casesum:editorialsummary&gt;
      ...
    &lt;/casesum:editorialsummary&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Evidence&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
  &lt;/cttr:descriptorsection&gt;
&lt;/cttr:descriptors&gt;

</pre>
                
                     </li>
                  </ul>
               </li>
            </ul>
         </li></ul>
      </section>
     <section>
       <title>Changes</title>
       <p>2016-08-18: <ph id="change_20160818_SS">Created</ph>.</p>
     </section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-IN\IN04-Citator\IN04_catchwordgrp.dita  -->
	<xsl:message>IN04_catchwordgrp.xsl requires manual development!</xsl:message> 

	<xsl:template match="catchwordgrp"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:descriptors/cttr:descriptorsection@descriptortype="catchwords-and-digest"   -->
		<cttr:descriptors>
			<cttr:descriptorsection>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:descriptorsection>
		</cttr:descriptors>

	</xsl:template>

	<xsl:template match="cttr:summary"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:descriptorsection   -->
		<cttr:descriptorsection>
			<xsl:apply-templates select="@* | node()"/>
		</cttr:descriptorsection>

	</xsl:template>

	<xsl:template match="catchwords"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  classify:classification@classscheme="catchwords"   -->
		<classify:classification>
			<xsl:apply-templates select="@* | node()"/>
		</classify:classification>

	</xsl:template>

	<xsl:template match="catchphrase"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classitem>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>

	</xsl:template>

	<xsl:template match="cttr:content"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:     -->
		<!--  Could not determine target element or attribute name:  <>  -->			<xsl:apply-templates select="@* | node()"/>
		<!--  Could not determine target element or attribute name:  </>  -->

	</xsl:template>

</xsl:stylesheet>