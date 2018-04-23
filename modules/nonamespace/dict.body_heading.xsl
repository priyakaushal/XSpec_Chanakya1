<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:source_dict="http://www.lexis-nexis.com/glp/dict" xmlns:dict="urn:x-lexisnexis:content:dict:sharedservices:1" version="2.0" exclude-result-prefixes="dita source_dict">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="dict.body_heading">
  <title><sourcexml>dict:body/heading</sourcexml> to
    <targetxml>dict:head/heading</targetxml> <lnpid>id-UK10-29209</lnpid></title>
  <body>
    <p><sourcexml>dict:body/heading</sourcexml> becomes
      <targetxml>dict:head/heading</targetxml></p>
    <example>
      <title>Source XML 1</title>
      <codeblock>


&lt;dict:body&gt;
    &lt;heading&gt;
        &lt;desig&gt;
            &lt;designum&gt;
                &lt;emph typestyle="bf"&gt;A&lt;/emph&gt;
            &lt;/designum&gt;
        &lt;/desig&gt;
    &lt;/heading&gt;
    ...
&lt;/dict:body&gt;

	</codeblock>
    </example>
    <example>
      <title>Target XML 1</title>
      <codeblock>

&lt;dict:head&gt;
    &lt;heading&gt;
        &lt;desig&gt;
            &lt;num&gt;
                &lt;emph typestyle="bf"&gt;A&lt;/emph&gt;
            &lt;/num&gt;
        &lt;/desig&gt;
    &lt;/heading&gt;
&lt;/dict:head&gt;

	</codeblock>
      
    </example>
    <section>
      <title>Changes</title>
      <p>2013-03-11: <ph id="change_20130311_rj">Created.</ph></p>
    </section>
  </body>
	</dita:topic>

	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK10_Dictionary\dict.body_heading.dita  -->
    <xsl:template match="source_dict:body/heading"> 
           <heading xmlns="http://www.lexisnexis.com/xmlschemas/content/shared/base/1/">
               <xsl:apply-templates select="@* | node()"/>
           </heading>        
    </xsl:template>

</xsl:stylesheet>