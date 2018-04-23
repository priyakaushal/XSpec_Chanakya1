<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:ref="http://www.lexisnexis.com/xmlschemas/content/shared/reference/1/" version="2.0" exclude-result-prefixes="dita">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="LPA-PracticalGuidance_edpnum-refpt">
  <title>edpnum/refpt to ref:anchor and heading/desig <lnpid/></title>
  <body>
    <section>
      <title>Special Case: <sourcexml>edpnum/refpt</sourcexml> to <targetxml>desig</targetxml></title>

    <p>When a <sourcexml>refpt</sourcexml> element is found within a <sourcexml>edpnum</sourcexml> and it contains text within the <sourcexml>refpt</sourcexml> move the text 
      to the <targetxml>/heading/desig</targetxml> and map the <sourcexml>refpt</sourcexml> to a <targetxml>ref:anchor</targetxml> preceding the <targetxml>heading</targetxml> element.</p>
    </section> 
    
    <pre>
<b>Source epdnum/refpt/text()

</b>&lt;heading searchtype="PRACTICE-NOTE"&gt;
      &lt;edpnum&gt;
        &lt;refpt id="LGPENSW.TB.LEN677" type="ext"&gt;&lt;/refpt&gt;[LEN 677]&lt;/edpnum&gt;
&lt;/heading&gt;  
    </pre>
    
    <pre>
<b>Target heading/desig and ref:anchor</b>

&lt;ref:anchor id="LGPENSW.TB.LEN677" anchortype="ext"/&gt; 
&lt;heading&gt;
    &lt;desig&gt;[LEN 677]&lt;/desig&gt;     
&lt;/heading&gt;
    </pre>
    <section><title>Created</title>     
      <p>2014-07-24: <ph id="change_20140724_AS">Added instructions to handel <sourcexml>edpnum/refpt</sourcexml></ph></p>
    </section>
  </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-PAC\AU09_case_digest\LPA-PracticalGuidance_edpnum-refpt-LxAdv-AU.dita  -->
	<!--<xsl:message>LPA-PracticalGuidance_edpnum-refpt-LxAdv-AU.xsl requires manual development!</xsl:message>--> 

	<!--<xsl:template match="edpnum/refpt">

		<!-\-  Original Target XPath:  desig   -\->
		<desig>
			<xsl:apply-templates select="@* | node()"/>
		</desig>

	</xsl:template>

	<xsl:template match="refpt">

		<!-\-  Original Target XPath:  /heading/desig   -\->
		<heading>
			<desig>
				<xsl:apply-templates select="@* | node()"/>
			</desig>
		</heading>

	</xsl:template>

	<xsl:template match="edpnum">

		<!-\-  Original Target XPath:  /heading/desig   -\->
		<heading>
			<desig>
				<xsl:apply-templates select="@* | node()"/>
			</desig>
		</heading>

	</xsl:template>-->

</xsl:stylesheet>