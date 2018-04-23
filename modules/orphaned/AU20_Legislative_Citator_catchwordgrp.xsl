<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
   <title>catchwordgrp <lnpid>id-AU20-22211</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
                   
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:descriptors/cttr:descriptorsection @descriptortype="catchwords-and-digest"</targetxml>
            <note class="- topic/note ">
            The content in <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml> and <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:summary</sourcexml> 
            needs to be present in the same <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:descriptorsection</targetxml>. 
            Also, please note that consecutive <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml> elements should be grouped into a single <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:descriptorsection</targetxml>.
            However, all content must be converted such that the order of elements is maintained whenever possible. Please see the "Maintain the Order of Elements Whenever Possible" section for more information.
            An example illustrating this scenario is shown below.
          </note>
            <ul class="- topic/ul ">
               <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwords</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification @classscheme="catchwords"</targetxml>
                  <ul class="- topic/ul ">
                     <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchphrase</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                
                        <p class="- topic/p ">Scenario:1 - Single <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml> within <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:content</sourcexml>.</p>
                        <pre xml:space="preserve" class="- topic/pre ">

&lt;catchwordgrp&gt;...
  &lt;catchwords&gt;
    &lt;catchphrase&gt;Trade and commerce &lt;/catchphrase&gt;
    &lt;catchphrase&gt;Monopolies&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Misuse of market power&lt;/catchphrase&gt;
    &lt;catchphrase&gt;Appeal from finding there was no misuse of market power&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

  &lt;cttr:descriptors&gt;
    &lt;cttr:descriptorsection descriptortype="catchwords-and-digest"&gt;....
      &lt;classify:classification classscheme="catchwords"&gt;
        &lt;classify:classitem&gt;
          &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Trade and commerce&lt;/classify:classname&gt;
          &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
        &lt;classify:classitem&gt;
          &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Monopolies&lt;/classify:classname&gt;
          &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
        &lt;classify:classitem&gt;
          &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Misuse of market power&lt;/classify:classname&gt;
          &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
        &lt;classify:classitem&gt;
          &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Appeal from finding there was no misuse of market power&lt;/classify:classname&gt;
          &lt;/classify:classitem-identifier&gt;
        &lt;/classify:classitem&gt;
      &lt;/classify:classification&gt;
    &lt;/cttr:descriptorsection&gt;
&lt;/cttr:descriptors&gt;
                
</pre>
                        <p class="- topic/p ">Scenario:2 - Multiple <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml> within <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:content</sourcexml>.</p>
                        <pre xml:space="preserve" class="- topic/pre "> 

&lt;cttr:content&gt;...
  &lt;catchwordgrp&gt;
    &lt;heading&gt;
      &lt;title&gt;Catchwords &amp;amp; Digest&lt;/title&gt;
    &lt;/heading&gt;
    &lt;catchwords&gt;
      &lt;catchphrase&gt;Negligence &lt;/catchphrase&gt;
      &lt;catchphrase&gt;Standard of care&lt;/catchphrase&gt;
      &lt;catchphrase&gt;Employer's liability&lt;/catchphrase&gt;
      &lt;catchphrase&gt;Place of work&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
  &lt;/catchwordgrp&gt;
  &lt;cttr:summary&gt;...
  &lt;/cttr:summary&gt;
  &lt;catchwordgrp&gt;
    &lt;catchwords&gt;
      &lt;catchphrase&gt;Evidence &lt;/catchphrase&gt;
      &lt;catchphrase&gt;Expert opinion&lt;/catchphrase&gt;
      &lt;catchphrase&gt;Persuasiveness&lt;/catchphrase&gt;
      &lt;catchphrase&gt;Slip and fall accident&lt;/catchphrase&gt;
    &lt;/catchwords&gt;
  &lt;/catchwordgrp&gt;
&lt;/cttr:content&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;cttr:descriptors&gt;
  &lt;cttr:descriptorsection descriptortype="catchwords-and-digest"&gt;....
    &lt;heading&gt;
      &lt;title&gt;Catchwords &amp;amp; Digest&lt;/title&gt;
    &lt;/heading&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Negligence&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Standard of care&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Employer's liability&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Place of work&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
    &lt;/classify:classification&gt;
    &lt;casesum:editorialsummary&gt;...
    &lt;/casesum:editorialsummary&gt;
    &lt;classify:classification classscheme="catchwords"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Evidence&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Expert opinion&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;Persuasiveness&lt;/classify:classname&gt;
      &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
        &lt;classify:classitem&gt;
          &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;Slip and fall accident&lt;/classify:classname&gt;
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
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU20_Legislative_Citator\catchwordgrp.dita  -->
	<xsl:message>AU20_Legislative_Citator_catchwordgrp.xsl requires manual development!</xsl:message> 

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