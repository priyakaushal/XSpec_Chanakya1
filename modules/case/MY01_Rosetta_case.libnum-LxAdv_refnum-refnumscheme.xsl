<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dita="http://dita.oasis-open.org/architecture/2005/" xmlns:case="http://www.lexis-nexis.com/glp/case" xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/" version="2.0" exclude-result-prefixes="dita case">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/" id="MY01_Rosetta_case.libnum-LxAdv_refnum-refnumscheme">
   <title>case:libnum <lnpid>id-MY01-16027</lnpid></title>
   <body>
      <section>
<ul>
         <li class="- topic/li ">
                    <sourcexml>case:libnum</sourcexml> becomes
                        <targetxml>jurisinfo:courtinfo/refnum/@refnumscheme="wa-MY-library-number"</targetxml>
                    <pre xml:space="preserve" class="- topic/pre ">
&lt;case:info&gt;
    ...
    &lt;case:libnum&gt;1984&lt;/case:libnum&gt;
&lt;/case:info&gt;

<b class="+ topic/ph hi-d/b ">Becomes</b>

&lt;caseinfo:caseinfo&gt;
    ...
    &lt;jurisinfo:courtinfo&gt;
        &lt;refnum refnumscheme="wa-MY-library-number"&gt;1984&lt;/refnum&gt;
    &lt;/jurisinfo:courtinfo&gt;
&lt;/caseinfo:caseinfo&gt;
</pre>
                </li>
      </ul>
</section>
   </body>
	</dita:topic>

	<!--  @@@ This file has been autogenerated.  Remove this comment after manual development complete! @@@  -->
	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-MY\MY01_Cases\MY01_Rosetta_case.libnum-LxAdv_refnum-refnumscheme.dita  -->
<!--	<xsl:message>MY01_Rosetta_case.libnum-LxAdv_refnum-refnumscheme.xsl requires manual development!</xsl:message> -->

    <xsl:template match="case:libnum">
        <refnum>
            <xsl:attribute name="refnumscheme">
                <xsl:text>wa-MY-library-number</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </refnum>
    </xsl:template>

</xsl:stylesheet>