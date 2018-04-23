<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:casedigest="http://www.lexisnexis.com/xmlschemas/content/legal/case-digest/1/" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="catchwordgrp">
  <title>catchwordgrp <lnpid>id-NZ17CC-25825</lnpid></title>
  <body>
    <section>
      <ul>
        <li class="- topic/li ">
          <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwordgrp</sourcexml> omit tag and
          retain content. <ul class="- topic/ul ">
            <li class="- topic/li ">
              <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwords</sourcexml> becomes
                <targetxml class="+ topic/keyword xml-d/targetxml ">casedigest:caseinfo/classify:classification</targetxml> and comes with <targetxml class="+ topic/keyword xml-d/targetxml ">@classscheme="catchwords"</targetxml>
               <note>Conversion needs to create a wrapper element <targetxml>casedigest:caseinfo</targetxml> in target before <targetxml>classify:classification</targetxml></note> 
              <ul class="- topic/ul ">
                <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchphrase</sourcexml> becomes
                    <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem</targetxml>
                  <ul class="- topic/ul ">
                    <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem/classify:classitem-identifier</targetxml>
                      <ul class="- topic/ul ">
                        <li class="- topic/li ">Create <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classification/classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <note class="- topic/note ">Each instance of <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchwords</sourcexml> should be converted to
            its own <targetxml class="+ topic/keyword xml-d/targetxml ">casedigest:caseinfo/classify:classification[@classscheme="catchwords"]</targetxml> element. Also, each
            instance of <sourcexml>catchphrase</sourcexml> should be converted to
              <targetxml>classify:classitem/classify:classitem-identifier/classify:classname</targetxml>.</note>
          <pre xml:space="preserve" class="- topic/pre ">

&lt;catchwordgrp&gt;
    &lt;catchwords&gt;
        &lt;catchphrase&gt;
            &lt;emph typestyle="it"&gt;Companies&lt;/emph&gt;
        &lt;/catchphrase&gt;
        &lt;catchphrase&gt;
            &lt;emph typestyle="it"&gt;Prejudiced shareholders&lt;/emph&gt;
        &lt;/catchphrase&gt;
        &lt;catchphrase&gt;
            &lt;emph typestyle="it"&gt;Derivative proceedings taken by shareholders&lt;/emph&gt;
        &lt;/catchphrase&gt;
        &lt;catchphrase&gt;
            &lt;emph typestyle="it"&gt;Two shareholders compromised proceedings by selling shares&lt;/emph&gt;
        &lt;/catchphrase&gt;
        &lt;catchphrase&gt;
            &lt;emph typestyle="it"&gt;Transfer of shares alleged at substantial overvalue&lt;/emph&gt;
        &lt;/catchphrase&gt;
        &lt;catchphrase&gt;
            &lt;emph typestyle="it"&gt;Scope of relief provisions&lt;/emph&gt;
        &lt;/catchphrase&gt;        
    &lt;/catchwords&gt;
&lt;/catchwordgrp&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;casedigest:caseinfo&gt;
&lt;classify:classification classscheme="catchwords"&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;&lt;emph typestyle="it"&gt;Companies&lt;/emph&gt;&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;&lt;emph typestyle="it"&gt;Prejudiced shareholders&lt;/emph&gt;&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;&lt;emph typestyle="it"&gt;Derivative proceedings taken by shareholders&lt;/emph&gt;&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;&lt;emph typestyle="it"&gt;Two shareholders compromised proceedings by selling shares&lt;/emph&gt;&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;&lt;emph typestyle="it"&gt;Transfer of shares alleged at substantial overvalue&lt;/emph&gt;&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
    &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
            &lt;classify:classname&gt;&lt;emph typestyle="it"&gt;Scope of relief provisions&lt;/emph&gt;&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
    &lt;/classify:classitem&gt;
&lt;/classify:classification&gt;
&lt;/casedigest:caseinfo&gt;

</pre>
        </li>
      </ul>
    </section>
      <section>
          <title>Changes</title>     
          <p>2013-08-14: <ph id="change_20130814_vv">Instruction and example updated for <sourcexml>catchwordgrp</sourcexml> </ph>.</p>
      </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\NZ17_Case_Summaries\NZ17CC_Citatordoc_To_CaseDigest\catchwordgrp.dita  -->

	<xsl:template match="catchwordgrp">
		  <xsl:apply-templates/>	    
	</xsl:template>

	<xsl:template match="catchwords">
		<classify:classification>
		    <xsl:attribute name="classscheme">catchwords</xsl:attribute>
			<xsl:apply-templates select="@*"/>
		    <!-- getting text children junk chars -->
		    <xsl:apply-templates select="*"/>
		</classify:classification>
	</xsl:template>

	<xsl:template match="catchphrase">
	    <classify:classitem>
    	    <classify:classitem-identifier>
	           <classify:classname><xsl:apply-templates select="@* | node()"/></classify:classname>
	     </classify:classitem-identifier>
	   </classify:classitem>
	</xsl:template>

</xsl:stylesheet>