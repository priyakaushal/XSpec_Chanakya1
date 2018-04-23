<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_cttr="http://www.lexis-nexis.com/glp/cttr" xmlns:classify="http://www.lexisnexis.com/xmlschemas/content/shared/classification/1/" xmlns:cttr="urn:x-lexisnexis:content:citator:sharedservices:1" version="2.0" exclude-result-prefixes="dita source_cttr">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="cttr.wordphrasegrp">
   <title>cttr:wordphrasegrp <lnpid>id-HK08-37620</lnpid></title>
   <body>
      <section>
         <ul><li class="- topic/li ">
            <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:wordphrasegrp</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:descriptors/cttr:descriptorsection @descriptortype="words-and-phrases"</targetxml>
            <ul class="- topic/ul ">
               <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">heading</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">heading</targetxml> and 
            the child element is described below :
            <ul class="- topic/ul ">
                     <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">title</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">title</targetxml>
                     </li>
                  </ul>
               </li>
               <li class="- topic/li ">
                  <sourcexml class="+ topic/keyword xml-d/sourcexml ">cttr:wordphrasegrp/catchwords</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">cttr:descriptorsection/classify:classification @classscheme="words-and-phrases"</targetxml> and 
            the child element is described below:
            <ul class="- topic/ul ">
                     <li class="- topic/li ">
                        <sourcexml class="+ topic/keyword xml-d/sourcexml ">catchphrase</sourcexml> becomes <targetxml class="+ topic/keyword xml-d/targetxml ">classify:classitem/classify:classitem-identifier/classify:classname</targetxml>
                        <pre xml:space="preserve" class="- topic/pre ">

&lt;cttr:wordphrasegrp&gt;...
  &lt;catchwords&gt;
    &lt;catchphrase&gt;market&lt;/catchphrase&gt;
    &lt;catchphrase&gt;take advantage&lt;/catchphrase&gt;
  &lt;/catchwords&gt;
&lt;/cttr:wordphrasegrp&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;cttr:descriptors&gt;
  &lt;cttr:descriptorsection descriptortype="words-and-phrases"&gt;....
    &lt;classify:classification classscheme="words-and-phrases"&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;market&lt;/classify:classname&gt;
        &lt;/classify:classitem-identifier&gt;
      &lt;/classify:classitem&gt;
      &lt;classify:classitem&gt;
        &lt;classify:classitem-identifier&gt;
          &lt;classify:classname&gt;take advantage&lt;/classify:classname&gt;
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


	<xsl:template match="source_cttr:wordphrasegrp"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:descriptors/cttr:descriptorsection@descriptortype="words-and-phrases"   -->
			<cttr:descriptorsection>
			  <xsl:attribute name="descriptortype">words-and-phrases</xsl:attribute>
				<xsl:apply-templates select="@* | node()"/>
			</cttr:descriptorsection>

	</xsl:template>

	<xsl:template match="source_cttr:wordphrasegrp/catchwords"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  cttr:descriptorsection/classify:classification@classscheme="words-and-phrases"   -->
		  <classify:classification>
		    <xsl:attribute name="classscheme">words-and-phrases</xsl:attribute>
				<xsl:apply-templates select="@* | node()"/>
			</classify:classification>		

	</xsl:template>

	<xsl:template match="source_cttr:wordphrasegrp/catchwords/catchphrase"><!--  TODO:  correct match pattern to prepend "source_" in front of appropriate ns prefixes!!  -->

		<!--  Original Target XPath:  classify:classitem/classify:classitem-identifier/classify:classname   -->
		<classify:classitem>
			<classify:classitem-identifier>
				<classify:classname>
					<xsl:apply-templates select="@* | node()"/>
				</classify:classname>
			</classify:classitem-identifier>
		</classify:classitem>

	</xsl:template>

</xsl:stylesheet>